# QXQ Transpilation Benchmarking Tool
Transpiler Benchmarking Tool for preset optimization levels
NOTE: Optimization levels can be customized, and the way to intake circuits (via func or file) just customize, and edit that part of the code

### Installation

Refer to setup.cfg file to install all required packages Youtube Link for directions: (https://youtu.be/JKegib9jgVA)

```bash
git clone https://github.com/BxNoel/QXQ_transpiler_benchmarking.git
```
## Current Benchmarking Metrics #
  1. Ratio of Multi-Qubit and Single Qubit Gates (Integrated)
  2. Runtime of Transplier (Integrated)
  3. Number of Gates (Integrated)
  4. Number of Entangled Gates (Integrated)
  5. Circuit Fidelity (Future Work)


## Usage: #
Once all packages have been correctly installed, follow these steps:
### 1. `Creating a QASM Directory`:
Refer to `Quantum Circuits` to use preset QASM directories or build your own. [need to add how to build your own director]


### 2. `Starting Benchmarking Assessments:
Once you have obtained a QASM Directory, you can begin to load it into the benchmarking assessments. Currently, there are two 
different Python files used to begin benchmarking Qiskit transpilation.  

**1) For a user-constructed benchmarking test, please refer to the following Python Notebook:**  `benchmarking_notebook.ipynb` 

#### Usage Example
Here, I use the Jupiter Notebook to allow for simple benchmarking customization. All that is left is to define the `backend` you want to test
and the `path_name`, which is specific to the QASM directory to be benchmarked. 


```python
backend = FakeSherbrooke()
path_name = "Insert_Path_Name_Here" #Enter path name here
circuits, file_order = file_reader(path_name) # Place file name to perform benchmarking test on runtime
transpiled_circuits, level1_runtime, level2_runtime, level3_runtime, mean_transpile_times_1, mean_transpile_times_2, mean_transpile_times_3
```
**2)To benchmark using all available metrics, refer to the following Python script:** `QXQ_benchmarking_tool.ipynb`
#### When adding your file path to the QASM directory, please refer to lines 380-390

Here are lines 380-390 in `QXQ_benchmarking_tool.ipynb`. All that needs to be done is specified a specific backend and path_name. If a 
backend is not specified, then `FakeSherbrooke()` is used.  

```python
path_name = "Insert_Path_Name_Here" # Change the path name
backend = FakeSherbrooke()
circuits, file_order = file_reader(path_name)

# Retrievesvalues from the benchmarking methods and inputs into the CSV file
transpiled_circuits, level1_runtime, level2_runtime, level3_runtime, mean_transpile_times_1, mean_transpile_times_2, mean_transpile_times_3 = runtime_benchmarking(5, circuits, backend)
level1_gatecount, level2_gatecount, level3_gatecount = gate_count(transpiled_circuits)
level1_ratio, level2_ratio, level3_ratio = single_multi_ratio_benchmarking(transpiled_circuits)
```

### 3. Retrieving Results:
Once your benchmarking has finished for all optimization levels, the results are then returned in a CSV file. 
The file should be named after your path_name and should be separated by Optimization Level. Graphs will also be 
returned, ready to save. 

![inital plot](Quantum_Circuits/BV_500_Runtime.jpg)


## Circuits Tested in Sample Data: #
1. Deutsch Jozsa (DJ)
2. Grover's Algorithm (GA)
3. Bernstein-Vazirani (BV)


## Future Directions: #
1. Develop the Benchmarking qualities such as circuit fidelity
3. Test different types of circuits
4. Optimize Qiskit transplier using benchmarking tool
5. Optimize Code
