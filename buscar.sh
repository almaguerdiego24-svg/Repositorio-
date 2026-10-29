#!/bin/bash
# Busca una palabra en los archivos de una carpeta.

if [ "$#" -lt 1 ] || [ "$#" -gt 2 ]; then
  echo "Uso: $0 palabra [carpeta]" >&2
  exit 1
fi

palabra="$1"
carpeta="${2:-/}"

if [ -z "$palabra" ]; then
  echo "Error: la palabra no puede estar vacia." >&2
  exit 1
fi

if [ ! -d "$carpeta" ]; then
  echo "Error: la carpeta '$carpeta' no existe." >&2
  exit 1
fi

carpeta=$(cd -- "$carpeta" && pwd -P) || exit 1
grep -rlFs -- "$palabra" "$carpeta"
