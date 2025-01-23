#Total_Prod_XCategoria
##Este scrip totaliza los productos por la categoria definida en la regla de negocio
#Se utilio funcion CASE WHEN para las categorias

SELECT	COUNT(CASE WHEN ListPrice <= 50 THEN "Barat" ELSE NULL END) AS "Num_Prod_BARATO",
		COUNT(CASE WHEN ListPrice > 50 AND ListPrice<= 500 THEN "Me9di" ELSE NULL END) AS "Num_Prod_MEDIO",
        COUNT(CASE WHEN ListPrice >500 THEN "Car" ELSE NULL END) AS "Num_Prod_CARO" 
FROM	product
