*** Settings ***
Resource        C:/Users/gusta/PycharmProjects/TesteBomPraCredito/Features/CadastroClientesFeature.robot
Resource        C:/Users/gusta/PycharmProjects/TesteBomPraCredito/Hooks/Hooks.robot
Library         SeleniumLibrary
Library         FakerLibrary    locale=pt_BR
Library         String
Library         Collections
Test Setup      Abrir navegador
#Test Teardown   Fechar navegador

*** Variables ***

##De quanto você precisa
${btn2000}                      xpath=//button[@id='btnTwoThousand']
${btn3000}                      xpath=//button[@id='btnThreeThousand']
${btn5000}                      xpath=//button[@id='btnFiveThousand']
${btn10000}                     xpath=//button[@id='btnTenThousand']
${btnOutroValor}                xpath=//button[@id='btnOtherValue']
${inputOutroValor}              xpath=//input[@id='amount']

##Em quantas vezes
${btn9}                         xpath=//button[@id='btnNineTerm']
${btn12}                        xpath=//button[@id='btnTwelveTerm']
${btn18}                        xpath=//button[@id='btnTwelveTerm']
${btn24}                        xpath=//button[@id='btnTwentyFourTerm']
${btnOutroPrazo}                xpath=//button[@id='btnOtherTerm']

##Campo Nome e e-mail
${inputNome}                    xpath=//input[@id='name']
${inputEmail}                   xpath=//input[@id='email']
${btnContinuar}                 xpath=//button[@id='btnContinue']

##Seus Dados
${inputCPF}                     xpath=//input[@id='borrower.cpf']
${inputDtNasc}                  xpath=//input[@id='borrower.dateOfBirth']
${btnFeminino}                  xpath=//label[@id='borrower.gender']
${btnMasculino}                 xpath=//label[@id='borrower.gender2']
${inputRendaMensal}             xpath=//input[@id='borrower.monthlyGrossIncome']
${btnCasado}                    xpath=//label[@id='borrower.maritalStatus']
${btnSolteiro}                  xpath=//label[@id='borrower.maritalStatus2']
${btnSeparado}                  xpath=//label[@id='borrower.maritalStatus3']
${cbxOutros}                    xpath=//select[@id='borrower.maritalStatusOthers']
${cbxOcupacao}                  xpath=//select[@id='borrower.jobType']
${cbxProfissao}                 xpath=//select[@id='borrower.profession']
${cbxGrauInstrucao}             xpath=//select[@id='borrower.educationLevel']
${cbxBanco}                     xpath=//select[@id='borrower.bankingData.bankNumber']
${btnChequeSim}                 xpath=//label[@id='borrower.bankingData.hasCheckbook']
${btnChequeNao}                 xpath=//label[@id='borrower.bankingData.hasCheckbook2']
${btnRestricaoSim}              xpath=//label[@id='borrower.hasNegativeCreditRecord']
${btnRestricaoNao}              xpath=//label[@id='borrower.hasNegativeCreditRecord2']
${btnImovelSim}                 xpath=//label[@id='hasProperty']
${btnImovelNao}                 xpath=//label[@id='hasProperty2']
${btnAutomovelSim}              xpath=//label[@id='hasVehicle']
${btnContinuarEnd}              xpath=//div[@id='button-borrower-info']

##Seu Endereco
${inputCEP}                     xpath=//input[@id='homeAddress.cep']
${inputRua}                     xpath=//input[@id='homeAddress.streetAddress']
${inputNumero}                  xpath=//input[@id='homeAddress.number']
${inputComplemento}             xpath=//input[@id='homeAddress.additionalData']
${inputBairro}                  xpath=//input[@id='homeAddress.neighborhood']
${inputCidade}                  xpath=//input[@id='homeAddress.city']
${cbxEstado}                    xpath=//select[@id='homeAddress.state']
${inputCelular}                 xpath=//input[@id='mobilePhone']
${inputHomeTelefone}            xpath=//input[@id='homePhone']
${cbxWhatsApp}                  xpath=//input[@id='agreeWhatsApp']
${btnContinuarResult}           xpath=//div[@class='caption-left']

##Dados Complementares
${inputconfirmeEmail}           xpath=//input[@id='emailConfirmation']
${btnnacBrasileira}             xpath=//div[@class='col-xs-6 padding-right-5']//label[@id='nationality']
${btnnacEstrangeira}            xpath=//div[@class='col-xs-6 padding-left-5']//label[@id='nationality']
${inputTipoIdentidade}          xpath=//select[@id='rgType']
${inputDataEmissao}             xpath=//input[@id='rgEmissionDate']
${inputNumeroIdentidade}        xpath=//input[@id='rg']
${cbxOrgaoEmissor}              xpath=//select[@id='emmitedBy']
${cbxUF}                        xpath=//select[@id='emmitedBy']
${inputNomeMae}                 xpath=//input[@id='motherName']
${btnPropria}                   xpath=//label[@id='homeType']
${btnAluguel}                   xpath=//label[@id='homeType2']
${cbxOutros}                    xpath=//select[@id='homeTypeOthers']
${inputTempoRes}                xpath=//input[@id='timeInAddress']
${cbxFinalidade}                xpath=//select[@id='homeTypeOthers']
${btnContinuarFim}              xpath=//div[@id='button-personal-info']//div[@class='caption-left'][contains(text(),'CONTINUAR')]

${campoNome}                    xpath=//div[@class='client-name simple-row']

##Erros Home
${erroNome}                     xpath=//span[contains(text(),'Por favor, informe seu nome completo')]
${nomeObrigatorio}              xpath=//span[contains(text(),'Nome obrigatório')]
${erroEmail}                    xpath=//span[contains(text(),'E-mail inválido')]
${emailObrigatorio}             xpath=//span[contains(text(),'E-mail obrigatório')]
${erroQtParcelas}               xpath=//span[contains(text(),'Qtd. Parcelas obrigatória')]
${erroValorBaixo}               xpath=//span[contains(text(),'Valor não pode ser menor que R$100,00')]

##Erros Seus Dados
${erroCPFInvalido}              xpath=//div[contains(text(),'CPF inválido')]
${erroDataFormato}              xpath=//div[contains(text(),'Data deve ser preenchida no formato DD/MM/AAAA')]
${erroRenda}                    xpath=//div[contains(text(),'Informe sua renda corretamente.')]
${erroSexo}                     xpath=//fieldset[@class='simple-row']//div[@class='error simple-row'][contains(text(),'Campo obrigatório')]
${erroEstadoCivil}              xpath=//div[@class='col-xs-12 padding-less error']
${erroGrauInstrucao}            xpath=//div[@class='simple-row']//div[@class='form-group col-xs-12 col-sm-6 resp-padding-right-5']//div[@class='error'][contains(text(),'Campo Obrigatório')]
${erroContaBanco}               xpath=//div[@class='form-group col-xs-12 col-sm-6 resp-padding-left-5']//div[@class='error'][contains(text(),'Campo Obrigatório')]
${erroCheques}                  xpath=//div[@class='ng-untouched ng-invalid ng-dirty']//fieldset[@class='col-xs-12 col-sm-6 resp-padding-right-5']//div[@class='error simple-row'][contains(text(),'Campo obrigatório')]
${erroRestricao}                xpath=//div[@class='ng-untouched ng-invalid ng-dirty']//fieldset[@class='col-xs-12 col-sm-6 resp-padding-left-5']//div[@class='error simple-row'][contains(text(),'Campo obrigatório')]
${erroImovel}                   xpath=//body/app-root[@ng-version='4.4.6']/app-frame/div[@class='page container-fluid']/div[@class='padding-less col-xs-12 col-sm-9']/div[@class='main-area']/div/app-borrower-info/div[@class='form-item col-sm-8 col-xs-12']/form[@class='ng-untouched ng-invalid ng-dirty']/div[@class='simple-row']/fieldset[@class='col-xs-12 col-sm-6 resp-padding-right-5']/div[@class='radio-btn-group simple-row']/div[3]
${erroAutomovel}                xpath=//div[@class='simple-row']//fieldset[@class='col-xs-12 col-sm-6 resp-padding-left-5']//div[@class='error simple-row'][contains(text(),'Campo obrigatório')]

##Erros Endereço
${erroCEP}                      xpath=//div[contains(text(),'CEP deve possuir 8 dígitos.')]
${erroRua}                       xpath=//div[@class='ng-untouched ng-invalid ng-dirty']//div[3]//div[3]
${erroNumero}                   xpath=//div[@class='form-group col-xs-3 padding-left-5']//div[@class='error'][contains(text(),'Campo Obrigatório')]
${erroBairro}                   xpath=//div[@class='form-group col-xs-6 padding-left-5']//div[@class='error'][contains(text(),'Campo Obrigatório')]
${erroCidade}                   xpath=//div[@class='ng-untouched ng-invalid ng-dirty']//div[2]//div[2]
${erroCelular}                  xpath=//div[contains(text(),'O DDD deve possuir pelo menos 2 dígitos.')]

*** Keywords ***

##Caso de teste 01: Dado que valido os campos da aba Cadastre
Dado que informo um nome incorreto
    input text                   ${inputNome}           Teste
    element text should be       ${erroNome}            Por favor, informe seu nome completo

Dado que não informo um nome
    clear element text           ${inputNome}
    element text should be       ${nomeObrigatorio}     Nome obrigatório

Dado que informo um e-mail incorreto
    input text                   ${inputEmail}          teste
    element text should be       ${erroEmail}           E-mail inválido

Dado que não informo um e-mail
    clear element text           ${inputEmail}
    element text should be       ${emailObrigatorio}    E-mail obrigatório

Dado que não informo a quantidade de parcelas
    ${name}                      FakerLibrary.Name
    set global variable          ${name}
    input text                   ${inputNome}           ${name}
    input text                   ${inputEmail}          teste@teste.com
    click button                 ${btnContinuar}
    element text should be       ${erroQtParcelas}      Qtd. Parcelas obrigatória

Dado que informo uma quantidade de valor inferior a 100,00
    click button                 ${btn9}
    click button                 ${btnOutroValor}
    clear element text           ${inputOutroValor}
    input text                   ${inputOutroValor}     50
    element text should be       ${erroValorBaixo}      Valor não pode ser menor que R$100,00

Dado que informo dados corretos na aba Cadastre
    click button                 ${btnOutroValor}
    click button                 ${btn3000}
    click button                 ${btnContinuar}
    sleep  3s

##Caso de teste 02: Cadastro de usuario Assalariado Desenhista
Dado que envio as informações sem preenchimento de campos
    click element                   ${btnContinuarEnd}
    wait until element is visible   xpath=//img[@class='centralize-v']
    element text should be          ${erroCPFInvalido}                      CPF inválido
    element text should be          ${erroDataFormato}                      Data deve ser preenchida no formato DD/MM/AAAA
    element text should be          ${erroRenda}                            Informe sua renda corretamente.
    element text should be          ${erroSexo}                             Campo obrigatório
    element text should be          ${erroEstadoCivil}                      Campo Obrigatório
    element text should be          ${erroGrauInstrucao}                    Campo Obrigatório
    element text should be          ${erroContaBanco}                       Campo Obrigatório
    element text should be          ${erroCheques}                          Campo obrigatório
    element text should be          ${erroRestricao}                        Campo obrigatório
    element text should be          ${erroImovel}                           Campo obrigatório
    element text should be          ${erroAutomovel}                        Campo obrigatório

Dado que informo um cpf invalido
    input text                   ${inputCPF}            25
    input text                   ${inputDtNasc}         10101987
    clear element text           ${inputRendaMensal}
    input text                   ${inputRendaMensal}    500000
    click element                ${btnMasculino}
    click element                ${btnCasado}
    select from list             ${cbxOcupacao}         Assalariado
    sleep  2s
    select from list             ${cbxProfissao}        Desenhista
    sleep  1s
    select from list             ${cbxGrauInstrucao}    2º grau
    sleep  1s
    select from list             ${cbxBanco}            Bradesco
    click element                ${btnChequeNao}
    click element                ${btnRestricaoNao}
    click element                ${btnImovelSim}
    click element                ${btnAutomovelSim}
    click element                ${btnContinuarEnd}
    element text should be       ${erroCPFInvalido}                      CPF inválido

Dado que informo dados corretos e envio
    ${geraCPF}                   FakerLibrary.cpf
    set global variable          ${geraCPF}
    clear element text           ${inputCPF}
    input text                   ${inputCPF}            ${geraCPF}
    click element                ${btnContinuarEnd}
    sleep   3s

Dado que preencho não preencho dados do endereço
    click element                ${btnContinuarResult}
    element text should be       ${erroCEP}                CEP deve possuir 8 dígitos.
    element text should be       ${erroRua}                Campo Obrigatório
    element text should be       ${erroNumero}             Campo Obrigatório
    element text should be       ${erroBairro}             Campo Obrigatório
    element text should be       ${erroCelular}            O DDD deve possuir pelo menos 2 dígitos.

Dado que preencho dados do endereço corretamente
    input text                   ${inputCEP}               03063000
    sleep  1s
    input text                   ${inputNumero}            500
    sleep  2s
    input text                   ${inputCelular}           11998273773
    sleep  1s
    click element                ${btnContinuarResult}
    sleep  15s

Dado que valido as informações geradas
    element text should be       ${campoNome}              ${name}

##Caso de teste 03: Cadastro de usuario Empresario Pisciculto
Dado que cadastro um usuario Empresario Psiculto
    Abrir navegador
    ${name}                      FakerLibrary.Name
    set global variable          ${name}
    input text                   ${inputNome}           ${name}
    input text                   ${inputEmail}          teste@teste.com
    click button                 ${btn2000}
    click button                 ${btn9}
    click button                 ${btnContinuar}
    sleep  3s
    ${geraCPF}                   FakerLibrary.cpf
    set global variable          ${geraCPF}
    input text                   ${inputCPF}            ${geraCPF}
    click element                ${btnContinuarEnd}
    sleep   3s
    input text                   ${inputDtNasc}         10101980
    clear element text           ${inputRendaMensal}
    input text                   ${inputRendaMensal}    600000
    click element                ${btnMasculino}
    click element                ${btnCasado}
    select from list             ${cbxOcupacao}         Empresário
    sleep  2s
    select from list             ${cbxProfissao}        Piscicultor
    sleep  1s
    select from list             ${cbxGrauInstrucao}    2º grau
    sleep  1s
    select from list             ${cbxBanco}            Bradesco
    click element                ${btnChequeNao}
    click element                ${btnRestricaoNao}
    click element                ${btnImovelSim}
    click element                ${btnAutomovelSim}
    click element                ${btnContinuarEnd}
    sleep  3s
    Dado que preencho dados do endereço corretamente
    Dado que valido as informações geradas

##Caso de teste 04: Cadastro de usuario Estudante Estudante
Dado que cadastro um usuario Estudante Estudante
    Abrir navegador
    ${name}                      FakerLibrary.Name
    set global variable          ${name}
    input text                   ${inputNome}           ${name}
    input text                   ${inputEmail}          teste@teste.com
    click button                 ${btn2000}
    click button                 ${btn9}
    click button                 ${btnContinuar}
    sleep  3s
    ${geraCPF}                   FakerLibrary.cpf
    set global variable          ${geraCPF}
    input text                   ${inputCPF}            ${geraCPF}
    click element                ${btnContinuarEnd}
    sleep   3s
    input text                   ${inputDtNasc}         08101980
    clear element text           ${inputRendaMensal}
    input text                   ${inputRendaMensal}    700000
    click element                ${btnMasculino}
    click element                ${btnCasado}
    select from list             ${cbxOcupacao}         Estudante
    sleep  2s
    select from list             ${cbxProfissao}        Estudante
    sleep  1s
    select from list             ${cbxGrauInstrucao}    2º grau
    sleep  1s
    select from list             ${cbxBanco}            Bradesco
    click element                ${btnChequeNao}
    click element                ${btnRestricaoNao}
    click element                ${btnImovelSim}
    click element                ${btnAutomovelSim}
    click element                ${btnContinuarEnd}
    sleep  3s
    Dado que preencho dados do endereço corretamente
    Dado que valido as informações geradas