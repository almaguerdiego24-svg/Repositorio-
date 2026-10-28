#!/bin/bash
# Busca la palabra "home" en los archivos de una carpeta
palabra="home"
carpeta=$1

grep -rl "$palabra" "$carpeta"
