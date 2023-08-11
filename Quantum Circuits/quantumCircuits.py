from mqt.bench import *
from qiskit import *
from qiskit.circuit.library import *
from qiskit.quantum_info import *
from qiskit.algorithms import *
from qiskit import *
from qiskit.providers.fake_provider import FakeSherbrooke
from qiskit.circuit.random import random_circuit
import numpy as np

class buildQC:
    
    def quantum_voulme(self, num_qubits):
        return QuantumVolume(num_qubits, seed = 42)
    
    def grovers_alg(self, good_state, iterations):
        oracle = Statevector.from_label(good_state)
        problem = AmplificationProblem(oracle, is_good_state = good_state)
        grover = Grover(iterations=iterations)
        circuit = grover.construct_circuit(problem)
        circuit.measure_all()
            
        return circuit
    
    def bernstein_vazarani(self, n,s):
        # We need a circuit with n qubits, plus one auxiliary qubit
        # Also need n classical bits to write the output to
        bv_circuit = QuantumCircuit(n+1, n)

        # put auxiliary in state |->
        bv_circuit.h(n)
        bv_circuit.z(n)

        # Apply Hadamard gates before querying the oracle
        for i in range(n):
            bv_circuit.h(i)
            
        # Apply barrier 
        bv_circuit.barrier()

        # Apply the inner-product oracle
        s = s[::-1] # reverse s to fit qiskit's qubit ordering
        for q in range(n):
            if s[q] == '0':
                continue 
            else:
                bv_circuit.cx(q, n)
                
        # Apply barrier 
        bv_circuit.barrier()

        #Apply Hadamard gates after querying the oracle
        for i in range(n):
            bv_circuit.h(i)

        # Measurement
        for i in range(n):
            bv_circuit.measure(i, i)

        return bv_circuit