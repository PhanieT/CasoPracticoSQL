
SELECT*FROM MENU_ITEMS

-- Encontrar el número de artículos en el menú.

SELECT COUNT(*) AS numero_de_articulos
FROM menu_items;

--¿Cuál es el artículo menos caro y el más caro en el menú? 

SELECT *
FROM menu_items
WHERE price = (SELECT MIN(price) FROM menu_items);

SELECT *
FROM menu_items
WHERE price = (SELECT MAX(price) FROM menu_items);

--¿Cuántos platos americanos hay en el menú? 

SELECT COUNT(*) AS numero_de_platos_americanos
FROM menu_items
WHERE category = 'American';



--¿Cuál es el precio promedio de los platos? 

SELECT ROUND(AVG(price), 2) AS precio_promedio
FROM menu_items;

--------------------------------------------

SELECT*FROM ORDER_DETAILS

--¿Cuántos pedidos únicos se realizaron en total? 

SELECT COUNT(DISTINCT order_id) AS total_pedidos_unicos
FROM order_details;


--¿Cuáles son los 5 pedidos que tuvieron el mayor número de artículos? 

SELECT order_id, SUM(item_id) AS TOTAL_ARTICULOS
FROM order_details
GROUP BY order_id
LIMIT 5;



--¿Cuándoserealizó el primer pedido y el último pedido? 

SELECT MIN(order_date) AS ultima_fecha, MIN(order_time) AS ultima_hora
FROM order_details;



SELECT MAX(order_date) AS ultima_fecha, MAX(order_time) AS ultima_hora
FROM order_details;


--¿Cuántos pedidos se hicieron entre el '2023-01-01' y el '2023-01-05'?

SELECT COUNT(*) AS total_pedidos
FROM order_details
WHERE order_date BETWEEN '2023-01-01' AND '2023-01-05';

/*Realizar un left join entre entre order_details y menu_items 
con el identificador item_id(tabla order_details) y menu_item_id(tabla menu_items)*/

SELECT 
    od.order_id,
    od.order_date,
    od.order_time,
    mi.item_name,
    mi.category,
    mi.price
FROM order_details AS od
LEFT JOIN menu_items AS mi
ON od.item_id = mi.menu_item_id;


/*Realiza un análisis adicional utilizando este join entre las tablas.
El objetivo es identificar 5 puntos clave que puedan ser de utilidad para los dueños del restaurante
en el lanzamiento de su nuevo menú. 
Para ello, crea tus propias consultas y utiliza los resultados obtenidos para llegar a estas conclusiones.*/

--Top 5 platillos más vendidos

SELECT 
    mi.item_name,
    COUNT(*) AS cantidad_vendida
FROM order_details AS od
LEFT JOIN menu_items AS mi
ON od.item_id = mi.menu_item_id
GROUP BY mi.item_name
ORDER BY cantidad_vendida DESC
LIMIT 5;


-- Top 5 platillos menos vendidos

SELECT 
    mi.item_name,
    COUNT(*) AS cantidad_vendida
FROM order_details AS od
LEFT JOIN menu_items AS mi
ON od.item_id = mi.menu_item_id
GROUP BY mi.item_name
ORDER BY cantidad_vendida ASC
LIMIT 5;


SELECT 
    mi.item_name,
    COUNT(*) AS cantidad_vendida
FROM order_details AS od
LEFT JOIN menu_items AS mi
ON od.item_id = mi.menu_item_id
WHERE mi.item_name IS NOT NULL
GROUP BY mi.item_name
ORDER BY cantidad_vendida ASC
LIMIT 5;


--Ventas por días de la semana

SELECT 
    TO_CHAR(order_date, 'Day') AS dia_de_la_semana,
    COUNT(*) AS total_ventas
FROM order_details
GROUP BY TO_CHAR(order_date, 'Day')
ORDER BY total_ventas DESC
LIMIT 2;


SELECT 
    TO_CHAR(order_date, 'Day') AS dia_de_la_semana,
    COUNT(*) AS cantidad_vendida
FROM order_details
GROUP BY TO_CHAR(order_date, 'Day')
ORDER BY cantidad_vendida DESC;


--Mes con más ventas

SELECT 
    TO_CHAR(order_date, 'YYYY-MM') AS mes,
    COUNT(*) AS cantidad_vendida
FROM order_details
GROUP BY TO_CHAR(order_date, 'YYYY-MM')
ORDER BY cantidad_vendida DESC;


