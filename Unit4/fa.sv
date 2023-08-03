//full adder using always_comb
module fa(a, b, c, s, co);
input logic a, b, c;
output logic s, co;
always_comb
	begin
	s = a ^ b ^ c;
	co = (a & b)|(b & c)|(c & a);
	end
endmodule