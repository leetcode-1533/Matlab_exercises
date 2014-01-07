function a=cal3_2()

a=[];
b=[1,2,3,4];
m=0;
for i=b
    m=m+1;
    display(i);
    b(find(b==2))=[];
    display(b);
    display('21');
end
display(m);

% for i=11:1:99
%     a1=i;
%     a2=cal3_3(i);
%     if cal3_1(a1)==0&cal3_1(a2)==0
%         a=[a,i];
%     end
% end
% 
%    

