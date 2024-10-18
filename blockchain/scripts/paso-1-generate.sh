#!/bin/bash

# Ruta al directorio de binarios de Hyperledger Fabric
export PATH=$(dirname ${PWD})/fabric-samples/bin:$PATH

# Ruta al archivo crypto-config.yaml
export FABRIC_CFG_PATH=$(dirname ${PWD})/config

# Genera el material criptográfico
cryptogen generate --config=../config/crypto-config.yaml --output=../crypto-config

if [ $? -ne 0 ]; then
  echo "Error al generar material criptográfico"
  exit 1
fi

echo "Material criptográfico generado en ../crypto-config"
