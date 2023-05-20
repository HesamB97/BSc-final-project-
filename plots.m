function plots(r,deflect,camber,st,NoB,h,PR)
figure(1);
xlabel('radious(m)')
ylabel('deflection(degrees)')
plot(r(1,:),deflect(1,:))
hold on
xlabel('radious(m)')
ylabel('deflection(degrees)')
plot(r(2,:),deflect(2,:))
hold on
xlabel('radious(m)')
ylabel('deflection(degrees)')
plot(r(3,:),deflect(3,:))
hold on
xlabel('radious(m)')
ylabel('deflection(degrees)')
plot(r(4,:),deflect(4,:))
hold on
xlabel('radious(m)')
ylabel('deflection(degrees)')
plot(r(5,:),deflect(5,:))
hold on
xlabel('radious(m)')
ylabel('deflection(degrees)')
plot(r(6,:),deflect(6,:))
hold on
xlabel('radious(m)')
ylabel('deflection(degrees)')
plot(r(7,:),deflect(7,:))
hold off
legend('rotor 1','rotor 2','rotor 3','rotor 4','rotor 5','rotor 6','rotor 7')
figure(2);
xlabel('radious(m)')
ylabel('deflection(degrees)')
plot(r(8,:),deflect(8,:))
hold on
xlabel('radious(m)')
ylabel('deflection(degrees)')
plot(r(9,:),deflect(9,:))
hold on
xlabel('radious(m)')
ylabel('deflection(degrees)')
plot(r(10,:),deflect(10,:))
hold on
xlabel('radious(m)')
ylabel('deflection(degrees)')
plot(r(11,:),deflect(11,:))
hold on
xlabel('radious(m)')
ylabel('deflection(degrees)')
plot(r(12,:),deflect(12,:))
hold on
xlabel('radious(m)')
ylabel('deflection(degrees)')
plot(r(13,:),deflect(13,:))
hold on
xlabel('radious(m)')
ylabel('deflection(degrees)')
plot(r(14,:),deflect(14,:))
hold off
legend('rotor 8','rotor 9','rotor 10','rotor 11','rotor 12','rotor 13','rotor 14')

figure(3);
xlabel('radious(m)')
ylabel('camber(degrees)')
plot(r(1,:),camber(1,:))
hold on
xlabel('radious(m)')
ylabel('camber(degrees)')
plot(r(2,:),camber(2,:))
hold on
xlabel('radious(m)')
ylabel('camber(degrees)')
plot(r(3,:),camber(3,:))
hold on
xlabel('radious(m)')
ylabel('camber(degrees)')
plot(r(4,:),camber(4,:))
hold on
xlabel('radious(m)')
ylabel('camber(degrees)')
plot(r(5,:),camber(5,:))
hold on
xlabel('radious(m)')
ylabel('camber(degrees)')
plot(r(6,:),camber(6,:))
hold on
xlabel('radious(m)')
ylabel('camber(degrees)')
plot(r(7,:),camber(7,:))
hold off
legend('rotor 1','rotor 2','rotor 3','rotor 4','rotor 5','rotor 6','rotor 7')
figure(4);
xlabel('radious(m)')
ylabel('camber(degrees)')
plot(r(8,:),camber(8,:))
hold on
xlabel('radious(m)')
ylabel('camber(degrees)')
plot(r(9,:),camber(9,:))
hold on
xlabel('radious(m)')
ylabel('camber(degrees)')
plot(r(10,:),camber(10,:))
hold on
xlabel('radious(m)')
ylabel('camber(degrees)')
plot(r(11,:),camber(11,:))
hold on
xlabel('radious(m)')
ylabel('camber(degrees)')
plot(r(12,:),camber(12,:))
hold on
xlabel('radious(m)')
ylabel('camber(degrees)')
plot(r(13,:),camber(13,:))
hold on
xlabel('radious(m)')
ylabel('camber(degrees)')
plot(r(14,:),camber(14,:))
hold off
legend('rotor 8','rotor 9','rotor 10','rotor 11','rotor 12','rotor 13','rotor 14')
figure(5);
plot(NoB,'-o')
xlabel('rotors')
ylabel('Number of blades')
figure(6);
plot(r(1,:),st(1,:))
hold on
xlabel('radious(m)')
ylabel('st(degrees)')
plot(r(2,:),st(2,:))
hold on
xlabel('radious(m)')
ylabel('st(degrees)')
plot(r(3,:),st(3,:))
hold on
xlabel('radious(m)')
ylabel('st(degrees)')
plot(r(4,:),st(4,:))
hold on
xlabel('radious(m)')
ylabel('st(degrees)')
plot(r(5,:),st(5,:))
hold on
xlabel('radious(m)')
ylabel('st(degrees)')
plot(r(6,:),st(6,:))
hold on
xlabel('radious(m)')
ylabel('st(degrees)')
plot(r(7,:),st(7,:))
hold off
legend('rotor 1','rotor 2','rotor 3','rotor 4','rotor 5','rotor 6','rotor 7')
figure(7);
xlabel('radious(m)')
ylabel('st(degrees)')
plot(r(8,:),st(8,:))
hold on
xlabel('radious(m)')
ylabel('st(degrees)')
plot(r(9,:),st(9,:))
hold on
xlabel('radious(m)')
ylabel('st(degrees)')
plot(r(10,:),st(10,:))
hold on
xlabel('radious(m)')
ylabel('st(degrees)')
plot(r(11,:),st(11,:))
hold on
xlabel('radious(m)')
ylabel('st(degrees)')
plot(r(12,:),st(12,:))
hold on
xlabel('radious(m)')
ylabel('st(degrees)')
plot(r(13,:),st(13,:))
hold on
xlabel('radious(m)')
ylabel('st(degrees)')
plot(r(14,:),st(14,:))
hold off
legend('rotor 8','rotor 9','rotor 10','rotor 11','rotor 12','rotor 13','rotor 14')
figure(8)
plot(h,'-o')
xlabel('rotors')
ylabel('heights(m)')
figure(9)
plot(PR,'-o')
xlabel('rotors')
ylabel('Pressure ratio')
end