clc;
clear all; 

% Input data for Electric Ferries
years_el = [2016, 2017, 2018, 2019, 2020, 2021, 2022, 2023];
amount_el = [0.873, 0.873, 1.31, 4.37, 10.9, 16.2, 22.3, 24.5];

% Create a new figure
figure;

% Create a scatter plot for Electric Ferries
scatter(years_el, amount_el, 'filled');
hold on;

% Plot a line connecting the data points
plot(years_el, amount_el, 'b-', 'LineWidth', 1.5);

% Add labels and a legend
xlabel('Year');
ylabel('Percentage of Electric Ferries');
title('Percentage of Electric Ferries in Norway');
legend('Electrical Ferry Connections');
grid on;

% Set y-axis limits to go up to 50%
ylim([0, 40]);

% Set y-axis to display numbers as percentages
ax = gca;
ax.YAxis.Exponent = 0;
ax.YAxis.TickLabelFormat = '%,.2f%%'; % Format as percentages with two decimal places

% Adjust y-axis ticks to have steps of 5%
yticks(0:5:50);

% Hold off to end the current plot
hold off;
