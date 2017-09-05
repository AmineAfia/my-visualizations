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
plot 'commits_by_author.dat' using 1:2 title "Arley Triana Morin" w lines, 'commits_by_author.dat' using 1:3 title "Michael Sobczak" w lines, 'commits_by_author.dat' using 1:4 title "Jens Pflueger" w lines, 'commits_by_author.dat' using 1:5 title "Marin Parushev" w lines, 'commits_by_author.dat' using 1:6 title "Uwe Reeder" w lines, 'commits_by_author.dat' using 1:7 title "Tobias Oetzel" w lines, 'commits_by_author.dat' using 1:8 title "Matthias Osswald" w lines, 'commits_by_author.dat' using 1:9 title "Sebastian Allmann" w lines, 'commits_by_author.dat' using 1:10 title "Gergana Marcheva" w lines, 'commits_by_author.dat' using 1:11 title "Frank Weigel" w lines, 'commits_by_author.dat' using 1:12 title "Mihail Yordanov" w lines, 'commits_by_author.dat' using 1:13 title "Dr. Thomas Chadzelek" w lines, 'commits_by_author.dat' using 1:14 title "Jens Himmelrath" w lines, 'commits_by_author.dat' using 1:15 title "Peter Muessig" w lines, 'commits_by_author.dat' using 1:16 title "Malte Wedel" w lines, 'commits_by_author.dat' using 1:17 title "Benedikt Schoelch" w lines, 'commits_by_author.dat' using 1:18 title "Michael Graf" w lines, 'commits_by_author.dat' using 1:19 title "Jiawei Cao" w lines, 'commits_by_author.dat' using 1:20 title "Diana Pazheva" w lines, 'commits_by_author.dat' using 1:21 title "Vladislav Tasev" w lines
