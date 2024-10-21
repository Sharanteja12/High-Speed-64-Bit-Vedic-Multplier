module adder_2 (a,b,y);

input [1:0] a,b;
output [2:0] y;

wire c1;

ha f1(a[0],b[0],y[0],c1);
fa f2(a[1],b[1],c1,y[1],y[2]);

endmodule 
