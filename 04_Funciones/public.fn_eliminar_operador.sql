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
			
			/*REGISTRAR AUDITORIA*/
			
			
			v_respuesta	:= 'Se eliminó operador correctamente';
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
