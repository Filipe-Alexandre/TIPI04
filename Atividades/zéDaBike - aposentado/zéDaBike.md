# Caso

O Zé da Bike é proprietário de uma bicicletaria próximo a uma
movimentada ciclovia de São Paulo.

Ele deseja criar um aplicativo para que os usuários da ciclovia
consigam pedir socorro mecânico de forma simples e rápida.

A localização do cliente deve ser identificada automaticamente, sem
o mesmo precisar informar.

O Sr. Zé deseja que o sistema tenha uma tela para que mecânicos
previamente cadastrados, possam consultar todos os pedidos de
socorro.

Como os mecânicos não ficam na frente do computador o tempo
todo, o sistema deve emitir uma alerta sonoro.
O aplicativo deve estar disponível para IOS e Android.
___

# Requisitos

## Requisitos Funcionais:

* RF001: Cadastro de Clientes.
* RF002: Botão para que clientes chamem um mecânico até sua localização.
* RF003: Botão para que clientes liguem para um um mecânico em casos emergenciais.
* RF004: função que faça com que o cliente permita que a localização dele seja compartilhada com o aplicativo durante seu uso.
* RF005: Identificar e enviar a localização do cliente p/ o mecânico.

* RF006: Cadastro de Mecânicos.
* RF007: Consulta de pedidos de socorro.
* RF008: Notificação quando um novo pedido de socorro aparecer.
* RF009: Dashboard contendo relatórios de dados específicos como: quantidade de peidos, quantos foram aceitos, rejeitados, com sucesso ou sem sucesso
* RF010: Função que deixe sincronizado o computador do mecânico com seu celular para que ele tenha acesso remoto aos dados do cliente para poder fazer o atendimento.
* RF011: Aplicativo precisa funcionar apenas durante o funcionamento da bicicletaria.

## Requisitos não funcionais

* RNF001: Identificar a localização do usuário, porém sem vazar os dados. (Ético)
* RNF001: Aplicativo precisa funcionar para IOS e Android.
* RNF002: Deve ter fácil uso em todos tipos e tela.
* RNF003: Ter uma interface simples.
* RNF004: Eficiência do aplicativo em notificar um mecânico a tempo.
* RNF005: Eficiência para aguentar uma alta demanda de pedidos
* RNF006: Eficiência 99% do tempo
* RNF007: Precisa estar disponível durante todo o horário de funcionamento da bicicletaria

***

## Historias de usuários

### US001 – Criar Pedido de Socorro
#### Descrição:
- Como: Ciclista
- Quero: preencher um formulário
- Para: solicitar um pedido de socorro mecânico

#### Critérios de Aceitação:
- A tela do app deve conter um formulário com os campos Nome, Telefone e
Detalhe o Problema
- O app deve apresentar um mapa com a localização do usuário detectada
automaticamente pelo GPS do aparelho
- Caso o GPS esteja indisponível, o usuário poderá indicar a localização no mapa.
- Ao iniciar o app o usuário deve dar permissão de acesso ao GPS. Caso ele negue
o acesso, o usuário poderá indicar a localização manualmente.
- Ao clicar em Solicitar, o sistema deve enviar a solicitação para o sistema da
mecânica
- O sistema deve ter disponibilidade de 99,5%
- O sistema deve estar disponível para as plataformas Android e IOS
- Caso o aparelho esteja offline, mostrar um aviso e não permitir fazer o pedido.

### US002 – Cadastrar Novo Mecânico
#### Descrição:

- Como: Administrador do Sistema
- Quero: Cadastrar um novo mecânico
- Para: Que ele acesse o sistema de consulta de pedidos

#### Critérios de Aceitação:
- O cadastro deve ter os campos: Nome, CPF, E-mail, Telefone.
- Todos os campos devem ser de preenchimento obrigatório.
- Não deve ser permitido o cadastro de CPF ou E-mail duplicados.
- Ao finalizar o cadastro o sistema deve enviar um e-mail para o Mecânico
cadastrar uma senha.

### US003 – Mecânico efetuar login no sistema
#### Descrição:

- Como Mecânico
- Quero fazer o login
- Para acessar o sistema de consulta de pedidos

#### Critérios de Aceitação:
- O login deve ser feito com base no E-mail e Senha cadastrada.
- Após 3 tentativas erradas, o usuário deve ser bloqueado.
- Se os dados forem válidos, redirecionar o mecânico para tela de consulta de
pedidos.

### US004 - Mecânico sair do sistema
#### Descrição:
- Como: Mecânico
- Quero: fazer logoff
- Para: sair do sistema com segurança

#### Critérios de Aceitação:
- Exibir link “sair” no menu do sistema.
- Ao clicar neste link deve ser encerrado a sessão do usuário e redirecionar para
página de login.
- Ao tentar acessar alguma página do sistema, deve ser exibido mensagem que a
sessão foi encerrada.

### US005 - Mecânico consultar Pedidos de Socorro
#### Descrição:
- Como: Mecânico
- Quero: Consultar pedidos de socorro
- Para: Definir se é possivel resolver o problema

#### Critérios de Aceitação:
- Receber um alerta de socorro na tela do computador
- Esse alerta precisa ter um número registrado
- Aparecer a descrição do problema do cliente
- Mostrar localização aproximada do cliente
- Mostrar nome do cliente com sobrenome abreviado
- Um email de confirmação ser enviado paara o mecanico e o cliente
- Ter dois botões para aceitar ou rejeitar o pedido de socorro


### US006 - Mecânico Aceitar Pedido de Socorro
#### Descrição:
- Como: Mecânico
- Quero: Aceitar o chamado recebido
- Para: poder atender o cliente

#### Critérios de Aceitação:
- Após receber o chamado, exibir um botão para aceitar o mesmo.
- Após apertar o botão, mostrar a localização que foi disponibilizada pelo cliente.
- Mostrar o tempo médio de chegada até o local definido
- Mostrar dados do mecânico que irá até o local do ocorrido (como nome e sobrenome, telefone e email)
- Mostrar dados do cliente como nome e sobrenome, telefone e email

### US007 - Mecânico Rejeitar Pedido de Socorro
#### Descrição:
- Como: Mecênico
- Quero: Rejeitar o chamado recebido
- Para: não prestar o serviço solicitado

#### Critérios de Aceitação:
- Após receber o chamado, exibir um botão para rejeitar o mesmo.
- Aparecer uma janela para descrever o motivo da recusa.
- Bloquerar temporariamente o recebimento de chamados para o usuário por ter recusado o o serviço


### US008 - Mecânico esqueceu a senha
#### Descrição:
- Como: Mecânico
- Quero: Recuperar a senha
- Para: Efetuar novamente o login

#### Critérios de Aceitação:
- Após errar a senha mais de uma vez, aparecer um link com a opção de recuperar a senha
- Aparecer uma janela para que ele informe o email cadastrado para que seja enviado um código para ir para a proxima fase de recuperação de senha
- Aparecer um campo para que seja colocado o código recebido por email
- Ir para uma nova janela onde tera os campos para colocar a nova senha e repetí-la
- Levar de volta para a pagina de login original