#!/bin/bash

# Ruta a los binarios de Fabric
export PATH=$PATH:$(dirname ${PWD})/fabric-samples/bin
export FABRIC_CFG_PATH=$(dirname ${PWD})/config

echo ${FABRIC_CFG_PATH}

# Generar materiales criptográficos
cryptogen generate --config=../config/crypto-config.yaml --output=../crypto-config

# Verificar si se generaron los materiales
if [ $? -ne 0 ]; then
    echo "Error al generar materiales criptográficos"
    exit 1
fi

echo "Materiales criptográficos generados correctamente"

# Generar el bloque de génesis
configtxgen -profile OrdererGenesis -channelID system-channel -outputBlock ../config/genesis.block

if [ $? -ne 0 ]; then
    echo "Error al generar el bloque de génesis"
    exit 1
fi

echo "Bloque de génesis generado correctamente"

# Generar la transacción del canal
configtxgen -profile ChannelProfile -outputCreateChannelTx ../config/channel.tx -channelID wetcleaningchannel

if [ $? -ne 0 ]; then
    echo "Error al generar la transacción del canal"
    exit 1
fi

echo "Transacción del canal generada correctamente"
