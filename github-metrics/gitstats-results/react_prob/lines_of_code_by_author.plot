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
plot 'lines_of_code_by_author.dat' using 1:2 title "Paul O’Shannessy" w lines, 'lines_of_code_by_author.dat' using 1:3 title "Ben Alpert" w lines, 'lines_of_code_by_author.dat' using 1:4 title "Sebastian Markbåge" w lines, 'lines_of_code_by_author.dat' using 1:5 title "Dan Abramov" w lines, 'lines_of_code_by_author.dat' using 1:6 title "Jim Sproch" w lines, 'lines_of_code_by_author.dat' using 1:7 title "Andrew Clark" w lines, 'lines_of_code_by_author.dat' using 1:8 title "Pete Hunt" w lines, 'lines_of_code_by_author.dat' using 1:9 title "Cheng Lou" w lines, 'lines_of_code_by_author.dat' using 1:10 title "Vjeux" w lines, 'lines_of_code_by_author.dat' using 1:11 title "Ben Newman" w lines, 'lines_of_code_by_author.dat' using 1:12 title "Jeff Morrison" w lines, 'lines_of_code_by_author.dat' using 1:13 title "Brian Vaughn" w lines, 'lines_of_code_by_author.dat' using 1:14 title "Thomas Aylott" w lines, 'lines_of_code_by_author.dat' using 1:15 title "Timothy Yung" w lines, 'lines_of_code_by_author.dat' using 1:16 title "Andreas Svensson" w lines, 'lines_of_code_by_author.dat' using 1:17 title "Christoph Pojer" w lines, 'lines_of_code_by_author.dat' using 1:18 title "Dominic Gannaway" w lines, 'lines_of_code_by_author.dat' using 1:19 title "Nathan Hunzaker" w lines, 'lines_of_code_by_author.dat' using 1:20 title "Brandon Dail" w lines, 'lines_of_code_by_author.dat' using 1:21 title "Toru Kobayashi" w lines
