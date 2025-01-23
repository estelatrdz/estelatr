#Emp_SIN_OC
#Este script genera un Listado con

#ID PRODUCTO y nombre del producto que no han sido parte de ninguna Orden de compra
SELECT	p.ProductID,
		p.Name
FROM product p
LEFT JOIN purchaseorderdetail d
	ON p.ProductID = d.ProductID
WHERE d.ProductID IS NULL
