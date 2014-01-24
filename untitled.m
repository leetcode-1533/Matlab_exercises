<<<<<<< HEAD



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
=======
 f = inline('x*y^2+y');
 
 ode45(f,[0 0.5],1);
>>>>>>> b1b2509edbc5f1190bafb4a1b10ba8ea0ea9ddc7
