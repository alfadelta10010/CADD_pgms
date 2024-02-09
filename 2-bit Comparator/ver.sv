module ver(a, b, y);
input logic a, b;
output logic y;
assign y = (b == 0)? a : 0;
endmodule