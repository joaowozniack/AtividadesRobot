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
Alterando Nome do Cachorro
    Open Browser   http://localhost/HelpFriend/mostrarCachorro.php  chrome
    Click Link    xpath:/html/body/div/div/div/div/table/tbody/tr[2]/td[6]/a
    Input Text  name:nome  ${EMPTY}
    Click Button   xpath://*[@id="cadastro"]/div/label[7]/button
    Input Text  name:nome  Sansão
    Click Button   xpath://*[@id="cadastro"]/div/label[7]/button
    
* Test Cases *
Cenário 1: Alterar Cachorro
    Alterando Nome do Cachorro
    ${url}=   Get Location
    Run Keyword If  '${url}' == 'http://localhost/HelpFriend/atualizacachorro.php?id=6'  Test Keyword 1    
    ...  ELSE  Test Keyword 2
 
