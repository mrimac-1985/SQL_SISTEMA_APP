 --*****FUNCTION ELIMINAR PERFIL*******

 DROP FUNCTION IF EXISTS public.fn_eliminar_perfil;

CREATE OR REPLACE FUNCTION public.fn_eliminar_perfil(
p_idperfil integer
)
 RETURNS character varying
 LANGUAGE plpgsql
AS $function$
DECLARE 
	v_respuesta varchar;
	v_perfil perfil%rowtype;
BEGIN
	BEGIN
		SELECT * FROM perfil
		INTO v_perfil
		WHERE nidperfil = p_idperfil;
	
		IF NOT FOUND THEN
			v_respuesta = 'No se encontro id perfil en el registro';
		ELSE
			UPDATE 
				public.perfil
			SET
				bactivo = FALSE
			WHERE 
				nidperfil = p_idperfil;			
			v_respuesta	:= 'Se eliminó perfil correctamente';
		END IF;
	EXCEPTION 
		 WHEN NO_DATA_FOUND THEN 
		 v_respuesta := 'No se encontró registro en la funcion fn_eliminar_perfil --'||SUBSTR(SQLERRM,1,200);
		 WHEN OTHERS THEN 
		 v_respuesta := 'Error en fn_eliminar_perfil --'||SUBSTR(SQLERRM,1,200);
	END;
	RETURN v_respuesta;
END
$function$
;


