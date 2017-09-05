set terminal png transparent size 640,240
set size 1.0,1.0

set terminal png transparent size 640,480
set output 'lines_of_code_by_author.png'
set key left top
set yrange [0:]
set xdata time
set timefmt "%s"
set format x "%Y-%m-%d"
set grid y
set ylabel "Lines"
set xtics rotate
set bmargin 6
plot 'lines_of_code_by_author.dat' using 1:2 title "Benjamin Pasero" w lines, 'lines_of_code_by_author.dat' using 1:3 title "Joao Moreno" w lines, 'lines_of_code_by_author.dat' using 1:4 title "Johannes Rieken" w lines, 'lines_of_code_by_author.dat' using 1:5 title "Alex Dima" w lines, 'lines_of_code_by_author.dat' using 1:6 title "isidor" w lines, 'lines_of_code_by_author.dat' using 1:7 title "Martin Aeschlimann" w lines, 'lines_of_code_by_author.dat' using 1:8 title "Daniel Imms" w lines, 'lines_of_code_by_author.dat' using 1:9 title "Sandeep Somavarapu" w lines, 'lines_of_code_by_author.dat' using 1:10 title "Matt Bierner" w lines, 'lines_of_code_by_author.dat' using 1:11 title "Dirk Baeumer" w lines, 'lines_of_code_by_author.dat' using 1:12 title "Andre Weinand" w lines, 'lines_of_code_by_author.dat' using 1:13 title "Christof Marti" w lines, 'lines_of_code_by_author.dat' using 1:14 title "Rob Lourens" w lines, 'lines_of_code_by_author.dat' using 1:15 title "Michel Kaporin" w lines, 'lines_of_code_by_author.dat' using 1:16 title "David Storey" w lines, 'lines_of_code_by_author.dat' using 1:17 title "rebornix" w lines, 'lines_of_code_by_author.dat' using 1:18 title "Ramya Achutha Rao" w lines, 'lines_of_code_by_author.dat' using 1:19 title "João Moreno" w lines, 'lines_of_code_by_author.dat' using 1:20 title "Pine Wu" w lines, 'lines_of_code_by_author.dat' using 1:21 title "kieferrm" w lines
