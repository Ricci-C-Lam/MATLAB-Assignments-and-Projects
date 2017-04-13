function[Xo, Yo, Zo, Uo, Vo, Wo] = read_input(inputfile, sim_id)

%This function will extract the initial values of a space shuttle's
%reentry trajectory from a given input file. This is to be used in
%conjunction with shuttle.m
%
%Call format: [Xo, Yo, Zo, Uo, Vo, Wo] = read_input(inputfile, sim_id)

simul = importdata(inputfile);
pick = sim_id;

if any(pick == simul.data(:,1))
    Xo = simul.data(pick, 2);
    Yo = simul.data(pick, 3);
    Zo = simul.data(pick, 4);
    Uo = simul.data(pick, 5);
    Vo = simul.data(pick, 6);
    Wo = simul.data(pick, 7);
    
else
    Xo = 'Nan';
    Yo = 'Nan';
    Zo = 'Nan';
    Uo = 'Nan';
    Vo = 'Nan';
    Wo = 'Nan';
    disp('Nan');



end