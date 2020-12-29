--**FUNCION UPDATE OPERADOR USUARIO****************
DROP FUNCTION IF EXISTS fn_actualizar_operador_usuario;

CREATE FUNCTION public.fn_actualizar_operador_usuario(
	p_nidoperador operador.nidoperador%TYPE,
	p_sidtipodoc operador.sidtipodoc%TYPE,
	p_snumdocu operador.snumdocu%TYPE,
	p_snombre operador.snombre%TYPE,
	p_sapepaterno operador.sapepaterno%TYPE,
	p_sapematerno operador.sapematerno%TYPE,
	p_sgenero operador.sgenero%TYPE,	
	p_dfechanac operador.dfechanac%TYPE,
	p_scorreo operador.scorreo%TYPE,
	p_stelefono operador.stelefono%TYPE,	
	p_sdireccion operador.sdireccion%TYPE,	
	p_sobservacion operador.sobservacion%TYPE,
	p_slogin usuario.slogin%TYPE,
	p_spassword usuario.spassword%TYPE,
	p_nidarea area.nidarea%TYPE, 
	p_nidperfil perfil.nidperfil%TYPE, 
	p_nidrol rol.nidrol%TYPE
)
 RETURNS varchar
 LANGUAGE plpgsql
AS 
$function$ 
DECLARE 
	v_respuesta varchar;
	v_operador operador%rowtype;
BEGIN
	BEGIN
		SELECT * FROM operador
		INTO v_operador
		WHERE nidoperador = p_nidoperador;
	
		IF NOT FOUND THEN
			v_respuesta = 'No se encontró id Operador en el registro';
		ELSE	
		
			/*ACTUALIZA OPERADOR*/
			UPDATE public.operador
			SET 
				sidtipodoc= p_sidtipodoc,
				snumdocu= p_snumdocu,
				snombre= p_snombre,
				sapepaterno= p_sapepaterno,
				sapematerno= p_sapematerno,
				scorreo= p_scorreo,
				sgenero= p_sgenero,
				stelefono= p_stelefono,
				dfechanac= p_dfechanac,
				sdireccion= p_sdireccion,
				sobservacion= p_sobservacion
			WHERE nidoperador= p_nidoperador;
 
		
			/*ACTUALIZA USUARIO*/	
			UPDATE public.usuario
			SET slogin= p_slogin, spassword= p_spassword
			WHERE nidusuario= p_nidoperador;
		
		
			/*ACTUALIZA PERFIL*/
			UPDATE 
			  public.usuario_perfil 
			SET 
			  nidperfil = p_nidperfil
			WHERE 
			 nidusuario = p_nidoperador;

			/*ACTUALIZA AREA*/
			UPDATE 
			  public.usuario_area 
			SET 
			  nidarea = p_nidarea
			WHERE 
				nidusuario = p_nidoperador;	

			/*ACTUALIZA ROL*/            
	         UPDATE 
	          public.usuario_rol 
	        SET 
	          nidrol = p_nidrol
	        WHERE 
	          nidusuario = p_nidoperador;
            
	        /*RESPUESTA SQL*/ 
         	v_respuesta	:= 'Se actualizó Operador correctamente';
        
		END IF;
	EXCEPTION
		WHEN NO_DATA_FOUND THEN 
		 v_respuesta := 'No se encontró registro en la funcion fn_actualizar_operador --'||SUBSTR(SQLERRM,1,200);
		 WHEN OTHERS THEN 
		 v_respuesta := 'Error en fn_actualizar_operador_usuario --'||SUBSTR(SQLERRM,1,200);
	END;
	RETURN v_respuesta;
END
$function$
;


