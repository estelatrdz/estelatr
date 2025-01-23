#Proveedores filtrados por condición 
#Este script genera un Listado de Proveedores que contienen en el incio la palabra SPORT o Bike en algun parte de su nombre
#utiliza operadores logicos y esta en orden alfabetico


SELECT Name AS Nombre_empresa
FROM vendor
WHERE Name LIKE "Sport%" 
	OR Name LIKE "%Bike%"
ORDER BY	1  
