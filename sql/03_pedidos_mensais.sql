#3 PRODUTOS ENTREGUES POR MÊS (Crescimento, Sazonalidade, Picos e quedas)
--Objetivo: analisar crescimento e sazonalidade do negócio.
SELECT
  FORMAT_DATE('%Y-%m', DATE(order_purchase_timestamp)) AS mes,
  COUNT(order_id) AS total_pedidos
FROM `dataset-464615.portifolio2026.orders`
WHERE order_status = 'delivered'
GROUP BY mes
ORDER BY mes;