function h = h_2(x,eta)
    alpha_ = 4.1*180/pi
    r0 = 1.5;
    L = 8;
    d = 1;
    l = 
    if 0<eta && eta<=L*tan(alpha_)
        if -d<x && x<=m
            h = -x*tan(alpha_)+eta;
        else
            h = 0;
        end
    elseif L*tan(alpha_)<eta && eta<=r+L/2*tan(aplha_)
        if 0<x && x<=l
            h = r0 +r;
        elseif l<x && x<=m
            h = -x*tan(alpha_)+h
        else
            h = 0
        end
    else
        h = 0
    end
end