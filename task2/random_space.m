function space = random_space(size)
%random_space Random space of tuples
space = zeros(size,3);

for i = 1:size
    space(i,:) = randperm(10, 3) - 1;
end;

end

