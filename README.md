# QXQ_transpiler_benchmarking tool
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

**1) For a user constructed benchmarking test, please refer to the following Python Notebook:**  `benchmarking_notebook.ipynb` 

#### Usage Example
Here, I use the Jupiter Notebook to allow for simple benchmarking customization. All that is left is to define the `get_qasm_files()`  variable, which is specific the QASM directory to be benchmarked. 


```python
class QASMBench(QASMInterface):
    """Submodule for QASMBench circuits."""

    def __init__(self, size: str):
        """
        Args:
        size: 'small', 'medium', or 'large'
        """
        self.size = size
        self.qasm_files = self._get_qasm_files("QASMBench", self.size)

```






## Circuits Tested in Sample Data: #
1. Deutsch Jozsa (DJ)
2. Grover's Algorithm (GA)
3. Bernstein-Vazirani (BV)


## Future Directions: #
1. Develop the Benchmarking qualities such as circuit fidelity
3. Test different types of circuits
4. Optimize Qiskit transplier using benchmarking tool
5. Optimize Code
