// Benchmark was created by MQT Bench on 2023-06-29
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: v1.0.0
// Qiskit version: {'qiskit-terra': '0.24.1', 'qiskit-aer': '0.12.0', 'qiskit-ignis': None, 'qiskit-ibmq-provider': '0.20.2', 'qiskit': '0.43.1', 'qiskit-nature': '0.6.2', 'qiskit-finance': '0.3.4', 'qiskit-optimization': '0.5.0', 'qiskit-machine-learning': '0.6.1'}

OPENQASM 2.0;
include "qelib1.inc";
qreg q[16];
creg c[15];
u2(0,0) q[0];
u2(0,0) q[1];
h q[2];
u2(0,0) q[3];
h q[4];
u2(0,0) q[5];
u2(0,0) q[6];
h q[7];
u2(0,0) q[8];
u2(0,0) q[9];
h q[10];
u2(0,0) q[11];
u2(0,0) q[12];
h q[13];
h q[14];
u2(-pi,-pi) q[15];
cx q[0],q[15];
u2(-pi,-pi) q[0];
cx q[1],q[15];
u2(-pi,-pi) q[1];
cx q[2],q[15];
h q[2];
cx q[3],q[15];
u2(-pi,-pi) q[3];
cx q[4],q[15];
h q[4];
cx q[5],q[15];
u2(-pi,-pi) q[5];
cx q[6],q[15];
u2(-pi,-pi) q[6];
cx q[7],q[15];
h q[7];
cx q[8],q[15];
u2(-pi,-pi) q[8];
cx q[9],q[15];
cx q[10],q[15];
h q[10];
cx q[11],q[15];
u2(-pi,-pi) q[11];
cx q[12],q[15];
u2(-pi,-pi) q[12];
cx q[13],q[15];
h q[13];
cx q[14],q[15];
h q[14];
u2(-pi,-pi) q[9];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7],q[8],q[9],q[10],q[11],q[12],q[13],q[14],q[15];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
measure q[5] -> c[5];
measure q[6] -> c[6];
measure q[7] -> c[7];
measure q[8] -> c[8];
measure q[9] -> c[9];
measure q[10] -> c[10];
measure q[11] -> c[11];
measure q[12] -> c[12];
measure q[13] -> c[13];
measure q[14] -> c[14];
