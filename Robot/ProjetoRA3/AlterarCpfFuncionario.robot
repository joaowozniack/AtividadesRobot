* Settings *
Library     SeleniumLibrary

* Variables *


* Keywords *

Test Keyword 1
    Log To Console    executado keyword1 - funcionário atualizado com sucesso
    Close Browser

Test Keyword 2
    Log To Console    executado keyword2 - erro na atualização de funcionário
    Close Browser
Alterando CPF de Funcionário
    Open Browser   http://localhost/HelpFriend/mostrarFuncionario.php  chrome
    Click Link    xpath:/html/body/div/div/div/div/table/tbody/tr[2]/td[7]/a
    Input Text   name:cpf  12312312344
    Click Button   xpath://*[@id="cadastro"]/div/label[8]/button

* Test Cases *
Cenário 1: Alterar Funcionário
    Alterando CPF de Funcionário

     ${id}=    Get Text    id=resultado
    Run Keyword If  '${id}' == 'Um registro atualizado!'  Test Keyword 1  ELSE  Test Keyword 2