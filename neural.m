clear all;
clc;
load data input output;
pc = 0.25;
pm = 0.1;
sizepop = 10;
inputnum = 2;
hiddennum = 5;
outputnum = 1;

array = randperm(2000);
input_train = input(:,array(1:1900));
output_train = output(array(1:1900));



net = newff(input,output,5);
% for i = 1: sizepop
%     seed = rand(1,21);
%     fit = fitness
%     