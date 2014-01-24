screen = get(0,'ScreenSize');
w=screen(3);
h=screen(4);
fig=figure('Color',[1,1,1],'Name','Test','NumberTitle','off','MenuBar','none');

m=0;
pb1=uicontrol(fig,'Style','text','Position',[50,50,30,50],'String',num2str(m));

pb=uicontrol(fig,'Style','push','Position',[40,5,100,25],'String','test','Callback',['m=m+5,','set(pb1,''string'',num2str(m))']);


