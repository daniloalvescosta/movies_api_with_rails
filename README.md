
# Movies API - Mobile 2 you Challenge

API de filmes proposta no desafio do 
processo seletivo da Mobile 2 You (agora 
Dimensa).



## Como Executar o Código

Clone o repositório

```bash
  git clone https://github.com/daniloalvescosta/movies_api_with_rails.git
```

Vá para a pasta do repositório

```bash
  cd movies_api_with_rails
```

Execute o Bundle

```bash
  bundle install
```

Importe os filmes do arquivo CSV

```bash
  rails import:movies
```

Execute os testes para garantir que não há nada faltando:

```bash
  rails test
```

E finalize iniciando a API

```bash
  rails server
```


## Detalhes do Projeto:

- Ruby version:  3.1.2
- Rails version: 7.0.3
- Database: SQLite
- Gems utilizadas: 'rack-cors'


## Lições Aprendidas com o Projeto

Este projeto me mostrou mais a cerca da
simplicidade que Ruby on Rails possui em
comparação com outros frameworks fullstack.

A simplicidade de se criar uma API e fazer
com que ela retorne um JSON foi o que eu 
aprendi de novo ao atuar neste projeto,
e por mais que tenha sido simples, foi delicioso
perceber o quão versátil é a stack que 
escolhi para minha carreira.



## Perguntas possíveis

#### Por que optei por mini testes ao invés de RSPEC?

Por conta de ser uma API simples, os mini testes nativos
do Rails já dão conta do recado.

#### Por que utilizei a gem Rack-Cors? Qual a relevancia dela?

Caso eu deseje consumir esta API no front-end
com um React.JS ou outra biblioteca, a utilização
do rack-cors evitaria o erro de cabeçalho "C.O.R.S"

#### Por que utilizei SQLite ao invés de PostgreSQL (ou outros DB's)?

Por mais que eu ame de paixão o Postgres, o SQLite
facilitará a execução do código para quem for 
avaliar o projeto e executar na própria maquina.

## Screenshots
#### Requisitando com Postman
![Postman Test](https://i.ibb.co/93V318M/Postman-tests.png)

#### Executando os testes
![Rails mini Tests](https://i.ibb.co/NV1jP47/tests.png)

