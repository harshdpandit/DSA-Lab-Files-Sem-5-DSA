//program to simulate ODEs with
//external arguments, in scilab you have to
//write a function and use it
clear
global M C K
//
M=[8 -5;-5 19];C=[40 -13;-13 36];
K=[200 -40;-40 300];
//
//function you of tee
function you=u(t,t0)
if t<t0 then
you = 0;
else
you = 1;
end
endfunction
//
//function are of tee
function are=r(t,t0)
if t<t0 then
are = 0;
else
are = (t-t0);
end
endfunction
//
function ydot=ht(t,y)
A=[zeros(2,2) eye(2,2);-inv(M)*K -inv(M)*C];
B=[zeros(2,2);inv(M)];
ydot=A*y+B*[2*sin(40*t);-3*cos(2*%pi*t)];
ydot=ydot+B*[5*u(t,3);7*r(t,4)];
endfunction
//
//
y0=[1;2;3;4];
t0=0;
t=0:0.001:10;
y=ode(y0,t0,t,ht);
//
figure(0)
subplot(2,1,1)
plot(t',y',[2,3,4,5])
xlabel('time: seconds');ylabel('states: cms');
title("$Evolution\:of\:states\:of\:EVERYONE\:CHEATS\:model$");
legends(["$Y_{1}(t)$";"$Y_{2}(t)$";"$Y_{3}(t)$";"$Y_{4}(t)$"],[2,3,4,5],opt="?")
//Calculate acceleration
for i=1:10001,
a(i)=u(t(i),3);
b(i)=r(t(i),4);
end
accn=inv(M)*([2*sin(40*t)+5*a';-3*cos(2*%pi*t)+7*b']-K*y(1:2,:)-C*y(3:4,:));
subplot(2,1,2)
plot(t',accn',[2,3])
xlabel('time: seconds');ylabel('accns: cm/s.s');
title("$Evolution\:of\:acceleration\:of\:EVERYONE\:CHEATS\:model$");
legends(["$An_{1}(t)$";"$An_{2}(t)$"],[2,3],opt="?")
