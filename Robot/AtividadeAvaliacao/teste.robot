*** Settings ***
Library  String

*** Variable ***

${Nome}   joao

${Sobrenome}   wozniack

${email}    @testerobot.com

*** Test Cases ***
Caso de teste 01
    keyword 1

*** Keywords ***
keyword 1
    ${palavra_aleatoria} =  Generate Random String  6  [WORDS]

    Log to console    ${Nome}${Sobrenome}${palavra_aleatoria}${email}