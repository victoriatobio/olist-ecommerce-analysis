--- Clientes que compraron más de una vez y su gasto total ---

WITH clientes AS (
    SELECT o.customer_id, COUNT(o.order_id) AS cantidad_ordenes, ROUND(SUM(p.payment_value), 2) AS total_gastado
    FROM data-proyect-497120.olist.orders o
    JOIN data-proyect-497120.olist.payments p ON o.order_id = p.order_id
    GROUP BY o.customer_id
)
  SELECT *
  FROM clientes
  WHERE cantidad_ordenes > 1
  ORDER BY cantidad_ordenes DESC