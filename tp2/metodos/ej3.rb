def ordenar(*arr)
   arr.sort
end

entrada = [10, 9, 1, 2, 3, 5, 7, 8]
# Dada `entrada', invocar a #ordenar utilizando sus valores para ordenarlos
p ordenar(*entrada)
# => [0, 1, 2, 3, 4, 6, 10]
