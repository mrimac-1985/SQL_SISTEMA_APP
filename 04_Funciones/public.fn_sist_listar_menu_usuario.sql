--FUNCTION LISTAR MENU USUARIO------------------

DROP FUNCTION IF EXISTS public.fn_sist_listar_menu_usuario;

CREATE OR REPLACE FUNCTION public.fn_sist_listar_menu_usuario(
p_usuario character VARYING
)
 RETURNS TABLE(nidmenu integer, bactivo boolean, dfechareg timestamp without time zone, nidsesion integer, siconomenu_m character varying, snombremenu_m character varying, surl_m character varying, nidmodulo integer, nidsubmenu integer, norden integer, siconomenu character varying, snombremenu character varying, surl character varying)
 LANGUAGE plpgsql
AS $function$
BEGIN
    return query 
    
    		 SELECT
			  public.menu.nidmenu, 
			  public.menu.bactivo, 
			  public.menu.dfechareg, 
			  public.menu.nidsesion, 
			  public.menu.siconomenu AS siconomenu_m, 
			  public.menu.snombremenu AS snombremenu_m, 
			  public.menu.surl AS surl_m , 
			  public.menu.nidmodulo ,
			  public.submenu.nidsubmenu ,
			  public.submenu.norden ,
			  public.submenu.siconomenu ,
			  public.submenu.snombremenu ,			  
			  public.submenu.surl 
			FROM
			  public.usuario 
			  INNER JOIN public.usuario_rol ON (public.usuario.nidusuario = public.usuario_rol.nidusuario) 
			  INNER JOIN public.rol ON (public.usuario_rol.nidrol = public.rol.nidrol)
			  INNER JOIN public.menu_rol ON (public.rol.nidrol = public.menu_rol.nidrol) 
			  INNER JOIN public.menu ON (public.menu_rol.nidmenu = public.menu.nidmenu) 
			  INNER JOIN public.submenu ON (public.submenu.nidmenu =public.menu.nidmenu)
			WHERE UPPER(public.usuario.slogin)= UPPER(p_usuario); 
END
$function$
;

