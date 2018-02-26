function count = sample_space_size()
%Find sample space size for following random value
count = 0;

for i=0:9
    for j=0:9
        if (i ~= j)
            for k=0:9
                if (k ~=j && k~=i)
                    count=count+1;
                end;
            end;
        end;
    end;
end;

end

