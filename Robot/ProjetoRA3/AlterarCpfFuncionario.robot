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
Acessar a página dos funcionários cadastrados na instituicao
    Open Browser   http://localhost/HelpFriend/mostrarFuncionario.php  chrome
Selecionar o botão de editar dados de funcionario
    Click Link    xpath:/html/body/div/div/div/div/table/tbody/tr[2]/td[7]/a
Alterar dado CPF do funcionario selecionado
    Input Text   name:cpf  12312312344
Selecionar botão de atualizar
    Click Button   xpath://*[@id="cadastro"]/div/label[8]/button

* Test Cases *
Cenário 1: Alterar Funcionário
    Acessar a página dos funcionários cadastrados na instituicao
    Selecionar o botão de editar dados de funcionario
    Alterar dado CPF do funcionario selecionado
    Selecionar botão de atualizar

     ${id}=    Get Text    id=resultado
    Run Keyword If  '${id}' == 'Um registro atualizado!'  Test Keyword 1  ELSE  Test Keyword 2


# GHERKIN STEPS
Dado que estou na página de alterar dados de funcionario
    Acessar a página dos funcionários cadastrados na instituicao
    Selecionar o botão de editar dados de funcionario
Quando alterar o CPF do funcionario
    Alterar dado CPF do funcionario selecionado
Então clicar no botão de atualizar
    Selecionar botão de atualizar