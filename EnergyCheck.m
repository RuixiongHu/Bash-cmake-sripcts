clear all
%%calculate energy distribution and predict groove size
p = 7.5; %energy in uj
omega = 8; %beam radius
r = 0.523; %reflectivity
alpha = 2.3; %absorptivity
pi = 3.1415926;
energyY = 2*p/pi/omega^2*(1-r)*alpha*exp(-alpha*0.3);
energyX =  2*p/pi/(omega^2)*(1-r)*alpha*exp(-2*(4.5^2)/(omega^2));
x = linspace(0,5,50);
%%z = linspace(0,1,1000);
%depth = linspace(0,1,50);
%for i=1:size(x,2)
 %   for j=1:size(z,2)
  %      energy(i,j)= 2*p/pi/(omega^2)*(1-r)*alpha*exp(-2*(x(i)^2)/(omega^2))*exp(-alpha*z(j));
  %  end
%%end

for i=1:size(x,2)
    syms soln;
     eqn = 0.042 == 2*p/pi/(omega^2)*(1-r)*alpha*exp(-2*(x(i)^2)/(omega^2))*exp(-alpha*soln); 
     depth(i) = - (solve(eqn,soln));
     if depth(i) > 0;
         depth(i)=0;
     end
end

%%surf(x,z,energy);
%{
for i=1:size(x,2)
        energy= 2*p/pi/(omega^2)*(1-r)*alpha*exp(-2*(x(i)^2)/(omega^2))*exp(-alpha*depth(i))
end
%}
plot(x,depth);

% briefly check the timstep requirement;
% this calculate the laser source for the mesh element at the very center of the beam, which has the highst fluence at its quadrature point 
% omega=6, absorptivity=2, mesh size = 0.2, requires dt=0.000125 = 125e-6
% reduce the calculated result slightly to ensure a successful calculation
qp=0.02; %mesh size/2
dt = 0.000125*1/6^2*2*exp(-2*0.1)/(1/omega^2*alpha*exp(-alpha*qp))