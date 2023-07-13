from qiskit import QuantumCircuit, Aer, execute
from qiskit.compiler import transpile
import time
import matplotlib.pyplot as plt
import os

# Specify the folder path containing the QASM circuits
folder_path = '/Users/catherinelozano/Desktop/circuit_tests'

# Select your backend (e.g., Aer's qasm_simulator)
backend = Aer.get_backend('qasm_simulator')

# Define the optimization levels to test
optimization_levels = [1, 2, 3]

# Create empty lists to store the circuit runtimes and optimization levels
circuit_labels = []
original_runtimes = []
runtimes_before_transpile = []

# Iterate through the QASM circuits in the folder
for file_name in os.listdir(folder_path):
    file_path = os.path.join(folder_path, file_name)
    if file_path.endswith('.qasm'):
        # Read the QASM file and create a QuantumCircuit
        with open(file_path, 'r') as file:
            qasm_str = file.read()
            circuit = QuantumCircuit.from_qasm_str(qasm_str)

        # Store the circuit label (file name) for plotting
        circuit_labels.append(file_name)

        # Measure the original runtime (without transpiling)
        start_time = time.time()
        job = execute(circuit, backend)
        result = job.result()
        end_time = time.time()
        runtime_original = result.time_taken
        original_runtimes.append(runtime_original)

        # Iterate through the optimization levels
        for opt_level in optimization_levels:
            # Measure the runtime before transpiling
            start_time = time.time()
            transpiled_circuit = transpile(circuit, backend, optimization_level=opt_level)
            job = execute(transpiled_circuit, backend)
            result = job.result()
            end_time = time.time()
            runtime_before = result.time_taken
            runtimes_before_transpile.append(runtime_before)

# Generate the bar graph to visualize the runtimes
x = range(len(circuit_labels))
width = 0.2

plt.figure(figsize=(12, 6))

# Plot original runtime (without transpiling)
plt.bar(x, original_runtimes, width, label='Original')

# Plot runtimes before transpiling at each optimization level
for i, opt_level in enumerate(optimization_levels):
    opt_runtimes = runtimes_before_transpile[i::len(optimization_levels)]
    plt.bar([xi + width * (i + 1) for xi in x], opt_runtimes, width, label=f'Optimization Level {opt_level}')

plt.xlabel('Circuit')
plt.ylabel('Runtime (seconds)')
plt.title('Runtime of Circuits')
plt.xticks([xi + width * (len(optimization_levels) / 2) for xi in x], circuit_labels, rotation=45, ha='right')
plt.legend()
plt.show()
