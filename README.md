# CasoPracticoSQL
Caso práctico del módulo 3

# Contexto 
El restaurante "Sabores del Mundo", es conocido por su auténtica cocina y su ambiente acogedor. Este restaurante lanzó un nuevo menú a principios de año y ha estado recopilando información detallada sobre las transacciones de los clientes para identificar áreas de oportunidad y aprovechar al máximo sus datos para optimizar las ventas. 

## Objetivo
Identificar cuáles son los productos del menú que han tenido más éxito y cuales son los que menos han gustado a los clientes

**1.- Realizar consultas para contestar las siguientes preguntas:**

● Encontrar el número de artículos en el menú. 

![image](https://github.com/user-attachments/assets/eb5248e1-2a85-455b-ac86-5fcb75c1dccd)

● ¿Cuál es el artículo menos caro y el más caro en el menú? 

Artículo menos caro

![image](https://github.com/user-attachments/assets/2b398ae8-8397-4919-975a-7295cbfaf1c5)

Artículo más caro

![image](https://github.com/user-attachments/assets/a3fd7aef-f709-463c-8e58-a51ca9d70c54)

● ¿Cuántos platos americanos hay en el menú? 

![image](https://github.com/user-attachments/assets/c0248428-1e65-471b-80f8-c7b0aebcd119)


● ¿Cuál es el precio promedio de los platos? 

![image](https://github.com/user-attachments/assets/11fd0723-3df3-4c99-9267-5fdccce617f8)


**1.- Realizar consultas para contestar las siguientes preguntas:**

●¿Cuántos pedidos únicos se realizaron en total?

![image](https://github.com/user-attachments/assets/00f544f0-44c6-46fe-93f1-70613fd060d2)



● ¿Cuáles son los 5 pedidos que tuvieron el mayor número de artículos? 


![image](https://github.com/user-attachments/assets/877601d3-8bbd-4c9b-97fe-3107032e0d90)


● ¿Cuándo se realizó el primer pedido y el último pedido? 

Primer pedido

![image](https://github.com/user-attachments/assets/6e3d7e8b-6b47-4f71-b61b-761abf66895e)


Último pedido

![image](https://github.com/user-attachments/assets/24c48cf9-5106-4c87-92cd-f66225a55e82)


● ¿Cuántos pedidos se hicieron entre el '2023-01-01' y el '2023-01-05'?

![image](https://github.com/user-attachments/assets/8cd6109c-b131-48a6-aa0e-1693569707cd)


**Usar ambas tablas para conocer la reacción de los clientes respecto al menú.**

1.- Realizar un left join entre entre order_details y menu_items con el identificador item_id(tabla order_details) y menu_item_id(tabla menu_items).

__**Análisis extra**__

1. Top 5 platillos más vendidos

 ![image](https://github.com/user-attachments/assets/5c261dbb-6c16-4875-85ff-66487bc247d5)


2. Los 5 platillos menos vendidos

![image](https://github.com/user-attachments/assets/167788c5-9d0f-4d00-96a2-87f403fed1be)


3. Los lunes es el día en que más ventas hay
4. Los miercóles es el día con menores ventas

![image](https://github.com/user-attachments/assets/7105747c-0878-4a09-879e-501fa15770bd)


5. Marzo fue el mes con mayores ventas

![image](https://github.com/user-attachments/assets/a2f063a9-1a1a-4418-a44f-86dfa37392bb)

