%%
h0 = 0.1;
%%
for i = 1:1200
    
    v(end+1) = integral(area(h_1(,h0)),0,2.45);
end
%%
plot(v);
%%

    %reG �ݹ����ι�ʽ
    %   f��[a,b]�ϵ�����,�ݹ�n��
    n=3;
    v=[];
 for i = 1:length(mm1)
     h0 = mm1(i)/1000;
    b = 2.45;a=0;
    h = 0.5*(b-a);
    points = a+h;
    INT = 0.5*(area(h_1(a,h0))+area(h_1(b,h0)))*h+h*area(h_1(points,h0));%��һ��ֵ
        for countor = 2:n
            h = 0.5*h;
            points = [points+h,points-h];%���е���
            INT = 0.5*INT + h*sum(area(h_1(points,h0)));
        end
    v(end+1) = INT;
end
