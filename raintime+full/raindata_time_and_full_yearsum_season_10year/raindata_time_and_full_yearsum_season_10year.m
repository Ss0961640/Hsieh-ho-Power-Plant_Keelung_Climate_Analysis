clear;clc;close('all')

%讀取檔案(季節年總和)
raintime = xlsread('raintime.xlsx');
rainfull = xlsread('rainfull.xlsx');
raindata_time = xlsread('raintime_yearsum_season.xlsx');
raindata_full = xlsread('rainfull_yearsum_season.xlsx');

year = raintime(2:77,1);

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
plot(year,raintime_spring,'r','Marker','.');
ylabel('降雨時數(hr)')
yline(549.552,'--r')
hold on
plot(year,rainfull_spring,'b','Marker','.');
axis([1947,2022,0,2500])
yline(801.747,'--b')
title('降雨時數與降雨量1947~2022(春季)');xlabel('時間(Year)');ylabel('降雨量(mm)')

xline(1980,'-g',{'協和發電廠第3機組商業運轉'})
xline(1961,'-c',{'國道1號(原{麥帥公路興}建基北路段)'})

saveas(gcf,'rainfull_and_raintime_spring','jpg')
%--------------------------------------------------------------------------

figure(2)
plot(year,raintime_summer,'r','Marker','.');
ylabel('降雨時數(hr)')
yline(211.525,'--r')
hold on
plot(year,rainfull_summer,'b','Marker','.');
axis([1947,2022,0,2500])
yline(633.244,'--b')
title('降雨時數與降雨量1947~2022(夏季)');xlabel('時間(Year)');ylabel('降雨量(mm)')

xline(1987,'-c',{'國道3號興建'})
xline(1985,'-g',{'協和發電廠第4機組商業運轉'})

saveas(gcf,'rainfull_and_raintime_summer','jpg')
%--------------------------------------------------------------------------

figure(3)
plot(year,raintime_autumn,'r','Marker','.');
ylabel('降雨時數(hr)')
yline(465.844,'--r')
hold on
plot(year,rainfull_autumn,'b','Marker','.');
axis([1947,2022,0,2500])
yline(1171.147,'--b')
title('降雨時數與降雨量1947~2022(秋季)');xlabel('時間(Year)');ylabel('降雨量(mm)')

saveas(gcf,'rainfull_and_raintime_autumn','jpg')
%--------------------------------------------------------------------------

figure(4)
plot(year,raintime_winter,'r','Marker','.');
ylabel('降雨時數(hr)')
yline(806.218,'--r')
hold on
plot(year,rainfull_winter,'b','Marker','.');
axis([1947,2023,0,2500])
yline(1112.189,'--b')
title('降雨時數與降雨量1947~2022(冬季)');xlabel('時間(Year)');ylabel('降雨量(mm)')

xline(1977,'-g',{'協和發電廠第1和2機組商業運轉'})
xline(2019,'-g',{'協和發電廠第1和2機組除役'})

saveas(gcf,'rainfull_and_raintime_winter','jpg')

%%=========================================================================
%%=========================================================================

figure(5)
subplot(2,2,1)
plot(year,raintime_spring,'r','Marker','.');
ylabel('降雨時數(hr)')
yline(549.552,'--r')
hold on
plot(year,rainfull_spring,'b','Marker','.');
axis([1947,2022,0,2500])
yline(801.747,'--b')
title('降雨時數與降雨量1947~2022(春季)');xlabel('時間(Year)');ylabel('降雨量(mm)')
xline(1980,'-g')                      %{'協和發電廠第3機組商業運轉'})
xline(1961,'-c')                      %{'國道1號(原{麥帥公路興}建基北路段)'})
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

subplot(2,2,2)
plot(year,raintime_summer,'r','Marker','.');
ylabel('降雨時數(hr)')
yline(211.525,'--r')
hold on
plot(year,rainfull_summer,'b','Marker','.');
axis([1947,2022,0,2500])
yline(633.244,'--b')
title('降雨時數與降雨量1947~2022(夏季)');xlabel('時間(Year)');ylabel('降雨量(mm)')
xline(1985,'-g')                      %{'協和發電廠第4機組商業運轉'})
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

subplot(2,2,3)
plot(year,raintime_autumn,'r','Marker','.');
ylabel('降雨時數(hr)')
yline(465.844,'--r')
hold on
plot(year,rainfull_autumn,'b','Marker','.');
axis([1947,2022,0,2500])
yline(1171.147,'--b')
title('降雨時數與降雨量1947~2022(秋季)');xlabel('時間(Year)');ylabel('降雨量(mm)')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

subplot(2,2,4)
plot(year,raintime_winter,'r','Marker','.');
ylabel('降雨時數(hr)')
yline(806.218,'--r')
hold on
plot(year,rainfull_winter,'b','Marker','.');
axis([1947,2023,0,2500])
yline(1112.189,'--b')
title('降雨時數與降雨量1947~2022(冬季)');xlabel('時間(Year)');ylabel('降雨量(mm)')
xline(1977,'-g')                         %{'協和發電廠第1和2機組商業運轉'})
xline(2019,'-g')                         %{'協和發電廠第1和2機組除役'})

set(gcf,'position',[500 500 1000 1000])
saveas(gcf,'rainfull_and_raintime_season','jpg')