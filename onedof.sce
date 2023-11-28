//program to simulate ODEs with
//external arguments, in scilab you have to
//write a function and use it
//H036 Harsh Pandit
clear
function ydot=h(t,y)
k=16;c=8;
ydot=[0 1;-k -c]*y;
endfunction
////
y0=[1;2]; //Intial Conditions
t0=0;
t=0:0.001:10;
y=ode(y0,t0,t,h);
figure(0)
plot(t',y',[2,3])
xlabel('time: seconds');ylabel('states: rad rad/s');
title("$Evolution\:of\:the\:states\:of\:Simple\:OneDoF\:model$");
legends(["$Y_{1}(t)$";"$Y_{2}(t)$"],[2,3],opt="?")
figure(1)
plot((y(1,:))',(y(2,:))')
xlabel('displacement:rad');ylabel('velociy: rad/s');
title("$A\:Phase\:Space\:plot\:of\:Simple\:OneDoF\:model$");
