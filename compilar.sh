#!/bin/bash

DEST_DIR="$HOME/Documentos/latex"

mkdir -p "$DEST_DIR"

if [ -z "$1" ]; then
  echo "Uso: ./compilar.sh ruta/al/archivo.tex"
  exit 1
fi

INPUT_FILE="$1"

if [ ! -f "$INPUT_FILE" ]; then
  echo "Error: El archivo $INPUT_FILE no existe."
  exit 1
fi

echo "compilando $INPUT_FILE..."

tectonic "$INPUT_FILE"

BASENAME=$(basename "$INPUT_FILE" .tex)
DIRNAME=$(dirname "$INPUT_FILE")

PDF_PATH="$DIRNAME/$BASENAME.pdf"

if [ -f "$PDF_PATH" ]; then
  mv "$PDF_PATH" "$DEST_DIR/"
  echo "PDF guardado en $DEST_DIR/$BASENAME.pdf"
else
  echo "Error: No se genero el PDF."
fi
