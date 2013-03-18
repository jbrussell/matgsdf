%% The driver program to run all the component in this folder
% Written by Ge Jin,jinwar@gmail.com

% download data use SOD

% run sac rotation

% change sac database to mat
sac2event

% clean up multiple or close events
cleanup_events.m

% automatic select the window range
run_autowinpick

% making cross-correlation measurement
gsdfmain

% calculating eikonal tomography for each event
eikonal_eq

% stacking the result
stack_phv
