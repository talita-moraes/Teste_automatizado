#language:pt

Funcionalidade: Login
    Para que eu possa cadastrar e gerenciar minhas tarefas
    Sendo um usuário
    Posso acessar o sistema com meu email e senha previamente cadastrados.

    Contexto:Paginal principal 
    Dado que eu acesso a página principal

    @logout
    Cenario: Usuário deve ser autorizado
        
        Quando eu faço login com "talita.moraes@ufrpe.br" e "Talita9898"
        Então devo ser autenticado com sucesso
        E devo ver a mensagem "TALITA FERREIRA"

    Esquema do Cenario: Tentativa de login

        Quando eu faço login com "<email>" e "<senha>"
        Então devo ver a mensagem "<mensagem>"

            Exemplos:
            | email                      | senha   | mensagem                                        |
            | talita.moraes@ufrpe.br     | d987456 | Nome de usuário ou senha inválida!              |
            | talita.moraes@ufrpe.com.br | 123456  | Nome de usuário ou senha inválida!              |
            |                            | 123456  | Campo usuário e senha precisam ser preenchidos. |
            | talita.moraes@ufrpe.com.br |         | Campo usuário e senha precisam ser preenchidos. |
   