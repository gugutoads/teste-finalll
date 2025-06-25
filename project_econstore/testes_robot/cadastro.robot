***Settings***
Library    SeleniumLibrary

*** Test Cases ***
testar login
    Abrir o sistema
    E aciona a opção de login

*** Keywords ***
Abrir o sistema
    Open Browser     http://127.0.0.1:5500/frontend/    chrome
E aciona a opção de login
    Click Element    xpath=//a[text()='Cadastre-se']
    Input Text     id:nome_completo    teste robot
    Input Text     id:cpf   12345678952
    Input Text     id:telefone   61345678952
    Input Text     id:email  teste@gmail.com
    Input password      id:senha     testando!
    Input password      id:confirma_senha    testando!
    Input Text       id:endereco_cep    awoewqe
    Input Text       id:endereco_rua   awoewqe
    Input Text       id:endereco_numero   awoewqe
    Input Text       id:endereco_complemento   awoewqe
    Input Text       id:endereco_bairro   awoewqe
    Input Text       id:endereco_cidade   awoewqe
    Input Text       id:endereco_estado   awoewqe
    Click Button     class: btn
     Handle Alert    action=ACCEPT    timeout=10s
                    
