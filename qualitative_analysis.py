from mqt.bench import get_benchmark
from qiskit import QuantumCircuit, Aer, execute, assemble
from qiskit.providers.fake_provider import FakeSherbrooke
from qiskit.compiler import transpile
from qiskit.visualization import plot_gate_map
from qiskit.visualization import plot_histogram, plot_bloch_multivector
import matplotlib.pyplot as plt
import numpy as np
import os
import re

# This sorts our ciruits in ascending ordering via number of qubits
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
circuits = file_reader("tests") # have to change folder directory for the circuits

# Select the transpilation backend
backend = FakeSherbrooke()

"""
COUNT NUMBER OF GATES
"""

def gate_count(circuits):
    # Transpile each circuit, count the gates, and store the results
    gate_counts = []
    opt1 = []
    opt2 = []
    opt3 = []
    for circuit in circuits:
        # stores the number of gates 
        transpiled_circuit_1 = transpile(circuit, backend, optimization_level=1)
        transpiled_circuit_2 = transpile(circuit, backend, optimization_level=2)
        transpiled_circuit_3 = transpile(circuit, backend, optimization_level=3)

        # counts the number of gates in a given circuit
        opt1_count = transpiled_circuit_1.count_ops()
        opt2_count = transpiled_circuit_2.count_ops()
        opt3_count = transpiled_circuit_3.count_ops()

        # appends our count of the transpiled circuit to the array
        opt1.append(sum(opt1_count.values()))
        opt2.append(sum(opt2_count.values()))
        opt3.append(sum(opt3_count.values()))

    # Generate a graph to visualize the gate counts for optimization level 1
    plt.plot(range(1, len(circuits) + 1), opt1, label = "Optimization Level 1")
    plt.plot(range(1, len(circuits) + 1), opt2, label = "Optimization Level 2")
    plt.plot(range(1, len(circuits) + 1), opt3, label = "Optimization Level 3")
    plt.xlabel('Circuit')
    plt.ylabel('Gate Count')
    plt.title('Gate Count of Transpiled Circuits')
    plt.xticks(range(1, len(circuits) + 1))
    plt.legend()
    plt.show()

gate_count(circuits)

"""
RATIO: Single Qubit Gates : Multi Qubit Gates
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
     #These list will store the ratios (single // Multi ) of each circuit
    level1_list = []
    level2_list = []
    level3_list = []       
    circuit_counter = 0
    #Step 1: iterate through all circuits
    for circuit in circuits:
        #Transpilation is where the "divide by zero" errors occur
        #Transpile the circuit on all three levels
        qc1 = transpile(circuit, optimization_level= 1, seed_transpiler= 42, backend=backend)
        qc2 = transpile(circuit, optimization_level= 2, seed_transpiler= 42, backend=backend)
        qc3 = transpile(circuit, optimization_level= 3, seed_transpiler= 42, backend=backend)
        print(f"circuit index: {circuit_counter} :completed")
        circuit_counter = circuit_counter + 1
    
        
        #Step 2: Transpile the circuit with level 1, 2 and 3 and collect the data. The return type of this object is a Map with key value pairs 
        # 'single' -- > Number of Single-Qubit Gates           'multi' --> Number of Multi-Qubit gates
        #Update Map Accordingly
        level1_data = num_single_and_multi_qubit_gates(qc1)
        level2_data = num_single_and_multi_qubit_gates(qc2)
        level3_data = num_single_and_multi_qubit_gates(qc3)
        
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
    
    number_of_circuits = [i + 2 for i in range(circuit_counter)] #Change this to the number of qubits possibly. 
    x = np.array(number_of_circuits)
    
    #Calculating Line of BEST FIT: Optimization Level 1
    a, b = np.polyfit(x, np.array(level1_list), 1)
    #Calculating Line of BEST FIT: Optimization Level 2
    c, d = np.polyfit(x, np.array(level2_list), 1)
    #Calculating Line of BEST Fit: Optimization Lebel 3
    e, f = np.polyfit(x, np.array(level3_list), 1)
    
    #--> Optimization Level 1.. etc lols
    plt.scatter(number_of_circuits, level1_list , label = "Optimization Level 1")    
    plt.plot(x, a*x+b) 
    print("The rate of change for optimization Level 1 is: ", a)
    print("The y-intercept for optimization level 1 is: ", b)
    plt.scatter(number_of_circuits, level2_list, label = "Optimization Level 2")
    plt.plot(x, c*x+d)  
    print("The rate of change for optimization level 2 is: ", c)
    print("The y-intercept for optimization level 2 is: ", d)
    plt.scatter(number_of_circuits, level3_list, label = "Optimization Level 3")
    print("The rate of change for optimization level 3 is: ", e)
    print("The y-intercept for optimization level 3 is: ", f)
    plt.plot(x, e*x+f)  
    plt.legend()
    plt.show()  

single_multi_ratio_benchmarking(circuits)

"""
NUMBER OF ENTANGLED GATES
"""

entangling_gates_type = ['ecr', 'cx', 'cz', 'swap', 'h', 'ccx', 'crx', 'cry', 'crz']

# Find entangling gates in transpiled circuits
def find_num_entagled_gates(circuits):

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
    
find_num_entagled_gates(circuits)