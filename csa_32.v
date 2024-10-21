module csa_32 (a,b,c,s,cout);

input [31:0]a,b,c;
output [32:0] s;
output cout ;

wire [31:0] s1,c1;

fa e1(a[0],b[0],c[0],s1[0],c1[0]);
fa e2(a[1],b[1],c[1],s1[1],c1[1]);
fa e3(a[2],b[2],c[2],s1[2],c1[2]);
fa e4(a[3],b[3],c[3],s1[3],c1[3]);
fa e5(a[4],b[4],c[4],s1[4],c1[4]);
fa e6(a[5],b[5],c[5],s1[5],c1[5]);
fa e7(a[6],b[6],c[6],s1[6],c1[6]);
fa e8(a[7],b[7],c[7],s1[7],c1[7]);

fa e9(a[8],b[8],c[8],s1[8],c1[8]);
fa e10(a[9],b[9],c[9],s1[9],c1[9]);
fa e11(a[10],b[10],c[10],s1[10],c1[10]);
fa e12(a[11],b[11],c[11],s1[11],c1[11]);
fa e13(a[12],b[12],c[12],s1[12],c1[12]);
fa e14(a[13],b[13],c[13],s1[13],c1[13]);
fa e15(a[14],b[14],c[14],s1[14],c1[14]);
fa e16(a[15],b[15],c[15],s1[15],c1[15]);


fa e17(a[16],b[16],c[16],s1[16],c1[16]);
fa e18(a[17],b[17],c[17],s1[17],c1[17]);
fa e19(a[18],b[18],c[18],s1[18],c1[18]);
fa e20(a[19],b[19],c[19],s1[19],c1[19]);
fa e21(a[20],b[20],c[20],s1[20],c1[20]);
fa e22(a[21],b[21],c[21],s1[21],c1[21]);
fa e23(a[22],b[22],c[22],s1[22],c1[22]);
fa e24(a[23],b[23],c[23],s1[23],c1[23]);

fa e25(a[24],b[24],c[24],s1[24],c1[24]);
fa e26(a[25],b[25],c[25],s1[25],c1[25]);
fa e27(a[26],b[26],c[26],s1[26],c1[26]);
fa e28(a[27],b[27],c[27],s1[27],c1[27]);
fa e29(a[28],b[28],c[28],s1[28],c1[28]);
fa e30(a[29],b[29],c[29],s1[29],c1[29]);
fa e31(a[30],b[30],c[30],s1[30],c1[30]);
fa e32(a[31],b[31],c[31],s1[31],c1[31]);
 
assign s[0] =s1[0];

rca_32 r1({0,s1[31:1]},c1[31:0],s[32:1],0,cout);

endmodule