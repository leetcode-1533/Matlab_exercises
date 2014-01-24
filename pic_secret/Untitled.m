clc;
clear all;
a = imread('mk.png');
b = im2bw(a);


c1={};
c2={};
[x,y]=size(b);

for i=1:1:x*y
    
disc = fix(rand*6);

switch disc 
    case 0
        switch b(i)
                case 0
                    c1=[c1,[1,1;0,0]];
                    c2=[c2,[1,1;0,0]];                  
                case 1
                    c1=[c1,[1,1;0,0]];
                    c2=[c2,[0,0;1,1]];
        end
    case 1
        switch b(i)
            case 0
               c1 = [c1,[1,0;1,0]];
               c2 = [c2,[1,0;1,0]];
            case 1
                c1= [c1,[1,0;1,0]];
                c2 = [c2,[0,1;0,1]];
        end
    case 2
        switch b(i)
            case 0
                c1 = [c1,[1,0;0,1]];
                c2 = [c2,[1,0;0,1]];
            case 1
                c1 = [c1,[1,0;0,1]];
                c2 = [c2,[0,1;1,0]];
        end
    case 3
        switch b(i)
            case 0
                c1 = [c1,[0,1;0,1]];
                c2 = [c2,[0,1;0,1]];
            case 1
                c1 = [c1,[0,1;0,1]];
                c2 = [c2,[1,0;1,0]];
        end
    case 4
        switch b(i)
            case 0
                c1 = [c1,[0,0;1,1]];
                c2 = [c2,[0,0;1,1]];
            case 1
                c1 = [c1,[0,0;1,1]];
                c2 = [c2,[1,1;0,0]];
        end
    case 5
        switch b(i)
            case 0
                c1 = [c1,[0,1;1,0]];
                c2 = [c2,[0,1;1,0]];
            case 1
                c1 = [c1,[0,1;1,0]];
                c2 = [c2,[1,0;0,1]];
        end


               
                
end

end
r_a=reshape(c1,x,y);
r_b=reshape(c2,x,y);

c_a=cell2mat(r_a);
c_b=cell2mat(r_b);
% figure 1
   imshow(c_a);
%    figure 2
 imshow(c_b);
%  imshow(b);