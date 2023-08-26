module RCA_8Bit(a, b, cin, s, cout);
	input logic [7:0] a;
	input logic [7:0] b;
	output logic [7:0] s;
	logic [2:0] c;
	input logic cin;
	output logic cout;
	FA fa1(a[0], b[0], cin, s[0], c[0]);
	FA fa2(a[1], b[1], c[0], s[1], c[1]);
	FA fa3(a[2], b[2], c[1], s[2], c[2]);
	FA fa4(a[3], b[3], c[2], s[3], c[3]);
	FA fa5(a[4], b[4], c[3], s[4], c[4]);
	FA fa6(a[5], b[5], c[4], s[5], c[5]);
	FA fa7(a[6], b[6], c[5], s[6], c[6]);
	FA fa8(a[7], b[7], c[6], s[7], cout);
endmodule