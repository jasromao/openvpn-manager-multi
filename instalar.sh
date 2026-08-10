#!/bin/bash

set -e

REPO="jasromao/openvpn-manager-multi"
BRANCH="main"

BASE_URL="https://raw.githubusercontent.com/$REPO/$BRANCH"

echo "========================================"
echo " Instalador OpenVPN Manager MULTI"
echo "========================================"

cd /home/ubuntu

echo
echo "A descarregar script de restauro..."

curl -fsSL \
    "$BASE_URL/restaurar-openvpn-multi" \
    -o /home/ubuntu/restaurar-openvpn-multi

chmod +x /home/ubuntu/restaurar-openvpn-multi

echo
echo "A descarregar backup limpo..."

curl -fL \
    "$BASE_URL/openvpn-multi-limpo.tar.gz" \
    -o /home/ubuntu/openvpn-multi-limpo.tar.gz

echo
echo "A iniciar instalação..."

/home/ubuntu/restaurar-openvpn-multi \
    /home/ubuntu/openvpn-multi-limpo.tar.gz

echo
echo "========================================"
echo " Instalação concluída"
echo "========================================"
