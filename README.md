# Cruzamentos_SQL
Análises inteligentes (cruzamentos), tabela vendas produtos games simulando Marketplace


# 📊 Análise de Vendas — Marketplace & Pagamentos

## 📌 Sobre o Projeto

Este projeto tem como objetivo analisar dados de vendas de marketplaces, explorando:

* Comportamento de faturamento
* Preferências de forma de pagamento
* Impacto de descontos
* Satisfação do cliente

As análises foram realizadas utilizando **SQL**, com foco em geração de insights para tomada de decisão.

---

## 🗂️ Estrutura dos Dados

A base contém informações transacionais de pedidos, com as seguintes colunas:

```
Pedido_Id, Cliente_Nome, Produto, Marca, Preco, Desconto,
Quantidade, Marketplace, Forma_Pagamento, Status_Pedido,
Data_Venda, CEP_Entrega, Avaliacao_Cliente, Comentario
```

---

## 🔍 Preview dos Dados

| Pedido_Id | Cliente_Nome   | Produto               | Marca    | Preco   | Desconto | Quantidade | Marketplace | Forma_Pagamento | Status_Pedido | Data_Venda | Avaliacao |
| --------- | -------------- | --------------------- | -------- | ------- | -------- | ---------- | ----------- | --------------- | ------------- | ---------- | --------- |
| 13692     | Rafael Mendes  | Headset Surround      | HyperX   | 1269.68 | 0        | 1          | Kabum       | Pix             | Confirmado    | 2025-01-05 | 5         |
| 84885     | Lucas Ferreira | Mousepad Extra Grande | Redragon | 1051.85 | 15       | 2          | Submarino   | Boleto          | Entregue      | 2025-01-25 | 5         |
| 19751     | Fernando Costa | Controle sem fio      | Razer    | 1012.07 | 15       | 1          | Submarino   | Pix             | Confirmado    | 2025-02-21 | 0         |

---

## 📈 Análises Realizadas

### 1. Marketplace x Forma de Pagamento

```sql
select
   Marketplace,
   Forma_Pagamento,
   count(*) as Total_Pedidos,
   sum(Preco * Quantidade) as Total_Vendido
from vendas_dio
group by Marketplace, Forma_Pagamento
order by Total_Vendido desc;
```

💡 **Objetivo:**
Entender quais combinações de marketplace e forma de pagamento geram maior volume financeiro.

💡 **Possíveis insights:**

* Identificar preferência de pagamento por plataforma
* Avaliar impacto do Pix vs Boleto vs Cartão
* Direcionar estratégias comerciais

---

### 2. Avaliação Média por Marketplace

```sql
select
    Marketplace,
    round(avg(Avaliacao_Cliente),2) as Avaliacao_Media
from vendas_dio
group by Marketplace
order by Avaliacao_Media desc;
```

💡 **Objetivo:**
Medir a satisfação do cliente por marketplace.

💡 **Possíveis insights:**

* Marketplaces com melhor experiência
* Relação entre avaliação e fidelização
* Impacto operacional na satisfação

---

### 3. Impacto de Descontos nos Produtos

```sql
select
   Produto,
   avg(Desconto) as Desconto_Medio,
   sum(Preco * Quantidade) as Total_Vendido
from vendas_dio  
group by Produto
order by Desconto_Medio desc;
```

💡 **Objetivo:**
Analisar como o desconto influencia nas vendas.

💡 **Possíveis insights:**

* Produtos que dependem de desconto para performar
* Oportunidades de otimização de margem
* Estratégias de precificação

---

## 🚫 Disponibilidade dos Dados

Os dados completos não foram disponibilizados neste repositório.

Este projeto utiliza uma base simulada/educacional com informações de vendas em marketplace.

Para reprodução das análises, recomenda-se utilizar um dataset com estrutura semelhante.

---

## 🛠️ Tecnologias Utilizadas

* SQL (análise de dados)
* Excel (apoio)
* Power BI (opcional para visualização)

---

## 💡 Possíveis Evoluções do Projeto

* Criação de dashboard no Power BI
* Análise temporal (crescimento mês a mês)
* Segmentação por cliente ou região
* Análise de chargeback ou risco (avançado)

---

## 🚀 Autor

Projeto desenvolvido para fins de estudo e portfólio em análise de dados.


