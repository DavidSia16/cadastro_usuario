🚀 Cadastro de Usuários (CRUD API)
Uma API RESTful desenvolvida em Java com Spring Boot para gerenciamento e cadastro de usuários, contando com documentação interativa via Swagger.

🛠️ Tecnologias Utilizadas
Java 21

Spring Boot

Spring Data JPA (Persistência de dados)

Jakarta Validation (Validação de campos)

Swagger / OpenAPI (Documentação da API)

Maven (Gerenciamento de dependências)

⚙️ Como Funciona o Projeto (Arquitetura)
O projeto segue o padrão MVC (Model-View-Controller), estruturado em camadas para garantir uma boa separação de responsabilidades:

Controller (/users): Recebe as requisições HTTP (JSON), aciona as validações dos dados recebidos e repassa o fluxo para a camada de serviço.

Service: Contém as regras de negócio da aplicação.

Repository: Responsável pela comunicação direta com o banco de dados via Spring Data JPA.

Database: Armazena e persiste os dados cadastrados.

📌 Funcionalidades do CRUD
A API disponibiliza as seguintes operações para a entidade User:

POST /users — Cria um novo usuário (com validação de campos obrigatórios como nome de usuário e senha).

GET /users — Retorna a lista de usuários cadastrados.

GET /users/{id} — Busca os detalhes de um usuário específico pelo ID.

PUT /users/{id} — Atualiza as informações de um usuário existente.

DELETE /users/{id} — Remove um usuário do sistema.

📄 Documentação (Swagger)
A API possui interface interativa do Swagger para testar os endpoints diretamente pelo navegador.

Inicie a aplicação localmente.

Acesse no navegador:

Plaintext
http://localhost:8080/swagger-ui.html
🚀 Como Executar o Projeto
Pré-requisitos
Java 21 instalado

Maven instalado (ou utilize o wrapper ./mvnw)

Passo a passo
Clone o repositório:

Bash
git clone https://github.com/DavidSia16/cadastro_usuario.git
cd cadastro_usuario
Execute a aplicação:

Bash
./mvnw spring-boot:run
A aplicação estará rodando em http://localhost:8080.
