#2 STATUS DOS PEDIDOS (Insight de cancelamentos, Pedidos entregues e Pipeline de vendas)
--Objetivo: entender o funil operacional (entregues, cancelados, etc.).
SELECT
  order_status,
  COUNT(*) AS qtd_pedidos
FROM `dataset-464615.portifolio2026.orders`
GROUP BY order_status
ORDER BY qtd_pedidos DESC;