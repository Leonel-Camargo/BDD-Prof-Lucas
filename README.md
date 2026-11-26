# BDD-Prof-Lucas

# Plataforma de Hospedagem - Banco de Dados SQL

## Sobre o projeto
Este projeto reúne scripts em SQL voltados para a estruturação, consulta e manutenção do banco de dados de uma plataforma de hospedagens. O código cobre desde a criação das tabelas principais do sistema até a extração de métricas de negócio e ajustes estruturais na base de dados.

## Objetivo
Demonstrar a modelagem relacional de um sistema de reservas e aplicar consultas SQL para responder a perguntas do negócio — como cálculo de ticket médio, tempo de estadia e identificação de demanda — além de realizar atualizações de registros e alterações na estrutura das tabelas.

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
