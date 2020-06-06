# VS-Code Modelsim automation

Sample project demonstrating automating compilation and simulation of vhdl using Modelsim/Questasim.

## Files in use

### .vscode/tasks.json

Build tasks to run compilation and simulation using the tcl-scripts *Comp.do* and *Sim.do*.
Modelsim gets run from within the sim folder.

For the build task a simple regex is provide for displaying error messages in the *Problems*-pane.

The simulation task automatically runs the *Compile*-task first.

### sim/Comp.do

Compile all vhdl sources in correct order.

All requiered files have to be entered in correct order.

### sim/Sim.do

Start simulation, load wave config, log all signals, run simulation.

The top module (e.g. testbench) has to be configured.
If necessary the simulation duration has to be configured.

An additional command *reload* has been defined to reexecute *Comp.do* and *Sim.do* from within Modelsim.

The wave configuration gets loaded from the file *sim/wave.do* if the file is available.
The file can be created by saving the wave using *Ctrl+S* in the wave window.

### src/*.vhd

Sample vhdl files