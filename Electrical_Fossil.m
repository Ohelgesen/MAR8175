clear all;
clc;

% Input data for Fossil Fuel Vehicles
years_ff = [2015 2016, 2017, 2018, 2019, 2020, 2021, 2022];
amount_ff = [2538974, 2473095, 2434491, 2365621, 2312226, 2196802, 2096047, 1957671];

% Input data for Electric Vehicles
years_ev = [2015 2016, 2017, 2018, 2019, 2020, 2021, 2022];
amount_ev = [69134, 97532, 139000, 195351, 260692, 340002, 460734, 599169];

% Create a new figure
figure;

% Create a scatter plot for Fossil Fuel Vehicles
scatter(years_ff, amount_ff, 'r', 'filled');
hold on;

% Fit an exponential curve for Fossil Fuel Vehicles
coefficients_ff = polyfit(years_ff, log(amount_ff), 1);
a_ff = exp(coefficients_ff(2));
b_ff = coefficients_ff(1);

% Create an x-values vector for the fitted curve for Fossil Fuel Vehicles
x_fit_ff = 2015:0.1:2023;

% Calculate the corresponding y-values for the fitted curve for Fossil Fuel Vehicles
y_fit_ff = a_ff * exp(b_ff * x_fit_ff);

% Plot the fitted curve for Fossil Fuel Vehicles
plot(x_fit_ff, y_fit_ff, 'r', 'LineWidth', 2);

% Create a scatter plot for Electric Vehicles
scatter(years_ev, amount_ev, 'b', 'filled');

% Fit an exponential curve for Electric Vehicles
coefficients_ev = polyfit(years_ev, log(amount_ev), 1);
a_ev = exp(coefficients_ev(2));
b_ev = coefficients_ev(1);

% Create an x-values vector for the fitted curve for Electric Vehicles
x_fit_ev = 2015:0.1:2023;

% Calculate the corresponding y-values for the fitted curve for Electric Vehicles
y_fit_ev = a_ev * exp(b_ev * x_fit_ev);

% Plot the fitted curve for Electric Vehicles
plot(x_fit_ev, y_fit_ev, 'b', 'LineWidth', 2);

% Add labels and a legend
xlabel('Year');
ylabel('Number of Registered Vehicles');
title('Registered Fossil Fuel and Electric Vehicles in Norway (2023 is estimated)');
legend('Fossil Fuel Vehicles', 'Fossil Fuel Fit', 'Electric Vehicles', 'Electric Fit');
grid on;

% Set y-axis to display numbers in normal form with a space between thousands
ax = gca;
ax.YAxis.Exponent = 0;
ax.YAxis.TickLabelFormat = '%,.0f'; % Format with thousands separator

% Adjust y-axis ticks to have steps of 250,000
yticks(0:250000:5000000);

% Hold off to end the current plot
hold off;
