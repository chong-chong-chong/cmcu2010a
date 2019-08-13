function A = area(hx)
    b = 0.6;
    a = 0.89;
    theta = acos((b-hx)/b);
    A = theta*a*b-a*b*cos(theta).*sin(theta);
end