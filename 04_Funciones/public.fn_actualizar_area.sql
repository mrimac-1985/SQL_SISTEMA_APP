
--***FUNCTION UPDATE AREA******************************

DROP FUNCTION IF EXISTS fn_actualizar_area;

CREATE FUNCTION public.fn_actualizar_area (
	p_idarea area.nidarea%TYPE,
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
	v_area area%rowtype;
BEGIN
	BEGIN
		SELECT * FROM area
		INTO v_area
		WHERE nidarea = p_idarea;
	
		IF NOT FOUND THEN
			v_respuesta = 'No se encontro id Area en el registro';
		ELSE
			UPDATE 
				public.area 
			SET 
				nidsesion= p_idsesion, 
				snombre = p_nombre, 
				sobservacion= p_sobservacion, 
				nidsede = p_idsede
			WHERE 
				nidarea = p_idarea;
			
			v_respuesta	:= 'Se realizó la actualización de Area';
		END IF;
	EXCEPTION 
		 WHEN NO_DATA_FOUND THEN 
		 v_respuesta := 'No se encontró registro en la funcion fn_actualizar_area --'||SUBSTR(SQLERRM,1,200);
		 WHEN OTHERS THEN 
		 v_respuesta := 'Error en fn_actualizar_area --'||SUBSTR(SQLERRM,1,200);
	END;
	RETURN v_respuesta;
END
$function$
;
