*** Settings ***
Resource        C:/Users/gusta/PycharmProjects/TesteBomPraCredito/Hooks/Hooks.robot
Resource        C:/Users/gusta/PycharmProjects/TesteBomPraCredito/Tests/CadastroClienteTests.robot

*** Test Cases ***

Caso de teste 01: Dado que valido os campos da aba Cadastre
    Abrir navegador
    Dado que informo um nome incorreto
    Dado que não informo um nome
    Dado que informo um e-mail incorreto
    Dado que não informo um e-mail
    Dado que não informo a quantidade de parcelas
    Dado que informo uma quantidade de valor inferior a 100,00
    Dado que informo dados corretos na aba Cadastre

Caso de teste 02: Cadastro de usuario Assalariado Desenhista
    Dado que envio as informações sem preenchimento de campos
    Dado que informo um cpf invalido
    Dado que informo dados corretos e envio
    Dado que preencho não preencho dados do endereço
    Dado que preencho dados do endereço corretamente
#    Dado que informo informações complementares
    Dado que valido as informações geradas

Caso de teste 03: Cadastro de usuario Empresario Pisciculto
    Dado que cadastro um usuario Empresario Psiculto

Caso de teste 04: Cadastro de usuario Estudante Estudante
    Dado que cadastro um usuario Estudante Estudante

