module comp_2w(a, b, g, e, l);
input logic [1:0] a, b;
output logic g, e, l;
assign g = (a[1] & (~b[1])) | ~b[0] & ((a[0] & ~b[1]) | (a[0] & a[1]));
assign l = (b[1] & (~a[1])) | (~a[1] & ~a[0] & b[0]) | (b[0] & b[1] & ~a[0]);
assign e = ~((a[0] ^ b[0])) | (~(a[1] ^ b[1]));
endmodule