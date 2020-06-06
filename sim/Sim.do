#----------------------------------*-tcl-*-

# Define reload command to recompile everything
# and rerun the simulation
proc reload {} {
  do Comp.do
  do Sim.do
}

# Define top entity of the design
set top workbench

# Load design into simulation
echo "Sim: load design"
vsim -novopt -wlfdeleteonquit work.${top}

# Load wave file configuration
echo "Sim: load wave-file(s)"
catch {do wave.do}

# Set all signals to be logged
echo "Sim: log signals"
log -r /*

# Run simulation
echo "Sim: run ..."
run 1200 ns

# Restore wave file.
# This can be used to restore cursor and view position
catch {do wave-restore.do}
