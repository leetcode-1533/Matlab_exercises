clear all;
clc;
pc = 0.25;
pm = 0.1;
sizepop = 10;
inputnum = 2;
hiddennum = 5;
outputnum = 1;


for i = 1: sizepop
    seed = rand(1,21);
    fit = fitness(seed,inputnum,hiddennum,outputnum,net
    