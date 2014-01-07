function  Matlab_Fourier_Cycle 

clf;
syms a t
f=input('Input the function,the variables should be in the form of t\n')
T=input('Now input the cycle of it\n')

F=0;
r=linspace(0,T/2);
pl=subs(f,t,r);

subplot(2,1,1);
plot(r,pl,'Color',[1 0 0]);
hold on;

for i=1:1:6
    subplot(2,6,i+6);
    plot(r,pl,'Color',[1 0 0]);
    
    hold on;
end

for i=1:1:30
    d=f*sin(i*pi*a/(T/2));
    b=(2/(T/2))*int(d,a,0,T/2);
    F=F+b*sin(i*pi*t/(T/2));
if rem(i,5)==0
    input('Press Enter to continue');
    r=linspace(0,T/2);
    pl=subs(F,t,r);
    subplot(2,1,1);
    plot(r,pl,'Color',[0 i/30 0.999999]);
    hold on;
    subplot(2,6,(i/5)+6);
    plot(r,pl,'Color',[0 i/30 0.999999]);
    str=['stage=',num2str(i)];
    title(str);
end
end