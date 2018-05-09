# Crear un método que reciba el archivo peliculas.txt, lo abra y cuente la cantidad total de palabras. El método debe devolver este valor.
# Crear un método similar para que además reciba -como argumento- un string. En este caso el método debe contar únicamente las apariciones de ese string en el archivo.

def cuenta_palabras(filename)
  file = File.open(filename, 'r')
  data = file.read
  conteo = data.split(' ').map(&:chomp)
  puts "Total de palabras en el archivo: #{conteo.count}"
  file.close
end

cuenta_palabras('peliculas.txt')
