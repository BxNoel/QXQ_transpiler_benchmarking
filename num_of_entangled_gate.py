from mqt.bench import get_benchmark
from qiskit import QuantumCircuit, Aer, execute, assemble
from qiskit.providers.fake_provider import FakeSherbrooke
from qiskit.compiler import transpile
from qiskit.visualization import plot_gate_map
from qiskit.visualization import plot_histogram, plot_bloch_multivector
import matplotlib.pyplot as plt
import os

# Types of entagling gates
entangling_gates_type = ['ecr', 'cx', 'cz', 'swap', 'h', 'ccx', 'crx', 'cry', 'crz']

# Function to read quantum circuits from files
def file_reader(file_path):
    circuits = []
    directory = file_path
    for circuit in os.listdir(directory):
        circuit_path = file_path + "/" + circuit
        qc = QuantumCircuit.from_qasm_file(circuit_path)
        circuits.append(qc)

    return circuits

def find_num_entagled_gates(circuits):

    # Select the backend (FakeSherbrooke) for transpilation
    backend = FakeSherbrooke()
    # count the entangled gates, and store the results before transpiling
    entangled_gate_counts = []
    for circuit in circuits:
        entangled_gate_count = sum([1 for gate in circuit if gate[0].name in entangling_gates_type])
        entangled_gate_counts.append(entangled_gate_count)

    # Dictionary to store transpiled circuits for each optimization level
    transpiled_circuits = {3: [],
                        2: [],
                        1: []} 

    for circuit in circuits:
        for opt_level in [3, 2, 1]:
            transpiled_circuit = transpile(circuit, backend, optimization_level=opt_level)
            transpiled_circuits[opt_level].append(transpiled_circuit)


    # Find entangling gates in transpiled circuits
    entangled_gates = []
    def find_entangled_qubits(transpiled_circuits):
        for gate in transpiled_circuits:
            if gate in entangling_gates_type:
                entangled_gates.append(transpiled_circuits[gate])
        
        return entangled_gates

    for circuit in transpiled_circuits[3]:
        entangling_gates = find_entangled_qubits(circuit.count_ops())

    # Plot the number of entangled gates before and after transpile to compare
    plt.plot(range(1, len(transpiled_circuits[3]) + 1), entangling_gates, marker='o')
    plt.plot(range(1, len(transpiled_circuits[2]) + 1), entangling_gates, marker='o')
    plt.plot(range(1, len(transpiled_circuits[1]) + 1), entangling_gates, marker='o')
    plt.plot(range(1, len(circuits) + 1), entangled_gate_counts, marker='o')
    plt.xlabel('Circuit')
    plt.ylabel('Entangled Gate Count')
    plt.title('Number of Entangled Gates (normal vs transpiled)')
    plt.xticks(range(1, len(transpiled_circuits[3]) + 1))
    plt.show()


# Read circuits from files
circuits = file_reader("test_su2circ")
#find number of entangled gates
find_num_entagled_gates(circuits)
