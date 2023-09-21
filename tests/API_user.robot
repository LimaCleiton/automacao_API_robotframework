*** Settings ***
Resource    ../resource/main.robot

*** Test Cases ***
TC001: Autenticacao GITHUB
    [Tags]    TC001
    [Documentation]    Teste que valida o acesso ao github
    Dado que realizo a parametrizacao do endpoint "issues" enviando headers "válido"
    Quando pesquiso issues com state "open" e com label "bug"
    Então retorna a requisição com status code "200"

TC0002: 
    [Tags]    TC001
    [Documentation]    Teste que valida o acesso ao github