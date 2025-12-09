%plotting emg
%First sensor
clear
clc
close all

 data = readmatrix("proc_data\procData1.csv");
 subplot(4,1,1)
 plot(data(:,1),'LineWidth',1);
 title("Biceps")
 ylim([0,0.5]);

 subplot(4,1,2)
 plot(data(:,2),'LineWidth',1);
 title("Posterior Deltoid");
  ylim([0,0.5]);

 subplot(4,1,3)
 plot(data(:,3),'LineWidth',1);
 title("Anterior Deltoid");
 ylim([0,0.5]);
 
subplot(4,1,4)
 plot(data(:,4),'LineWidth',1);
 title("Middle Deltoid");
 ylim([0,0.5]);

 %% Second sensor
figure
 subplot(4,1,1)
 plot(data(:,5),'LineWidth',1);
 title("Triceps")
 ylim([0,0.5]);

 subplot(4,1,2)
 plot(data(:,6),'LineWidth',1);
 title("Wrist Flexors");
  ylim([0,0.5]);

 subplot(4,1,3)
 plot(data(:,7),'LineWidth',1);
 title("Wrist Extensors");
 ylim([0,0.5]);
 
subplot(4,1,4)
 plot(data(:,8),'LineWidth',1);
 title("Brachioradialis");
 ylim([0,0.5]);