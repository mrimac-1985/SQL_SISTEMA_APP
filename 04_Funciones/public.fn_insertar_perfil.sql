--**FUNCION INSERTAR PERFIL*************

DROP FUNCTION IF EXISTS fn_insertar_perfil;

CREATE FUNCTION public.fn_insertar_perfil (
	p_idsesion perfil.nidsesion%TYPE,
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
BEGIN
	BEGIN
		INSERT INTO public.perfil (bactivo, dfechareg, nidsesion, nsesionesporusuario, ntiempoconexionminuto, ntiempovidapasworddia, snombreperfil)
		VALUES(true, now(), p_idsesion, p_sesionesporusuario, p_tiempoconexion, p_tiempovidapasword, p_nombreperfil);

		v_respuesta	:= 'Se insertó registro Perfil correctamente';	
	EXCEPTION 
		 WHEN OTHERS THEN 
		 v_respuesta := 'Error en fn_insertar_perfil --'||SUBSTR(SQLERRM,1,200);
	END;
	RETURN v_respuesta;
END
$function$
;
