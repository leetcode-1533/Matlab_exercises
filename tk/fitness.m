function[sol,eval]=fitness(sol,options)
x=sol(1);
eval=x+10*sin(5*x)+7*cos(4*x); 