*** Settings ***
Library    RequestsLibrary

*** Test Cases ***
Chamada GET:
    ${resposta}=    GET  https://www.centauro.com/ chrome
