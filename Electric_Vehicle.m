clc;
clear all;

% Input data
years = [2015 2016, 2017, 2018, 2019, 2020, 2021, 2022];
amount = [69134, 97532, 139000, 195351, 260692, 340002, 460734, 599169];

% Create a scatter plot
scatter(years, amount, 'filled');
hold on;

% Fit an exponential curve to the data
coefficients = polyfit(years, log(amount), 1);
a = exp(coefficients(2));
b = coefficients(1);

% Create an x-values vector for the fitted curve
x_fit = 2015:0.1:2023;

% Calculate the corresponding y-values for the fitted curve
y_fit = a * exp(b * x_fit);

% Plot the fitted curve
plot(x_fit, y_fit, 'r', 'LineWidth', 2);

% Add labels and a legend
xlabel('Year');
ylabel('Number of Electrical Vehicles Registered');
title('Registered Electrical Vehicles in Norway past 8 years (2023 is estimated)');
legend('Values', 'Exponential Fit');
grid on;

% Set y-axis to display numbers in normal form with a space between thousands
ax = gca;
ax.YAxis.Exponent = 0;
ax.YAxis.TickLabelFormat = '%,.0f'; % Format with thousands separator

% Hold off to end the current plot
hold off;
