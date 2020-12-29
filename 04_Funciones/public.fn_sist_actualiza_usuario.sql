--FUNCTION ACTUALIZAR SEDE------------------

DROP FUNCTION IF EXISTS public.fn_sist_actualiza_usuario;

CREATE OR REPLACE FUNCTION public.fn_sist_actualiza_usuario(
p_nidusuario integer, 
p_slogin character varying, 
p_spassword character varying, 
p_dfechanac date, 
p_sapematerno character varying, 
p_sapepaterno character varying, 
p_sgenero character varying, 
p_snombre character varying, 
p_snumdocu character varying, 
p_sobservacion character varying, 
p_nidarea integer, 
p_nidperfil integer, 
p_nidrol integer)
 RETURNS character varying
 LANGUAGE plpgsql
AS $function$
DECLARE 
	v_respuesta varchar;
	
BEGIN

	BEGIN
		/*ACTUALIZA USUARIO*/
		UPDATE 
		  public.usuario 
		SET 
		  slogin = p_slogin,
		  spassword = p_spassword
		WHERE 
		  nidusuario = p_nidusuario;
		  
		/*ACTUALIZA OPERADOR*/
		UPDATE 
		  public.operador 
		SET 
		  dfechanac = p_dfechanac,
		  sapematerno = p_sapematerno,
		  sapepaterno = p_sapepaterno,
		  sgenero = p_sgenero,
		  snombre = p_snombre,
		  snumdocu = p_snumdocu,
		  sobservacion = p_sobservacion
		WHERE 
		  nidoperador = p_nidusuario;


		/*ACTUALIZA PERFIL*/
		UPDATE 
		  public.usuario_perfil 
		SET 
		  nidperfil = p_nidperfil
		WHERE 
		 nidusuario = p_nidusuario;


		/*ACTUALIZA AREA*/
		UPDATE 
		  public.usuario_area 
		SET 
		  nidarea = p_nidarea
		WHERE 
			nidusuario = p_nidusuario;	

		/*ACTUALIZA ROL*/            
         UPDATE 
          public.usuario_rol 
        SET 
          nidrol = p_nidrol
        WHERE 
          nidusuario = p_nidusuario;
            
            
        /*RESPUESTA SQL*/    	  		  
		v_respuesta	:= 'Se realizó la actualización de usuario';

	EXCEPTION 
		 WHEN OTHERS THEN 
		 v_respuesta := 'Error en fn_sist_actualiza_usuario --'||SUBSTR(SQLERRM,1,200);
    END;
    
	RETURN v_respuesta;
END		 
$function$
;
