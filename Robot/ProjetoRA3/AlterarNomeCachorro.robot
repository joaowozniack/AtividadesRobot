* Settings *
Library     SeleniumLibrary

* Variables *


* Keywords *

Test Keyword 1
    Log To Console    executado keyword1 - cachorro atualizado com sucesso
    Close Browser

Test Keyword 2
    Log To Console    executado keyword2 - erro na atualização do cachorro
    Close Browser
Alterando Nome do Cachorro
    Open Browser   http://localhost/HelpFriend/mostrarCachorro.php  chrome
    Click Link    xpath:/html/body/div/div/div/div/table/tbody/tr[2]/td[6]/a
    Input Text  name:nome  ${EMPTY}
    Click Button   xpath://*[@id="cadastro"]/div/label[7]/button
    
* Test Cases *
Cenário 1: Alterar Cachorro
    Alterando Nome do Cachorro

     ${id}=    Get Text    id=resultado
    Run Keyword If  '${id}' == 'Um registro atualizado!'  Test Keyword 2  ELSE  Test Keyword 1