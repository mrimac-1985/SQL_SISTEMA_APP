--*****FUNCTION ELIMINAR ROL*******

DROP FUNCTION IF EXISTS public.fn_eliminar_rol;

CREATE FUNCTION public.fn_eliminar_rol (
	p_nidrol rol.nidrol%TYPE
)
 RETURNS varchar
 LANGUAGE plpgsql
AS 
$function$ 
DECLARE 
	v_respuesta varchar;
	v_rol rol%rowtype;
BEGIN
	BEGIN
		SELECT * FROM rol
		INTO v_rol
		WHERE nidrol = p_nidrol;
	
		IF NOT FOUND THEN
			v_respuesta = 'No se encontro id Rol en el registro';
		ELSE
			UPDATE 
				public.rol 
			SET
				bactivo = FALSE
			WHERE 
				nidrol = p_nidrol;			
			v_respuesta	:= 'Se eliminó correctamente';
		END IF;
	EXCEPTION 
		 WHEN NO_DATA_FOUND THEN 
		 v_respuesta := 'No se encontró registro en la funcion fn_eliminar_rol --'||SUBSTR(SQLERRM,1,200);
		 WHEN OTHERS THEN 
		 v_respuesta := 'Error en fn_eliminar_rol --'||SUBSTR(SQLERRM,1,200);
	END;
	RETURN v_respuesta;
END
$function$
;