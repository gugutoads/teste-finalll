***Settings***
Library    SeleniumLibrary

*** Test Cases ***
testar login
    Abrir o sistema
    E aciona a opção de login

*** Keywords ***
Abrir o sistema
    Open Browser     http://127.0.0.1:5500/frontend/login.html   chrome
    Sleep    10s
E aciona a opção de login
    Input Text     id:email     teste@gmail.com
    Input Password     id:senha    testando!
    Click Button     class: btn
    Handle Alert    action=ACCEPT    timeout=10s
