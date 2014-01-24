screen = get(0,'ScreenSize');
w=screen(3);
h=screen(4);
fig=figure('Color',[1,1,1],'Name','Test','NumberTitle','off','MenuBar','none');

m=1;
t=0:0.0002*pi:2*pi;
y=cos(m*t);

hl=plot(t,y);

fh1=uicontrol(fig,'Style','slider','Value',240,'Position',[20 20 200 20],'Min',200,'Max',400,'SliderStep',[1 1]./(400-200),'Callback',['set(fh11,''String'',num2str(get(fh1,''Value''))),','m=get(fh1,''Value''),','plot(t,cos(m*t))']);
% fh2=uicontrol(gcf,'Style','slider','Position',[200,-30,120,50],'Callback','set(fh22,''String'',num2str(get(fh2,''Value'')))');

fh11=uicontrol(fig,'Style','text','Position',[0,-30,30,50],'String',num2str(get(fh1,'Value')));
% fh22=uicontrol(fig,'Style','text','Position',[150,-30,30,50],'String',num2str(get(fh2,'Value')));