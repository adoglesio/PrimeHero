*** Settings ***
Documentation             Aqui estarão presente os resoluções de todos os exercícios do curso prime
...                       É muito importante informarmos o propósito deste documento.

Library        String
*** Test Cases ***
Gerar email com interpolacao de variaveis
    ${EMAIL}              Criar email    adoglesio    gomes    18
    Log To Console        ${EMAIL}

*** Keywords ***
Criar email
    [Arguments]     ${NOME}          ${SOBRENOME}   ${IDADE}
    ${EMAIL}         Set Variable     \n${NOME}_${SOBRENOME}_${IDADE}@robot.com
    [Return]        ${EMAIL}