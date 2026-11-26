/* 1° Consulta
Após as consultas anteriores, a plataforma solicitou algumas mudanças, foi observado que não temos a quantidade de propriedades por
proprietários. Também foi pedido que alterassemos a tabela alugueis para "reservas" o que faz mais sentido para o banco
*/
alter table proprietarios
add qnt_hospedagens int;

alter table alugueis
rename to reservas;

alter table reservas
rename column aluguel_id to reserva_id;

select * from hospedagens
where hospedagem_id in ('1', '10', '100');
#alterar as hospedagens para ativas baseando-se no id
update hospedagens
set ativo = 1
where hospedagem_id in ('1', '10', '100');

#alterar o email do proprietario de id 1009 para daniela_120@email.com
update proprietarios
set contato = 'daniela_120@email.com'
where proprietario_id in ('1009');

select * from proprietarios
where proprietario_id in ('1009');