# Muscle-activation-OpenSim-sEMG
Summary: This is a project in which we solved for upper body muscle activation during isometric movements and compare it to sEMG of 8 muscles in the arm. The forces are recorded from a BOTA force/torque sensor attached to a handle at the end effector of a KUKA robot.
# Force
Read the force and torque data from ROS bag and rotate it to be expressed in motion capture space: 
1. Open ROT_force.m.
2. Change the marker locations based on your marker set on the robot end effector.
3. Initialize the FilePath_read with the location of your ros bag.
4. Initialize FilePath_save with the location where you want to save the .sto files.
5. Make sure you have the writeSTO funstion in the same folder.
6. run the script.

Write .mot and XML files for force data for each trial:
1. Righ click on each .sto file, open Properties and change the ".sto" to ".mot".
2. Open Force_sim_Iso7 with Notepad++.
3. Change the datafile to match your .mot file.
