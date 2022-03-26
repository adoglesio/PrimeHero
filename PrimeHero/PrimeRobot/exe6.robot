*** Settings ***
Documentation             Aqui estarão presente os resoluções de todos os exercícios do curso prime
...                       É muito importante informarmos o propósito deste documento.

Library        String
*** Test Cases ***
Cenario: 5 NOMES DE PAISES
    [Tags]        PAISES
    listar 5 paises
    
*** Keywords ***
Listar 5 paises
    @{PAISES}    Create List    \nBrasil    Bélgica    Alemanha     Dinamarca    Suíça
    FOR    ${lista}    IN    @{PAISES}
        Log To Console    ${lista}
    END        