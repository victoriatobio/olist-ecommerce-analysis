--- Ranking de vendedores por revenue total ---

WITH ventas_por_seller AS (
    SELECT oi.seller_id, ROUND(SUM(oi.price), 2) AS total_vendido
    FROM data-proyect-497120.olist.order_items oi
    GROUP BY oi.seller_id
)
  SELECT seller_id, total_vendido, RANK() OVER (ORDER BY total_vendido DESC) AS ranking
  FROM ventas_por_seller
  LIMIT 20