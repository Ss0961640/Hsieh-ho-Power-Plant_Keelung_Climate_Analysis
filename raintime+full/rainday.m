clc; clear;

day_data = readtable("rainday.xlsx");

years = day_data{:, 1};

figure;

% 設定需要繪製的年份區段
year_ranges = [
    1947 1976;
    1977 2019;
    2020 2022
];
k=0;
a=1;
for r = 1:size(year_ranges, 1)
    range_start = year_ranges(r, 1);
    range_end = year_ranges(r, 2);

    subplot(size(year_ranges, 1), 1, r);
    hold on;
    
    combined_day = [];

    
    for i = 2:length(years)
        year = years(i);
        

        if year >= range_start && year <= range_end
            day = day_data{i, 2:13};


            combined_day = [combined_day, day];
            k=k+1;
        end
    end
    
    % 確保數據非空後再繪圖
    if ~isempty(combined_day)
        plot(1:length(combined_day), combined_day,'LineWidth',2,'Color','b','Marker','.','MarkerSize',10);
        
        title(sprintf('%d-%d', range_start, range_end));
        xlim([0.5 length(combined_day) + 0.5]);
        ylim([0 40]);
        
        % 設置刻度位置和刻度標籤
        xticks(1:12:length(combined_day));
        xticklabels(years(a:k));
        xlabel('時間(年)');ylabel('日數(天)')
        grid on;

        % 添加回歸直線
        x = 1:length(combined_day);
        p_day = polyfit(x, combined_day, 1);
        y_day_fit = polyval(p_day, x);

        plot(x, y_day_fit, 'r-','LineWidth',1.5);
       
        equation_fall = sprintf('y = %.2fx + %.2f', p_day(1), p_day(2));
        text(0.7 * length(combined_day), 30, equation_fall, 'Color', 'r'); % 將變數名稱更改為 equation_fall
    else
        title(sprintf('無數據 (%d-%d)', range_start, range_end));
    end

    hold off;
    a=k+1; 
end
set(gcf,'position',[500 500 1000 1000])
sgtitle('降雨日數折線圖')
saveas(gcf,'rainday','jpg')