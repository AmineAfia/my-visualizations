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
plot 'lines_of_code_by_author.dat' using 1:2 title "Keon Kim" w lines, 'lines_of_code_by_author.dat' using 1:3 title "Ankit Agarwal" w lines, 'lines_of_code_by_author.dat' using 1:4 title "Quang Nguyen" w lines, 'lines_of_code_by_author.dat' using 1:5 title "ofek" w lines, 'lines_of_code_by_author.dat' using 1:6 title "orenovadia" w lines, 'lines_of_code_by_author.dat' using 1:7 title "Nick Wiebe" w lines, 'lines_of_code_by_author.dat' using 1:8 title "Imanuel Chen" w lines, 'lines_of_code_by_author.dat' using 1:9 title "Keon" w lines, 'lines_of_code_by_author.dat' using 1:10 title "Semen Zhydenko" w lines, 'lines_of_code_by_author.dat' using 1:11 title "shruti" w lines, 'lines_of_code_by_author.dat' using 1:12 title "dong-jy" w lines, 'lines_of_code_by_author.dat' using 1:13 title "Sagar Shiroya" w lines, 'lines_of_code_by_author.dat' using 1:14 title "Liam Flood" w lines, 'lines_of_code_by_author.dat' using 1:15 title "IzanBF" w lines, 'lines_of_code_by_author.dat' using 1:16 title "yangroro" w lines, 'lines_of_code_by_author.dat' using 1:17 title "saketrule" w lines, 'lines_of_code_by_author.dat' using 1:18 title "mingrammer" w lines, 'lines_of_code_by_author.dat' using 1:19 title "Alisha" w lines, 'lines_of_code_by_author.dat' using 1:20 title "karpinski" w lines, 'lines_of_code_by_author.dat' using 1:21 title "k-schmidt" w lines
