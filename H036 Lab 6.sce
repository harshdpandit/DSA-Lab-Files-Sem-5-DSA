//Name : Harsh Pandit
//Roll: H036 
//Lab 6

m=1;c=7;k=49;f0=0;
x0=1;x_dot0=2;
A=1/(m*%s^2+c*%s+k);
X0=A*((%s*x0+x_dot0+c*x0)+f0);

//run1
m=1;c=7;k=49;f1=(((8*%s)-4)/(%s^2));
x0=0;x_dot0=0;
A=1/(m*%s^2+c*%s+k);
X1=A*((%s*x0+x_dot0+c*x0)+f1);


//run2
m=1;c=7;k=49;f2=((-(8*%s)+4)/(%s^2));
x0=0;x_dot0=0;
A=1/(m*%s^2+c*%s+k);
X2=A*((%s*x0+x_dot0+c*x0)+f2);

a0=pfss(X0);
a1=pfss(X1);
a2=pfss(X2);
