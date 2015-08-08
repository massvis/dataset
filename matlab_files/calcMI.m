% Zoya Bylinskii, Aug.7,2015

function MI = calcMI(pmf)

    pmf_1 = sum(pmf,2); pmf_2 = sum(pmf,1); 
    
    MI = 0;
    for i=1:size(pmf,1)
        for j=1:size(pmf,2)
            MI = MI+ pmf(i,j)*log(pmf(i,j)/(pmf_1(i)*pmf_2(j)));
        end
    end
end