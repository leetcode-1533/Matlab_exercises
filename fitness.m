function  error = fitness(tester,inputnum,hiddennum,outputnum,net,inputn,outputn)
%This is function using BP Neural Network to judge the fitness of a
%function
w1 = tester(1:inputnum*hiddennum);
b1 = tester(1+inputnum*hiddennum:hiddennum+inputnum*hiddennum);
w2 = tester(1+hiddennum+inputnum*hiddennum: hiddennum+inputnum*hiddennum + hiddennum*outputnum);
b2 = tester(1+hiddennum+inputnum*hiddennum + hiddennum*outputnum:hiddennum+inputnum*hiddennum + hiddennum*outputnum+outputnum);


net.iw{1,1}=reshape(w1,hiddennum,inputnum);
net.lw{2,1}=reshape(w2,outputnum,hiddennum);
net.b{1}=reshape(b1,hiddennum,1);
net.b{2}=b2;

net.trainParam.epochs=20;
net.trainParam.lr = 0.1;
net.trainParam.goal = 0.00001;
net.trainParam.showWindow = 0;

net = train(net,inputn,outputn);

y = sim(net,inputn);

error = sum(abs(y-outputn));

% function error = fun(x,inputnum,hiddennum,outputnum,net,inputn,outputn)
% %???????????
% %x          input     ??
% %inputnum   input     ??????
% %outputnum  input     ??????
% %net        input     ??
% %inputn     input     ??????
% %outputn    input     ??????
% 
% %error      output    ??????
% 
% %??
% w1=x(1:inputnum*hiddennum);
% B1=x(inputnum*hiddennum+1:inputnum*hiddennum+hiddennum);
% w2=x(inputnum*hiddennum+hiddennum+1:inputnum*hiddennum+hiddennum+hiddennum*outputnum);
% B2=x(inputnum*hiddennum+hiddennum+hiddennum*outputnum+1:inputnum*hiddennum+hiddennum+hiddennum*outputnum+outputnum);
% 
% net=newff(inputn,outputn,hiddennum);
% %??????
% net.trainParam.epochs=20;
% net.trainParam.lr=0.1;
% net.trainParam.goal=0.00001;
% net.trainParam.show=100;
% net.trainParam.showWindow=0;
%  
% %??????
% net.iw{1,1}=reshape(w1,hiddennum,inputnum);
% net.lw{2,1}=reshape(w2,outputnum,hiddennum);
% net.b{1}=reshape(B1,hiddennum,1);
% net.b{2}=B2;
% 
% %????
% net=train(net,inputn,outputn);
% 
% an=sim(net,inputn);
% 
% error=sum(abs(an-outputn));

