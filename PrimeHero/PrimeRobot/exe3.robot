*** Settings ***
Documentation             Aqui estarão presente os resoluções de todos os exercícios do curso prime
...                       É muito importante informarmos o propósito deste documento.

Library        String
*** Test Cases ***
Meu test de soma
    ${RESULTADO} Somar os numeros 1 6
    Log    ${RESULTADO}

*** Keywords ***
Somar dois numeros
    [Arguments] ${NUM_A} ${NUM_B}
    ${SOMA} Evaluate    ${NUM_A}+${NUM_B}
    [Return]    ${SOMA}