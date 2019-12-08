function Function = MP3(A)

    if length(A) >= 11
       number = 10;  
    else
        number = length(A) - 1;
    end

    for i = 1:number
        
        F1 = polyfit(A(:, 1), A(:, 2), i);
        pv = polyval(F1, A(:, 1));
        F1 = norm(A(:, 2) - pv);
        y = [i, F1];
        
        
        if i == 1
            z = y;
        end
        
        A
        
        if z(2) >= y(2)
            t = y(1);
        end
        
    end

Function = polyfit(A(:, 1), A(:, 2), t);
disp('Coefficients: ')
end