    % ========== data ==============
    opady = importdata('opady.prn');
    dunaj = importdata('dunaj.prn');
    % ==============================s

    dunaj = dunaj(:,2);
    opady = opady(:,2);
    
    length(dunaj)