clear;
st=0;


    for i=1:1:100
        t=1:1:i;
        tk=1./(2.*t-1);
        st=sum(tk);
        display(st);
        if st > 3
            break
        end       
    end
    display(t(end)-1)
    
     for i=[100,1000,10000]
        t=1:1:i;
        tk=1./(2.*t-1);
        st=sum(tk);
        display(st);
     end



