* Settings *
Library     SeleniumLibrary

* Variables *


* Keywords *

Test Keyword 1
    Log To Console    executado keyword1 - passou no teste
    Fail    This is a rather boring example...
    Close Browser

Test Keyword 2
    Log To Console    executado keyword2 - erro na atualização do cachorro
    Close Browser
Abrir o navegador na pagina de mostrar cachorro
    Open Browser   http://localhost/HelpFriend/mostrarCachorro.php  chrome
Clicar no botao de alteracao do primeiro cachorro
    Click Link    xpath:/html/body/div/div/div/div/table/tbody/tr[2]/td[6]/a
Apagar o nome do campo nome
    Input Text  name:nome  ${EMPTY}
Salvar alteracao
    Click Button   xpath://*[@id="cadastro"]/div/label[7]/button
Escrever o nome no campo nome
    Input Text  name:nome  Sansão
    
* Test Cases *
Cenário 1: Alterar Cachorro
    Abrir o navegador na pagina de mostrar cachorro
    Clicar no botao de alteracao do primeiro cachorro
    Apagar o nome do campo nome
    Salvar alteracao
    Escrever o nome no campo nome
    Salvar alteracao
    
    ${url}=   Get Location
    Run Keyword If  '${url}' == 'http://localhost/HelpFriend/atualizacachorro.php?id=6'  Test Keyword 1    
    ...  ELSE  Test Keyword 2
 
# GHERKIN STEPS
Dado que estou na página de alterar dados de cachorro
    Abrir o navegador na pagina de mostrar cachorro
    Clicar no botao de alteracao do primeiro cachorro
Quando apagar o nome do cachorro
    Apagar o nome do campo nome
    Salvar alteracao
Então inserir o nome no campo nome
    Escrever o nome no campo nome
    Salvar alteracao