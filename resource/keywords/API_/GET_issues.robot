*** Settings ***
Resource    ../../main.robot

*** Keywords ***
realizo a parametrizacao do endpoint "issues" enviando headers "${headers}"
    [Documentation]    keyword responsavel por realizar a parametrizacao do headers do endpoint "issues"
    &{headers}    Create Dictionary
    ...    Authorization=Barer ${MY_GITHUB_TOKEN}
    Set Test Variable    ${headers}

pesquiso issues com state "${STATE}" e com label "${LABEL}"
    [Documentation]    Pesquisar issues
    &{PARAMS}    Create Dictionary    
    ...    state=${STATE}
    ...    labels=${LABEL}
    ${response}    GET    url=${AMBIENTE.url_base}/${ISSUES_URI}
    ...    expected_status=any    verify=${False}    headers=${HEADERS_PADRAO}    params=${PARAMS}
    Set Test Variable    ${response}