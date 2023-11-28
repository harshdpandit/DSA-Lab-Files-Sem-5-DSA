//Class Problem 2 , DSA
//Name: Harsh Pandit
//Roll: H036
//f(t)=4r(t-2)-16u(t-4)-4r(t-6)
//mx_dot_dot+cx_dot+kx=f(t)
//run0=
clear
clc
exec lapinv.sci;
m=1;c=8;k=25;f0=0;
x0=1;x_dot0=2;
A=1/(m*%s^2+c*%s+k);
X0=A*((%s*x0+x_dot0+c*x0)+f0);

//run1
m=1;c=8;k=25;f1=4/(%s^2);
x0=0;x_dot0=0;
A=1/(m*%s^2+c*%s+k);
X1=A*((%s*x0+x_dot0+c*x0)+f1);


//run2
m=1;c=8;k=25;f2=-16/(%s^2);
x0=0;x_dot0=0;
A=1/(m*%s^2+c*%s+k);
X2=A*((%s*x0+x_dot0+c*x0)+f2);


//run2
m=1;c=8;k=25;f2=16/(%s) ;
x0=0;x_dot0=0;
A=1/(m*%s^2+c*%s+k);
X2=A*((%s*x0+x_dot0+c*x0)+f2);

//run3
m=1;c=8;k=25;f2=-4/(%s^2) ;
x0=0;x_dot0=0;
A=1/(m*%s^2+c*%s+k);
X3=A*((%s*x0+x_dot0+c*x0)+f2);




d0=pfss(X0);
d1=pfss(X1);
d2=pfss(X2);
d3=pfss(X3);
