import os
import glob
import time
import numpy as np
import matplotlib.pyplot as plt
from statistics import mean
from qiskit import QuantumCircuit, Aer, execute, transpile
from qiskit.providers.fake_provider import FakeSherbrooke

def calculate_runtime(folder_path, optimization_levels, num_iterations):
    # Backend used
    backend = FakeSherbrooke()

    # List of arrays with data
    circuit_labels = []
    transpile_times = []
    transpile_times_std = []

    # Iterating through the QASM circuits in the folder
    for file_path in glob.glob(os.path.join(folder_path, '*.qasm')):
        # Read the QASM file and create a QuantumCircuit
        with open(file_path, 'r') as file:
            qasm_str = file.read()
            circuit = QuantumCircuit.from_qasm_str(qasm_str)

        # Storing circuit label file name for plotting
        circuit_labels.append(os.path.basename(file_path))

        # Transpile circuit and iterate through the optimization levels
        for opt_level in optimization_levels:
            # Temp array used for each iteration
            transpile_times_per_level = []

            for _ in range(num_iterations):
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

    # Scatter Plot Creation
    num_circuits = len(circuit_labels)
    num_optimization_levels = len(optimization_levels)
    x_ticks = np.arange(num_circuits)
    colors = plt.cm.viridis(np.linspace(0, 1, num_optimization_levels))

    plt.figure(figsize=(12, 6))

    # Plot average transpilation time at each optimization level
    for i, opt_level in enumerate(optimization_levels):
        opt_transpile_times = transpile_times[i::num_optimization_levels]
        x = x_ticks + i * (1 / num_optimization_levels) - 0.5
        plt.scatter(x, opt_transpile_times, color=colors[i], label=f'Opt. Level {opt_level}')

    # Calculate and plot the line of best fit
    #coefficients = np.polyfit(x_ticks, transpile_times, deg=1)
    #line_of_best_fit = np.polyval(coefficients, x_ticks)
    #plt.plot(x_ticks, line_of_best_fit, color='red', linestyle='--', label='Line of Best Fit')

    # Scatter plot labels and formatting
    plt.xlabel('Circuit Name')
    plt.ylabel('Transpilation Runtime in seconds')
    plt.title('Average Transpilation Time at Each Optimization Level')
    plt.xticks(rotation=45, ha='right')
    plt.xticks(x_ticks, circuit_labels)
    plt.legend()
    plt.grid(axis='y')
    plt.ylim(bottom=0)

    plt.show()

# Constants declared
folder_path = '/Users/catherinelozano/Desktop/circuit_tests'
optimization_levels = [1, 2, 3]
num_iterations = 10

calculate_runtime(folder_path, optimization_levels, num_iterations)
