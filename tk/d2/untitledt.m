t=randn(5,6);
display(t(2,:));
n=input('n');
switch (n)
    case {1}
        display(t(1,:));
    case {2}
        display(t(2,:));
    case {3}       
        display(t(3,:));
    case {4}
        display(t(4,:));
    case {5}
        display(t(5,:));
    otherwise
        diplay(t(5,:));
        display('wrong');
end
