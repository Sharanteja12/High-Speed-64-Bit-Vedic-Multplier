module rca_64(a,b,s,cin,cout);
  
input [63:0]a,b;
input cin;
output [63:0]s;
output cout ;
  
wire cout1;
  
rca_32 s1(a[31:0],b[31:0],s[31:0],cin,cout1);
rca_32 s2(a[63:32],b[63:32],s[63:32],cout1,cout);
  
endmodule
