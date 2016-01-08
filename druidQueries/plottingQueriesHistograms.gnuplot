#!/usr/bin/env gnuplot  
# gnuplot 4.6 or better required

load "../linespointsstyle.gnuplot"

dataset = "../../results/resDruidBenchs/GroupByFilterOR.txt"
set xlabel "Density"
set ylabel "Times (ms)"
set style data histogram
set style histogram cluster gap 3
set style fill solid border -1
set boxwidth 0.9
set xtic rotate scale 0
set auto x

# set key 0.5,6e+006
#set xrange [*:*]
#set logscale y 10
#set format y "10^{%T}"
#set xtics border in scale 1,0.5 nomirror rotate by -45 offset character 0, 0, 0 norangelimit
#set logscale x 10
#set format x "10^{%T}"
#set format x "2^{%L}"

set yrange[50:*]
set out "../../PHD_Thesis/Figures/DruidQueriesFigures/groupByFilterOR.pdf"
plot    	dataset  every :::0::0 using 3:xtic(1) title 'Concise' with boxes, \
			dataset  every :::0::0 using 5:xtic(1) title 'Roaring' with boxes

dataset = "../../results/resDruidBenchs/TimeseriesFilterOR.txt"

set out "../../PHD_Thesis/Figures/DruidQueriesFigures/TimeseriesFilterOR.pdf"
plot    	dataset  every :::0::0 using 3:xtic(1) title 'Concise' with boxes, \
			dataset  every :::0::0 using 5:xtic(1) title 'Roaring' with boxes
			
dataset = "../../results/resDruidBenchs/TopNFilterOR.txt"

set out "../../PHD_Thesis/Figures/DruidQueriesFigures/TopNFilterOR.pdf"
plot    	dataset  every :::0::0 using 3:xtic(1) title 'Concise' with boxes, \
			dataset  every :::0::0 using 5:xtic(1) title 'Roaring' with boxes			

set key inside left			
			
dataset = "../../results/resDruidBenchs/GroupByFilterAND.txt"

set out "../../PHD_Thesis/Figures/DruidQueriesFigures/groupByFilterAND.pdf"
plot    	dataset  every :::0::0 using 3:xtic(1) title 'Concise' with boxes, \
			dataset  every :::0::0 using 5:xtic(1) title 'Roaring' with boxes

dataset = "../../results/resDruidBenchs/TimeseriesFilterAND.txt"

set out "../../PHD_Thesis/Figures/DruidQueriesFigures/TimeseriesFilterAND.pdf"
plot    	dataset  every :::0::0 using 3:xtic(1) title 'Concise' with boxes, \
			dataset  every :::0::0 using 5:xtic(1) title 'Roaring' with boxes
			
dataset = "../../results/resDruidBenchs/TopNFilterAND.txt"

set out "../../PHD_Thesis/Figures/DruidQueriesFigures/TopNFilterAND.pdf"
plot    	dataset  every :::0::0 using 3:xtic(1) title 'Concise' with boxes, \
			dataset  every :::0::0 using 5:xtic(1) title 'Roaring' with boxes
			