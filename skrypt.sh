if [[ "$1" == "--date" ]]; then
  date
fi

elif [[ "$1" == "--logs" ]]; then
  count=${2:-100}
  for ((i=1; i<=count; i++)); do
    filename="log${i}.txt"
    echo "Plik: $filename" > $filename
    echo "Skrypt: $0" >> $filename
    echo "Data: $(date)" >> $filename
  done
fi
