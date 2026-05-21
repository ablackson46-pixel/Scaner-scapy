#!/bin/bash
# Installation de CyberSec Scanner

echo "==================================="
echo "Installation de CyberSec Scanner"
echo "==================================="

# Installation des dépendances Python
echo "[*] Installation des modules Python..."
pip3 install scapy flask requests --break-system-packages

# Vérification des permissions
if [ "$EUID" -ne 0 ]; then 
    echo "[!] ATTENTION: Certaines fonctionnalités (scan WiFi, injection) nécessitent root"
    echo "    Utilisez: sudo python3 cybersec_scanner.py"
fi

# Rendre le script exécutable
chmod +x cybersec_scanner.py

echo ""
echo "[+] Installation terminée !"
echo ""
echo "Usage:"
echo "  Interface web:      python3 cybersec_scanner.py --siteweb"
echo "  Scan WiFi:          sudo python3 cybersec_scanner.py --scan"
echo "  Scan web:           python3 cybersec_scanner.py --url https://example.com --xss --sql"
echo "  Aide complète:      python3 cybersec_scanner.py --help"
echo ""
