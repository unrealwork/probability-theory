EXPERIMENTS_COUNT=1e7;
space = sample_space();
emp_space = random_space(EXPERIMENTS_COUNT);
% Sample space size
n=size(space,1);


min_empirical_space = zeros(EXPERIMENTS_COUNT,1);
max_empirical_space = zeros(EXPERIMENTS_COUNT,1);

min_ideal_space = zeros(n,1);
max_ideal_space = zeros(n,1);

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

fprintf('Covariance of ideal values\n');
c=cov(min_ideal_space, max_ideal_space);

disp(c)

fprintf('Covariance of empirical values\n');
c=cov(min_empirical_space, max_empirical_space);

disp(c)
