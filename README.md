# TesteQA
Processo Seletivo - Teste (Analista QA Pleno)
Teste Bom Pra Credito

Para o projeto em questão foram utilizados:

- Robot Framework em linguagem Phyton
- Selenium WebDriver para criação dos testes

Os cenários propostos de testes foram:

Caso de teste 01: Dado que valido os campos da aba Cadastre
    Abrir navegador
    Dado que informo um nome incorreto
    Dado que não informo um nome
    Dado que informo um e-mail incorreto
    Dado que não informo um e-mail
    Dado que não informo a quantidade de parcelas
    Dado que informo uma quantidade de valor inferior a 100,00
    Dado que informo dados corretos na aba Cadastre

Caso de teste 02: Cadastro de usuário Assalariado Desenhista
    Dado que envio as informações sem preenchimento de campos
    Dado que informo um CPF invalido
    Dado que informo dados corretos e envio
    Dado que preencho não preencho dados do endereço
    Dado que preencho dados do endereço corretamente
    Dado que valido as informações geradas

Caso de teste 03: Cadastro de usuário Empresario Piscicultor
    Dado que cadastro um usuário Empresario Psiculto

Caso de teste 04: Cadastro de usuário Estudante
    Dado que cadastro um usuário Estudante

Classes:

Para o projeto em questão foram criadas 3 classes basicamente:

- Hooks – Classe onde é armazenado o código reutilizado em muitos casos de testes em geral, ex: abertura de navegadores, massa de dados gerada e utilizada em n partes do sistema.

- Features – Classe criada para armazenar os casos de testes em questão, contendo os passos realizados em cada teste.

- Tests – Classe contendo o código de cada passo de teste implementado na classe Feature, o Robot lê os casos de teste em questão na classe Feature e executa os mesmos de acordo com a implementação de seus passos na classe Tests.


Framework de automação

O framework utilizado para criação e execução dos casos foi o PyCharm, framework que utiliza linguagem Phyton.
Para execução dos casos é necessário a configuração do Robot Framework via linha de comando, abaixo blog com informações de instalação:

http://robotizandotestes.blogspot.com/2017/08/tutorial-instalando-o-robot-framework.html


Exemplos de criação do projeto

O projeto foi estruturado para que o mesmo possa sofrer fáceis manutenções, onde cada classe pode ser estruturada e alterada separadamente, podendo reutilizar os casos de teste ou mesmo os passos de um caso em testes futuros:



