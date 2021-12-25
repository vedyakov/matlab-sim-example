clear all;
clc;
close all;

%% Common model params

omega = 1;

% default exp params
lambda = 1;

%% Simulation params
TIME = 30;

%% Exp 1

% exp1 params
lambda = 1;

% start exp1 and save data
simOut1 = sim('exp_model','SimulationMode','Accelerator','StopTime', num2str(TIME));

%% Exp 2

% exp1 params
lambda = 2;

% start exp1 and save data
simOut2 = sim('exp_model','SimulationMode','Accelerator','StopTime', num2str(TIME));

%% Exp 3

% exp1 params
lambda = 3;

% start exp1 and save data
simOut3 = sim('exp_model','SimulationMode','Accelerator','StopTime', num2str(TIME));

%% Process data

% data_example – name of the logging variable in the scope of type
% "Datastructure with time"

t1 = simOut1.data_example.time;
y1 = simOut1.data_example.signals.values;
y12 = y1 + 1;

t2 = simOut2.data_example.time;
y2 = simOut2.data_example.signals.values;

t3 = simOut3.data_example.time;
y3 = simOut3.data_example.signals.values;

%% Plot figures
close all;

% plot one line
figure(1);
utils.plot_line(t1, y1, '$y_1(t), m^2$');
xlim([0 20]); % set custom properties for your plot, for example, change xlim 
utils.saveme('y1'); % save figure to file

% plot two lines
figure(2);
utils.plot_comparison2(t1, y1, t2, y2, '$y_1(t), y_2(t), m^2$', {'$y_1(t)$', '$y_2(t)$'});
legend('Location','southeast'); % set custom properties for your plot, for example, legend position
utils.saveme('y1_y2'); % save figure to file

% plot three lines
figure(3);
utils.plot_comparison3(t1, y1, t2, y2, t3, y3, '$y_1(t), y_2(t), y_3(t), m^2$', {'$y_1(t)$', '$y_2(t)$', '$y_3(t)$'});
utils.saveme('y1_y2_y3'); % save figure to file