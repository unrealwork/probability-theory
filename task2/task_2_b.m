EXPERIMENTS_COUNT = 1e3;


sample = zeros(EXPERIMENTS_COUNT,1);

for i = 1:EXPERIMENTS_COUNT
    permutation = randperm(10, 3);
    s = sum (permutation);
    sample(i,1) = s;
end;

histfit(sample)
