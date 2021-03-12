Tplate = 10;
Theater = 80;


dx = 0.1;
dt = 0.1;
A = 30;
B = 20;
C = 5;
D = 10;

A = A/dx;
B = B/dx;
C = C/dx;
D = D/dx;

% plate
plate = zeros(A, A);
plate = plate+Tplate;
for i=D:A
    for j=1:C
        plate(i,j) = NaN;
    end

    for k=B+C:A
        plate(i,k) = NaN;
    end
end

%heater
for i=(A/3-D/2):D/2+A/3
    for j=(A/2-D/2):(D/2+A/2)
        plate(i,j) = Theater;
    end
end

imagesc(plate,[0,100]);
xlabel('width [mm]')
ylabel('height [mm]')
