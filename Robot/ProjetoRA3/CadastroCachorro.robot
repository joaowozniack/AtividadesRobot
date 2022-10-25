*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Keywords ***
Test Keyword 1
    Log To Console  executado keyword1 - Teste realizado com sucesso
    Close Browser
Test Keyword 2
    Log To Console  executado keyword2 - Resultado esperado nao obtido
    Close Browser
Test Keyword 3
    Log To Console  exception
    Close Browser

*** Test Cases ***
Caso de teste HelpFriend - Cadastro de Cachorro sem nome
    [Documentation]  Caso de teste HelpFriend - Cadastro de Cachorro sem nome
        
    Open Browser   http://localhost/HelpFriend/cadastroCachorro.php  chrome
    Maximize Browser Window
    
    Select From List By Index    name:ano    2
    Select From List By Index    name:porte    2
    Select From List By Index    name:raca    2
    Input Text  name:id_instituicao  1
    Click Button  xpath://*[@id="cadastro"]/div/label[8]/button
    
    ${url}=   Get Location
    Run Keyword If  '${url}' == 'http://localhost/HelpFriend/cadastroCachorro.php'  Test Keyword 1  
    ...  ELSE IF  '${url}' == 'http://localhost/HelpFriend/cadastroCachorro_exe.php'  Test Keyword 2
    ...  ELSE  Test Keyword 3

Caso de teste HelpFriend - Cadastro de Cachorro sem ano
    [Documentation]  Caso de teste HelpFriend - Cadastro de Cachorro sem ano
        
    Open Browser   http://localhost/HelpFriend/cadastroCachorro.php  chrome
    Maximize Browser Window
    
    Input Text  name:nome  bob
    Select From List By Index    name:porte    2
    Select From List By Index    name:raca    2
    Input Text  name:id_instituicao  1


    Click Button  xpath://*[@id="cadastro"]/div/label[8]/button

    ${url}=   Get Location

    Run Keyword If  '${url}' == 'http://localhost/HelpFriend/cadastroCachorro.php'  Test Keyword 1  
    ...  ELSE IF  '${url}' == 'http://localhost/HelpFriend/cadastroCachorro_exe.php'  Test Keyword 2
    ...  ELSE  Test Keyword 3
 