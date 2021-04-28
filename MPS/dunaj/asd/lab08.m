function [RRRR tt Pe]=lab08(inp)
global a;
global b;

a = importdata('opady.prn');
b = importdata('dunaj.prn');

lambda = 4.696e-3; %stala rozpadu trytu

Pe = 60;

tt = 1;

dt = a(2,1) - a(1,1); %krok czasowy
t_max = max(a(:,1));
dane = a(:,2);
output = zeros(size(dane,1),4);
output(:,4) = b(:,2);
for j= 1:3
    for i= 1:t_max
        output(i,1) = calka(dane,i,dt,tt,lambda,Pe,3);
    end
end

figure
hold on
cc=line;
for j=1:1
   h(j) = plot(1:t_max,output(:,j)); 
   RRRR = sqrt(sum(output(1:t_max,4) - output(1:t_max,3)).^2);

    set(h(j),'color',cc(:,j));
end

legend(h,{'dirac','exp','dysp','porownawcze'});
 xlim([162 t_max]);
[RRRR tt Pe];
 end
    