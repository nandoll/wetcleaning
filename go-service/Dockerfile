# Etapa de compilación
FROM golang:1.17-alpine AS builder

# Establece el directorio de trabajo
WORKDIR /app

# Copia el módulo Go y descarga las dependencias
COPY go.mod go.sum ./
RUN go mod download

# Copia el código fuente
COPY . .

# Compila la aplicación
RUN go build -o main .

# Imagen final
FROM alpine:latest

# Establece el directorio de trabajo
WORKDIR /app

# Copia el binario compilado desde la etapa anterior
COPY --from=builder /app/main .

# Expone el puerto de la aplicación
EXPOSE 8080

# Ejecuta el binario
CMD ["./main"]
