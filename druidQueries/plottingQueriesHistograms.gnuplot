#!/usr/bin/env gnuplot  
# gnuplot 4.6 or better required
#
# (c) the authors
# Licensed under the Apache License, Version 2.0.
#

load "linespointsstyle.gnuplot"

dataset = "../resDruidBenchs/GroupByFilterOR.txt"
set xlabel "Density"
set ylabel "Times (ms)"
set style data histogram
set style histogram cluster gap 3
set style fill solid border -1
set boxwidth 0.9
set xtic rotate scale 0
set auto x

set yrange[50:*]
set out "../DruidQueriesFigures/groupByFilterOR.pdf"
plot    	dataset  every :::0::0 using 3:xtic(1) title 'Concise' with boxes, \
			dataset  every :::0::0 using 5:xtic(1) title 'Roaring' with boxes

dataset = "../resDruidBenchs/TimeseriesFilterOR.txt"

set out "../DruidQueriesFigures/TimeseriesFilterOR.pdf"
plot    	dataset  every :::0::0 using 3:xtic(1) title 'Concise' with boxes, \
			dataset  every :::0::0 using 5:xtic(1) title 'Roaring' with boxes
			
dataset = "../resDruidBenchs/TopNFilterOR.txt"

set out "../DruidQueriesFigures/TopNFilterOR.pdf"
plot    	dataset  every :::0::0 using 3:xtic(1) title 'Concise' with boxes, \
			dataset  every :::0::0 using 5:xtic(1) title 'Roaring' with boxes			

set key inside left			
			
dataset = "../resDruidBenchs/GroupByFilterAND.txt"

set out "../DruidQueriesFigures/groupByFilterAND.pdf"
plot    	dataset  every :::0::0 using 3:xtic(1) title 'Concise' with boxes, \
			dataset  every :::0::0 using 5:xtic(1) title 'Roaring' with boxes

dataset = "../resDruidBenchs/TimeseriesFilterAND.txt"

set out "../DruidQueriesFigures/TimeseriesFilterAND.pdf"
plot    	dataset  every :::0::0 using 3:xtic(1) title 'Concise' with boxes, \
			dataset  every :::0::0 using 5:xtic(1) title 'Roaring' with boxes
			
dataset = "../resDruidBenchs/TopNFilterAND.txt"

set out "../DruidQueriesFigures/TopNFilterAND.pdf"
plot    	dataset  every :::0::0 using 3:xtic(1) title 'Concise' with boxes, \
			dataset  every :::0::0 using 5:xtic(1) title 'Roaring' with boxes
			
