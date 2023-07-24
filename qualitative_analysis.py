from mqt.bench import get_benchmark
from qiskit import QuantumCircuit, Aer, execute, assemble
from qiskit.providers.fake_provider import FakeSherbrooke
from qiskit.compiler import transpile
from qiskit.visualization import plot_gate_map
from qiskit.visualization import plot_histogram, plot_bloch_multivector
import matplotlib.pyplot as plt
import numpy as np
import os

#This method is used to sort the circuits:
def sort_circuit(circuits):
    for i in range(len(circuits)):
        min_qubits = circuits[i].num_qubits
        for j in range(len(circuits)):
            temp_qubits = circuits[j].num_qubits
            if min_qubits < temp_qubits:
                min_qubits = temp_qubits
                qc = circuits[i]
                circuits[i] = circuits[j]
                circuits[j] = qc
                
# Path to the circuits stored locally
def file_reader(file_path):
    backend = FakeSherbrooke()
    circuits = []
    optimization_level= {3: [],2: [], 1: [], 0: []}
    directory = file_path
    for circuit in os.listdir(directory):
        circuit_path = f"{file_path}/{circuit}"
        if(circuit_path.endswith('.qasm')):
            print(circuit_path)
            qc = QuantumCircuit.from_qasm_file(circuit_path)
            circuits.append(qc)
            
    #Sorts Circuits Before Transpiling:
    sort_circuit(circuits)
        
    counter = 0
    for circuit in circuits:
        qc1 = transpile(circuit, optimization_level= 1, seed_transpiler= 42, backend=backend)
        qc2 = transpile(circuit, optimization_level= 2, seed_transpiler= 42, backend=backend)
        qc3 = transpile(circuit, optimization_level= 3, seed_transpiler= 42, backend=backend)
        optimization_level[1].append(qc1)
        optimization_level[2].append(qc2)
        optimization_level[3].append(qc3)
        optimization_level[0].append(circuit)
        print(f"circuit index: {counter} :completed")
        counter = counter + 1
        
    return optimization_level #Returns a Map, that has optimization Level pointing to a list of circuits corresponding to that 

"""
COUNT NUMBER OF GATES
"""
def gate_count(optimization_levels):
    # Transpile each circuit, count the gates, and store the results
    opt1 = []
    opt2 = []
    opt3 = []
    for i in range(len(optimization_levels[1])):
        # counts the number of gates in a given circuit
        opt1_count = optimization_levels[1][i].count_ops()
        opt2_count = optimization_levels[2][i].count_ops()
        opt3_count = optimization_levels[3][i].count_ops()

        # appends our count of the transpiled circuit to the array
        opt1.append(sum(opt1_count.values()))
        opt2.append(sum(opt2_count.values()))
        opt3.append(sum(opt3_count.values()))

    # Generate a graph to visualize the gate counts for optimization level 1
    plt.plot(range(1, len(optimization_levels[1]) + 1), opt1, label = "Optimization Level 1")
    plt.plot(range(1, len(optimization_levels[2]) + 1), opt2, label = "Optimization Level 2")
    plt.plot(range(1, len(optimization_levels[3]) + 1), opt3, label = "Optimization Level 3")
    plt.xlabel('Circuit')
    plt.ylabel('Gate Count')
    plt.title('Gate Count of Transpiled Circuits')
    plt.xticks(range(1, len(optimization_levels[1]) + 1))
    plt.legend()
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

def single_multi_ratio_benchmarking(optimization_levels):
     #These list will store the ratios (single // Multi ) of each circuit
    level1_list = []
    level2_list = []
    level3_list = []    
    return_list = []
    
    for i in range(len(optimization_levels[1])):
        
        level1_data = num_single_and_multi_qubit_gates(optimization_levels[1][i])
        level2_data = num_single_and_multi_qubit_gates(optimization_levels[2][i])
        level3_data = num_single_and_multi_qubit_gates(optimization_levels[3][i])
        
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
    number_of_circuits = [i + 2 for i in range(len(optimization_levels[1]))]
    
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
    plt.title("Transpilation Single Qubit to Multi Qubit gates")
    plt.xlabel('Number of Qubits')
    plt.ylabel('Ratio: (Single | Multi)' )
    plt.legend()
    plt.show()  

"""
NUMBER OF ENTANGLED GATES
"""
def find_num_entagled_gates(optimization_levels):
    entangling_gates_type = ['ecr', 'cx', 'cz', 'swap', 'h', 'ccx', 'crx', 'cry', 'crz']
    # count the entangled gates, and store the results before transpiling
    entangled_gate_counts = []
    for circuit in optimization_levels[0]:
        entangled_gate_count = sum([1 for gate in circuit if gate[0].name in entangling_gates_type])
        entangled_gate_counts.append(entangled_gate_count)
    
    # Find entangling gates in transpiled circuits
    entangled_gates = []
    def find_entangled_qubits(transpiled_circuits):
        for gate in transpiled_circuits:
            if gate in entangling_gates_type:
                entangled_gates.append(transpiled_circuits[gate] )
        
        return entangled_gates
    
    for circuit in optimization_levels[3]:
        entangling_gates = find_entangled_qubits(circuit.count_ops())

    # Plot the number of entangled gates before and after transpile to compare
    plt.plot(range(1, len(optimization_levels[3]) + 1), entangling_gates, label = "Optimization Level 3")
    plt.plot(range(1, len(optimization_levels[0]) + 1), entangled_gate_counts, label = "No Optimization")
    plt.xlabel('Number of Qubits')
    plt.ylabel('Entangled Gate Count')
    plt.title('Number of Entangled Gates (Normal vs Transpiled)')
    plt.xticks(range(1, len(optimization_levels[3]) + 1))
    plt.legend()
    plt.show()

backend = FakeSherbrooke()
transpiled_circuits = file_reader("/Users/noelnegron/Desktop/DJ_Algorithms") # have to change folder directory for the circuits
gate_count(transpiled_circuits)
single_multi_ratio_benchmarking(transpiled_circuits)
find_num_entagled_gates(transpiled_circuits)