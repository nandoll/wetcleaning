# Usa una imagen base para el chaincode Go de Fabric
FROM hyperledger/fabric-chaincode-go:latest

# Establece el directorio de trabajo
WORKDIR /chaincode

# Copia el código fuente del chaincode
COPY . .

# Establece el módulo Go
ENV GO111MODULE=on

# Compila el chaincode
RUN go mod tidy && \
    go build -o wetcleaning_chaincode

# Comando para mantener el contenedor activo (opcional)
CMD ["sleep", "infinity"]
