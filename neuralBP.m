clear all;
clc;
load data input output

%set the data from 0 - 1900 as traing data and the data from 1901 to 2000
%as testing data

array = randperm(2000);
input_train=input(array(1:1900),:)';
output_train=output(array(1:1900))';

input_test = input(array(1901:2000),:)';
output_test = output(array(1901:2000))';

[inputn,seed1] = mapminmax(input_train);
[outputn,seed2] = mapminmax(output_train);

net = newff(inputn,outputn,5);

net.trainParam.epochs = 100; % Learning times
net.trainParam.lr = 0.1;
net.trainParam.goal = 0.00004; %error rates
net.trainParam.showWindow = false;

net = train(net,inputn,outputn);

intest = mapminmax('apply',input_test,seed1);

y = sim(net,intest);

ytest = mapminmax('reverse',y,seed2);

plot(ytest,':og');
hold on ;
plot(output_test,'-*');


