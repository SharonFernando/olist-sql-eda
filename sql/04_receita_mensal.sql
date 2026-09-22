#4 RECEITA MENSAL(Receita real, Base para dashboard e KPI clássico)
--Objetivo: calcular a principal métrica de negócio (receita).
SELECT
  FORMAT_DATE('%Y-%m', DATE(o.order_purchase_timestamp)) AS mes,
  ROUND(SUM(oi.price), 2) AS receita
FROM `dataset-464615.olist.orders` o
INNER JOIN `dataset-464615.olist.order_items` oi
  ON o.order_id = oi.order_id
WHERE o.order_status = 'delivered'
GROUP BY mes
ORDER BY mes;