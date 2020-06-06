# Compile vhdl file
proc comp {filename} {
  if {[file exists ${filename}] == 1} {
   puts "## vcom $filename"
   vcom -93 -novopt -quiet ${filename} -work work -lint
   #vcom -2008 -novopt -quiet ${filename} -work work -lint
  } else {
   puts "## WARNING: File not found: ${filename}"
  }
}

# Create library "work" if necessary
catch {vlib work}

# Compile all sources in correct order
comp ../src/FullAdder-ea.vhd
comp ../src/FullAdder-tb.vhd