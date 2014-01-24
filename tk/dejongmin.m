function[sol,eval]=dejongmin(sol,options)
numvar=size(sol,2)-1;
x=sol(1:numvar);
eval=-(sum(x,^2);