# Video-04

- Objetivos gerais desta playlist:
  - Reproduzir aplicação GoRails e estudar a criação de um projeto em Rails
    - https://www.youtube.com/watch?v=wkNR1hG4yOk&list=PLm8ctt9NhMNV75T9WYIrA6m9I_uw7vS56 (Até a parte 13 neste momento)
- Acessibilidade acrescentada "shared/flash"
- Utilização de recursos no arquivo README.md para facilitar a leitura do que foi feito
- User model
```
$ rails g model User email:string password_digest:string
$ rails db:migrate
has_secure_password # User model file - password e password_confirmation campos virtuais
```
- Descomentar bycript e rodar o bundle

- rails c comandos para brincar no terminal com os registros dos usuários
```
$ rails c
> User.all
> User.create(email:"teste", password:"password", password_confirmation:"password")
> user.first
> user.second
> user.third
> User.last
> User.count
```

- [Validações Rails](https://guides.rubyonrails.org/active_record_validations.html)
```
#User model
validates :email, presence: true

# Terminal
> rails c
> user = User.create(password:"password", password_confirmation:"password")
> user.errors
> reload!
```
  - Validações na camada do banco de dados
```
# User migrate
t.string :email, null: false # adicionar proteção no banco de dados e não somente na aplicação

# Terminal
$ rails db:rollback db:migrate
$ rails db:drop db:create db:migrate
$ rails db:migrate:redo
```

- Melhorando validação User
```
#User model
validates :email, presence: true, format: {with: /\A[^@\s]+@[^@\s]+\z/, message:"E-mail deve estar preenchido e ser um e-mail válido"}
```
- [Regex - Rubular](https://rubular.com/)





