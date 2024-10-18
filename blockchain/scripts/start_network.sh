#!/bin/bash

# Cargar variables de entorno
source ./envVar.sh

# Iniciar el orderer
echo "Iniciando el ordenante..."
orderer &

sleep 3

# Iniciar el peer
echo "Iniciando el peer..."
peer node start &

sleep 3

# Crear el canal
echo "Creando el canal..."
peer channel create -o orderer.example.com:7050 -c wetcleaningchannel -f ../config/channel.tx --outputBlock ../config/genesis.block

# Unir el peer al canal
echo "Uniendo el peer al canal..."
peer channel join -b ../config/genesis.block

echo "Red blockchain iniciada y peer unido al canal"
