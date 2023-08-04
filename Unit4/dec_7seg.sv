module dec_7seg(d, s);
input logic [3:0] d;
output logic [7:0] s;
always_comb
	case(d)
	0 : s= 7'b011_1111;
	1 : s= 7'b000_0110;
	2 : s= 7'b101_1011;
	3 : s= 7'b100_1111;
	4 : s= 7'b100_1110;
	5 : s= 7'b110_1101;
	6 : s= 7'b111_1101;
	7 : s= 7'b000_0111;
	8 : s= 7'b111_1111;
	9 : s= 7'b000_0111;
	default: s = 7'b000_0000
	endcase
endmodule