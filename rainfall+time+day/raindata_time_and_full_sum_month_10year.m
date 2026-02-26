clear;clc;close('all')

%讀取檔案
raintime = xlsread('raintime.xlsx');
rainfull = xlsread('rainfull.xlsx');

year = raintime(:,1);
years = rainfull(28:103,1);

%%raintime
raintime_1 = raintime(:,2);
raintime_2 = raintime(:,3);
raintime_3 = raintime(:,4);
raintime_4 = raintime(:,5);
raintime_5 = raintime(:,6);
raintime_6 = raintime(:,7);
raintime_7 = raintime(:,8);
raintime_8 = raintime(:,9);
raintime_9 = raintime(:,10);
raintime_10 = raintime(:,11);
raintime_11 = raintime(:,12);
raintime_12 = raintime(:,13);

%%rainfull
rainfull_1 = rainfull(28:103,2);
rainfull_2 = rainfull(28:103,3);
rainfull_3 = rainfull(28:103,4);
rainfull_4 = rainfull(28:103,5);
rainfull_5 = rainfull(28:103,6);
rainfull_6 = rainfull(28:103,7);
rainfull_7 = rainfull(28:103,8);
rainfull_8 = rainfull(28:103,9);
rainfull_9 = rainfull(28:103,10);
rainfull_10 = rainfull(28:103,11);
rainfull_11 = rainfull(28:103,12);
rainfull_12 = rainfull(28:103,13);

%%=========================================================================
%%=========================================================================

%%[time+full]_month
figure(1)
subplot(3,1,1)
yyaxis left
plot(year,raintime_1,'LineWidth',3);
axis([1947,2022,0,600])
ylabel('降雨時數(hr)')
yline(274.209,'--b',{'降雨時數總平均'})
hold on
yyaxis right
plot(years,rainfull_1,'LineWidth',3);
axis([1947,2022,0,1500])
yline(334.739,'-.r',{'降雨量總平均'})
title('降雨時數與降雨量1947~2022(1月)');xlabel('時間(Year)');ylabel('降雨量(mm)')

xline(1977,'-g',{'協和發電廠第1機組商業運轉'})

%--------------------------------------------------------------------------

subplot(3,1,2)
yyaxis left
plot(year,raintime_2,'LineWidth',3);
axis([1947,2022,0,600])
ylabel('降雨時數(hr)')
yline(278.281,'--b',{'降雨時數總平均'})
hold on
yyaxis right
plot(years,rainfull_2,'LineWidth',3);
axis([1947,2022,0,1500])
yline(353.334,'-.r',{'降雨量總平均'})
title('降雨時數與降雨量1947~2022(2月)');xlabel('時間(Year)');ylabel('降雨量(mm)')

%--------------------------------------------------------------------------

subplot(3,1,3)
yyaxis left
plot(year,raintime_3,'LineWidth',3);
axis([1947,2022,0,600])
ylabel('降雨時數(hr)')
yline(239.894,'--b',{'降雨時數總平均'})
hold on
yyaxis right
plot(years,rainfull_3,'LineWidth',3);
axis([1947,2022,0,1500])
yline(295.389,'-.r',{'降雨量總平均'})
title('降雨時數與降雨量1947~2022(3月)');xlabel('時間(Year)');ylabel('降雨量(mm)')

xline(1980,'-g',{'協和發電廠第3機組商業運轉'})

%--------------------------------------------------------------------------

figure(2)
subplot(3,1,1)
yyaxis left
plot(year,raintime_4,'LineWidth',3);
axis([1947,2022,0,600])
ylabel('降雨時數(hr)')
yline(158.752,'--b',{'降雨時數總平均'})
hold on
yyaxis right
plot(years,rainfull_4,'LineWidth',3);
axis([1947,2022,0,1500])
yline(219.85,'-.r',{'降雨量總平均'})
title('降雨時數與降雨量1947~2022(4月)');xlabel('時間(Year)');ylabel('降雨量(mm)')

xline(1974,'-g',{'協和發電廠第2機組興建'})

%--------------------------------------------------------------------------

subplot(3,1,2)
yyaxis left
plot(year,raintime_5,'LineWidth',3);
axis([1947,2022,0,600])
ylabel('降雨時數(hr)')
yline(150.905,'--b',{'降雨時數總平均'})
hold on
yyaxis right
plot(years,rainfull_5,'LineWidth',3);
axis([1947,2022,0,1500])
yline(275.499,'-.r',{'降雨量總平均'})
title('降雨時數與降雨量1947~2022(5月)');xlabel('時間(Year)');ylabel('降雨量(mm)')

xline(1961,'-c',{'國道1號(原{麥帥公路興}建基北路段)'})

%--------------------------------------------------------------------------

subplot(3,1,3)
yyaxis left
plot(year,raintime_6,'LineWidth',3);
axis([1947,2022,0,600])
ylabel('降雨時數(hr)')
yline(108.711,'--b',{'降雨時數總平均'})
hold on
yyaxis right
plot(years,rainfull_6,'LineWidth',3);
axis([1947,2022,0,1500])
yline(299.033,'-.r',{'降雨量總平均'})
title('降雨時數與降雨量1947~2022(6月)');xlabel('時間(Year)');ylabel('降雨量(mm)')

xline(1973,'-g',{'協和發電廠第1機組興建'})
xline(1987,'-c',{'國道3號興建'})

%--------------------------------------------------------------------------

figure(3)
subplot(3,1,1)
yyaxis left
plot(year,raintime_7,'LineWidth',3);
axis([1947,2022,0,600])
ylabel('降雨時數(hr)')
yline(43.910,'--b',{'降雨時數總平均'})
hold on
yyaxis right
plot(years,rainfull_7,'LineWidth',3);
axis([1947,2022,0,1500])
yline(134.895,'-.r',{'降雨量總平均'})
title('降雨時數與降雨量1947~2022(7月)');xlabel('時間(Year)');ylabel('降雨量(mm)')

%--------------------------------------------------------------------------

subplot(3,1,2)
yyaxis left
plot(year,raintime_8,'LineWidth',3);
axis([1947,2022,0,600])
ylabel('降雨時數(hr)')
yline(58.902,'--b',{'降雨時數總平均'})
hold on
yyaxis right
plot(years,rainfull_8,'LineWidth',3);
axis([1947,2022,0,1500])
yline(196.786,'-.r',{'降雨量總平均'})
title('降雨時數與降雨量1947~2022(8月)');xlabel('時間(Year)');ylabel('降雨量(mm)')

xline(1971,'-c',{'國道1號興建'})
xline(1985,'-g',{'協和發電廠第4機組商業運轉'})

%--------------------------------------------------------------------------

subplot(3,1,3)
yyaxis left
plot(year,raintime_9,'LineWidth',3);
axis([1947,2022,0,600])
ylabel('降雨時數(hr)')
yline(101.261,'--b',{'降雨時數總平均'})
hold on
yyaxis right
plot(years,rainfull_9,'LineWidth',3);
axis([1947,2022,0,1500])
yline(351.232,'-.r',{'降雨量總平均'})
title('降雨時數與降雨量1947~2022(9月)');xlabel('時間(Year)');ylabel('降雨量(mm)')

%--------------------------------------------------------------------------

figure(4)
subplot(3,1,1)
yyaxis left
plot(year,raintime_10,'LineWidth',3);
axis([1947,2022,0,600])
ylabel('降雨時數(hr)')
yline(148.880,'--b',{'降雨時數總平均'})
hold on
yyaxis right
plot(years,rainfull_10,'LineWidth',3);
axis([1947,2022,0,1500])
yline(324.959,'-.r',{'降雨量總平均'})
title('降雨時數與降雨量1947~2022(10月)');xlabel('時間(Year)');ylabel('降雨量(mm)')

%--------------------------------------------------------------------------

subplot(3,1,2)
yyaxis left
plot(year,raintime_11,'LineWidth',3);
axis([1947,2022,0,600])
ylabel('降雨時數(hr)')
yline(215.702,'--b',{'降雨時數總平均'})
hold on
yyaxis right
plot(years,rainfull_11,'LineWidth',3);
axis([1947,2022,0,1500])
yline(348.383,'-.r',{'降雨量總平均'})
title('降雨時數與降雨量1947~2022(11月)');xlabel('時間(Year)');ylabel('降雨量(mm)')

xline(1977,'-g',{'協和發電廠第3機組興建'})
xline(1979,'-g',{'協和發電廠第4機組興建'})

%--------------------------------------------------------------------------

subplot(3,1,3)
yyaxis left
plot(year,raintime_12,'LineWidth',3);
axis([1947,2023,0,600])
ylabel('降雨時數(hr)')
yline(253.727,'--b',{'降雨時數總平均'})
hold on
yyaxis right
plot(years,rainfull_12,'LineWidth',3);
axis([1947,2022,0,1500])
yline(355.792,'-.r',{'降雨量總平均'})
title('降雨時數與降雨量1947~2022(12月)');xlabel('時間(Year)');ylabel('降雨量(mm)')

xline(1977,'-g',{'協和發電廠第2機組商業運轉'})
xline(2019,'-g',{'協和發電廠第1和2機組除役'})

%--------------------------------------------------------------------------