*** Settings ***
Library     SeleniumLibrary

*** Variables ***


*** Keywords ***
Test Keyword 1
    Log To Console    executado keyword1 - cachorro excluído com sucesso
    Close Browser

Test Keyword 2
    Log To Console    executado keyword2 - erro na exclusão de cachorro
    Close Browser
Deletando Cachorro da Instituição
    Open Browser   http://localhost/HelpFriend/mostrarCachorro.php  chrome
    Click Link    xpath:/html/body/div/div/div/div/table/tbody/tr[3]/td[7]/a
    Click Button    xpath:/html/body/div/div/div/div/form/p[5]/input[1]


*** Test Cases ***
Cenário 1: Deletando Cachorro
    Deletando Cachorro da Instituição

    ${id}=    Get Text    id=resultado
    Run Keyword If  '${id}' == 'Um cachorro excluído!'  Test Keyword 1  ELSE  Test Keyword 2
