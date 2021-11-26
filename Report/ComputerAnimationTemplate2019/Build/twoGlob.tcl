system globSys dim 2

system globSys globule 0 1 1 -0.3 -3.9 0.5 -0.01 0 0
system globSys globule 1 1 1 0.2 -3.9 0.5 0.01 0 0

system globSys r0 1.0
simulator globSim constants 5.0 3.0 1.0
simulator globSim material solid 0.001
simulator globSim ground 5000 300
simulator globSim gravity 0.0