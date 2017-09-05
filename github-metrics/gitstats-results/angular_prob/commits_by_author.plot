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
plot 'commits_by_author.dat' using 1:2 title "vsavkin" w lines, 'commits_by_author.dat' using 1:3 title "Victor Berchet" w lines, 'commits_by_author.dat' using 1:4 title "Tobias Bosch" w lines, 'commits_by_author.dat' using 1:5 title "Igor Minar" w lines, 'commits_by_author.dat' using 1:6 title "Peter Bacon Darwin" w lines, 'commits_by_author.dat' using 1:7 title "Alex Eagle" w lines, 'commits_by_author.dat' using 1:8 title "Chuck Jazdzewski" w lines, 'commits_by_author.dat' using 1:9 title "Georgios Kalpakas" w lines, 'commits_by_author.dat' using 1:10 title "Tim Blasi" w lines, 'commits_by_author.dat' using 1:11 title "Pawel Kozlowski" w lines, 'commits_by_author.dat' using 1:12 title "Misko Hevery" w lines, 'commits_by_author.dat' using 1:13 title "Matias Niemelä" w lines, 'commits_by_author.dat' using 1:14 title "Marc Laval" w lines, 'commits_by_author.dat' using 1:15 title "Brian Ford" w lines, 'commits_by_author.dat' using 1:16 title "Ward Bell" w lines, 'commits_by_author.dat' using 1:17 title "Dzmitry Shylovich" w lines, 'commits_by_author.dat' using 1:18 title "Alex Rickabaugh" w lines, 'commits_by_author.dat' using 1:19 title "Jeff Cross" w lines, 'commits_by_author.dat' using 1:20 title "Yegor Jbanov" w lines, 'commits_by_author.dat' using 1:21 title "Rado Kirov" w lines
