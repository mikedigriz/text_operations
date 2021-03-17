#!/bin/bash
ARGS=1

E_BADARGS=65

E_NOFILE=66


if [ $# -ne "$ARGS" ]  # Файл для анализа задан?

then

  echo "Порядок использования: `basename $0` имя_файла"
  exit $E_BADARGS

fi


if [ ! -f "$1" ]       # Проверка существования файла.

then

  echo "Файл \"$1\" не найден."

  exit $E_NOFILE

fi
nl $1 | sort -k2 | uniq -D -f1
