if [[ "$1" == "--date" || "$1" == "-d" ]]; then
  date

elif [[ "$1" == "--logs" || "$1" == "-l" ]]; then
  count=${2:-100}
  for ((i=1; i<=count; i++)); do
    filename="log${i}.txt"
    echo "Plik: $filename" > $filename
    echo "Skrypt: $0" >> $filename
    echo "Data: $(date)" >> $filename
  done

elif [[ "$1" == "--help" || "$1" == "-h" ]]; then
  echo "--date       pokazuje datę"
  echo "--logs N     tworzy N plików"
  echo "--help       pokazuje pomoc"

elif [[ "$1" == "--init" ]]; then
  repo_url=$(git config --get remote.origin.url)
  current_dir=$(pwd)
  folder_name="copy-1"
  git clone "$repo_url" "$current_dir/$folder_name"
  
  export PATH="$current_dir/$folder_name:$PATH"
echo "Repozytorium sklonowane do: $folder_name"
echo "Dodano do PATH (tymczasowo): $current_dir/$folder_name"

else 
	echo "Unknown"
fi
