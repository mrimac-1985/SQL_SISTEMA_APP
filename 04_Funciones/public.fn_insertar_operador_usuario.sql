--**FUNCION INSERTAR OPERADOR****************

DROP FUNCTION IF EXISTS fn_insertar_operador_usuario;

CREATE FUNCTION public.fn_insertar_operador_usuario (
	p_sidtipodoc operador.sidtipodoc%TYPE,
	p_snumdocu operador.snumdocu%TYPE,
	p_snombre operador.snombre%TYPE,
	p_sapepaterno operador.sapepaterno%TYPE,
	p_sapematerno operador.sapematerno%TYPE,
	p_sgenero operador.sgenero%TYPE,
	p_dfechanac operador.dfechanac%TYPE,
	p_sdireccion operador.sdireccion%TYPE,
	p_scorreo operador.scorreo%TYPE,
	p_stelefono operador.stelefono%TYPE,	
	p_sobservacion operador.sobservacion%TYPE,
	p_slogin usuario.slogin%TYPE,
	p_spassword usuario.spassword%TYPE,	
	p_nidperfil usuario_perfil.nidperfil%TYPE, 
	p_nidarea usuario_area.nidarea%TYPE,
	p_nidrol usuario_rol.nidrol%TYPE,
	p_nidsesion operador.nidsesion%TYPE
)
 RETURNS varchar
 LANGUAGE plpgsql
AS 
$function$
DECLARE 
	v_respuesta varchar;
	v_nidoperador operador.nidoperador%type;
BEGIN
	BEGIN
		/*INSERTA OPERADOR*/
		INSERT INTO public.operador
		(sidtipodoc, snumdocu, snombre, sapepaterno, sapematerno, scorreo, sgenero, stelefono, dfechanac, sdireccion, sobservacion, bactivo, dfechareg, nidsesion)
		VALUES(p_sidtipodoc, p_snumdocu, p_snombre, p_sapepaterno, p_sapematerno, p_scorreo, p_sgenero, p_stelefono, p_dfechanac, p_sdireccion, p_sobservacion, TRUE, now(), p_nidsesion)
		RETURNING nidoperador INTO v_nidoperador;
	
		/*INSERTA USUARIO	*/
		INSERT INTO public.usuario
		(nidusuario, bactivo, dfechareg, nidsesion, slogin, spassword)
		VALUES(v_nidoperador, TRUE, now(), p_nidsesion, p_slogin, p_spassword);
		
		/*INSERTA USUARIO ROL*/
		INSERT INTO public.usuario_rol
		(nidusuario, nidrol, sobservacion, bactivo, dfechareg, nidsesion)
		VALUES(v_nidoperador, p_nidrol, '', TRUE, now(), p_nidsesion);

		/*INSERTA INSERTA USUARIO PERFIL*/
		INSERT INTO public.usuario_perfil
		(nidusuario, nidperfil, sobservacion, bactivo, dfechareg, nidsesion)
		VALUES(v_nidoperador, p_nidperfil, '', TRUE, now(), p_nidsesion);

		/*INSERTA INSERTA USUARIO AREA*/
		INSERT INTO public.usuario_area
		(nidarea, sobservacion, nidusuario, bactivo, dfechareg, nidsesion)
		VALUES(p_nidarea, '', v_nidoperador, TRUE ,  now(), p_nidsesion);

	
		v_respuesta	:= 'Se registró Operador correctamente';	
	EXCEPTION 
		WHEN NO_DATA_FOUND THEN 
		 v_respuesta := 'No se encontró registro en la funcion fn_insertar_operador_usuario --'||SUBSTR(SQLERRM,1,200);	
		 WHEN OTHERS THEN 
		 v_respuesta := 'Error en fn_insertar_operador_usuario --'||SUBSTR(SQLERRM,1,200);
	END;
	RETURN v_respuesta;
END
$function$
;


