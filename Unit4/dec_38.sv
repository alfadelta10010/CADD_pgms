module dec_38(d, q);
input logic [2:0] d;
output logic [7:0] q;
always_comb
case(d)
	3'b000: q = 8'b00000001;
	3'b001: q = 8'b00000010;
	3'b010: q = 8'b00000100;
	3'b011: q = 8'b00001000;
	3'b100: q = 8'b00010000;
	3'b101: q = 8'b00100000;
	3'b110: q = 8'b01000000;
	3'b111: q = 8'b10000000;
	endcase
endmodule