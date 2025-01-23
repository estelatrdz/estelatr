#Ctes_Monto_Prom_ XTerritorio
#Este script genera el total de clientes que realizaron OC, el numero de OC y el monto promedio vendido por territorio
#Utiliza un JOIN, redondea a 2 decimales el monto de promedio y utiliza la clausula group

SELECT	NAME AS TERRITORIO,
		COUNT(DISTINCT CUSTOMERID) AS TOTAL_CTE,
        COUNT(DISTINCT SalesOrderID) AS TOTAL_OC,
        ROUND(AVG(TOTALDUE),2) AS Monto_PROM
FROM salesorderheader OC
INNER JOIN salesterritory tc
	ON	OC.TerritoryID = tc.TerritoryID
GROUP BY 1