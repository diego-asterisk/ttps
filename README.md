# ttps
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
