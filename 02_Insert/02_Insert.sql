/*SEDE*/
INSERT INTO  public.sede(  bactivo,  dfechareg,   sdireccion,  snombre,  subigeo)
VALUES (   TRUE,  now(),   'Jr. las avenidas con Jirones',  'CENTRAL',  '140000');


/*AREA*/
INSERT INTO  public.area(  bactivo,  dfechareg,   nidsesion,  snombre,  sobservacion,  nidsede)
VALUES (  TRUE,   NOW(),   1,  'Administración',  'Data para pruebas unitarias del sistema',  1);

INSERT INTO  public.area(  bactivo,  dfechareg,   nidsesion,  snombre,  sobservacion,  nidsede)
VALUES (  TRUE,   NOW(),   1,  'Ventas',  'Data para pruebas unitarias del sistema',  1);

INSERT INTO  public.area(  bactivo,  dfechareg,   nidsesion,  snombre,  sobservacion,  nidsede)
VALUES (  TRUE,   NOW(),   1,  'Recursos Humanos',  'Data para pruebas unitarias del sistema',  1);

INSERT INTO  public.area(  bactivo,  dfechareg,   nidsesion,  snombre,  sobservacion,  nidsede)
VALUES (  TRUE,   NOW(),   1,  'Logística',  'Data para pruebas unitarias del sistema',  1);

INSERT INTO  public.area(  bactivo,  dfechareg,   nidsesion,  snombre,  sobservacion,  nidsede)
VALUES (  TRUE,   NOW(),   1,  'Comtabilidad',  'Data para pruebas unitarias del sistema',  1);

INSERT INTO  public.area(  bactivo,  dfechareg,   nidsesion,  snombre,  sobservacion,  nidsede)
VALUES (  TRUE,   NOW(),   1,  'Informatica',  'Data para pruebas unitarias del sistema',  1);



/*REGISTRO DE MODULO*/
INSERT INTO   public.modulo(  bactivo,  dfechareg,  nidsesion,  snombremodulo,  sobservacion,  ssiglas)
VALUES (  TRUE,  NOW(),  1,  'SISTEMA APP',  'PRIMER PROGRAMA',  'SINAPSIS');

--SELECT * FROM  public.modulo ;


/*REGISTRO DE MENUS*/

INSERT INTO   public.menu(  bactivo,  dfechareg,    nidsesion, norden,  siconomenu,  snombremenu,  surl,  nidmodulo)
VALUES (  TRUE,  NOW(),  1, 1, 'home',  'Home',  '',  1);


INSERT INTO   public.menu(  bactivo,  dfechareg,    nidsesion, norden,  siconomenu,  snombremenu,  surl,  nidmodulo)
VALUES (  TRUE,  NOW(),  1, 2,  'settings',  'ConfiguraciÃ³n',  '',  1);


INSERT INTO   public.menu(  bactivo,  dfechareg,    nidsesion, norden,  siconomenu,  snombremenu,  surl,  nidmodulo)
VALUES (  TRUE,  NOW(),  1, 3, 'leaderboard',  'Reportes',  '',  1);


INSERT INTO   public.menu(  bactivo,  dfechareg,    nidsesion, norden,  siconomenu,  snombremenu,  surl,  nidmodulo)
VALUES (  TRUE,  NOW(),  1, 4, 'table_chart',  'Extras',  '',  1);


/*SBUMENUS*/
/*Home*/
INSERT INTO   public.submenu(   siconomenu, norden ,   snombremenu,  surl,  nidmenu)
VALUES (   'perm_identity', 1,  'Home - 1',  '/home',  1);

 INSERT INTO   public.submenu(   siconomenu, norden ,  snombremenu,  surl,  nidmenu)
 VALUES (   'perm_identity', 2,  'Home - 2',  '/home',  1);



/*ConfiguraciÃ³n*/
INSERT INTO   public.submenu(   siconomenu, norden,  snombremenu,  surl,  nidmenu)
VALUES (   'group',1,  'Usuarios',  '/usuario',  2);

INSERT INTO   public.submenu(   siconomenu, norden,  snombremenu,  surl,  nidmenu)
VALUES (   'home_work',2,  'Sede',  '/sede',  2);


INSERT INTO   public.submenu(   siconomenu, norden,  snombremenu,  surl,  nidmenu)
VALUES ( 'storage',3,  'Parametros',  '/parametro',  2);

INSERT INTO   public.submenu(   siconomenu, norden,  snombremenu,  surl,  nidmenu)
VALUES ( 'portrait',4,  'Perfil',  '/perfil',  2);

INSERT INTO   public.submenu(   siconomenu, norden,  snombremenu,  surl,  nidmenu)
VALUES ( 'menu',5,  'Menú',  '/menu',  2);

INSERT INTO   public.submenu(   siconomenu, norden,  snombremenu,  surl,  nidmenu)
VALUES ( 'menu',6,  'Area',  '/area',  2);


/*Reportes*/

 INSERT INTO   public.submenu(   siconomenu, norden,  snombremenu,  surl,  nidmenu)
 VALUES ( 'poll', 1,  'Reportes - 1',  '/reporte',  3);


/*Extras*/
INSERT INTO   public.submenu(   siconomenu, norden,  snombremenu,  surl,  nidmenu)
VALUES ( 'content_copy', 1,  'Extra 01',  '/extras',  4);



/*ROLES*/

INSERT INTO   public.rol(    bactivo,  dfechareg,  nidsesion,  snombrerol,  sobservacion,  siglas)
VALUES (  TRUE,  NOW(),  1,  'Administrador',  '',  'ADM');

INSERT INTO   public.rol(    bactivo,  dfechareg,  nidsesion,  snombrerol,  sobservacion,  siglas)
VALUES (  TRUE,  NOW(),  1,  'Contabilidad',  '',  'CONT');

INSERT INTO   public.rol(    bactivo,  dfechareg,  nidsesion,  snombrerol,  sobservacion,  siglas)
VALUES (  TRUE,  NOW(),  1,  'Vendedor',  '',  'VEN');




/*MENU ROL*/

/*SELECT * FROM MENU
select * from menu_rol*/

INSERT INTO   public.menu_rol(  bactivo,  dfechareg,  nidrol,  nidmenu)
VALUES (  TRUE,  now(),  1,  1);
INSERT INTO   public.menu_rol(  bactivo,  dfechareg,  nidrol,  nidmenu)
VALUES (  TRUE,  now(),  1,  2);
INSERT INTO   public.menu_rol(  bactivo,  dfechareg,  nidrol,  nidmenu)
VALUES (  TRUE,  now(),  1,  3);
INSERT INTO   public.menu_rol(  bactivo,  dfechareg,  nidrol,  nidmenu)
VALUES (  TRUE,  now(),  1,  4);


INSERT INTO   public.menu_rol(  bactivo,  dfechareg,  nidrol,  nidmenu)
VALUES (  TRUE,  now(),  2,  1);
INSERT INTO   public.menu_rol(  bactivo,  dfechareg,  nidrol,  nidmenu)
VALUES (  TRUE,  now(),  2,  3);



/*TIPO DOCUMENTO*/
INSERT INTO public.tipodocumento (sidtipodoc, sdescripcion, bactivo, dfechareg, nidsesion) VALUES('DNI', 'DNI', true, now(), 1);
INSERT INTO public.tipodocumento (sidtipodoc, sdescripcion, bactivo, dfechareg, nidsesion) VALUES('CEE', 'CARNE DE EXTRANJERÍA', true, now(), 1);
INSERT INTO public.tipodocumento (sidtipodoc, sdescripcion, bactivo, dfechareg, nidsesion) VALUES('PAS', 'PASAPORTE', true, now(), 1);

TRUNCATE TABLE operador  RESTART IDENTITY CASCADE;
TRUNCATE TABLE usuario RESTART IDENTITY CASCADE;

SELECT * from operador

/*USUARIOS*/
INSERT INTO   public.operador( sidtipodoc,   bactivo,  dfechanac,  dfechareg,  nidsesion,  sapematerno,  sapepaterno,  sgenero,  snombre,  snumdocu,  sobservacion)
VALUES ( 'DNI',  TRUE,  NOW(),  NOW(),  1,  'RIMAC',  'AYALA',  'M',  'MAXIMO',  '43449994',  '');
INSERT INTO   public.usuario(  nidusuario, bactivo,  dfechareg,  nidsesion,  slogin,  spassword)
VALUES ( 1, TRUE,  NOW(), 1 ,  'MAX',  '123');


INSERT INTO   public.operador(  sidtipodoc,  bactivo,  dfechanac,  dfechareg,  nidsesion,  sapematerno,  sapepaterno,  sgenero,  snombre,  snumdocu,  sobservacion)
VALUES (  'DNI',  TRUE,  NOW(),  NOW(),  1,  'RIMAC',  'AYALA',  'M',  'TONY',  '43449994',  '');
INSERT INTO   public.usuario( nidusuario, bactivo,  dfechareg,  nidsesion,  slogin,  spassword)
VALUES ( 2, TRUE,  NOW(), 1 ,  'TONY',  '123');


INSERT INTO   public.operador( sidtipodoc,   bactivo,  dfechanac,  dfechareg,  nidsesion,  sapematerno,  sapepaterno,  sgenero,  snombre,  snumdocu,  sobservacion)
VALUES ( 'DNI',  TRUE,  NOW(),  NOW(),  1,  'ADMIN',  'ADMIN',  'M',  'ADMIN',  '11111111',  '');
INSERT INTO   public.usuario(  nidusuario, bactivo,  dfechareg,  nidsesion,  slogin,  spassword)
VALUES ( 3, TRUE,  NOW(), 1 ,  'ADMIN',  '123');



INSERT INTO   public.operador(  sidtipodoc,  bactivo,  dfechanac,  dfechareg,  nidsesion,  sapematerno,  sapepaterno,  sgenero,  snombre,  snumdocu,  sobservacion)
VALUES ( 'DNI',   TRUE,  NOW(),  NOW(),  1,  'ROOT',  'ROOT',  'M',  'ROOT',  '00000000',  '');
INSERT INTO   public.usuario(  nidusuario, bactivo,  dfechareg,  nidsesion,  slogin,  spassword)
VALUES ( 4, TRUE,  NOW(), 1 ,  'ROOT',  '123');
 



/*USAURIO AREA*/
INSERT INTO   public.usuario_area(  bactivo,  dfechareg,  nidsesion,  sobservacion,  nidarea,  nidusuario)
  VALUES (	TRUE,  NOW(),  1,  '',  1,  1);

INSERT INTO   public.usuario_area(  bactivo,  dfechareg,  nidsesion,  sobservacion,  nidarea,  nidusuario)
  VALUES (	TRUE,  NOW(),  1,  '',  1,  2);





/*USUARIO ROL*/
INSERT INTO   public.usuario_rol(    bactivo,  dfechareg,  nidsesion,  sobservacion,  nidrol,  nidusuario)
VALUES (   TRUE,  NOW(),  1,  '',  1, 1 );




/*PERFIL*/

INSERT INTO   public.perfil(   bactivo,  dfechareg,  nidsesion,  nsesionesporusuario,  ntiempoconexionminuto,  ntiempovidapasworddia,  snombreperfil)
VALUES (    true,  NOW(),  1,  '3',  100,  3,  'SUPER USUARIO');

INSERT INTO   public.perfil(   bactivo,  dfechareg,  nidsesion,  nsesionesporusuario,  ntiempoconexionminuto,  ntiempovidapasworddia,  snombreperfil)
VALUES (    true,  NOW(),  1,  '1',  100,  30,  'Contabilidad');

INSERT INTO   public.perfil(   bactivo,  dfechareg,  nidsesion,  nsesionesporusuario,  ntiempoconexionminuto,  ntiempovidapasworddia,  snombreperfil)
VALUES (    true,  NOW(),  1,  '1',  100,  30,  'Ventas');




/*USURIO PERFIL*/
INSERT INTO   public.usuario_perfil(     bactivo,  dfechareg,  nidsesion,  sobservacion,  nidperfil,  nidusuario)
VALUES (    TRUE,  NOW(),  1,  'Perfil de super usuario',  1,  1);




/*PARAMETROS*/
INSERT INTO  public.parametro(  bactivo,  dfechareg,  sclave,  sdescripcion,  svalor)
VALUES (  true,  now(),  'NOMB_TIENDA',  'Nombre de la tienda',  'SISTEMA DE VENTAS');




/*INFORMACION DEL SISTEMA*/
INSERT INTO   public.info_sistema(    bactivo,  dfechareg,  slogo,  snombresistema,  sversion)
VALUES (    TRUE,  NOW(),  NULL,  'SISTEMA VENTAS',  'V 1.0.0');





