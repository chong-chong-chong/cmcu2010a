function res = r(x,d)
    R = 1.63;
    r0 = 1.5;
    if -d<x && x<=0
        r = sqrt(x.^2-2*R*x);
    elseif 0<x && x<=L
        r = r0;
    elseif L<x && x<=L+d
        r = sqrt((2*R+x-L-d).*(x-L-d));
    else
        r = 0;
    end
end