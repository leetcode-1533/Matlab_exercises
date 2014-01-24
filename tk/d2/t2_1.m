x=input('Prompt');
switch fix(x/10)
    case num2cell(9:10)
        display('A');
    case {8}
        display('B');
    case {7}
        display('C');
    case {6}
        display('D');
    case num2cell(1:5);
        display('E');
    otherwise
        display('Wrong');
end
