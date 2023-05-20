function [a1,a1m,a2,a2m,b1,b1m,b2,b2m,bp1,bp2,camber,st,pitch,Radious]=convert(a1,a2,a1m,a2m,b1,b2,b1m,b2m,bp1,bp2,l)
a1=a1*180/pi;
a1m=a1m*180/pi;
a2=a2*180/pi;
a2m=a2m*180/pi;
b1=b1*180/pi;
b1m=b1m*180/pi;
b2=b2*180/pi;
b2m=b2m*180/pi;

camber=pi/180*(bp1-bp2);
st=0.5.*(bp1+bp2);
pitch=90-st;
Radious=l.*(sin((180-camber)./2))./sin(camber);
camber=camber*180/pi;
end