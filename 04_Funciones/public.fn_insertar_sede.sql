--FUNCTION INSERTAR SEDE------------------

DROP FUNCTION IF EXISTS fn_insertar_sede;

CREATE FUNCTION public.fn_insertar_sede (
	p_direccion sede.sdireccion%TYPE,	
	p_nombre sede.snombre%TYPE,
	p_ubigeo sede.subigeo%TYPE
)
 RETURNS varchar
 LANGUAGE plpgsql
AS 
$function$
DECLARE 
	v_respuesta varchar;	
BEGIN
	BEGIN
		INSERT INTO public.sede (bactivo, dfechareg, sdireccion, snombre, subigeo)
		VALUES(true, now(), p_direccion, p_nombre, p_ubigeo);

		v_respuesta	:= 'Se insertó registro Sede correctamente';	
	EXCEPTION 
		WHEN NO_DATA_FOUND THEN 
		 v_respuesta := 'No se encontró registro en la funcion fn_insertar_sede --'||SUBSTR(SQLERRM,1,200);
		 WHEN OTHERS THEN 
		 v_respuesta := 'Error en fn_insertar_sede --'||SUBSTR(SQLERRM,1,200);
	END;
	RETURN v_respuesta;
END
$function$
;
