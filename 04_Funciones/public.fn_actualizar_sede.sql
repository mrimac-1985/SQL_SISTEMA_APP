--***FUNCTION UPDATE SEDE******************************

DROP FUNCTION IF EXISTS fn_actualizar_sede;

CREATE FUNCTION public.fn_actualizar_sede (
	p_idsede sede.nidsede%TYPE,
	p_direccion sede.sdireccion%TYPE,	
	p_nombre sede.snombre%TYPE,
	p_subigeo sede.subigeo%TYPE
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
				sdireccion = p_direccion, 
				snombre = p_nombre, 
				subigeo = p_subigeo
			WHERE 
				nidsede = p_idsede;
			
			v_respuesta	:= 'Se realizó la actualización de Sede';
		END IF;
	EXCEPTION 
		 WHEN NO_DATA_FOUND THEN 
		 v_respuesta := 'No se encontró registro en la funcion fn_actualizar_sede --'||SUBSTR(SQLERRM,1,200);
		 WHEN OTHERS THEN 
		 v_respuesta := 'Error en fn_actualizar_sede --'||SUBSTR(SQLERRM,1,200);
	END;
	RETURN v_respuesta;
END
$function$
;
