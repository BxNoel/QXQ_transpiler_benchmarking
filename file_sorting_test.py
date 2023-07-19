from mqt.bench import get_benchmark
from qiskit import QuantumCircuit, Aer, execute, assemble
from qiskit.providers.fake_provider import FakeSherbrooke
from qiskit.compiler import transpile
from qiskit.visualization import plot_gate_map
from qiskit.visualization import plot_histogram, plot_bloch_multivector
import matplotlib.pyplot as plt
import os
import re

# This sorts our ciruits in ascending ordering according to their number of qubits
num = re.compile(r'(\d+)')
def ascending_sort(val):
    split = num.split(val)
    split[1::2] = map(int, split[1::2])
    return split

# Path to the circuits stored locally
def file_reader(file_path):
    circuits = []
    directory = file_path
    for circuit in sorted(os.listdir(directory), key=ascending_sort):
        circuit_path = file_path + "/" + circuit
        if (circuit_path.endswith('.qasm')):
            print(circuit_path)
            qc = QuantumCircuit.from_qasm_file(circuit_path)
            circuits.append(qc)

    return circuits

# Read circuits from files
circuits = file_reader("MQT_Circuits")

# Select the transpilation backend
backend = FakeSherbrooke()

file_reader(circuits)

