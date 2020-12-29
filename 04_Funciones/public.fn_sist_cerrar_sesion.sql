--FUNCTION CERRAR SESION ------------------

DROP FUNCTION IF EXISTS public.fn_sist_cerrar_sesion;

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

