#1 VISÃO GERAL DO NEGÓCIO (Tamanho do negócio, Base de clientes e Período analisado)
--Objetivo: entender o tamanho do marketplace e o período analisado.
SELECT
  COUNT(DISTINCT order_id) AS total_pedidos,
  COUNT(DISTINCT customer_id) AS total_clientes,
  MIN(order_purchase_timestamp) AS primeira_venda,
  MAX(order_purchase_timestamp) AS ultima_venda
FROM `dataset-464615.portifolio2026.orders`;