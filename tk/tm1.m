screen = get(0,'ScreenSize');
w=screen(3);
h=screen(4);
figure('Color',[1,1,1],'Name','Test','NumberTitle','off','MenuBar','none');
hpf=uimenu(gcf,'Label','&File');
hpn=uimenu(hpf,'Label','New');
hpnn=uimenu(hpn,'Label','New Item');
hpo=uimenu(hpf,'Label','Open');
hpoo=uimenu(hpo,'Label','Open Item');
hps=uimenu(hpf,'Label','Save');
hpss=uimenu(hps,'Label','Save Item');
hpe=uimenu(hpf,'Label','Exit','Callback','close(gcf)');
set(hps,'Enable','off');

hph=uimenu(gcf,'Label','&Help');
hphh=uimenu(hph,'Label','About...','Callback','set(hps,''Enable'',''on'')');
% set(hphh,'Callback',set(hps,'Enable','on'));