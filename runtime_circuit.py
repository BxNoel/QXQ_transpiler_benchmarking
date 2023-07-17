"""
To-do:
Work on circuit creation
Work on how to better represent large scale data
"""


#imports 
import os
import glob
import time
import numpy as np
import matplotlib.pyplot as plt
from statistics import mean
from qiskit import QuantumCircuit, Aer, execute, transpile
from qiskit.providers.fake_provider import FakeSherbrooke

# Constants declared    
FOLDER_PATH = '/Users/catherinelozano/Desktop/circuit_tests'
#To-Do: Should breakdown variable path
OPTIMIZATION_LEVELS = [1, 2, 3]
NUM_ITERATIONS = 10

# Backend used
backend = FakeSherbrooke()

# List of arrays with data
circuit_labels = []
transpile_times = []
transpile_times_std = []

# Iterating through the QASM circuits in the folder
for file_path in glob.glob(os.path.join(FOLDER_PATH, '*.qasm')):
    # Read the QASM file and create a QuantumCircuit
    with open(file_path, 'r') as file:
        qasm_str = file.read()
        circuit = QuantumCircuit.from_qasm_str(qasm_str)

    # Storing circuit label file name for plotting
    circuit_labels.append(os.path.basename(file_path))

    # Transpile circuit and iterate through the optimization levels
    for opt_level in OPTIMIZATION_LEVELS:
        # Temp array used for each iteration
        transpile_times_per_level = []

        for _ in range(NUM_ITERATIONS):
            # Measuring the runtime for transpiling at each optimization level
            start_time = time.perf_counter()
            tqc = transpile(circuit, backend, optimization_level=opt_level)
            stop_time = time.perf_counter()
            transpile_times_per_level.append(stop_time - start_time)

        # Taking statistical data of measurements and append to final array
        mean_transpile_time = mean(transpile_times_per_level)
        std_transpile_time = np.std(transpile_times_per_level)
        transpile_times.append(mean_transpile_time)
        transpile_times_std.append(std_transpile_time)

# Bar Graph Creation
num_circuits = len(circuit_labels)
num_optimization_levels = len(OPTIMIZATION_LEVELS)
width = 0.8 / num_optimization_levels

plt.figure(figsize=(12, 6))

# Plot average transpilation time at each optimization level with error bars
for i, opt_level in enumerate(OPTIMIZATION_LEVELS):
    opt_transpile_times = transpile_times[i::num_optimization_levels]
    opt_transpile_times_std = transpile_times_std[i::num_optimization_levels]
    x = np.arange(num_circuits) + width * (i - num_optimization_levels // 2 + 0.5)
    plt.bar(x, opt_transpile_times, width, yerr=opt_transpile_times_std, capsize=3, label=f'Opt. Level {opt_level}')

# Bar chart labels and formatting
plt.xlabel('Circuit Name')
plt.ylabel('Transpilation Runtime in seconds')
plt.title('Average Transpilation Time at Each Optimization Level')
plt.xticks(rotation=45, ha='right')
plt.xticks(np.arange(num_circuits), circuit_labels)
plt.legend()
plt.grid(axis='y')
plt.ylim(bottom=0) 

plt.show()
