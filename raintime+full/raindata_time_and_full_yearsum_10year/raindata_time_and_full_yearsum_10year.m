clear;clc;close('all')

%讀取檔案
rainfull = xlsread('rainfull.xlsx');
raintime = xlsread('raintime.xlsx');

year = rainfull(2:77,1);

full_sum = rainfull(2:77,14);             %年當中每個月總和(年總和)
time_sum = raintime(2:77,14);             %年當中每個月總和(年總和)
full_sumaverage = rainfull(74,14);        %年總和求出的平均(年總和)
time_sumaverage = raintime(74,14);        %年總和求出的平均(年總和)
% 
% %%=========================================================================
% %%=========================================================================
% 
% 
% %%time+full折線圖
% %figure(1)
% %plot(year,time_sum,'r','Marker','.');
% %ylabel('降雨時數(hr)')
% %yline(time_sumaverage,'--r')
% %hold on
% %plot(year,full_sum,'b','Marker','.');
% %axis([1947,2022,1000,6000])
% %yline(full_sumaverage,'--b')
% %title('降雨時數與降雨量1947~2022');xlabel('時間(Year)');ylabel('降雨量(mm)')
% 
% %%設定重要事件
% %xline(1977,'-',{'協和發電廠','第1、2機組商業運轉'})
% %xline(1980,'-',{'協和發電廠','第3機組商業運轉'})
% %xline(1985,'-',{'協和發電廠','第4機組商業運轉'})
% %xline(2019,'-',{'協和發電廠','第1、2機組除役'})
% 
% %xline(1961,'-',{'國道1號(原麥帥公路)','興建基北路段'})
% %xline(1971,'-',{'1.協和發電廠興建','2.國道1號興建'})
% %xline(1978,'-',{'國道1號全線通車(基隆-高雄)'})
% 
% %xline(1987,'-',{'國道3號興建'})
% %xline(2004,'-',{'國道3號通車'})
% 
% %legend({'降雨時數年總和','降雨時數平均','降雨量年總和','降雨量平均'},'Location','northeast','NumColumns',2)
% 
% %--------------------------------------------------------------------------
% 
% figure(1)
% plot(year,time_sum,'r','Marker','.');
% ylabel('降雨時數(hr)')
% yline(time_sumaverage,'r')
% hold on
% plot(year,full_sum,'b','Marker','.');
% yline(full_sumaverage,'b')
% axis([1947,1956,1000,6000])
% title('1947~1956降雨時數(紅)與降雨量(藍)年總和');xlabel('時間(Year)');ylabel('降雨量(mm)')
% 
% %saveas(gcf,'rainfull_and_raintime_1947~1956','jpg')
% %--------------------------------------------------------------------------
% 
% figure(2)
% plot(year,time_sum,'r','Marker','.');
% ylabel('降雨時數(hr)')
% yline(time_sumaverage,'r')
% hold on
% plot(year,full_sum,'b','Marker','.');
% yline(full_sumaverage,'b')
% axis([1957,1966,1000,6000])
% 
% xline(1961,'-c',{'國道1號(原麥帥公路)興建基北路段'})
% title('1957~1966降雨時數(紅)與降雨量(藍)年總和');xlabel('時間(Year)');ylabel('降雨量(mm)')
% 
% %saveas(gcf,'rainfull_and_raintime_1957~1966','jpg')
% %--------------------------------------------------------------------------
% 
% figure(3)
% plot(year,time_sum,'r','Marker','.');
% ylabel('降雨時數(hr)')
% yline(time_sumaverage,'r')
% hold on
% plot(year,full_sum,'b','Marker','.');
% yline(full_sumaverage,'b')
% axis([1967,1976,1000,6000])
% title('1967~1976降雨時數(紅)與降雨量(藍)年總和');xlabel('時間(Year)');ylabel('降雨量(mm)')
% 
% %saveas(gcf,'rainfull_and_raintime_1967~1976','jpg')
% %--------------------------------------------------------------------------
% 
% figure(4)
% plot(year,time_sum,'r','Marker','.');
% ylabel('降雨時數(hr)')
% yline(time_sumaverage,'r')
% hold on
% plot(year,full_sum,'b','Marker','.');
% yline(full_sumaverage,'b')
% axis([1977,1986,1000,6000])
% 
% xline(1977,'-g',{'協和發電廠第1、2機組商業運轉'})
% xline(1980,'-g',{'協和發電廠第3機組商業運轉'})
% xline(1985,'-g',{'協和發電廠第4機組商業運轉'})
% 
% title('1977~1986降雨時數(紅)與降雨量(藍)年總和');xlabel('時間(Year)');ylabel('降雨量(mm)')
% 
% %saveas(gcf,'rainfull_and_raintime_1977~1986','jpg')
% %--------------------------------------------------------------------------
% 
% figure(5)
% plot(year,time_sum,'r','Marker','.');
% ylabel('降雨時數(hr)')
% yline(time_sumaverage,'r','LineWidth',1.5)
% hold on
% plot(year,full_sum,'b','Marker','.');
% yline(full_sumaverage,'b','LineWidth',1.5)
% axis([1987,1996,1000,6000])
% 
% xline(1987,'-c',{'國道3號興建'})
% title('1987~1996降雨時數(紅)與降雨量(藍)年總和');xlabel('時間(Year)');ylabel('降雨量(mm)')
% 
% saveas(gcf,'rainfull_and_raintime_1987~1996','jpg')
% %--------------------------------------------------------------------------
% 
% figure(6)
% plot(year,time_sum,'r','Marker','.');
% ylabel('降雨時數(hr)')
% yline(time_sumaverage,'r','LineWidth',1.5)
% hold on
% plot(year,full_sum,'b','Marker','.');
% yline(full_sumaverage,'b','LineWidth',1.5)
% axis([1997,2006,1000,6000])
% title('1997~2006降雨時數(紅)與降雨量(藍)年總和');xlabel('時間(Year)');ylabel('降雨量(mm)')
% 
% %saveas(gcf,'rainfull_and_raintime_1997~2006','jpg')
% %--------------------------------------------------------------------------
% 
% figure(7)
% plot(year,time_sum,'r','Marker','.');
% ylabel('降雨時數(hr)')
% yline(time_sumaverage,'r','LineWidth',1.5)
% hold on
% plot(year,full_sum,'b','Marker','.');
% yline(full_sumaverage,'b','LineWidth',1.5)
% axis([2007,2016,1000,6000])
% title('2007~2016降雨時數(紅)與降雨量(藍)年總和');xlabel('時間(Year)');ylabel('降雨量(mm)')
% 
% %saveas(gcf,'rainfull_and_raintime_2007~2016','jpg')
% %--------------------------------------------------------------------------
% 
% figure(8)
% plot(year,time_sum,'r','Marker','.');
% ylabel('降雨時數(hr)')
% yline(time_sumaverage,'r','LineWidth',1.5)
% hold on
% plot(year,full_sum,'b','Marker','.');
% yline(full_sumaverage,'b','LineWidth',1.5)
% axis([2017,2022,1000,6000])
% xticks([2017 2018 2019 2020 2021 2022])
% 
% xline(2019,'-g',{'協和發電廠第1、2機組除役'})
% title('降雨時數與降雨量2017~2022');xlabel('時間(Year)');ylabel('降雨量(mm)')

%saveas(gcf,'rainfull_and_raintime_2017~2022','jpg')
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------

figure(9)
subplot(4,2,1)
plot(year,time_sum,'LineWidth',2,'Color','r','Marker','.','MarkerSize',10);
yline(time_sumaverage,'r','LineWidth',1.5)
hold on
plot(year,full_sum,'LineWidth',2,'Color','b','Marker','.','MarkerSize',10);
yline(full_sumaverage,'b','LineWidth',1.5)
axis([1947,1956,1000,6000])
title('1947~1956');xlabel('時間(年)');ylabel('總量(小時和毫米)')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(4,2,2)
plot(year,time_sum,'LineWidth',2,'Color','r','Marker','.','MarkerSize',10);
yline(time_sumaverage,'r','LineWidth',1.5)
hold on
plot(year,full_sum,'LineWidth',2,'Color','b','Marker','.','MarkerSize',10);
yline(full_sumaverage,'b','LineWidth',1.5)
axis([1957,1966,1000,6000])
title('1957~1966');xlabel('時間(年)');ylabel('總量(小時和毫米)')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(4,2,3)
plot(year,time_sum,'LineWidth',2,'Color','r','Marker','.','MarkerSize',10);
yline(time_sumaverage,'r','LineWidth',1.5)
hold on
plot(year,full_sum,'LineWidth',2,'Color','b','Marker','.','MarkerSize',10);
yline(full_sumaverage,'b','LineWidth',1.5)
axis([1967,1976,1000,6000])
title('1967~1976');xlabel('時間(年)');ylabel('總量(小時和毫米)')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(4,2,4)
plot(year,time_sum,'LineWidth',2,'Color','r','Marker','.','MarkerSize',10);
yline(time_sumaverage,'r','LineWidth',1.5)
hold on
plot(year,full_sum,'LineWidth',2,'Color','b','Marker','.','MarkerSize',10);
yline(full_sumaverage,'b','LineWidth',1.5)
axis([1977,1986,1000,6000])
xline(1977,'k',{'1、2號機組運轉'},'FontWeight','bold','LineWidth',2)
xline(1980,'k',{'3號機組運轉'},'FontWeight','bold','LineWidth',2)
xline(1985,'k',{'4號機組運轉'},'FontWeight','bold','LineWidth',2)
title('1977~1986');xlabel('時間(年)');ylabel('總量(小時和毫米)')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(4,2,5)
plot(year,time_sum,'LineWidth',2,'Color','r','Marker','.','MarkerSize',10);
yline(time_sumaverage,'r','LineWidth',1.5)
hold on
plot(year,full_sum,'LineWidth',2,'Color','b','Marker','.','MarkerSize',10);
yline(full_sumaverage,'b','LineWidth',1.5)
axis([1987,1996,1000,6000])
title('1987~1996');xlabel('時間(年)');ylabel('總量(小時和毫米)')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(4,2,6)
plot(year,time_sum,'LineWidth',2,'Color','r','Marker','.','MarkerSize',10);
yline(time_sumaverage,'r','LineWidth',1.5)
hold on
plot(year,full_sum,'LineWidth',2,'Color','b','Marker','.','MarkerSize',10);
yline(full_sumaverage,'b','LineWidth',1.5)
axis([1997,2006,1000,6000])
title('1997~2006');xlabel('時間(年)');ylabel('總量(小時和毫米)')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(4,2,7)
plot(year,time_sum,'LineWidth',2,'Color','r','Marker','.','MarkerSize',10);
yline(time_sumaverage,'r','LineWidth',1.5)
hold on
plot(year,full_sum,'LineWidth',2,'Color','b','Marker','.','MarkerSize',10);
yline(full_sumaverage,'b','LineWidth',1.5)
axis([2007,2016,1000,6000])
title('2007~2016');xlabel('時間(年)');ylabel('總量(小時和毫米)')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(4,2,8)
plot(year,time_sum,'LineWidth',2,'Color','r','Marker','.','MarkerSize',10);
yline(time_sumaverage,'r','LineWidth',1.5)
hold on
plot(year,full_sum,'LineWidth',2,'Color','b','Marker','.','MarkerSize',10);
yline(full_sumaverage,'b','LineWidth',1.5)
axis([2017,2022,1000,6000])
xticks([2017 2018 2019 2020 2021 2022])

xline(2020,'k',{'除役'},'FontWeight','bold','LineWidth',2)
title('2017~2022');xlabel('時間(年)');ylabel('總量(小時和毫米)')

set(gcf,'position',[500 500 1000 1000])
sgtitle('年總降雨時數與降雨量折線圖')
saveas(gcf,'rainfull_and_raintime_all','jpg')