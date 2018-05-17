# Transaction Manager v0.1

Esse projeto Rails foi desenvolvido como aplicação de emprego para a Nama.

## Setup
Siga os seguintes passos para rodar essa aplicação:

1. Certifique-se que tem Ruby 2.4 e Rails 5 devidamente instalados.
	1. Você pode ainda, opcionalmente, utilizar o rbenv. Saiba mais [nesse artigo da Digital Ocean](http://www.digitalocean.com/community/tutorials/how-to-install-ruby-on-rails-with-rbenv-on-ubuntu-16-04).
2. Clone o repositório do projeto e acesse sua pasta. Você pode fazer isso de duas maneiras:
	1. Rodando `git clone https://github.com/lucasaciole/avaliacao_desenvolvedor.git` no terminal.
	2. Fazendo o download do código-fonte diretamente [do Github](https://github.com/lucasaciole/avaliacao_desenvolvedor/archive/master.zip)
3. Rode `bundle install` para instalar as dependências.
4. Rode `rails db:migrate` para criar as tabelas no banco SQLite.
5. Rode `rails server` e veja o servidor rodando, por padrão, em `localhost:3000`

## Rodando os Testes
Para rodar os testes, basta executar `rails test` no terminal.

### Referência
Este desafio foi baseado neste outro desafio: https://github.com/lschallenges/data-engineering

Ainda foram utilizados, para o desenvolvimento desse projeto:
- A documentação do Rails: http://guides.rubyonrails.org/v5.2/
- A documentação do Boostrap: https://getbootstrap.com/docs/3.3
- Esse guia de estilo de código para Ruby e Ruby on Rails: https://github.com/bbatsov/ruby-style-guide