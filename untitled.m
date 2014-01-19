


net = newff(input_train,output_train,5);

net.trainParam.epochs = 100; % Learning times
net.trainParam.lr = 0.1;
net.trainParam.goal = 0.00004; %error rates
net.trainParam.showWindow = false;


net = train(net,input_train,output_train);

ytk = sim(net,input_test);

ytest = mapminmax('reverse',ytk,oused);


hold on ; 
plot(ytest,'*');