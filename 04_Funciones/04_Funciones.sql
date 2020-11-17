/*FUNCIONES*/

/*XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX*/

DROP FUNCTION IF EXISTS public.fn_sist_inicia_sesion;

CREATE  FUNCTION public.fn_sist_inicia_sesion(
    VARCHAR
    )
    /*FUNCION INICIAR SESION*/
  RETURNS INTEGER
  AS
$$

DECLARE
  v_fecha_sesion TIMESTAMP;
  v_id_usuario INTEGER ;
  v_version_sistema VARCHAR(10):='';
  v_id_sesion INTEGER;
  
BEGIN
	/*CAPTURA HORA DEL SERVIDOR*/
	SELECT NOW() INTO v_fecha_sesion;

	/*CAPTURA ID DEL USUARIO*/
    SELECT nidusuario INTO v_id_usuario FROM public.usuario where slogin =$1 AND bactivo= TRUE;
    
  /*CAPTURA VERSION DEL SISTEMA*/
    SELECT
    	sversion INTO v_version_sistema
    FROM public.info_sistema
    where bactivo = true
    order by dfechareg desc
    LIMIT 1;

  /*CIERRA SESIONES ABIERTAS*/
  IF EXISTS (
    SELECT
      *
    from
      PUBLIC.sesion
    WHERE
      nidusuario = v_id_usuario AND
      dfechafin is null
    order by
      dfechareg desc
    LIMIT 1 )
  THEN
      UPDATE
        public.sesion
      SET
        dfechafin = v_fecha_sesion,
        bactivo = FALSE
      WHERE
        nidusuario = v_id_usuario;
  END IF;

  /*CREA UNA NUEVA SESION SIN FECHA FIN*/
  INSERT INTO
    public.sesion(bactivo, dfechafin, dfechainicio, dfechareg, ssistemaversion, nidusuario)
  VALUES
    (TRUE, NULL, v_fecha_sesion, v_fecha_sesion , v_version_sistema, v_id_usuario) RETURNING nidsesion into v_id_sesion;

   RETURN v_id_sesion;

END;
$$
LANGUAGE PLPGSQL;
 
 /* SELECT public.fn_sist_inicia_sesion('MAX');*/




/*XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX*/

DROP FUNCTION IF EXISTS public.fn_sist_cerrar_sesion;

CREATE FUNCTION public.fn_sist_cerrar_sesion(
	INTEGER
)
/*FUNCION CERRAR SESION*/
RETURNS VOID
AS
$$
DECLARE
	v_fecha_sesion TIMESTAMP;
    v_nidsesion INTEGER:= $1 ;
BEGIN

	/*CAPTURA HORA DEL SERVIDOR*/
	SELECT NOW() INTO v_fecha_sesion;
     
    /*CIERRA SESION*/
	UPDATE
      public.sesion
    SET
      dfechafin = v_fecha_sesion,
      bactivo = FALSE
    WHERE
      nidsesion = v_nidsesion ;
END
$$
LANGUAGE plpgsql;

/*SELECT public.fn_sist_cerrar_sesion(28)*/



/*XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX*/




CREATE OR REPLACE FUNCTION public.fn_eliminar_perfil(p_idperfil integer)
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





/*XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX*/



CREATE OR REPLACE FUNCTION public.fn_sist_actualiza_usuario(p_nidusuario integer, p_slogin character varying, p_spassword character varying, p_dfechanac date, p_sapematerno character varying, p_sapepaterno character varying, p_sgenero character varying, p_snombre character varying, p_snumdocu character varying, p_sobservacion character varying, p_nidarea integer, p_nidperfil integer, p_nidrol integer)
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



/*XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX*/


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




/*XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX*/


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





/*XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX*/


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




/*XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX*/

CREATE OR REPLACE FUNCTION public.fn_sist_listar_menu_usuario(p_usuario character varying)
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
			WHERE public.usuario.slogin= p_usuario; 
END
$function$
;






/*XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX*/


CREATE OR REPLACE FUNCTION public.salvar()
 RETURNS boolean
 LANGUAGE plpgsql
AS $function$
BEGIN
COPY (SELECT * FROM public.sesion ) TO 'D:/archivo.csv' WITH CSV;
RETURN true;
END;
$function$
;





/*XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX*/
