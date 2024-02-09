module comp2(a, b, g, e, l);
input logic [1:0] a, b;
output logic g, e, l;
logic g1, e1, l1, g2, e2, l2, gt, lt;
comp1 c1(a[0], b[0], g1, e1, l1);
comp1 c2(a[1], b[1], g2, e2, l2);
or_2 o1(g1, g2, gt);
and_2 a1(e1, e2, e);
or_2 o2(l1, l2, lt);
endmodule