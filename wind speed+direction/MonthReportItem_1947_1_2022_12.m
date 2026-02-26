clear;clc;close('all')
%讀取資料
windspeed = xlsread('windspeed.xlsx');
winddirection = xlsread('winddirection.xlsx');
%S = windspeed                                   %風速windspeed
%theta = winddirection                           %風向winddirection(角度為theta)

%%參數調整
Options.AngleNorth = 0;
Options.AngleEast = 90;
Options.Labels = {'N (0°)','NE (45°)','E (90°)','SE (135°)','S (180°)','SW (225°)','W (270°)','NW (315°)'};
Options.FreqLabelAngle = 30;
Options.nFreq = 8;
Options.MaxFrequency = 40;
Options.nspeeds = 9;                                            %整數部分5、9
Options.ndirections = 20;
Options.legendtype = 2;
Options.min_radius = 0.1;
Options.height = 12*60;
Options.width = 15*60;
%Options.inverse = true;
Options.Min_Radius = 0;
Options.cmap = [1 0 0; 1 1 0; 0 1 0; 0 1 1; 0 0 1] ;              %圖層顏色                          % Red, Yellow, Green, cyan, Blue

%title
Options.titlestring = {'Wind speed and Wind direction in All Seasons'};
Options.TitleFontSize = 18;
Options.TitleColor = 'k';

%方位
Options.AxesFontColor = 'b';
Options.AxesFontSize = 13;

%圖例
Options.lablegend = {'Wind speeds in m/s'};
Options.legendType = 2;
Options.LegendPosition = 'southeast';
Option.LegendOrientation = 'horizontal';

%頻率標籤(數據)
Options.FrequencyFontColor = 'r';
Options.FrequencyFontSize = 12;
Options.FreqLabelAngle = 150;

% windrose
[figure_handle, count, speeds, directions, Table] = WindRose(winddirection, windspeed, Options);

%儲存圖片
saveas(gcf,'windspeed_all','jpg')

%======================================================================================================================================

%季節讀檔
windspeedspring = xlsread('windspeed_spring.xlsx');
winddirectionspring = xlsread('winddirection_spring.xlsx');

windspeedsummer = xlsread('windspeed_summer.xlsx');
winddirectionsummer = xlsread('winddirection_summer.xlsx');

windspeedautumn = xlsread('windspeed_autumn.xlsx');
winddirectionautumn = xlsread('winddirection_autumn.xlsx');

windspeedwinter = xlsread('windspeed_winter.xlsx');
winddirectionwinter = xlsread('winddirection_winter.xlsx');

%======================================================================================================================================

%%參數調整(春季)
Options.AngleNorth = 0;
Options.AngleEast = 90;
Options.Labels = {'N (0°)','NE (45°)','E (90°)','SE (135°)','S (180°)','SW (225°)','W (270°)','NW (315°)'};
Options.FreqLabelAngle = 30;
Options.nFreq = 8;
Options.MaxFrequency = 40;
Options.nspeeds = 4;                                            %整數部分5、9
Options.ndirections = 20;
Options.legendtype = 2;
Options.min_radius = 0.1;
Options.height = 12*60;
Options.width = 15*60;
%Options.inverse = true;
Options.Min_Radius = 0;
Options.cmap = [1 0 0; 1 1 0; 0 1 0; 0 1 1; 0 0 1] ;              %圖層顏色                          % Red, Yellow, Green, cyan, Blue

%title
Options.titlestring = {'Wind speed and Wind direction in Spring'};
Options.TitleFontSize = 18;
Options.TitleColor = 'k';

%方位
Options.AxesFontColor = 'b';
Options.AxesFontSize = 13;

%圖例
Options.lablegend = {'Wind speeds in m/s'};

%頻率標籤(數據)
Options.FrequencyFontColor = 'r';
Options.FrequencyFontSize = 12;
Options.FreqLabelAngle = 150;

% windrose
[figure_handle, count, speeds, directions, Table] = WindRose(winddirectionspring, windspeedspring, Options);

%儲存圖片
saveas(gcf,'windspeed_spring','jpg')

%======================================================================================================================================

%%參數調整(夏季)
Options.AngleNorth = 0;
Options.AngleEast = 90;
Options.Labels = {'N (0°)','NE (45°)','E (90°)','SE (135°)','S (180°)','SW (225°)','W (270°)','NW (315°)'};
Options.FreqLabelAngle = 30;
Options.nFreq = 8;
Options.MaxFrequency = 40;
Options.nspeeds = 4;                                            %整數部分5、9
Options.ndirections = 20;
Options.legendtype = 2;
Options.min_radius = 0.1;
Options.height = 12*60;
Options.width = 15*60;
%Options.inverse = true;
Options.Min_Radius = 0;
Options.cmap = [1 0 0; 1 1 0; 0 1 0; 0 1 1; 0 0 1] ;              %圖層顏色                          % Red, Yellow, Green, cyan, Blue

%title
Options.titlestring = {'Wind speed and Wind direction in Summer'};
Options.TitleFontSize = 18;
Options.TitleColor = 'k';

%方位
Options.AxesFontColor = 'b';
Options.AxesFontSize = 13;

%圖例
Options.lablegend = {'Wind speeds in m/s'};

%頻率標籤(數據)
Options.FrequencyFontColor = 'r';
Options.FrequencyFontSize = 12;
Options.FreqLabelAngle = 150;

% windrose
[figure_handle, count, speeds, directions, Table] = WindRose(winddirectionsummer, windspeedsummer, Options);

%儲存圖片
saveas(gcf,'windspeed_summer','jpg')

%======================================================================================================================================

%%參數調整(秋季)
Options.AngleNorth = 0;
Options.AngleEast = 90;
Options.Labels = {'N (0°)','NE (45°)','E (90°)','SE (135°)','S (180°)','SW (225°)','W (270°)','NW (315°)'};
Options.FreqLabelAngle = 30;
Options.nFreq = 8;
Options.MaxFrequency = 40;
Options.nspeeds = 7;                                            %整數部分5、9
Options.ndirections = 20;
Options.legendtype = 2;
Options.min_radius = 0.1;
Options.height = 12*60;
Options.width = 15*60;
%Options.inverse = true;
Options.Min_Radius = 0;
Options.cmap = [1 0 0; 1 1 0; 0 1 0; 0 1 1; 0 0 1] ;              %圖層顏色                          % Red, Yellow, Green, cyan, Blue

%title
Options.titlestring = {'Wind speed and Wind direction in Autumn'};
Options.TitleFontSize = 18;
Options.TitleColor = 'k';

%方位
Options.AxesFontColor = 'b';
Options.AxesFontSize = 13;

%圖例
Options.lablegend = {'Wind speeds in m/s'};

%頻率標籤(數據)
Options.FrequencyFontColor = 'r';
Options.FrequencyFontSize = 12;
Options.FreqLabelAngle = 150;

% windrose
[figure_handle, count, speeds, directions, Table] = WindRose(winddirectionautumn, windspeedautumn, Options);

%儲存圖片
saveas(gcf,'windspeed_autumn','jpg')

%======================================================================================================================================

%%參數調整(冬季)
Options.AngleNorth = 0;
Options.AngleEast = 90;
Options.Labels = {'N (0°)','NE (45°)','E (90°)','SE (135°)','S (180°)','SW (225°)','W (270°)','NW (315°)'};
Options.FreqLabelAngle = 30;
Options.nFreq = 8;
Options.MaxFrequency = 40;
Options.nspeeds = 9;                                            %整數部分5、9
Options.ndirections = 20;
Options.legendtype = 2;
Options.min_radius = 0.1;
Options.height = 12*60;
Options.width = 15*60;
%Options.inverse = true;
Options.Min_Radius = 0;
Options.cmap = [1 0 0; 1 1 0; 0 1 0; 0 1 1; 0 0 1] ;              %圖層顏色                          % Red, Yellow, Green, cyan, Blue

%title
Options.titlestring = {'Wind speed and Wind direction in Winter'};
Options.TitleFontSize = 18;
Options.TitleColor = 'k';

%方位
Options.AxesFontColor = 'b';
Options.AxesFontSize = 13;

%圖例
Options.lablegend = {'Wind speeds in m/s'};

%頻率標籤(數據)
Options.FrequencyFontColor = 'r';
Options.FrequencyFontSize = 12;
Options.FreqLabelAngle = 150;

% windrose
[figure_handle, count, speeds, directions, Table] = WindRose(winddirectionwinter, windspeedwinter, Options);

%儲存圖片
saveas(gcf,'windspeed_winter','jpg')

%======================================================================================================================================

%轉換成windrose
%figure(2)
%pax = polaraxes;
%newwindrose = polarplot(theta,S);
%rose(newwindrose,10)
%pax.ThetaZeroLocation = 'top';
%pax.ThetaDir = 'clockwise';
%newwindrose = polar(theta,S)
%rose(newwindrose,10)
%set(gca,'View',[-90 90],'YDir','reverse');           %將極座標位置轉換 0為north， 90為east



