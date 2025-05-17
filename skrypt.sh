if [[ "$1" == "--date" || "$1" == "-d" ]]; then
  date
fi

elif [[ "$1" == "--logs" || "$1" == "-l" ]]; then
  count=${2:-100}
  for ((i=1; i<=count; i++)); do
    filename="log${i}.txt"
    echo "Plik: $filename" > $filename
    echo "Skrypt: $0" >> $filename
    echo "Data: $(date)" >> $filename
  done
fi

elif [[ "$1" == "--help" || "$1" == "-h" ]]; then
  echo "--date       pokazuje datę"
  echo "--logs N     tworzy N plików"
  echo "--help       pokazuje pomoc"
fi
