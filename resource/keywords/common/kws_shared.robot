*** Settings ***
Resource    ../../main.robot

*** Keywords ***
retorna a requisição com status code "${esperado}"
    [Documentation]    keyword responsavel por validar o status code mediante a exigencia do teste
    Status Should Be    ${esperado}

parametrizar headers da request
    [Documentation]    keyword responsavel por retornar headers de acordo com os testes
    Set Variable    &{HEADERS_PADRAO}
    [Return]    ${HEADERS_PADRAO}