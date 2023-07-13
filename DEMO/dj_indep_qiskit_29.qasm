// Benchmark was created by MQT Bench on 2023-06-29
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: v1.0.0
// Qiskit version: {'qiskit-terra': '0.24.1', 'qiskit-aer': '0.12.0', 'qiskit-ignis': None, 'qiskit-ibmq-provider': '0.20.2', 'qiskit': '0.43.1', 'qiskit-nature': '0.6.2', 'qiskit-finance': '0.3.4', 'qiskit-optimization': '0.5.0', 'qiskit-machine-learning': '0.6.1'}

OPENQASM 2.0;
include "qelib1.inc";
qreg q[29];
creg c[28];
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
u2(0,0) q[15];
h q[16];
h q[17];
h q[18];
h q[19];
h q[20];
u2(0,0) q[21];
h q[22];
h q[23];
u2(0,0) q[24];
u2(0,0) q[25];
h q[26];
h q[27];
u2(-pi,-pi) q[28];
cx q[0],q[28];
u2(-pi,-pi) q[0];
cx q[1],q[28];
u2(-pi,-pi) q[1];
cx q[2],q[28];
h q[2];
cx q[3],q[28];
u2(-pi,-pi) q[3];
cx q[4],q[28];
h q[4];
cx q[5],q[28];
u2(-pi,-pi) q[5];
cx q[6],q[28];
u2(-pi,-pi) q[6];
cx q[7],q[28];
h q[7];
cx q[8],q[28];
u2(-pi,-pi) q[8];
cx q[9],q[28];
cx q[10],q[28];
h q[10];
cx q[11],q[28];
u2(-pi,-pi) q[11];
cx q[12],q[28];
u2(-pi,-pi) q[12];
cx q[13],q[28];
h q[13];
cx q[14],q[28];
h q[14];
cx q[15],q[28];
u2(-pi,-pi) q[15];
cx q[16],q[28];
h q[16];
cx q[17],q[28];
h q[17];
cx q[18],q[28];
h q[18];
cx q[19],q[28];
h q[19];
cx q[20],q[28];
h q[20];
cx q[21],q[28];
u2(-pi,-pi) q[21];
cx q[22],q[28];
h q[22];
cx q[23],q[28];
h q[23];
cx q[24],q[28];
u2(-pi,-pi) q[24];
cx q[25],q[28];
u2(-pi,-pi) q[25];
cx q[26],q[28];
h q[26];
cx q[27],q[28];
h q[27];
u2(-pi,-pi) q[9];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7],q[8],q[9],q[10],q[11],q[12],q[13],q[14],q[15],q[16],q[17],q[18],q[19],q[20],q[21],q[22],q[23],q[24],q[25],q[26],q[27],q[28];
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
measure q[15] -> c[15];
measure q[16] -> c[16];
measure q[17] -> c[17];
measure q[18] -> c[18];
measure q[19] -> c[19];
measure q[20] -> c[20];
measure q[21] -> c[21];
measure q[22] -> c[22];
measure q[23] -> c[23];
measure q[24] -> c[24];
measure q[25] -> c[25];
measure q[26] -> c[26];
measure q[27] -> c[27];
