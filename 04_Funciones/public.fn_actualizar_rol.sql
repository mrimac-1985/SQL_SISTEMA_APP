--***FUNCTION UPDATE******************************

DROP FUNCTION IF EXISTS fn_actualizar_rol;

CREATE FUNCTION public.fn_actualizar_rol (
	p_nidrol rol.nidrol%TYPE,
	p_nidsesion rol.nidsesion%TYPE,
	p_siglas rol.siglas%TYPE,
	p_snombrerol rol.snombrerol%TYPE,
	p_sobservacion rol.sobservacion%type
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
				nidsesion= p_nidsesion, 
				siglas= p_siglas, 
				snombrerol= p_snombrerol, 
				sobservacion= p_sobservacion
			WHERE 
				nidrol = p_nidrol;
			
			v_respuesta	:= 'Se realizó la actualización de Rol';
		END IF;
	EXCEPTION 
		 WHEN NO_DATA_FOUND THEN 
		 v_respuesta := 'No se encontró registro en la funcion fn_actualizar_rol --'||SUBSTR(SQLERRM,1,200);
		 WHEN OTHERS THEN 
		 v_respuesta := 'Error en fn_actualizar_rol --'||SUBSTR(SQLERRM,1,200);
	END;
	RETURN v_respuesta;
END
$function$
;