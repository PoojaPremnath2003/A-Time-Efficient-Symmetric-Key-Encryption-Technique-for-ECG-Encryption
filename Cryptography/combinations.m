function pairs= combinations(n,factors)
    pairs=[];
    count=1
    for i=1:size(factors,2)
        element= factors(i);        
        for j=1: size(factors,2)
            if element*factors(j)==n
                if ismember(factors(j),element)==[0]
                    pairs(count,1)=element;
                    pairs(count,2)=factors(j);
                    count=count+1;
                end
            end
        end
    end
end