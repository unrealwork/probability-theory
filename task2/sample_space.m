function space = sample_space()
%Find sample space size for following random value
count = 0;
space = zeros(1000,3);
for i=0:9
    for j=0:9
        if (i ~= j)
            for k=0:9
                if (k ~=j && k~=i)
                    count=count+1;
                    space(count,1) = i;
                    space(count,2) = j;
                    space(count,3) = k;
                end;
            end;
        end;
    end;
end;
space = space(1:count, 1:3);
end

