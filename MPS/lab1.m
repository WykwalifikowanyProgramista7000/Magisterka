clc;

number_of_trajectories = 1000000;
steps = 1000;
xx = [];
yy = [];

final_position_count = zeros(steps*2, steps*2);

%hold on
for ii = 1 : number_of_trajectories
    X = zeros(1,steps);
    Y = zeros(1,steps); 
        for i = 2 : steps
            X(i) = [xx (X(i-1) + randn(1))];
            Y(i) = [yy (Y(i-1) + randn(1))];
        end
%     plot(X,Y)
      x = round(X(steps))+steps;
      y = round(Y(steps))+steps;
      final_position_count(x, y) = final_position_count(x, y) + 1;
end

dimension = -steps:steps-1;

%%
figure(1);
surfl(dimension,dimension, final_position_count);
axis([-100 100 -100 100 0 200])
shading flat
colormap(gray);



%%
clc; clear;
number_of_trajectories = 10000;
steps = 1000;
displacement = zeros(number_of_trajectories, steps);
for ii = 1 : number_of_trajectories
    for i = 2 : steps
        displacement(ii,i) = displacement(ii,i-1) + randn(1);
        displacement(ii,i-1) = displacement(ii,i-1)^2; 
    end
    displacement(ii,steps) = displacement(ii,steps)^2; 
end

means_squared = sum(displacement,1);
means_squared = means_squared./number_of_trajectories

figure(1)
plot(1:steps, means_squared)
axis([0 1000 0 1000])

%%
clc; clear;
x = randn(1000,1);
ac=[];

for i = -100:100
    ac = [ac corr(x(101:900), x(101+i:900+i))];
end

plot(-100:100, ac);

%%

xd = [1 1 1 1 1 1 1;
      1 2 2 2 2 2 1;
      1 2 3 3 3 2 1;
      1 2 3 4 3 2 1;
      1 2 3 3 3 2 1;
      1 2 2 2 2 2 1;
      1 1 1 1 1 1 1;
      ];
x = 1:7;
y = 1:7;
imagesc(xd);


%%
max_x = max(X);
min_x = min(X);
x_range = max_x - min_x;

max_y = max(Y);
min_y = min(Y);

y_range = max_y - min_y;

siatka = 20;

zakresX = x_range

for i = 1: siatka
    plot(X,Y)
end
