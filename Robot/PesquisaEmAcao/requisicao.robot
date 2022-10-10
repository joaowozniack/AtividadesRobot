*** Settings ***
Library    RequestsLibrary

*** Test Cases ***
Quick Get Request Test
    ${response}=    GET  https://www.centauro.com