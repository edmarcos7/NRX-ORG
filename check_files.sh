#!/data/data/com.termux/files/usr/bin/bash

echo "---------- ARQUIVOS ----------"
echo "Procurando arquivos fora do padrão..."

SEARCH_PATH="/sdcard/Android/obb"
for ext in "*.so" "*.mod" "*.txt"; do
    find "$SEARCH_PATH" -type f -name "$ext" 2>/dev/null | while read -r file; do
        echo "❌ Possível arquivo modificado: $file"
    done
done
