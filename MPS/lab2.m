%% Heat transfer simulation   Wojciech Dziuba
% 
%
%

%% Creating matrices that represent the simulation resolution
clc; close all;

matrix_4x4 = [
    1 1 1 1 1 1 1 1;
    1 2 2 8 8 2 2 1;
    1 1 1 8 8 1 1 1;
    0 0 1 2 2 1 0 0;
    0 0 1 2 2 1 0 0;
    0 0 1 2 2 1 0 0;
    0 0 1 2 2 1 0 0;
    0 0 1 1 1 1 0 0;
];

matrix_1x1 = [
    1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
    1 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 1;
    1 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 1;
    1 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 1;
    1 2 2 2 2 2 2 2 2 2 8 8 8 8 8 8 8 8 8 8 2 2 2 2 2 2 2 2 2 1;
    1 2 2 2 2 2 2 2 2 2 8 8 8 8 8 8 8 8 8 8 2 2 2 2 2 2 2 2 2 1;
    1 2 2 2 2 2 2 2 2 2 8 8 8 8 8 8 8 8 8 8 2 2 2 2 2 2 2 2 2 1;
    1 2 2 2 2 2 2 2 2 2 8 8 8 8 8 8 8 8 8 8 2 2 2 2 2 2 2 2 2 1;
    1 2 2 2 2 2 2 2 2 2 8 8 8 8 8 8 8 8 8 8 2 2 2 2 2 2 2 2 2 1;
    1 1 1 1 1 1 2 2 2 2 8 8 8 8 8 8 8 8 8 8 2 2 2 2 1 1 1 1 1 1;
    0 0 0 0 0 1 2 2 2 2 8 8 8 8 8 8 8 8 8 8 2 2 2 2 1 0 0 0 0 0;
    0 0 0 0 0 1 2 2 2 2 8 8 8 8 8 8 8 8 8 8 2 2 2 2 1 0 0 0 0 0;
    0 0 0 0 0 1 2 2 2 2 8 8 8 8 8 8 8 8 8 8 2 2 2 2 1 0 0 0 0 0;
    0 0 0 0 0 1 2 2 2 2 8 8 8 8 8 8 8 8 8 8 2 2 2 2 1 0 0 0 0 0;
    0 0 0 0 0 1 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 1 0 0 0 0 0;
    0 0 0 0 0 1 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 1 0 0 0 0 0;
    0 0 0 0 0 1 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 1 0 0 0 0 0;
    0 0 0 0 0 1 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 1 0 0 0 0 0;
    0 0 0 0 0 1 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 1 0 0 0 0 0;
    0 0 0 0 0 1 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 1 0 0 0 0 0;
    0 0 0 0 0 1 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 1 0 0 0 0 0;
    0 0 0 0 0 1 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 1 0 0 0 0 0;
    0 0 0 0 0 1 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 1 0 0 0 0 0;
    0 0 0 0 0 1 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 1 0 0 0 0 0;
    0 0 0 0 0 1 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 1 0 0 0 0 0;
    0 0 0 0 0 1 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 1 0 0 0 0 0;
    0 0 0 0 0 1 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 1 0 0 0 0 0;
    0 0 0 0 0 1 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 1 0 0 0 0 0;
    0 0 0 0 0 1 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 1 0 0 0 0 0;
    0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0;
];

matrix_05x05 = repelem(matrix_1x1,2,2);
matrix_02x02 = repelem(matrix_1x1,5,5);


figure('name', 'Resolution Matrices', 'Position', [300 300 1200 500])
subplot(2,2,1)
imagesc(matrix_4x4);
title("Matrix 40 mm x 40 mm")
subplot(2,2,2)
imagesc(matrix_1x1);
title("Matrix 10 mm x 10 mm")
subplot(2,2,3)
imagesc(matrix_05x05);
title("Matrix 5 mm x 5 mm")
subplot(2,2,4)
imagesc(matrix_02x02);
title("Matrix 2 mm x 2 mm")



%% Phisical & Simulation parameters of diffrent materials 

% Stainles Steel
ss_K = 58;
ss_Cw = 450;
ss_ro = 7860;
ss_Epsilon = 0.001;

% Coper
cu_K = 401;
cu_Cw = 380;
cu_ro = 8920;
cu_Epsilon = 0.001;

% Aluminum
al_K = 237;
al_Cw = 900;
al_ro = 2700;
al_Epsilon = 0.001;

figure('name', 'Object', 'Position', [300 300 1200 500])
imshow("Przechwytywanie.PNG")
title("Phisical Object")

A = 0.3;
N = 0.2;
C = 0.05;
D = 0.1;
h = 0.005;
P = 100;

dt = 0.01;
sim_duration = 10000;

%% Running the simulation

% Stainless Steel
fprintf("steel...");
[ss_4x4_out,   ss_4x4_H,   ss_4x4_T_e,   ss_max_4x4_dT]    = sim_board(matrix_4x4,     sim_duration, ss_K, ss_Cw, ss_ro, A, D, h, P, dt, ss_Epsilon, 0);
[ss_1x1_out,   ss_1x1_H,   ss_1x1_T_e,   ss_max_1x1_dT]    = sim_board(matrix_1x1,     sim_duration, ss_K, ss_Cw, ss_ro, A, D, h, P, dt, ss_Epsilon, 0);
[ss_05x05_out, ss_05x05_H, ss_05x05_T_e, ss_max_05x05_dT]  = sim_board(matrix_05x05,   sim_duration, ss_K, ss_Cw, ss_ro, A, D, h, P, dt, ss_Epsilon, 0);
[ss_02x02_out, ss_02x02_H, ss_02x02_T_e, ss_max_02x02_dT]  = sim_board(matrix_02x02,   sim_duration, ss_K, ss_Cw, ss_ro, A, D, h, P, dt, ss_Epsilon, 0);
fprintf("done\n");

% Cooper
fprintf("cooper...");
[cu_4x4_out,   cu_4x4_H,   cu_4x4_T_e,   cu_max_4x4_dT]    = sim_board(matrix_4x4,     sim_duration, cu_K, cu_Cw, cu_ro, A, D, h, P, dt, cu_Epsilon, 0);
[cu_1x1_out,   cu_1x1_H,   cu_1x1_T_e,   cu_max_1x1_dT]    = sim_board(matrix_1x1,     sim_duration, cu_K, cu_Cw, cu_ro, A, D, h, P, dt, cu_Epsilon, 0);
[cu_05x05_out, cu_05x05_H, cu_05x05_T_e, cu_max_05x05_dT]  = sim_board(matrix_05x05,   sim_duration, cu_K, cu_Cw, cu_ro, A, D, h, P, dt, cu_Epsilon, 0);
[cu_02x02_out, cu_02x02_H, cu_02x02_T_e, cu_max_02x02_dT]  = sim_board(matrix_02x02,   sim_duration, cu_K, cu_Cw, cu_ro, A, D, h, P, dt/10, cu_Epsilon, 0);
fprintf("done\n");

% Aluminum
fprintf("aluminum...");
[al_4x4_out,   al_4x4_H,   al_4x4_T_e,   al_max_4x4_dT]    = sim_board(matrix_4x4,     sim_duration, al_K, al_Cw, al_ro, A, D, h, P, dt, al_Epsilon, 0);
[al_1x1_out,   al_1x1_H,   al_1x1_T_e,   al_max_1x1_dT]    = sim_board(matrix_1x1,     sim_duration, al_K, al_Cw, al_ro, A, D, h, P, dt, al_Epsilon, 0);
[al_05x05_out, al_05x05_H, al_05x05_T_e, al_max_05x05_dT]  = sim_board(matrix_05x05,   sim_duration, al_K, al_Cw, al_ro, A, D, h, P, dt, al_Epsilon, 0);
[al_02x02_out, al_02x02_H, al_02x02_T_e, al_max_02x02_dT]  = sim_board(matrix_02x02,   sim_duration, al_K, al_Cw, al_ro, A, D, h, P, dt/10, al_Epsilon, 0);
fprintf("done\n");

%% Acquired Data

figure('name', 'Resolution Matrices', 'Position', [300 300 1200 500])
subplot(3,4,1)
imagesc(ss_4x4_out);
title("Stainless Steel 40 mm x 40 mm")
subplot(3,4,2)
imagesc(ss_1x1_out);
title("Stainless Steel 10 mm x 10 mm")
subplot(3,4,3)
imagesc(ss_05x05_out);
title("Stainless Steel5 mm x 5 mm")
subplot(3,4,4)
imagesc(ss_02x02_out);
title("Stainless Steel 2 mm x 2 mm")

subplot(3,4,5)
imagesc(ss_4x4_out);
title("Cooper 40 mm x 40 mm")
subplot(3,4,6)
imagesc(cu_1x1_out);
title("Cooper 10 mm x 10 mm")
subplot(3,4,7)
imagesc(cu_05x05_out);
title("Cooper 5 mm x 5 mm")
subplot(3,4,8)
imagesc(cu_02x02_out);
title("Cooper 2 mm x 2 mm")

subplot(3,4,9)
imagesc(al_4x4_out);
title("Aluminum 40 mm x 40 mm")
subplot(3,4,10)
imagesc(al_1x1_out);
title("Aluminum 10 mm x 10 mm")
subplot(3,4,11)
imagesc(al_05x05_out);
title("Aluminum 5 mm x 5 mm")
subplot(3,4,12)
imagesc(al_02x02_out);
title("Aluminum 2 mm x 2 mm")


T_e_data = [
    ss_4x4_T_e   cu_4x4_T_e   al_4x4_T_e;
    ss_1x1_T_e   cu_1x1_T_e   al_1x1_T_e;
    ss_05x05_T_e cu_05x05_T_e al_05x05_T_e;
    ss_02x02_T_e cu_02x02_T_e al_02x02_T_e;
   ];

H_data = [
    ss_4x4_H   cu_4x4_H   al_4x4_H;
    ss_1x1_H   cu_1x1_H   al_1x1_H;
    ss_05x05_H cu_05x05_H al_05x05_H;
    ss_02x02_H cu_02x02_H al_02x02_H;
   ];

figure('name', 'Simulation Data', 'Position', [300 300 1200 500])
subplot(1,2,1)
bar(T_e_data, 0.5)
ax = gca;
%ax.XTickLabel = {'SS','Cu', 'Al'};
ax.XTickLabel = {'40','10', '5', '2'};
%xlabel('Plate Material')
xlabel('Model Resolution [mm]')
ylabel('Final Temperature [K]')
title("Temperature")
legend('Stainless Steel','Coper', 'Aluminum', 'Location', 'east')

subplot(1,2,2)
bar(H_data.*dt, 0.5)
ax = gca;
%ax.XTickLabel = {'SS','Cu', 'Al'};
ax.XTickLabel = {'40','10', '5', '2'};
%xlabel('Plate Material')
xlabel('Model Resolution [mm]')
ylabel('Equilibration Time [s]')
title("Temperature")
legend('Stainless Steel','Coper', 'Aluminum', 'Location', 'east')

figure('name', 'Table', 'Position', [300 300 300 100])
resolution = {'40 mm';'10 mm';'5 mm'; '2 mm'};
Stainless_Steel = [T_e_data(1,1);T_e_data(2,1);T_e_data(3,1);T_e_data(4,1)];
Coper = [T_e_data(1,2);T_e_data(2,2);T_e_data(3,2);T_e_data(4,2)];
Aluminum = [T_e_data(1,3);T_e_data(2,3);T_e_data(3,3);T_e_data(4,3)];
T = table(Stainless_Steel,Coper,Aluminum,'RowNames',resolution);

uitable('Data',T{:,:},'ColumnName',T.Properties.VariableNames,...
    'RowName',T.Properties.RowNames,'Units', 'Normalized', 'Position',[0, 0, 1, 1]);

%% Summary
% With that we can observe, that the minimum resolution right for the
% simulation was the 1 mm x 1 mm. Any better resolution yealds the same
% information about the equilibrium temperature of the plate