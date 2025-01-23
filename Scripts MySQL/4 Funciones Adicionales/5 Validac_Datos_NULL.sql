#Validac_Datos_NULL
#Este script hace una validación de los datos faltantes en una tabla
#Se utilizo la funcion COALESCE 
SELECT	FirstName,
		MiddleName,
        coalesce(MiddleName,FirstName,"sin inf del nombre") AS TIENE_NOM,
        ISNULL(MiddleName) AS SIN_2DO_NOM,
        IFNULL(MiddleName,"Sin 2do Nombre") AS 2DO_NOM,
        IF(MiddleName IS NULL,"SIN 2DO NOMB","TIENE 2DO Nomb") AS VALIDACION
FROM contact

