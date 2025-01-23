#Emp_edad_al_contratarse
#Este script genera un listado de la edad de cada empleado a la fecha de su contratacion
#utiliza funciones de fecha
select	e.EmployeeID AS Num_Emp,
		c.FirstName AS Nombre,
        c.LastName AS Apellellido,
        e.Title AS Puesto,
        TIMESTAMPDIFF(YEAR, BirthDate, HireDate) AS Edad_al_contratarlo
FROM	employee e
LEFT JOIN contact c
	on e.ContactID = c.ContactID
