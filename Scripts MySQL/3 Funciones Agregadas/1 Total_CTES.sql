#Total_CTES
#Este script genera el dato del total de clientes, asegurando que sean unicos

SELECT COUNT(DISTINCT CustomerID) AS Total_ctes
FROM customer
