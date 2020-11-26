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

--**FUNCION INSERTAR OPERADOR****************
DROP FUNCTION IF EXISTS fn_insertar_operador_usuario;

CREATE FUNCTION public.fn_insertar_operador_usuario (
	p_fechanac operador.dfechanac%TYPE,
	p_idsesion operador.nidsesion%TYPE,
	p_apematerno operador.sapematerno%TYPE,
	p_apepaterno operador.sapepaterno%TYPE,
	p_genero operador.sgenero%TYPE,
	p_nombre operador.snombre%TYPE,
	p_numdocu operador.snumdocu%TYPE,
	p_observacion operador.sobservacion%TYPE,
	p_login usuario.slogin%TYPE,
	p_password usuario.spassword%type
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
		INSERT INTO public.operador
		(bactivo, dfechanac, dfechareg, nidsesion, sapematerno, sapepaterno, sgenero, snombre, snumdocu, sobservacion)
		VALUES(true, p_fechanac, now(), p_idsesion, p_apematerno, p_apepaterno, p_genero, p_nombre, p_numdocu, p_observacion)
		RETURNING nidoperador INTO v_nidoperador;
	
		INSERT INTO public.usuario
		(nidusuario, bactivo, dfechareg, nidsesion, slogin, spassword)
		VALUES(v_nidoperador, true, now(), p_idsesion, p_login, p_password);
		
	
		v_respuesta	:= 'Se insertó registro Operador correctamente';	
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


/*XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX*/


--**FUNCION UPDATE OPERADOR USUARIO****************
DROP FUNCTION IF EXISTS fn_actualizar_operador_usuario;

CREATE FUNCTION public.fn_actualizar_operador_usuario(
	p_idoperador operador.nidoperador%TYPE,
	p_fechanac operador.dfechanac%TYPE,
	p_idsesion operador.nidsesion%TYPE,
	p_apematerno operador.sapematerno%TYPE,
	p_apepaterno operador.sapepaterno%TYPE,
	p_genero operador.sgenero%TYPE,
	p_nombre operador.snombre%TYPE,
	p_numdocu operador.snumdocu%TYPE,
	p_observacion operador.sobservacion%TYPE,
	p_login usuario.slogin%TYPE,
	p_password usuario.spassword%type
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
		WHERE nidoperador = p_idoperador;
	
		IF NOT FOUND THEN
			v_respuesta = 'No se encontro id Operador en el registro';
		ELSE
		/*ACTUALIZA OPERADOR*/
		UPDATE public.operador
		SET dfechanac= p_fechanac, nidsesion= p_idsesion , sapematerno= p_apematerno, sapepaterno= p_apepaterno, 
			sgenero= p_genero, snombre= p_nombre, snumdocu= p_numdocu, sobservacion= p_observacion
		WHERE nidoperador= p_idoperador;
		/*ACTUALIZA USUARIO*/	
		UPDATE public.usuario
		SET nidsesion= p_idsesion, slogin= p_login, spassword= p_password
		WHERE nidusuario= p_idoperador;
	
		v_respuesta	:= 'Se actualizó registro Operador correctamente';
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

/*XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX*/


--*****FUNCTION ELIMINAR OPERADOR*******
DROP FUNCTION IF EXISTS public.fn_eliminar_operador;

CREATE FUNCTION public.fn_eliminar_operador (
	p_nidoperador operador.nidoperador%TYPE
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
			v_respuesta = 'No se encontro id Operador en el registro';
		ELSE
			UPDATE 
				public.operador
			SET
				bactivo = FALSE
			WHERE 
				nidoperador = p_nidoperador;
			/*ELIMINA USUARIO*/
			UPDATE 
				public.usuario
			SET	
				bactivo = FALSE
			WHERE 
				nidusuario = p_nidoperador;
			
			v_respuesta	:= 'Se eliminó correctamente';
		END IF;
	EXCEPTION 
		 WHEN NO_DATA_FOUND THEN 
		 v_respuesta := 'No se encontró registro en la funcion fn_eliminar_operador --'||SUBSTR(SQLERRM,1,200);
		 WHEN OTHERS THEN 
		 v_respuesta := 'Error en fn_eliminar_operador --'||SUBSTR(SQLERRM,1,200);
	END;
	RETURN v_respuesta;
END
$function$
;


/*XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX*/

--FUNCTION INSERT AREA------------------
DROP FUNCTION IF EXISTS fn_insertar_area;

CREATE FUNCTION public.fn_insertar_area (
	p_idsesion area.nidsesion%TYPE,	
	p_nombre area.snombre%TYPE,
	p_sobservacion area.sobservacion%TYPE,
	p_idsede area.nidsede%TYPE
)
 RETURNS varchar
 LANGUAGE plpgsql
AS 
$function$
DECLARE 
	v_respuesta varchar;	
BEGIN
	BEGIN
		INSERT INTO public.area (bactivo, dfechareg, nidsesion, snombre, sobservacion, nidsede)
		VALUES(TRUE, now(), p_idsesion, p_nombre, p_sobservacion, p_idsede);

		v_respuesta	:= 'Se insertó registro Area correctamente';	
	EXCEPTION 
		WHEN NO_DATA_FOUND THEN 
		 v_respuesta := 'No se encontró registro en la funcion fn_insertar_area --'||SUBSTR(SQLERRM,1,200);
		 WHEN OTHERS THEN 
		 v_respuesta := 'Error en fn_insertar_area --'||SUBSTR(SQLERRM,1,200);
	END;
	RETURN v_respuesta;
END
$function$
;

/*XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX*/

--***FUNCTION UPDATE AREA******************************

DROP FUNCTION IF EXISTS fn_actualizar_area;

CREATE FUNCTION public.fn_actualizar_area (
	p_idarea area.nidarea%TYPE,
	p_idsesion area.nidsesion%TYPE,	
	p_nombre area.snombre%TYPE,
	p_sobservacion area.sobservacion%TYPE,
	p_idsede area.nidsede%TYPE
)
 RETURNS varchar
 LANGUAGE plpgsql
AS 
$function$
DECLARE 
	v_respuesta varchar;
	v_area area%rowtype;
BEGIN
	BEGIN
		SELECT * FROM area
		INTO v_area
		WHERE nidarea = p_idarea;
	
		IF NOT FOUND THEN
			v_respuesta = 'No se encontro id Area en el registro';
		ELSE
			UPDATE 
				public.area 
			SET 
				nidsesion= p_idsesion, 
				snombre = p_nombre, 
				sobservacion= p_observacion, 
				nidsede = p_idsede
			WHERE 
				nidarea = p_idarea;
			
			v_respuesta	:= 'Se realizó la actualización de Area';
		END IF;
	EXCEPTION 
		 WHEN NO_DATA_FOUND THEN 
		 v_respuesta := 'No se encontró registro en la funcion fn_actualizar_area --'||SUBSTR(SQLERRM,1,200);
		 WHEN OTHERS THEN 
		 v_respuesta := 'Error en fn_actualizar_area --'||SUBSTR(SQLERRM,1,200);
	END;
	RETURN v_respuesta;
END
$function$
;

/*XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX*/

--*****FUNCTION ELIMINAR AREA*******
DROP FUNCTION IF EXISTS public.fn_eliminar_area;

CREATE FUNCTION public.fn_eliminar_area(
	p_idarea area.nidarea%TYPE
)
 RETURNS varchar
 LANGUAGE plpgsql
AS 
$function$
DECLARE 
	v_respuesta varchar;
	v_area area%rowtype;
BEGIN
	BEGIN
		SELECT * FROM area
		INTO v_area
		WHERE nidarea = p_idarea;
	
		IF NOT FOUND THEN
			v_respuesta = 'No se encontro id Area en el registro';
		ELSE
			UPDATE 
				public.area
			SET
				bactivo = FALSE
			WHERE 
				nidarea = p_idarea;			
			v_respuesta	:= 'Se eliminó Area correctamente';
		END IF;
	EXCEPTION 
		 WHEN NO_DATA_FOUND THEN 
		 v_respuesta := 'No se encontró registro en la funcion fn_eliminar_area --'||SUBSTR(SQLERRM,1,200);
		 WHEN OTHERS THEN 
		 v_respuesta := 'Error en fn_eliminar_area --'||SUBSTR(SQLERRM,1,200);
	END;
	RETURN v_respuesta;
END
$function$
;


/*XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX*/

--FUNCTION INSERTAR SEDE------------------
DROP FUNCTION IF EXISTS fn_insertar_sede;

CREATE FUNCTION public.fn_insertar_sede (
	p_direccion sede.sdireccion%TYPE,	
	p_nombre sede.snombre%TYPE,
	p_ubigeo sede.subigeo%TYPE
)
 RETURNS varchar
 LANGUAGE plpgsql
AS 
$function$
DECLARE 
	v_respuesta varchar;	
BEGIN
	BEGIN
		INSERT INTO public.sede (bactivo, dfechareg, sdireccion, snombre, subigeo)
		VALUES(true, now(), p_direccion, p_nombre, p_ubigeo);

		v_respuesta	:= 'Se insertó registro Sede correctamente';	
	EXCEPTION 
		WHEN NO_DATA_FOUND THEN 
		 v_respuesta := 'No se encontró registro en la funcion fn_insertar_sede --'||SUBSTR(SQLERRM,1,200);
		 WHEN OTHERS THEN 
		 v_respuesta := 'Error en fn_insertar_sede --'||SUBSTR(SQLERRM,1,200);
	END;
	RETURN v_respuesta;
END
$function$
;


/*XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX*/

--***FUNCTION UPDATE SEDE******************************

DROP FUNCTION IF EXISTS fn_actualizar_sede;

CREATE FUNCTION public.fn_actualizar_sede (
	p_idsede sede.nidsede%TYPE,
	p_direccion sede.sdireccion%TYPE,	
	p_nombre sede.snombre%TYPE,
	p_subigeo sede.subigeo%TYPE
)
 RETURNS varchar
 LANGUAGE plpgsql
AS 
$function$
DECLARE 
	v_respuesta varchar;
	v_sede sede%rowtype;
BEGIN
	BEGIN
		SELECT * FROM sede
		INTO v_sede
		WHERE nidsede = p_idsede;
	
		IF NOT FOUND THEN
			v_respuesta = 'No se encontro id Sede en el registro';
		ELSE
			UPDATE 
				public.sede
			SET 
				sdireccion = p_direccion, 
				snombre = p_nombre, 
				subigeo = p_subigeo
			WHERE 
				nidsede = p_idsede;
			
			v_respuesta	:= 'Se realizó la actualización de Sede';
		END IF;
	EXCEPTION 
		 WHEN NO_DATA_FOUND THEN 
		 v_respuesta := 'No se encontró registro en la funcion fn_actualizar_sede --'||SUBSTR(SQLERRM,1,200);
		 WHEN OTHERS THEN 
		 v_respuesta := 'Error en fn_actualizar_sede --'||SUBSTR(SQLERRM,1,200);
	END;
	RETURN v_respuesta;
END
$function$
;


/*XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX*/

--*****FUNCTION ELIMINAR SEDE*******
DROP FUNCTION IF EXISTS public.fn_eliminar_sede;

CREATE FUNCTION public.fn_eliminar_sede(
	p_idsede sede.nidsede%TYPE
)
 RETURNS varchar
 LANGUAGE plpgsql
AS 
$function$
DECLARE 
	v_respuesta varchar;
	v_sede sede%rowtype;
BEGIN
	BEGIN
		SELECT * FROM sede
		INTO v_sede
		WHERE nidsede = p_idsede;
	
		IF NOT FOUND THEN
			v_respuesta = 'No se encontro id Sede en el registro';
		ELSE
			UPDATE 
				public.sede
			SET
				bactivo = FALSE
			WHERE 
				nidsede = p_idsede;			
			v_respuesta	:= 'Se eliminó Sede correctamente';
		END IF;
	EXCEPTION 
		 WHEN NO_DATA_FOUND THEN 
		 v_respuesta := 'No se encontró registro en la funcion fn_eliminar_sede --'||SUBSTR(SQLERRM,1,200);
		 WHEN OTHERS THEN 
		 v_respuesta := 'Error en fn_eliminar_sede --'||SUBSTR(SQLERRM,1,200);
	END;
	RETURN v_respuesta;
END
$function$
;

/*XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX*/

--FUNCTION INSERT ROL------------------
DROP FUNCTION IF EXISTS fn_insertar_rol;

CREATE FUNCTION public.fn_insertar_rol (
	p_nidsesion rol.nidsesion%TYPE,
	p_siglas rol.siglas%TYPE,
	p_snombrerol rol.snombrerol%TYPE,
	p_sobservacion rol.sobservacion%type
)
 RETURNS varchar
 LANGUAGE plpgsql
AS 
$function$
DECLARE 
	v_respuesta varchar;	
BEGIN
	BEGIN
		INSERT INTO public.rol (bactivo, dfechareg, nidsesion, siglas, snombrerol, sobservacion)
		VALUES(true, now(), p_nidsesion, p_siglas, p_snombrerol, p_sobservacion);

		v_respuesta	:= 'Se insertó registro Rol correctamente';	
	EXCEPTION 
		 WHEN OTHERS THEN 
		 v_respuesta := 'Error en fn_insertar_rol --'||SUBSTR(SQLERRM,1,200);
	END;
	RETURN v_respuesta;
END
$function$
;


/*XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX*/

--***FUNCTION UPDATE******************************

DROP FUNCTION IF EXISTS fn_actualizar_rol;

CREATE FUNCTION public.fn_actualizar_rol (
	p_nidrol rol.nidrol%TYPE,
	p_nidsesion rol.nidsesion%TYPE,
	p_siglas rol.siglas%TYPE,
	p_snombrerol rol.snombrerol%TYPE,
	p_sobservacion rol.sobservacion%type
)
 RETURNS varchar
 LANGUAGE plpgsql
AS 
$function$
DECLARE 
	v_respuesta varchar;
	v_rol rol%rowtype;
BEGIN
	BEGIN
		SELECT * FROM rol
		INTO v_rol
		WHERE nidrol = p_nidrol;
	
		IF NOT FOUND THEN
			v_respuesta = 'No se encontro id Rol en el registro';
		ELSE
			UPDATE 
				public.rol 
			SET 
				nidsesion= p_nidsesion, 
				siglas= p_siglas, 
				snombrerol= p_snombrerol, 
				sobservacion= p_sobservacion
			WHERE 
				nidrol = p_nidrol;
			
			v_respuesta	:= 'Se realizó la actualización de Rol';
		END IF;
	EXCEPTION 
		 WHEN NO_DATA_FOUND THEN 
		 v_respuesta := 'No se encontró registro en la funcion fn_actualizar_rol --'||SUBSTR(SQLERRM,1,200);
		 WHEN OTHERS THEN 
		 v_respuesta := 'Error en fn_actualizar_rol --'||SUBSTR(SQLERRM,1,200);
	END;
	RETURN v_respuesta;
END
$function$
;

/*XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX*/

--*****FUNCTION ELIMINAR ROL*******
DROP FUNCTION IF EXISTS public.fn_eliminar_rol;

CREATE FUNCTION public.fn_eliminar_rol (
	p_nidrol rol.nidrol%TYPE
)
 RETURNS varchar
 LANGUAGE plpgsql
AS 
$function$ 
DECLARE 
	v_respuesta varchar;
	v_rol rol%rowtype;
BEGIN
	BEGIN
		SELECT * FROM rol
		INTO v_rol
		WHERE nidrol = p_nidrol;
	
		IF NOT FOUND THEN
			v_respuesta = 'No se encontro id Rol en el registro';
		ELSE
			UPDATE 
				public.rol 
			SET
				bactivo = FALSE
			WHERE 
				nidrol = p_nidrol;			
			v_respuesta	:= 'Se eliminó correctamente';
		END IF;
	EXCEPTION 
		 WHEN NO_DATA_FOUND THEN 
		 v_respuesta := 'No se encontró registro en la funcion fn_eliminar_rol --'||SUBSTR(SQLERRM,1,200);
		 WHEN OTHERS THEN 
		 v_respuesta := 'Error en fn_eliminar_rol --'||SUBSTR(SQLERRM,1,200);
	END;
	RETURN v_respuesta;
END
$function$
;


/*XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX*/

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


/*XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX*/

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


/*XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX*/

--*****FUNCTION ELIMINAR PERFIL*******
DROP FUNCTION IF EXISTS public.fn_eliminar_perfil;

CREATE FUNCTION public.fn_eliminar_perfil (
	p_idperfil perfil.nidperfil%TYPE
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

--FUNCTION INSERT MODULO------------------

DROP FUNCTION IF EXISTS fn_insertar_modulo;

CREATE FUNCTION public.fn_insertar_modulo (
	p_nidsesion modulo.nidsesion%TYPE,
	p_nombremodulo modulo.snombremodulo%TYPE,
	p_observacion modulo.sobservacion%TYPE,
	p_siglas modulo.ssiglas%TYPE
)
 RETURNS varchar
 LANGUAGE plpgsql
AS 
$function$
DECLARE 
	v_respuesta varchar;	
BEGIN
	BEGIN
		INSERT INTO	public.modulo (bactivo, dfechareg, nidsesion, snombremodulo, sobservacion, ssiglas)
		VALUES(TRUE, now(), p_nidsesion, p_nombremodulo, p_observacion, p_siglas);

		v_respuesta	:= 'Se insertó registro Modulo correctamente';	
	EXCEPTION 
		 WHEN NO_DATA_FOUND THEN 
		 v_respuesta := 'No se encontró registro en la funcion fn_insertar_modulo --'||SUBSTR(SQLERRM,1,200);
		 WHEN OTHERS THEN 
		 v_respuesta := 'Error en fn_insertar_modulo --'||SUBSTR(SQLERRM,1,200);
	END;
	RETURN v_respuesta;
END
$function$
;


/*XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX*/

--***FUNCTION UPDATE MODULO******************************

DROP FUNCTION IF EXISTS fn_actualizar_modulo;

CREATE FUNCTION public.fn_actualizar_modulo (
	p_idmodulo modulo.nidmodulo%TYPE,
	p_idsesion modulo.nidsesion%TYPE,
	p_nombremodulo modulo.snombremodulo%TYPE,
	p_observacion modulo.sobservacion%TYPE,
	p_siglas modulo.ssiglas%TYPE
)
 RETURNS varchar
 LANGUAGE plpgsql
AS 
$function$
DECLARE 
	v_respuesta varchar;
	v_modulo modulo%rowtype;
BEGIN
	BEGIN
		SELECT * FROM modulo
		INTO v_modulo
		WHERE nidmodulo = p_idmodulo;
	
		IF NOT FOUND THEN
			v_respuesta = 'No se encontro id Modulo en el registro';
		ELSE
		UPDATE
			public.modulo
		SET
			nidsesion = p_idsesion,
			snombremodulo = p_nombremodulo,
			sobservacion = p_observacion,
			ssiglas = p_siglas
		WHERE
		nidmodulo = p_idmodulo;

			v_respuesta	:= 'Se realizó la actualización de Modulo';
		END IF;
	EXCEPTION 
		 WHEN NO_DATA_FOUND THEN 
		 v_respuesta := 'No se encontró registro en la funcion fn_actualizar_modulo --'||SUBSTR(SQLERRM,1,200);
		 WHEN OTHERS THEN 
		 v_respuesta := 'Error en fn_actualizar_modulo --'||SUBSTR(SQLERRM,1,200);
	END;
	RETURN v_respuesta;
END
$function$
;


/*XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX*/

--*****FUNCTION ELIMINAR MODULO*******
DROP FUNCTION IF EXISTS public.fn_eliminar_modulo;

CREATE FUNCTION public.fn_eliminar_modulo (
	p_idmodulo modulo.nidmodulo%TYPE
)
 RETURNS varchar
 LANGUAGE plpgsql
AS 
$function$
DECLARE 
	v_respuesta varchar;
	v_modulo modulo%rowtype;
BEGIN
	BEGIN
		SELECT * FROM modulo
		INTO v_modulo
		WHERE nidmodulo = p_idmodulo;
	
		IF NOT FOUND THEN
			v_respuesta = 'No se encontro id Modulo en el registro';
		ELSE
			UPDATE 
				public.modulo
			SET
				bactivo = FALSE
			WHERE 
				nidmodulo = p_idmodulo;			
			v_respuesta	:= 'Se eliminó Modulo correctamente';
		END IF;
	EXCEPTION 
		 WHEN NO_DATA_FOUND THEN 
		 v_respuesta := 'No se encontró registro en la funcion fn_eliminar_modulol --'||SUBSTR(SQLERRM,1,200);
		 WHEN OTHERS THEN 
		 v_respuesta := 'Error en fn_eliminar_modulo --'||SUBSTR(SQLERRM,1,200);
	END;
	RETURN v_respuesta;
END
$function$
;


