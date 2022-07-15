function EOP = fBudyko(di,GA)
    ga=GA;
    DI=linspace( (GA/10).^0.5.*0.25, di(end),100);
    EOP1=ga.^(ga./DI-1).*exp(-ga);
    inc_gamma=( 1-gammainc(ga,ga./DI) ).*gamma(ga./DI);
    %igamma(nu,z)=( 1-gammainc(z,nu) ).*gamma(nu)
    EOP2=gamma(ga./DI)-inc_gamma;
    EOP=1-DI.*EOP1./EOP2;
    EOP=interp1([0,DI],[0,EOP],di);
end

