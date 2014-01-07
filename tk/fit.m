
function[sol,eval]=fitness(sol,options)
numv=size(sol,2)-1;
x=sol(1:numv);
eval=f(x);
eval=-eval; 