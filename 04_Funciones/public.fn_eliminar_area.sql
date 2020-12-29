--*****FUNCTION ELIMINAR AREA*******

DROP FUNCTION IF EXISTS public.fn_eliminar_area;

CREATE FUNCTION public.fn_eliminar_area(
	p_idarea area.nidarea%TYPE
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
				bactivo = FALSE
			WHERE 
				nidarea = p_idarea;			
			v_respuesta	:= 'Se eliminó Area correctamente';
		END IF;
	EXCEPTION 
		 WHEN NO_DATA_FOUND THEN 
		 v_respuesta := 'No se encontró registro en la funcion fn_eliminar_area --'||SUBSTR(SQLERRM,1,200);
		 WHEN OTHERS THEN 
		 v_respuesta := 'Error en fn_eliminar_area --'||SUBSTR(SQLERRM,1,200);
	END;
	RETURN v_respuesta;
END
$function$
;