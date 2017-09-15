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
plot 'lines_of_code_by_author.dat' using 1:2 title "vsavkin" w lines, 'lines_of_code_by_author.dat' using 1:3 title "Victor Berchet" w lines, 'lines_of_code_by_author.dat' using 1:4 title "Tobias Bosch" w lines, 'lines_of_code_by_author.dat' using 1:5 title "Igor Minar" w lines, 'lines_of_code_by_author.dat' using 1:6 title "Peter Bacon Darwin" w lines, 'lines_of_code_by_author.dat' using 1:7 title "Alex Eagle" w lines, 'lines_of_code_by_author.dat' using 1:8 title "Chuck Jazdzewski" w lines, 'lines_of_code_by_author.dat' using 1:9 title "Georgios Kalpakas" w lines, 'lines_of_code_by_author.dat' using 1:10 title "Tim Blasi" w lines, 'lines_of_code_by_author.dat' using 1:11 title "Pawel Kozlowski" w lines, 'lines_of_code_by_author.dat' using 1:12 title "Misko Hevery" w lines, 'lines_of_code_by_author.dat' using 1:13 title "Matias Niemelä" w lines, 'lines_of_code_by_author.dat' using 1:14 title "Marc Laval" w lines, 'lines_of_code_by_author.dat' using 1:15 title "Brian Ford" w lines, 'lines_of_code_by_author.dat' using 1:16 title "Ward Bell" w lines, 'lines_of_code_by_author.dat' using 1:17 title "Dzmitry Shylovich" w lines, 'lines_of_code_by_author.dat' using 1:18 title "Alex Rickabaugh" w lines, 'lines_of_code_by_author.dat' using 1:19 title "Jeff Cross" w lines, 'lines_of_code_by_author.dat' using 1:20 title "Yegor Jbanov" w lines, 'lines_of_code_by_author.dat' using 1:21 title "Rado Kirov" w lines
