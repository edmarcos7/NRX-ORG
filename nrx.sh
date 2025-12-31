#!/data/data/com.termux/files/usr/bin/bash

clear
echo "====================================="
echo "   NRX FF ANALYZER — Início"
echo "====================================="

DATE=$(date)
REPORT="reports/report_$(date +%s).txt"

mkdir -p reports

echo "Data da análise: $DATE" > $REPORT

bash modules/check_apps.sh >> $REPORT
bash modules/check_files.sh >> $REPORT
bash modules/check_hash.sh >> $REPORT
bash modules/check_permissions.sh >> $REPORT

echo "=====================================" >> $REPORT
echo "Relatório salvo em: $REPORT"
echo "====================================="
