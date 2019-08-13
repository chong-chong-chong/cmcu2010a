function A = area2(theta,r)
    A = theta.*r.^2-r.^2*cos(theta)*sin(theta)
end