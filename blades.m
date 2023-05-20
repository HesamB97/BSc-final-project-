function [slm,lm,sm,NoB,sl,s,l,deflect,bp1,bp2,hl]=blades(b1m,b2m,h,rm,b1,b2,r,n,n2)
for(i=1:n)
slm(i)=((1.55/(tan(b1m(i))-tan(b2m(i)))-1))/1.5;
hl=1.8;
lm(i)=h(i)/hl;
sm(i)=slm(i)*lm(i);
NoB(i)=round(2*pi*rm/sm(i));
if mod(NoB(i),2)==0
    NoB(i)=NoB(i)+1;
end
end

for(i=1:n)
    for(j=0:n2+1)

hl=3;
s(i,j+1)=2*pi*r(i,j+1)/NoB(i);
l(i,j+1)=lm(i);
sl(i,j+1)=s(i,j+1)/l(i,j+1);
    end
end
deflect=b1-b2;
deflect=deflect*180/pi;

b2=180/pi*b2;
b1=180/pi*b1;
bp1=b1;
y=((sl).^0.5).*(0.23+b2./500);
bp2=(b2-y.*b1)./(1-y);


end