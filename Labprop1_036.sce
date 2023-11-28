//Labprob1
//Two DoF problem
// Harsh Pandit
// H036
// Lab 7
clc;
exec lapinv.sci;
M=[4 -1;-1 5];//Mass matrix
K=[40 -5;-5 30];//Stiffness matrix
C=[0.3 -0.1; -0.1 0.8];//Damping matrix

//run0
y0=[1;2];y_dot0=[-2;1];
B=inv(M*%s^2+C*%s+K);
IC=M*y0*%s+M*y_dot0+C*y0;
F0=[200/(%s^2 + 400);0];
Y0=B*(IC+F0);
d0=pfss(Y0);

//run1
y0=[0;0];y_dot0=[0;0];
B=inv(M*%s^2+C*%s+K);
IC=M*y0*%s+M*y_dot0+C*y0;
F1=[0;1/%s^2];
Y1=B*(IC+F1);
d1=pfss(Y1);

//run2
y0=[0;0];y_dot0=[0;0];
B=inv(M*%s^2+C*%s+K);
IC=M*y0*%s+M*y_dot0+C*y0;
F2=[-5/%s;0];
Y2=B*(IC+F2);
d2=pfss(Y2);

//run3
y0=[0;0];y_dot0=[0;0];
B=inv(M*%s^2+C*%s+K);
IC=M*y0*%s+M*y_dot0+C*y0;
F3=[0;(-1/%s^2)];
Y3=B*(IC+F3);
d3=pfss(Y3);




