# Usa uma imagem oficial do OpenJDK como base (certifique-se de usar a mesma versão do Java que você desenvolveu, ex: 17 ou 21)
FROM eclipse-temurin:17-jdk-alpine

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia o arquivo de build (Maven ou Gradle) e as dependências primeiro para aproveitar o cache
# Aqui assumimos o uso do Maven (.jar gerado na pasta target)
COPY target/*.jar app.jar

# Expõe a porta padrão que a aplicação vai rodar
EXPOSE 8080

# Comando para executar a aplicação quando o container subir
ENTRYPOINT ["java", "-jar", "app.jar"]