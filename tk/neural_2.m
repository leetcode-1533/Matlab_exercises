clc;
clear;

load data input output;

k=rand(1,2000);
[m,n]=sort(k);

input_train=input(n(1:1900),:)';
output_train=output(n(1:1900));
input_test=input(n(1901:2000),:)';
output_test=output(n(1901:2000));

[inputn,inputps]=mapminmax(input_train);
[outputn,outputps]=mapminmax(output_train);


net=newff(inputn,outputn,5);

net.trainParam.epochs=100;
net.trainParam.goal=0.00001;
net.trainParam.lr=0.1;


net=train(net,inputn,outputn);

inputn_test=mapminmax('apply',input_test,inputps);

an=sim(net,inputn_test);

plot(an)



