// Benchmark was created by MQT Bench on 2023-06-30
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: v1.0.0
// Qiskit version: {'qiskit-terra': '0.24.1', 'qiskit-aer': '0.12.0', 'qiskit-ignis': None, 'qiskit-ibmq-provider': '0.20.2', 'qiskit': '0.43.1', 'qiskit-nature': '0.6.2', 'qiskit-finance': '0.3.4', 'qiskit-optimization': '0.5.0', 'qiskit-machine-learning': '0.6.1'}
// Used Gate Set: ['rz', 'sx', 'x', 'cx', 'measure']
// Coupling List: [[0, 1], [0, 14], [1, 0], [1, 2], [2, 1], [2, 3], [3, 2], [3, 4], [4, 3], [4, 5], [4, 15], [5, 4], [5, 6], [6, 5], [6, 7], [7, 6], [7, 8], [8, 7], [8, 16], [9, 10], [10, 9], [10, 11], [11, 10], [11, 12], [12, 11], [12, 13], [12, 17], [13, 12], [14, 0], [14, 18], [15, 4], [15, 22], [16, 8], [16, 26], [17, 12], [17, 30], [18, 14], [18, 19], [19, 18], [19, 20], [20, 19], [20, 21], [20, 33], [21, 20], [21, 22], [22, 15], [22, 21], [22, 23], [23, 22], [23, 24], [24, 23], [24, 25], [24, 34], [25, 24], [25, 26], [26, 16], [26, 25], [26, 27], [27, 26], [27, 28], [28, 27], [28, 29], [28, 35], [29, 28], [29, 30], [30, 17], [30, 29], [30, 31], [31, 30], [31, 32], [32, 31], [32, 36], [33, 20], [33, 39], [34, 24], [34, 43], [35, 28], [35, 47], [36, 32], [36, 51], [37, 38], [37, 52], [38, 37], [38, 39], [39, 33], [39, 38], [39, 40], [40, 39], [40, 41], [41, 40], [41, 42], [41, 53], [42, 41], [42, 43], [43, 34], [43, 42], [43, 44], [44, 43], [44, 45], [45, 44], [45, 46], [45, 54], [46, 45], [46, 47], [47, 35], [47, 46], [47, 48], [48, 47], [48, 49], [49, 48], [49, 50], [49, 55], [50, 49], [50, 51], [51, 36], [51, 50], [52, 37], [52, 56], [53, 41], [53, 60], [54, 45], [54, 64], [55, 49], [55, 68], [56, 52], [56, 57], [57, 56], [57, 58], [58, 57], [58, 59], [58, 71], [59, 58], [59, 60], [60, 53], [60, 59], [60, 61], [61, 60], [61, 62], [62, 61], [62, 63], [62, 72], [63, 62], [63, 64], [64, 54], [64, 63], [64, 65], [65, 64], [65, 66], [66, 65], [66, 67], [66, 73], [67, 66], [67, 68], [68, 55], [68, 67], [68, 69], [69, 68], [69, 70], [70, 69], [70, 74], [71, 58], [71, 77], [72, 62], [72, 81], [73, 66], [73, 85], [74, 70], [74, 89], [75, 76], [75, 90], [76, 75], [76, 77], [77, 71], [77, 76], [77, 78], [78, 77], [78, 79], [79, 78], [79, 80], [79, 91], [80, 79], [80, 81], [81, 72], [81, 80], [81, 82], [82, 81], [82, 83], [83, 82], [83, 84], [83, 92], [84, 83], [84, 85], [85, 73], [85, 84], [85, 86], [86, 85], [86, 87], [87, 86], [87, 88], [87, 93], [88, 87], [88, 89], [89, 74], [89, 88], [90, 75], [90, 94], [91, 79], [91, 98], [92, 83], [92, 102], [93, 87], [93, 106], [94, 90], [94, 95], [95, 94], [95, 96], [96, 95], [96, 97], [96, 109], [97, 96], [97, 98], [98, 91], [98, 97], [98, 99], [99, 98], [99, 100], [100, 99], [100, 101], [100, 110], [101, 100], [101, 102], [102, 92], [102, 101], [102, 103], [103, 102], [103, 104], [104, 103], [104, 105], [104, 111], [105, 104], [105, 106], [106, 93], [106, 105], [106, 107], [107, 106], [107, 108], [108, 107], [108, 112], [109, 96], [110, 100], [110, 118], [111, 104], [111, 122], [112, 108], [112, 126], [113, 114], [114, 113], [114, 115], [115, 114], [115, 116], [116, 115], [116, 117], [117, 116], [117, 118], [118, 110], [118, 117], [118, 119], [119, 118], [119, 120], [120, 119], [120, 121], [121, 120], [121, 122], [122, 111], [122, 121], [122, 123], [123, 122], [123, 124], [124, 123], [124, 125], [125, 124], [125, 126], [126, 112], [126, 125]]

OPENQASM 2.0;
include "qelib1.inc";
qreg q[127];
creg meas[6];
rz(-1.0888964134712742) q[54];
sx q[54];
rz(-1.9026233170424955) q[54];
sx q[54];
rz(1.9769265976220058) q[64];
sx q[64];
rz(-3.137886640175174) q[64];
sx q[64];
sx q[65];
rz(-3.0112043102794672) q[65];
sx q[65];
rz(1.6369627429575306) q[65];
sx q[66];
rz(1.704757879308132) q[66];
sx q[66];
rz(-1.8971269718342274) q[66];
cx q[66],q[65];
sx q[67];
rz(1.563280899135842) q[67];
sx q[67];
rz(-2.5865372311326773) q[67];
sx q[73];
rz(0.8397366260192594) q[73];
sx q[73];
rz(-2.0790379300152226) q[73];
cx q[66],q[73];
cx q[66],q[67];
cx q[65],q[66];
cx q[66],q[65];
cx q[65],q[66];
rz(2.898396914059477) q[65];
sx q[65];
cx q[64],q[65];
sx q[64];
rz(-pi/2) q[64];
sx q[64];
rz(pi/2) q[65];
cx q[64],q[65];
rz(-pi/2) q[64];
sx q[64];
rz(-2.8691261667912773) q[64];
sx q[64];
cx q[54],q[64];
sx q[54];
rz(-pi/2) q[54];
sx q[54];
rz(pi/2) q[64];
cx q[54],q[64];
rz(-0.02479706677139859) q[54];
sx q[54];
rz(-1.5715222883002644) q[54];
sx q[54];
rz(1.0248941555496724) q[54];
sx q[64];
rz(2.6362912099319598) q[64];
sx q[64];
rz(-pi/2) q[64];
sx q[65];
rz(-1.5621786889751226) q[65];
sx q[65];
rz(pi/2) q[65];
cx q[66],q[73];
cx q[66],q[67];
rz(-pi/2) q[66];
sx q[66];
cx q[65],q[66];
sx q[65];
rz(-pi/2) q[65];
sx q[65];
rz(pi/2) q[66];
cx q[65],q[66];
rz(pi/2) q[65];
sx q[65];
rz(1.5966295341322798) q[65];
sx q[65];
cx q[64],q[65];
sx q[64];
rz(-pi/2) q[64];
sx q[64];
rz(pi/2) q[65];
cx q[64],q[65];
rz(0.0765807896553703) q[64];
sx q[64];
rz(-1.5688194953053411) q[64];
sx q[64];
rz(2.8932582596758696) q[64];
cx q[54],q[64];
rz(-pi/2) q[65];
sx q[65];
rz(-pi) q[65];
rz(pi/2) q[66];
sx q[66];
rz(-pi) q[66];
cx q[73],q[66];
cx q[66],q[73];
cx q[73],q[66];
cx q[66],q[67];
cx q[66],q[73];
rz(-1.8011205415848175) q[66];
sx q[66];
rz(-pi) q[66];
cx q[65],q[66];
sx q[65];
rz(-pi/2) q[65];
sx q[65];
rz(pi/2) q[66];
cx q[65],q[66];
rz(-1.9738212960186319) q[65];
sx q[65];
rz(-1.783239674332986) q[65];
sx q[65];
rz(-1.213824896269152) q[65];
cx q[65],q[64];
cx q[64],q[65];
cx q[64],q[54];
cx q[54],q[64];
rz(-pi/2) q[66];
sx q[66];
cx q[67],q[66];
cx q[66],q[67];
cx q[67],q[66];
cx q[66],q[73];
cx q[66],q[67];
sx q[66];
rz(0.7070221297771195) q[66];
sx q[66];
rz(-2.248311899378857) q[66];
cx q[66],q[65];
cx q[65],q[66];
cx q[64],q[65];
cx q[65],q[64];
cx q[64],q[65];
cx q[65],q[64];
cx q[54],q[64];
cx q[73],q[66];
cx q[66],q[73];
cx q[73],q[66];
cx q[66],q[67];
sx q[66];
rz(1.3933297522764274) q[66];
sx q[66];
rz(-0.795823475463143) q[66];
cx q[65],q[66];
sx q[67];
rz(1.8339114230470699) q[67];
sx q[67];
rz(0.47668255512397195) q[67];
cx q[73],q[66];
cx q[66],q[65];
cx q[65],q[66];
cx q[66],q[65];
cx q[65],q[64];
cx q[64],q[65];
cx q[64],q[54];
cx q[54],q[64];
rz(-1.4334519488000548) q[66];
sx q[66];
rz(pi/2) q[66];
cx q[66],q[67];
sx q[66];
rz(-pi/2) q[66];
sx q[66];
rz(pi/2) q[67];
cx q[66],q[67];
sx q[66];
rz(-pi) q[66];
rz(1.9331222486712658) q[67];
sx q[67];
rz(-1.6197473487986134) q[67];
sx q[67];
rz(0.4753538061041307) q[67];
cx q[73],q[66];
cx q[66],q[65];
cx q[65],q[66];
cx q[64],q[65];
sx q[64];
rz(0.7399517487893479) q[64];
sx q[64];
rz(2.5676166436924053) q[64];
cx q[65],q[64];
cx q[64],q[65];
cx q[65],q[64];
cx q[54],q[64];
sx q[54];
rz(0.9449733637530091) q[54];
sx q[54];
rz(-2.5732197993538017) q[54];
sx q[64];
rz(0.6348464674842353) q[64];
sx q[64];
rz(-1.2522384758651306) q[64];
sx q[66];
rz(0.08255001257990946) q[66];
sx q[66];
rz(-1.1357731497354902) q[66];
cx q[67],q[66];
cx q[66],q[67];
cx q[67],q[66];
sx q[73];
rz(-0.4146023075677032) q[73];
sx q[73];
rz(0.13601306986195993) q[73];
cx q[66],q[73];
cx q[66],q[67];
cx q[65],q[66];
cx q[66],q[65];
cx q[65],q[64];
cx q[64],q[65];
cx q[65],q[64];
cx q[64],q[54];
cx q[64],q[65];
sx q[64];
rz(-2.4254077858804965) q[64];
sx q[64];
rz(-1.891568395380352) q[64];
cx q[54],q[64];
cx q[64],q[54];
cx q[54],q[64];
cx q[73],q[66];
cx q[67],q[66];
cx q[66],q[67];
cx q[66],q[73];
cx q[73],q[66];
cx q[66],q[65];
cx q[65],q[66];
cx q[66],q[65];
cx q[65],q[64];
cx q[65],q[66];
sx q[65];
rz(2.0651656802006926) q[65];
sx q[65];
rz(2.2421565772650194) q[65];
cx q[64],q[65];
cx q[65],q[64];
cx q[64],q[65];
cx q[65],q[66];
cx q[66],q[65];
cx q[67],q[66];
cx q[73],q[66];
cx q[66],q[65];
sx q[65];
rz(0.29899263569694723) q[65];
sx q[65];
rz(-1.2820104054356047) q[65];
cx q[67],q[66];
sx q[67];
rz(-2.846934388642458) q[67];
sx q[67];
rz(-0.9320939562791786) q[67];
cx q[73],q[66];
sx q[66];
rz(2.006139359967687) q[66];
sx q[66];
rz(2.4123440472691) q[66];
sx q[73];
rz(0.7934855547557507) q[73];
sx q[73];
rz(1.5999986339275978) q[73];
barrier q[54],q[64],q[67],q[73],q[65],q[66];
measure q[54] -> meas[0];
measure q[64] -> meas[1];
measure q[67] -> meas[2];
measure q[73] -> meas[3];
measure q[65] -> meas[4];
measure q[66] -> meas[5];
