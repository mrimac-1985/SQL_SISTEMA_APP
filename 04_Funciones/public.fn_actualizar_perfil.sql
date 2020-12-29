--***FUNCTION UPDATE PERFIL******************************

DROP FUNCTION IF EXISTS fn_actualizar_perfil;

CREATE FUNCTION public.fn_actualizar_perfil (
	p_idperfil perfil.nidperfil%TYPE,
	p_idsesion rol.nidsesion%TYPE,
	p_sesionesporusuario perfil.nsesionesporusuario%TYPE,
	p_tiempoconexion perfil.ntiempoconexionminuto%TYPE,
	p_tiempovidapasword perfil.ntiempovidapasworddia%TYPE,
	p_nombreperfil perfil.snombreperfil%type
)
 RETURNS varchar
 LANGUAGE plpgsql
AS 
$function$
DECLARE 
	v_respuesta varchar;
	v_perfil perfil%rowtype;
BEGIN
	BEGIN
		SELECT * FROM perfil
		INTO v_perfil
		WHERE nidperfil = p_idperfil;
	
		IF NOT FOUND THEN
			v_respuesta = 'No se encontro id Perfil en el registro';
		ELSE
			UPDATE 
				public.perfil 
			SET 
				nidsesion = p_idsesion, 
				nsesionesporusuario = p_sesionesporusuario, 
				ntiempoconexionminuto = p_tiempoconexion, 
				ntiempovidapasworddia = p_tiempovidapasword,
				snombreperfil = p_nombreperfil
			WHERE 
				nidperfil = p_idperfil;
			
			v_respuesta	:= 'Se realizó la actualización de Perfil';
		END IF;
	EXCEPTION 
		 WHEN NO_DATA_FOUND THEN 
		 v_respuesta := 'No se encontró registro en la funcion fn_actualizar_perfil --'||SUBSTR(SQLERRM,1,200);
		 WHEN OTHERS THEN 
		 v_respuesta := 'Error en fn_actualizar_perfil --'||SUBSTR(SQLERRM,1,200);
	END;
	RETURN v_respuesta;
END
$function$
;
