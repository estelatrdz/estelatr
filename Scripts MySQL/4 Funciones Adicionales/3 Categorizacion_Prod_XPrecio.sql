#Categorizacion_Prod_XPrecio
#Este scrip permite categorizar cada producto de acuerdo a reglas de negocio proporcionadas
#Con el ID del producto y su precio de lista
#Se utilio funcion CASE WHEN para las categorias

SELECT	ProductID,
		Name AS Nombre,
        ListPrice AS Precio_Lista,
        CASE WHEN ListPrice <= 50 THEN "Barato"
			 WHEN ListPrice > 50 AND ListPrice<= 500 THEN "Medio"
             WHEN ListPrice >500 THEN "Caro"
             ELSE NULL END AS CATEGORIA
FROM	product