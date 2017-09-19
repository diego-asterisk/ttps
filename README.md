# TTPS
Taller de ruby
# git
1. Ejecutá git o git help en la línea de comandos y mirá los subcomandos que tenés disponibles.
>Estas son órdenes Git usadas en diferentes situaciones

start a working area (see also: git help tutorial)
   clone      Clone a repository into a new directory
   init       Create an empty Git repository or reinitialize an existing one

work on the current change (see also: git help everyday)
   add        Add file contents to the index
   mv         Mueva o renombre  su archivo a un directorio o cree un enlace simbolico
   reset      Restablecer la cabecera  al estado actual especificado
   rm         Eliminar archivos del árbol de trabajo y del índice

examine the history and state (see also: git help revisions)
   bisect     Use binary search to find the commit that introduced a bug
   grep       Print lines matching a pattern
   log        Show commit logs
   show       Mostrar los diversos tipos de objetos
   status     Mostrar el estado  de los árboles de trabajo

grow, mark and tweak your common history
   branch     List, create, or delete branches
   checkout   Cambiar de rama o restaurar los archivos del árbol de trabajo
   commit     Record changes to the repository
   diff       Show changes between commits, commit and working tree, etc
   merge      Join two or more development histories together
   rebase     Reapply commits on top of another base tip
   tag        Crear, listar, eliminar o verificar  un objeto de etiqueta firmado con GPG

collaborate (see also: git help workflows)
   fetch      Download objects and refs from another repository
   pull       Debe integrar con otro repositorio o una sucursal local
   push       Actualización de refs remotas junto con objetos asociados

2. Ejecutá el comando git help help. ¿Cuál fue el resultado?
## NAME
>       git-help - Display help information about Git

## SYNOPSIS
>       git help [-a|--all] [-g|--guide]
                  [-i|--info|-m|--man|-w|--web] [COMMAND|GUIDE]

3. Utilizá el subcomando help para conocer qué opción se puede pasar al subcomando add para que ignore errores al agregar archivos.
git help add
>--ignore-errors

4. ¿Cuáles son los estados posibles en Git para un archivo? ¿Qué significa cada uno?

> archivos ignorados: no requieren ser versionados

> archivos sin seguimiento: cuando no han sido integrados al repositorio. Pasan al estado 'preparado' con git add

> archivos modificados: están en el repositorio pero se han modificado. Pasan al estado 'preparado' con git add o git commit -a

> archivos preparados (staged): están listos para el próximo commit

> archivos en el repositorio (commited): se encuentran administrados por git y pueden ser recuperados

5. Cloná el repositorio de materiales de la materia: 

https://github.com/TTPS-ruby/capacitacion-ruby-ttps.git. Una vez finalizado, ¿cuál es el hash del último commit que hay en el repositorio que clonaste?

Tip: git log

> git log

> commit 4867a719bf588afa8a5dd85c3a660731b1d4065d

> Author: Christian Rodriguez <car@cespi.unlp.edu.ar>

> Date:   Mon Nov 23 18:33:42 2015 -0300

>    errores sintacticos en rails

> git log

> commit e38781bea87234f52d5282c11acf76d3be066ea2

> Author: Christian Rodriguez <chrodriguez@gmail.com>

> Date:   Mon Aug 28 18:43:14 2017 -0300

>    eliminamos MacRuby de las vms

6. ¿Para qué se utilizan los siguientes subcomandos?
    1. `init`
> crear un nuevo repositorio
    2. `status`
> muestra el estado del directorio de trabajo del area de staging
    3. `log`
> muestra la historia de los commits y permite filtrar
    4. `fetch`
> trae los cambios del repositorio a una rama local oculta
    5. `merge`
> fusiona los cambios del repositorio con la rama local
    6. `pull`
> es un atajo para fetch + merge
    7. `commit`
> los cambios en local que están preparados se incluyen en HEAD con commit, pero aún no suben al repositorio
    8. `stash`
> sinónimo de git add, prepara los cambios
    9. `push`
> los cambios en HEAD se envían al repositorio remoto
    10. `rm`
> borra archivo del repositorio
    11. `checkout`
> cambia de rama

7.Creá un archivo de texto en el repositorio que clonaste en el ejercicio **5** y verificá el estado de tu espacio de   trabajo con el subcomando `status`. ¿En qué estado está el archivo que agregaste?

> archivo sin seguimiento

8.Utilizá el subcomando `log` para ver los commits que se han hecho en el repositorio, tomá cualquiera de ellos y copiá  su _hash_ (por ejemplo, `800dcba6c8bb2881d90dd39c285a81eabee5effa`), y luego utilizá el subcomando `checkout` para
   _viajar en el tiempo_ (apuntar tu copia local) a ese commit. ¿Qué commits muestra ahora `git log`? ¿Qué ocurrió con   los commits que no aparecen? ¿Qué dice el subcomando `status`?

> muestra solo los commits anteriores al del hash usado.

> los commits que no aparecen están en el repositorio remoto. cómo puedo ver los commits de nuevo? volviendo a la rama con git checkout rama

> dice que hay un archivo sin seguimiento, el creado en el ejercicio anterior

9. Volvé al último commit de la rama principal (`master`) usando nuevamente el subcomando `checkout`.
   Corroborá que efectivamente haya ocurrido esto.

> git checkout master y luego git log

10. Creá un directorio vacío en el raiz del proyecto clonado. ¿En qué estado aparece en el `git status`? ¿Por qué?

> no aparece, porque es un directorio vacío y git lo ignora

11. Creá un archivo vacío dentro del directorio que creaste en el ejercicio anterior y volvé a ejecutar el subcomando    `status`. ¿Qué ocurre ahora? ¿Por qué?

> ahora figura la carpeta como sin seguimiento. Porque git sigue los cambios de archivos, y el nuevo archivo está en la carpeta nueva

12. Utilizá el subcomando `clean` para eliminar los archivos no versionados (_untracked_) y luego ejecutá `git status`.
    ¿Qué información muestra ahora?

> working tree clean

13. Actualizá el contenido de tu copia local mediante el subcomando `pull`.

> Already up-to-date.


# Ruby TP1
1. Investigá y probá en un intérprete de Ruby cómo crear objetos de los siguientes tipos
básicos usando literales y usando el constructor new (cuando sea posible):


    1. Arreglo (Array)
    
    b = [1,2,3]

    ary = Array.new

    arr = Array.new(3)

    arreglo = Array.new(3,true)

    2. Diccionario o hash (Hash)
    
    a = {1=>2,3=>4}

    colors = { "red" => 0xf00, "green" => 0x0f0, "blue" => 0x00f }

    options = { font_size: 10, font_family: "Arial" }

    grades = Hash.new

    grades["Dorothy Doe"] = 9

    grades = Hash.new(-1)

    puts grades["Jane Doe"]

    3. String (String)
    
    a = 'hola'

    b = "hola #{3*11}"

    c = String.new("555")

    4. Símbolo (Symbol)
    $f1 = :Fred

    $f2 = :Fred

    a = :"Roca"

2. ¿Qué devuelve la siguiente comparación? ¿Por qué?
> 'TTPS Ruby'.object_id == 'TTPS Ruby'.object_id

Devuelve false. Porque cada instancia de un string es un objeto distinto y su object_id es distinto

3. Escribí una función llamada reemplazar que reciba un String y que busque y reemplace en el mismo cualquier ocurrencia de { por do\n y cualquier ocurrencia de } por \nend, demodo que convierta los bloques escritos con llaves por bloques multilínea con do y end.

Por ejemplo:

reemplazar("3.times { |i| puts i }")

> \# => "3.times do\n |i| puts i \nend"

```ruby
def reemplazar(str)

   @start = str.gsub "{","\ndo"

   @end = @start.gsub "}","\nend"

end
```

> otro:

```ruby
def reemplazar_start(str)

   str.gsub "{","\ndo"
   
end

def reemplazar_end(str)

   str.gsub "}","\nend"
   
end

def reemplazar(str)

   reemplazar_end(reemplazar_start(str))
   
end

def reemplazar(str)

   reemplazar_start(reemplazar_end(str))
   
end
```

4.Escribí una función que convierta a palabras la hora actual, dividiendo en los siguientes rangos los minutos:

   * Si el minuto está entre 0 y 10, debe decir "en punto",
   * si el minuto está entre 11 y 20, debe decir "y cuarto",
   * si el minuto está entre 21 y 34, debe decir "y media",
   * si el minuto está entre 35 y 44, debe decir "menos veinticinco" (de la hora siguiente),
   * si el minuto está entre 45 y 55, debe decir "menos cuarto" (de la hora siguiente),
   * y si el minuto está entre 56 y 59, debe decir "casi las" (y la hora siguiente)

   Tomá como ejemplos los siguientes casos:

   ```ruby
   # A las 10:01
   en_palabras(Time.now)
   # => "Son las 10 en punto"
   # A las 9:33
   en_palabras(Time.now)
   # => "Son las 9 y media"
   # A las 9:45
   en_palabras(Time.now)
   # => "Son las 10 menos cuarto"
   # A las 6:58
   en_palabras(Time.now)
   # => "Casi son las 7"
   ```

   > Tip: resolver utilizando rangos numéricos

```ruby
def en_palabras(fecha)
   hora = fecha.hour
   minutos = fecha.min
   puts hora.to_s + ':' + minutos.to_s
   case minutos 
      when 0..10 then "son las #{hora} en punto"
      when 11..20 then "son las #{hora} y cuarto"
      when 21..34 then "son las #{hora} y media"
      when 35..44 then "son las #{(hora + 1) % 24} menos veinticinco"
      when 45..55 then "son las #{(hora + 1) % 24} menos cuarto"
      when 56..59 then "casi las #{(hora + 1) % 24}"
   end
end

en_palabras(Time.now)
en_palabras(Time.new(2008,6,21, 13,30,0, "+09:00"))
en_palabras(Time.new(2008,6,21, 13,30,0, "+03:00"))
en_palabras(Time.new(2008,6,21, 23,55,0, "+03:00"))
en_palabras(Time.new(2008,6,21, 23,56,0, "+03:00"))
```

5.Escribí una función llamada `contar` que reciba como parámetro dos `string` y que retorne la cantidad de veces que
   aparece el segundo `string` en el primero, sin importar mayúsculas y minúsculas. Por ejemplo:

   ```ruby
   contar("La casa de la esquina tiene la puerta roja y la ventana blanca.", "la")
   # => 5
   ```
```ruby
def words_from_string(string)
   string.downcase.scan(/[\w']+/)
end

def contar(frase,palabra)
   words_from_string(frase).reduce(0) {|count, w| if palabra==w then count + 1 else count + 0 end }
end

contar("La casa de la esquina tiene la puerta roja y la ventana blanca.", "la")
```

> devuelve 4

```ruby
def contar(frase,palabra)
   frase.downcase.scan(/#{palabra.downcase}/).size
end

contar("La casa de la esquina tiene la puerta roja y la ventana blanca.", "la")
```

> devuelve 5

6.Modificá la función anterior para que sólo considere como aparición del segundo `string` cuando se trate de palabras    completas. Por ejemplo:

   ```ruby
   contar_palabras("La casa de la esquina tiene la puerta roja y la ventana blanca.", "la")
   # => 4
   ```

```ruby
def words_from_string(string)
   string.downcase.scan(/[\w']+/)
end

def contar(frase,palabra)
   words_from_string(frase).reduce(0) {|count, w| if palabra==w then count + 1 else count + 0 end }
end

contar("La casa de la esquina tiene la puerta roja y la ventana blanca.", "la")
```

7.Dada una cadena cualquiera, y utilizando los métodos que provee la clase `String`, realizá las siguientes operaciones sobre el `string`:

  1. Imprimilo con sus caracteres en orden inverso.
> puts string.reverse
  2. Eliminá los espacios en blanco que contenga.
> string.strip!
  3. Convertí cada uno de sus caracteres por su correspondiente valor ASCII.
> string.each_char {|c| print c.ord, ' ' }
  4. Cambiá las vocales por números (`a` por `4`, `e` por `3`, `i` por `1`, `o` por `0`, `u` por `6`).
> string.tr!('aeiou','43106')

8.¿Qué hace el siguiente código?

   ```ruby
   [:upcase, :downcase, :capitalize, :swapcase].map do |meth|
     "TTPS Ruby".send(meth)
   end
   ```
> => ["TTPS RUBY", "ttps ruby", "Ttps ruby", "ttps rUBY"]

Itera sobre un array de símbolos para aplicarlos a un string y devolver el array de los resultados.

9. Escribí una función que dado un arreglo que contenga varios `string` cualesquiera, retorne un nuevo arreglo donde
   cada elemento es la longitud del `string` que se encuentra en la misma posición del arreglo recibido como parámetro.
   Por ejemplo:

    ```ruby
    longitud(['TTPS', 'Opción', 'Ruby', 'Cursada 2015'])
    # => [4, 6, 4, 12]
    ```
```ruby
def longitud(arr)
   arr.map {|e| e.size }
end
```

10. Escribí una función llamada `a_ul` que reciba un `Hash` y retorne un `String` con los pares de clave/valor del hash
    formateados en una lista HTML `<ul>`. Por ejemplo:

    ```ruby
    a_ul({ perros: 1, gatos: 1, peces: 0})
    # => "<ul><li>perros: 1</li><li>gatos: 1</li><li>peces: 0</li></ul>"
    ```

```ruby
def a_ul(hash)
   if hash.size > 0
	  '<ul>' + hash.reduce('') { |acum, (key, value)| acum << "<li>#{key}: #{value}</li>" } + '</ul>'
   else
      ''
   end
end
```

11. Escribí una función llamada `rot13` que _encripte_ un `string` recibido como parámetro utilizando el algoritmo
    [`ROT13`](https://es.wikipedia.org/wiki/ROT13). Por ejemplo:

    ```ruby
    rot13("¡Bienvenidos a la cursada 2015 de TTPS Opción Ruby!")
    # => "¡Ovrairavqbf n yn phefnqn 2015 qr GGCF Bcpvóa Ehol!"
    ```

```ruby
def rot_13(string)
   string.tr("A-Za-z", "N-ZA-Mn-za-m")
end
```

12. Escribí una función más genérica, parecida a la del ejercicio anterior, que reciba como parámetro un `string` y un
    número `n`, y que realice una _rotación_ de `n` lugares de las letras del `string` y retorne el resultado. Por
    ejemplo:

    ```ruby
    rot("¡Bienvenidos a la cursada 2015 de TTPS Opción Ruby!", 13)
    # => "¡Ovrairavqbf n yn phefnqn 2015 qr GGCF Bcpvóa Ehol!"
    ```
```ruby
def rot_may(string,n)
   string.gsub(/[A-Z]/) do |s| 
	  ((s.ord + n - 'A'.ord) % 26 + 'A'.ord).chr
   end
end
def rot_min(string,n)
   string.gsub(/[a-z]/) do |s| 
	  ((s.ord + n - 'a'.ord) % 26 + 'a'.ord).chr
   end
end
def rot_n(string, n)
   rot_may(rot_min(string,n),n)
end
```

13. Escribí un _script_ en Ruby que le pida al usuario su nombre y lo utilice para saludarlo imprimiendo en pantalla
    `¡Hola, <nombre>!`. Por ejemplo:

    ```bash
    $ ruby script.rb
    Por favor, ingresá tu nombre:
    Matz
    ¡Hola, Matz!
    ```
```ruby
#!env ruby
puts 'Por favor, ingresá tu nombre:'
nombre = gets.chomp
puts "¡Hola, #{nombre}!"
```

14. Dado un color expresado en notación [RGB](https://es.wikipedia.org/wiki/RGB), debés calcular su representación entera y hexadecimal, donde la notación _entera_ se define como `red + green*256 + blue*256*256` y la _hexadecimal_ como el resultado de expresar en hexadecimal el valor de cada color y concatenarlos en orden. Por ejemplo:

```ruby
    notacion_hexadecimal([0, 128, 255])
    # => '#0080FF'
    notacion_entera([0, 128, 255])
    # => 16744448
```

15.Investigá qué métodos provee Ruby para:

  1. Conocer la lista de métodos de una clase.
> methods, ejemplo: a = Object.new a.methods
  2. Conocer la lista de métodos de instancia de una clase.
> instance_methods
  3. Conocer las variables de instancia de una clase.
> instance_variables  
  4. Obtener la lista de ancestros (_superclases_) de una clase.
> ancestors
> Object.superclass => BasicObject
> Object.superclass.superclass => nil
> Object.ancestors => [Object, Kernel, BasicObject]
> Object.included_modules => [Kernel]

16.Escribí una función que encuentre la suma de todos los números naturales múltiplos de `3` ó `5` menores que un
    número `tope` que reciba como parámetro.

17.Cada nuevo término en la secuencia de Fibonacci es generado sumando los 2 términos anteriores. Los primeros 10
    términos son: `1`, `1`, `2`, `3`, `5`, `8`, `13`, `21`, `34`, `55`. Considerando los términos en la secuencia de
    Fibonacci cuyos valores no exceden los 4 millones, encontrá la suma de los términos pares.

