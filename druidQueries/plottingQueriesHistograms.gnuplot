#!/usr/bin/env gnuplot  
# gnuplot 4.6 or better required

#
# (c) the authors
# Licensed under the Apache License, Version 2.0.
#

set term pdfcairo fontscale 0.7
set termopt enhanced
load "linespointsstyle.gnuplot"

set xlabel "Density"
set ylabel "Times (ms)"
set style data histograms
set style histogram cluster gap 1
set style fill solid 1.0 border -1
set boxwidth 0.9 relative
set xtic rotate
set auto x

dataset = "../resDruidBenchs/GroupByFilterOR.txt"

set key inside left	
set yrange[50:*]
set out "../DruidQueriesFigures/groupByFilterOR.pdf"
plot dataset using 3:xtic(1) ti 'Concise', '' u 5 ti 'Roaring'

dataset = "../resDruidBenchs/TimeseriesFilterOR.txt"

set out "../DruidQueriesFigures/TimeseriesFilterOR.pdf"
plot dataset using 3:xtic(1) ti 'Concise', '' u 5 ti 'Roaring'
			
dataset = "../resDruidBenchs/TopNFilterOR.txt"

set out "../DruidQueriesFigures/TopNFilterOR.pdf"
plot dataset using 3:xtic(1) ti 'Concise', '' u 5 ti 'Roaring'
			
dataset = "../resDruidBenchs/GroupByFilterAND.txt"

set out "../DruidQueriesFigures/groupByFilterAND.pdf"
plot dataset using 3:xtic(1) ti 'Concise', '' u 5 ti 'Roaring'

dataset = "../resDruidBenchs/TimeseriesFilterAND.txt"

set out "../DruidQueriesFigures/TimeseriesFilterAND.pdf"
plot dataset using 3:xtic(1) ti 'Concise', '' u 5 ti 'Roaring'
			
dataset = "../resDruidBenchs/TopNFilterAND.txt"

set out "../DruidQueriesFigures/TopNFilterAND.pdf"
plot dataset using 3:xtic(1) ti 'Concise', '' u 5 ti 'Roaring'

dataset = "../resDruidBenchs/SelectFilterAND.txt"

set out "../DruidQueriesFigures/SelectFilterAND.pdf"
plot dataset using 3:xtic(1) ti 'Concise', '' u 5 ti 'Roaring'

dataset = "../resDruidBenchs/SelectFilterOR.txt"

set out "../DruidQueriesFigures/SelectFilterOR.pdf"
plot dataset using 3:xtic(1) ti 'Concise', '' u 5 ti 'Roaring'

dataset = "../resDruidBenchs/TimeseriesSelect.txt"

set out "../DruidQueriesFigures/TimeseriesSelect.pdf"
plot dataset using 3:xtic(1) ti 'Concise', '' u 5 ti 'Roaring'

set yrange[0:3000]			
dataset = "../resDruidBenchs/SearchFilterOR.txt"

set out "../DruidQueriesFigures/SearchFilterOR.pdf"
plot dataset using 3:xtic(1) ti 'Concise', '' u 5 ti 'Roaring'
			
set yrange[0:*]			
dataset = "../resDruidBenchs/TimeseriesNot.txt"

set out "../DruidQueriesFigures/TimeseriesNot.pdf"
plot dataset using 3:xtic(1) ti 'Concise', '' u 5 ti 'Roaring'
				
				
set xlabel "Fichiers plats stcokant les bitmaps"
set ylabel "Size (MB)"
set yrange[0:*]
set xtic rotate by 0			
dataset = "../resDruidBenchs/BitmapsDiskSize.txt"

set out "../DruidQueriesFigures/BitmapsDiskSize.pdf"
plot dataset using 3:xtic(1) ti 'Concise', '' u 5 ti 'Roaring'
			
