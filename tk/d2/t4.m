clc;
clear;

x=rand(1:2);
i=input('+ - * /\n','s');
switch i
    case {'+'}
        display(x(1)+x(2));
    case {'-'}
        display(x(1)-x(2));
    case {'*'}
        display(x(1)*x(2));
    case {'/'}
        display(x(1)/x(2));
    otherwise
        display('wrong');
end

