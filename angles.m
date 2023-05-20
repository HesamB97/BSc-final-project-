function [ro2,Aexit,h2,rh,rt,h,r,U,ct1,ct2,dct,a1,T2,P2,a2,b1,b2]=angles(n,n2,T02,cx,cp,a2m,P02,gama,R,Aexit,mdot,rm,N,ctm,Trise,landa,rh,rt)


c2m=cx./cos(a2m);
for(i=1:n)  
T2(i)=T02(i)-(((c2m(i)).^2)./(2*cp));
P2(i)=P02(i)*(T2(i)/T02(i))^(gama/(gama-1));
end
for(i=1:2:n)
for(j=0:n2+1)

a1(i,j+1)=0;

end
end


for(i=1:n)  
ro2(i)=P2(i)*10^5/(R*T2(i));
Aexit(i)=mdot/(ro2(i)*cx);
h2(i)=Aexit(i)/(2*pi*rm);
rh(i+1)=rm-h2(i)/2;
rt(i+1)=rm+h2(i)/2;

end
for(i=1:n)
rh(i)=(rh(i)+rh(i+1))/2;
rt(i)=(rt(i)+rt(i+1))/2;
h(i)=rt(i)-rh(i);
end

for(i=1:n)
    for(j=0:n2+1)
        r(i,j+1)=rh(i)+j*h(i)/(n2+1);
        U(i,j+1)=N(mod(i,2)+2)*2*pi*r(i,j+1);
        
b1(i,j+1)=atan((U(i,j+1)-cx*tan(a1(i,j+1)))/cx);
if mod(i,2)==0
a2(i,j+1)=0;
else
a2(i,j+1)=atan((rm*ctm(i,2)/(r(i,j+1)*cx)));
end
b2(i,j+1)=atan((U(i,j+1)-cx*tan(a2(i,j+1)))/cx);
dct(i,j+1)=cp.*Trise(i)./((landa(i)).*U(i,j+1));
ct1(i,j+1)=cx*tan(a1(i,j+1));
ct2(i,j+1)=dct(i,j+1)+ct1(i,j+1);
if i<n
            a1(i+1,j+1)=-a2(i,j+1);
end
    end
end
end