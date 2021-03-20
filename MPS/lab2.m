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

%imagesc(matrix_02x02);

%% phisical & simulation parameters 
ss_K = 58;
ss_Cw = 450;
ss_ro = 7860;
ss_Epsilon = 0.001;

cu_K = 401;
cu_Cw = 380;
cu_ro = 8920;
cu_Epsilon = 0.001;

al_K = 237;
al_Cw = 900;
al_ro = 2700;
al_Epsilon = 0.001;

A = 0.3;
N = 0.2;
C = 0.05;
D = 0.1;

dt = 0.01;
sim_duration = 10000;


%% stainless steel
fprintf("steel...");
[ss_4x4_out,   ss_4x4_H,   ss_4x4_T_e,   ss_max_4x4_dT]    = sim_board(matrix_4x4,     sim_duration, ss_K, ss_Cw, ss_ro, A, dt, ss_Epsilon, 0);
[ss_1x1_out,   ss_1x1_H,   ss_1x1_T_e,   ss_max_1x1_dT]    = sim_board(matrix_1x1,     sim_duration, ss_K, ss_Cw, ss_ro, A, dt, ss_Epsilon, 0);
[ss_05x05_out, ss_05x05_H, ss_05x05_T_e, ss_max_05x05_dT]  = sim_board(matrix_05x05,   sim_duration, ss_K, ss_Cw, ss_ro, A, dt, ss_Epsilon, 0);
[ss_02x02_out, ss_02x02_H, ss_02x02_T_e, ss_max_02x02_dT]  = sim_board(matrix_02x02,   sim_duration, ss_K, ss_Cw, ss_ro, A, dt, ss_Epsilon, 0);
fprintf("done\n");
%% cooper
fprintf("cooper...");
[cu_4x4_out,   cu_4x4_H,   cu_4x4_T_e,   cu_max_4x4_dT]    = sim_board(matrix_4x4,     sim_duration, cu_K, cu_Cw, cu_ro, A, dt, cu_Epsilon, 0);
[cu_1x1_out,   cu_1x1_H,   cu_1x1_T_e,   cu_max_1x1_dT]    = sim_board(matrix_1x1,     sim_duration, cu_K, cu_Cw, cu_ro, A, dt, cu_Epsilon, 0);
[cu_05x05_out, cu_05x05_H, cu_05x05_T_e, cu_max_05x05_dT]  = sim_board(matrix_05x05,   sim_duration, cu_K, cu_Cw, cu_ro, A, dt, cu_Epsilon, 0);
[cu_02x02_out, cu_02x02_H, cu_02x02_T_e, cu_max_02x02_dT]  = sim_board(matrix_02x02,   sim_duration, cu_K, cu_Cw, cu_ro, A, dt, cu_Epsilon, 0);
fprintf("done\n");

%% aluminum
fprintf("aluminum...");
[al_4x4_out,   al_4x4_H,   al_4x4_T_e,   al_max_4x4_dT]    = sim_board(matrix_4x4,     sim_duration, al_K, al_Cw, al_ro, A, dt, al_Epsilon, 0);
[al_1x1_out,   al_1x1_H,   al_1x1_T_e,   al_max_1x1_dT]    = sim_board(matrix_1x1,     sim_duration, al_K, al_Cw, al_ro, A, dt, al_Epsilon, 0);
[al_05x05_out, al_05x05_H, al_05x05_T_e, al_max_05x05_dT]  = sim_board(matrix_05x05,   sim_duration, al_K, al_Cw, al_ro, A, dt, al_Epsilon, 0);
[al_02x02_out, al_02x02_H, al_02x02_T_e, al_max_02x02_dT]  = sim_board(matrix_02x02,   sim_duration, al_K, al_Cw, al_ro, A, dt, al_Epsilon, 0);
fprintf("done\n");

%% data
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

figure('name', 'panie mirku nieeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee', 'Position', [300 300 1200 500])
subplot(1,2,1)
bar3(T_e_data, 0.5)
ax = gca;
ax.XTickLabel = {'SS','Cu', 'Al'};
ax.YTickLabel = {'40','10', '5', '2'};
xlabel('Plate Material')
ylabel('Model Resolution [mm]')
zlabel('Final Temperature [K]')
title("Temperature")

subplot(1,2,2)
bar3(H_data.*dt, 0.5)
ax = gca;
ax.XTickLabel = {'SS','Cu', 'Al'};
ax.YTickLabel = {'40','10', '5', '2'};
xlabel('Plate Material')
ylabel('Model Resolution [mm]')
zlabel('Simulation Time [s]')
title("Time")


