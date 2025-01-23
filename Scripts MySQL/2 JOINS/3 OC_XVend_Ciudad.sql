#OC_XVend_Ciudad
#Este script genera un Listado con ID orden de compra, id proveedor, nombre del proveedor y ciudad del proveedor
#ordenado id de menor a mayor
#Basado en el Diagrama Entidad-Relación se tiene que unir atravez de 3 Tablas
SELECT	oc.PurchaseOrderID,
		v.VendorID,
        v.Name,
        a.city
FROM	purchaseorderheader oc
INNER JOIN vendor v
	ON v.VendorID = oc.VendorID
INNER JOIN vendorAddress va
	ON v.VendorID = va.VendorID
INNER JOIN address a
	on va.AddressID = a.AddressID
ORDER BY 1

		
