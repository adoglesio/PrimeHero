*** Settings ***
Documentation        Aqui estarão presente os resoluções do exercícios Variáveis do curso Prime.

*** Variables ***
${NOME}        Adoglésio Gomes    

&{PESSOA}
...        nome=Adoglésio    
...        sobrenome=Gomes 
...        email=adoglesiogomes18@gmail.com   
...        idade=27       
...        cpf=056.430.935-45    
...        genero=masculino    

@{FRUTAS}
...        banana    
...        maçã    
...        uva      
...        abacaxi     
...        morango        

*** Test Cases ***
Cenario: Imprimindo informações de pessoa
    Log To Console        ${PESSOA.nome}
    Log To Console        ${PESSOA.sobrenome}
    Log To Console        ${PESSOA.idade}
    Log To Console        ${PESSOA.email}
    Log To Console        ${PESSOA.cpf}
    Log To Console        ${PESSOA.genero}

Cenario: Imprimindo lista de FRUTAS
    
    Log To Console        ${FRUTAS[0]}
    Log To Console        ${FRUTAS[1]}
    Log To Console        ${FRUTAS[2]}
    Log To Console        ${FRUTAS[3]}
    Log To Console        ${FRUTAS[4]}