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
    Input Text     class:edit-nome     Jeans preta 
    Input Text     class:edit-descricao    nova jeans preta da econstore, venha aproveitar
    Input Text     class:edit-preco    23
    Input Text     class:edit-estoque    50
    Input Text     class:edit-imagem    images/ola.jpg
    Click Button        class:salvar
    Handle Alert    action=ACCEPT    timeout=10s
    
