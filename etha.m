function [D,cdannalus,cd,cl,cds,etha]=etha(b1,b2,dct,cx,sl,hl) 

D=1-(cos(b1)./cos(b2))+dct./(2.*cx./cos(b1)).*sl;


bm=atan((tan(b1)+tan(b2))./2);
Deq=cos(b2)./cos(b1).*(1.12+0.61.*sl.*((cos(b1)).^2).*(tan(b1)-tan(b2)));
theta2l=0.004./(1-1.17.*log(Deq));
w=2.*theta2l./sl.*((cos(b1).^2)./(cos(b2)).^3);
cdfirst=w.*sl.*((cos(bm)).^3)./((cos(b1)).^2);
cdannalus=0.02.*sl./hl;
cd=cdfirst+cdannalus;
cl=2*sl.*cos(bm).*(tan(b1)-tan(b2))-cd.*tan(bm);
cds=0.018.*cl.^2;
cd=cd+cds;
etha=1-(2*cd./(cl.*sin(2*bm)));
end