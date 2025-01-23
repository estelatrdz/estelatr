#Total_CTES_OC_XTerrit
#Este script genera el Total de clientes que efectuaron OC y el numero de OC por territorio
#Utiliza un INNER JOIN y las clausulas GROUP y ORDER BY

SELECT	NAME AS TERRITORIO,
		COUNT(DISTINCT CUSTOMERID) AS TOTAL_CTE,
        COUNT(DISTINCT SalesOrderID) AS TOTAL_OC
FROM salesorderheader OC
INNER JOIN salesterritory tc
	ON	OC.TerritoryID = tc.TerritoryID
GROUP BY 1
ORDER BY 3 DESC



