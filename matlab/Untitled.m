%%
h0 = 0.1;
%%
for i = 1:1200
    
    v(end+1) = integral(area(h_1(,h0)),0,2.45);
end
%%
plot(v);
%%

    %reG 递归梯形公式
    %   f在[a,b]上的区间,递归n次
    n=3;
    v=[];
 for i = 1:length(mm1)
     h0 = mm1(i)/1000;
    b = 2.45;a=0;
    h = 0.5*(b-a);
    points = a+h;
    INT = 0.5*(area(h_1(a,h0))+area(h_1(b,h0)))*h+h*area(h_1(points,h0));%第一次值
        for countor = 2:n
            h = 0.5*h;
            points = [points+h,points-h];%点列迭代
            INT = 0.5*INT + h*sum(area(h_1(points,h0)));
        end
    v(end+1) = INT;
end
