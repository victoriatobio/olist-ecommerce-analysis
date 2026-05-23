--- Cantidad de órdenes según su estado --- 

SELECT order_status, COUNT(*) AS cantidad_ordenes
FROM data-proyect-497120.olist.orders
GROUP BY order_status
ORDER BY cantidad_ordenes DESC