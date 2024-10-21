module csa (a,b,c,s,cout); // Carry Save Adder for 4 Bit 
  
input [3:0]a,b,c;
output [4:0] s;
output cout ;
wire [3:0] s1,c1,c2;
  
fa f1(a[0],b[0],c[0],s1[0],c1[0]);// s1[0]=s[0];
fa f2(a[1],b[1],c[1],s1[1],c1[1]);
fa f3(a[2],b[2],c[2],s1[2],c1[2]);
fa f4(a[3],b[3],c[3],s1[3],c1[3]);
assign s[0]=s1[0];

ha h1(s1[1],c1[0],s[1],c2[0]); 
fa f5(s1[2],c1[1],c2[0],s[2],c2[1]);
fa f6(s1[3],c1[2],c2[1],s[3],c2[2]);
ha f7(c1[3],c2[2],s[4],cout);

//rca r1({0,s1[3:1]},c1[3:0],s[4:1],0,cout);
  
endmodule 
