#!/bin/bash

DEST_DIR="$HOME/Documentos/typst"
WATCH_MODE=false
OPEN_MODE=false
TYPST_CMD="typst"

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

show_help() {
  echo "uso: ./compilar-typst.sh [OPCIONES] archivo.typ"
  echo ""
  echo "Opciones:"
  echo "  -w, --watch     Modo vigilancia (recompila automáticamente al guardar)"
  echo "  -o, --open      Abrir el PDF despues de compilar"
  echo "  -n, --name NAME Nombre personalizado para el PDF (sin extensión)"
  echo "  -h, --help      Mostrar esta ayuda"
  echo ""
  echo "Ejemplos:"
  echo "  ./compilar-typst.sh documento.typ"
  echo "  ./compilar-typst.sh -w documento.typ"
  echo "  ./compilar-typst.sh -o -n informe_final documento.typ"
  echo "  ./compilar-typst.sh --watch --open proyecto.typ"
}

if ! command -v typst &>/dev/null; then
  echo -e "${RED}Error: typst no está instalado.${NC}"
  exit 1
fi

# parse input
PDF_NAME=""
while [[ $# -gt 0 ]]; do
  case $1 in
  -w | --watch)
    WATCH_MODE=true
    shift
    ;;
  -o | --open)
    OPEN_MODE=true
    shift
    ;;
  -n | --name)
    PDF_NAME="$2"
    shift 2
    ;;
  -h | --help)
    show_help
    exit 0
    ;;
  -*)
    echo -e "${RED}Error: opcion desconocida $1${NC}"
    show_help
    exit 1
    ;;
  *)
    INPUT_FILE="$1"
    shift
    ;;
  esac
done

if [ -z "$INPUT_FILE" ]; then
  echo -e "${RED}Error: No se especificó ningún archivo.typ${NC}"
  show_help
  exit 1
fi

if [ ! -f "$INPUT_FILE" ]; then
  echo -e "${RED}Error: El archivo $INPUT_FILE no existe.${NC}"
  exit 1
fi

if [[ "$INPUT_FILE" != *.typ ]]; then
  echo -e "${YELLOW}WARNING: El archivo no tiene extension .typ${NC}"
fi

mkdir -p "$DEST_DIR"

BASENAME=$(basename "$INPUT_FILE" .typ)
DIRNAME=$(dirname "$INPUT_FILE")
# nombre personalizado
if [ -z "$PDF_NAME" ] && [ "$WATCH_MODE" = false ]; then
  read -p "Nombre del PDF (vacío = usar '$BASENAME'): " PDF_NAME
  if [ -z "$PDF_NAME" ]; then
    PDF_NAME="$BASENAME"
  fi
elif [ -z "$PDF_NAME" ]; then
  PDF_NAME="$BASENAME"
fi

# Ruta final del PDF
FINAL_PDF="$DEST_DIR/$PDF_NAME.pdf"
# compilar
compile() {
  echo -e "${BLUE}Compilando $INPUT_FILE...${NC}"

  # Compilar a PDF en directorio temporal
  TMP_PDF="/tmp/typst_$$.pdf"

  # Opciones de compilación
  # --root: directorio raíz para resolver rutas relativas
  # --font-path: añadir rutas de fuentes si es necesario
  if $WATCH_MODE; then
    # En modo watch, compilar directamente al destino final
    $TYPST_CMD compile --root "$DIRNAME" "$INPUT_FILE" "$FINAL_PDF"
    return $?
  else
    # Compilacion normal a archivo temporal
    $TYPST_CMD compile --root "$DIRNAME" "$INPUT_FILE" "$TMP_PDF"
    local result=$?

    if [ $result -eq 0 ] && [ -f "$TMP_PDF" ]; then
      mv "$TMP_PDF" "$FINAL_PDF"
      echo -e "${GREEN}✓ PDF guardado en: $FINAL_PDF${NC}"

      if [ "$OPEN_MODE" = true ]; then
        open_pdf "$FINAL_PDF"
      fi
    else
      echo -e "${RED}✗ Error al compilar${NC}"
      return 1
    fi
  fi
}

# abrir PDF
opn_pdf() {
  local pdf="$1"
  if [ -f "$pdf" ]; then
    echo -e "${GREEN}Abriendo PDF...${NC}"
    if command -v xdg-open &>/dev/null; then
      xdg-open "$pdf"
    elif command -v open &>/dev/null; then
      open "$pdf"
    else
      echo -e "${YELLOW}No se pudo abrir automáticamente. PDF en: $pdf${NC}"
    fi
  fi
}

#anejar Ctrl+C en modo watch
cleanup() {
  echo -e "\n${YELLOW}Deteniendo modo watch...${NC}"
  exit 0
}

# Ejecutar compilación según el modo
if [ "$WATCH_MODE" = true ]; then
  trap cleanup SIGINT SIGTERM
  echo -e "${GREEN}Modo watch activado. Recompilando al guardar...${NC}"
  echo -e "${YELLOW}Presiona Ctrl+C para detener${NC}"
  echo ""

  # En modo watch, compilar y luego esperar cambios
  compile
  if [ $? -eq 0 ]; then
    echo -e "${GREEN}Vigilando cambios en $INPUT_FILE...${NC}"
    # Usar typst watch en lugar de compilar manualmente
    $TYPST_CMD watch --root "$DIRNAME" "$INPUT_FILE" "$FINAL_PDF"
  else
    echo -e "${RED}Error inicial, no se inicia el modo watch${NC}"
    exit 1
  fi
else
  compile
fi
