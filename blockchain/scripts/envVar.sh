#!/bin/bash

# Configura las variables de entorno para el peer
function setGlobals() {
    export CORE_PEER_LOCALMSPID="Org1MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$(dirname ${PWD})/crypto-config/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/ca.crt
    export CORE_PEER_MSPCONFIGPATH=$(dirname ${PWD})/crypto-config/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp
    export CORE_PEER_ADDRESS=peer0.org1.example.com:7051

    export ORDERER_GENERAL_LOCALMSPDIR=$(dirname ${PWD})/crypto-config/ordererOrganizations/example.com/orderers/orderer.example.com/msp
    export ORDERER_GENERAL_TLS_CERTIFICATE=$(dirname ${PWD})/crypto-config/ordererOrganizations/example.com/orderers/orderer.example.com/tls/server.crt
    export ORDERER_GENERAL_TLS_PRIVATEKEY=$(dirname ${PWD})/crypto-config/ordererOrganizations/example.com/orderers/orderer.example.com/tls/server.key
    export ORDERER_GENERAL_TLS_ROOTCAS=[$(dirname ${PWD})/crypto-config/ordererOrganizations/example.com/orderers/orderer.example.com/tls/ca.crt]

    export CORE_PEER_MSPCONFIGPATH=$(dirname ${PWD})/crypto-config/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/msp
    export CORE_PEER_TLS_CERT_FILE=$(dirname ${PWD})/crypto-config/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/server.crt
    export CORE_PEER_TLS_KEY_FILE=$(dirname ${PWD})/crypto-config/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/server.key
    export CORE_PEER_TLS_ROOTCERT_FILE=$(dirname ${PWD})/crypto-config/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/ca.crt


}
