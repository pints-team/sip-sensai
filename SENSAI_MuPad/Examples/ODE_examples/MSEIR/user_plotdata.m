function [iplot,ilist,klist]=user_plotdata

iplot.sensitivities = 0;
iplot.elasticities = 1;
iplot.dxdp.true = 0;
iplot.dxdp.var = 0;
iplot.dxdp.param = 0;
iplot.dxdz = 0;
iplot.dqdp = 1;
iplot.dqdz = 0;
iplot.cp = 0;

ilist(1) = 1;
ilist(2) = 2;
ilist(3) = 3;
ilist(4) = 4;
ilist(5) = 5;

klist(1) = 1;
klist(2) = 2;
klist(3) = 3;
klist(4) = 4;
klist(5) = 5;
klist(6) = 6;
klist(7) = 7;
klist(8) = 8;
klist(9) = 9;
klist(10) = 10;

end