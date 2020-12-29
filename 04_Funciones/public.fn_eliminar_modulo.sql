--*****FUNCTION ELIMINAR MODULO*******

DROP FUNCTION IF EXISTS public.fn_eliminar_modulo;

CREATE FUNCTION public.fn_eliminar_modulo (
	p_idmodulo modulo.nidmodulo%TYPE
)
 RETURNS varchar
 LANGUAGE plpgsql
AS 
$function$
DECLARE 
	v_respuesta varchar;
	v_modulo modulo%rowtype;
BEGIN
	BEGIN
		SELECT * FROM modulo
		INTO v_modulo
		WHERE nidmodulo = p_idmodulo;
	
		IF NOT FOUND THEN
			v_respuesta = 'No se encontro id Modulo en el registro';
		ELSE
			UPDATE 
				public.modulo
			SET
				bactivo = FALSE
			WHERE 
				nidmodulo = p_idmodulo;			
			v_respuesta	:= 'Se eliminó Modulo correctamente';
		END IF;
	EXCEPTION 
		 WHEN NO_DATA_FOUND THEN 
		 v_respuesta := 'No se encontró registro en la funcion fn_eliminar_modulol --'||SUBSTR(SQLERRM,1,200);
		 WHEN OTHERS THEN 
		 v_respuesta := 'Error en fn_eliminar_modulo --'||SUBSTR(SQLERRM,1,200);
	END;
	RETURN v_respuesta;
END
$function$
;
