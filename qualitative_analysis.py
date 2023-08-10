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
        circuit_path = f"{file_path}/{circuit}"
        qc = QuantumCircuit.from_qasm_file(circuit_path)
        circuits.append(qc)

    return circuits

# Read circuits from files
circuits = file_reader("MQT_Circuits") # have to change folder directory for the circuits

# Select the transpilation backend
backend = FakeSherbrooke()

# Dictionary to store transpiled circuits for each optimization level
transpiled_circuits = {3: [],
                       2: [],
                       1: []} 

"""
COUNT NUMBER OF GATES
"""

# Here we are transpiling the circuits and storing them in the dictionary
for circuit in circuits:

    # stores the number of gates 
    gate_counts = []

    # stores the number of entangled gates 
    entangled_gate_counts = []

    for opt_level in [3, 2, 1]:
        transpiled_circuit = transpile(circuit, backend, optimization_level=opt_level)
        transpiled_circuits[opt_level].append(transpiled_circuit)

        # counts the number of gates in a given circuit
        gate_count = transpiled_circuit.count_ops()
        gate_counts.append(sum(gate_count.values()))

# Generate a graph to visualize the gate counts
plt.plot(range(1, len(circuits) + 1), gate_counts, marker='o')
plt.xlabel('Circuit')
plt.ylabel('Gate Count')
plt.title('Gate Count of Transpiled Circuits')
plt.xticks(range(1, len(circuits) + 1))
plt.show()


"""
CIRCUIT DEPTH
"""

def num_single_and_multi_qubit_gates(circuit):
    Map = {'single' : 0, "multi" : 0}
    for gate in circuit.data:
        if len(gate[1]) == 1:
            Map['single'] = Map['single'] + 1
        else:
            Map['multi'] = Map['multi'] + 1
    return Map

def single_multi_ratio_benchmarking(circuits):
    
    Map = {"Single" : 0, "Multi": 0}
    
    #These list will store the ratios (single // Multi ) of each circuit
    level1_list = []
    level2_list = []
    level3_list = []    
    return_list = []
    
    counter = 0
    #Step 1: iterate through all circuits
    for circuit in circuits:
        #Transpilation is where the "divide by zero" errors occur
        #Transpile the circuit on all three levels
        qc1 = transpile(circuit, optimization_level= 1, seed_transpiler= 42, backend=backend)
        qc2 = transpile(circuit, optimization_level= 2, seed_transpiler= 42, backend=backend)
        qc3 = transpile(circuit, optimization_level= 3, seed_transpiler= 42, backend=backend)
        print(f"circuit index: {counter} :completed")
        counter = counter + 1
    
        
        #Step 2: Transpile the circuit with level 1, 2 and 3 and collect the data. The return type of this object is a Map with key value pairs 
        # 'single' -- > Number of Single-Qubit Gates           'multi' --> Number of multi-qubit gates
        #Update Map Accordingly
        level1_data = num_single_and_multi_qubit_gates(qc1)
        level2_data = num_single_and_multi_qubit_gates(qc2)
        level3_data = num_single_and_multi_qubit_gates(qc3)
        
        Map["Single"] = level1_data['single'] + level2_data['single'] + level3_data['single']
        Map["Multi"] = level1_data['multi'] + level2_data['multi'] + level3_data['multi']
        
        #Step 3: Prepare ratio and list that contains all the data
        if level1_data['multi'] > 0:
            level1_ratio = level1_data['single'] / level1_data['multi']
            level1_list.append(level1_ratio)
        else:
            level1_list.append(level1_data['single'])
            
        if level2_data['multi'] > 0:
            level2_ratio = level2_data['single'] / level2_data['multi']
            level2_list.append(level2_ratio)
        else:
            level2_list.append(level1_data['single'])
            
        if level3_data['multi'] > 0:
            level3_ratio = level3_data['single'] / level3_data['multi']
            level3_list.append(level3_ratio)
        else:
            level3_list.append(level1_data['single'])
    
        
    return_list.append(level1_list), return_list.append(level2_list), return_list.append(level3_list)
    number_of_circuits = [i + 1 for i in range(counter)]
    
    #Line 1 --> Optimization Level 1.. etc
    plt.plot(number_of_circuits, level1_list , label = "Optimization Level 1")
    plt.plot(number_of_circuits, level2_list, label = "Optimization Level 2")
    plt.plot(number_of_circuits, level3_list, label = "Optimization Level 3")
    plt.legend()
    plt.show()  
    
    return return_list

data = single_multi_ratio_benchmarking(circuits)


"""
NUMBER OF ENTANGLED GATES
"""
entangling_gates_type = ['ecr', 'cx', 'cz', 'swap', 'h', 'ccx', 'crx', 'cry', 'crz']

# Find entangling gates in transpiled circuits
entagling_gates = []
def find_entangled_qubits(transpiled_circuits):
    for gate in transpiled_circuits:
        if gate in entangling_gates_type:
            entagling_gates.append(transpiled_circuits[gate])
    
    return entagling_gates

for circuit in transpiled_circuits[3]:
    entangling_gates = find_entangled_qubits(circuit.count_ops())

# Plot the number of entangled gates before and after transpile to compare
plt.plot(range(1, len(transpiled_circuits[3]) + 1), entangling_gates, marker='o')
plt.plot(range(1, len(circuits) + 1), entangled_gate_counts, marker='o')
plt.xlabel('Circuit')
plt.ylabel('Entangled Gate Count')
plt.title('Number of Entangled Gates (normal vs transpiled v3)')
plt.xticks(range(1, len(transpiled_circuits[3]) + 1))
plt.show()