#Consolidado_OC_XPeriodo_Monto
#Este script contine las OC, separadas por AÑO, MES,con su ID, MONtO, y el total TOTAL DE LAS OC POR MES Y AÑO, }
#CON % DE PARTICIPACION DE LA OC, SOBRE EL MONTO TOTAL DEL MES  % DE PARTICIPACION A 2 DECIMALES

SELECT	MONTH(OrderDate) AS MES_OC,
        YEAR(OrderDate) AS AÑO_OC,
		PurchaseOrderID AS NUM_OC,
        ROUND(TotalDue,2) AS TotalDue,
        ROUND(SUM(TotalDue) OVER(PARTITION BY YEAR(OrderDate),MONTH(OrderDate)),2) AS TOTAL_MES,
        ROUND(TotalDue/SUM(TotalDue) OVER(PARTITION BY YEAR(OrderDate), MONTH(OrderDate)),2) AS PORCEN_PART
FROM	purchaseorderheader	
