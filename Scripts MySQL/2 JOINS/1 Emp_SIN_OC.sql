#Employee ID, primer nombre y apellido
#Empleados NO efectuaron OC
#Ordenados por ID de menor a may
#ID unicos

SELECT distinct	e.EmployeeID,
		c.FirstName,
        c.LastName
FROM	employee e
LEFT JOIN	purchaseorderheader p 
		ON e.EmployeeID = p.EmployeeID
INNER JOIN contact c
		ON e.ContactID = c.ContactID
WHERE p.EmployeeID IS NULL
ORDER BY 1
        