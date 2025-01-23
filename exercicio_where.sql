--(Exercício 1) Selecione os nomes de cidade distintas que existem no estado de
-- Minas Gerais em ordem alfabética (dados da tabela sales.customers)

select distinct state,city
from sales.customers
where state ='MG'
order by city 


---- (Exercício 2) Selecione o visit_id das 10 compras mais recentes efetuadas
-- (dados da tabela sales.funnel)

select visit_id
from sales.funnel
where paid_date is not null
order by paid_date desc
limit 10

--(Exercício 3) Selecione todos os dados dos 10 clientes com maior score nascidos
-- após 01/01/2000 (dados da tabela sales.customers)

select *   -- selecionou todos os dados da coluna
from sales.customers
where birth_date > '20000101' -- para procurar o ano, deve colocar YYYY-MM-DD (ano,mes,dias)
order by score desc
limit 10
-- foi procurado dentro da tabela costumers, o ano de nascimentos da pessoas, após 2000
-- e foi ordenado de acordo com o score maior para o menor 


