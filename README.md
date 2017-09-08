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

