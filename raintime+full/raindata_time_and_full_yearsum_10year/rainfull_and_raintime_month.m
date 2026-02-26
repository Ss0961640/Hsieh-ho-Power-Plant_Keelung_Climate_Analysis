clc; clear;
fall_data = readtable("基隆天氣雨量雨時.xlsm", 'Sheet', '雨量');
time_data = readtable("基隆天氣雨量雨時.xlsm", 'Sheet', '雨時');

% 假设第一行是年份
years = fall_data{:, 1};
num_decades = ceil(length(years) / 10); % 计算十年份的数量

% 读取文字文件
fileID = fopen("事件.txt", 'r');
formatSpec = '%d%d%s%s';
data = textscan(fileID, formatSpec, 'Delimiter', ',');
fclose(fileID);
k=0;

figure;

for i = 1:length(years)
    year = years(i);
    
    % 选择当前十年的数据
    fall = fall_data{i, 2:13};
    time = time_data{i, 2:13};
    
    % 连接当前十年的数据
    if i == 1
        combined_fall = fall;
        combined_time = time;
    else
        combined_fall = [combined_fall, fall];
        combined_time = [combined_time, time];
    end
    
    % 每十年分一个子图，并使用 ceil 函数来确定子图的位置
    if mod(i, 10) == 0 || i == length(years)
        subplot(4, 2, ceil(i / 10));
        
        % 使用折线图绘制连接后的雨量和降雨时数数据
        plot(1:length(combined_time), combined_fall, 'LineWidth',1.5,'Color','b','Marker','.','MarkerSize',8); % 雨量数据
        hold on;
        plot(1:length(combined_time), combined_time, 'LineWidth',1.5,'Color','r','Marker','.','MarkerSize',8); % 降雨时数数据

        % 设置标题和X轴标签
        title(sprintf('%d-%d', years(i - 9), year)); % 显示每十年的范围
        xlim([0.5 length(combined_fall) + 0.5]); % 调整 X 轴的显示范围
        ylim([0 1500]);
        xticks(1:12:length(combined_fall)); % 设置 X 轴刻度
        xticklabels(years(i - 9:i)); % 设置 X 轴刻度标签为年份
      
        if i == length(years)
            title(sprintf('%d-%d', years(i - 5), year)); % 显示每十年的范围
            xlabel('時間(年)'); ylabel('總量(小時和毫米)')
            xticklabels(years(i-5:i)); % 最后一个子图X轴标签为2017~2022年
            
        else
            xlabel(''); % 其他子图中X轴标签为空
        end
        
        grid on;
        if i == 1
            legend('雨量', '降雨时数'); % 仅在第一个子图中显示图例
        end
        
        % 添加回归直线
        x = 1:length(combined_fall);
        p_fall = polyfit(x, combined_fall, 1);
        p_time = polyfit(x, combined_time, 1);
        y_fall_fit = polyval(p_fall, x);
        y_time_fit = polyval(p_time, x);
        
        
        plot(x, y_time_fit, 'r-' ,'LineWidth', 1.5); % 降雨时数回归直线
        plot(x, y_fall_fit, 'b-' ,'LineWidth', 1.5); % 雨量回归直线

        % 添加回归直线的方程式标签
       
        equation_time = sprintf('y = %.2fx + %.2f', p_time(1), p_time(2));
        equation_fall = sprintf('y = %.2fx + %.2f', p_fall(1), p_fall(2));
        text(0.7 * length(combined_fall), 1000, equation_fall, 'Color', 'blue');
        text(0.7 * length(combined_time), 1200, equation_time, 'Color', 'red');
        
        % 在图上标记事件点
        events_year = data{1};
        events_month = data{2};
        events_color = data{3};
        events_description = data{4};
        
        % 筛选在当前十年范围内的事件
        idx = events_year >= years(i-9) & events_year <= year;
        events_year_filtered = events_year(idx);
        events_month_filtered = events_month(idx);
        events_color_filtered = events_color(idx);
        events_description_filtered = events_description(idx);
        
        for j = 1:length(events_year_filtered)
            month_index = events_month_filtered(j);
            y=(events_year_filtered(j)-1947-k*10)*12;
            event_x = y + month_index; % 計算事件的X座標
            x1=xline(event_x, 'k', 'LineWidth', 1.5);
            xl.LabelHorizontalAlignment = 'center';
            xlabel('時間(年)'); ylabel('總量(小時和毫米)')
        end
        
        hold off;
        k=k+1;
        
        
        % 重置连接数据以绘制下一个子图
        combined_fall = [];
        combined_time = [];
    end
xlabel('時間(年)'); ylabel('總量(小時和毫米)')
end
set(gcf,'position',[500 500 1000 1000])
sgtitle('月總降雨時數與降雨量折線圖')
%saveas(gcf,'rainfull_and_raintime_month','jpg')