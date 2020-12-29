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

