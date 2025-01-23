#Tot_ctes_XTerritorio
#Este script genera el TOTAL DE CLIENTES SEGMENTADO POR TERRITORIO
#Con el nombre del TERRITORIO y  NO EL ID
#Utiliza un INNER JOIN para obtener los datos del Territorio y agruparlos por territorio
 
SELECT	NAME AS TERRITORIO,
		COUNT(DISTINCT CUSTOMERID) AS TOTAL_CTE
FROM CUSTOMER C
INNER JOIN salesterritory tc
	ON	c.TerritoryID = tc.TerritoryID
GROUP BY 1



		