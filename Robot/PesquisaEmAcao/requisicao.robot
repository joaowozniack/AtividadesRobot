*** Settings ***
Library    RequestsLibrary

*** Test Cases ***
Chamada GET:
    ${response}=    GET  https://www.centauro.com

Chamada POST:
