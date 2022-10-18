function [ctX,N] = f_wdistribution(X,W,edges)
    % weighted empirical distribution
    % X data; W weight (not necessarily normalized)
    ctX=(edges(1:end-1)+edges(2:end))./2;
    delta=(edges(2:end)-edges(1:end-1));
    N=nan(size(ctX));
    for ii=1:length(ctX)
       inx=edges(ii)<=X & X< edges(ii+1);
       N(ii)=sum(W(inx))/delta(ii);
    end
    % normalization to pdf
    N=N./trapz(ctX,N);
   
end

