//2 DoF  in the state space
//f(t)=[10sin(20t);5r(t-2)-5r(t-4)-10u(t-4)]
//Run 0
M=[4 0;0 8];K=[100 -26;-26 200];C=0.03*K;
x0=[1;2];x_dot0=[3;4];
A=[zeros(2,2) eye(2,2);-inv(M)*K -inv(M)*C];
B=[zeros(2,2);inv(M)];
z0=[x0;x_dot0];F0=[200/(%s^2+400);0];
Z0=inv(%s*eye(4,4)-A)*(z0+B*F0);
//Run1
z0=[zeros(2,1);zeros(2,1)];F1=[0;5/%s^2];
Z1=inv(%s*eye(4,4)-A)*(z0+B*F1);
//Run2
z0=[zeros(2,1);zeros(2,1)];F2=[0;-5/%s^2-10/%s];
Z2=inv(%s*eye(4,4)-A)*(z0+B*F2);
//Calculate the Laplace inverse
d01=pfss(Z0(1,1));d02=pfss(Z0(2,1));
d03=pfss(Z0(3,1));d04=pfss(Z0(4,1));
d11=pfss(Z1(1,1));d12=pfss(Z1(2,1));
d13=pfss(Z1(3,1));d14=pfss(Z1(4,1));
d21=pfss(Z2(1,1));d22=pfss(Z2(2,1));
d23=pfss(Z2(3,1));d24=pfss(Z2(4,1));
