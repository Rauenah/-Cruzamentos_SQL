-- Marketplace x Forma de pagamento

select
   Marketplace,
   Forma_Pagamento,
   count(*) as Total_Pedidos,
   sum(Preco * Quantidade) as Total_Vendido
from vendas_dio
group by Marketplace, Forma_Pagamento
order by Total_Vendido desc; 

-- Avaliação média por marketplace

select
    Marketplace,
    round(avg(Avaliacao_Cliente),2) as Avaliacao_Media
from vendas_dio
group by Marketplace
order by Avaliacao_Media desc;   

-- Produtos com maior impacto de desconto

select
   Produto,
   avg(Desconto) as Desconto_Medio,
   sum(Preco * Quantidade) as Total_Vendido
from vendas_dio  
group by Produto
order by Desconto_Medio desc; 

select*from vendas_dio;