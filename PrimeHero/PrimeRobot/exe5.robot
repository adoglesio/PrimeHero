*** Settings ***
Documentation             Aqui estarão presente os resoluções de todos os exercícios do curso prime
...                       É muito importante informarmos o propósito deste documento.

Library        String
*** Test Cases ***
Cenario: Contando de 0 a 5
    [Tags]        CONTAR
    Contar de 0 a 5
*** Keywords ***
Contar de 0 a 5
    FOR        ${count}    IN RANGE     0    
        Log To Console  ${count}
    END    