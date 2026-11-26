CREATE DATABASE plataforma_hospedagem;
USE plataforma_hospedagem;

CREATE TABLE proprietarios(
proprietario_id VARCHAR(255) PRIMARY KEY,
nome VARCHAR(255),
cpf_cnpj VARCHAR(20),
contato VARCHAR(255)
);

CREATE TABLE clientes(
cliente_id VARCHAR(255) PRIMARY KEY,
nome VARCHAR(255),
cpf VARCHAR(14),
contato VARCHAR(255)
);

CREATE TABLE enderecos(
endereco_id VARCHAR(255) PRIMARY KEY,
rua VARCHAR(255),
numero INT,
bairro VARCHAR(255),
cidade VARCHAR(255),
estado VARCHAR(2),
cep VARCHAR(10)
);

CREATE TABLE hospedagens(
hospedagem_id VARCHAR(255) PRIMARY KEY,
tipo VARCHAR(50),
endereco_id VARCHAR(255),
proprietario_id VARCHAR(255),
ativo BOOL,
FOREIGN KEY (endereco_id) REFERENCES enderecos(endereco_id),
FOREIGN KEY (proprietario_id) REFERENCES proprietarios(proprietario_id)
);

CREATE TABLE alugueis (
    aluguel_id VARCHAR(255) PRIMARY KEY,
    cliente_id VARCHAR(255),
    hospedagem_id VARCHAR(255),
    data_inicio DATE,
    data_fim DATE,
    preco_total DECIMAL(10, 2),
    FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id),
    FOREIGN KEY (hospedagem_id) REFERENCES hospedagens(hospedagem_id)
);

CREATE TABLE avaliacoes (
avaliacao_id VARCHAR(255) PRIMARY KEY,
cliente_id VARCHAR(255),
hospedagem_id VARCHAR(255),
nota INT,
comentario TEXT,
FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id),
FOREIGN KEY (hospedagem_id) REFERENCES hospedagens(hospedagem_id)
);

/* Estrutura para selecionar tabela enderecos, filtrando apenas as primeiras 10 casas igual ou maior que 150
select * from enderecos
WHERE numero >= 150
ORDER BY numero ASC
LIMIT 10;
*/
-- Quais clientes estão pagando mais de 500 reais no aluguel, em ordem crescente e qual o id da hospedagem?
SELECT preco_total, hospedagem_id FROM alugueis
WHERE preco_total >= 500
ORDER BY preco_total ASC;

/* Qual ticket medio das pessoas na pĺataforma? */
SELECT * FROM alugueis;

SELECT cliente_id, AVG(preco_total) AS ticket_medio FROM alugueis
GROUP BY cliente_id;

-- Quais dias tem maiores quantidades reservas
SELECT cliente_id, AVG(datediff(data_fim,data_inicio))
AS media_dias_estadias FROM alugueis
GROUP BY cliente_id
ORDER BY media_dias_estadias DESC;

/* Exibir os 10 proprietários com muitas propriedades ativas*/
select * from proprietarios;
select * from hospedagens
where ativo = 1;

# O espaço após 'proprietarios' indica um 'as' por isso funciona, também está apelidando.
select p.nome as nome_proprietario 
from proprietarios p;

# Contar quantas hospedagens cada proprietario tem
select count(h.hospedagem_id) as total_hosp_atv
from hospedagens h;

# Juntando as duas consultas
select p.nome as nome_proprietario,
count(h.hospedagem_id) as total_hosp_atv
from proprietarios p
join hospedagens h
on p.proprietario_id = h.proprietario_id
where h.ativo = 1
group by p.nome
order by total_hosp_atv desc
limit 10;

/*Consulta dos meses com maior e menor demanda de alugueis*/
select year(data_inicio) as ano,
month(data_fim) as meses,
count(*) total_alugueis
from alugueis
group by ano,meses
order by meses;

