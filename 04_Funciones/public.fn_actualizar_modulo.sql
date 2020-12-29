--***FUNCTION UPDATE MODULO******************************

DROP FUNCTION IF EXISTS fn_actualizar_modulo;

CREATE FUNCTION public.fn_actualizar_modulo (
	p_idmodulo modulo.nidmodulo%TYPE,
	p_idsesion modulo.nidsesion%TYPE,
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
			nidsesion = p_idsesion,
			snombremodulo = p_nombremodulo,
			sobservacion = p_observacion,
			ssiglas = p_siglas
		WHERE
		nidmodulo = p_idmodulo;

			v_respuesta	:= 'Se realizó la actualización de Modulo';
		END IF;
	EXCEPTION 
		 WHEN NO_DATA_FOUND THEN 
		 v_respuesta := 'No se encontró registro en la funcion fn_actualizar_modulo --'||SUBSTR(SQLERRM,1,200);
		 WHEN OTHERS THEN 
		 v_respuesta := 'Error en fn_actualizar_modulo --'||SUBSTR(SQLERRM,1,200);
	END;
	RETURN v_respuesta;
END
$function$
;
