for i=[-5,-3,1,2,2.5,3,5]
if i<0 & i~=3
    y=i^2+i-6;
elseif i<5 & i~=2 & i~=3 
    y=i^2-5*i+6;
else
    y=i^2-i-1;
end
display(i);display(y);
end
