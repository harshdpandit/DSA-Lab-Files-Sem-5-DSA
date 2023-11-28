//program to calculate solutions using
//Laplace Transforms
//f(t)=10u(t-2)-5r(t-2)+5r(t-6)-10u(t-6)
//Run 0
m=1;c=3;k=25;f0=0;
x0=1;x_dot0=2;
A=1/(m*%s^2+c*%s+k);
X0=A*((%s*x0+x_dot0+c*x0)+f0);
//Run 1
f1=(10/%s)-(5/%s^2);x0=0;x_dot0=0;
X1=A*((%s*x0+x_dot0+c*x0)+f1);
//Run 2
f2=(5/%s^2)+(10/%s);x0=0;x_dot0=0;
X2=A*((%s*x0+x_dot0+c*x0)+f2);
/// calculating fractions
d0=pfss(X0);d1=pfss(X1);
d2=pfss(X2);
