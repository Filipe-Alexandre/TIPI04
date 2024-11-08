# Ecofit

A Ecofit deseja desenvolver um aplicativo mobile que tem como objetivo oferecer uma
experiência personalizada para os seus clientes, para que com base em suas
informações de perfil (peso, altura, gênero, etc) e outra preferências, recomendar qual
o tamanho ideal de roupa para ele dentro da nossa marca (P, M, G, 35, 37, 40, etc).

- O aplicativo só pode ser acessado através de cadastro e login. O departamento de marketing deve conseguir consultar esses cadastros para realizar ações através de ferramentas de CRM.

- O cadastro do cliente deve coletar informações básicas: nome, e-mail, senha, data de nascimento, gênero. Para consultar o tamanho ideal, deve informar altura, peso, medidas do corpo (peito, cintura, quadril).

- O app deve estar disponível para iOS e Android e possuir um design simples e intuitivo.

- Também deve contemplar acessibilidade. Principalmente pessoas com deficiência visual.

- Como temos muitos usuários estrangeiros, o app deve ter a opção de português, inglês e espanhol.
---
## Requisitos:

### Funcionais:
- RF001: O cadastro do cliente deve coletar informações básicas: nome, e-mail, senha, data de nascimento, gênero.

- RF002: Para consultar o tamanho ideal, deve informar altura, peso, medidas do corpo (peito, cintura, quadril.)

- RF003: Desenvolver um banco de dados para caracteristicas do usuario

- RF004: Provador virtual com base nos dados apresentados

### Não Funcionais:
- RNF001: O app deve estar disponível para iOS e Android e possuir um design simples e intuitivo.

- RNF002: Também deve contemplar acessibilidade. Principalmente pessoas com deficiência visual.

- RNF003: Como temos muitos usuários estrangeiros, o app deve ter a opção de português, inglês e espanhol.

- RNF004: Bloqueio de compras via guest

- RNF005: Integração de ferramentas de de CRM para possiveis consultas do departamento de marketing

- RNF006: Conformidade com segurança e privacidade
    - RNF006.1: Garantia de criptografia de dados do usuários
    - RNF006.2: Sistema deve  atender às regulamentações de proteção de dados (LGPD e GDPR)

---
## Histórias de usuário:

### US005: Provador virtual para indicar o tamanho real do roupas ao comprador
#### Descrição:
- Como:Comprador
- Quero: Ter um provador virtual
- Para: Para indicar ○ tamanho ideal de roupas

#### Critérios de Aceitação:
- provador virtual deve ser alimentado de acordo com a variável medidas & gênero
utilizada no cadastro do perfil;
- O provador deve conter um layout simplificado, inserido abaixo da tabela de escolha
de tamanhos (PP; P; M; G; XG; G1 e G2) em cada produto acessado;
- O provador deve indicar ○ tamanho ideal em seu layout, sem a necessidade do cliente
clicar;
- Ao clicar, ○ cliente terá dimensões de cm detalhadas por: comprimento e largura.
- Ao clicar as medidas do provador podem ser atualizadas, caso o comprador deseje
optar pelo ajuste ao corpo: justo; ideal ou folgado.
- O provador deve conter a opção de "alterar medidas", para que ○ cliente verifique
outras medidas (para presentes, consultas e etc)


### US006: Sistema de recomendação para modelos semelhantes por tamanho
#### Descrição:
- Como: Comprador
- Quero: Tenha recomendações de modelos semelhantes por tamanho
- Para: Caso o produto desejado não esteja disponível em seu tamanho ideal


#### Critérios de Aceitação:
- Em caso de indisponibilidade de peça no tamanho ideal, o sistema deve substituir o
- layout de "provador virtua|"
- Buscador de produtos semelhantes, utilizando as referências: tamanho ideal; cor;
- modelagem, ex: oversized, gola v, tecido; preco, etg;
- Layout em forma de carrossel para apresentação de sugestões

### US011 - Alteração de idioma no aplicativo:
#### Descrição:
- Como: Usuário estrangeiro
- Quero: Alterar o idioma
- Para: Conseguir usufruir do aplicativo de forma completa

#### Critérios de aceitação:
- Exibir um botão no menu com uma bandeira representando o idioma ativo.
- Ao clicar na bandeira, aparecer uma guia de opções para selecionar o idioma desejado.
    - Idiomas Iniciais: Inglês e Espanhol
- Após escolher, alterar todo o idioma do app inclusive unidade de medidas caso seja necessário (sistema métrico ou imperial).
    - Para fazer a conversão para o sistema imperial serão utilizados alguns calculos como:
    ```
    cm → polegadas (inches)
    cm ÷ 2,54= x

    ex: Busto de 90cm
    90cm ÷ 2,54= 35,43

    metros → pés (feets)
    m × 3,281 = x

    ex: Altura de 180cm
    1,8m × 3,281 = 5,91
    ```

### US012 - Aplicação de filtros visuais:
#### Descrição:
- Como: Usuário deficiente visual
- Quero: Alterar as cores do aplicativo
- Para: Conseguir ver as cores das roupas com o máximo de fidelidade possível

#### Critérios de aceitação:
- Exibir um botão para modificar os filtros de cores do site.
- Ao ser ativos disponibilizar uma gama de filtros que sejam fácil de entender e visualizar as cores com maior fidelidade à cor original do produto.
    - Filtros: Alto contraste, Deuteranopia, Tritanopia, Acromático
- Após escolher o filtro, disponibilizar um botão de fácil visibilidade para desativar. o filto e voltar à cor original.

---
- criar cadastro completo

- logar na conta

- logoff

- esquecer a senha
    - -
- recomendação de roupas (vestuario) IDEAL
aceite
basear nos dados do usuario

- recomendação de modelos semelhantes
- busca de produtos
    - -
- dp mkt
---














