set notitle
set key reverse Left autotitle columnhead inside top left vertical font ",25" samplen 2
set auto x
set yrange [100:20000]
set ylabel "Million Ops/s" font ",25"
set xlabel "#Threads" font ",25"
set ytics font ",25"
set xtics font ",25"
set logscale y 10
set style data histogram
set style histogram cluster gap 1 title offset 0,-1
set style fill solid border
set boxwidth 1
set grid ytics

set xtic scale 0
set bmargin 5
set xlabel offset 0,-1
set lmargin 14
set ylabel offset -3,0
set tmargin 2

set border lw 2
set border 00

# set terminal pdf size 8,4
set terminal pdf size 9,3.5

set output 'mem-scale.pdf'
plot 'mem-scale.data' using 2:xtic(1) ti col lc rgb "#DEAD26" lw 2 fs pattern 3 noborder, \
     '' u 3:xtic(1) ti col lc rgb "#84A0C1" lw 2 fs pattern 3 noborder, \
     '' u 4:xtic(1) ti col lc rgb "#617288" lw 2 fs pattern 3 noborder, \
     '' u 5:xtic(1) ti col lc rgb "#333333" lw 2 fs pattern 2 noborder