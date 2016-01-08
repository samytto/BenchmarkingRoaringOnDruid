#
# (c) the authors
# Licensed under the Apache License, Version 2.0.
#


set style line 80 lt rgb "#000000"

# Line style for grid
#set style line 81 lt 0  # dashed
#set style line 81 lt rgb "#808080"  # grey

#set grid back linestyle 81
set border 3 back linestyle 80 # Remove border on top and right.  These
             # borders are useless and make it harder
             # to see plotted lines near the border.
    # Also, put it in grey; no need for so much emphasis on a border.
set xtics nomirror
set ytics nomirror



set style line 1 lt rgb "#A00000" lw 4 pt 1 ps 1
set style line 2 lt rgb "#00A000" lw 4 pt 5 ps 1
set style line 3 lt rgb "#5060D0" lw 4 pt 7 ps 1
set style line 4 lt rgb "#FF1493" lw 4 pt 9 ps 1
set style line 5 lt rgb "red" lw 4 pt 11 ps 1
set style line 6 lt rgb "#808000" lw 4 pt 13 ps 1
set style line 7 lt rgb "#00008B" lw 4 pt 15 ps 1
set style line 8 lt rgb "#800080" lw 4 pt 21 ps 1
set style line 9 lt rgb "black" lw 4 pt 63 ps 1
set style line 10 lt rgb "blue" lw 4 pt 28 ps 1
set style line 11 lt rgb "violet" lw 4 pt 44 ps 1

