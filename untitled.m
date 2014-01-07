 f = inline('x*y^2+y');
 
 ode45(f,[0 0.5],1);