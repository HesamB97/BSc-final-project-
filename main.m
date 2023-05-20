clc
clear
Mt1=2;
while Mt1>1.2
[T01,P01,mdot,PR,ethais,gama,R,cp,cx,N1,N2,rhrt,n2]=getinformation;
[ethap,T1(1),P1(1),ro1(1),rt(1),ut1,wt1,Mt1,rh(1),rm,P0e,T0e,Te,Pe,roe,Aexit,he]=annalus(T01,P01,mdot,PR,ethais,gama,R,cp,cx,N1,N2,rhrt);
end
[Ttotalrise,Um1,Um2,Um,N,w1m,w2m,b11,b21,n,Trise]=calc_stages(T01,cp,cx,N1,N2,rm,T0e);
[ctm,dctm,b1m,b2m,a1m,a2m,rotordefm,DHm,P02,P01,PR,T02,psie,phi,landa]=mean_radious(n,cp,Trise,Um1,cx,P01,ethais,T01,gama,Um);
[ro2,Aexit,h2,rh,rt,h,r,U,ct1,ct2,dct,a1,T2,P2,a2,b1,b2]=angles(n,n2,T02,cx,cp,a2m,P02,gama,R,Aexit,mdot,rm,N,ctm,Trise,landa,rh,rt);
[slm,lm,sm,NoB,sl,s,l,deflect,bp1,bp2,hl]=blades(b1m,b2m,h,rm,b1,b2,r,n,n2);
[D,cdannalus,cd,cl,cds,etha]=etha(b1,b2,dct,cx,sl,hl);
[a1,a1m,a2,a2m,b1,b1m,b2,b2m,bp1,bp2,camber,st,pitch,Radious]=convert(a1,a2,a1m,a2m,b1,b2,b1m,b2m,bp1,bp2,l);
plots(r,deflect,camber,st,NoB,h,PR)
AA=90-st;
ut2=rt(2)*2*pi*N2;
wt2=sqrt(ut2^2+cx^2);
Mt2=wt2/(sqrt(gama*R*T1))