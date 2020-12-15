-- public.auditoria_procedimiento definition

-- Drop table

-- DROP TABLE public.auditoria_procedimiento;

CREATE TABLE public.auditoria_procedimiento (
	nidaudproced serial NOT NULL,
	spalabraclave varchar(100) NOT NULL,
	sdata varchar(500) NOT NULL,
	dfechareg timestamp NOT NULL,	
	CONSTRAINT pk_auditoria_procedimiento PRIMARY KEY (nidaudproced)
);


-- public.info_sistema definition

-- Drop table

-- DROP TABLE public.info_sistema;

CREATE TABLE public.info_sistema (
	nidinfosistema serial NOT NULL,
	slogo bytea NULL,
	snombresistema varchar(100) NOT NULL,
	sversion varchar(50) NOT NULL,
	bactivo bool NOT NULL,
	dfechareg timestamp NOT NULL,
	CONSTRAINT pk_info_sistema  PRIMARY KEY (nidinfosistema)
);


-- public.modulo definition

-- Drop table

-- DROP TABLE public.modulo;

CREATE TABLE public.modulo (
	nidmodulo serial NOT NULL,	
	snombremodulo varchar(100) NOT NULL,
	ssiglas varchar(10) NOT NULL,
	sobservacion varchar(500) NOT NULL,		
	bactivo bool NOT NULL,
	dfechareg timestamp NOT NULL,
	nidsesion int4 NULL,
	CONSTRAINT pk_modulo PRIMARY KEY (nidmodulo)
);


-- public.operador definition

-- Drop table

-- DROP TABLE public.operador;

CREATE TABLE public.operador (
	nidoperador serial NOT NULL,
	snumdocu varchar(15) NOT NULL,
	snombre varchar(80) NOT NULL,
	sapepaterno varchar(80) NOT NULL,	
	sapematerno varchar(80) NOT NULL,
	scorreo varchar(80) NOT NULL,
	sgenero varchar(1) NOT NULL,
	dfechanac date NOT NULL,
	sdireccion varchar(500) NULL,
	sobservacion varchar(500) NULL,
	bactivo bool NOT NULL,
	dfechareg timestamp NOT NULL,
	nidsesion int4 NULL,
	CONSTRAINT pk_operador  PRIMARY KEY (nidoperador)
);


-- public.parametro definition

-- Drop table

-- DROP TABLE public.parametro;

CREATE TABLE public.parametro (
	nidparametro serial NOT NULL,
	bactivo bool NOT NULL,
	dfechareg timestamp NOT NULL,
	sclave varchar(50) NOT NULL,
	sdescripcion varchar(200) NOT NULL,
	svalor varchar(100) NOT NULL,
	CONSTRAINT pk_parametro PRIMARY KEY (nidparametro)
);


-- public.perfil definition

-- Drop table

-- DROP TABLE public.perfil;

CREATE TABLE public.perfil (
	nidperfil serial NOT NULL,	
	snombreperfil varchar(80) NOT NULL,
	nsesionesporusuario int4 NOT NULL,
	ntiempoconexionminuto int4 NOT NULL,
	ntiempovidapasworddia int4 NOT NULL,	
	bactivo bool NOT NULL,
	dfechareg timestamp NOT NULL,
	nidsesion int4 NULL,
	CONSTRAINT pk_perfil PRIMARY KEY (nidperfil)
);


-- public.rol definition

-- Drop table

-- DROP TABLE public.rol;

CREATE TABLE public.rol (
	nidrol serial NOT NULL,
	snombrerol varchar(100) NOT NULL,	
	siglas varchar(20) NOT NULL,	
	sobservacion varchar(500) NOT NULL,
	bactivo bool NOT NULL,
	dfechareg timestamp NOT NULL,
	nidsesion int4 NULL,
	CONSTRAINT pk_rol PRIMARY KEY (nidrol)
);


-- public.sede definition

-- Drop table

-- DROP TABLE public.sede;

CREATE TABLE public.sede (
	nidsede serial NOT NULL,	
	snombre varchar(100) NOT NULL,
	sdireccion varchar(150) NOT NULL,	
	subigeo varchar(50) NOT NULL,
	bactivo bool NOT NULL,
	dfechareg timestamp NOT NULL,
	nidsesion int4 NULL,
	CONSTRAINT pk_sede PRIMARY KEY (nidsede)
);




-- public.area definition

-- Drop table

-- DROP TABLE public.area;

CREATE TABLE public.area (
	nidarea serial NOT NULL,
	snombre varchar(100) NOT NULL,	
	sobservacion varchar(500) NULL,
	nidsede int4 NOT NULL,
	bactivo bool NOT NULL,
	dfechareg timestamp NOT NULL,
	nidsesion int4 NULL,
	CONSTRAINT pk_area PRIMARY KEY (nidarea),
	CONSTRAINT fk_area_nidsede_sede_nidsede FOREIGN KEY (nidsede) REFERENCES sede(nidsede)
);


-- public.menu definition

-- Drop table

-- DROP TABLE public.menu;

CREATE TABLE public.menu (
	nidmenu serial NOT NULL,	
	norden int4 NOT NULL,
	snombremenu varchar(100) NOT NULL,	
	siconomenu varchar(50) NOT NULL,	
	surl varchar(50) NOT NULL,
	nidmodulo int4 NOT NULL,
	bactivo bool NULL,
	dfechareg timestamp NOT NULL,
	nidsesion int4 NULL,
	CONSTRAINT pk_menu PRIMARY KEY (nidmenu),
	CONSTRAINT fk_menu_nidmodulo_modulo_nidmodulo FOREIGN KEY (nidmodulo) REFERENCES modulo(nidmodulo)
);


-- public.menu_rol definition

-- Drop table

-- DROP TABLE public.menu_rol;

CREATE TABLE public.menu_rol (	
	nidmenu int4 NOT NULL,
	nidrol int4 NOT NULL,	
	bactivo bool NOT NULL,
	dfechareg timestamp NOT NULL,
	CONSTRAINT pk_menu_rol PRIMARY KEY (nidmenu, nidrol),
	CONSTRAINT fkh92d5xc36jg9ks78efnwuml3e FOREIGN KEY (nidmenu) REFERENCES menu(nidmenu),
	CONSTRAINT fki4bpv0jms2qlc7yq69u7eqgr8 FOREIGN KEY (nidrol) REFERENCES rol(nidrol)
);


-- public.submenu definition

-- Drop table

-- DROP TABLE public.submenu;

CREATE TABLE public.submenu (
	nidsubmenu serial NOT NULL,
	norden int4 NOT NULL,
	snombremenu varchar(100) NOT NULL,	
	siconomenu varchar(50) NOT NULL,	
	surl varchar(50) NOT NULL,
	nidmenu int4 NULL,
	CONSTRAINT pk_submenu PRIMARY KEY (nidsubmenu),
	CONSTRAINT fk_menu_nidmenu_submenu_nidmenu FOREIGN KEY (nidmenu) REFERENCES menu(nidmenu)
);


-- public.usuario definition

-- Drop table

-- DROP TABLE public.usuario;

CREATE TABLE public.usuario (
	nidusuario int4 NOT NULL,	
	slogin varchar(50) NOT NULL,
	spassword varchar(100) NOT NULL,	
	bactivo bool NOT NULL,
	dfechareg timestamp NOT NULL,
	nidsesion int4 NULL,
	CONSTRAINT pk_usuario PRIMARY KEY (nidusuario),
	CONSTRAINT pk_usuario_slogin UNIQUE (slogin),
	CONSTRAINT fk_usuario_nidusuario_operador_nidoperador FOREIGN KEY (nidusuario) REFERENCES operador(nidoperador)
);


-- public.usuario_area definition

-- Drop table

-- DROP TABLE public.usuario_area;

CREATE TABLE public.usuario_area (
	nidusuarioarea serial NOT NULL,
	nidarea int4 NOT NULL,	
	sobservacion varchar(500) NOT NULL,
	nidusuario int4 NOT NULL,
	bactivo bool NOT NULL,
	dfechareg timestamp NOT NULL,
	nidsesion int4 NULL,
	CONSTRAINT pk_usuario_area PRIMARY KEY (nidusuarioarea),
	CONSTRAINT fk_usuarioarea_nidarea_area_nidarea FOREIGN KEY (nidarea) REFERENCES area(nidarea),
	CONSTRAINT fk_usuarioarea_nidusuario_usuario_nidusuario FOREIGN KEY (nidusuario) REFERENCES usuario(nidusuario)
);


-- public.usuario_biometria definition

-- Drop table

-- DROP TABLE public.usuario_biometria;

CREATE TABLE public.usuario_biometria (
	nidusuariobiometria serial NOT NULL,	
	nidusuario int4 NOT NULL,
	stipoimagen varchar(25) NOT NULL,
	ximagen bytea NULL,	
	bactivo bool NOT NULL,
	dfechareg timestamp NOT NULL,
	nidsesion int4 NULL,
	CONSTRAINT pk_usuario_biometria PRIMARY KEY (nidusuariobiometria),
	CONSTRAINT fk_usuariobiometria_nidusuario_usuario_nidusuario FOREIGN KEY (nidusuario) REFERENCES usuario(nidusuario)
);


-- public.usuario_perfil definition

-- Drop table

-- DROP TABLE public.usuario_perfil;

CREATE TABLE public.usuario_perfil (
	nidusuarioperfil serial NOT NULL,	
	nidusuario int4 NOT NULL,
	nidperfil int4 NOT NULL,
	sobservacion varchar(500) NULL,	
	bactivo bool NOT NULL,
	dfechareg timestamp NOT NULL,
	nidsesion int4 NULL,
	CONSTRAINT pk_usuario_perfil PRIMARY KEY (nidusuarioperfil),
	CONSTRAINT fk_usuarioperfil_nidperfil_perfil_nidperfil FOREIGN KEY (nidperfil) REFERENCES perfil(nidperfil),
	CONSTRAINT fk_usuarioperfil_nidusuario_usuario_nidusuario FOREIGN KEY (nidusuario) REFERENCES usuario(nidusuario)
);


-- public.usuario_rol definition

-- Drop table

-- DROP TABLE public.usuario_rol;

CREATE TABLE public.usuario_rol (
	nidusuariorol serial NOT NULL,
	nidusuario int4 NOT NULL,
	nidrol int4 NOT NULL,
	sobservacion varchar(500) NOT NULL,	
	bactivo bool NOT NULL,
	dfechareg timestamp NOT NULL,
	nidsesion int4 NULL,
	CONSTRAINT pk_usuario_rol PRIMARY KEY (nidusuariorol),
	CONSTRAINT fk_usuariorol_nidrol_rol_nidrol FOREIGN KEY (nidrol) REFERENCES rol(nidrol),
	CONSTRAINT fk_usuariorol_nidusuario_usuario_nidusuario FOREIGN KEY (nidusuario) REFERENCES usuario(nidusuario)
);


-- public.sesion definition

-- Drop table

-- DROP TABLE public.sesion;

CREATE TABLE public.sesion (
	nidsesion serial NOT NULL,
	dfechainicio timestamp NOT NULL,
	dfechafin timestamp NULL,
	ssistemaversion varchar(50) NOT NULL,
	nidusuario int4 NOT NULL,
	dfechareg timestamp NOT NULL,
	bactivo bool NOT NULL,
	CONSTRAINT pk_sesion PRIMARY KEY (nidsesion),
	CONSTRAINT fk_sesion_nidusuario_usuario_nidusuario FOREIGN KEY (nidusuario) REFERENCES usuario(nidusuario)
);


/*tablas para el tocken*/

create table oauth_access_token (
  token_id VARCHAR(256),
  token bytea,
  authentication_id VARCHAR(256),
  user_name VARCHAR(256),
  client_id VARCHAR(256),
  authentication bytea,
  refresh_token VARCHAR(256)
);



create table oauth_refresh_token (
  token_id VARCHAR(256),
  token bytea,
  authentication bytea
);
