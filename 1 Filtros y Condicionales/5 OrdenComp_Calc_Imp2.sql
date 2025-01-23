##OrdenComp_XFecha
#Este script genera un Listado de Ordenes de compra de un periodo indicado
#Con el calculo del porcentaje de impuesto, en 2 decimales

SELECT	PurchaseOrderID,
		OrderDate,
        Subtotal,
        TaxAmt,
		ROUND(TaxAmt/SubTotal,2)*100 as Porcentaje_Impuesto
FROM	purchaseorderheader
WHERE OrderDate >="2004-05-01" 
		AND OrderDate <= "2004-05-30"
ORDER BY 2 DESC