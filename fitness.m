function  error = fitness(tester,inputnum,hiddennum,outputnum,net,inputn,outputn)

w1 = tester(1:inputnum*hiddennum);
b1 = tester(1+inputnum*hiddennum:hiddennum+inputnum*hiddennum);
w2 = tester(1+hiddennum+inputnum*hiddennum: hiddennum+inputnum*hiddennum + hiddennum*outputnum);
b2 = tester(1+hiddennum+inputnum*hiddennum + hiddennum*outputnum:hiddennum+inputnum*hiddennum + hiddennum*outputnum+outputnum);

display(w1);
display(b1);
display(w2);
display(b2);

net.iw{1,1}=reshape(w1,hiddennum,inputnum);
net.lw{2,1}=reshape(w2,outputnum,hiddennum);
net.b{1}=reshape(b1,hiddennum,1);
net.b{2}=reshape(b2,outputnum,1);

net.trainParam.epochs=20;
net.trainParam.lr = 0.1;
net.trainParam.goal = 0.00001;
net.trainParam.showWindow = 0;

net = train(net,inputn,outputn);

y = sim(net,inputn);

error = sum(abs(y-outputn));

