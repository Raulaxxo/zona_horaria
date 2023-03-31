#!/bin/bash
# Este script cambia la zona horaria del sistema

# Primero, muestra la zona horaria actual
echo "Zona horaria actual:"
timedatectl | grep "Time zone"

# Luego, pide al usuario que introduzca la nueva zona horaria
#echo "Introduzca la nueva zona horaria (por ejemplo, America/New_York):"
#read nueva_zona

nueva_zona=America/Santiago

# Finalmente, cambia la zona horaria
sudo timedatectl set-timezone $nueva_zona

# Muestra la nueva zona horaria
echo "Zona horaria cambiada a:"
timedatectl | grep "Time zone"
