#Total_CTES_con OC
#Este script genera el dato del total de clientes que efectruaron una OC, asegurando que sean unicos

SELECT	COUNT(DISTINCT CustomerID) AS Total_ctes_con_Ord
FROM	salesorderheader

