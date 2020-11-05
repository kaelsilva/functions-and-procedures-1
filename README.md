# Lista de Exercícios I - Funções e Procedimentos

**Considere o banco de dados EquipeBD abaixo para responder às questões:**

Funcionario (<ins>codigo</ins>, nome, sexo, dataNasc, salario, **supervisor**, **depto**)  
Departamento (<ins>codigo</ins>, sigla, descricao, **gerente**)  
Equipe(<ins>codigo</ins>, nomeEquipe)  
Membro(<ins>codigo</ins>, **codEquipe**, **codFuncionario**)  
Projeto (<ins>codigo</ins>, descricao, **depto**, **responsavel**, dataInicio, dataFim, situacao, dataConclusao, **equipe**)  
Atividade (<ins>codigo</ins>, descricao, dataInicio, dataFim, situacao, dataConclusao)  
AtividadeMembro(<ins>**codAtividade**</ins>, <ins>**codMembro**</ins>)  
AtividadeProjeto (<ins>**codAtividade**</ins>, <ins>**codProjeto**</ins>)  

Situação pode ser: Planejado, Em andamento, Concluído.

Script de criação: https://github.com/tacianosilva/bsi-tasks/tree/master/bd/scripts/EquipesBD 

**Material de Estudos**
- http://materialdornel.readthedocs.io/pt_BR/latest/linguagem-sql/procedures.html
- Funções
  - http://materialdornel.readthedocs.io/pt_BR/latest/linguagem-sql/funcoes.html
  - https://ajuda.locaweb.com.br/pt-br/Como_criar_Functions_no_MySQL_5.0
- DCL
  - https://www.digitalocean.com/community/tutorials/como-criar-um-novo-usuario-e-conceder-permissoes-no-mysql-pt
  - https://www.devmedia.com.br/gerenciamento-de-usuarios-e-controle-de-acessos-do-mysql/1898
- http://materialdornel.readthedocs.io/pt_BR/latest/linguagem-sql/transacoes.html
- http://materialdornel.readthedocs.io/pt_BR/latest/linguagem-sql/indices.html

1. Faça um função para calcular a idade do funcionário.
2. Faça uma consulta para calcular a média de idade por departamento.
3. Faça um procedimento para exibir os funcionários com idade acima da média do seu departamento.
4. Faça uma função para calcular quantos dias de atraso tem uma atividade. A função retornará negativo se tiver atrasada e positivo se tiver em dia.
5. Faça uma função para calcular quantos dias de atraso tem um projeto. A função retornará negativo se tiver atrasada e positivo se tiver em dia.
6. Faça um procedimento para exibir a equipe de um projeto, exibindo o nome do funcionário, a sigla do departamento.
7. Faça uma função para calcular quantas atividades um membro de equipe fez no projeto.
8. Faça uma função para calcular a porcentagem de atividades que um membro de equipe fez no projeto.
9. Liste o nome e o departamento de todos os funcionários que ganham mais do que algum gerente.
10. Crie um usuário chamado empresa_admim_local para o banco de dados EmpresaDB. Este usuário deve ter todos os privilégios mas sem acesso remoto.
11. Crie um usuário chamado empresa_admim para o banco de dados EmpresaDB. Este usuário deve ter todos os privilégios mas com acesso remoto.
12. Crie um usuário chamado empresa_gerente para o banco de dados EmpresaDB. Este usuário deve ter privilégios apenas de fazer consultas em todas as tabelas. Ele pode inserir e atualizar as tabelas Equipe, Membro, Atividade e AtividadeProjeto.
13. Crie um índice para o atributo sigla da tabela departamento e um índice para o atributo situação da tabela atividade.
14. Explique o funcionamento de um índice e como ele é implementado no SGBD.

Link da atividade:  
https://docs.google.com/document/d/1Oj3AFmHNh1pSLUfCWZtwlZ2zXUSe1_ASQ3MU7HZe-Lg/edit
