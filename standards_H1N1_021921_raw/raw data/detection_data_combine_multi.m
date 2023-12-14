%combine all multiplexed PCR detection data for  MOI 0.1 burst size
%Geoff Zath
%1-22-21 v1_multi

%2-19-21
%M gene and Beta actin std curve 100 cpd in 100 um drops (10^6 copies/uL pre-split)
%rename import file names, 'Cycles' variable, .mat file name

%0.70V FAM gain
%0.6V Cy5 gain

clear; clc

Cycles = [1 16 19 22 25 28 31 40]; %UPDATE


filename = 'detection_data_std_021921.mat'; %UPDATE

%% Load Data

A{1} = importdata('mgene_1_peaks_100kHz_7.txt');
A{2} = importdata('mgene_2_peaks_100kHz_6.txt');
A{3} = importdata('mgene_3_peaks_100kHz_5.txt');
A{4} = importdata('mgene_4_peaks_100kHz_4.txt');
A{5} = importdata('mgene_5_peaks_100kHz_3.txt');
A{6} = importdata('mgene_6_peaks_100kHz_2.txt');
A{7} = importdata('mgene_7_peaks_100kHz_1.txt');
A{8} = importdata('mgene_40_peaks_100kHz_0.txt');
%A{9} = importdata('40C_std_peaks_100kHz_10.txt');
% A{10} = importdata('19_peaks_100kHz_4.txt');
% A{11} = importdata('19_peaks_100kHz_5.txt');
% A{12} = importdata('22_peaks_100kHz_1.txt');
% A{13} = importdata('22_peaks_100kHz_2.txt');
% A{14} = importdata('22_peaks_100kHz_3.txt');
% A{15} = importdata('22_peaks_100kHz_4.txt');
% A{16} = importdata('22_peaks_100kHz_5.txt');
% A{17} = importdata('40_peaks_100kHz.txt');

%% Combine Data

L = length(A);

for i = 1 : L
    
        temp_cell = A{i};
        temp_data = temp_cell.data;

        Time_Inside{i} = temp_data(:,13);
        %CB{i} = temp_data(:,1);
        FAM{i} = temp_data(:,2);
        ROX{i} = temp_data(:,3);
        CY5{i} = temp_data(:,4);
        
end

README = ['Cell Structure = (cycle)'];

save(filename,'Time_Inside','FAM','ROX','CY5','Cycles','README')