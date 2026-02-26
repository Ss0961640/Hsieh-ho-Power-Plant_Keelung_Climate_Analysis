clear;clc;close('all')

%讀取檔案
raintime = xlsread('raintime.xlsx');
rainfull = xlsread('rainfull.xlsx');
raindata_time = xlsread('raintime_month_season.xlsx');
raindata_full = xlsread('rainfull_month_season.xlsx');

year = raintime(1:76,1);
years = rainfull(28:103,1);

%%[raintime+rainfull]_spring
raintime_spring = raindata_time(1:76,1);
rainfull_spring = raindata_full(1:76,1);

%%[raintime+rainfull]_summer
raintime_summer = raindata_time(1:76,2);
rainfull_summer = raindata_full(1:76,2);

%%[raintime+rainfull]_autumn
raintime_autumn = raindata_time(1:76,3);
rainfull_autumn = raindata_full(1:76,3);

%%[raintime+rainfull]_winter
raintime_winter = raindata_time(1:76,4);
rainfull_winter = raindata_full(1:76,4);

%%=========================================================================
%%=========================================================================

figure(1)
yyaxis left
plot(year,raintime_spring,'LineWidth',3);
axis([1947,2022,0,1500])
ylabel('降雨時數(hr)')
yline(549.552,'--b',{'降雨時數總平均'})
hold on
yyaxis right
plot(years,rainfull_spring,'LineWidth',3);
axis([1947,2022,0,2500])
yline(801.747,'-.r',{'降雨量總平均'})
title('降雨時數與降雨量1947~2022(春季)');xlabel('時間(Year)');ylabel('降雨量(mm)')

xline(1980,'-g',{'協和發電廠第3機組商業運轉'})
xline(1974,'-g',{'協和發電廠第2機組興建'})
xline(1961,'-c',{'國道1號(原{麥帥公路興}建基北路段)'})

%--------------------------------------------------------------------------

figure(2)
yyaxis left
plot(year,raintime_summer,'LineWidth',3);
axis([1947,2022,0,1500])
ylabel('降雨時數(hr)')
yline(211.525,'--b',{'降雨時數總平均'})
hold on
yyaxis right
plot(years,rainfull_summer,'LineWidth',3);
axis([1947,2022,0,2500])
yline(633.244,'-.r',{'降雨量總平均'})
title('降雨時數與降雨量1947~2022(夏季)');xlabel('時間(Year)');ylabel('降雨量(mm)')

xline(1973,'-g',{'協和發電廠第1機組興建'})
xline(1987,'-c',{'國道3號興建'})
xline(1971,'-c',{'國道1號興建'})
xline(1985,'-g',{'協和發電廠第4機組商業運轉'})

%--------------------------------------------------------------------------

figure(3)
yyaxis left
plot(year,raintime_autumn,'LineWidth',3);
axis([1947,2022,0,1500])
ylabel('降雨時數(hr)')
yline(465.844,'--b',{'降雨時數總平均'})
hold on
yyaxis right
plot(years,rainfull_autumn,'LineWidth',3);
axis([1947,2022,0,2500])
yline(1171.147,'-.r',{'降雨量總平均'})
title('降雨時數與降雨量1947~2022(秋季)');xlabel('時間(Year)');ylabel('降雨量(mm)')

xline(1977,'-g',{'協和發電廠第3機組興建'})
xline(1979,'-g',{'協和發電廠第4機組興建'})

%--------------------------------------------------------------------------

figure(4)
yyaxis left
plot(year,raintime_winter,'LineWidth',3);
axis([1947,2022,0,1500])
ylabel('降雨時數(hr)')
yline(806.218,'--b',{'降雨時數總平均'})
hold on
yyaxis right
plot(years,rainfull_winter,'LineWidth',3);
axis([1947,2023,0,2500])
yline(1112.189,'-.r',{'降雨量總平均'})
title('降雨時數與降雨量1947~2022(冬季)');xlabel('時間(Year)');ylabel('降雨量(mm)')

xline(1977,'-g',{'協和發電廠第1和2機組商業運轉'})
xline(2019,'-g',{'協和發電廠第1和2機組除役'})

%--------------------------------------------------------------------------
