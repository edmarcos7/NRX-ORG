#!/data/data/com.termux/files/usr/bin/bash

echo "---------- APLICATIVOS INSTALADOS ----------"
echo "Verificando apps suspeitos..."

while IFS= read -r app; do
    if pm list packages | grep -qi "$app"; then
        echo "❌ App suspeito detectado: $app"
    fi
done < ../database/suspicious_apps.txt
