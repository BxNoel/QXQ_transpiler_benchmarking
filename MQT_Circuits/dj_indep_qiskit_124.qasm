// Benchmark was created by MQT Bench on 2023-06-29
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: v1.0.0
// Qiskit version: {'qiskit-terra': '0.24.1', 'qiskit-aer': '0.12.0', 'qiskit-ignis': None, 'qiskit-ibmq-provider': '0.20.2', 'qiskit': '0.43.1', 'qiskit-nature': '0.6.2', 'qiskit-finance': '0.3.4', 'qiskit-optimization': '0.5.0', 'qiskit-machine-learning': '0.6.1'}

OPENQASM 2.0;
include "qelib1.inc";
qreg q[124];
creg c[123];
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
u2(0,0) q[28];
h q[29];
h q[30];
u2(0,0) q[31];
h q[32];
h q[33];
h q[34];
u2(0,0) q[35];
u2(0,0) q[36];
h q[37];
u2(0,0) q[38];
u2(0,0) q[39];
u2(0,0) q[40];
u2(0,0) q[41];
u2(0,0) q[42];
h q[43];
u2(0,0) q[44];
h q[45];
h q[46];
h q[47];
h q[48];
u2(0,0) q[49];
h q[50];
u2(0,0) q[51];
u2(0,0) q[52];
u2(0,0) q[53];
h q[54];
u2(0,0) q[55];
h q[56];
u2(0,0) q[57];
u2(0,0) q[58];
h q[59];
u2(0,0) q[60];
h q[61];
h q[62];
u2(0,0) q[63];
h q[64];
h q[65];
h q[66];
u2(0,0) q[67];
u2(0,0) q[68];
h q[69];
h q[70];
h q[71];
u2(0,0) q[72];
h q[73];
u2(0,0) q[74];
u2(0,0) q[75];
h q[76];
u2(0,0) q[77];
u2(0,0) q[78];
h q[79];
u2(0,0) q[80];
h q[81];
h q[82];
h q[83];
h q[84];
h q[85];
u2(0,0) q[86];
h q[87];
u2(0,0) q[88];
h q[89];
h q[90];
h q[91];
h q[92];
h q[93];
h q[94];
h q[95];
u2(0,0) q[96];
u2(0,0) q[97];
h q[98];
u2(0,0) q[99];
u2(0,0) q[100];
h q[101];
h q[102];
u2(0,0) q[103];
h q[104];
h q[105];
u2(0,0) q[106];
h q[107];
h q[108];
h q[109];
h q[110];
h q[111];
h q[112];
u2(0,0) q[113];
u2(0,0) q[114];
u2(0,0) q[115];
h q[116];
h q[117];
h q[118];
u2(0,0) q[119];
u2(0,0) q[120];
u2(0,0) q[121];
u2(0,0) q[122];
u2(-pi,-pi) q[123];
cx q[0],q[123];
u2(-pi,-pi) q[0];
cx q[1],q[123];
u2(-pi,-pi) q[1];
cx q[2],q[123];
h q[2];
cx q[3],q[123];
u2(-pi,-pi) q[3];
cx q[4],q[123];
h q[4];
cx q[5],q[123];
u2(-pi,-pi) q[5];
cx q[6],q[123];
u2(-pi,-pi) q[6];
cx q[7],q[123];
h q[7];
cx q[8],q[123];
u2(-pi,-pi) q[8];
cx q[9],q[123];
cx q[10],q[123];
h q[10];
cx q[11],q[123];
u2(-pi,-pi) q[11];
cx q[12],q[123];
u2(-pi,-pi) q[12];
cx q[13],q[123];
h q[13];
cx q[14],q[123];
h q[14];
cx q[15],q[123];
u2(-pi,-pi) q[15];
cx q[16],q[123];
h q[16];
cx q[17],q[123];
h q[17];
cx q[18],q[123];
h q[18];
cx q[19],q[123];
h q[19];
cx q[20],q[123];
h q[20];
cx q[21],q[123];
u2(-pi,-pi) q[21];
cx q[22],q[123];
h q[22];
cx q[23],q[123];
h q[23];
cx q[24],q[123];
u2(-pi,-pi) q[24];
cx q[25],q[123];
u2(-pi,-pi) q[25];
cx q[26],q[123];
h q[26];
cx q[27],q[123];
h q[27];
cx q[28],q[123];
u2(-pi,-pi) q[28];
cx q[29],q[123];
h q[29];
cx q[30],q[123];
h q[30];
cx q[31],q[123];
u2(-pi,-pi) q[31];
cx q[32],q[123];
h q[32];
cx q[33],q[123];
h q[33];
cx q[34],q[123];
h q[34];
cx q[35],q[123];
u2(-pi,-pi) q[35];
cx q[36],q[123];
u2(-pi,-pi) q[36];
cx q[37],q[123];
h q[37];
cx q[38],q[123];
u2(-pi,-pi) q[38];
cx q[39],q[123];
u2(-pi,-pi) q[39];
cx q[40],q[123];
u2(-pi,-pi) q[40];
cx q[41],q[123];
u2(-pi,-pi) q[41];
cx q[42],q[123];
u2(-pi,-pi) q[42];
cx q[43],q[123];
h q[43];
cx q[44],q[123];
u2(-pi,-pi) q[44];
cx q[45],q[123];
h q[45];
cx q[46],q[123];
h q[46];
cx q[47],q[123];
h q[47];
cx q[48],q[123];
h q[48];
cx q[49],q[123];
u2(-pi,-pi) q[49];
cx q[50],q[123];
h q[50];
cx q[51],q[123];
u2(-pi,-pi) q[51];
cx q[52],q[123];
u2(-pi,-pi) q[52];
cx q[53],q[123];
u2(-pi,-pi) q[53];
cx q[54],q[123];
h q[54];
cx q[55],q[123];
u2(-pi,-pi) q[55];
cx q[56],q[123];
h q[56];
cx q[57],q[123];
u2(-pi,-pi) q[57];
cx q[58],q[123];
u2(-pi,-pi) q[58];
cx q[59],q[123];
h q[59];
cx q[60],q[123];
u2(-pi,-pi) q[60];
cx q[61],q[123];
h q[61];
cx q[62],q[123];
h q[62];
cx q[63],q[123];
u2(-pi,-pi) q[63];
cx q[64],q[123];
h q[64];
cx q[65],q[123];
h q[65];
cx q[66],q[123];
h q[66];
cx q[67],q[123];
u2(-pi,-pi) q[67];
cx q[68],q[123];
u2(-pi,-pi) q[68];
cx q[69],q[123];
h q[69];
cx q[70],q[123];
h q[70];
cx q[71],q[123];
h q[71];
cx q[72],q[123];
u2(-pi,-pi) q[72];
cx q[73],q[123];
h q[73];
cx q[74],q[123];
u2(-pi,-pi) q[74];
cx q[75],q[123];
u2(-pi,-pi) q[75];
cx q[76],q[123];
h q[76];
cx q[77],q[123];
u2(-pi,-pi) q[77];
cx q[78],q[123];
u2(-pi,-pi) q[78];
cx q[79],q[123];
h q[79];
cx q[80],q[123];
u2(-pi,-pi) q[80];
cx q[81],q[123];
h q[81];
cx q[82],q[123];
h q[82];
cx q[83],q[123];
h q[83];
cx q[84],q[123];
h q[84];
cx q[85],q[123];
h q[85];
cx q[86],q[123];
u2(-pi,-pi) q[86];
cx q[87],q[123];
h q[87];
cx q[88],q[123];
u2(-pi,-pi) q[88];
cx q[89],q[123];
h q[89];
u2(-pi,-pi) q[9];
cx q[90],q[123];
h q[90];
cx q[91],q[123];
h q[91];
cx q[92],q[123];
h q[92];
cx q[93],q[123];
h q[93];
cx q[94],q[123];
h q[94];
cx q[95],q[123];
h q[95];
cx q[96],q[123];
u2(-pi,-pi) q[96];
cx q[97],q[123];
u2(-pi,-pi) q[97];
cx q[98],q[123];
h q[98];
cx q[99],q[123];
cx q[100],q[123];
u2(-pi,-pi) q[100];
cx q[101],q[123];
h q[101];
cx q[102],q[123];
h q[102];
cx q[103],q[123];
u2(-pi,-pi) q[103];
cx q[104],q[123];
h q[104];
cx q[105],q[123];
h q[105];
cx q[106],q[123];
u2(-pi,-pi) q[106];
cx q[107],q[123];
h q[107];
cx q[108],q[123];
h q[108];
cx q[109],q[123];
h q[109];
cx q[110],q[123];
h q[110];
cx q[111],q[123];
h q[111];
cx q[112],q[123];
h q[112];
cx q[113],q[123];
u2(-pi,-pi) q[113];
cx q[114],q[123];
u2(-pi,-pi) q[114];
cx q[115],q[123];
u2(-pi,-pi) q[115];
cx q[116],q[123];
h q[116];
cx q[117],q[123];
h q[117];
cx q[118],q[123];
h q[118];
cx q[119],q[123];
u2(-pi,-pi) q[119];
cx q[120],q[123];
u2(-pi,-pi) q[120];
cx q[121],q[123];
u2(-pi,-pi) q[121];
cx q[122],q[123];
u2(-pi,-pi) q[122];
u2(-pi,-pi) q[99];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7],q[8],q[9],q[10],q[11],q[12],q[13],q[14],q[15],q[16],q[17],q[18],q[19],q[20],q[21],q[22],q[23],q[24],q[25],q[26],q[27],q[28],q[29],q[30],q[31],q[32],q[33],q[34],q[35],q[36],q[37],q[38],q[39],q[40],q[41],q[42],q[43],q[44],q[45],q[46],q[47],q[48],q[49],q[50],q[51],q[52],q[53],q[54],q[55],q[56],q[57],q[58],q[59],q[60],q[61],q[62],q[63],q[64],q[65],q[66],q[67],q[68],q[69],q[70],q[71],q[72],q[73],q[74],q[75],q[76],q[77],q[78],q[79],q[80],q[81],q[82],q[83],q[84],q[85],q[86],q[87],q[88],q[89],q[90],q[91],q[92],q[93],q[94],q[95],q[96],q[97],q[98],q[99],q[100],q[101],q[102],q[103],q[104],q[105],q[106],q[107],q[108],q[109],q[110],q[111],q[112],q[113],q[114],q[115],q[116],q[117],q[118],q[119],q[120],q[121],q[122],q[123];
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
measure q[28] -> c[28];
measure q[29] -> c[29];
measure q[30] -> c[30];
measure q[31] -> c[31];
measure q[32] -> c[32];
measure q[33] -> c[33];
measure q[34] -> c[34];
measure q[35] -> c[35];
measure q[36] -> c[36];
measure q[37] -> c[37];
measure q[38] -> c[38];
measure q[39] -> c[39];
measure q[40] -> c[40];
measure q[41] -> c[41];
measure q[42] -> c[42];
measure q[43] -> c[43];
measure q[44] -> c[44];
measure q[45] -> c[45];
measure q[46] -> c[46];
measure q[47] -> c[47];
measure q[48] -> c[48];
measure q[49] -> c[49];
measure q[50] -> c[50];
measure q[51] -> c[51];
measure q[52] -> c[52];
measure q[53] -> c[53];
measure q[54] -> c[54];
measure q[55] -> c[55];
measure q[56] -> c[56];
measure q[57] -> c[57];
measure q[58] -> c[58];
measure q[59] -> c[59];
measure q[60] -> c[60];
measure q[61] -> c[61];
measure q[62] -> c[62];
measure q[63] -> c[63];
measure q[64] -> c[64];
measure q[65] -> c[65];
measure q[66] -> c[66];
measure q[67] -> c[67];
measure q[68] -> c[68];
measure q[69] -> c[69];
measure q[70] -> c[70];
measure q[71] -> c[71];
measure q[72] -> c[72];
measure q[73] -> c[73];
measure q[74] -> c[74];
measure q[75] -> c[75];
measure q[76] -> c[76];
measure q[77] -> c[77];
measure q[78] -> c[78];
measure q[79] -> c[79];
measure q[80] -> c[80];
measure q[81] -> c[81];
measure q[82] -> c[82];
measure q[83] -> c[83];
measure q[84] -> c[84];
measure q[85] -> c[85];
measure q[86] -> c[86];
measure q[87] -> c[87];
measure q[88] -> c[88];
measure q[89] -> c[89];
measure q[90] -> c[90];
measure q[91] -> c[91];
measure q[92] -> c[92];
measure q[93] -> c[93];
measure q[94] -> c[94];
measure q[95] -> c[95];
measure q[96] -> c[96];
measure q[97] -> c[97];
measure q[98] -> c[98];
measure q[99] -> c[99];
measure q[100] -> c[100];
measure q[101] -> c[101];
measure q[102] -> c[102];
measure q[103] -> c[103];
measure q[104] -> c[104];
measure q[105] -> c[105];
measure q[106] -> c[106];
measure q[107] -> c[107];
measure q[108] -> c[108];
measure q[109] -> c[109];
measure q[110] -> c[110];
measure q[111] -> c[111];
measure q[112] -> c[112];
measure q[113] -> c[113];
measure q[114] -> c[114];
measure q[115] -> c[115];
measure q[116] -> c[116];
measure q[117] -> c[117];
measure q[118] -> c[118];
measure q[119] -> c[119];
measure q[120] -> c[120];
measure q[121] -> c[121];
measure q[122] -> c[122];
