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
plot 'commits_by_author.dat' using 1:2 title "Paco Martín Fernández" w lines, 'commits_by_author.dat' using 1:3 title "Paco Martín Fernández" w lines, 'commits_by_author.dat' using 1:4 title "Erick Winston" w lines, 'commits_by_author.dat' using 1:5 title "cclauss" w lines, 'commits_by_author.dat' using 1:6 title "Jonathan A. Wildstrom" w lines, 'commits_by_author.dat' using 1:7 title "Oliver Dial" w lines, 'commits_by_author.dat' using 1:8 title "Luciano Bello" w lines, 'commits_by_author.dat' using 1:9 title "Ismael Faro Sertage" w lines, 'commits_by_author.dat' using 1:10 title "Fran Cabrera" w lines, 'commits_by_author.dat' using 1:11 title "Stefane Fermigier" w lines, 'commits_by_author.dat' using 1:12 title "Sam Gomena" w lines, 'commits_by_author.dat' using 1:13 title "David Fisher" w lines, 'commits_by_author.dat' using 1:14 title "Adam Novak" w lines
