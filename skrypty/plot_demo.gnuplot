# Używaj terminala 'svg' i wyjścia do wskazanego pliku
set terminal svg size 550,325 font "Latin Modern Roman,15"
set output '../obrazki/gnuplot_demo.svg'

set title "{/:Italic f}({/:Italic x}) = e^{–0.1{/:Italic x}} sin({/:Italic x})"
set xlabel 'Wartości parametru {/:Italic x}'
set ylabel 'Wartości funkcji {/:Italic f}({/:Italic x})'
set xrange [0:20]
set yrange [-1:1]
set grid

# Przykładowa funkcja do narysowania
f(x) = exp(-0.1*x) * sin(x)
# Rysowanie wskazanej funkcji
plot f(x) title 'Funkcja {/:Italic f}({/:Italic x})' lc 'blue'
