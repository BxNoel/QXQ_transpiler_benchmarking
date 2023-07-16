from qiskit import QuantumCircuit, Aer, execute
from qiskit.compiler import transpile
import time
import matplotlib.pyplot as plt
import os
from qiskit_ibm_provider import IBMProvider
from statistics import mean
from qiskit.providers.fake_provider import FakeSherbrooke
import numpy as np

#folder path of the QASM circuits
folder_path = '/Users/catherinelozano/Desktop/circuit_tests'

# Backend
backend = FakeSherbrooke()

# optimization levels
optimization_levels = [1, 2, 3]

# list of arrays with data
circuit_labels = []
transpile_times = []
transpile_times_std = []

# Iterating through the QASM circuits in the folder
for file_name in os.listdir(folder_path):
    file_path = os.path.join(folder_path, file_name)
    if file_path.endswith('.qasm'):
        # Read the QASM file and create a QuantumCircuit
        with open(file_path, 'r') as file:
            qasm_str = file.read()
            circuit = QuantumCircuit.from_qasm_str(qasm_str)

        # Storing circuit label file name for plotting
        circuit_labels.append(file_name)

        # Transpile circuit and iterate through the optimization levels
        for opt_level in optimization_levels:
            # Temp array used for each iteration
            transpile_times_per_level = []
            for _ in range(10):

                # Measuring the runtime for transpiling at each optimization level
                start_time = time.perf_counter()
                tqc = transpile(circuit, backend, optimization_level=opt_level)
                stop_time = time.perf_counter()
                transpile_times_per_level.append(stop_time - start_time)
                
            #Taking statistical data of measurements and append to final array   
            mean_transpile_time = mean(transpile_times_per_level)
            std_transpile_time = np.std(transpile_times_per_level)
            transpile_times.append(mean_transpile_time)
            transpile_times_std.append(std_transpile_time)

# Bar Graph Creation
x = range(len(circuit_labels))
width = 0.1

plt.figure(figsize=(12, 6))

# Plot average transpilation time at each optimization level with error bars
for i, opt_level in enumerate(optimization_levels):
    opt_transpile_times = transpile_times[i::len(optimization_levels)]
    opt_transpile_times_std = transpile_times_std[i::len(optimization_levels)]
    plt.bar([xi + width * (i + 1) for xi in x], opt_transpile_times, width, yerr=opt_transpile_times_std, capsize=3, label=f'Opt. Level {opt_level}')

#bar chart labels
plt.xlabel('Circuit Name')
plt.ylabel('Runtime in seconds')
plt.title('Average Transpilation Time at Each Optimization Level')
plt.xticks([xi + width * (len(optimization_levels) / 2) for xi in x], circuit_labels, rotation=45, ha='right')
plt.legend()
plt.show()
