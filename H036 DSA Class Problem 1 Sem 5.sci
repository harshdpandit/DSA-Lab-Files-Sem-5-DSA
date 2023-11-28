//Class Problem 1 , DSA
//Name: Harsh Pandit
//Roll: H036
//f(t)=10sin(20t)+8u(t-3)-12r(t-6)
//mx_dot_dot+cx_dot+kx=f(t)
//run0=
m=1;c=8;k=25;f0=200/(%s^2+400);
x0=1;x_dot0=2;
A=1/(m*%s^2+c*%s+k);
X0=A*((%s*x0+x_dot0+c*x0)+f0);
//run1
m=1;c=8;k=25;f1=8/(%s);
x0=0;x_dot0=0;
A=1/(m*%s^2+c*%s+k);
X1=A*((%s*x0+x_dot0+c*x0)+f1);


//run2
m=1;c=8;k=25;f2=-12/(%s^2);
x0=0;x_dot0=0;
A=1/(m*%s^2+c*%s+k);
X2=A*((%s*x0+x_dot0+c*x0)+f2);

a0=pfss(X0);
a1=pfss(X1);
a2=pfss(X2);
