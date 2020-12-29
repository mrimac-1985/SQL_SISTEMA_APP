--*****FUNCTION ELIMINAR SEDE*******

DROP FUNCTION IF EXISTS public.fn_eliminar_sede;

CREATE FUNCTION public.fn_eliminar_sede(
	p_idsede sede.nidsede%TYPE
)
 RETURNS varchar
 LANGUAGE plpgsql
AS 
$function$
DECLARE 
	v_respuesta varchar;
	v_sede sede%rowtype;
BEGIN
	BEGIN
		SELECT * FROM sede
		INTO v_sede
		WHERE nidsede = p_idsede;
	
		IF NOT FOUND THEN
			v_respuesta = 'No se encontro id Sede en el registro';
		ELSE
			UPDATE 
				public.sede
			SET
				bactivo = FALSE
			WHERE 
				nidsede = p_idsede;			
			v_respuesta	:= 'Se eliminó Sede correctamente';
		END IF;
	EXCEPTION 
		 WHEN NO_DATA_FOUND THEN 
		 v_respuesta := 'No se encontró registro en la funcion fn_eliminar_sede --'||SUBSTR(SQLERRM,1,200);
		 WHEN OTHERS THEN 
		 v_respuesta := 'Error en fn_eliminar_sede --'||SUBSTR(SQLERRM,1,200);
	END;
	RETURN v_respuesta;
END
$function$
;
