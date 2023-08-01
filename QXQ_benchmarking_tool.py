from mqt.bench import get_benchmark
from qiskit import QuantumCircuit, Aer, execute, assemble
from qiskit.providers.fake_provider import FakeSherbrooke
from qiskit.compiler import transpile
from qiskit.visualization import plot_gate_map
from qiskit.visualization import plot_histogram, plot_bloch_multivector
import numpy as np
import time
import os
from statistics import mean
import matplotlib.pyplot as plt
import re
import csv
from collections import OrderedDict
import warnings

# This bypasses the runtime warnings in the terminal
warnings.filterwarnings("ignore")

""" This sorts our ciruits in ascending ordering via number 

    Parameters
    ----------
    val : int
    
    Returns
    -------
    split
        
"""
num = re.compile(r'(\d+)')
def ascending_sort(val):
    split = num.split(val)
    split[1::2] = map(int, split[1::2])
    return split

""" Path to the circuits stored locally

    Parameters
    ----------
    file_path : int
    
    Returns
    -------
    split
        x
"""  
def file_reader(file_path):
    circuits = []
    file_order = []
    directory = file_path
    for circuit in sorted(os.listdir(directory), key=ascending_sort):
        circuit_path = f"{file_path}/{circuit}"
        if(circuit_path.endswith('.qasm')):
            print(circuit_path)
            qc = QuantumCircuit.from_qasm_file(circuit_path)
            # Gets the name of each circuit in the order it's read
            file_order.append(circuit)
            circuits.append(qc)
    return circuits, file_order


""" This calculates runtimes and returns a completed analysis of a directory of circuits. 
    THIS METHOD ALSO returns a MAPPING of all circuits to a corresponding optimization level.

    Parameters
    ----------
    NUM_ITERATIONS : int
    circuits : int
    the_backend : int

    Returns
    -------
    Optimization_Levels
        x
"""
def runtime_benchmarking(NUM_ITERATIONS, circuits, the_backend):
    BACKEND = the_backend
    Optimization_Levels = {3: [], 2: [], 1: [], 0: []}

    #These array will store:
    mean_transpile_times_1 = []
    mean_transpile_times_2 = []
    mean_transpile_times_3 = []
    
    ttime_level1 = []
    ttime_level2 = []
    ttime_level3 = []
    counter = 0
    
    for circuit in circuits:
        transpiled = False
        temp1 = []
        temp2 = []
        temp3 = []
        for _ in range(NUM_ITERATIONS):
            #Transpilation Level 1:
            start_time = time.perf_counter()
            qc1 = transpile(circuit, optimization_level= 1, seed_transpiler= 42, backend=BACKEND)
            stop_time = time.perf_counter()
            temp1.append(stop_time - start_time)
            #Transpilation Level 2:
            start_time = time.perf_counter()
            qc2 = transpile(circuit, optimization_level= 2, seed_transpiler= 42, backend=BACKEND)
            stop_time = time.perf_counter()
            temp2.append(stop_time - start_time)
            #Transpilation Level 3:
            start_time = time.perf_counter()
            qc3 = transpile(circuit, optimization_level= 3, seed_transpiler= 42, backend=BACKEND)
            stop_time = time.perf_counter()
            temp3.append(stop_time - start_time)
            #If this is the first iteration, then we simply add the circuits to the dictonary
            if transpiled == False:
                Optimization_Levels[3].append(qc3)
                Optimization_Levels[2].append(qc2)
                Optimization_Levels[1].append(qc1)
                Optimization_Levels[0].append(circuit)
                transpiled = True
        #At this point all the data has been added to iteration_times. Now it is just a matter of extracting data.
        ttime_level1.append(temp1)
        ttime_level2.append(temp2)
        ttime_level3.append(temp3)
        
        mean_transpile_times_1.append(mean(temp1))
        mean_transpile_times_2.append(mean(temp2))
        mean_transpile_times_3.append(mean(temp3))
        print("Circuit Index Completed: ", counter)
        counter += 1
    #Scatter Plot for Runtime after all values are collected
    plt.figure(figsize=(12, 6))
    #Number of qubits in the sorted circuit
    number_of_qubits = [i + 2 for i in range(len(mean_transpile_times_1))] #num of qubits
    x = np.array(number_of_qubits)
    #Calculating Line of BEST FIT: Optimization Level 1
    a, b = np.polyfit(x, np.array(mean_transpile_times_1), 1)
    #Calculating Line of BEST FIT: Optimization Level 2
    c, d = np.polyfit(x, np.array(mean_transpile_times_2), 1)
    #Calculating Line of BEST Fit: Optimization Level 3
    e, f = np.polyfit(x, np.array(mean_transpile_times_3), 1)
    plt.scatter(number_of_qubits, mean_transpile_times_1, label = "Average of Opt Level 1")
    plt.plot(x, a*x+b)
    plt.scatter(number_of_qubits, mean_transpile_times_2, label = "Average of Opt Level 2")
    plt.plot(x, c*x+d)
    plt.scatter(number_of_qubits, mean_transpile_times_3, label = "Average of Opt Level 3")
    plt.plot(x, e*x+f)
    plt.xlabel('Number of Qubits')
    plt.ylabel('Runtime in Seconds')
    plt.title('Runtime in Seconds (at each opt level)')
    plt.legend()
    plt.show()
    
    print("mean 1", mean_transpile_times_1)
    print("mean 2", mean_transpile_times_2)
    print("mean 3", mean_transpile_times_3)
    
    #return mean_transpile_times_1
    return Optimization_Levels, ttime_level1, ttime_level2, ttime_level3, mean_transpile_times_1, mean_transpile_times_2, mean_transpile_times_3
    #return optimization_level_1, optimization_level_2, optimization_level_3


""" Takes in a mapping of optimization levels and returns a gate_count

    Parameters
    ----------
    optimization_levels : 

    Returns
    -------
    opt1, opt2, opt3
        x
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

    print("gate count level 1", opt1)
    print("gate count level 2", opt2)
    print("gate count level 3", opt3)

    return opt1, opt2, opt3

""" Helper method for proceeding function

    Parameters
    ----------
    circuit :  

    Returns
    -------
    Map
        x
""" 
def num_single_and_multi_qubit_gates(circuit):
    Map = {'single' : 0, "multi" : 0}
    for gate in circuit.data:
        if len(gate[1]) == 1:
            Map['single'] = Map['single'] + 1
        else:
            Map['multi'] = Map['multi'] + 1
    return Map

""" Helper method for proceeding function

    Parameters
    ----------
    optimization_levels :  

    Returns
    -------
    level1_list, level2_list, level3_list
        Returns the ratio of single qubit gates to multi qubit gates for each optimization level
""" 
def single_multi_ratio_benchmarking(optimization_levels):
     #These list will store the ratios (single // Multi ) of each circuit
    level1_list = []
    level2_list = []
    level3_list = []    
    
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
    

    number_of_qubits= [i + 2 for i in range(len(optimization_levels[1]))]

    print("ratio 1", level1_list)
    print("ratio 2", level2_list)
    print("ratio 3", level3_list)

    x = np.array(number_of_qubits)
    
    #Calculating Line of BEST FIT: Optimization Level 1
    a, b = np.polyfit(x, np.array(level1_list), 1)
    #Calculating Line of BEST FIT: Optimization Level 2
    c, d = np.polyfit(x, np.array(level2_list), 1)
    #Calculating Line of BEST Fit: Optimization Lebel 3
    e, f = np.polyfit(x, np.array(level3_list), 1)
    
    #--> Optimization Level 1.. etc lols
    plt.scatter(number_of_qubits, level1_list , label = "Optimization Level 1")    
    plt.plot(x, a*x+b) 
    print("The rate of change for optimization Level 1 is: ", a)
    print("The y-intercept for optimization level 1 is: ", b)
    plt.scatter(number_of_qubits, level2_list, label = "Optimization Level 2")
    plt.plot(x, c*x+d)  
    print("The rate of change for optimization level 2 is: ", c)
    print("The y-intercept for optimization level 2 is: ", d)
    plt.scatter(number_of_qubits, level3_list, label = "Optimization Level 3")
    print("The rate of change for optimization level 3 is: ", e)
    print("The y-intercept for optimization level 3 is: ", f)
    plt.plot(x, e*x+f)  
    plt.title("Transpilation Single Qubit to Multi Qubit gates")
    plt.xlabel('Number of Qubits')
    plt.ylabel('Ratio: (Single | Multi)' )
    plt.legend()
    plt.show()

    return level1_list, level2_list, level3_list
    
backend = FakeSherbrooke()
circuits, file_order = file_reader("tests") # have to change folder directory for the circuits
#transpiled_circuits = runtime_benchmarking(5, circuits, backend)

# Retrieves the return values from the benchmarking methods for the CSV file
#transpile = runtime_benchmarking(5, circuits, backend)
transpiled_circuits, level1_runtime, level2_runtime, level3_runtime, mean_transpile_times_1, mean_transpile_times_2, mean_transpile_times_3 = runtime_benchmarking(5, circuits, backend)
level1_gatecount, level2_gatecount, level3_gatecount = gate_count(transpiled_circuits)
level1_ratio, level2_ratio, level3_ratio = single_multi_ratio_benchmarking(transpiled_circuits)

""" 
    Here we are creating the CSV file to store the results from our benchmarks.
    The data we are collecting includes:
    The name of the circuit 
    The runtime
    The gate count
    The ratio of single to multi qubit gates
    The of number of swap gates
    The number of entangled gates
""" 
with open('optimzation_level_1.csv', 'w', newline='') as csvfile:
    # Below is the information we are trying to extract from our circuits
    fieldnames = [' Circuit Name',
                  ' Average Runtime: Level 1',
                  ' Run Times Level 1',
                  ' Gate Count: Level 1', 
                  ' Ratio: Level 1']
    writer = csv.DictWriter(csvfile, fieldnames=fieldnames) # calling the writer
    writer.writeheader() # Here we are creating the columns for our CSV file

    for file_name, avg_lvl_1, runtime_lvl_1,gate_count_lvl_1, ratio_lvl_1 in zip(file_order, mean_transpile_times_1, level1_runtime, level1_gatecount, level1_ratio):
        writer.writerow({' Circuit Name': file_name,
                         ' Average Runtime: Level 1': avg_lvl_1,
                         ' Run Times Level 1': runtime_lvl_1, 
                         ' Gate Count: Level 1': gate_count_lvl_1, 
                         ' Ratio: Level 1': ratio_lvl_1 })
                        
with open('optimzation_level_2.csv', 'w', newline='') as csvfile:
    # Below is the information we are trying to extract from our circuits
    fieldnames = [' Circuit Name',
                  ' Average Runtime: Level 2',
                  ' Run Times Level 2',
                  ' Gate Count: Level 2', 
                  ' Ratio: Level 2']
    writer = csv.DictWriter(csvfile, fieldnames=fieldnames) # calling the writer
    writer.writeheader() # Here we are creating the columns for our CSV file

    for file_name, avg_lvl_2, runtime_lvl_2, gate_count_lvl_2, ratio_lvl_2 in zip(file_order, mean_transpile_times_2, level2_runtime, level2_gatecount, level2_ratio):
        writer.writerow({' Circuit Name': file_name,
                         ' Average Runtime: Level 2': avg_lvl_2,
                         ' Run Times Level 2': runtime_lvl_2, 
                         ' Gate Count: Level 2': gate_count_lvl_2, 
                         ' Ratio: Level 2': ratio_lvl_2 })
        
with open('optimzation_level_3.csv', 'w', newline='') as csvfile:
    # Below is the information we are trying to extract from our circuits
    fieldnames = [' Circuit Name',
                  ' Average Runtime: Level 3',
                  ' Run Times Level 3',
                  ' Gate Count: Level 3', 
                  ' Ratio: Level 3']
    writer = csv.DictWriter(csvfile, fieldnames=fieldnames) # calling the writer
    writer.writeheader() # Here we are creating the columns for our CSV file

    for file_name, avg_lvl_3, runtime_lvl_3, gate_count_lvl_3, ratio_lvl_3 in zip(file_order, mean_transpile_times_3, level3_runtime, level3_gatecount, level3_ratio):
        writer.writerow({' Circuit Name': file_name,
                         ' Average Runtime: Level 3': avg_lvl_3,
                         ' Run Times Level 3': runtime_lvl_3, 
                         ' Gate Count: Level 3': gate_count_lvl_3, 
                         ' Ratio: Level 3': ratio_lvl_3 })