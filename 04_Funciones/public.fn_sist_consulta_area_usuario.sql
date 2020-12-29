--FUNCTION CONSULTA AREA ------------------

DROP FUNCTION IF EXISTS public.fn_sist_consulta_area_usuario;

CREATE OR REPLACE FUNCTION public.fn_sist_consulta_area_usuario(integer)
 RETURNS integer
 LANGUAGE plpgsql
AS $function$
DECLARE 
    v_id_area INTEGER;
BEGIN

	/*CONSULA AREA*/
    SELECT 
      public.usuario_area.nidarea INTO v_id_area
    FROM
      public.usuario
      INNER JOIN public.usuario_area ON (public.usuario.nidusuario = public.usuario_area.nidusuario)
      WHERE 
      	public.usuario.nidusuario = $1 AND public.usuario_area.bactivo= TRUE;
    
    RETURN v_id_area;
END
$function$
;

