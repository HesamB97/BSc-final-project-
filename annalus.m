function [ethap,T1,P1,ro1,rt,ut1,wt1,Mt1,rh,rm,P0e,T0e,Te,Pe,roe,Aexit,he]=annalus(T01,P01,mdot,PR,ethais,gama,R,cp,cx,N1,N2,rhrt)

ethap=log(PR)/(gama/(gama-1)*log(((PR^((gama-1)/gama)-1)/ethais)+1));
T1(1)=T01-cx^2/(2*cp);
P1(1)=P01(1)*(T1(1)/T01(1))^(gama/(gama-1));
ro1(1)=P1(1)*10^5/(R*T1(1));
rt(1)=sqrt(mdot/(pi*ro1(1)*cx*(1-(rhrt)^2)));
ut1=rt(1)*2*pi*N1;
wt1=sqrt(ut1^2+cx^2);
Mt1=wt1/(sqrt(gama*R*T1))

if Mt1>1
    fprintf("\n first stage is ultrasonic \n")
end
rh(1)=rhrt(1)*rt(1);
rm=(rh(1)+rt(1))/2;
P0e=PR*P01;
T0e=T01*(P0e/P01(1))^((gama-1)/(gama*ethap));
Te=T0e-(cx^2/(2*cp));
Pe=P0e*(Te/T0e)^(gama/(gama-1));
roe=Pe*10^5/(R*Te);
Aexit=mdot/(roe*cx);
he=Aexit/(2*pi*rm);
end
