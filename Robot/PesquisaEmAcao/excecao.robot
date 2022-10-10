* Settings *
Library     SeleniumLibrary

* Variables *

* Keywords *
Falha Abrir Site
    TRY
        Open Browser   https://centauroo.com.br/  chrome
    EXCEPT
        Log    EXCEPT with no arguments catches any exception.
    END

* Test Cases *
Cenário 1: Falha ao tentar acessar o site
    Falha Abrir Site