#!/data/data/com.termux/files/usr/bin/bash

echo "---------- PERMISSÕES ----------"
echo "Checando apps com permissão de sobreposição…"

while IFS= read -r app; do
    PERM=$(dumpsys package "$app" | grep "android.permission.SYSTEM_ALERT_WINDOW")
    if [[ $PERM ]]; then
        echo "⚠ Permissão de overlay encontrada em $app"
    fi
done < ../database/suspicious_apps.txt
