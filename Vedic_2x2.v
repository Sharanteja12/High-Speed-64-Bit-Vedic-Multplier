module vedic_2x2(a, b, s);

input [1:0] a, b;
output [3:0] s;

wire s1, s2, s3, s4;

and(s[0], a[0], b[0]);
and(s1, a[0], b[1]);
and(s2, a[1], b[0]);

ha ha1(s1, s2, s[1], s3);

and(s4, a[1], b[1]);

ha ha2(s4, s3, s[2], s[3]);

endmodule
