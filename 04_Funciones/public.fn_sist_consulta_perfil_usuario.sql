--FUNCTION CONSULTA PERFIL ------------------

DROP FUNCTION IF EXISTS public.fn_sist_consulta_perfil_usuario;

CREATE OR REPLACE FUNCTION public.fn_sist_consulta_perfil_usuario(integer)
 RETURNS SETOF usuario_perfil
 LANGUAGE plpgsql
AS $function$
DECLARE 
	t_usuario_area usuario_area;
    
BEGIN

	/*CONSULA PERFIL*/       
    FOR t_usuario_area IN
        SELECT 
          usuario_perfil.nidusuarioperfil,
          usuario_perfil.bactivo,
          usuario_perfil.dfechareg,
          usuario_perfil.nidsesion,
          usuario_perfil.sobservacion,
          usuario_perfil.nidperfil,
          usuario_perfil.nidusuario
        FROM 
          public.usuario_perfil
        INNER JOIN public.usuario ON (public.usuario_perfil.nidusuario = public.usuario.nidusuario)
        WHERE public.usuario.nidusuario = $1 AND public.usuario_perfil.bactivo= TRUE
        LOOP
    	RETURN NEXT t_usuario_area;
    
    END LOOP; 
        
    RETURN; -- v_id_rol;
END
$function$
;
