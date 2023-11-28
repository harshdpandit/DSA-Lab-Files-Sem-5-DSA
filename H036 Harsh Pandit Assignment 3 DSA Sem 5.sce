//Harsh Pandit
//H036
//DSA Homework 3
clear
///////////////////////////////
function u(t,t0)
if t<t0 then
you = 0;
else
you = 1;
end
endfunction
///////////////////////////////

M=[10 -2;-2 15];K=[100 -25;-25 150];
C=0.03*K;
x_0=[1;2];
x_dot_0=[-2;1];
ft=[0;20(u(%t-2)-u(%t-4))]
Mhalf=chol(M);//sqaure root of a symmetric pos def matrix
// Mhalf'*Mhalf = M // please verify
// inv(Mhalf) is not tran(Mhalf)
Mhalfi=inv(Mhalf);// used in the state transformation
Ktilda=Mhalfi'*K*Mhalfi;
[V,D]=spec(Ktilda);
Kcap=inv(V)*Ktilda*V;// This should equal D
//sqrt(D(i,i)) == wn_i, i=1,2
//f(t) gets premultiplied by inv(V)*Mhalf'

