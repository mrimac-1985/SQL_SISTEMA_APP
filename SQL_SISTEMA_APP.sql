/*SEDE*/
INSERT INTO  public.sede(  bactivo,  dfechareg,   sdireccion,  snombre,  subigeo)
VALUES (   TRUE,  now(),   'Jr. las avenidas con Jirones',  'CENTRAL',  '140000');


/*AREA*/
INSERT INTO  public.area(  bactivo,  dfechareg,   nidsesion,  snombre,  sobservacion,  nidsede)
VALUES (  TRUE,   NOW(),   1,  'Administración',  '-',  1);



/*REGISTRO DE MODULO*/
INSERT INTO   public.modulo(  bactivo,  dfechareg,  nidsesion,  snombremodulo,  sobservacion,  ssiglas)
VALUES (  TRUE,  NOW(),  1,  'SISTEMA APP',  'PRIMER PROGRAMA',  'SINAPSIS');

--SELECT * FROM  public.modulo ;


/*REGISTRO DE MENUS*/

INSERT INTO   public.menu(  bactivo,  dfechareg,    nidsesion, norden,  siconomenu,  snombremenu,  surl,  nidmodulo)
VALUES (  TRUE,  NOW(),  1, 1, 'home',  'Home',  '',  1);


INSERT INTO   public.menu(  bactivo,  dfechareg,    nidsesion, norden,  siconomenu,  snombremenu,  surl,  nidmodulo)
VALUES (  TRUE,  NOW(),  1, 2,  'settings',  'Configuración',  '',  1);


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



/*Configuración*/
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


/*Reportes*/

 INSERT INTO   public.submenu(   siconomenu, norden,  snombremenu,  surl,  nidmenu)
 VALUES ( 'poll', 1,  'Reportes - 1',  '/reporte',  3);


/*Extras*/
INSERT INTO   public.submenu(   siconomenu, norden,  snombremenu,  surl,  nidmenu)
VALUES ( 'content_copy', 1,  'Extra 01',  '/extras',  4);



/*ROLES*/

INSERT INTO   public.rol(    bactivo,  dfechareg,  nidsesion,  snombrerol,  sobservacion,  siglas)
VALUES (  TRUE,  NOW(),  1,  'ADMINISTRADOR',  '',  'ADM');

INSERT INTO   public.rol(    bactivo,  dfechareg,  nidsesion,  snombrerol,  sobservacion,  siglas)
VALUES (  TRUE,  NOW(),  1,  'USUARIO',  '',  'USU');


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


/*USUARIO*/
INSERT INTO   public.operador(    bactivo,  dfechanac,  dfechareg,  nidsesion,  sapematerno,  sapepaterno,  sgenero,  snombre,  snumdocu,  sobservacion)
VALUES (   TRUE,  NOW(),  NOW(),  1,  'RIMAC',  'AYALA',  'M',  'MAXIMO',  '43449994',  '');

INSERT INTO   public.usuario(  nidusuario, bactivo,  dfechareg,  nidsesion,  slogin,  spassword)
VALUES ( 1, TRUE,  NOW(), 1 ,  'MAX',  '123');


/*USUARIO ROL*/
INSERT INTO   public.usuario_rol(    bactivo,  dfechareg,  nidsesion,  sobservacion,  nidrol,  nidusuario)
VALUES (   TRUE,  NOW(),  1,  '',  1, 1 );


/*PERFIL*/

INSERT INTO   public.perfil(   bactivo,  dfechareg,  nidsesion,  nsesionesporusuario,  ntiempoconexionminuto,  ntiempovidapasworddia,  snombreperfil)
VALUES (    true,  NOW(),  1,  '3',  100,  3,  'SUPER USUARIO');


/*USURIO PERFIL*/
INSERT INTO   public.usuario_perfil(     bactivo,  dfechareg,  nidsesion,  sobservacion,  nidperfil,  nidusuario)
VALUES (    TRUE,  NOW(),  1,  'Perfil de super usuario',  1,  1);



/*PARAMETROS*/
INSERT INTO  public.parametro(  bactivo,  dfechareg,  sclave,  sdescripcion,  svalor)
VALUES (  true,  now(),  'NOMB_TIENDA',  'Nombre de la tienda',  'SISTEMA DE VENTAS');

























/*
SELECT
  public.menu.snombremenu
FROM
  public.usuario
  INNER JOIN public.usuario_rol ON (public.usuario.nidusuario = public.usuario_rol.nidusuario)
  INNER JOIN public.rol ON (public.usuario_rol.nidrol = public.rol.nidrol)
  INNER JOIN public.menu_rol ON (public.rol.nidrol = public.menu_rol.nidrol)
  INNER JOIN public.menu ON (public.menu_rol.nidmenu = public.menu.nidmenu)
WHERE public.usuario.slogin='MAX'


SELECT
  public.menu.snombremenu
FROM
  public.rol
  INNER JOIN public.menu_rol ON (public.rol.nidrol = public.menu_rol.nidrol)
  INNER JOIN public.menu ON (public.menu_rol.nidmenu = public.menu.nidmenu)



SELECT
  nidmenu,
  bactivo,
  dfechareg,
  nidsesion,
  siconomenu,
  snombremenu,
  surl,
  nidmodulo
FROM
  public.menu
where snombremenu like '%CONFIG%' ;
*/