# Infra-estrutura como código (IaC):
# Script de criação de estrutura de 
# usuários, diretórios e permissões
_______
* ## O que é?
  Infra-estrutura como código (IaC) é o gerenciamento e provisionamento da infra-estrutura por meio de códigos, em vez de processos manuais.

  Com a IaC, são criados arquivos de configuração que incluem as especificações da sua infra-estrutura, facilitando a edição e a distribuição de configurações.
  Ela também assegura o provisionamento do mesmo ambiente todas as vezes. 

* ## Principal benefício:
  Ao automatizar o provisionamento da infra-estrutura com a IaC, os desenvolvedores não precisam provisionar e gerenciar manualmente **servidores, sistemas
  operacionais, armazenamento** e outros componentes de infra-estrutura sempre que criam ou implantam uma aplicação.

* ## Definições do projeto, curso Linux (web.dio.me):
  - Todo provisionamento deve ser feito em um arquivo do tipo Bash Script;
  - O dono de todos os diretórios criados será o usuário root;
  - Todos os usuários terão permissão total dentro do diretório publico;
  - Os usuários de cada grupo terão permissão total dentro de seu respectivo diretório;
  - Os usuários não poderão ter permissão de leitura, escrita e execução em diretórios de departamentos que eles não pertencem;
  - Subir arquivo de script criado para a sua conta no GitHub.


