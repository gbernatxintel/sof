#!/bin/bash

# Znajdź wszystkie pliki, których nazwy zawierają ace30_ptl i zmień ich nazwę na ace30
find . -type f -name '*ace30_ptl*' | while read FILE; do
    # Zmienna NEW_NAME, która zawiera nową nazwę pliku
    NEW_NAME=$(echo "$FILE" | sed 's/ace30_ptl/ace30/g')

    # Zmień nazwę pliku
    mv "$FILE" "$NEW_NAME"
    
    # Wyświetl informacje o zmianie
    echo "Renamed: $FILE -> $NEW_NAME"
done
