# README

## Sobre: 

Aplicação Web para o armazenamento de uma lista de filmes que o usuário gostaria de assistir ou já assistiu. Essa lista é pega pela API do TheMovieDB (https://www.themoviedb.org/documentation/api).
Uma conta pode ser vinculada a mais de um perfil. A lista de filmes estar associada ao perfil, não a conta, por exemplo: o perfil Filho contém uma lista de filmes a assistir, já o perfil Mãe pode ter outros filmes a assistir (como funciona no Netflix).

## Funcionalidaes:
  
 - [x] Criar conta
     - Como um usuário gostaria de criar uma conta na plataforma, sendo essa conta privada, onde outras contas não possam ver as minhas listas.
     - A conta deverá ter um perfil principal contendo: email, senha, nome e data de nascimento
     - A aplicação não deve ter mais de uma conta associada ao mesmo email  
      
 - [x] Login da conta
    - Como usuário gostaria de logar na plataforma e continuar a visualizar as minhas listas.
    - Login será feito por: email e senha
    - Todas as áreas privadas só podem ser acessadas caso o usuário esteja autenticado (O acesso direto por URL não deve ser permitido, caso o usuário não esteja       logado.)
 
 - [x] Criar Perfil
    - Como um usuário gostaria de criar diferentes perfis de usuários, para que eu possa associar os filmes       a cada perfil, deixando a minha lista de filmes organizada.
    - O perfil deverá ter somente um nome
    - O usuário pode ter no máximo 4 perfis

 - [x] Listar perfis
    - Como usuário gostaria de ver todos os perfis associados a minha conta para selecionar o perfil      desejado e ter o conteúdo filtrado.
    - Lista de todos os perfis associados ao usuário
    - Os conteúdos internos da aplicação serão definidos a partir de um perfil selecionado
    
  - [x] Busca de filmes
    - Como usuário gostaria de ter a opção de buscar um filme a partir de um texto qualquer, para que eu    possa localizar filmes que não estão listados em meus filmes sugeridos
    - Busca de filmes por termo
    
  - [x] Marcar filme como para assistir
    - Como usuário gostaria de marcar um filme para assistir, para que eu não esqueça dos filmes que eu me interessei.
    - Filmes marcado como watchlist deve ser salvo no perfil do usuário
    - Os filmes no watchlist devem ser levados em consideração na sugestão de filmes
    
  - [x] Visualizar lista para assistir
    - Como usuário gostaria de marcar um filme da minha lista de a assistir como já assistido, para que eu consiga me organizar conforme for assistindo os filmes desejados.

## Configuração: 

1. Yarn install
2. rails db:migrate
3. bundle install


* Ruby version 2.5

