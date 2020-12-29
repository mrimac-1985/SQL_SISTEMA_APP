--FUNCTION INSERT ROL------------------

DROP FUNCTION IF EXISTS fn_insertar_rol;

CREATE FUNCTION public.fn_insertar_rol (
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
BEGIN
	BEGIN
		INSERT INTO public.rol (bactivo, dfechareg, nidsesion, siglas, snombrerol, sobservacion)
		VALUES(true, now(), p_nidsesion, p_siglas, p_snombrerol, p_sobservacion);

		v_respuesta	:= 'Se insertó registro Rol correctamente';	
	EXCEPTION 
		 WHEN OTHERS THEN 
		 v_respuesta := 'Error en fn_insertar_rol --'||SUBSTR(SQLERRM,1,200);
	END;
	RETURN v_respuesta;
END
$function$
;
