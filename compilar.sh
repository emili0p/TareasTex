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

BASENAME=$(basename "$INPUT_FILE" .tex)
DIRNAME=$(dirname "$INPUT_FILE")

echo "Compilando $INPUT_FILE..."

tectonic "$INPUT_FILE"

PDF_PATH="$DIRNAME/$BASENAME.pdf"

if [ -f "$PDF_PATH" ]; then

  # pedir nombre del PDF
  read -p "Nombre del PDF (vacío = usar '$BASENAME'): " PDF_NAME

  # si esta vacio usar basename
  if [ -z "$PDF_NAME" ]; then
    PDF_NAME="$BASENAME"
  fi

  mv "$PDF_PATH" "$DEST_DIR/$PDF_NAME.pdf"

  echo "PDF guardado en:"
  echo "$DEST_DIR/$PDF_NAME.pdf"

else
  echo "Error: No se generó el PDF."
fi
