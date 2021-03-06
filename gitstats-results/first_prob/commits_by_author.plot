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
plot 'commits_by_author.dat' using 1:2 title "Keon Kim" w lines, 'commits_by_author.dat' using 1:3 title "Ankit Agarwal" w lines, 'commits_by_author.dat' using 1:4 title "Quang Nguyen" w lines, 'commits_by_author.dat' using 1:5 title "ofek" w lines, 'commits_by_author.dat' using 1:6 title "orenovadia" w lines, 'commits_by_author.dat' using 1:7 title "Nick Wiebe" w lines, 'commits_by_author.dat' using 1:8 title "Imanuel Chen" w lines, 'commits_by_author.dat' using 1:9 title "Keon" w lines, 'commits_by_author.dat' using 1:10 title "Semen Zhydenko" w lines, 'commits_by_author.dat' using 1:11 title "shruti" w lines, 'commits_by_author.dat' using 1:12 title "dong-jy" w lines, 'commits_by_author.dat' using 1:13 title "Sagar Shiroya" w lines, 'commits_by_author.dat' using 1:14 title "Liam Flood" w lines, 'commits_by_author.dat' using 1:15 title "IzanBF" w lines, 'commits_by_author.dat' using 1:16 title "yangroro" w lines, 'commits_by_author.dat' using 1:17 title "saketrule" w lines, 'commits_by_author.dat' using 1:18 title "mingrammer" w lines, 'commits_by_author.dat' using 1:19 title "Alisha" w lines, 'commits_by_author.dat' using 1:20 title "karpinski" w lines, 'commits_by_author.dat' using 1:21 title "k-schmidt" w lines
