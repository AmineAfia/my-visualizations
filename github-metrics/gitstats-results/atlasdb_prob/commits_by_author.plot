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
plot 'commits_by_author.dat' using 1:2 title "Glenn Sheasby" w lines, 'commits_by_author.dat' using 1:3 title "Himangi Saraogi" w lines, 'commits_by_author.dat' using 1:4 title "Hubert Tarasiuk" w lines, 'commits_by_author.dat' using 1:5 title "Jeremy Kong" w lines, 'commits_by_author.dat' using 1:6 title "John Boreiko" w lines, 'commits_by_author.dat' using 1:7 title "Chris Lockfort" w lines, 'commits_by_author.dat' using 1:8 title "Bobby Ullman" w lines, 'commits_by_author.dat' using 1:9 title "George Brova" w lines, 'commits_by_author.dat' using 1:10 title "Ben Grabham" w lines, 'commits_by_author.dat' using 1:11 title "John Carrino" w lines, 'commits_by_author.dat' using 1:12 title "Joe Lea" w lines, 'commits_by_author.dat' using 1:13 title "Harry Biddle" w lines, 'commits_by_author.dat' using 1:14 title "Robert Hero" w lines, 'commits_by_author.dat' using 1:15 title "Tom Petracca" w lines, 'commits_by_author.dat' using 1:16 title "Alessandra Loro" w lines, 'commits_by_author.dat' using 1:17 title "joelea" w lines, 'commits_by_author.dat' using 1:18 title "Grgur Petric Maretic" w lines, 'commits_by_author.dat' using 1:19 title "tmgordeeva" w lines, 'commits_by_author.dat' using 1:20 title "Tim Wilson" w lines, 'commits_by_author.dat' using 1:21 title "David Schlosnagle" w lines
