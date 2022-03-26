*** Settings ***
Documentation             Aqui estarão presente os resoluções de todos os exercícios do curso prime
...                       É muito importante informarmos o propósito deste documento.

Library        String
*** Test Cases ***
Cenario: Listar estou no número
    [Tags]            NUMERO
    listar estou no número 0 ou 10

*** Keywords ***
listar estou no número 0 ou 10
    FOR    ${NUMERO}    IN RANGE    0    11
        IF    '${NUMERO}'=='5'
            Log To Console    Estou no número: ${NUMERO}
        ELSE IF    '${NUMERO}'=='8'
            Log To Console    Estou no número: ${NUMERO}
        ELSE    
            Log to Console    Vazio
        END
    END