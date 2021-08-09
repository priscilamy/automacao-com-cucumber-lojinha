#language:pt

Funcionalidade: Login
    Para que eu acesse o site Lojinha
    Sendo um usuário
    Posso acessar a área logada com usuário e senha cadastrados

    Contexto: Página de Login
        Dado que eu acesso a página principal

    @log-out
    Cenario: Usuario deve acessar área logada
        Quando eu faço o login com "admin" e "admin"
        Então devo ser autenticado com sucesso
        E devo ver a "Lista de Produtos"

    Esquema do Cenário: Login não efetivado
        Quando eu faço o login com "<usuario>" e "<senha>"
        Então devo ver a mensagem "<alerta>"

        Exemplos: 
        |usuario|senha|alerta|
        |admin|123|Falha ao fazer o login|
        |123|123|Falha ao fazer o login|
        |admin| |Falha ao fazer o login|
        | | admin |Falha ao fazer o login|
        | | |Falha ao fazer o login|


    