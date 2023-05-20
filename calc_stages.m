function [Ttotalrise,Um1,Um2,Um,N,w1m,w2m,b11,b21,n,Trise]=calc_stages(T01,cp,cx,N1,N2,rm,T0e)


Ttotalrise=T0e-T01;
Um1=2*pi*N1*rm;
Um2=2*pi*N2*rm;
Um=[0 Um2 Um1];
N=[0 N2 N1];
w1m=sqrt(Um1^2+cx^2);
w2m=0.72*w1m;
b11=acos(cx/w1m);
b21=acos(cx/w2m);
Tris=Um1*cx*(tan(b11)-tan(b21))/cp;
n=Ttotalrise/Tris;
n=round(n)+1;
Trise(1)=Tris;
Trise(1)=0.95*Trise(1);
Trise(n)=Trise(1);
for(i=2:n-1)  
Trise(i)=(Ttotalrise-Trise(1))/(n-2);
end
end