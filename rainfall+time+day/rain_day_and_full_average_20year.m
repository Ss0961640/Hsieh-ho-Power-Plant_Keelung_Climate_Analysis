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
plot(years,dayaverage,'LineWidth',3);
axis([1920,2022,12,22])
ylabel('降雨天數(day)')
hold on
yyaxis right
plot(years,fullaverage,'LineWidth',3);
axis([1920,2022,100,500])
title('降雨天數與降雨量1920~2022');xlabel('時間(Year)');ylabel('降雨量(mm)')

legend('降雨天數平均(day)','降雨量平均(mm)','Location','southeast')

%--------------------------------------------------------------------------

figure(2)
yyaxis left
plot(years,dayaverage,'LineWidth',3);
axis([1920,1939,12,22])
ylabel('降雨天數(day)')
hold on
yyaxis right
plot(years,fullaverage,'LineWidth',3);
axis([1920,1939,100,500])
title('降雨天數與降雨量1920~1939');xlabel('時間(Year)');ylabel('降雨量(mm)')

legend('降雨天數平均(day)','降雨量平均(mm)','Location','southeast')

%--------------------------------------------------------------------------

figure(3)
yyaxis left
plot(years,dayaverage,'LineWidth',3);
axis([1940,1959,12,22])
ylabel('降雨天數(day)')
hold on
yyaxis right
plot(years,fullaverage,'LineWidth',3);
axis([1940,1959,100,500])
title('降雨天數與降雨量1940~1959');xlabel('時間(Year)');ylabel('降雨量(mm)')

legend('降雨天數平均(day)','降雨量平均(mm)','Location','southeast')

%--------------------------------------------------------------------------

figure(4)
yyaxis left
plot(years,dayaverage,'LineWidth',3);
axis([1960,1979,12,22])
ylabel('降雨天數(day)')
hold on
yyaxis right
plot(years,fullaverage,'LineWidth',3);
axis([1960,1979,100,500])
title('降雨天數與降雨量1960~1979');xlabel('時間(Year)');ylabel('降雨量(mm)')

legend('降雨天數平均(day)','降雨量平均(mm)','Location','southeast')

%--------------------------------------------------------------------------

figure(5)
yyaxis left
plot(years,dayaverage,'LineWidth',3);
axis([1980,1999,12,22])
ylabel('降雨天數(day)')
hold on
yyaxis right
plot(years,fullaverage,'LineWidth',3);
axis([1950,1959,100,500])
title('降雨天數與降雨量1980~1999');xlabel('時間(Year)');ylabel('降雨量(mm)')

legend('降雨天數平均(day)','降雨量平均(mm)','Location','southeast')

%--------------------------------------------------------------------------

figure(6)
yyaxis left
plot(years,dayaverage,'LineWidth',3);
axis([2000,2022,12,22])
ylabel('降雨天數(day)')
hold on
yyaxis right
plot(years,fullaverage,'LineWidth',3);
axis([2000,2022,100,500])
title('降雨天數與降雨量2000~2022');xlabel('時間(Year)');ylabel('降雨量(mm)')

legend('降雨天數平均(day)','降雨量平均(mm)','Location','southeast')

%--------------------------------------------------------------------------
