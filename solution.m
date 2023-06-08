clear variables; clc;

Fs = 10 * 10^3; % 10KHz

% loading data from mat files
load("data/Normal.mat");
load("data/Falhas.mat");
load("data/Desconhecidos.mat");

% renaming
normal = Normal';
failing = Falhas';
unknown = Desconhecidos';

clear Normal Falhas Desconhecidos;

writematrix(normal, "data/normal.csv");
writematrix(failing, "data/failing.csv");
writematrix(unknown, "data/unknown.csv");