#!/bin/bash

export PATH=$(dirname ${PWD})/fabric-samples/bin:$PATH
export FABRIC_CFG_PATH=$(dirname ${PWD})/config

CHANNEL_NAME="wetcleaningchannel"

# Crear el bloque de génesis
configtxgen -profile TwoOrgsOrdererGenesis -channelID system-channel -outputBlock ../channel-artifacts/genesis.block

if [ $? -ne 0 ]; then
  echo "Error al generar el bloque de génesis"
  exit 1
fi

# Crear la transacción del canal
configtxgen -profile TwoOrgsChannel -outputCreateChannelTx ../channel-artifacts/${CHANNEL_NAME}.tx -channelID $CHANNEL_NAME

if [ $? -ne 0 ]; then
  echo "Error al generar la transacción del canal"
  exit 1
fi

# Definir los anchor peers
configtxgen -profile TwoOrgsChannel -outputAnchorPeersUpdate ../channel-artifacts/Org1MSPanchors.tx -channelID $CHANNEL_NAME -asOrg Org1MSP

if [ $? -ne 0 ]; then
  echo "Error al generar la actualización de anchor peers"
  exit 1
fi
