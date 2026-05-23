--- Ticket promedio y volumen de órdenes según el estado del pedido ---

SELECT o.order_status, COUNT(o.order_id) AS cantidad_ordenes, ROUND(AVG(p.payment_value), 2) AS promedio_ticket
FROM data-proyect-497120.olist.orders o
JOIN data-proyect-497120.olist.payments p ON o.order_id = p.order_id
GROUP BY o.order_status
ORDER BY promedio_ticket DESC