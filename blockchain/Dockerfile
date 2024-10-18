# Usa la imagen base oficial de Hyperledger Fabric Peer
FROM hyperledger/fabric-peer:2.3

# Establece variables de entorno necesarias
ENV FABRIC_CFG_PATH=/etc/hyperledger/fabric

# Crea directorios necesarios
RUN mkdir -p /etc/hyperledger/fabric /var/hyperledger/production

# Copia los archivos de configuración
COPY config/* $FABRIC_CFG_PATH/

# Copia los scripts necesarios
COPY scripts/ /scripts

# Copia las credenciales criptográficas
COPY crypto-config/ /etc/hyperledger/fabric/crypto-config/

# Otorga permisos de ejecución a los scripts
RUN chmod +x /scripts/*.sh

# Expone el puerto del peer
EXPOSE 7051

# Comando por defecto para iniciar el peer
CMD ["/bin/sh", "-c", "/scripts/start.sh"]
