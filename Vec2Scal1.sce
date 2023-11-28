//Decouple a second order vector differential
//equation into two scalar equations
clear
M=[10 2;2 15];K=[140 -25;-25 100];
C=0.03*K;
Mhalf=chol(M);//sqaure root of a symmetric pos def matrix
// Mhalf'*Mhalf = M // please verify
// inv(Mhalf) is not tran(Mhalf)
Mhalfi=inv(Mhalf)// used in the state transformation
Ktilda=Mhalfi'*K*Mhalfi;
[V,D]=spec(Ktilda);
Kcap=inv(V)*Ktilda*V;// This should equal D
//sqrt(D(i,i)) == wn_i, i=1,2
//f(t) gets premultiplied by inv(V)*Mhalf'
