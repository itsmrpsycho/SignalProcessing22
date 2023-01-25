function y = quadratic_quant(x,B,a)
y = zeros(size(x));

divs = 0:(a-0)/(2^(B-1)):a;
l = length(divs);
divs = divs.^2;

for i=1:length(x)
    if (x(i)>0 && x(i)<1)
        for j=1:length(divs)
            if (x(i)<=divs(j))
                y(i) = (divs(j)+divs(j-1))/2;
                break;
            end
        end
    elseif (x(i) == 1)
        y(i) = (divs(l)+divs(l-1))/2;
    elseif (x(i)<0 && x(i)>-1)
        for j=1:length(divs)
            if (x(i)>=-divs(j))
                y(i) = (-divs(j)-divs(j-1))/2;
                break;
            end
        end
    elseif (x(i) == -1)
        y(i) = -(divs(l)+divs(l-1))/2;
    elseif (x(i)==0)
        y(i) = (divs(2)+divs(1)) / 2;
    end
end


end