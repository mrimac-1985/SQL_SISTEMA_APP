--FUNCTION INSERT AREA------------------

DROP FUNCTION IF EXISTS fn_insertar_area;

CREATE FUNCTION public.fn_insertar_area (
	p_idsesion area.nidsesion%TYPE,	
	p_nombre area.snombre%TYPE,
	p_sobservacion area.sobservacion%TYPE,
	p_idsede area.nidsede%TYPE
)
 RETURNS varchar
 LANGUAGE plpgsql
AS 
$function$
DECLARE 
	v_respuesta varchar;	
BEGIN
	BEGIN
		INSERT INTO public.area (bactivo, dfechareg, nidsesion, snombre, sobservacion, nidsede)
		VALUES(TRUE, now(), p_idsesion, p_nombre, p_sobservacion, p_idsede);

		v_respuesta	:= 'Se insertó registro Area correctamente';	
	EXCEPTION 
		WHEN NO_DATA_FOUND THEN 
		 v_respuesta := 'No se encontró registro en la funcion fn_insertar_area --'||SUBSTR(SQLERRM,1,200);
		 WHEN OTHERS THEN 
		 v_respuesta := 'Error en fn_insertar_area --'||SUBSTR(SQLERRM,1,200);
	END;
	RETURN v_respuesta;
END
$function$
;
