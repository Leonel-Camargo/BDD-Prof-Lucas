# BDD-Prof-Lucas

# Plataforma de Hospedagem - Banco de Dados SQL

# Informações Pessoais
Aluno: Leonel de Camargo Neto
Turma: 1° Desenvolvimento de Sistemas

## Sobre a disciplina
Durante as aulas de Banco de Dados I com o professor Lucas e durante as aulas fomos aprendendo a estrutrar bancos de dados, implementar dados e modificar estruturas dentro do banco de dados, a partir desse projeto aprendemos a realizar consultas dentro dos dados implementados, tais consultas estão descritas na explicação dos arquivos.

## Arquivos SQL

* **Arquivo PlataformaHospAtualizada — Criação do Banco de Dados e algumas consultas dentro dele** *(script inicial)*
  Responsável por criar o banco de dados `plataforma_hospedagem` e suas seis tabelas relacionais (`proprietarios`, `clientes`, `enderecos`, `hospedagens`, `alugueis` e `avaliacoes`). Além da estrutura, contém consultas para extrair informações relevantes da operação:
  * Listagem de aluguéis com valor igual ou superior a R$ 500,00.
  * Cálculo do ticket médio gasto por cliente.
  * Média de dias de estadia por cliente.
  * Ranking dos 10 proprietários com mais hospedagens ativas.
  * Volume de aluguéis distribuído por ano e mês para análise de demanda.

* **Arquivo Consultas — Ajustes de dados** *(script de atualização)*
  Contém alterações solicitadas após a fase inicial de consultas, focadas na evolução da estrutura do banco e atualização de dados específicos:
  * Adição da coluna `qnt_hospedagens` na tabela `proprietarios`.
  * Renomeação da tabela `alugueis` para `reservas` e de sua chave primária para `reserva_id`.
  * Ativação de hospedagens específicas por meio de seus IDs.
  * Atualização do e-mail de contato de um proprietário cadastrado.
