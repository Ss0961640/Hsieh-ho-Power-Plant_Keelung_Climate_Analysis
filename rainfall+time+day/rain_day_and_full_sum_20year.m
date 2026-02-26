clear;clc;close('all')

%讀取檔案
rainday = xlsread('rainday.xlsx');
rainfull = xlsread('rainfull.xlsx');
raintime = xlsread('raintime.xlsx');

years = rainday(:,1);
year = raintime(:,1);

daysum = rainday(:,14);
dayaverage = rainday(:,15);

fullsum = rainfull(:,14);
fullaverage = rainfull(:,15);

timesum = raintime(:,14);
timeaverage = raintime(:,15);

%%==========================================================================
%%==========================================================================

%%day+full折線圖
figure(1)
yyaxis left
plot(years,daysum,'LineWidth',3);
axis([1920,2022,50,250])
ylabel('降雨天數(day)')
hold on
yyaxis right
plot(years,fullsum,'LineWidth',3);
axis([1920,2022,1000,6000])
title('降雨天數與降雨量1920~2022');xlabel('時間(Year)');ylabel('降雨量(mm)')

legend('降雨天數總和(day)','降雨量總和(mm)','Location','southeast')

%--------------------------------------------------------------------------

figure(2)
yyaxis left
plot(years,daysum,'LineWidth',3);
axis([1920,1939,50,250])
ylabel('降雨天數(day)')
hold on
yyaxis right
plot(years,fullsum,'LineWidth',3);
axis([1920,1939,1000,6000])
title('降雨天數與降雨量1920~1939');xlabel('時間(Year)');ylabel('降雨量(mm)')

legend('降雨天數總和(day)','降雨量總和(mm)','Location','southeast')

%--------------------------------------------------------------------------

figure(3)
yyaxis left
plot(years,daysum,'LineWidth',3);
axis([1940,1959,50,250])
ylabel('降雨天數(day)')
hold on
yyaxis right
plot(years,fullsum,'LineWidth',3);
axis([1940,1959,1000,6000])
title('降雨天數與降雨量1940~1959');xlabel('時間(Year)');ylabel('降雨量(mm)')

legend('降雨天數總和(day)','降雨量總和(mm)','Location','southeast')

%--------------------------------------------------------------------------

figure(4)
yyaxis left
plot(years,daysum,'LineWidth',3);
axis([1960,1979,50,250])
ylabel('降雨天數(day)')
hold on
yyaxis right
plot(years,fullsum,'LineWidth',3);
axis([1960,1979,1000,6000])
title('降雨天數與降雨量1960~1979');xlabel('時間(Year)');ylabel('降雨量(mm)')

legend('降雨天數總和(day)','降雨量總和(mm)','Location','southeast')

%--------------------------------------------------------------------------

figure(5)
yyaxis left
plot(years,daysum,'LineWidth',3);
axis([1980,1999,50,250])
ylabel('降雨天數(day)')
hold on
yyaxis right
plot(years,fullsum,'LineWidth',3);
axis([1980,1999,1000,6000])
title('降雨天數與降雨量1980~1999');xlabel('時間(Year)');ylabel('降雨量(mm)')

legend('降雨天數總和(day)','降雨量總和(mm)','Location','southeast')

%--------------------------------------------------------------------------

figure(6)
yyaxis left
plot(years,daysum,'LineWidth',3);
axis([1999,2022,50,250])
ylabel('降雨天數(day)')
hold on
yyaxis right
plot(years,fullsum,'LineWidth',3);
axis([1999,2022,1000,6000])
title('降雨天數與降雨量1999~2022');xlabel('時間(Year)');ylabel('降雨量(mm)')

legend('降雨天數總和(day)','降雨量總和(mm)','Location','southeast')

%--------------------------------------------------------------------------