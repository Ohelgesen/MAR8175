clc;
clear all;

% Input data
years_el = [2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020, 2021, 2022];
amount_el = [732, 649, 420, 324, 242, 198, 172, 150, 141, 151];

% Create a figure
figure;

% Add a bar chart first
bar(years_el, amount_el, 'FaceColor', [0.5 0.5 0.5]); % 'FaceColor' specifies gray bars

% Set the y-axis limits to go from 0 to 1000
ylim([0, 1000]);

% Hold the plot so that you can add the line plot on top
hold on;

% Plot the data as a line plot with a thicker line
plot(years_el, amount_el, 'b-o', 'LineWidth', 2); % 'b-o' specifies blue color, line, and markers, 'LineWidth' sets the line thickness

% Release the 'hold on' state to prevent further additions to the plot
hold off;

% Add labels and title
xlabel('Year');
ylabel('Price ($/kWh)');
title('Lithium Battery Prices over the last 10 years');

% Add grid
grid on;

% Display legend
legend('', 'Lithium Price');

% Customize the appearance (optional)
set(gca, 'XTick', years_el); % Set the x-axis ticks to match the years
set(gca, 'YTick', 0:100:1000); % Set y-axis ticks at intervals of 100
