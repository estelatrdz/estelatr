#FILTROS Y CONDICIONALES
#WHERE Y OPERADORES BOOLEANOS
#APLICACION AND / OR/ BETWEEN / IN /LIKE / IS NULL /NOT 
#ID Compra, Fecha compra, subtotal, monto de impuesto y monto total
#ordenes de compra AGOSTO 2004
#Fecha de compra mas reciente a mas antigua
SELECT	PurchaseOrderID,
		OrderDate,
        Subtotal,
        TaxAmt,
		TotalDue
FROM	purchaseorderheader
WHERE OrderDate between "2004-08-01" AND "2004-08-31"
ORDER BY 2 DESC