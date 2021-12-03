# DjangoLivre

[![GitHub repo size](https://camo.githubusercontent.com/9dbdc3027a68dcbaf8812ea5a78875b99c58e88fe535c2ab0a96411aedf74495/68747470733a2f2f696d672e736869656c64732e696f2f6769746875622f7265706f2d73697a652f69757269636f64652f524541444d452d74656d706c6174653f7374796c653d666f722d7468652d6261646765)](https://camo.githubusercontent.com/9dbdc3027a68dcbaf8812ea5a78875b99c58e88fe535c2ab0a96411aedf74495/68747470733a2f2f696d672e736869656c64732e696f2f6769746875622f7265706f2d73697a652f69757269636f64652f524541444d452d74656d706c6174653f7374796c653d666f722d7468652d6261646765) [![GitHub language count](https://camo.githubusercontent.com/07fcaeee86a71b4e870f17c87ad925dc97ffab6a2e0969b194db446a55a1cef9/68747470733a2f2f696d672e736869656c64732e696f2f6769746875622f6c616e6775616765732f636f756e742f69757269636f64652f524541444d452d74656d706c6174653f7374796c653d666f722d7468652d6261646765)](https://camo.githubusercontent.com/07fcaeee86a71b4e870f17c87ad925dc97ffab6a2e0969b194db446a55a1cef9/68747470733a2f2f696d672e736869656c64732e696f2f6769746875622f6c616e6775616765732f636f756e742f69757269636f64652f524541444d452d74656d706c6174653f7374796c653d666f722d7468652d6261646765)  [![Bitbucket open issues](https://camo.githubusercontent.com/d3f97484f945442405a6da036ecffc8b046909e52c0408aa07a7f5a821db2ec1/68747470733a2f2f696d672e736869656c64732e696f2f6269746275636b65742f6973737565732f69757269636f64652f524541444d452d74656d706c6174653f7374796c653d666f722d7468652d6261646765)](https://camo.githubusercontent.com/d3f97484f945442405a6da036ecffc8b046909e52c0408aa07a7f5a821db2ec1/68747470733a2f2f696d672e736869656c64732e696f2f6269746275636b65742f6973737565732f69757269636f64652f524541444d452d74656d706c6174653f7374796c653d666f722d7468652d6261646765) [![Bitbucket open pull requests](https://camo.githubusercontent.com/2e974bf71fc3f13ccce21bba2d772630d0b62594e4e324b1c2a2431203689ea0/68747470733a2f2f696d672e736869656c64732e696f2f6269746275636b65742f70722d7261772f69757269636f64652f524541444d452d74656d706c6174653f7374796c653d666f722d7468652d6261646765)](https://camo.githubusercontent.com/2e974bf71fc3f13ccce21bba2d772630d0b62594e4e324b1c2a2431203689ea0/68747470733a2f2f696d672e736869656c64732e696f2f6269746275636b65742f70722d7261772f69757269636f64652f524541444d452d74656d706c6174653f7374796c653d666f722d7468652d6261646765)

[![exemplo imagem](https://github.com/iuricode/readme-template/raw/main/README-repository/exemplo-image.png)](https://github.com/iuricode/readme-template/blob/main/README-repository/exemplo-image.png)

> DjangoLivre é um projeto feito com Django e REST que simula um sistema bancário. 

O projeto deve ter os seguintes requerimentos:

-  [x] Banco de dados criado e populado no MySQL;
-  [x] O projeto do banco "Django Livre" usando o Django Rest Framework;
-  [x] Endpoints;
-  [x] Templates.

## 💻 Pré-requisitos

Antes de começar, verifique se você atendeu aos seguintes requisitos:

- Você instalou a versão mais recente de Python3, pip3, Django, Django Rest Framework, MySQLClient, MySQL;
- Você tem uma máquina Windows / Linux / MacOS;
- Você leu as instruções descritas abaixo.

## 🚀 Instalando DjangoLivre

Para instalar o DjangoLivre, siga estas etapas:

Linux e macOS:

Para instalar a versão mais recente do Python3: https://www.python.org/downloads/
Para instalar o MySQL na sua máquina: https://dev.mysql.com/downloads/installer/
Após o clone do projeto, inicie o ambiente virtual criado: source venv/bin/activate
Caso não tenha o pip instalado, digite no terminal: python get-pip.py
Após fazê-lo, digite: pip install Django.
Instale em seguida o REST: pip install djangorestframework
e o MySQLclient: pip install mysqlclient.

Windows:

Para instalar a versão mais recente do Python3: https://www.python.org/downloads/
Para instalar o MySQL na sua máquina: https://dev.mysql.com/downloads/installer/
Após o clone do projeto, inicie o ambiente virtual criado: virtualenv\venv\Scripts\activate.bat
Caso não tenha o pip instalado, digite no terminal: python get-pip.py
Após fazê-lo, digite: pip install Django.
Instale em seguida o REST: pip install djangorestframework
e o MySQLclient: pip install mysqlclient.

## ☕ Usando DjangoLivre

  Para usar DjangoLivre, siga estas etapas:

  Abra o arquivo na sua IDE de escolha. Em <settings.py>, dentro de <banco>, insira sua senha do MySQL na parte: 
linha 81  <DATABASES = {
             ...
linha 86             PASSWORD: ''>
para que ele se conecte com o arquivo de banco de dados já importado no MySQL.
  Se desejar mudar o idioma e o fuso horário do projeto, também em <settings.py>:
linha 115          <LANGUAGE_CODE = 'pt-br'
                         
linha 117          <TIME_ZONE = 'America/Sao_Paulo'>
  Para conseguir iniciar o projeto no localhost em um navegador, digite: python manage.py runserver
e clique no link gerado (provavelmente http://localhost:8000/ ou http://127.0.0.1:8000/).
  As URLs disponíveis são: /cadastro, /enderecos, /contas, /transferencias.
  Clique em cada uma delas e digite os dados requisitados.

## :woman_technologist: Desenvolvedoras

O team DjangoLivre é composto por:

| [![Foto da Fernanda Kobs no GitHub](https://avatars.githubusercontent.com/u/75281337?v=4) Fernanda Kobs](https://github.com/nandakobs) | [![Foto da Lorena Mattos](https://avatars.githubusercontent.com/u/91705201?v=4) Lorena Mattos](https://github.com/Lorena-Mattos) | [![Foto da Marcelle Macêdo](https://avatars.githubusercontent.com/u/92064165?v=4) Marcelle Macêdo](https://github.com/marcellemacedo) |
| ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ |
| [![Foto da Madu no GitHub](https://avatars.githubusercontent.com/u/74265808?v=4) Madu](https://github.com/eduardakossatz) | [![Foto da Patrícia Maria de Souza no GitHub](https://avatars.githubusercontent.com/u/41968938?v=4) Patrícia Maria de Souza](https://github.com/patyfil) | [![Foto da Yasmin Carolina no GitHub](https://avatars.githubusercontent.com/u/91809784?v=4) Yasmin Carolina](https://github.com/yasmincarolina) |

[⬆ Voltar ao topo](https://github.com/Lorena-Mattos/DjangoLivre#DjangoLivre)
