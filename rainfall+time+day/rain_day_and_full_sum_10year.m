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
axis([1920,1929,50,250])
ylabel('降雨天數(day)')
hold on
yyaxis right
plot(years,fullsum,'LineWidth',3);
axis([1920,1929,1000,6000])
title('降雨天數與降雨量1920~1929');xlabel('時間(Year)');ylabel('降雨量(mm)')

legend('降雨天數總和(day)','降雨量總和(mm)','Location','southeast')

%--------------------------------------------------------------------------

figure(3)
yyaxis left
plot(years,daysum,'LineWidth',3);
axis([1930,1939,50,250])
ylabel('降雨天數(day)')
hold on
yyaxis right
plot(years,fullsum,'LineWidth',3);
axis([1930,1939,1000,6000])
title('降雨天數與降雨量1930~1939');xlabel('時間(Year)');ylabel('降雨量(mm)')

legend('降雨天數總和(day)','降雨量總和(mm)','Location','southeast')

%--------------------------------------------------------------------------

figure(4)
yyaxis left
plot(years,daysum,'LineWidth',3);
axis([1940,1949,50,250])
ylabel('降雨天數(day)')
hold on
yyaxis right
plot(years,fullsum,'LineWidth',3);
axis([1940,1949,1000,6000])
title('降雨天數與降雨量1940~1949');xlabel('時間(Year)');ylabel('降雨量(mm)')

legend('降雨天數總和(day)','降雨量總和(mm)','Location','southeast')

%--------------------------------------------------------------------------

figure(5)
yyaxis left
plot(years,daysum,'LineWidth',3);
axis([1950,1959,50,250])
ylabel('降雨天數(day)')
hold on
yyaxis right
plot(years,fullsum,'LineWidth',3);
axis([1950,1959,1000,6000])
title('降雨天數與降雨量1950~1959');xlabel('時間(Year)');ylabel('降雨量(mm)')

legend('降雨天數總和(day)','降雨量總和(mm)','Location','southeast')

%--------------------------------------------------------------------------

figure(6)
yyaxis left
plot(years,daysum,'LineWidth',3);
axis([1960,1969,50,250])
ylabel('降雨天數(day)')
hold on
yyaxis right
plot(years,fullsum,'LineWidth',3);
axis([1960,1969,1000,6000])
title('降雨天數與降雨量1960~1969');xlabel('時間(Year)');ylabel('降雨量(mm)')

legend('降雨天數總和(day)','降雨量總和(mm)','Location','southeast')

%--------------------------------------------------------------------------


figure(7)
yyaxis left
plot(years,daysum,'LineWidth',3);
axis([1970,1979,50,250])
ylabel('降雨天數(day)')
hold on
yyaxis right
plot(years,fullsum,'LineWidth',3);
axis([1970,1979,1000,6000])
title('降雨天數與降雨量1950~1959');xlabel('時間(Year)');ylabel('降雨量(mm)')

legend('降雨天數總和(day)','降雨量總和(mm)','Location','southeast')

%--------------------------------------------------------------------------


figure(8)
yyaxis left
plot(years,daysum,'LineWidth',3);
axis([1980,1989,50,250])
ylabel('降雨天數(day)')
hold on
yyaxis right
plot(years,fullsum,'LineWidth',3);
axis([1980,1989,1000,6000])
title('降雨天數與降雨量1980~1989');xlabel('時間(Year)');ylabel('降雨量(mm)')

legend('降雨天數總和(day)','降雨量總和(mm)','Location','southeast')

%--------------------------------------------------------------------------

figure(9)
yyaxis left
plot(years,daysum,'LineWidth',3);
axis([1950,1959,50,250])
ylabel('降雨天數(day)')
hold on
yyaxis right
plot(years,fullsum,'LineWidth',3);
axis([1990,1999,1000,6000])
title('降雨天數與降雨量1990~1999');xlabel('時間(Year)');ylabel('降雨量(mm)')

legend('降雨天數總和(day)','降雨量總和(mm)','Location','southeast')

%--------------------------------------------------------------------------

figure(10)
yyaxis left
plot(years,daysum,'LineWidth',3);
axis([2000,2009,50,250])
ylabel('降雨天數(day)')
hold on
yyaxis right
plot(years,fullsum,'LineWidth',3);
axis([2000,2009,1000,6000])
title('降雨天數與降雨量2000~2009');xlabel('時間(Year)');ylabel('降雨量(mm)')

legend('降雨天數總和(day)','降雨量總和(mm)','Location','southeast')

%--------------------------------------------------------------------------

figure(11)
yyaxis left
plot(years,daysum,'LineWidth',3);
axis([2010,2022,50,250])
ylabel('降雨天數(day)')
hold on
yyaxis right
plot(years,fullsum,'LineWidth',3);
axis([2010,2022,1000,6000])
title('降雨天數與降雨量2010~2022');xlabel('時間(Year)');ylabel('降雨量(mm)')

legend('降雨天數總和(day)','降雨量總和(mm)','Location','southeast')

%--------------------------------------------------------------------------
