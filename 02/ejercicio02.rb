def cuenta_lineas(filename)
  file = File.open(filename, 'r')
  data = file.readlines
  puts data.length
  file.close
end

cuenta_lineas('peliculas.txt')
