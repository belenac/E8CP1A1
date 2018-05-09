# Crear un método que reciba dos strings, este método creará un archivo index.html y pondrá como párrafo cada uno de los strings recibidos.
# Crear un método similar al anterior, que además pueda recibir un arreglo. Si el arreglo no está vacío, agregar debajo de los párrafos una lista ordenada con cada uno de los elementos.
# Crear un tercer método que además pueda recibir un color. Agregar color de fondo a los párrafos.
# El retorno de los métodos debe devolver nil.

def cadenas(string01, string02)
  file = File.open('index.html', 'w')
  file.puts "<p>#{string01}</p>\n<p>#{string02}</p>"
  file.close
end

def listado(items)
  file = File.open('index.html', 'w')
  items.each do |e|
    file.puts '<ol>'
    file.puts "<li>#{e}</li>"
    file.puts '</ol>'
  end
  file.close
end

def ejercicio(string01, string02, items, color)
  file = File.open('index.html', 'w')
  file.puts "<p style='background-color:#{color}'>#{string01}</p>\n<p style='background-color:#{color}'>#{string02}</p>"
  unless items.empty?
    file.puts '<ol>'
    items.each do |e|
      file.puts "<li>#{e}</li>"
    end
    file.puts '</ol>'
  end
  file.close
end

# cadenas('hola hola', 'hola hola hola')
# listado(items = [])
ejercicio('Hola hola', 'Hooooola holanda que talca', items = ['papas'], 'green')
