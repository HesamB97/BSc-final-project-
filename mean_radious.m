function  [ctm,dctm,b1m,b2m,a1m,a2m,rotordefm,DHm,P02,P01,PR,T02,psie,phi,landa]=mean_radious(n,cp,Trise,Um1,cx,P01,ethais,T01,gama,Um);

for(i=1:n)
%  text = ' What is the stage work factor? ';
landa(i) = 1-0.1/n*(i-1);
end
ctm(1,1)=0;
dctm(1)=cp.*Trise(1)./(landa(1).*Um1);
ctm(1,2)=dctm(1)+ctm(1,1);
b1m(1)=atan(Um1/cx);
b2m(1)=atan((Um1-ctm(1,2))/cx);
a2m(1)=atan(ctm(1,2)/cx);
rotordefm(1)=b1m(1)-b2m(1);
DHm(1)=cos(b1m(1))/cos(b2m(1));
P02(1)=P01(1)*(1+ethais*(Trise(1)/T01(1)))^(gama/(gama-1));
T02(1)=T01(1)+Trise(1);
psie(1)=cp*Trise(1)/Um1^2;
phi(1)=cx/Um1;
for(i=1:n-1) 
b1m(i+1)=atan((cx.*tan(a2m(i))+Um(mod(i+1,2)+2))./cx);
b2m(i+1)=atan(tan(b1m(i+1))-Trise(i+1).*cp./(landa(i+1).*Um(mod(i,2)+2).*cx));
dctm(i+1)=cp.*Trise(i+1)./((landa(i+1)).*Um(mod(i+1,2)+2));
a1m(i+1)=-a2m(i);
ctm(i+1,1)=cx*tan(a1m(i+1));
ctm(i+1,2)=abs(((-1)^(i))*dctm(i+1)+abs(ctm(i+1,1)));

if mod(i,2)==1
a2m(i+1)=0;
else
a2m(i+1)=((-1)^(i))*atan(ctm(i+1,2)/cx);
end
 rotordefm(i+1)=b1m(i+1)-b2m(i+1);
 DHm(i+1)=cos(b1m(i+1))/cos(b2m(i+1));
 P01(i+1)=P02(i);
 T01(i+1)=T02(i);
 T02(i+1)=T01(i+1)+Trise(i+1);
 P02(i+1)=P01(i+1)*(1+ethais*(Trise(i+1)/T02(i)))^(gama/(gama-1));
 psie(i+1)=cp*Trise(i+1)/(Um(mod(i+1,2)+2))^2;
 phi(i+1)=cx/Um(mod(i+1,2)+2);

end

 PR=P02./P01;
end
