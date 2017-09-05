set terminal png transparent size 640,240
set size 1.0,1.0

set terminal png transparent size 640,480
set output 'commits_by_author.png'
set key left top
set yrange [0:]
set xdata time
set timefmt "%s"
set format x "%Y-%m-%d"
set grid y
set ylabel "Commits"
set xtics rotate
set bmargin 6
plot 'commits_by_author.dat' using 1:2 title "Benjamin Pasero" w lines, 'commits_by_author.dat' using 1:3 title "Joao Moreno" w lines, 'commits_by_author.dat' using 1:4 title "Johannes Rieken" w lines, 'commits_by_author.dat' using 1:5 title "Alex Dima" w lines, 'commits_by_author.dat' using 1:6 title "isidor" w lines, 'commits_by_author.dat' using 1:7 title "Martin Aeschlimann" w lines, 'commits_by_author.dat' using 1:8 title "Daniel Imms" w lines, 'commits_by_author.dat' using 1:9 title "Sandeep Somavarapu" w lines, 'commits_by_author.dat' using 1:10 title "Matt Bierner" w lines, 'commits_by_author.dat' using 1:11 title "Dirk Baeumer" w lines, 'commits_by_author.dat' using 1:12 title "Andre Weinand" w lines, 'commits_by_author.dat' using 1:13 title "Christof Marti" w lines, 'commits_by_author.dat' using 1:14 title "Rob Lourens" w lines, 'commits_by_author.dat' using 1:15 title "Michel Kaporin" w lines, 'commits_by_author.dat' using 1:16 title "David Storey" w lines, 'commits_by_author.dat' using 1:17 title "rebornix" w lines, 'commits_by_author.dat' using 1:18 title "Ramya Achutha Rao" w lines, 'commits_by_author.dat' using 1:19 title "João Moreno" w lines, 'commits_by_author.dat' using 1:20 title "Pine Wu" w lines, 'commits_by_author.dat' using 1:21 title "kieferrm" w lines
