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
     
     ${target_xpath}=    Set Variable    //a[contains(@href,'?id=3') and @class='ver-detalhes' and text()='Ver detalhes']
     Wait Until Element Is Visible    ${target_xpath}    timeout=10s
     Click Element    ${target_xpath}
    Click Button      id:btn-comprar
    Click Button     id:checkout-btn    
    Click Button       id:confirmar-pagamento-btn-html
    Sleep    5s
    Input Text       id:numero-cartao    123
    Input Password      id:senha-cartao    123
    Click Button     id:finalizar-pagamento