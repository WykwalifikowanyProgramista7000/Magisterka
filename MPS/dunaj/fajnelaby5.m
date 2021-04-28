clc; close all;

opady = importdata('opady.prn');
dunaj = importdata('dunaj.prn');

dunaj = dunaj(:,2);
opady = opady(:,2);

plot(dunaj)
plot(opady)

%% 
% clc; close all;

% ===== cale te ======
tt_1 = 12;
tt_2 = 11;
tt_3 = 10;
Pe = 2;
% ====================

lambda = log(2)/(12*12.3);
% lambda = 4.696e-3;

t = length(opady);
dt = 1;
c_input = opady;
C_output = zeros(3,length(opady));

for ii = 1:length(opady)
    sum = zeros(3,1);
    t=ii*dt;
    for i=1:ii-1
        tau=i*dt;
        sum(1,1) = sum(1,1) + ...
            c_input(i)*(dirac((t-tau)-tt_1)==inf)*exp(-lambda*(t-tau));
        sum(2,1) = sum(2,1) + ...
            c_input(i)*1/tt_2*exp(-(t-tau)/tt_2)*exp(-lambda*(t-tau));
        sum(3,1) = sum(3,1) + ...
            c_input(i)*1/sqrt(4*pi*Pe*(t-tau)/tt_3)*1/(t-tau)*...
            exp(-(1-(t-tau)/tt_3)^2/(4*Pe*(t-tau)/tt_3))*exp(-lambda*(t-tau));
    end
    C_output(1,ii) = sum(1,1) * dt;
    C_output(2,ii) = sum(2,1) * dt;
    C_output(3,ii) = sum(3,1) * dt;
end


figure(1)
subplot(2,1,1); plot(movmean(C_output(1,:),3)); hold on
subplot(2,1,2); plot(movmean(C_output(2,:),3)); hold on
figure(2);      plot(movmean(C_output(3,:),3)); hold on

figure(1)
subplot(2,1,1); plot(162:length(dunaj), dunaj(162:length(dunaj)), 'm'); hold off
subplot(2,1,2); plot(162:length(dunaj), dunaj(162:length(dunaj)), 'm'); hold off
figure(2);      plot(162:length(dunaj), dunaj(162:length(dunaj)), 'm'); hold off
