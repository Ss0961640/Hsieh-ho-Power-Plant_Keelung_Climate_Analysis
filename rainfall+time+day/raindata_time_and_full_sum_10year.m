clear;clc;close('all')

%讀取檔案
rainday = xlsread('rainday.xlsx');
rainfull = xlsread('rainfull.xlsx');
raintime = xlsread('raintime.xlsx');

year = raintime(:,1);
years = rainfull(28:103,1);

time_sum = raintime(:,14);
full_sum = rainfull(28:103,14);

%%=========================================================================
%%=========================================================================
rainday_sumaverage = 2033.141;
rainfull_sumaverage = 3445.743;

%%time+full折線圖
figure(1)
yyaxis left
plot(year,time_sum,'LineWidth',3);
axis([1947,2022,1000,2800])
ylabel('降雨時數(hr)')
yline(2033.141,'--b',{'降雨時數總平均'})
hold on
yyaxis right
plot(years,full_sum,'LineWidth',3);
axis([1947,2022,1200,6000])
yline(3445.743,'-.r',{'降雨量總平均'})
title('降雨時數與降雨量1947~2022');xlabel('時間(Year)');ylabel('降雨量(mm)')

%--------------------------------------------------------------------------

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

legend({'降雨時數總和','降雨時數總平均','降雨量總和','降雨量總平均'},'Location','southeast','NumColumns',2)

%--------------------------------------------------------------------------

figure(2)
yyaxis left
plot(year,time_sum,'LineWidth',3);
axis([1947,1956,1000,2800])
ylabel('降雨時數(hr)')
yline(2033.141,'--b',{'降雨時數總平均'})
hold on
yyaxis right
plot(years,full_sum,'LineWidth',3);
axis([1947,1956,1200,6000])
yline(3445.743,'-.r',{'降雨量總平均'})
title('降雨時數與降雨量1947~1956');xlabel('時間(Year)');ylabel('降雨量(mm)')

legend({'降雨時數總和','降雨時數總平均','降雨量總和','降雨量總平均'},'Location','southeast','NumColumns',2)

%--------------------------------------------------------------------------

figure(3)
yyaxis left
plot(year,time_sum,'LineWidth',3);
axis([1957,1966,1000,2800])
ylabel('降雨時數(hr)')
yline(2033.141,'--b',{'降雨時數總平均'})
hold on
yyaxis right
plot(years,full_sum,'LineWidth',3);
axis([1957,1966,1200,6000])
yline(3445.743,'-.r',{'降雨量總平均'})
title('降雨時數與降雨量1957~1966');xlabel('時間(Year)');ylabel('降雨量(mm)')

xline(1961,'-',{'國道1號(原麥帥公路)','興建基北路段'})
legend({'降雨時數總和','降雨時數總平均','降雨量總和','降雨量總平均'},'Location','southeast','NumColumns',2)

%--------------------------------------------------------------------------

figure(4)
yyaxis left
plot(year,time_sum,'LineWidth',3);
axis([1967,1976,1000,2800])
ylabel('降雨時數(hr)')
yline(2033.141,'--b',{'降雨時數總平均'})
hold on
yyaxis right
plot(years,full_sum,'LineWidth',3);
axis([1967,1976,1200,6000])
yline(3445.743,'-.r',{'降雨量總平均'})
title('降雨時數與降雨量1967~1976');xlabel('時間(Year)');ylabel('降雨量(mm)')

xline(1971,'-',{'1.協和發電廠興建','2.國道1號興建'})
legend({'降雨時數總和','降雨時數總平均','降雨量總和','降雨量總平均'},'Location','southeast','NumColumns',2)
%--------------------------------------------------------------------------

figure(5)
yyaxis left
plot(year,time_sum,'LineWidth',3);
axis([1977,1986,1000,2800])
ylabel('降雨時數(hr)')
yline(2033.141,'--b',{'降雨時數總平均'})
hold on
yyaxis right
plot(years,full_sum,'LineWidth',3);
axis([1977,1986,1200,6000])
yline(3445.743,'-.r',{'降雨量總平均'})
title('降雨時數與降雨量1977~1986');xlabel('時間(Year)');ylabel('降雨量(mm)')

xline(1977,'-',{'協和發電廠','第1、2機組商業運轉'})
xline(1978,'-',{'國道1號全線通車(基隆-高雄)'})
xline(1980,'-',{'協和發電廠','第3機組商業運轉'})
xline(1985,'-',{'協和發電廠','第4機組商業運轉'})

legend({'降雨時數總和','降雨時數總平均','降雨量總和','降雨量總平均'},'Location','southeast','NumColumns',2)

%--------------------------------------------------------------------------

figure(6)
yyaxis left
plot(year,time_sum,'LineWidth',3);
axis([1987,1996,1000,2800])
ylabel('降雨時數(hr)')
yline(2033.141,'--b',{'降雨時數總平均'})
hold on
yyaxis right
plot(years,full_sum,'LineWidth',3);
axis([1987,1996,1200,6000])
yline(3445.743,'-.r',{'降雨量總平均'})
title('降雨時數與降雨量1987~1996');xlabel('時間(Year)');ylabel('降雨量(mm)')

xline(1987,'-',{'國道3號興建'})
legend({'降雨時數總和','降雨時數總平均','降雨量總和','降雨量總平均'},'Location','southeast','NumColumns',2)

%--------------------------------------------------------------------------

figure(7)
yyaxis left
plot(year,time_sum,'LineWidth',3);
axis([1997,2006,1000,2800])
ylabel('降雨時數(hr)')
yline(2033.141,'--b',{'降雨時數總平均'})
hold on
yyaxis right
plot(years,full_sum,'LineWidth',3);
axis([1997,2006,1200,6000])
yline(3445.743,'-.r',{'降雨量總平均'})
title('降雨時數與降雨量1997~2006');xlabel('時間(Year)');ylabel('降雨量(mm)')

legend({'降雨時數總和','降雨時數總平均','降雨量總和','降雨量總平均'},'Location','southeast','NumColumns',2)

%--------------------------------------------------------------------------

figure(8)
yyaxis left
plot(year,time_sum,'LineWidth',3);
axis([2007,2016,1000,2800])
ylabel('降雨時數(hr)')
yline(2033.141,'--b',{'降雨時數總平均'})
hold on
yyaxis right
plot(years,full_sum,'LineWidth',3);
axis([2007,2016,1200,6000])
yline(3445.743,'-.r',{'降雨量總平均'})
title('降雨時數與降雨量2007~2016');xlabel('時間(Year)');ylabel('降雨量(mm)')

legend({'降雨時數總和','降雨時數總平均','降雨量總和','降雨量總平均'},'Location','southeast','NumColumns',2)

%--------------------------------------------------------------------------

figure(9)
yyaxis left
plot(year,time_sum,'LineWidth',3);
axis([2017,2022,1000,2800])
ylabel('降雨時數(hr)')
yline(2033.141,'--b',{'降雨時數總平均'})
hold on
yyaxis right
plot(years,full_sum,'LineWidth',3);
axis([2017,2022,1200,6000])
yline(3445.743,'-.r',{'降雨量總平均'})
title('降雨時數與降雨量2017~2022');xlabel('時間(Year)');ylabel('降雨量(mm)')

xline(2019,'-',{'協和發電廠','第1、2機組除役'})
legend({'降雨時數總和','降雨時數總平均','降雨量總和','降雨量總平均'},'Location','southeast','NumColumns',2)
