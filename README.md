# Video-05

- Objetivos gerais desta playlist:
  - Reproduzir aplicação GoRails e estudar a criação de um projeto em Rails
    - https://www.youtube.com/watch?v=wkNR1hG4yOk&list=PLm8ctt9NhMNV75T9WYIrA6m9I_uw7vS56 (Parte 13 e 14)
- Formulário de registro do usuário
  - Routes
```
# routes

get 'sign_up', to: 'registrations#new'
```
  - Controller
    - Criar arquivo, classe e new method
  - View
    - Criar pasta view/registrations
    - Criar arquivo view/registrations/new.html.erb
```
<%= form_with model: @user, url: sign_up_path do |form| %>
  <%= form.text_field :email %>
  <%= form.text_field :password %>
    <%= form.text_field :password_confirmation %>
<% end %>
```
    - criar rota apropriada para method create
```
# routes

post 'sign_up', to: 'registrations#create'
```

  - Bootstrap
```
<div class="mb-3">
</div>

class:"form-control"
```
  - form.label
  - placeholder:""
  - form.submit com bootstrap class:"btn btn-primary"
  - create method com user_params private method
  - Mensagens de erro no formulário
```
<% if @user.errors.any? %>
  <div class="alert alert-danger">
    <% @user.errors.full_messages.each do |message| %>
    <div><%= message %></div>
    <% end %>
  </div>
<% end %>
```
