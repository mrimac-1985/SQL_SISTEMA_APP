--FUNCTION CONSULTA ROL ------------------

DROP FUNCTION IF EXISTS public.fn_sist_consulta_rol_usuario;

CREATE OR REPLACE FUNCTION public.fn_sist_consulta_rol_usuario(integer)
 RETURNS integer
 LANGUAGE plpgsql
AS $function$
DECLARE 
    v_id_rol INTEGER;
BEGIN

	/*CONSULA AREA*/
    SELECT 
      public.usuario_rol.nidrol INTO v_id_rol
    FROM
      public.usuario
      INNER JOIN public.usuario_rol ON (public.usuario.nidusuario = public.usuario_rol.nidusuario)
      WHERE public.usuario.nidusuario = $1 AND public.usuario_rol.bactivo= TRUE;
    
    RETURN v_id_rol;
END
$function$
;

