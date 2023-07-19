#This following Method will read a bunch of circuits and calculate the circuit depth of each of them lols.
from qiskit import *
from qiskit.providers.fake_provider import FakeSherbrooke
from mqt.bench import *
from qiskit.circuit.library import *
from qiskit.quantum_info import *
from qiskit.algorithms import *
from qiskit.providers.fake_provider import FakeSherbrooke
import numpy as np
import os
import matplotlib.pyplot as plt

backend = FakeSherbrooke()

def file_reader(file_path):
    circuits = []
    directory = file_path
    for circuit in os.listdir(directory):
        circuit_path = f"{file_path}/{circuit}"
        if circuit_path.endswith('.qasm'):
            print(circuit_path)
            qc = QuantumCircuit.from_qasm_file(circuit_path)
            circuits.append(qc)
    return circuits

# def benchmark_circuit_depth(circuits):
#     backend = FakeSherbrooke()
#     Map = {}
#     counter = 1
#     for i in range(len(circuits)):
#         depths = []
#         depths.append(transpile(circuits[i], optimization_level=1, backend = backend).depth())
#         depths.append(transpile(circuits[i], optimization_level=2, backend = backend).depth())
#         depths.append(transpile(circuits[i], optimization_level=3, backend = backend).depth())
#         Map[i] = depths
#         print(counter)
#         counter += 1
#     return Map

def sort_circuit(MQTCircuits):
    for i in range(len(MQTCircuits)):
        min_qubits = MQTCircuits[i].num_qubits
        for j in range(len(MQTCircuits)):
            temp_qubits = MQTCircuits[j].num_qubits
            if min_qubits < temp_qubits:
                min_qubits = temp_qubits
                qc = MQTCircuits[i]
                MQTCircuits[i] = MQTCircuits[j]
                MQTCircuits[j] = qc

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
    return_list = []
    
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
    
        
    return_list.append(level1_list), return_list.append(level2_list), return_list.append(level3_list)
    number_of_circuits = [i + 2 for i in range(circuit_counter)]
    
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
    
    return return_list

MQTCircuits = file_reader("/Users/noelnegron/Desktop/DJ_Algorithms")
sort_circuit(MQTCircuits)
data = single_multi_ratio_benchmarking(MQTCircuits)