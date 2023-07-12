#Importing Packages
from qiskit import QuantumCircuit, Aer, execute
from qiskit.compiler import transpile
import time
import matplotlib.pyplot as plt

# Create a list of quantum circuits
#We can edit this to include the other circuits
circuits = [
    QuantumCircuit(2),
    QuantumCircuit(3),
    QuantumCircuit(4)
]

# Select your backend (e.g., Aer's qasm_simulator)
backend = Aer.get_backend('qasm_simulator')

# Transpile each circuit and measure the runtime
runtimes = []
for circuit in circuits:
    transpiled_circuit = transpile(circuit, backend)
    start_time = time.time()
    job = execute(transpiled_circuit, backend)
    end_time = time.time()
    runtime = end_time - start_time
    runtimes.append(runtime)

# Generate a graph to visualize the runtimes
plt.plot(range(1, len(circuits) + 1), runtimes, marker='o')
plt.xlabel('Circuit')
plt.ylabel('Runtime (seconds)')
plt.title('Runtime of Transpiled Circuits')
plt.xticks(range(1, len(circuits) + 1))
plt.show()
