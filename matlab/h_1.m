function h = h_1(x,h0)
    b = 1.6;
    alpha = pi*4.1/180;
    L=2.45;
    x0=0.4;
    h1=(L-x0)*tan(alpha);
    h2=2*b - x0*tan(alpha);
    m=x0+h0/tan(alpha);
    n=x0+(h0-2*b)/tan(alpha);
    
    if h0<h1
        if x<m
            h = h0 - (x-x0)*tan(alpha);
        else
            h = 0;
        end
    elseif h0<h2
        h = h0 - (x-x0)*tan(alpha);    
    else
        if x<n
            h = 2*b;
        else
            h = h0 - (x-x0)*tan(alpha);
        end
    end
    
    if h0<0
        h = 0;
    end
    if x<0
        h = 0;
    end
end