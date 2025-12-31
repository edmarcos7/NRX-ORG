#!/data/data/com.termux/files/usr/bin/bash

echo "[NRX] Atualizando pacotes..."
pkg update -y && pkg upgrade -y

echo "[NRX] Instalando dependências..."
pkg install -y git curl coreutils grep openssl-tool jq

echo "[NRX] Dependências instaladas com sucesso!"
echo "[NRX] Rode: bash nrx.sh"
