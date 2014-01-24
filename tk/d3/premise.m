function bk=premise(num)

k=floor(sqrt(num));
for i=2:1:k
    if mod(num,i)==0
        bk=0;
        break;
    else
        bk=1;
    end
end
