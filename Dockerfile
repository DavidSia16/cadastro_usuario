# ---- Etapa 1: Build da aplicação (Usa o Maven para gerar o .jar) ----
FROM eclipse-temurin:17-jdk-alpine AS build
WORKDIR /app

# Copia os arquivos de configuração do Maven e o código fonte
COPY mvnw .
COPY .mvn .mvn
COPY pom.xml .
COPY src src

# Dá permissão de execução ao mvnw (necessário em ambientes Linux/Docker) e compila o projeto ignorando testes para ser mais rápido
RUN chmod +x mvnw
RUN ./mvnw clean package -DskipTests

# ---- Etapa 2: Execução da aplicação (Ambiente leve apenas com o Java rodando) ----
FROM eclipse-temurin:17-jdk-alpine
WORKDIR /app

# Copia o .jar gerado na etapa anterior para dentro desta imagem final
COPY --from=build /app/target/*.jar app.jar

# O Render define a porta dinamicamente via variável de ambiente PORT, mas por segurança expomos a 8080
EXPOSE 8080

# Comando para iniciar a aplicação
ENTRYPOINT ["java", "-jar", "app.jar"]