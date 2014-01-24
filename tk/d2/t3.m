t=input('working hours\n');
num=input('number\n');
standardS=84;
if t>120
    salary=(t-120)*1.15*standardS+t*standardS;
elseif t<60
    salary=t*standardS-700;
else
     salary=t*standardS;  
end
display(salary);

    