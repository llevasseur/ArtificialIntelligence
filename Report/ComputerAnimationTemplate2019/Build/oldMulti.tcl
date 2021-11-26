set num 400
system globSys dim $num

set count 0

while {$count < [expr $num/4]} {
	system globSys globule $count 1 1 [expr cos($count)] [expr $count * 2] [expr sin($count)] 0 0 0
	set count [expr $count + 1]
}
while {$count < $num/2} {
	system globSys globule $count 1 1 [expr sin($count) * 0.25 ] [expr ($count - 100) * 2] [expr cos($count) * 0.25] 0 0 0
	set count [expr $count + 1]
}

while {$count < [expr $num/2 + $num/4]} {
	system globSys globule $count 1 1 [expr cos($count) * 0.5] [expr ($count - 200) * 2] [expr sin($count) * 0.5] 0 0 0
	set count [expr $count + 1]
}
while {$count < $num} {
	system globSys globule $count 1 1 [expr sin($count) * 0.75 ] [expr ($count - 300) * 2] [expr cos($count) * 0.75] 0 0 0
	set count [expr $count + 1]
}

system globSys r0 1.0
simulator globSim constants 5.0 3.0 2.0
simulator globSim material powder 0.001
simulator globSim ground 5000 300
simulator globSim gravity -9.8
