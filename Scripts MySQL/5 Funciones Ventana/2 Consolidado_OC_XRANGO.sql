#Consolidado_ XRango
#Este script contiene las OC, separadas por AÑO, MES,con su ID, MONTO, y el total de venta por MES Y AÑO
#Con el calculo del RANKING de cada OC segun su MONTO, ORDENADO EN DESC, considerando el RANKING por año ademas
#si el MONTO coincide, asignar el mismos rango en consecutivo, mostrando las OC MAS caras al incio por año
SELECT	MONTH(OrderDate) AS MES_OC,
        YEAR(OrderDate) AS AÑO_OC,
		PurchaseOrderID AS NUM_OC,
        TotalDue,
		dense_rank() OVER(PARTITION BY YEAR(OrderDate) ORDER BY TotalDue DESC) AS RANKING,
        rank() OVER(PARTITION BY YEAR(OrderDate) ORDER BY TotalDue DESC) AS RANK_MONTO,
		ROW_NUMBER() OVER(PARTITION BY YEAR(OrderDate) ORDER BY TotalDue DESC) AS RANK_POR_AÑO
FROM	purchaseorderheader
