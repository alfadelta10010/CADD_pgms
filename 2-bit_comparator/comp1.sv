module comp1(a, b, g, e, l);
input logic a, b;
output logic g, e, l;
assign e = (((~a) & (~b)) | (a & b));
assign g = (a & (~b));
assign l = ((~a) & b);
endmodule