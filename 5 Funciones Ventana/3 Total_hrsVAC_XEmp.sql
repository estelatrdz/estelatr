#Total_hrsVac_XEmp
#Este script proporciona un listado por ID_Empleado, Nombre y puesto
#Con la cantidad de hrs que tomado de vacaciones 
#Asignando un rango, en caso de coincidir, asignar el mismo rango
#Se utilizaron funciones de Rango Ventana y un Join 
SELECT	ROW_NUMBER( ) OVER (ORDER BY VACATIONHOURS DESC) AS NUM_CONS,
		e.EmployeeID,
        c.FirstName,
        c.LastName,
        e.Title,
		e.VacationHours,
		DENSE_RANK( ) OVER (ORDER BY VACATIONHOURS DESC) AS POSICION
FROM	employee e
LEFT JOIN	contact c
		on e.ContactID = c.ContactID


