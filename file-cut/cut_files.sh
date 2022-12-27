#!/bin/bash

# este programa corta en X partes iguales los ficheros Sample, 
# guarda la primera parte y la llama igual que su fichero de origen pero con extensión .00.
# Las veces que queremos que corte se especifica como primer parámetro del programa
# y el fichero que queremos que corte como segundo parámetro.

n="$(echo "$2" | cut -c 1-8)" 
split -d -n "$1" "$2" $n 

