module csa_8 (a,b,c,s,cout);

input [7:0]a,b,c;
output [8:0] s;
output cout ;

wire [7:0] s1,c1;
fa e1(a[0],b[0],c[0],s1[0],c1[0]);
fa e2(a[1],b[1],c[1],s1[1],c1[1]);
fa e3(a[2],b[2],c[2],s1[2],c1[2]);
fa e4(a[3],b[3],c[3],s1[3],c1[3]);
fa e5(a[4],b[4],c[4],s1[4],c1[4]);
fa e6(a[5],b[5],c[5],s1[5],c1[5]);
fa e7(a[6],b[6],c[6],s1[6],c1[6]);
fa e8(a[7],b[7],c[7],s1[7],c1[7]);
assign s[0] =s1[0];

rca_8 r1({0,s1[7:1]},c1[7:0],s[8:1],0,cout);

endmodule 
