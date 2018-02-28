EXPERIMENTS_COUNT=1e2;
space = sample_space();
emp_space = random_space(EXPERIMENTS_COUNT);
% Sample space size
n=size(space,1);
fprintf('Sample space size is %d', n);


min_ideal_space = zeros(n,1);
max_ideal_space = zeros(n,1);
min_empirical_space = zeros(EXPERIMENTS_COUNT,1);
max_empirical_space = zeros(EXPERIMENTS_COUNT,1);

%Fill real min, max space
for i=1:n
    min_ideal_space(i,1) = min(space(i,:));
    max_ideal_space(i,1) = max(space(i,:));
end;

%Fill empirical min, max
for i=1:EXPERIMENTS_COUNT
    min_empirical_space(i,1) = min(emp_space(i,:));
    max_empirical_space(i,1) = max(emp_space(i,:));
end;


figure;
%Mimimum value plots
subplot(2,1,1)
cdfplot(min_ideal_space);
hold on
subplot(2,1,1);
h = cdfplot(min_empirical_space);
set(h,'Color', 'r');
title('Minimum value in tuple');
hold off
legend('Ideal','Empirical')

%Maximum value plots
subplot(2,1,2)
cdfplot(max_ideal_space);
hold on
subplot(2,1,2);
h = cdfplot(max_empirical_space);
set(h,'Color', 'r');
title('Maximum value in tuple');
hold off
legend('Ideal','Empirical')