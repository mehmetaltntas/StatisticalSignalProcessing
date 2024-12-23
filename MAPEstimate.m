% Mehmet ALTINTAŞ 1901022065
% ELM 462 PROJE 1- PROBLEM 4
% Define lambda values
lambdas = [1, 10, 100, 1000];

% (c) Compute MAP Estimates
map_estimates = cell(length(lambdas), 1);

for i = 1:length(lambdas)
    lambda = lambdas(i);
    regularization_term = lambda * (L' * L);
    map_matrix = inv(H' * H + regularization_term);
    x_map = map_matrix * H' * y;
    map_estimates{i} = x_map;
end

% (d) Plot MAP Estimates for Different Lambda Values
figure;
hold on;
for i = 1:length(lambdas)
    plot(map_estimates{i}, '--', 'DisplayName', sprintf('MAP Estimate (\\lambda = %d)', lambdas(i)), 'LineWidth', 1.5);
end
plot(x, '-', 'DisplayName', 'Ground Truth (x_{true})', 'LineWidth', 2);
legend show;
xlabel('Sample Index');
ylabel('Signal Value');
title('MAP Estimates for Different \\lambda Values');
grid on;
