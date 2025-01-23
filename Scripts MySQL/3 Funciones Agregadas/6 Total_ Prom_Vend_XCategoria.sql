#Total_Prom_Vendido_XCATEGORIA
#Este scrip genera el monto total vendido y monto total promedio por categoria de producto vendido
#Por el relacion que se analizo en el DER, se utilizaron 3 tablas distintas

SELECT	CP.NAME AS CATEGORIA,
		ROUND(SUM(LINETOTAL),2) AS Monto_TOTAL,
        ROUND(AVG(LINETOTAL),2) AS Monto_PROM
FROM	salesorderdetail VD
LEFT JOIN 	PRODUCT P
			ON VD.ProductID =P.ProductID
LEFT JOIN	productsubcategory SC
			ON p.ProductSubcategoryID = sc.ProductSubcategoryID
LEFT JOIN 	productcategory CP
			ON cp.ProductCategoryID = sc.ProductCategoryID
group by 1