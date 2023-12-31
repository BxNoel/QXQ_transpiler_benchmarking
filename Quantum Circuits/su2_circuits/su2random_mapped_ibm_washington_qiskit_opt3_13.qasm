// Benchmark was created by MQT Bench on 2023-06-30
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: v1.0.0
// Qiskit version: {'qiskit-terra': '0.24.1', 'qiskit-aer': '0.12.0', 'qiskit-ignis': None, 'qiskit-ibmq-provider': '0.20.2', 'qiskit': '0.43.1', 'qiskit-nature': '0.6.2', 'qiskit-finance': '0.3.4', 'qiskit-optimization': '0.5.0', 'qiskit-machine-learning': '0.6.1'}
// Used Gate Set: ['rz', 'sx', 'x', 'cx', 'measure']
// Coupling List: [[0, 1], [0, 14], [1, 0], [1, 2], [2, 1], [2, 3], [3, 2], [3, 4], [4, 3], [4, 5], [4, 15], [5, 4], [5, 6], [6, 5], [6, 7], [7, 6], [7, 8], [8, 7], [8, 16], [9, 10], [10, 9], [10, 11], [11, 10], [11, 12], [12, 11], [12, 13], [12, 17], [13, 12], [14, 0], [14, 18], [15, 4], [15, 22], [16, 8], [16, 26], [17, 12], [17, 30], [18, 14], [18, 19], [19, 18], [19, 20], [20, 19], [20, 21], [20, 33], [21, 20], [21, 22], [22, 15], [22, 21], [22, 23], [23, 22], [23, 24], [24, 23], [24, 25], [24, 34], [25, 24], [25, 26], [26, 16], [26, 25], [26, 27], [27, 26], [27, 28], [28, 27], [28, 29], [28, 35], [29, 28], [29, 30], [30, 17], [30, 29], [30, 31], [31, 30], [31, 32], [32, 31], [32, 36], [33, 20], [33, 39], [34, 24], [34, 43], [35, 28], [35, 47], [36, 32], [36, 51], [37, 38], [37, 52], [38, 37], [38, 39], [39, 33], [39, 38], [39, 40], [40, 39], [40, 41], [41, 40], [41, 42], [41, 53], [42, 41], [42, 43], [43, 34], [43, 42], [43, 44], [44, 43], [44, 45], [45, 44], [45, 46], [45, 54], [46, 45], [46, 47], [47, 35], [47, 46], [47, 48], [48, 47], [48, 49], [49, 48], [49, 50], [49, 55], [50, 49], [50, 51], [51, 36], [51, 50], [52, 37], [52, 56], [53, 41], [53, 60], [54, 45], [54, 64], [55, 49], [55, 68], [56, 52], [56, 57], [57, 56], [57, 58], [58, 57], [58, 59], [58, 71], [59, 58], [59, 60], [60, 53], [60, 59], [60, 61], [61, 60], [61, 62], [62, 61], [62, 63], [62, 72], [63, 62], [63, 64], [64, 54], [64, 63], [64, 65], [65, 64], [65, 66], [66, 65], [66, 67], [66, 73], [67, 66], [67, 68], [68, 55], [68, 67], [68, 69], [69, 68], [69, 70], [70, 69], [70, 74], [71, 58], [71, 77], [72, 62], [72, 81], [73, 66], [73, 85], [74, 70], [74, 89], [75, 76], [75, 90], [76, 75], [76, 77], [77, 71], [77, 76], [77, 78], [78, 77], [78, 79], [79, 78], [79, 80], [79, 91], [80, 79], [80, 81], [81, 72], [81, 80], [81, 82], [82, 81], [82, 83], [83, 82], [83, 84], [83, 92], [84, 83], [84, 85], [85, 73], [85, 84], [85, 86], [86, 85], [86, 87], [87, 86], [87, 88], [87, 93], [88, 87], [88, 89], [89, 74], [89, 88], [90, 75], [90, 94], [91, 79], [91, 98], [92, 83], [92, 102], [93, 87], [93, 106], [94, 90], [94, 95], [95, 94], [95, 96], [96, 95], [96, 97], [96, 109], [97, 96], [97, 98], [98, 91], [98, 97], [98, 99], [99, 98], [99, 100], [100, 99], [100, 101], [100, 110], [101, 100], [101, 102], [102, 92], [102, 101], [102, 103], [103, 102], [103, 104], [104, 103], [104, 105], [104, 111], [105, 104], [105, 106], [106, 93], [106, 105], [106, 107], [107, 106], [107, 108], [108, 107], [108, 112], [109, 96], [110, 100], [110, 118], [111, 104], [111, 122], [112, 108], [112, 126], [113, 114], [114, 113], [114, 115], [115, 114], [115, 116], [116, 115], [116, 117], [117, 116], [117, 118], [118, 110], [118, 117], [118, 119], [119, 118], [119, 120], [120, 119], [120, 121], [121, 120], [121, 122], [122, 111], [122, 121], [122, 123], [123, 122], [123, 124], [124, 123], [124, 125], [125, 124], [125, 126], [126, 112], [126, 125]]

OPENQASM 2.0;
include "qelib1.inc";
qreg q[127];
creg meas[13];
sx q[24];
rz(0.8397366260192594) q[24];
sx q[24];
rz(0.7070221297771191) q[24];
sx q[34];
rz(1.704757879308132) q[34];
sx q[34];
rz(0.07660625016677436) q[34];
cx q[34],q[24];
sx q[43];
rz(-3.0112043102794672) q[43];
sx q[43];
rz(1.964255432968912) q[43];
cx q[43],q[34];
cx q[34],q[43];
cx q[34],q[24];
sx q[44];
rz(-0.009380718364162988) q[44];
sx q[44];
rz(-1.3076812305427303) q[44];
cx q[43],q[44];
cx q[44],q[43];
cx q[43],q[44];
cx q[44],q[43];
cx q[34],q[43];
cx q[43],q[34];
cx q[34],q[43];
cx q[43],q[34];
cx q[24],q[34];
cx q[34],q[24];
cx q[24],q[34];
cx q[34],q[24];
sx q[45];
rz(1.563280899135842) q[45];
sx q[45];
rz(1.3933297522764292) q[45];
cx q[45],q[44];
cx q[44],q[45];
cx q[44],q[43];
cx q[43],q[44];
cx q[43],q[34];
cx q[34],q[43];
cx q[34],q[24];
sx q[54];
rz(-1.8971269718342265) q[54];
sx q[54];
rz(1.348219409520918) q[54];
cx q[45],q[54];
cx q[54],q[45];
cx q[45],q[54];
cx q[54],q[45];
cx q[44],q[45];
cx q[45],q[44];
cx q[44],q[45];
cx q[45],q[44];
cx q[43],q[44];
cx q[44],q[43];
cx q[43],q[44];
cx q[44],q[43];
cx q[34],q[43];
cx q[43],q[34];
cx q[34],q[43];
cx q[43],q[34];
cx q[24],q[34];
cx q[34],q[24];
cx q[24],q[34];
cx q[34],q[24];
sx q[64];
rz(-1.7291536732871133) q[64];
sx q[64];
rz(2.6249522282931714) q[64];
cx q[64],q[54];
cx q[54],q[64];
cx q[54],q[45];
cx q[45],q[54];
cx q[45],q[44];
cx q[44],q[45];
cx q[44],q[43];
cx q[43],q[44];
cx q[43],q[34];
cx q[34],q[43];
cx q[34],q[24];
sx q[65];
rz(-2.0790379300152217) q[65];
sx q[65];
rz(-2.248311899378857) q[65];
cx q[64],q[65];
cx q[65],q[64];
cx q[64],q[65];
cx q[65],q[64];
cx q[54],q[64];
cx q[64],q[54];
cx q[54],q[64];
cx q[64],q[54];
cx q[45],q[54];
cx q[54],q[45];
cx q[45],q[54];
cx q[54],q[45];
cx q[44],q[45];
cx q[45],q[44];
cx q[44],q[45];
cx q[45],q[44];
cx q[43],q[44];
cx q[44],q[43];
cx q[43],q[44];
cx q[44],q[43];
cx q[34],q[43];
cx q[43],q[34];
cx q[34],q[43];
cx q[43],q[34];
cx q[24],q[34];
cx q[34],q[24];
cx q[24],q[34];
cx q[34],q[24];
sx q[66];
rz(1.6369627429575306) q[66];
sx q[66];
rz(0.26731414799159836) q[66];
cx q[66],q[65];
cx q[65],q[66];
cx q[65],q[64];
cx q[64],q[65];
cx q[64],q[54];
cx q[54],q[64];
cx q[54],q[45];
cx q[45],q[54];
cx q[45],q[44];
cx q[44],q[45];
cx q[44],q[43];
cx q[43],q[44];
cx q[43],q[34];
cx q[34],q[43];
cx q[34],q[24];
sx q[73];
rz(1.1646500873100205) q[73];
sx q[73];
rz(1.0941137716709264) q[73];
cx q[66],q[73];
cx q[73],q[66];
cx q[66],q[73];
cx q[73],q[66];
cx q[65],q[66];
cx q[66],q[65];
cx q[65],q[66];
sx q[85];
rz(-2.5865372311326773) q[85];
sx q[85];
rz(-0.795823475463143) q[85];
cx q[85],q[73];
cx q[73],q[85];
cx q[66],q[73];
cx q[66],q[65];
cx q[64],q[65];
cx q[65],q[64];
cx q[64],q[65];
cx q[73],q[66];
cx q[66],q[73];
cx q[73],q[66];
cx q[65],q[66];
cx q[65],q[64];
cx q[54],q[64];
cx q[64],q[54];
cx q[54],q[64];
cx q[66],q[65];
cx q[65],q[66];
cx q[66],q[65];
cx q[64],q[65];
cx q[64],q[54];
cx q[45],q[54];
cx q[54],q[45];
cx q[45],q[54];
cx q[65],q[64];
cx q[64],q[65];
cx q[65],q[64];
cx q[54],q[64];
cx q[54],q[45];
cx q[44],q[45];
cx q[45],q[44];
cx q[44],q[45];
cx q[45],q[44];
cx q[43],q[44];
cx q[44],q[43];
cx q[43],q[44];
cx q[44],q[43];
cx q[34],q[43];
cx q[43],q[34];
cx q[34],q[43];
cx q[43],q[34];
cx q[24],q[34];
cx q[34],q[24];
cx q[24],q[34];
cx q[34],q[24];
cx q[64],q[54];
cx q[54],q[64];
cx q[64],q[54];
cx q[54],q[45];
cx q[45],q[54];
cx q[45],q[44];
cx q[44],q[45];
cx q[44],q[43];
cx q[43],q[44];
cx q[43],q[34];
cx q[34],q[43];
cx q[34],q[24];
sx q[86];
rz(-3.1167849646094092) q[86];
sx q[86];
rz(-0.4146023075677032) q[86];
cx q[85],q[86];
cx q[86],q[85];
cx q[85],q[86];
sx q[87];
rz(2.8487544111850127) q[87];
sx q[87];
rz(-0.36547294383071005) q[87];
cx q[86],q[87];
cx q[86],q[85];
cx q[73],q[85];
cx q[85],q[73];
cx q[73],q[85];
sx q[86];
rz(0.7399517487893479) q[86];
sx q[86];
rz(0.7934855547557511) q[86];
cx q[87],q[86];
cx q[86],q[87];
cx q[87],q[86];
cx q[85],q[86];
cx q[85],q[73];
cx q[66],q[73];
cx q[73],q[66];
cx q[66],q[73];
sx q[85];
rz(0.08255001257990946) q[85];
sx q[85];
rz(0.2989926356969477) q[85];
cx q[85],q[86];
cx q[86],q[85];
cx q[85],q[86];
cx q[73],q[85];
cx q[73],q[66];
cx q[65],q[66];
cx q[66],q[65];
cx q[65],q[66];
sx q[73];
rz(0.9449733637530091) q[73];
sx q[73];
rz(2.006139359967687) q[73];
cx q[73],q[85];
cx q[85],q[73];
cx q[73],q[85];
cx q[66],q[73];
cx q[66],q[65];
cx q[64],q[65];
cx q[65],q[64];
cx q[64],q[65];
sx q[66];
rz(0.6348464674842353) q[66];
sx q[66];
rz(-1.891568395380352) q[66];
cx q[73],q[66];
cx q[66],q[73];
cx q[73],q[66];
cx q[65],q[66];
cx q[65],q[64];
cx q[54],q[64];
cx q[64],q[54];
cx q[54],q[64];
sx q[65];
rz(1.9177739057498941) q[65];
sx q[65];
rz(2.2421565772650194) q[65];
cx q[66],q[65];
cx q[65],q[66];
cx q[66],q[65];
cx q[64],q[65];
cx q[64],q[54];
cx q[45],q[54];
cx q[54],q[45];
cx q[45],q[54];
sx q[64];
rz(0.1360130698619595) q[64];
sx q[64];
rz(-0.9320939562791786) q[64];
cx q[65],q[64];
cx q[64],q[65];
cx q[65],q[64];
cx q[54],q[64];
cx q[54],q[45];
cx q[44],q[45];
cx q[45],q[44];
cx q[44],q[45];
sx q[54];
rz(2.567616643692407) q[54];
sx q[54];
rz(1.5999986339275978) q[54];
cx q[64],q[54];
cx q[54],q[64];
cx q[64],q[54];
cx q[45],q[54];
cx q[45],q[44];
cx q[43],q[44];
cx q[44],q[43];
cx q[43],q[44];
sx q[45];
rz(-1.1357731497354902) q[45];
sx q[45];
rz(-1.2820104054356047) q[45];
cx q[45],q[54];
cx q[54],q[45];
cx q[45],q[54];
cx q[44],q[45];
cx q[44],q[43];
cx q[34],q[43];
cx q[43],q[34];
cx q[34],q[43];
sx q[44];
rz(-2.5732197993538017) q[44];
sx q[44];
rz(2.4123440472691016) q[44];
cx q[44],q[45];
cx q[45],q[44];
cx q[44],q[45];
cx q[43],q[44];
cx q[43],q[34];
cx q[24],q[34];
cx q[34],q[24];
cx q[24],q[34];
sx q[43];
rz(-1.2522384758651306) q[43];
sx q[43];
rz(-1.0963427134462442) q[43];
cx q[43],q[44];
cx q[44],q[43];
cx q[43],q[44];
cx q[34],q[43];
cx q[34],q[24];
sx q[34];
rz(-2.4254077858804965) q[34];
sx q[34];
rz(-2.104767189589791) q[34];
cx q[34],q[43];
cx q[43],q[34];
cx q[34],q[43];
cx q[34],q[24];
sx q[24];
rz(-2.846934388642458) q[24];
sx q[24];
rz(-2.554363801359381) q[24];
sx q[34];
rz(2.0651656802006926) q[34];
sx q[34];
rz(-0.675258675386285) q[34];
cx q[87],q[86];
cx q[85],q[86];
cx q[86],q[85];
cx q[73],q[85];
cx q[85],q[73];
cx q[66],q[73];
cx q[73],q[66];
cx q[65],q[66];
cx q[66],q[65];
cx q[64],q[65];
cx q[65],q[64];
cx q[54],q[64];
cx q[64],q[54];
cx q[45],q[54];
cx q[54],q[45];
cx q[44],q[45];
cx q[45],q[44];
cx q[43],q[44];
cx q[44],q[43];
cx q[34],q[43];
cx q[43],q[34];
cx q[24],q[34];
cx q[34],q[24];
sx q[24];
rz(-2.1918765046211153) q[24];
sx q[24];
rz(-2.641368855262675) q[24];
cx q[86],q[87];
cx q[87],q[86];
cx q[85],q[86];
cx q[86],q[85];
cx q[73],q[85];
cx q[85],q[73];
cx q[66],q[73];
cx q[73],q[66];
cx q[65],q[66];
cx q[66],q[65];
cx q[64],q[65];
cx q[65],q[64];
cx q[54],q[64];
cx q[64],q[54];
cx q[45],q[54];
cx q[54],q[45];
cx q[44],q[45];
cx q[45],q[44];
cx q[43],q[44];
cx q[44],q[43];
cx q[43],q[34];
sx q[43];
rz(2.0175663513732243) q[43];
sx q[43];
rz(-0.8973534757447101) q[43];
cx q[43],q[34];
cx q[34],q[43];
cx q[43],q[34];
cx q[34],q[24];
cx q[87],q[86];
cx q[85],q[86];
cx q[86],q[85];
cx q[73],q[85];
cx q[85],q[73];
cx q[66],q[73];
cx q[73],q[66];
cx q[65],q[66];
cx q[66],q[65];
cx q[64],q[65];
cx q[65],q[64];
cx q[54],q[64];
cx q[64],q[54];
cx q[45],q[54];
cx q[54],q[45];
cx q[44],q[45];
cx q[45],q[44];
cx q[43],q[44];
cx q[44],q[43];
sx q[43];
rz(2.7913723796959733) q[43];
sx q[43];
rz(-1.0636219317431213) q[43];
cx q[34],q[43];
cx q[43],q[34];
cx q[34],q[43];
cx q[86],q[87];
cx q[87],q[86];
cx q[85],q[86];
cx q[86],q[85];
cx q[73],q[85];
cx q[85],q[73];
cx q[66],q[73];
cx q[73],q[66];
cx q[65],q[66];
cx q[66],q[65];
cx q[64],q[65];
cx q[65],q[64];
cx q[54],q[64];
cx q[64],q[54];
cx q[45],q[54];
cx q[54],q[45];
cx q[45],q[44];
sx q[45];
rz(-0.7281303932915772) q[45];
sx q[45];
rz(-1.2223313827259226) q[45];
cx q[45],q[44];
cx q[44],q[45];
cx q[45],q[44];
cx q[43],q[44];
cx q[43],q[34];
cx q[24],q[34];
cx q[34],q[24];
cx q[24],q[34];
cx q[44],q[43];
cx q[43],q[44];
cx q[44],q[43];
cx q[34],q[43];
cx q[34],q[24];
cx q[43],q[34];
cx q[34],q[43];
cx q[43],q[34];
cx q[34],q[24];
cx q[87],q[86];
cx q[85],q[86];
cx q[86],q[85];
cx q[73],q[85];
cx q[85],q[73];
cx q[66],q[73];
cx q[73],q[66];
cx q[65],q[66];
cx q[66],q[65];
cx q[64],q[65];
cx q[65],q[64];
cx q[54],q[64];
cx q[64],q[54];
cx q[45],q[54];
cx q[54],q[45];
sx q[45];
rz(-0.2745466276846109) q[45];
sx q[45];
rz(-2.890521540662405) q[45];
cx q[44],q[45];
cx q[45],q[44];
cx q[44],q[45];
cx q[45],q[44];
cx q[43],q[44];
cx q[44],q[43];
cx q[43],q[44];
cx q[86],q[87];
cx q[87],q[86];
cx q[85],q[86];
cx q[86],q[85];
cx q[73],q[85];
cx q[85],q[73];
cx q[66],q[73];
cx q[73],q[66];
cx q[65],q[66];
cx q[66],q[65];
cx q[64],q[65];
cx q[65],q[64];
cx q[64],q[54];
sx q[64];
rz(3.0638412193099107) q[64];
sx q[64];
rz(1.7205264938110503) q[64];
cx q[64],q[54];
cx q[54],q[64];
cx q[64],q[54];
cx q[54],q[45];
cx q[45],q[54];
cx q[44],q[45];
cx q[44],q[43];
cx q[34],q[43];
cx q[43],q[34];
cx q[34],q[43];
cx q[43],q[34];
cx q[24],q[34];
cx q[34],q[24];
cx q[24],q[34];
cx q[45],q[44];
cx q[44],q[45];
cx q[45],q[44];
cx q[44],q[43];
cx q[43],q[44];
cx q[34],q[43];
cx q[34],q[24];
cx q[43],q[34];
cx q[34],q[43];
cx q[43],q[34];
cx q[34],q[24];
cx q[87],q[86];
cx q[85],q[86];
cx q[86],q[85];
cx q[73],q[85];
cx q[85],q[73];
cx q[66],q[73];
cx q[73],q[66];
cx q[65],q[66];
cx q[66],q[65];
cx q[64],q[65];
cx q[65],q[64];
sx q[64];
rz(-1.5621623869350083) q[64];
sx q[64];
rz(-1.1628487595917854) q[64];
cx q[54],q[64];
cx q[64],q[54];
cx q[54],q[64];
cx q[86],q[87];
cx q[87],q[86];
cx q[85],q[86];
cx q[86],q[85];
cx q[73],q[85];
cx q[85],q[73];
cx q[66],q[73];
cx q[73],q[66];
cx q[66],q[65];
sx q[66];
rz(2.0490902607683257) q[66];
sx q[66];
rz(-0.44301370851957067) q[66];
cx q[66],q[65];
cx q[65],q[66];
cx q[66],q[65];
cx q[64],q[65];
cx q[64],q[54];
cx q[45],q[54];
cx q[54],q[45];
cx q[45],q[54];
cx q[65],q[64];
cx q[64],q[65];
cx q[65],q[64];
cx q[54],q[64];
cx q[54],q[45];
cx q[44],q[45];
cx q[45],q[44];
cx q[44],q[45];
cx q[45],q[44];
cx q[43],q[44];
cx q[44],q[43];
cx q[43],q[44];
cx q[44],q[43];
cx q[34],q[43];
cx q[43],q[34];
cx q[34],q[43];
cx q[43],q[34];
cx q[24],q[34];
cx q[34],q[24];
cx q[24],q[34];
cx q[64],q[54];
cx q[54],q[64];
cx q[64],q[54];
cx q[54],q[45];
cx q[45],q[54];
cx q[45],q[44];
cx q[44],q[45];
cx q[44],q[43];
cx q[43],q[44];
cx q[34],q[43];
cx q[34],q[24];
cx q[43],q[34];
cx q[34],q[43];
cx q[43],q[34];
cx q[34],q[24];
cx q[87],q[86];
cx q[85],q[86];
cx q[86],q[85];
cx q[73],q[85];
cx q[85],q[73];
cx q[66],q[73];
cx q[73],q[66];
sx q[66];
rz(2.5310665977809705) q[66];
sx q[66];
rz(-0.965429329023408) q[66];
cx q[65],q[66];
cx q[66],q[65];
cx q[65],q[66];
cx q[86],q[87];
cx q[87],q[86];
cx q[85],q[86];
cx q[86],q[85];
cx q[85],q[73];
sx q[85];
rz(0.611804109500151) q[85];
sx q[85];
rz(0.8575991446821423) q[85];
cx q[85],q[73];
cx q[73],q[85];
cx q[85],q[73];
cx q[66],q[73];
cx q[66],q[65];
cx q[64],q[65];
cx q[65],q[64];
cx q[64],q[65];
cx q[73],q[66];
cx q[66],q[73];
cx q[73],q[66];
cx q[65],q[66];
cx q[65],q[64];
cx q[54],q[64];
cx q[64],q[54];
cx q[54],q[64];
cx q[66],q[65];
cx q[65],q[66];
cx q[66],q[65];
cx q[64],q[65];
cx q[64],q[54];
cx q[45],q[54];
cx q[54],q[45];
cx q[45],q[54];
cx q[65],q[64];
cx q[64],q[65];
cx q[65],q[64];
cx q[54],q[64];
cx q[54],q[45];
cx q[44],q[45];
cx q[45],q[44];
cx q[44],q[45];
cx q[45],q[44];
cx q[43],q[44];
cx q[44],q[43];
cx q[43],q[44];
cx q[44],q[43];
cx q[34],q[43];
cx q[43],q[34];
cx q[34],q[43];
cx q[43],q[34];
cx q[24],q[34];
cx q[34],q[24];
cx q[24],q[34];
cx q[64],q[54];
cx q[54],q[64];
cx q[64],q[54];
cx q[54],q[45];
cx q[45],q[54];
cx q[45],q[44];
cx q[44],q[45];
cx q[44],q[43];
cx q[43],q[44];
cx q[34],q[43];
cx q[34],q[24];
cx q[43],q[34];
cx q[34],q[43];
cx q[43],q[34];
cx q[34],q[24];
cx q[87],q[86];
cx q[85],q[86];
cx q[86],q[85];
sx q[85];
rz(0.5667518785975818) q[85];
sx q[85];
rz(2.3870774425055394) q[85];
cx q[73],q[85];
cx q[85],q[73];
cx q[73],q[85];
cx q[85],q[73];
cx q[66],q[73];
cx q[73],q[66];
cx q[66],q[73];
cx q[73],q[66];
cx q[65],q[66];
cx q[66],q[65];
cx q[65],q[66];
cx q[87],q[86];
sx q[86];
rz(-2.8947780309191913) q[86];
sx q[86];
rz(1.6539893893945035) q[86];
sx q[87];
rz(0.21713399615782825) q[87];
sx q[87];
rz(-2.870803978304288) q[87];
cx q[87],q[86];
cx q[86],q[87];
cx q[87],q[86];
cx q[86],q[85];
cx q[85],q[86];
cx q[85],q[73];
cx q[73],q[85];
cx q[66],q[73];
cx q[66],q[65];
cx q[64],q[65];
cx q[65],q[64];
cx q[64],q[65];
cx q[73],q[66];
cx q[66],q[73];
cx q[73],q[66];
cx q[65],q[66];
cx q[65],q[64];
cx q[54],q[64];
cx q[64],q[54];
cx q[54],q[64];
cx q[64],q[54];
cx q[45],q[54];
cx q[54],q[45];
cx q[45],q[54];
cx q[54],q[45];
cx q[44],q[45];
cx q[45],q[44];
cx q[44],q[45];
cx q[45],q[44];
cx q[43],q[44];
cx q[44],q[43];
cx q[43],q[44];
cx q[44],q[43];
cx q[34],q[43];
cx q[43],q[34];
cx q[34],q[43];
cx q[43],q[34];
cx q[24],q[34];
cx q[34],q[24];
cx q[24],q[34];
cx q[66],q[65];
cx q[65],q[66];
cx q[66],q[65];
cx q[65],q[64];
cx q[64],q[65];
cx q[64],q[54];
cx q[54],q[64];
cx q[54],q[45];
cx q[45],q[54];
cx q[45],q[44];
cx q[44],q[45];
cx q[44],q[43];
cx q[43],q[44];
cx q[34],q[43];
cx q[34],q[24];
cx q[43],q[34];
cx q[34],q[43];
cx q[43],q[34];
cx q[34],q[24];
rz(-1.5713206631153092) q[34];
sx q[34];
rz(-pi/2) q[34];
rz(-2.473898117738571e-05) q[43];
sx q[43];
rz(-pi/2) q[43];
rz(1.5577322895377232) q[44];
sx q[44];
rz(-pi/2) q[44];
rz(1.35478142726532) q[45];
sx q[45];
rz(pi/2) q[45];
rz(3.1372765968122396) q[54];
sx q[54];
rz(-pi/2) q[54];
rz(1.1853852811560648) q[64];
sx q[64];
rz(pi/2) q[64];
rz(-0.00116746764614728) q[65];
sx q[65];
rz(pi/2) q[65];
rz(-0.03998429876343579) q[66];
sx q[66];
rz(-pi/2) q[66];
rz(1.391495853520757) q[73];
sx q[73];
rz(pi/2) q[73];
rz(1.780624269225937) q[85];
sx q[85];
rz(pi/2) q[85];
rz(-1.930142832270783) q[86];
sx q[86];
rz(pi/2) q[86];
x q[87];
rz(-pi/2) q[87];
cx q[86],q[87];
sx q[86];
rz(-pi/2) q[86];
sx q[86];
rz(pi/2) q[87];
cx q[86],q[87];
rz(-pi) q[86];
sx q[86];
rz(-pi/2) q[86];
cx q[85],q[86];
sx q[85];
rz(-pi/2) q[85];
sx q[85];
rz(pi/2) q[86];
cx q[85],q[86];
rz(-pi) q[85];
sx q[85];
rz(-pi/2) q[85];
cx q[73],q[85];
sx q[73];
rz(-pi/2) q[73];
sx q[73];
rz(pi/2) q[85];
cx q[73],q[85];
rz(-pi) q[73];
sx q[73];
rz(pi/2) q[73];
cx q[66],q[73];
sx q[66];
rz(-pi/2) q[66];
sx q[66];
rz(pi/2) q[73];
cx q[66],q[73];
sx q[66];
rz(-pi/2) q[66];
cx q[65],q[66];
sx q[65];
rz(-pi/2) q[65];
sx q[65];
rz(pi/2) q[66];
cx q[65],q[66];
rz(-pi) q[65];
sx q[65];
rz(-pi/2) q[65];
cx q[64],q[65];
sx q[64];
rz(-pi/2) q[64];
sx q[64];
rz(pi/2) q[65];
cx q[64],q[65];
rz(-pi) q[64];
sx q[64];
rz(pi/2) q[64];
cx q[54],q[64];
sx q[54];
rz(-pi/2) q[54];
sx q[54];
rz(pi/2) q[64];
cx q[54],q[64];
sx q[54];
rz(-pi/2) q[54];
cx q[45],q[54];
sx q[45];
rz(-pi/2) q[45];
sx q[45];
rz(pi/2) q[54];
cx q[45],q[54];
rz(-pi) q[45];
sx q[45];
rz(pi/2) q[45];
cx q[44],q[45];
sx q[44];
rz(-pi/2) q[44];
sx q[44];
rz(pi/2) q[45];
cx q[44],q[45];
sx q[44];
rz(pi/2) q[44];
cx q[43],q[44];
sx q[43];
rz(-pi/2) q[43];
sx q[43];
rz(pi/2) q[44];
cx q[43],q[44];
sx q[43];
rz(pi/2) q[43];
cx q[34],q[43];
sx q[34];
rz(-pi/2) q[34];
sx q[34];
rz(pi/2) q[43];
cx q[34],q[43];
rz(-pi) q[34];
sx q[34];
rz(-pi) q[34];
cx q[24],q[34];
sx q[24];
rz(0.4115927448784542) q[24];
sx q[24];
rz(-2.7137248650371566) q[24];
sx q[34];
rz(-0.15624869766433136) q[34];
sx q[34];
rz(-0.22285950741842697) q[34];
rz(-1.9325707103100196) q[43];
sx q[43];
rz(-1.5709819074276066) q[43];
sx q[43];
rz(0.6525446178897516) q[43];
rz(1.5702998584733106) q[44];
sx q[44];
rz(-3.0918039042119148) q[44];
sx q[44];
rz(-2.650149901086575) q[44];
rz(-2.8081643617625316) q[45];
sx q[45];
rz(-1.583140948816557) q[45];
sx q[45];
rz(1.6909089102183437) q[45];
rz(-1.4148532656718715) q[54];
sx q[54];
rz(-1.6048645639597892) q[54];
sx q[54];
rz(0.6423235830217955) q[54];
rz(-1.583835659258444) q[64];
sx q[64];
rz(-0.3196620005852555) q[64];
sx q[64];
rz(2.75572857466695) q[64];
rz(0.08280256519509788) q[65];
sx q[65];
rz(-1.9550132438486632) q[65];
sx q[65];
rz(-1.7459006276376634) q[65];
rz(1.569972122441401) q[66];
sx q[66];
rz(-0.9560710189262789) q[66];
sx q[66];
rz(-0.032539457934959604) q[66];
rz(-1.5741867114321135) q[73];
sx q[73];
rz(-1.4862508014987412) q[73];
sx q[73];
rz(-1.047273026968238) q[73];
rz(2.226334225725372) q[85];
sx q[85];
rz(-1.4607570867081554) q[85];
sx q[85];
rz(-1.8457295296158627) q[85];
rz(1.0619805772127773) q[86];
sx q[86];
rz(-1.46742282222381) q[86];
sx q[86];
rz(-0.984170910116708) q[86];
rz(-0.8377660034450027) q[87];
sx q[87];
rz(-1.8170558424859502) q[87];
sx q[87];
rz(-2.608276836904981) q[87];
barrier q[87],q[86],q[85],q[73],q[66],q[65],q[64],q[54],q[45],q[44],q[43],q[24],q[34];
measure q[87] -> meas[0];
measure q[86] -> meas[1];
measure q[85] -> meas[2];
measure q[73] -> meas[3];
measure q[66] -> meas[4];
measure q[65] -> meas[5];
measure q[64] -> meas[6];
measure q[54] -> meas[7];
measure q[45] -> meas[8];
measure q[44] -> meas[9];
measure q[43] -> meas[10];
measure q[24] -> meas[11];
measure q[34] -> meas[12];
