module FA(a, b, cin, s, cout);
	input logic a;
	input logic b;
	input logic cin;
	output logic cout;
	output logic s;
	assign s = a ^ b ^ c;
	assign cout = (a & b) | (a ^ b);
endmodule