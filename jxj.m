function frame = jxj

fig = figure;
clf ;
x = 0 : 0.001 :1;
test = wfun(50 ,0);
han = plot(x,test);
frame(1) = getframe(fig);
i = 1;
for t = 0.005 : 0.005 : 2
    i = i + 1;
    test = wfun(50 ,t);
    set(han,'YData',test);
    drawnow;
    frame(i) = getframe(fig);
%     pause();       
end
