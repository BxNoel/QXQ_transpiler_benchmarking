from mqt.bench import get_benchmark
from qiskit import QuantumCircuit, Aer, execute, assemble
from qiskit.providers.fake_provider import FakeSherbrooke
from qiskit.compiler import transpile
from qiskit.visualization import plot_gate_map
from qiskit.visualization import plot_histogram, plot_bloch_multivector
import matplotlib.pyplot as plt
import os

# Path to the circuits stored locally
def file_reader(file_path):
    circuits = []
    directory = file_path
    for circuit in os.listdir(directory):
        circuit_path = file_path + "/" + circuit
        qc = QuantumCircuit.from_qasm_file(circuit_path)
        circuits.append(qc)

    return circuits

# Read circuits from files
circuits = file_reader("test_su2circ")

# Select the transpilation backend
backend = FakeSherbrooke()

# Dictionary to store transpiled circuits for each optimization level
transpiled_circuits = {3: [],
                       2: [],
                       1: []} 



# Here we are transpiling the circuits and storing them in the dictionary
for circuit in circuits:

    # stores the number of gates 
    gate_counts = []

    for opt_level in [3, 2, 1]:
        transpiled_circuit = transpile(circuit, backend, optimization_level=opt_level)
        transpiled_circuits[opt_level].append(transpiled_circuit)

        # Counts the number of gates in a given circuit
        gate_count = transpiled_circuit.count_ops()
        gate_counts.append(sum(gate_count.values()))




# # Find entangling gates in transpiled circuits
# entagling_gates = []
# def find_entangled_qubits(transpiled_circuits):
#     for gate in transpiled_circuits:
#         if gate in entangling_gates_type:
#             entagling_gates.append(transpiled_circuits[gate])
    
#     return entagling_gates

for circuit in transpiled_circuits[3]:
    entangling_gates = find_entangled_qubits(circuit.count_ops())

# Plot the number of entangled gates before and after transpile to compare
plt.plot(range(1, len(transpiled_circuits) + 1), entangling_gates, marker='o')
#plt.plot(range(1, len(circuits) + 1), entangled_gate_counts, marker='o')
plt.xlabel('Circuit')
plt.ylabel('Qualitative')
plt.title('Qualitative Summary of Circuits')
plt.xticks(range(1, len(transpiled_circuits) + 1))
plt.show()
