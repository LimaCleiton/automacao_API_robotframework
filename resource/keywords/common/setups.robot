*** Settings ***
Resource    ../../main.robot

*** Keywords ***
    [Documentation]    keyword responsavel por rodar as keywords do setup
    ${status}    Run Keyword And Return Status    Conectar na API do GitHub

Conectar na API do GitHub
    [Documentation]    keyword responsavel por conectar no github