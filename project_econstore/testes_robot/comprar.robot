***Settings***
Library    SeleniumLibrary

*** Test Cases ***
testar login
    Abrir o sistema
    E aciona a opção de login
    comprar

*** Keywords ***
Abrir o sistema
    Open Browser     http://127.0.0.1:5500/frontend/login.html   chrome
    Sleep    5s
E aciona a opção de login
    Input Text     id:email     teste@gmail.com
    Input Password     id:senha    testando!
    Click Button     class: btn
     Handle Alert    action=ACCEPT    timeout=10s
comprar
    Sleep    3s
    Click Element   class:ver-detalhes
    Click Button      id:btn-comprar
    Click Button     id:checkout-btn    
    Click Button       id:confirmar-pagamento-btn-html
    Sleep    8s
    Input Text       id:numero-cartao    123
    Input Password      id:senha-cartao    123
    Click Button     id:finalizar-pagamento