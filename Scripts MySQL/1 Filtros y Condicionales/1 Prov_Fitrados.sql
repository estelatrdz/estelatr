#Proveedores Filtrados
#Este script genera un Listado de Proveedores activos, preferidos, según su riesgo crediticio
#utiliza operadores logicos y esta ordenado por Riesgo crediticio y Alfabetico

SELECT Name AS Nombre_empresa,
		CreditRating AS Riesgo_crediticio
FROM vendor
WHERE ActiveFlag = 1
	AND PreferredVendorStatus =1
    AND CreditRating <=3
ORDER BY CreditRating, Name
