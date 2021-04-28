 function RMSE = fajnelaby6(tt)
    %% Optimization Toolbox Solution

    % ========== data ==============
    opady = importdata('opady.prn');
    dunaj = importdata('dunaj.prn');
    % ==============================s

    dunaj = dunaj(:,2);
    opady = opady(:,2);
    lambda = 4.696e-3; %trythium half-life
    time = length(opady);
    dt = 1;
    c_input = opady;
    c_output = zeros(1,length(opady));

    % === optimization parameters ===
    Pe = 1;
%     tt = 100;
    % ===============================

    % calka_3_metody(c_input, ii, dt, tt, lambda,Pe, method_id)

    for i= 1:time
        c_output(i) = calka_3_metody(c_input, i, dt, tt, lambda, Pe, 2);
    end
    
    disp(tt)
    RMSE = sum((dunaj(162:length(dunaj))-c_output(162:length(dunaj))').^2)
    
    close all
    plot(1:length(dunaj), c_output, 'b', 162:length(dunaj), dunaj(162:length(dunaj)), 'm');
 end