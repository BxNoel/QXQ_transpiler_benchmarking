# QXQ_transpiler_benchmarking tool
Transpiler Benchmarking Tool for preset optimization levels
NOTE: Optimization levels can be customized, and the way to intake circuits (via func or file) just customize, and edit that part of the code

# Benchmarking Suite Metrics Status #
  1. Ratio of Multi-Qubit and Single Qubit Gates**
  2. Runtime of Transplier (Integrated)
  3. Number of Gates (Integrated)
  4. Number of Entangled Gates (Integrated)
  5. Circuit Fidelity (Future Work)

# Circuits Tested in Sample Data: #
1. Deutsch Jozsa (DJ)
2. Grover's Algorithm (GA)
3. Bernstein-Vazirani (BV)

# Install Required Packages: #
1. Refer to setup.cfg file to install all required packages
   Youtube Link for directions: (https://youtu.be/JKegib9jgVA)

# Directions To Operate: #
1. Install all required packages
2. Be sure you are capturing data in ideal format (ex. lvl 1 opt vs lvl 3 opt)
3. Edit code to test specific circuit, refer to examples to see how we add circuits/customize code
4. Capture csv, and graphs

# Future Directions: #
1. Develop the Benchmarking qualities such as circuit fidelity
3. Test different types of circuits
4. Optimize Qiskit transplier using benchmarking tool
5. Optimize Code
