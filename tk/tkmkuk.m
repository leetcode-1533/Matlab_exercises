clc;
clear all;
a = imread('test.png');
b = im2bw(a);


c1={};
c2={};

for i=1:1:length(b)
    
disc = fix(rand*4);

switch disc 
    case 0
        switch b(i)
                case 1
                    c1{i}={c1;[0 0 ;0 0]};
                    c2{i}={c2;[0 0 ;0 0]};                   
                case 0
                    c1{i}={c1;[0 0 ;0 0]};
                    c2{i}={c2;[1 1 ;1 1]};
        end
end

end

%         
% 
% switch disc
%     
%     case 0
%         
%             switch b(i)
%                 case 1
%                     c1{i}={c1,[0 0 ;0 0]};
%                     c2{i}={c2,[0 0 ;0 0]};                   
%                 case 0
%                     c1{i}={c1,[0 0 ;0 0]};
%                     c2{i}={c2,[1 1 ;1 1]};
%             end
%     case 1
%                     
% 
% end
%     
%         
% end



imshow(b);