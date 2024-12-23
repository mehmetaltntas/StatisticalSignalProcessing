% Mehmet ALTINTAŞ 1901022065
% ELM 462 PROJE 1- PROBLEM 2
% Load the provided MATLAB data
load('projectecg.mat');

% (a) ML Estimator Calculation
H_t_H_inv = inv(H' * H);
x_ml = H_t_H_inv * H' * y;

% (b) Plot Observation and ML Estimate
figure;
plot(y, 'r--', 'DisplayName', 'Observation (y)', 'LineWidth', 1.5); % Blue dashed line
hold on;
plot(x_ml, 'y-', 'DisplayName', 'ML Estimate (x̂_{ML})', 'LineWidth', 1.5); % Green solid line
plot(x, 'c-', 'DisplayName', 'Ground Truth (x_{true})', 'LineWidth', 1.5); % Red solid line
legend show;
xlabel('Sample Index');
ylabel('Signal Value');
title('Observation, ML Estimate, and Ground Truth');
grid on;