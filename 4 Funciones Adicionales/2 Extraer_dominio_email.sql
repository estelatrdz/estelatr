#Extraer_dominio_email
#Este scrip extrae el dominio del email de cada personal o entidad de la tabla contacto y total de email por dominio
#Utiliza funciones String

SELECT	SUBSTRING(EmailAddress,POSITION("@" IN EmailAddress),length(EmailAddress)) AS DOMINIO,
        count(distinct EmailAddress) AS CANT_POR_DOMI
FROM	contact
GROUP BY 1