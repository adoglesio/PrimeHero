*** Settings ***
Documentation             Aqui estarão presente os resoluções de todos os exercícios do curso prime
...                       É muito importante informarmos o propósito deste documento.

Library        String
*** Variables ***
${NOME}        Adoglésio

*** Test Cases ***
Verificar o tamanho do nome
    contar o tamanho do nome
    exibir o tamanho no console

*** Keywords ***
contar o tamanho do NOME
    ${TAMANHO_NOME}=    Get Length    ${NOME}
    Set Test Variable    ${TAMANHO_NOME}

exibir o tamanho no console
    Log To Console    ${TAMANHO_NOME}