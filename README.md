# Video-02

- Objetivos gerais desta playlist:
  - Reproduzir aplicação GoRails e estudar a criação de um projeto em Rails
    - https://www.youtube.com/watch?v=wkNR1hG4yOk&list=PLm8ctt9NhMNV75T9WYIrA6m9I_uw7vS56 (Até a parte 9 neste momento)
- Correção nome repo no github
 - Remover remote
  - git remote rm origin
 - Adicionar remote com nome corrigido
  - git remote add origin git@github.com:gabrielbdornas/scheduled_tweets.git
- Adicionar Bootstrap
  - https://getbootstrap.com/
  - main/index.html.erb
    - d-flex align-items-center justify-content-center
  - layout
    - div class container
  - Bootstrap navbar - https://getbootstrap.com/docs/5.0/components/navbar/
    - <%= render partial: "sharede/navbar" %>
    - Modificar navabar links (Home e About)
  - link_to helper
    - <% link_to "Navbar", root_path, class: "nav-link" %>
    - <% link_to "Home", root_path, class: "nav-link" %>
    - <% link_to "About", about_path, class: "nav-link" %>
- Vídeos da série:
1 Criação das primeiras páginas - https://www.youtube.com/watch?v=Gw5fXE8hMWU&t=5s
