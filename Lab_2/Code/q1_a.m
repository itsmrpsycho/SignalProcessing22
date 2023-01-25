function [N,ROC,C,S] = q1_a(p)

    p = abs(p);
    p = sort(p);
    
    newarr = [p(1,1)];
    newIndex = 2;
    for i = 2:length(p)
        if p(i) ~= p(i-1)
            newarr(newIndex) = p(i);
            newIndex = newIndex + 1;
        end
    end

    if (newarr(1) ~= 0)
        p = newarr;
    else
        p = setdiff(newarr,0);
    end
   
    % for N
    if (isempty(p))
            p(1) = 0;
            N = 1;
    else
        N = length(p) + 1;
    end
   
    
    
        
    % for ROC
    ROC = zeros(N,2);

    ROC(1,1) = 0;
    if (length(p)~=1 || p(1) ~= 0)
        ROC(1,2) = p(1);

        pindex = 1;
        for i = 2:N-1
            ROC(i,1) = p(pindex);
            pindex = pindex + 1;
            ROC(i,2) = p(pindex);
        end
        
        ROC(N,1) = p(length(p));
        ROC(N,2) = Inf;
    else
        ROC(1,2) = Inf;
    end

    % for C
    C = zeros(N,1);
    C(N) = 1;

    % for S
    S = zeros(N,1);

%     disp(ROC);
    for i=1:N
        if ((ROC(i,1) < 1) && (1<ROC(i,2)))
%             disp(N);
%             disp("lower = " + num2str(ROC(i,1)));
%             disp("upper = " + num2str(ROC(i,2)));
            S(i) = 1;
        end
    end

end