//program to Laplace invert an unerdamped system
function [Ac,As,p,omegad]=lapinv(d)
    a1=coeff(d.num);
    b1=coeff(d.den);
    a=a1(1,1);b=a1(1,2);
    c=b1(1,1); g=b1(1,2); f=b1(1,3);
    omegad=sqrt(c-(g/2)^2);
    Ac=b;As=(a-b*g/2)/(omegad);
    p=g/2;
endfunction
"(Ac*cos(omegad*t)+As*sin(omegad*t))*(exp(-p*t))"
