--FUNCTION INSERT MODULO------------------

DROP FUNCTION IF EXISTS fn_insertar_modulo;

CREATE FUNCTION public.fn_insertar_modulo (
	p_nidsesion modulo.nidsesion%TYPE,
	p_nombremodulo modulo.snombremodulo%TYPE,
	p_observacion modulo.sobservacion%TYPE,
	p_siglas modulo.ssiglas%TYPE
)
 RETURNS varchar
 LANGUAGE plpgsql
AS 
$function$
DECLARE 
	v_respuesta varchar;	
BEGIN
	BEGIN
		INSERT INTO	public.modulo (bactivo, dfechareg, nidsesion, snombremodulo, sobservacion, ssiglas)
		VALUES(TRUE, now(), p_nidsesion, p_nombremodulo, p_observacion, p_siglas);

		v_respuesta	:= 'Se insertó registro Modulo correctamente';	
	EXCEPTION 
		 WHEN NO_DATA_FOUND THEN 
		 v_respuesta := 'No se encontró registro en la funcion fn_insertar_modulo --'||SUBSTR(SQLERRM,1,200);
		 WHEN OTHERS THEN 
		 v_respuesta := 'Error en fn_insertar_modulo --'||SUBSTR(SQLERRM,1,200);
	END;
	RETURN v_respuesta;
END
$function$
;
