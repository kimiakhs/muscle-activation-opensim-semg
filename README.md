# Muscle-activation-OpenSim-sEMG
Summary: This is a project in which we solved for upper body muscle activation during isometric movements and compare it to sEMG of 8 muscles in the arm. The forces are recorded from a BOTA force/torque sensor attached to a handle at the end effector of a KUKA robot. Project data is shared on google drive: https://drive.google.com/drive/folders/1Ve6RCtBJ3CAHE0h3tUTHv5pxKAgLz2R7?usp=sharing
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

# OpenSim 4.5
Download MOBL model version 4.1: https://simtk.org/frs/?group_id=657

Scale the model:
1. On OpenSim, load the model.
2. Open scaling tool window.
3. Load scaling setup from scaling folder on google drive.
4. Change the file path to load A_Iso_01.trc from scaling folder on google drive.
5. Run the scaling.
6. Save the saled model.
7. Close the model.

Run inverse kinematics:
1. Load the scaled model.
2. Open inverse kinematic tool window.
3. Load inverse kinematic setup from IK folder on google drive.
4. Change the file path to load the corresponding .trc file from Mocap folder on google drive.
6. Save the results in the desired file path.
7. Run the inverse kinematics.

Run inverse dynamics:
1. Open inverse dynamics tool window.
2. Change the file path to load the the inverse kinematic results.
3. On the external force tab, load the corresponding XML file.
4. Turn on the 6 Hz filtering.
5. Save the results in the desired file path.
6. Run the inverse dynamics.

# Model modification for static oprimization
Multiply muscle forces by 2:
1. Open ModifyModel.m
2. Change modelFile to match your scaled model file path.
3. (you can change 2 to other numbers if needed or change the name).
4. Run the script.
