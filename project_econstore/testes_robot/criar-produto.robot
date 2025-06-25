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
    Click Element    xpath=//a[text()='Login como Funcionário']
    Input Text     id:email_funcionario     lojista@gmail.com
    Input Password     id:senha_funcionario      ola3
    Sleep    4s
    Click Button     class: btn
    Handle Alert    action=ACCEPT    timeout=10s
    Click Element    xpath=//a[text()='Ver Produtos']
    Sleep    3s
    Input Text     name:nome_produto     boné cap
    Input Text     name:descricao      boné cheio de estilo para te proteger do sol
    Input Text     name:preco       60
    Input Text     name:quantidade_estoque      32
    Input Text     name:imagem_url      images/ola.jpg
    Click Element    xpath=//button[@type='submit' and text()='Adicionar Produto']
    Handle Alert    action=ACCEPT    timeout=10s
    sleep     3s
