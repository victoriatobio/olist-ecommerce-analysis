# Olist E-Commerce Analysis

Análisis de datos de Olist, un marketplace brasileño, usando SQL en BigQuery.

## Dataset
[Brazilian E-Commerce Public Dataset by Olist](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce) — 100k órdenes reales entre 2016 y 2018, con información de clientes, vendedores, pagos y reviews.

## Análisis
### 1. Distribución de órdenes por estado
Exploración inicial del volumen de órdenes según su estado (delivered, cancelled, shipped, etc.).  
**Hallazgo:** la mayoría de las órdenes fueron entregadas exitosamente.

### 2. Ticket promedio por estado
Comparación del valor promedio de compra según el estado de la orden.  
**Hallazgo:** las órdenes canceladas tienen un ticket promedio más alto que las entregadas, lo que sugiere que los clientes cancelan más cuando el precio es elevado.

### 3. Clientes recurrentes
Identificación de clientes que realizaron más de una compra y su gasto total acumulado.

### 4. Ranking de vendedores por revenue
Top 20 vendedores ordenados por revenue total usando window functions.

## Herramientas
- SQL (BigQuery)
- Google Cloud Platform