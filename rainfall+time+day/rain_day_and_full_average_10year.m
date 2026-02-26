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
raindayallaverage = 17.08756;
rainfullallaverage = 290.4349;

%%day+full折線圖
figure(1)
yyaxis left
plot(years,dayaverage,'LineWidth',3);
axis([1920,2022,12,22])
ylabel('降雨天數(day)')
yline(17.08756,'--',{'降雨天數總平均'})
hold on
yyaxis right
plot(years,fullaverage,'LineWidth',3);
axis([1920,2022,100,600])
title('降雨天數與降雨量1920~2022');xlabel('時間(Year)');ylabel('降雨量(mm)')
yline(290.4349,'-.',{'降雨量總平均'})

%%設定重要事件
xline(1977,'-',{'協和發電廠','第1、2機組商業運轉'})
xline(1980,'-',{'協和發電廠','第3機組商業運轉'})
xline(1985,'-',{'協和發電廠','第4機組商業運轉'})
xline(2019,'-',{'協和發電廠','第1、2機組除役'})
xline(1961,'-',{'國道1號(原麥帥公路)','興建基北路段'})
xline(1971,'-',{'1.協和發電廠興建','2.國道1號興建'})
xline(1978,'-',{'國道1號全線通車(基隆-高雄)'})
xline(1987,'-',{'國道3號興建'})
xline(2004,'-',{'國道3號通車'})

legend('降雨天數平均(day)','降雨量平均(mm)','Location','southeast')

%--------------------------------------------------------------------------

figure(2)
yyaxis left
plot(years,dayaverage,'LineWidth',3);
axis([1920,1929,12,22])
ylabel('降雨天數(day)')
yline(17.08756,'--',{'降雨天數總平均'})
hold on
yyaxis right
plot(years,fullaverage,'LineWidth',3);
axis([1920,1929,100,600])
title('降雨天數與降雨量1920~1929');xlabel('時間(Year)');ylabel('降雨量(mm)')
yline(290.4349,'-.',{'降雨量總平均'})

legend('降雨天數平均(day)','降雨量平均(mm)','Location','southeast')

%--------------------------------------------------------------------------

figure(3)
yyaxis left
plot(years,dayaverage,'LineWidth',3);
axis([1930,1939,12,22])
ylabel('降雨天數(day)')
yline(17.08756,'--',{'降雨天數總平均'})
hold on
yyaxis right
plot(years,fullaverage,'LineWidth',3);
axis([1930,1939,100,600])
title('降雨天數與降雨量1930~1939');xlabel('時間(Year)');ylabel('降雨量(mm)')
yline(290.4349,'-.',{'降雨量總平均'})

legend('降雨天數平均(day)','降雨量平均(mm)','Location','southeast')

%--------------------------------------------------------------------------

figure(4)
yyaxis left
plot(years,dayaverage,'LineWidth',3);
axis([1940,1949,12,22])
ylabel('降雨天數(day)')
yline(17.08756,'--',{'降雨天數總平均'})
hold on
yyaxis right
plot(years,fullaverage,'LineWidth',3);
axis([1940,1949,100,600])
title('降雨天數與降雨量1940~1949');xlabel('時間(Year)');ylabel('降雨量(mm)')
yline(290.4349,'-.',{'降雨量總平均'})

legend('降雨天數平均(day)','降雨量平均(mm)','Location','southeast')

%--------------------------------------------------------------------------

figure(5)
yyaxis left
plot(years,dayaverage,'LineWidth',3);
axis([1950,1959,12,22])
ylabel('降雨天數(day)')
yline(17.08756,'--',{'降雨天數總平均'})
hold on
yyaxis right
plot(years,fullaverage,'LineWidth',3);
axis([1950,1959,100,600])
title('降雨天數與降雨量1950~1959');xlabel('時間(Year)');ylabel('降雨量(mm)')
yline(290.4349,'-.',{'降雨量總平均'})

legend('降雨天數平均(day)','降雨量平均(mm)','Location','southeast')

%--------------------------------------------------------------------------

figure(6)
yyaxis left
plot(years,dayaverage,'LineWidth',3);
axis([1960,1969,12,22])
ylabel('降雨天數(day)')
yline(17.08756,'--',{'降雨天數總平均'})
hold on
yyaxis right
plot(years,fullaverage,'LineWidth',3);
axis([1960,1969,100,600])
title('降雨天數與降雨量1960~1969');xlabel('時間(Year)');ylabel('降雨量(mm)')

yline(290.4349,'-.',{'降雨量總平均'})
xline(1961,'-',{'國道1號(原麥帥公路)','興建基北路段'},'LineWidth',3)

legend('降雨天數平均(day)','降雨量平均(mm)','Location','southeast')

%--------------------------------------------------------------------------


figure(7)
yyaxis left
plot(years,dayaverage,'LineWidth',3);
axis([1970,1979,12,22])
ylabel('降雨天數(day)')
yline(17.08756,'--',{'降雨天數總平均'})
hold on
yyaxis right
plot(years,fullaverage,'LineWidth',3);
axis([1970,1979,100,600])
title('降雨天數與降雨量1950~1959');xlabel('時間(Year)');ylabel('降雨量(mm)')

yline(290.4349,'-.',{'降雨量總平均'})
xline(1971,'-',{'1.協和發電廠興建','2.國道1號興建'},'LineWidth',3)
xline(1977,'-',{'協和發電廠','第1、2機組商業運轉'},'LineWidth',3)
xline(1978,'-',{'國道1號全線通車(基隆-高雄)'},'LineWidth',3)

legend('降雨天數平均(day)','降雨量平均(mm)','Location','southeast')

%--------------------------------------------------------------------------


figure(8)
yyaxis left
plot(years,dayaverage,'LineWidth',3);
axis([1980,1989,12,22])
ylabel('降雨天數(day)')
yline(17.08756,'--',{'降雨天數總平均'})
hold on
yyaxis right
plot(years,fullaverage,'LineWidth',3);
axis([1980,1989,100,600])
title('降雨天數與降雨量1980~1989');xlabel('時間(Year)');ylabel('降雨量(mm)')

yline(290.4349,'-.',{'降雨量總平均'})
xline(1980,'-',{'協和發電廠','第3機組商業運轉'},'LineWidth',3)
xline(1985,'-',{'協和發電廠','第4機組商業運轉'},'LineWidth',3)
xline(1987,'-',{'國道3號興建'},'LineWidth',3)

legend('降雨天數平均(day)','降雨量平均(mm)','Location','southeast')

%--------------------------------------------------------------------------

figure(9)
yyaxis left
plot(years,dayaverage,'LineWidth',3);
axis([1950,1959,12,22])
ylabel('降雨天數(day)')
yline(17.08756,'--',{'降雨天數總平均'})
hold on
yyaxis right
plot(years,fullaverage,'LineWidth',3);
axis([1990,1999,100,600])
title('降雨天數與降雨量1990~1999');xlabel('時間(Year)');ylabel('降雨量(mm)')
yline(290.4349,'-.',{'降雨量總平均'})

legend('降雨天數平均(day)','降雨量平均(mm)','Location','southeast')

%--------------------------------------------------------------------------

figure(10)
yyaxis left
plot(years,dayaverage,'LineWidth',3);
axis([2000,2009,12,22])
ylabel('降雨天數(day)')
yline(17.08756,'--',{'降雨天數總平均'})
hold on
yyaxis right
plot(years,fullaverage,'LineWidth',3);
axis([2000,2009,100,600])
title('降雨天數與降雨量2000~2009');xlabel('時間(Year)');ylabel('降雨量(mm)')

yline(290.4349,'-.',{'降雨量總平均'})
xline(2004,'-',{'國道3號通車'},'LineWidth',3)

legend('降雨天數平均(day)','降雨量平均(mm)','Location','southeast')

%--------------------------------------------------------------------------

figure(11)
yyaxis left
plot(years,dayaverage,'LineWidth',3);
axis([2010,2022,12,22])
ylabel('降雨天數(day)')
yline(17.08756,'--',{'降雨天數總平均'})
hold on
yyaxis right
plot(years,fullaverage,'LineWidth',3);
axis([2010,2022,100,600])
title('降雨天數與降雨量2010~2022');xlabel('時間(Year)');ylabel('降雨量(mm)')

yline(290.4349,'-.',{'降雨量總平均'})
xline(2019,'-',{'協和發電廠','第1、2機組除役'},'LineWidth',3)

legend('降雨天數平均(day)','降雨量平均(mm)','Location','southeast')

%--------------------------------------------------------------------------
