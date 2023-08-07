// Benchmark was created by MQT Bench on 2023-06-30
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: v1.0.0
// Qiskit version: {'qiskit-terra': '0.24.1', 'qiskit-aer': '0.12.0', 'qiskit-ignis': None, 'qiskit-ibmq-provider': '0.20.2', 'qiskit': '0.43.1', 'qiskit-nature': '0.6.2', 'qiskit-finance': '0.3.4', 'qiskit-optimization': '0.5.0', 'qiskit-machine-learning': '0.6.1'}
// Used Gate Set: ['rz', 'sx', 'x', 'cx', 'measure']
// Coupling List: [[0, 1], [0, 14], [1, 0], [1, 2], [2, 1], [2, 3], [3, 2], [3, 4], [4, 3], [4, 5], [4, 15], [5, 4], [5, 6], [6, 5], [6, 7], [7, 6], [7, 8], [8, 7], [8, 16], [9, 10], [10, 9], [10, 11], [11, 10], [11, 12], [12, 11], [12, 13], [12, 17], [13, 12], [14, 0], [14, 18], [15, 4], [15, 22], [16, 8], [16, 26], [17, 12], [17, 30], [18, 14], [18, 19], [19, 18], [19, 20], [20, 19], [20, 21], [20, 33], [21, 20], [21, 22], [22, 15], [22, 21], [22, 23], [23, 22], [23, 24], [24, 23], [24, 25], [24, 34], [25, 24], [25, 26], [26, 16], [26, 25], [26, 27], [27, 26], [27, 28], [28, 27], [28, 29], [28, 35], [29, 28], [29, 30], [30, 17], [30, 29], [30, 31], [31, 30], [31, 32], [32, 31], [32, 36], [33, 20], [33, 39], [34, 24], [34, 43], [35, 28], [35, 47], [36, 32], [36, 51], [37, 38], [37, 52], [38, 37], [38, 39], [39, 33], [39, 38], [39, 40], [40, 39], [40, 41], [41, 40], [41, 42], [41, 53], [42, 41], [42, 43], [43, 34], [43, 42], [43, 44], [44, 43], [44, 45], [45, 44], [45, 46], [45, 54], [46, 45], [46, 47], [47, 35], [47, 46], [47, 48], [48, 47], [48, 49], [49, 48], [49, 50], [49, 55], [50, 49], [50, 51], [51, 36], [51, 50], [52, 37], [52, 56], [53, 41], [53, 60], [54, 45], [54, 64], [55, 49], [55, 68], [56, 52], [56, 57], [57, 56], [57, 58], [58, 57], [58, 59], [58, 71], [59, 58], [59, 60], [60, 53], [60, 59], [60, 61], [61, 60], [61, 62], [62, 61], [62, 63], [62, 72], [63, 62], [63, 64], [64, 54], [64, 63], [64, 65], [65, 64], [65, 66], [66, 65], [66, 67], [66, 73], [67, 66], [67, 68], [68, 55], [68, 67], [68, 69], [69, 68], [69, 70], [70, 69], [70, 74], [71, 58], [71, 77], [72, 62], [72, 81], [73, 66], [73, 85], [74, 70], [74, 89], [75, 76], [75, 90], [76, 75], [76, 77], [77, 71], [77, 76], [77, 78], [78, 77], [78, 79], [79, 78], [79, 80], [79, 91], [80, 79], [80, 81], [81, 72], [81, 80], [81, 82], [82, 81], [82, 83], [83, 82], [83, 84], [83, 92], [84, 83], [84, 85], [85, 73], [85, 84], [85, 86], [86, 85], [86, 87], [87, 86], [87, 88], [87, 93], [88, 87], [88, 89], [89, 74], [89, 88], [90, 75], [90, 94], [91, 79], [91, 98], [92, 83], [92, 102], [93, 87], [93, 106], [94, 90], [94, 95], [95, 94], [95, 96], [96, 95], [96, 97], [96, 109], [97, 96], [97, 98], [98, 91], [98, 97], [98, 99], [99, 98], [99, 100], [100, 99], [100, 101], [100, 110], [101, 100], [101, 102], [102, 92], [102, 101], [102, 103], [103, 102], [103, 104], [104, 103], [104, 105], [104, 111], [105, 104], [105, 106], [106, 93], [106, 105], [106, 107], [107, 106], [107, 108], [108, 107], [108, 112], [109, 96], [110, 100], [110, 118], [111, 104], [111, 122], [112, 108], [112, 126], [113, 114], [114, 113], [114, 115], [115, 114], [115, 116], [116, 115], [116, 117], [117, 116], [117, 118], [118, 110], [118, 117], [118, 119], [119, 118], [119, 120], [120, 119], [120, 121], [121, 120], [121, 122], [122, 111], [122, 121], [122, 123], [123, 122], [123, 124], [124, 123], [124, 125], [125, 124], [125, 126], [126, 112], [126, 125]]

OPENQASM 2.0;
include "qelib1.inc";
qreg q[127];
creg meas[12];
sx q[45];
rz(-3.0112043102794672) q[45];
sx q[45];
rz(0.07660625016677436) q[45];
sx q[46];
rz(1.704757879308132) q[46];
sx q[46];
rz(-3.1167849646094092) q[46];
cx q[46],q[45];
sx q[47];
rz(0.8397366260192594) q[47];
sx q[47];
rz(1.964255432968912) q[47];
cx q[46],q[47];
cx q[45],q[46];
cx q[46],q[45];
cx q[45],q[46];
rz(-0.00879620777547796) q[45];
sx q[45];
rz(-pi/2) q[45];
cx q[46],q[47];
rz(-pi/2) q[46];
sx q[46];
rz(1.5795925345703754) q[54];
sx q[54];
rz(-0.8637411430174708) q[54];
sx q[54];
rz(-pi/2) q[54];
cx q[45],q[54];
sx q[45];
rz(-pi/2) q[45];
sx q[45];
rz(pi/2) q[54];
cx q[45],q[54];
rz(pi/2) q[45];
sx q[45];
rz(-0.01156950592685213) q[45];
sx q[45];
rz(-pi/2) q[45];
cx q[45],q[46];
sx q[45];
rz(-pi/2) q[45];
sx q[45];
rz(pi/2) q[46];
cx q[45],q[46];
rz(pi/2) q[46];
sx q[46];
rz(-pi) q[46];
cx q[47],q[46];
sx q[54];
rz(-1.7394590481589152) q[54];
sx q[54];
rz(-pi/2) q[54];
rz(2.084532509031982) q[62];
sx q[62];
rz(2.1738692998255518) q[62];
sx q[62];
rz(-1.5283447871967744) q[63];
sx q[63];
rz(-2.8818463585281284) q[63];
sx q[63];
rz(-1.393337397655555) q[64];
sx q[64];
rz(-0.001656015721088977) q[64];
sx q[64];
rz(pi/2) q[64];
cx q[54],q[64];
sx q[54];
rz(-pi/2) q[54];
sx q[54];
rz(pi/2) q[64];
cx q[54],q[64];
rz(pi/2) q[54];
sx q[54];
rz(1.5615629326792781) q[54];
sx q[54];
cx q[45],q[54];
sx q[45];
rz(-pi/2) q[45];
sx q[45];
rz(pi/2) q[54];
cx q[45],q[54];
rz(-pi) q[45];
sx q[45];
cx q[45],q[46];
cx q[46],q[45];
cx q[46],q[47];
cx q[47],q[46];
rz(pi/2) q[54];
sx q[54];
sx q[64];
rz(-1.1633581094749808) q[64];
sx q[64];
cx q[63],q[64];
sx q[63];
rz(-pi/2) q[63];
sx q[63];
rz(pi/2) q[64];
cx q[63],q[64];
rz(-pi/2) q[63];
sx q[63];
rz(0.01839751296834402) q[63];
sx q[63];
cx q[62],q[63];
sx q[62];
rz(-pi/2) q[62];
sx q[62];
rz(pi/2) q[63];
cx q[62],q[63];
rz(-pi/2) q[62];
sx q[62];
rz(-0.31437951482831394) q[62];
sx q[62];
rz(-pi/2) q[62];
sx q[63];
rz(0.6006790761770482) q[63];
sx q[63];
rz(pi/2) q[63];
rz(-pi) q[64];
sx q[64];
rz(0.16390268849333456) q[64];
sx q[64];
cx q[54],q[64];
sx q[54];
rz(-pi/2) q[54];
sx q[54];
rz(pi/2) q[64];
cx q[54],q[64];
rz(-pi) q[54];
sx q[54];
cx q[54],q[45];
cx q[45],q[54];
cx q[45],q[46];
cx q[46],q[45];
cx q[47],q[46];
x q[64];
cx q[63],q[64];
sx q[63];
rz(-pi/2) q[63];
sx q[63];
rz(pi/2) q[64];
cx q[63],q[64];
sx q[63];
rz(pi/2) q[63];
rz(pi/2) q[64];
sx q[64];
rz(-pi) q[64];
cx q[64],q[54];
cx q[54],q[64];
cx q[54],q[45];
cx q[45],q[54];
cx q[45],q[46];
cx q[46],q[45];
cx q[47],q[46];
rz(1.555833137213023) q[72];
sx q[72];
rz(-0.22208169704726366) q[72];
sx q[72];
rz(-pi/2) q[72];
cx q[62],q[72];
sx q[62];
rz(-pi/2) q[62];
sx q[62];
rz(pi/2) q[72];
cx q[62],q[72];
rz(-pi/2) q[62];
sx q[62];
rz(-0.06783483492997) q[62];
sx q[62];
rz(pi/2) q[62];
cx q[62],q[63];
sx q[62];
rz(-pi/2) q[62];
sx q[62];
rz(pi/2) q[63];
cx q[62],q[63];
rz(pi/2) q[63];
sx q[63];
rz(-pi) q[63];
cx q[63],q[64];
cx q[64],q[63];
cx q[64],q[54];
cx q[54],q[64];
cx q[54],q[45];
cx q[45],q[54];
cx q[54],q[45];
cx q[45],q[46];
cx q[46],q[45];
cx q[45],q[46];
cx q[47],q[46];
cx q[46],q[45];
cx q[45],q[46];
cx q[47],q[46];
cx q[46],q[47];
cx q[47],q[46];
cx q[54],q[45];
sx q[72];
rz(-2.2589156730668716) q[72];
sx q[72];
rz(pi/2) q[72];
sx q[80];
rz(1.1646500873100196) q[80];
sx q[80];
rz(-0.795823475463143) q[80];
rz(-2.6289961449238053) q[81];
sx q[81];
rz(-1.0020458065808189) q[81];
sx q[81];
rz(-pi/2) q[81];
cx q[72],q[81];
sx q[72];
rz(-pi/2) q[72];
sx q[72];
rz(pi/2) q[81];
cx q[72],q[81];
rz(-pi/2) q[72];
sx q[72];
rz(-1.1280189815813522) q[72];
sx q[72];
cx q[62],q[72];
sx q[62];
rz(-pi/2) q[62];
sx q[62];
rz(pi/2) q[72];
cx q[62],q[72];
rz(-pi) q[62];
sx q[62];
cx q[62],q[63];
cx q[63],q[62];
cx q[63],q[64];
cx q[64],q[63];
cx q[64],q[54];
cx q[54],q[64];
cx q[64],q[54];
cx q[54],q[45];
cx q[45],q[54];
cx q[54],q[45];
cx q[46],q[45];
cx q[45],q[54];
cx q[54],q[45];
cx q[45],q[54];
cx q[46],q[45];
cx q[45],q[46];
cx q[46],q[45];
cx q[47],q[46];
cx q[46],q[47];
cx q[47],q[46];
rz(-pi/2) q[46];
sx q[46];
cx q[64],q[54];
cx q[45],q[54];
cx q[54],q[45];
cx q[45],q[54];
rz(-pi) q[45];
cx q[45],q[46];
sx q[45];
rz(-pi/2) q[45];
sx q[45];
rz(pi/2) q[46];
cx q[45],q[46];
rz(pi/2) q[46];
sx q[46];
rz(-pi) q[46];
cx q[47],q[46];
rz(pi/2) q[72];
sx q[72];
rz(-pi) q[81];
sx q[81];
rz(2.324918386746419) q[81];
cx q[81],q[80];
sx q[82];
rz(-2.5865372311326773) q[82];
sx q[82];
rz(-2.248311899378857) q[82];
cx q[82],q[81];
cx q[81],q[82];
x q[81];
rz(-pi/2) q[81];
cx q[72],q[81];
sx q[72];
rz(-pi/2) q[72];
sx q[72];
rz(pi/2) q[81];
cx q[72],q[81];
rz(-pi) q[72];
sx q[72];
cx q[72],q[62];
cx q[62],q[72];
cx q[62],q[63];
cx q[63],q[62];
cx q[62],q[72];
cx q[63],q[64];
cx q[64],q[63];
cx q[64],q[54];
cx q[54],q[64];
x q[54];
rz(-pi/2) q[54];
cx q[45],q[54];
sx q[45];
rz(-pi/2) q[45];
sx q[45];
rz(pi/2) q[54];
cx q[45],q[54];
rz(-pi) q[45];
sx q[45];
cx q[45],q[46];
cx q[46],q[45];
cx q[46],q[47];
cx q[47],q[46];
rz(pi/2) q[54];
sx q[54];
cx q[72],q[62];
cx q[62],q[72];
sx q[81];
rz(-0.03467583590079393) q[81];
cx q[81],q[80];
sx q[81];
rz(-pi/2) q[81];
rz(2.0299679526413197) q[82];
sx q[82];
rz(-pi/2) q[82];
rz(1.1116247009484708) q[83];
sx q[83];
rz(-0.13284237002919852) q[83];
sx q[83];
rz(pi/2) q[83];
cx q[82],q[83];
sx q[82];
rz(-pi/2) q[82];
sx q[82];
rz(pi/2) q[83];
cx q[82],q[83];
rz(pi/2) q[82];
sx q[82];
rz(-1.3090474436692876) q[82];
sx q[82];
cx q[81],q[82];
sx q[81];
rz(-pi/2) q[81];
sx q[81];
rz(pi/2) q[82];
cx q[81],q[82];
rz(-pi) q[81];
sx q[81];
rz(-pi) q[81];
cx q[72],q[81];
cx q[81],q[72];
cx q[72],q[81];
cx q[81],q[80];
cx q[81],q[72];
cx q[62],q[72];
cx q[72],q[62];
cx q[62],q[72];
sx q[81];
rz(0.7399517487893479) q[81];
sx q[81];
rz(-2.846934388642458) q[81];
rz(-1.1564156818845805) q[82];
sx q[82];
rz(-1.556830344894765) q[82];
sx q[82];
rz(0.46262930851686335) q[82];
rz(-1.24034628811798) q[83];
sx q[83];
rz(-1.729864024174499) q[83];
sx q[83];
rz(2.7195745527304567) q[83];
cx q[83],q[82];
cx q[81],q[82];
cx q[82],q[81];
cx q[80],q[81];
cx q[81],q[80];
cx q[80],q[81];
cx q[72],q[81];
cx q[72],q[62];
sx q[72];
rz(0.08255001257990946) q[72];
sx q[72];
rz(0.7934855547557511) q[72];
cx q[72],q[81];
cx q[81],q[72];
cx q[72],q[81];
cx q[72],q[62];
cx q[62],q[72];
cx q[72],q[62];
cx q[62],q[63];
cx q[63],q[62];
cx q[63],q[64];
cx q[64],q[63];
x q[64];
rz(-pi/2) q[64];
cx q[54],q[64];
sx q[54];
rz(-pi/2) q[54];
sx q[54];
rz(pi/2) q[64];
cx q[54],q[64];
rz(-pi) q[54];
sx q[54];
cx q[54],q[45];
cx q[45],q[54];
cx q[45],q[46];
cx q[46],q[45];
cx q[47],q[46];
rz(-pi) q[64];
sx q[64];
rz(2.4273033037538365) q[64];
sx q[64];
cx q[72],q[62];
cx q[62],q[72];
cx q[63],q[62];
sx q[63];
rz(0.9449733637530091) q[63];
sx q[63];
rz(0.2989926356969477) q[63];
cx q[63],q[62];
cx q[62],q[63];
cx q[63],q[62];
rz(-pi) q[63];
cx q[63],q[64];
sx q[63];
rz(-pi/2) q[63];
sx q[63];
rz(pi/2) q[64];
cx q[63],q[64];
rz(-1.1244184837484923) q[63];
sx q[63];
rz(-0.9070895175748674) q[63];
sx q[63];
rz(-0.9633132244638283) q[63];
rz(-pi/2) q[64];
sx q[64];
cx q[64],q[54];
cx q[54],q[64];
cx q[45],q[54];
sx q[45];
rz(0.1360130698619595) q[45];
sx q[45];
rz(2.2421565772650194) q[45];
cx q[45],q[54];
cx q[54],q[45];
cx q[45],q[54];
cx q[45],q[46];
cx q[46],q[45];
sx q[45];
rz(-2.5732197993538017) q[45];
sx q[45];
rz(-1.2820104054356047) q[45];
cx q[47],q[46];
sx q[46];
rz(-1.2522384758651306) q[46];
sx q[46];
rz(2.4123440472691) q[46];
sx q[47];
rz(-1.1357731497354902) q[47];
sx q[47];
rz(1.5999986339275978) q[47];
cx q[47],q[46];
cx q[46],q[47];
cx q[47],q[46];
x q[47];
rz(pi/2) q[47];
sx q[64];
rz(2.567616643692407) q[64];
sx q[64];
rz(-0.9320939562791786) q[64];
sx q[72];
rz(0.6348464674842353) q[72];
sx q[72];
rz(2.006139359967687) q[72];
cx q[82],q[83];
cx q[83],q[82];
cx q[82],q[81];
cx q[80],q[81];
cx q[81],q[82];
cx q[82],q[81];
cx q[81],q[82];
cx q[81],q[72];
cx q[72],q[81];
cx q[81],q[72];
cx q[72],q[62];
cx q[72],q[81];
cx q[62],q[72];
cx q[72],q[62];
cx q[62],q[72];
sx q[62];
rz(-pi/2) q[62];
cx q[62],q[63];
sx q[62];
rz(-pi/2) q[62];
sx q[62];
rz(pi/2) q[63];
cx q[62],q[63];
rz(-pi) q[62];
sx q[62];
rz(-pi) q[62];
sx q[63];
rz(pi/2) q[63];
cx q[63],q[64];
cx q[64],q[63];
cx q[63],q[64];
cx q[64],q[54];
cx q[64],q[63];
cx q[54],q[64];
cx q[64],q[54];
cx q[54],q[64];
cx q[54],q[45];
cx q[45],q[54];
cx q[54],q[45];
cx q[45],q[54];
cx q[46],q[45];
cx q[45],q[46];
rz(pi/2) q[46];
sx q[46];
rz(-pi/2) q[46];
cx q[46],q[47];
sx q[46];
rz(-pi/2) q[46];
sx q[46];
rz(pi/2) q[47];
cx q[46],q[47];
sx q[46];
rz(-pi/2) q[46];
rz(2.045249940143549) q[47];
sx q[47];
rz(0.6118041095001501) q[47];
cx q[80],q[81];
cx q[81],q[80];
cx q[80],q[81];
cx q[81],q[80];
cx q[72],q[81];
cx q[81],q[72];
rz(-pi/2) q[72];
sx q[72];
cx q[62],q[72];
sx q[62];
rz(-pi/2) q[62];
sx q[62];
rz(pi/2) q[72];
cx q[62],q[72];
rz(-pi/2) q[62];
sx q[62];
rz(-pi) q[62];
cx q[62],q[63];
cx q[63],q[62];
cx q[62],q[63];
cx q[63],q[64];
cx q[63],q[62];
cx q[64],q[63];
cx q[63],q[64];
cx q[64],q[63];
cx q[64],q[54];
cx q[54],q[64];
cx q[64],q[54];
cx q[54],q[64];
cx q[45],q[54];
cx q[54],q[45];
sx q[45];
rz(pi/2) q[45];
cx q[45],q[46];
sx q[45];
rz(-pi/2) q[45];
sx q[45];
rz(pi/2) q[46];
cx q[45],q[46];
sx q[45];
rz(-pi) q[45];
rz(-pi/2) q[46];
sx q[46];
rz(-2.6076217907948998) q[46];
sx q[46];
rz(-0.6105260558088244) q[46];
cx q[47],q[46];
rz(pi/2) q[72];
sx q[72];
rz(-pi) q[81];
rz(-pi) q[82];
rz(-pi/2) q[83];
sx q[83];
cx q[82],q[83];
sx q[82];
rz(-pi/2) q[82];
sx q[82];
rz(pi/2) q[83];
cx q[82],q[83];
sx q[82];
rz(pi/2) q[82];
cx q[81],q[82];
sx q[81];
rz(-pi/2) q[81];
sx q[81];
rz(pi/2) q[82];
cx q[81],q[82];
rz(-pi/2) q[81];
sx q[81];
rz(-3*pi/2) q[81];
cx q[81],q[80];
sx q[81];
cx q[72],q[81];
sx q[72];
rz(-pi/2) q[72];
sx q[72];
rz(pi/2) q[81];
cx q[72],q[81];
rz(-pi/2) q[72];
sx q[72];
rz(-pi) q[72];
cx q[72],q[62];
cx q[62],q[72];
cx q[72],q[62];
cx q[62],q[72];
cx q[63],q[62];
cx q[62],q[63];
cx q[63],q[64];
cx q[64],q[63];
cx q[63],q[64];
cx q[64],q[63];
cx q[54],q[64];
cx q[64],q[54];
rz(1.7497274766154263) q[54];
sx q[54];
cx q[45],q[54];
sx q[45];
rz(-pi/2) q[45];
sx q[45];
rz(pi/2) q[54];
cx q[45],q[54];
rz(2.4741725855082244) q[45];
sx q[45];
rz(-1.459311688435987) q[45];
sx q[45];
rz(1.928177228474965) q[45];
cx q[45],q[46];
cx q[46],q[45];
cx q[46],q[47];
cx q[47],q[46];
rz(pi/2) q[54];
sx q[54];
rz(-pi) q[54];
rz(pi/2) q[81];
sx q[81];
rz(-pi) q[81];
cx q[80],q[81];
cx q[81],q[80];
cx q[80],q[81];
rz(pi/2) q[82];
sx q[82];
rz(-pi) q[82];
rz(pi/2) q[83];
sx q[83];
rz(-pi) q[83];
cx q[83],q[82];
cx q[81],q[82];
cx q[82],q[81];
cx q[82],q[83];
cx q[83],q[82];
cx q[82],q[81];
cx q[81],q[82];
cx q[82],q[81];
cx q[81],q[80];
cx q[81],q[72];
cx q[72],q[81];
cx q[81],q[72];
cx q[72],q[81];
cx q[62],q[72];
cx q[72],q[62];
cx q[62],q[63];
cx q[63],q[62];
cx q[62],q[63];
cx q[63],q[62];
cx q[64],q[63];
cx q[63],q[64];
rz(-0.8367625868614188) q[64];
sx q[64];
rz(-pi) q[64];
cx q[54],q[64];
sx q[54];
rz(-pi/2) q[54];
sx q[54];
rz(pi/2) q[64];
cx q[54],q[64];
rz(2.6826310178715627) q[54];
sx q[54];
rz(-1.951038837704484) q[54];
sx q[54];
rz(-1.6482297281355383) q[54];
cx q[54],q[45];
cx q[45],q[54];
cx q[45],q[46];
cx q[46],q[45];
cx q[47],q[46];
rz(pi/2) q[64];
sx q[64];
rz(-pi/2) q[64];
cx q[82],q[81];
cx q[81],q[82];
cx q[82],q[81];
cx q[81],q[80];
cx q[81],q[82];
cx q[72],q[81];
cx q[81],q[72];
cx q[72],q[62];
cx q[62],q[72];
cx q[72],q[62];
cx q[62],q[72];
cx q[63],q[62];
cx q[62],q[63];
rz(-3.141419673708964) q[63];
sx q[63];
rz(-pi/2) q[63];
cx q[63],q[64];
sx q[63];
rz(-pi/2) q[63];
sx q[63];
rz(pi/2) q[64];
cx q[63],q[64];
sx q[63];
rz(-pi/2) q[63];
rz(1.571157395388152) q[64];
sx q[64];
rz(-2.6948225977826645) q[64];
sx q[64];
rz(-2.895178396460798) q[64];
cx q[64],q[54];
cx q[54],q[64];
cx q[54],q[45];
cx q[45],q[54];
cx q[45],q[46];
cx q[46],q[45];
cx q[46],q[47];
cx q[47],q[46];
cx q[80],q[81];
cx q[81],q[80];
cx q[83],q[82];
cx q[82],q[83];
cx q[83],q[82];
cx q[82],q[81];
cx q[81],q[80];
cx q[82],q[83];
cx q[81],q[82];
cx q[82],q[81];
cx q[81],q[72];
cx q[72],q[81];
cx q[81],q[72];
cx q[72],q[81];
cx q[62],q[72];
cx q[72],q[62];
rz(1.5525002705049644) q[62];
sx q[62];
rz(pi/2) q[62];
cx q[62],q[63];
sx q[62];
rz(-pi/2) q[62];
sx q[62];
rz(pi/2) q[63];
cx q[62],q[63];
sx q[62];
rz(-0.6211593921970087) q[63];
sx q[63];
rz(-1.5856753200469544) q[63];
sx q[63];
rz(0.6840903672790972) q[63];
cx q[63],q[64];
cx q[64],q[63];
cx q[54],q[64];
cx q[64],q[54];
cx q[54],q[64];
cx q[64],q[54];
cx q[54],q[45];
cx q[45],q[54];
cx q[46],q[45];
cx q[45],q[46];
cx q[46],q[45];
cx q[45],q[46];
cx q[47],q[46];
cx q[80],q[81];
cx q[81],q[80];
cx q[80],q[81];
cx q[83],q[82];
cx q[82],q[83];
cx q[81],q[82];
cx q[81],q[80];
cx q[72],q[81];
cx q[81],q[72];
rz(-1.5686351475939166) q[72];
sx q[72];
rz(-pi) q[72];
cx q[62],q[72];
sx q[62];
rz(-pi/2) q[62];
sx q[62];
rz(pi/2) q[72];
cx q[62],q[72];
rz(0.7281292332675764) q[62];
sx q[62];
rz(-1.5722345375207176) q[62];
sx q[62];
rz(2.0726332733610455) q[62];
cx q[62],q[63];
cx q[63],q[62];
cx q[64],q[63];
cx q[63],q[64];
cx q[64],q[63];
cx q[63],q[64];
cx q[64],q[54];
cx q[54],q[64];
cx q[45],q[54];
cx q[54],q[45];
cx q[45],q[54];
cx q[54],q[45];
cx q[45],q[46];
cx q[46],q[45];
cx q[46],q[47];
cx q[47],q[46];
rz(-pi/2) q[72];
sx q[72];
cx q[81],q[82];
cx q[82],q[81];
cx q[82],q[83];
cx q[83],q[82];
cx q[82],q[81];
cx q[81],q[82];
cx q[82],q[81];
cx q[81],q[80];
rz(-1.5545451003980935) q[81];
sx q[81];
cx q[72],q[81];
sx q[72];
rz(-pi/2) q[72];
sx q[72];
rz(pi/2) q[81];
cx q[72],q[81];
rz(0.3501777170729632) q[72];
sx q[72];
rz(-1.5652206708790795) q[72];
sx q[72];
rz(-2.808392598489368) q[72];
cx q[72],q[62];
cx q[62],q[72];
cx q[63],q[62];
cx q[62],q[63];
cx q[63],q[62];
cx q[62],q[63];
cx q[63],q[64];
cx q[64],q[63];
cx q[54],q[64];
cx q[64],q[54];
cx q[54],q[64];
cx q[64],q[54];
cx q[54],q[45];
cx q[45],q[54];
cx q[45],q[46];
cx q[46],q[45];
cx q[47],q[46];
rz(pi/2) q[81];
sx q[81];
cx q[82],q[81];
cx q[81],q[82];
cx q[82],q[81];
cx q[81],q[80];
cx q[81],q[82];
sx q[81];
rz(3.0638412193099107) q[81];
sx q[81];
rz(-1.0636219317431213) q[81];
cx q[81],q[72];
cx q[72],q[81];
cx q[62],q[72];
cx q[72],q[62];
cx q[62],q[72];
cx q[72],q[62];
cx q[62],q[63];
cx q[63],q[62];
cx q[63],q[64];
cx q[64],q[63];
cx q[64],q[54];
cx q[54],q[64];
cx q[54],q[45];
cx q[45],q[54];
cx q[45],q[46];
cx q[46],q[45];
cx q[46],q[47];
cx q[47],q[46];
cx q[80],q[81];
cx q[81],q[80];
cx q[80],q[81];
cx q[83],q[82];
cx q[82],q[83];
cx q[83],q[82];
cx q[82],q[81];
cx q[82],q[83];
sx q[82];
rz(-0.2745466276846109) q[82];
sx q[82];
rz(1.7205264938110485) q[82];
cx q[81],q[82];
cx q[82],q[81];
cx q[81],q[82];
cx q[80],q[81];
cx q[81],q[72];
cx q[72],q[81];
cx q[72],q[62];
cx q[62],q[72];
cx q[62],q[63];
cx q[63],q[62];
cx q[63],q[64];
cx q[64],q[63];
cx q[64],q[54];
cx q[54],q[64];
cx q[54],q[45];
cx q[45],q[54];
cx q[45],q[46];
cx q[46],q[45];
cx q[47],q[46];
sx q[81];
rz(-pi/2) q[81];
cx q[82],q[83];
sx q[82];
rz(-1.0925023928214674) q[82];
sx q[82];
rz(-1.8218674397222845) q[82];
cx q[81],q[82];
sx q[81];
rz(-pi/2) q[81];
sx q[81];
rz(pi/2) q[82];
cx q[81],q[82];
rz(-pi) q[81];
sx q[81];
cx q[80],q[81];
cx q[81],q[72];
cx q[72],q[81];
cx q[72],q[62];
cx q[62],q[72];
cx q[62],q[63];
cx q[63],q[62];
cx q[63],q[64];
cx q[64],q[63];
cx q[64],q[54];
cx q[54],q[64];
cx q[54],q[45];
cx q[45],q[54];
cx q[45],q[46];
cx q[46],q[45];
cx q[46],q[47];
cx q[47],q[46];
rz(pi/2) q[82];
sx q[83];
rz(1.5794302666547848) q[83];
sx q[83];
rz(-1.1277826182753259) q[83];
cx q[82],q[83];
sx q[82];
rz(-pi/2) q[82];
sx q[82];
rz(pi/2) q[83];
cx q[82],q[83];
rz(-pi) q[82];
sx q[82];
rz(-pi) q[82];
cx q[82],q[81];
cx q[81],q[82];
cx q[80],q[81];
cx q[72],q[81];
sx q[72];
rz(-0.9654293290234062) q[72];
sx q[72];
rz(-1.2373944253509883) q[72];
sx q[80];
rz(0.8575991446821432) q[80];
sx q[80];
rz(-2.9820011162070035) q[80];
cx q[81],q[72];
cx q[72],q[81];
cx q[81],q[72];
cx q[72],q[62];
cx q[62],q[72];
cx q[63],q[62];
sx q[63];
rz(2.3870774425055394) q[63];
sx q[63];
rz(0.3617744290191389) q[63];
cx q[62],q[63];
cx q[63],q[62];
cx q[62],q[63];
cx q[63],q[64];
cx q[64],q[63];
cx q[54],q[64];
sx q[54];
rz(2.3756512702627592) q[54];
sx q[54];
rz(-0.15624869766433136) q[54];
sx q[63];
rz(-0.5183053354057829) q[63];
sx q[63];
rz(-1.3018887109956339) q[63];
cx q[64],q[54];
cx q[54],q[64];
cx q[64],q[54];
cx q[54],q[45];
cx q[45],q[54];
cx q[46],q[45];
sx q[46];
rz(0.6633634013666594) q[46];
sx q[46];
rz(-2.737891333061369) q[46];
cx q[45],q[46];
cx q[46],q[45];
cx q[45],q[46];
cx q[47],q[46];
sx q[46];
rz(-1.494043064253142) q[46];
sx q[46];
rz(-0.03111036968978631) q[46];
sx q[47];
rz(0.6147257889846567) q[47];
sx q[47];
rz(-1.0071453217107091) q[47];
sx q[54];
rz(0.0846133154690194) q[54];
sx q[54];
rz(3.008509421420701) q[54];
sx q[72];
rz(1.6539893893945035) q[72];
sx q[72];
rz(0.41159274487845465) q[72];
sx q[82];
rz(-2.870803978304287) q[82];
sx q[82];
rz(-1.620585070031714) q[82];
rz(1.9787438939980078) q[83];
sx q[83];
rz(-1.2511624659016518) q[83];
barrier q[83],q[80],q[81],q[82],q[62],q[72],q[64],q[63],q[45],q[54],q[47],q[46];
measure q[83] -> meas[0];
measure q[80] -> meas[1];
measure q[81] -> meas[2];
measure q[82] -> meas[3];
measure q[62] -> meas[4];
measure q[72] -> meas[5];
measure q[64] -> meas[6];
measure q[63] -> meas[7];
measure q[45] -> meas[8];
measure q[54] -> meas[9];
measure q[47] -> meas[10];
measure q[46] -> meas[11];