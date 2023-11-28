//program to calculate solutions using
//Laplace Transforms MV and SS forms
//1 DoF
m=1;c=8;k=25;f=8/%s;
x0=0;x_dot0=0;
A=1/(m*%s^2+c*%s+k);
X=A*((%s*x0+x_dot0+c*x0)+f);
//2 DoF
M=[4 0;0 8];K=[100 -26;-26 200];C=0.03*K;
y0=[0;0];y_dot0=[0;0];
B=inv(M*%s^2+C*%s+K);
IC=M*y0*%s+M*y_dot0+C*y0;
F=[0;5/%s^2];
Y=B*(IC+F);
//State Space Form
A=[zeros(2,2) eye(2,2);-inv(M)*K -inv(M)*C];
z0=[y0;y_dot0];B=[zeros(2,2);inv(M)];
Z=inv(%s*eye(4,4)-A)*(z0+B*F);
