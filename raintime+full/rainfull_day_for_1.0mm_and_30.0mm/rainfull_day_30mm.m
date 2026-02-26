clear;clc;close('all')

%%讀取檔案
rainfull_day = xlsread('rainfull_day_30.0mm.xlsx');

year = rainfull_day(29:104,1);
month = rainfull_day(1,2:13);
%rainfull_day1mm = rainfull_day(29:76,2:13);

%%month
month_1 = rainfull_day(29:104,2);
month_2 = rainfull_day(29:104,3);
month_3 = rainfull_day(29:104,4);
month_4 = rainfull_day(29:104,5);
month_5 = rainfull_day(29:104,6);
month_6 = rainfull_day(29:104,7);
month_7 = rainfull_day(29:104,8);
month_8 = rainfull_day(29:104,9);
month_9 = rainfull_day(29:104,10);
month_10 = rainfull_day(29:104,11);
month_11 = rainfull_day(29:104,12);
month_12 = rainfull_day(29:104,13);

%%average
average_1 = rainfull_day(105,2);
average_2 = rainfull_day(105,3);
average_3 = rainfull_day(105,4);
average_4 = rainfull_day(105,5);
average_5 = rainfull_day(105,6);
average_6 = rainfull_day(105,7);
average_7 = rainfull_day(105,8);
average_8 = rainfull_day(105,9);
average_9 = rainfull_day(105,10);
average_10 = rainfull_day(105,11);
average_11 = rainfull_day(105,12);
average_12 = rainfull_day(105,13);

%==========================================================================
%==========================================================================

%%折線圖
% figure(1)
% plot(year,month_1,'LineWidth',1,'Color','b','Marker','.');
% yline(average_1,'-k')
% axis([1947,2022,0,15])
% xline(1977,'-g','LineWidth',2)                               %{'協和發電廠第1機組商業運轉'} 
% title('雨日 > 30.0mm(1月)');ylabel('天數(日)');xlabel('時間(time)')
% %saveas(gcf,'rainfull_day_30mm_(1月)','jpg')
% 
% figure(2)
% plot(year,month_2,'LineWidth',1,'Color','b','Marker','.');
% yline(average_2,'-k')
% axis([1947,2022,0,15])
% title('雨日 > 30.0mm(2月)');ylabel('天數(日)');xlabel('時間(time)')
% %saveas(gcf,'rainfull_day_30mm_(2月)','jpg')
% 
% figure(3)
% plot(year,month_3,'LineWidth',1,'Color','b','Marker','.');
% yline(average_3,'-k')
% axis([1947,2022,0,15])
% xline(1980,'-g','LineWidth',2)                             %{'協和發電廠第3機組商業運轉'}
% title('雨日 > 30.0mm(3月)');ylabel('天數(日)');xlabel('時間(time)')
% %saveas(gcf,'rainfull_day_30mm_(3月)','jpg')
% 
% figure(4)
% plot(year,month_4,'LineWidth',1,'Color','b','Marker','.');
% yline(average_4,'-k')
% axis([1947,2022,0,15])
% title('雨日 > 30.0mm(4月)');ylabel('天數(日)');xlabel('時間(time)')
% %saveas(gcf,'rainfull_day_30mm_(4月)','jpg')
% 
% figure(5)
% plot(year,month_5,'LineWidth',1,'Color','b','Marker','.');
% yline(average_5,'-k')
% axis([1947,2022,0,15])
% xline(1961,'-c','LineWidth',2)                       %{'國道1號(原{麥帥公路興}建基北路段)'}
% title('雨日 > 30.0mm(5月)');ylabel('天數(日)');xlabel('時間(time)')
% %saveas(gcf,'rainfull_day_30mm_(5月)','jpg')
% 
% figure(6)
% plot(year,month_6,'LineWidth',1,'Color','b','Marker','.');
% yline(average_6,'-k')
% axis([1947,2022,0,15])
% xline(1987,'-c','LineWidth',2)                              %{'國道3號興建'}
% title('雨日 > 30.0mm(6月)');ylabel('天數(日)');xlabel('時間(time)')
% %saveas(gcf,'rainfull_day_30mm_(6月)','jpg')
% 
% figure(7)
% plot(year,month_7,'LineWidth',1,'Color','b','Marker','.');
% yline(average_7,'-k')
% axis([1947,2022,0,15])
% title('雨日 > 30.0mm(7月)');ylabel('天數(日)');xlabel('時間(time)')
% %saveas(gcf,'rainfull_day_30mm_(7月)','jpg')
% 
% figure(8)
% plot(year,month_8,'LineWidth',1,'Color','b','Marker','.');
% yline(average_8,'-k')
% axis([1947,2022,0,15])
% xline(1971,'-c','LineWidth',2)                            %{'國道1號興建'}
% xline(1985,'-g','LineWidth',2)                            %{'協和發電廠第4機組商業運轉'}
% title('雨日 > 30.0mm(8月)');ylabel('天數(日)');xlabel('時間(time)')
% %saveas(gcf,'rainfull_day_30mm_(8月)','jpg')
% 
% figure(9)
% plot(year,month_9,'LineWidth',1,'Color','b','Marker','.');
% yline(average_9,'-k')
% axis([1947,2022,0,15])
% title('雨日 > 30.0mm(9月)');ylabel('天數(日)');xlabel('時間(time)')
% %saveas(gcf,'rainfull_day_30mm_(9月)','jpg')
% 
% figure(10)
% plot(year,month_10,'LineWidth',1,'Color','b','Marker','.');
% yline(average_10,'-k')
% axis([1947,2022,0,15])
% title('雨日 > 30.0mm(10月)');ylabel('天數(日)');xlabel('時間(time)')
% %saveas(gcf,'rainfull_day_30mm_(10月)','jpg')
% 
% figure(11)
% plot(year,month_11,'LineWidth',1,'Color','b','Marker','.');
% yline(average_11,'-k')
% axis([1947,2022,0,15])
% title('雨日 > 30.0mm(11月)');ylabel('天數(日)');xlabel('時間(time)')
% %saveas(gcf,'rainfull_day_30mm_(11月)','jpg')
% 
% figure(12)
% plot(year,month_12,'LineWidth',1,'Color','b','Marker','.');
% yline(average_12,'-k')
% axis([1947,2022,0,15])
% xline(1977,'-g','LineWidth',2)               %{'協和發電廠第2機組商業運轉'}
% xline(2019,'-g','LineWidth',2)               %{'協和發電廠第1和2機組除役'}
% title('雨日 > 30.0mm(12月)');ylabel('天數(日)');xlabel('時間(time)')
%saveas(gcf,'rainfull_day_30mm_(12月)','jpg')

%==========================================================================
%==========================================================================

%%折線圖(all)
figure(13)
subplot(6,2,1);
plot(year,month_1,'LineWidth',2,'Color','b','Marker','.','MarkerSize',10);
yline(average_1,'-k','LineWidth',1.5)
axis([1947,2022,0,15])
xline(1977,'k','LineWidth',2)                               %{'協和發電廠第1機組商業運轉'} 
title('1月');xlabel('時間(年)');ylabel('日數(天)')

subplot(6,2,2);
plot(year,month_2,'LineWidth',2,'Color','b','Marker','.','MarkerSize',10);
yline(average_2,'-k','LineWidth',1.5)
axis([1947,2022,0,15])
title('2月');xlabel('時間(年)');ylabel('日數(天)')

subplot(6,2,3);
plot(year,month_3,'LineWidth',2,'Color','b','Marker','.','MarkerSize',10);
yline(average_3,'-k','LineWidth',1.5)
axis([1947,2022,0,15])
xline(1980,'k','LineWidth',2)                             %{'協和發電廠第3機組商業運轉'}
title('3月');xlabel('時間(年)');ylabel('日數(天)')

subplot(6,2,4);
plot(year,month_4,'LineWidth',2,'Color','b','Marker','.','MarkerSize',10);
yline(average_4,'-k','LineWidth',1.5)
axis([1947,2022,0,15])
title('4月');xlabel('時間(年)');ylabel('日數(天)')

subplot(6,2,5);
plot(year,month_5,'LineWidth',2,'Color','b','Marker','.','MarkerSize',10);
yline(average_5,'-k','LineWidth',1.5)
axis([1947,2022,0,15])
title('5月');xlabel('時間(年)');ylabel('日數(天)')

subplot(6,2,6);
plot(year,month_6,'LineWidth',2,'Color','b','Marker','.','MarkerSize',10);
yline(average_6,'-k','LineWidth',1.5)
axis([1947,2022,0,15])
title('6月');xlabel('時間(年)');ylabel('日數(天)')

subplot(6,2,7);
plot(year,month_7,'LineWidth',2,'Color','b','Marker','.','MarkerSize',10);
yline(average_7,'-k','LineWidth',1.5)
axis([1947,2022,0,15])
title('7月');xlabel('時間(年)');ylabel('日數(天)')

subplot(6,2,8);
plot(year,month_8,'LineWidth',2,'Color','b','Marker','.','MarkerSize',10);
yline(average_8,'-k','LineWidth',1.5)
axis([1947,2022,0,15])
xline(1985,'k','LineWidth',2)                            %{'協和發電廠第4機組商業運轉'}
title('8月');xlabel('時間(年)');ylabel('日數(天)')

subplot(6,2,9);
plot(year,month_9,'LineWidth',2,'Color','b','Marker','.','MarkerSize',10);
yline(average_9,'-k','LineWidth',1.5)
axis([1947,2022,0,15])
title('9月');xlabel('時間(年)');ylabel('日數(天)')

subplot(6,2,10);
plot(year,month_10,'LineWidth',2,'Color','b','Marker','.','MarkerSize',10);
yline(average_10,'-k','LineWidth',1.5)
axis([1947,2022,0,15])
title('10月');xlabel('時間(年)');ylabel('日數(天)')

subplot(6,2,11);
plot(year,month_11,'LineWidth',2,'Color','b','Marker','.','MarkerSize',10);
yline(average_11,'-k','LineWidth',1.5)
axis([1947,2022,0,15])
title('11月');xlabel('時間(年)');ylabel('日數(天)')

subplot(6,2,12);
plot(year,month_12,'LineWidth',2,'Color','b','Marker','.','MarkerSize',10);
yline(average_12,'-k','LineWidth',1.5)
axis([1947,2022,0,15])
xline(1977,'k','LineWidth',2)               %{'協和發電廠第2機組商業運轉'}
xline(2019,'k','LineWidth',2)               %{'協和發電廠第1和2機組除役'}
title('12月');xlabel('時間(年)');ylabel('日數(天)')

set(gcf,'position',[500 500 2000 2000])
sgtitle('降雨量大於30.0mm的日數折線圖')
saveas(gcf,'rainfull_day_30mm_(all)','jpg')
%--------------------------------------------------------------------------