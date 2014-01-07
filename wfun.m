function wtx =  wfun(n,t)

x = 0 : 0.001 : 1;
a =1 ;
wtx = 0;
for I = 1 : n
    if I ~= 7
        wtx = wtx + 1 * ( ( sin(pi*(7-I)*4/7) - sin(pi*(7-I)*3/7)) ...
            /(7-I)/pi-(sin(pi*(7+I)*4/7)-sin(pi*(7+I)*3/7))/(7+I)/pi)*cos(I*pi*a*t).*sin(I*pi*x);
    else
        wtx = wtx +1/7*cos(I*pi*a*t).*sin(I*pi*x);
    end
end

        