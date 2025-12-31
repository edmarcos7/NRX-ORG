#!/data/data/com.termux/files/usr/bin/bash

echo "---------- HASH DE OBB ----------"
echo "Calculando hash dos principais arquivos OBB…"

while IFS= read -r line; do
    FILE=$(echo "$line" | cut -d" " -f1)
    OFFICIAL_HASH=$(echo "$line" | cut -d" " -f2)

    if [ -f "$FILE" ]; then
        HASH=$(openssl sha256 "$FILE" | awk '{print $2}')
        if [ "$HASH" != "$OFFICIAL_HASH" ]; then
            echo "❌ Hash diferente para $FILE"
        fi
    fi
done < ../database/official_hashes.txt
