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




/*UBIGEO*/
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010000', 'AMAZONAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010100', 'CHACHAPOYAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010101', 'CHACHAPOYAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010102', 'ASUNCION', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010103', 'BALSAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010104', 'CHETO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010105', 'CHILIQUIN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010106', 'CHUQUIBAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010107', 'GRANADA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010108', 'HUANCAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010109', 'LA JALCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010110', 'LEIMEBAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010111', 'LEVANTO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010112', 'MAGDALENA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010113', 'MARISCAL CASTILLA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010114', 'MOLINOPAMPA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010115', 'MONTEVIDEO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010116', 'OLLEROS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010117', 'QUINJALCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010118', 'SAN FRANCISCO DE DAGUAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010119', 'SAN ISIDRO DE MAINO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010120', 'SOLOCO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010121', 'SONCHE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010200', 'BAGUA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010201', 'LA PECA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010202', 'ARAMANGO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010203', 'COPALLIN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010204', 'EL PARCO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010205', 'BAGUA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010206', 'IMAZA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010300', 'BONGARA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010301', 'JUMBILLA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010302', 'COROSHA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010303', 'CUISPES', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010304', 'CHISQUILLA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010305', 'CHURUJA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010306', 'FLORIDA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010307', 'RECTA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010308', 'SAN CARLOS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010309', 'SHIPASBAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010310', 'VALERA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010311', 'YAMBRASBAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010312', 'JAZAN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010400', 'LUYA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010401', 'LAMUD', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010402', 'CAMPORREDONDO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010403', 'COCABAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010404', 'COLCAMAR', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010405', 'CONILA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010406', 'INGUILPATA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010407', 'LONGUITA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010408', 'LONYA CHICO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010409', 'LUYA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010410', 'LUYA VIEJO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010411', 'MARIA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010412', 'OCALLI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010413', 'OCUMAL', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010414', 'PISUQUIA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010415', 'SAN CRISTOBAL', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010416', 'SAN FRANCISCO DE YESO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010417', 'SAN JERONIMO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010418', 'SAN JUAN DE LOPECANCHA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010419', 'SANTA CATALINA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010420', 'SANTO TOMAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010421', 'TINGO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010422', 'TRITA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010423', 'PROVIDENCIA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010500', 'RODRIGUEZ DE MENDOZA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010501', 'SAN NICOLAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010502', 'COCHAMAL', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010503', 'CHIRIMOTO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010504', 'HUAMBO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010505', 'LIMABAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010506', 'LONGAR', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010507', 'MILPUCC', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010508', 'MARISCAL BENAVIDES', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010509', 'OMIA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010510', 'SANTA ROSA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010511', 'TOTORA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010512', 'VISTA ALEGRE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010601', 'NIEVA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010602', 'RIO SANTIAGO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010603', 'EL CENEPA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010700', 'UTCUBAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010701', 'BAGUA GRANDE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010702', 'CAJARURO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010703', 'CUMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010704', 'EL MILAGRO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010705', 'JAMALCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010706', 'LONYA GRANDE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('010707', 'YAMON', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020000', 'ANCASH', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020100', 'HUARAZ', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020101', 'HUARAZ', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020102', 'INDEPENDENCIA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020103', 'COCHABAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020104', 'COLCABAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020105', 'HUANCHAY', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020106', 'JANGAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020107', 'LA LIBERTAD', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020108', 'OLLEROS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020109', 'PAMPAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020110', 'PARIACOTO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020111', 'PIRA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020112', 'TARICA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020200', 'AIJA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020201', 'AIJA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020203', 'CORIS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020205', 'HUACLLAN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020206', 'LA MERCED', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020208', 'SUCCHA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020300', 'BOLOGNESI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020301', 'CHIQUIAN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020302', 'ABELARDO PARDO LEZAMETA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020304', 'AQUIA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020305', 'CAJACAY', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020310', 'HUAYLLACAYAN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020311', 'HUASTA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020313', 'MANGAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020315', 'PACLLON', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020317', 'SAN MIGUEL DE CORPANQUI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020320', 'TICLLOS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020321', 'ANTONIO RAIMONDI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020322', 'CANIS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020323', 'COLQUIOC', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020324', 'LA PRIMAVERA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020325', 'HUALLANCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020400', 'CARHUAZ', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020401', 'CARHUAZ', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020402', 'ACOPAMPA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020403', 'AMASHCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020404', 'ANTA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020405', 'ATAQUERO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020406', 'MARCARA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020407', 'PARIAHUANCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020408', 'SAN MIGUEL DE ACO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020409', 'SHILLA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020410', 'TINCO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020411', 'YUNGAR', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020500', 'CASMA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020501', 'CASMA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020502', 'BUENA VISTA ALTA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020503', 'COMANDANTE NOEL', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020505', 'YAUTAN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020600', 'CORONGO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020601', 'CORONGO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020602', 'ACO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020603', 'BAMBAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020604', 'CUSCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020605', 'LA PAMPA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020606', 'YANAC', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020607', 'YUPAN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020700', 'HUAYLAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020701', 'CARAZ', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020702', 'HUALLANCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020703', 'HUATA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020704', 'HUAYLAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020705', 'MATO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020706', 'PAMPAROMAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020707', 'PUEBLO LIBRE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020708', 'SANTA CRUZ', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020709', 'YURACMARCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020710', 'SANTO TORIBIO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020800', 'HUARI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020801', 'HUARI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020802', 'CAJAY', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020803', 'CHAVIN DE HUANTAR', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020804', 'HUACACHI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020805', 'HUACHIS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020806', 'HUACCHIS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020807', 'HUANTAR', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020808', 'MASIN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020809', 'PAUCAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020810', 'PONTO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020811', 'RAHUAPAMPA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020812', 'RAPAYAN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020813', 'SAN MARCOS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020814', 'SAN PEDRO DE CHANA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020815', 'UCO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020816', 'ANRA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020900', 'MARISCAL LUZURIAGA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020901', 'PISCOBAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020902', 'CASCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020903', 'LUCMA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020904', 'FIDEL OLIVAS ESCUDERO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020905', 'LLAMA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020906', 'LLUMPA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020907', 'MUSGA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('020908', 'ELEAZAR GUZMAN BARRON', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021000', 'PALLASCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021001', 'CABANA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021002', 'BOLOGNESI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021003', 'CONCHUCOS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021004', 'HUACASCHUQUE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021005', 'HUANDOVAL', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021006', 'LACABAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021007', 'LLAPO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021008', 'PALLASCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021009', 'PAMPAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021010', 'SANTA ROSA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021011', 'TAUCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021100', 'POMABAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021101', 'POMABAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021102', 'HUAYLLAN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021103', 'PAROBAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021104', 'QUINUABAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021200', 'RECUAY', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021201', 'RECUAY', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021202', 'COTAPARACO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021203', 'HUAYLLAPAMPA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021204', 'MARCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021205', 'PAMPAS CHICO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021206', 'PARARIN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021207', 'TAPACOCHA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021208', 'TICAPAMPA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021209', 'LLACLLIN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021210', 'CATAC', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021300', 'SANTA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021301', 'CHIMBOTE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021302', 'CACERES DEL PERU', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021303', 'MACATE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021304', 'MORO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021305', 'NEPEÑA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021306', 'SAMANCO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021307', 'SANTA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021308', 'COISHCO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021309', 'NUEVO CHIMBOTE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021400', 'SIHUAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021401', 'SIHUAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021402', 'ALFONSO UGARTE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021403', 'CHINGALPO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021404', 'HUAYLLABAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021405', 'QUICHES', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021406', 'SICSIBAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021407', 'ACOBAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021408', 'CASHAPAMPA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021409', 'RAGASH', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021410', 'SAN JUAN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021500', 'YUNGAY', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021501', 'YUNGAY', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021502', 'CASCAPARA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021503', 'MANCOS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021504', 'MATACOTO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021505', 'QUILLO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021506', 'RANRAHIRCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021507', 'SHUPLUY', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021508', 'YANAMA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021600', 'ANTONIO RAIMONDI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021601', 'LLAMELLIN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021602', 'ACZO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021603', 'CHACCHO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021604', 'CHINGAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021605', 'MIRGAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021606', 'SAN JUAN DE RONTOY', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021701', 'SAN LUIS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021702', 'YAUYA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021703', 'SAN NICOLAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021800', 'ASUNCION', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021801', 'CHACAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021802', 'ACOCHACA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021900', 'HUARMEY', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021901', 'HUARMEY', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021902', 'COCHAPETI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021903', 'HUAYAN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021904', 'MALVAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('021905', 'CULEBRAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('022001', 'ACAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('022002', 'CAJAMARQUILLA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('022003', 'CARHUAPAMPA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('022004', 'COCHAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('022005', 'CONGAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('022006', 'LLIPA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('022007', 'OCROS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('022008', 'SAN CRISTOBAL DE RAJAN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('022009', 'SAN PEDRO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('022010', 'SANTIAGO DE CHILCAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030000', 'APURIMAC', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030100', 'ABANCAY', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030101', 'ABANCAY', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030102', 'CIRCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030103', 'CURAHUASI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030104', 'CHACOCHE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030105', 'HUANIPACA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030106', 'LAMBRAMA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030107', 'PICHIRHUA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030108', 'SAN PEDRO DE CACHORA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030109', 'TAMBURCO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030200', 'AYMARAES', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030201', 'CHALHUANCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030202', 'CAPAYA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030203', 'CARAYBAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030204', 'COLCABAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030205', 'COTARUSE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030206', 'CHAPIMARCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030207', 'HUAYLLO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030208', 'LUCRE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030209', 'POCOHUANCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030210', 'SAÑAYCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030211', 'SORAYA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030212', 'TAPAIRIHUA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030213', 'TINTAY', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030214', 'TORAYA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030215', 'YANACA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030216', 'SAN JUAN DE CHACÑA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030217', 'JUSTO APU SAHUARAURA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030300', 'ANDAHUAYLAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030301', 'ANDAHUAYLAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030302', 'ANDARAPA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030303', 'CHIARA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030304', 'HUANCARAMA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030305', 'HUANCARAY', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030306', 'KISHUARA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030307', 'PACOBAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030308', 'PAMPACHIRI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030309', 'SAN ANTONIO DE CACHI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030310', 'SAN JERONIMO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030311', 'TALAVERA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030312', 'TURPO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030313', 'PACUCHA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030314', 'POMACOCHA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030315', 'SANTA MARIA DE CHICMO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030316', 'TUMAY HUARACA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030317', 'HUAYANA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030318', 'SAN MIGUEL DE CHACCRAMPA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030319', 'KAQUIABAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030320', 'JOSE MARIA ARGUEDAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030400', 'ANTABAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030401', 'ANTABAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030402', 'EL ORO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030403', 'HUAQUIRCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030404', 'JUAN ESPINOZA MEDRANO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030405', 'OROPESA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030406', 'PACHACONAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030407', 'SABAINO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030500', 'COTABAMBAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030501', 'TAMBOBAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030502', 'COYLLURQUI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030503', 'COTABAMBAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030504', 'HAQUIRA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030505', 'MARA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030506', 'CHALLHUAHUACHO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030600', 'GRAU', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030601', 'CHUQUIBAMBILLA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030602', 'CURPAHUASI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030603', 'HUAILLATI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030604', 'MAMARA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030605', 'MARISCAL GAMARRA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030606', 'MICAELA BASTIDAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030607', 'PROGRESO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030608', 'PATAYPAMPA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030609', 'SAN ANTONIO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030610', 'TURPAY', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030611', 'VILCABAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030612', 'VIRUNDO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030613', 'SANTA ROSA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030614', 'CURASCO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030700', 'CHINCHEROS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030701', 'CHINCHEROS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030702', 'ONGOY', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030703', 'OCOBAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030704', 'COCHARCAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030705', 'ANCO HUALLO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030706', 'HUACCANA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030707', 'URANMARCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('030708', 'RANRACANCHA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040000', 'AREQUIPA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040100', 'AREQUIPA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040101', 'AREQUIPA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040102', 'CAYMA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040103', 'CERRO COLORADO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040104', 'CHARACATO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040105', 'CHIGUATA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040106', 'LA JOYA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040107', 'MIRAFLORES', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040108', 'MOLLEBAYA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040109', 'PAUCARPATA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040110', 'POCSI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040111', 'POLOBAYA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040112', 'QUEQUEÑA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040113', 'SABANDIA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040114', 'SACHACA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040115', 'SAN JUAN DE SIGUAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040116', 'SAN JUAN DE TARUCANI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040117', 'SANTA ISABEL DE SIGUAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040118', 'SANTA RITA DE SIHUAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040119', 'SOCABAYA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040120', 'TIABAYA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040121', 'UCHUMAYO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040122', 'VITOR', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040123', 'YANAHUARA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040124', 'YARABAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040125', 'YURA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040126', 'MARIANO MELGAR', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040127', 'JACOBO HUNTER', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040128', 'ALTO SELVA ALEGRE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040129', 'JOSE LUIS BUSTAMANTE Y RIVERO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040201', 'CHIVAY', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040202', 'ACHOMA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040203', 'CABANACONDE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040204', 'CAYLLOMA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040205', 'CALLALLI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040206', 'COPORAQUE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040207', 'HUAMBO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040208', 'HUANCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040209', 'ICHUPAMPA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040210', 'LARI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040211', 'LLUTA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040212', 'MACA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040213', 'MADRIGAL', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040214', 'SAN ANTONIO DE CHUCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040215', 'SIBAYO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040216', 'TAPAY', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040217', 'TISCO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040218', 'TUTI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040219', 'YANQUE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040220', 'MAJES', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040300', 'CAMANA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040301', 'CAMANA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040302', 'JOSE MARIA QUIMPER', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040303', 'MARIANO NICOLAS VALCARCEL', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040304', 'MARISCAL CACERES', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040305', 'NICOLAS DE PIEROLA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040306', 'OCOÑA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040307', 'QUILCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040308', 'SAMUEL PASTOR', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040400', 'CARAVELI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040401', 'CARAVELI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040402', 'ACARI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040403', 'ATICO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040404', 'ATIQUIPA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040405', 'BELLA UNION', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040406', 'CAHUACHO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040407', 'CHALA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040408', 'CHAPARRA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040409', 'HUANUHUANU', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040410', 'JAQUI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040411', 'LOMAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040412', 'QUICACHA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040413', 'YAUCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040500', 'CASTILLA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040501', 'APLAO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040502', 'ANDAGUA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040503', 'AYO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040504', 'CHACHAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040505', 'CHILCAYMARCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040506', 'CHOCO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040507', 'HUANCARQUI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040508', 'MACHAGUAY', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040509', 'ORCOPAMPA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040510', 'PAMPACOLCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040511', 'TIPAN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040512', 'URACA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040513', 'UÑON', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040514', 'VIRACO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040600', 'CONDESUYOS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040601', 'CHUQUIBAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040602', 'ANDARAY', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040603', 'CAYARANI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040604', 'CHICHAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040605', 'IRAY', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040606', 'SALAMANCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040607', 'YANAQUIHUA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040608', 'RIO GRANDE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040700', 'ISLAY', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040701', 'MOLLENDO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040702', 'COCACHACRA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040703', 'DEAN VALDIVIA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040704', 'ISLAY', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040705', 'MEJIA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040706', 'PUNTA DE BOMBON', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040800', 'LA UNION', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040801', 'COTAHUASI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040802', 'ALCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040803', 'CHARCANA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040804', 'HUAYNACOTAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040805', 'PAMPAMARCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040806', 'PUYCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040807', 'QUECHUALLA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040808', 'SAYLA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040809', 'TAURIA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040810', 'TOMEPAMPA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('040811', 'TORO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050000', 'AYACUCHO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050100', 'HUAMANGA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050101', 'AYACUCHO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050102', 'ACOS VINCHOS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050103', 'CARMEN ALTO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050104', 'CHIARA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050105', 'QUINUA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050106', 'SAN JOSE DE TICLLAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050107', 'SAN JUAN BAUTISTA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050108', 'SANTIAGO DE PISCHA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050109', 'VINCHOS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050110', 'TAMBILLO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050111', 'ACOCRO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050112', 'SOCOS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050113', 'OCROS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050114', 'PACAYCASA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050115', 'JESUS NAZARENO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050116', 'ANDRES AVELINO CACERES DORREGA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050200', 'CANGALLO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050201', 'CANGALLO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050204', 'CHUSCHI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050206', 'LOS MOROCHUCOS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050207', 'PARAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050208', 'TOTOS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050211', 'MARIA PARADO DE BELLIDO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050300', 'HUANTA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050301', 'HUANTA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050302', 'AYAHUANCO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050303', 'HUAMANGUILLA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050304', 'IGUAIN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050305', 'LURICOCHA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050307', 'SANTILLANA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050308', 'SIVIA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050309', 'LLOCHEGUA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050310', 'CANAYRE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050312', 'PUCACOLPA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050400', 'LA MAR', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050401', 'SAN MIGUEL', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050402', 'ANCO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050403', 'AYNA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050404', 'CHILCAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050405', 'CHUNGUI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050406', 'TAMBO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050407', 'LUIS CARRANZA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050408', 'SANTA ROSA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050409', 'SAMUGARI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050410', 'ANCHIHUAY', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050500', 'LUCANAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050501', 'PUQUIO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050502', 'AUCARA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050503', 'CABANA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050504', 'CARMEN SALCEDO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050506', 'CHAVIÑA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050508', 'CHIPAO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050510', 'HUAC-HUAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050511', 'LARAMATE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050512', 'LEONCIO PRADO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050513', 'LUCANAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050514', 'LLAUTA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050516', 'OCAÑA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050517', 'OTOCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050520', 'SANCOS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050521', 'SAN JUAN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050522', 'SAN PEDRO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050524', 'SANTA ANA DE HUAYCAHUACHO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050525', 'SANTA LUCIA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050529', 'SAISA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050531', 'SAN PEDRO DE PALCO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050532', 'SAN CRISTOBAL', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050600', 'PARINACOCHAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050601', 'CORACORA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050604', 'CORONEL CASTAÑEDA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050605', 'CHUMPI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050608', 'PACAPAUSA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050611', 'PULLO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050612', 'PUYUSCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050615', 'SAN FRANCISCO DE RAVACAYCO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050616', 'UPAHUACHO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050700', 'VICTOR FAJARDO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050701', 'HUANCAPI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050702', 'ALCAMENCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050703', 'APONGO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050704', 'CANARIA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050706', 'CAYARA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050707', 'COLCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050708', 'HUALLA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050709', 'HUAMANQUIQUIA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050710', 'HUANCARAYLLA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050713', 'SARHUA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050714', 'VILCANCHOS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050715', 'ASQUIPATA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050800', 'HUANCA SANCOS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050801', 'SANCOS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050802', 'SACSAMARCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050803', 'SANTIAGO DE LUCANAMARCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050804', 'CARAPO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050900', 'VILCAS HUAMAN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050901', 'VILCAS HUAMAN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050902', 'VISCHONGO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050903', 'ACCOMARCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050904', 'CARHUANCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050905', 'CONCEPCION', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050906', 'HUAMBALPA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050907', 'SAURAMA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('050908', 'INDEPENDENCIA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('051001', 'PAUSA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('051002', 'COLTA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('051003', 'CORCULLA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('051004', 'LAMPA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('051005', 'MARCABAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('051006', 'OYOLO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('051007', 'PARARCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('051008', 'SAN JAVIER DE ALPABAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('051009', 'SAN JOSE DE USHUA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('051010', 'SARA SARA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('051101', 'QUEROBAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('051102', 'BELEN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('051103', 'CHALCOS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('051104', 'SAN SALVADOR DE QUIJE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('051105', 'PAICO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('051106', 'SANTIAGO DE PAUCARAY', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('051107', 'SAN PEDRO DE LARCAY', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('051108', 'SORAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('051109', 'HUACAÑA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('051110', 'CHILCAYOC', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('051111', 'MORCOLLA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060000', 'CAJAMARCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060100', 'CAJAMARCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060101', 'CAJAMARCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060102', 'ASUNCION', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060103', 'COSPAN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060104', 'CHETILLA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060105', 'ENCAÑADA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060106', 'JESUS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060107', 'LOS BAÑOS DEL INCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060108', 'LLACANORA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060109', 'MAGDALENA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060110', 'MATARA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060111', 'NAMORA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060112', 'SAN JUAN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060200', 'CAJABAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060201', 'CAJABAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060202', 'CACHACHI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060203', 'CONDEBAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060204', 'SAYAPULLO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060205', 'SITACOCHA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060300', 'CELENDIN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060301', 'CELENDIN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060302', 'CORTEGANA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060303', 'CHUMUCH', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060304', 'HUASMIN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060305', 'JORGE CHAVEZ', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060306', 'JOSE GALVEZ', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060307', 'MIGUEL IGLESIAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060308', 'OXAMARCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060309', 'SOROCHUCO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060310', 'SUCRE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060311', 'UTCO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060312', 'LA LIBERTAD DE PALLAN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060400', 'CONTUMAZA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060401', 'CONTUMAZA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060402', 'CASCAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060403', 'CHILETE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060404', 'GUZMANGO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060405', 'SAN BENITO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060406', 'CUPISNIQUE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060407', 'TANTARICA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060408', 'YONAN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060409', 'SANTA CRUZ DE TOLED', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060500', 'CUTERVO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060501', 'CUTERVO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060502', 'CALLAYUC', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060503', 'CUJILLO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060504', 'CHOROS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060505', 'LA RAMADA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060506', 'PIMPINGOS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060507', 'QUEROCOTILLO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060508', 'SAN ANDRES DE CUTERVO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060509', 'SAN JUAN DE CUTERVO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060510', 'SAN LUIS DE LUCMA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060511', 'SANTA CRUZ', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060512', 'SANTO DOMINGO DE LA CAPILLA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060513', 'SANTO TOMAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060514', 'SOCOTA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060515', 'TORIBIO CASANOVA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060600', 'CHOTA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060601', 'CHOTA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060602', 'ANGUIA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060603', 'COCHABAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060604', 'CONCHAN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060605', 'CHADIN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060606', 'CHIGUIRIP', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060607', 'CHIMBAN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060608', 'HUAMBOS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060609', 'LAJAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060610', 'LLAMA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060611', 'MIRACOSTA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060612', 'PACCHA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060613', 'PION', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060614', 'QUEROCOTO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060615', 'TACABAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060616', 'TOCMOCHE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060617', 'SAN JUAN DE LICUPIS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060618', 'CHOROPAMPA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060619', 'CHALAMARCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060701', 'BAMBAMARCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060702', 'CHUGUR', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060703', 'HUALGAYOC', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060800', 'JAEN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060801', 'JAEN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060802', 'BELLAVISTA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060803', 'COLASAY', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060804', 'CHONTALI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060805', 'POMAHUACA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060806', 'PUCARA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060807', 'SALLIQUE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060808', 'SAN FELIPE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060809', 'SAN JOSE DEL ALTO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060810', 'SANTA ROSA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060811', 'LAS PIRIAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060812', 'HUABAL', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060900', 'SANTA CRUZ', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060901', 'SANTA CRUZ', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060902', 'CATACHE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060903', 'CHANCAYBAÑOS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060904', 'LA ESPERANZA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060905', 'NINABAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060906', 'PULAN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060907', 'SEXI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060908', 'UTICYACU', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060909', 'YAUYUCAN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060910', 'ANDABAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('060911', 'SAUCEPAMPA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('061000', 'SAN MIGUEL', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('061001', 'SAN MIGUEL', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('061002', 'CALQUIS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('061003', 'LA FLORIDA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('061004', 'LLAPA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('061005', 'NANCHOC', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('061006', 'NIEPOS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('061007', 'SAN GREGORIO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('061008', 'SAN SILVESTRE DE COCHAN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('061009', 'EL PRADO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('061010', 'UNION AGUA BLANCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('061011', 'TONGOD', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('061012', 'CATILLUC', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('061013', 'BOLIVAR', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('061101', 'SAN IGNACIO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('061102', 'CHIRINOS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('061103', 'HUARANGO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('061104', 'NAMBALLE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('061105', 'LA COIPA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('061106', 'SAN JOSE DE LOURDES', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('061107', 'TABACONAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('061200', 'SAN MARCOS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('061201', 'PEDRO GALVEZ', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('061202', 'ICHOCAN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('061203', 'GREGORIO PITA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('061204', 'JOSE MANUEL QUIROZ', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('061205', 'EDUARDO VILLANUEVA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('061206', 'JOSE SABOGAL', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('061207', 'CHANCAY', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('061300', 'SAN PABLO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('061301', 'SAN PABLO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('061302', 'SAN BERNARDINO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('061303', 'SAN LUIS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('061304', 'TUMBADEN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070000', 'CUSCO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070100', 'CUSCO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070101', 'CUSCO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070102', 'CCORCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070103', 'POROY', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070104', 'SAN JERONIMO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070105', 'SAN SEBASTIAN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070106', 'SANTIAGO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070107', 'SAYLLA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070108', 'WANCHAQ', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070200', 'ACOMAYO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070201', 'ACOMAYO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070202', 'ACOPIA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070203', 'ACOS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070204', 'POMACANCHI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070205', 'RONDOCAN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070206', 'SANGARARA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070207', 'MOSOC LLACTA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070300', 'ANTA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070301', 'ANTA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070302', 'CHINCHAYPUJIO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070303', 'HUAROCONDO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070304', 'LIMATAMBO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070305', 'MOLLEPATA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070306', 'PUCYURA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070307', 'ZURITE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070308', 'CACHIMAYO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070309', 'ANCAHUASI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070400', 'CALCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070401', 'CALCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070402', 'COYA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070403', 'LAMAY', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070404', 'LARES', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070405', 'PISAC', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070406', 'SAN SALVADOR', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070407', 'TARAY', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070408', 'YANATILE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070500', 'CANAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070501', 'YANAOCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070502', 'CHECCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070503', 'KUNTURKANKI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070504', 'LANGUI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070505', 'LAYO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070506', 'PAMPAMARCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070507', 'QUEHUE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070508', 'TUPAC AMARU', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070600', 'CANCHIS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070601', 'SICUANI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070602', 'COMBAPATA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070603', 'CHECACUPE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070604', 'MARANGANI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070605', 'PITUMARCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070606', 'SAN PABLO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070607', 'SAN PEDRO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070608', 'TINTA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070700', 'CHUMBIVILCAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070701', 'SANTO TOMAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070702', 'CAPACMARCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070703', 'COLQUEMARCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070704', 'CHAMACA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070705', 'LIVITACA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070706', 'LLUSCO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070707', 'QUIÑOTA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070708', 'VELILLE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070800', 'ESPINAR', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070801', 'ESPINAR', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070802', 'CONDOROMA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070803', 'COPORAQUE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070804', 'OCORURO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070805', 'PALLPATA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070806', 'PICHIGUA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070807', 'SUYCKUTAMBO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070808', 'ALTO PICHIGUA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070900', 'LA CONVENCION', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070901', 'SANTA ANA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070902', 'ECHARATE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070903', 'HUAYOPATA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070904', 'MARANURA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070905', 'OCOBAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070906', 'SANTA TERESA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070907', 'VILCABAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070908', 'QUELLOUNO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070909', 'KIMBIRI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070910', 'PICHARI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070911', 'INKAWASI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('070912', 'VILLA VIRGEN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('071000', 'PARURO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('071001', 'PARURO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('071002', 'ACCHA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('071003', 'CCAPI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('071004', 'COLCHA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('071005', 'HUANOQUITE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('071006', 'OMACHA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('071007', 'YAURISQUE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('071008', 'PACCARITAMBO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('071009', 'PILLPINTO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('071100', 'PAUCARTAMBO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('071101', 'PAUCARTAMBO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('071102', 'CAICAY', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('071103', 'COLQUEPATA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('071104', 'CHALLABAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('071105', 'KOSÑIPATA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('071106', 'HUANCARANI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('071200', 'QUISPICANCHI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('071201', 'URCOS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('071202', 'ANDAHUAYLILLAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('071203', 'CAMANTI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('071204', 'CCARHUAYO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('071205', 'CCATCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('071206', 'CUSIPATA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('071207', 'HUARO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('071208', 'LUCRE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('071209', 'MARCAPATA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('071210', 'OCONGATE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('071211', 'OROPESA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('071212', 'QUIQUIJANA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('071300', 'URUBAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('071301', 'URUBAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('071302', 'CHINCHERO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('071303', 'HUAYLLABAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('071304', 'MACHUPICCHU', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('071305', 'MARAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('071306', 'OLLANTAYTAMBO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('071307', 'YUCAY', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080000', 'HUANCAVELICA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080100', 'HUANCAVELICA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080101', 'HUANCAVELICA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080102', 'ACOBAMBILLA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080103', 'ACORIA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080104', 'CONAYCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080105', 'CUENCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080106', 'HUACHOCOLPA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080108', 'HUAYLLAHUARA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080109', 'IZCUCHACA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080110', 'LARIA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080111', 'MANTA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080112', 'MARISCAL CACERES', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080113', 'MOYA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080114', 'NUEVO OCCORO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080115', 'PALCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080116', 'PILCHACA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080117', 'VILCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080118', 'YAULI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080119', 'ASCENSION', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080120', 'HUANDO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080200', 'ACOBAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080201', 'ACOBAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080202', 'ANTA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080203', 'ANDABAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080204', 'CAJA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080205', 'MARCAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080206', 'PAUCARA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080207', 'POMACOCHA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080208', 'ROSARIO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080300', 'ANGARAES', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080301', 'LIRCAY', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080302', 'ANCHONGA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080303', 'CALLANMARCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080304', 'CONGALLA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080305', 'CHINCHO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080306', 'HUALLAY-GRANDE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080307', 'HUANCA-HUANCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080308', 'JULCAMARCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080309', 'SAN ANTONIO DE ANTAPARCO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080310', 'SANTO TOMAS DE PATA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080311', 'SECCLLA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080312', 'CCOCHACCASA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080400', 'CASTROVIRREYNA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080401', 'CASTROVIRREYNA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080402', 'ARMA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080403', 'AURAHUA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080405', 'CAPILLAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080406', 'COCAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080408', 'CHUPAMARCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080409', 'HUACHOS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080410', 'HUAMATAMBO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080414', 'MOLLEPAMPA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080422', 'SAN JUAN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080427', 'TANTARA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080428', 'TICRAPO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080429', 'SANTA ANA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080500', 'TAYACAJA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080501', 'PAMPAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080502', 'ACOSTAMBO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080503', 'ACRAQUIA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080504', 'AHUAYCHA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080506', 'COLCABAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080509', 'DANIEL HERNANDEZ', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080511', 'HUACHOCOLPA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080512', 'HUARIBAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080515', 'ÑAHUIMPUQUIO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080517', 'PAZOS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080518', 'QUISHUAR', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080519', 'SALCABAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080520', 'SAN MARCOS DE ROCCHAC', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080523', 'SURCUBAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080524', 'PACHAMARCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080525', 'TINTAY PUNCU', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080526', 'SALCAHUASI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080527', 'HUANDO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080529', 'ANDAYMARCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080600', 'HUAYTARA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080601', 'AYAVI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080602', 'CORDOVA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080603', 'HUAYACUNDO ARMA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080604', 'HUAYTARA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080605', 'LARAMARCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080606', 'OCOYO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080607', 'PILPICHACA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080608', 'QUERCO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080609', 'QUITO ARMA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080610', 'SAN ANTONIO DE CUSICANCHA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080611', 'SAN FRANCISCO DE SANGAYAICO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080612', 'SAN ISIDRO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080613', 'SANTIAGO DE CHOCORVOS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080614', 'SANTIAGO DE QUIRAHUARA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080615', 'SANTO DOMINGO DE CAPILLAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080616', 'TAMBO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080701', 'CHURCAMPA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080702', 'ANCO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080703', 'CHINCHIHUASI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080704', 'EL CARMEN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080705', 'LA MERCED', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080706', 'LOCROJA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080707', 'PAUCARBAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080708', 'SAN MIGUEL DE MAYOCC', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080709', 'SAN PEDRO DE CORIS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080710', 'PACHAMARCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('080711', 'COSME', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090000', 'HUANUCO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090100', 'HUANUCO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090101', 'HUANUCO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090102', 'CHINCHAO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090103', 'CHURUBAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090104', 'MARGOS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090105', 'QUISQUI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090106', 'SAN FRANCISCO DE CAYRAN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090107', 'SAN PEDRO DE CHAULAN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090108', 'SANTA MARIA DEL VALLE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090109', 'YARUMAYO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090110', 'AMARILIS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090111', 'PILLCO MARCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090112', 'YACUS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090200', 'AMBO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090201', 'AMBO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090202', 'CAYNA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090203', 'COLPAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090204', 'CONCHAMARCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090205', 'HUACAR', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090206', 'SAN FRANCISCO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090207', 'SAN RAFAEL', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090208', 'TOMAY-KICHWA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090300', 'DOS DE MAYO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090301', 'LA UNION', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090302', 'HUALLANCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090307', 'CHUQUIS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090312', 'MARIAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090314', 'PACHAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090316', 'QUIVILLA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090317', 'RIPAN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090321', 'SHUNQUI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090322', 'SILLAPATA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090323', 'YANAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090324', 'APARICIO POMARES (CHUPAN)', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090325', 'BAÑOS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090326', 'CAHUAC', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090327', 'CHACABAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090328', 'CHAVINILLO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090329', 'JACAS CHICO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090330', 'JESUS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090331', 'JIVIA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090332', 'OBAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090333', 'PAMPAMARCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090334', 'QUEROPALCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090335', 'RONDOS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090336', 'SAN FRANCISCO DE ASIS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090337', 'SAN MIGUEL DE CAURI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090400', 'HUAMALIES', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090401', 'LLATA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090402', 'ARANCAY', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090403', 'CHAVIN DE PARIARCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090404', 'JACAS GRANDE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090405', 'JIRCAN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090406', 'MIRAFLORES', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090407', 'MONZON', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090408', 'PUNCHAO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090409', 'PUÑOS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090410', 'SINGA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090411', 'TANTAMAYO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090501', 'HUACRACHUCO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090502', 'CHOLON', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090505', 'SAN BUENAVENTURA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090600', 'LEONCIO PRADO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090601', 'RUPA-RUPA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090602', 'DANIEL ALOMIA ROBLES', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090603', 'HERMILIO VALDIZAN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090604', 'LUYANDO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090605', 'MARIANO DAMASO BERAUN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090606', 'JOSE CRESPO Y CASTILLO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090608', 'CASTILLO GRANDE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090700', 'PACHITEA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090701', 'PANAO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090702', 'CHAGLLA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090704', 'MOLINO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090706', 'UMARI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090801', 'HONORIA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090802', 'PUERTO INCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090803', 'CODO DEL POZUZO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090804', 'TOURNAVISTA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090805', 'YUYAPICHIS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090901', 'HUACAYBAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090902', 'PINRA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090903', 'CANCHABAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('090904', 'COCHABAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('091001', 'JESUS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('091002', 'BAÑOS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('091003', 'SAN FRANCISCO DE ASIS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('091004', 'QUEROPALCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('091005', 'SAN MIGUEL DE CAURI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('091006', 'RONDOS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('091007', 'JIVIA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('091101', 'CHAVINILLO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('091102', 'APARICIO POMARES', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('091103', 'CAHUAC', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('091104', 'CHACABAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('091105', 'JACAS CHICO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('091106', 'OBAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('091107', 'PAMPAMARCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('091108', 'CHORAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('100000', 'ICA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('100100', 'ICA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('100101', 'ICA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('100102', 'LA TINGUIÑA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('100103', 'LOS AQUIJES', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('100104', 'PARCONA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('100105', 'PUEBLO NUEVO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('100106', 'SALAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('100107', 'SAN JOSE DE LOS MOLINOS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('100108', 'SAN JUAN BAUTISTA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('100109', 'SANTIAGO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('100110', 'SUBTANJALLA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('100111', 'YAUCA DEL ROSARIO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('100112', 'TATE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('100113', 'PACHACUTEC', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('100114', 'OCUCAJE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('100200', 'CHINCHA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('100201', 'CHINCHA ALTA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('100202', 'CHAVIN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('100203', 'CHINCHA BAJA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('100204', 'EL CARMEN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('100205', 'GROCIO PRADO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('100206', 'SAN PEDRO DE HUACARPANA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('100207', 'SUNAMPE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('100208', 'TAMBO DE MORA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('100209', 'ALTO LARAN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('100210', 'PUEBLO NUEVO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('100211', 'SAN JUAN DE YANAC', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('100300', 'NAZCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('100301', 'NAZCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('100302', 'CHANGUILLO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('100303', 'EL INGENIO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('100304', 'MARCONA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('100305', 'VISTA ALEGRE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('100400', 'PISCO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('100401', 'PISCO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('100402', 'HUANCANO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('100403', 'HUMAY', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('100404', 'INDEPENDENCIA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('100405', 'PARACAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('100406', 'SAN ANDRES', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('100407', 'SAN CLEMENTE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('100408', 'TUPAC AMARU INCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('100500', 'PALPA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('100501', 'PALPA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('100502', 'LLIPATA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('100503', 'RIO GRANDE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('100504', 'SANTA CRUZ', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('100505', 'TIBILLO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110000', 'JUNIN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110100', 'HUANCAYO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110101', 'HUANCAYO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110103', 'CARHUACALLANGA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110104', 'COLCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110105', 'CULLHUAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110106', 'CHACAPAMPA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110107', 'CHICCHE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110108', 'CHILCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110109', 'CHONGOS ALTO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110112', 'CHUPURO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110113', 'EL TAMBO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110114', 'HUACRAPUQUIO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110116', 'HUALHUAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110118', 'HUANCAN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110119', 'HUASICANCHA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110120', 'HUAYUCACHI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110121', 'INGENIO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110122', 'PARIAHUANCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110123', 'PILCOMAYO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110124', 'PUCARA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110125', 'QUICHUAY', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110126', 'QUILCAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110127', 'SAN AGUSTIN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110128', 'SAN JERONIMO DE TUNAN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110131', 'SANTO DOMINGO DE ACOBAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110132', 'SAÑO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110133', 'SAPALLANGA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110134', 'SICAYA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110136', 'VIQUES', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110137', 'HUACHOCOLPA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110200', 'CONCEPCION', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110201', 'CONCEPCION', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110202', 'ACO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110203', 'ANDAMARCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110204', 'COMAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110205', 'COCHAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110206', 'CHAMBARA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110207', 'HEROINAS TOLEDO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110208', 'MANZANARES', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110209', 'MARISCAL CASTILLA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110210', 'MATAHUASI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110211', 'MITO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110212', 'NUEVE DE JULIO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110213', 'ORCOTUNA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110214', 'SANTA ROSA DE OCOPA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110215', 'SAN JOSE DE QUERO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110300', 'JAUJA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110301', 'JAUJA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110302', 'ACOLLA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110303', 'APATA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110304', 'ATAURA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110305', 'CANCHAYLLO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110306', 'EL MANTARO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110307', 'HUAMALI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110308', 'HUARIPAMPA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110309', 'HUERTAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110310', 'JANJAILLO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110311', 'JULCAN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110312', 'LEONOR ORDOÑEZ', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110313', 'LLOCLLAPAMPA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110314', 'MARCO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110315', 'MASMA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110316', 'MOLINOS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110317', 'MONOBAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110318', 'MUQUI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110319', 'MUQUIYAUYO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110320', 'PACA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110321', 'PACCHA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110322', 'PANCAN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110323', 'PARCO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110324', 'POMACANCHA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110325', 'RICRAN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110326', 'SAN LORENZO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110327', 'SAN PEDRO DE CHUNAN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110328', 'SINCOS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110329', 'TUNAN MARCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110330', 'YAULI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110331', 'CURICACA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110332', 'MASMA CHICCHE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110333', 'SAUSA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110334', 'YAUYOS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110400', 'JUNIN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110401', 'JUNIN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110402', 'CARHUAMAYO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110403', 'ONDORES', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110404', 'ULCUMAYO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110500', 'TARMA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110501', 'TARMA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110502', 'ACOBAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110503', 'HUARICOLCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110504', 'HUASAHUASI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110505', 'LA UNION', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110506', 'PALCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110507', 'PALCAMAYO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110508', 'SAN PEDRO DE CAJAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110509', 'TAPO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110600', 'YAULI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110601', 'LA OROYA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110602', 'CHACAPALPA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110603', 'HUAY HUAY', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110604', 'MARCAPOMACOCHA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110605', 'MOROCOCHA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110606', 'PACCHA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110607', 'SANTA BARBARA DE CARHUACAYAN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110608', 'SUITUCANCHA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110609', 'YAULI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110610', 'SANTA ROSA DE SACCO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110701', 'SATIPO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110702', 'COVIRIALI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110703', 'LLAYLLA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110704', 'MAZAMARI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110705', 'PAMPA HERMOSA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110706', 'PANGOA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110707', 'RIO NEGRO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110708', 'RIO TAMBO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110800', 'CHANCHAMAYO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110801', 'CHANCHAMAYO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110802', 'SAN RAMON', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110803', 'VITOC', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110804', 'SAN LUIS DE SHUARO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110805', 'PICHANAQUI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110806', 'PERENE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110900', 'CHUPACA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110901', 'CHUPACA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110902', 'AHUAC', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110903', 'CHONGOS BAJO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110904', 'HUACHAC', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110905', 'HUAMANCACA CHICO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110906', 'SAN JUAN DE YSCOS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110907', 'SAN JUAN DE JARPA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110908', 'TRES DE DICIEMBRE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('110909', 'YANACANCHA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120000', 'LA LIBERTAD', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120100', 'TRUJILLO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120101', 'TRUJILLO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120102', 'HUANCHACO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120103', 'LAREDO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120104', 'MOCHE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120105', 'SALAVERRY', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120106', 'SIMBAL', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120107', 'VICTOR LARCO HERRERA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120109', 'POROTO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120110', 'EL PORVENIR', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120111', 'LA ESPERANZA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120112', 'FLORENCIA DE MORA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120200', 'BOLIVAR', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120201', 'BOLIVAR', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120202', 'BAMBAMARCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120203', 'CONDORMARCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120204', 'LONGOTEA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120205', 'UCUNCHA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120206', 'UCHUMARCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120300', 'SANCHEZ CARRION', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120301', 'HUAMACHUCO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120302', 'COCHORCO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120303', 'CURGOS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120304', 'CHUGAY', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120305', 'MARCABAL', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120306', 'SANAGORAN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120307', 'SARIN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120308', 'SARTIMBAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120400', 'OTUZCO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120401', 'OTUZCO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120402', 'AGALLPAMPA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120403', 'CHARAT', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120404', 'HUARANCHAL', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120405', 'LA CUESTA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120408', 'PARANDAY', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120409', 'SALPO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120410', 'SINSICAP', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120411', 'USQUIL', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120413', 'MACHE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120500', 'PACASMAYO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120501', 'SAN PEDRO DE LLOC', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120503', 'GUADALUPE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120504', 'JEQUETEPEQUE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120506', 'PACASMAYO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120508', 'SAN JOSE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120600', 'PATAZ', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120601', 'TAYABAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120602', 'BULDIBUYO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120603', 'CHILLIA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120604', 'HUAYLILLAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120605', 'HUANCASPATA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120606', 'HUAYO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120607', 'ONGON', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120608', 'PARCOY', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120609', 'PATAZ', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120610', 'PIAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120611', 'TAURIJA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120612', 'URPAY', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120613', 'SANTIAGO DE CHALLAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120700', 'SANTIAGO DE CHUCO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120701', 'SANTIAGO DE CHUCO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120702', 'CACHICADAN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120703', 'MOLLEBAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120704', 'MOLLEPATA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120705', 'QUIRUVILCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120706', 'SANTA CRUZ DE CHUCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120707', 'SITABAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120708', 'ANGASMARCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120800', 'ASCOPE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120801', 'ASCOPE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120802', 'CHICAMA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120803', 'CHOCOPE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120804', 'SANTIAGO DE CAO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120805', 'MAGDALENA DE CAO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120806', 'PAIJAN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120807', 'RAZURI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120808', 'CASA GRANDE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120900', 'CHEPEN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120901', 'CHEPEN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120902', 'PACANGA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('120903', 'PUEBLO NUEVO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('121001', 'JULCAN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('121002', 'CARABAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('121003', 'CALAMARCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('121004', 'HUASO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('121101', 'CASCAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('121102', 'LUCMA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('121103', 'MARMOT', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('121104', 'SAYAPULLO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('121201', 'VIRU', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('121202', 'CHAO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('121203', 'GUADALUPITO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('130000', 'LAMBAYEQUE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('130100', 'CHICLAYO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('130101', 'CHICLAYO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('130102', 'CHONGOYAPE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('130103', 'ETEN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('130104', 'ETEN PUERTO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('130105', 'LAGUNAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('130106', 'MONSEFU', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('130107', 'NUEVA ARICA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('130108', 'OYOTUN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('130109', 'PICSI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('130110', 'PIMENTEL', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('130111', 'REQUE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('130112', 'JOSE LEONARDO ORTIZ', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('130113', 'SANTA ROSA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('130114', 'SAÑA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('130115', 'LA VICTORIA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('130116', 'CAYALTI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('130117', 'PATAPO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('130118', 'POMALCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('130119', 'PUCALA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('130120', 'TUMAN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('130200', 'FERREÑAFE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('130201', 'FERREÑAFE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('130202', 'INCAHUASI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('130203', 'CAÑARIS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('130204', 'PITIPO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('130205', 'PUEBLO NUEVO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('130206', 'MANUEL ANTONIO MESONES MURO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('130300', 'LAMBAYEQUE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('130301', 'LAMBAYEQUE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('130302', 'CHOCHOPE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('130303', 'ILLIMO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('130304', 'JAYANCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('130305', 'MOCHUMI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('130306', 'MORROPE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('130307', 'MOTUPE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('130308', 'OLMOS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('130309', 'PACORA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('130310', 'SALAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('130311', 'SAN JOSE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('130312', 'TUCUME', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140000', 'LIMA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140100', 'LIMA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140101', 'LIMA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140102', 'ANCON', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140103', 'ATE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140104', 'BREÑA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140105', 'CARABAYLLO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140106', 'COMAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140107', 'CHACLACAYO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140108', 'CHORRILLOS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140109', 'LA VICTORIA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140110', 'LA MOLINA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140111', 'LINCE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140112', 'LURIGANCHO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140113', 'LURIN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140114', 'MAGDALENA DEL MAR', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140115', 'MIRAFLORES', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140116', 'PACHACAMAC', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140117', 'PUEBLO LIBRE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140118', 'PUCUSANA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140119', 'PUENTE PIEDRA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140120', 'PUNTA HERMOSA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140121', 'PUNTA NEGRA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140122', 'RIMAC', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140123', 'SAN BARTOLO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140124', 'SAN ISIDRO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140125', 'BARRANCO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140126', 'SAN MARTIN DE PORRES', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140127', 'SAN MIGUEL', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140128', 'SANTA MARIA DEL MAR', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140129', 'SANTA ROSA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140130', 'SANTIAGO DE SURCO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140131', 'SURQUILLO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140132', 'VILLA MARIA DEL TRIUNFO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140133', 'JESUS MARIA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140134', 'INDEPENDENCIA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140135', 'EL AGUSTINO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140136', 'SAN JUAN DE MIRAFLORES', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140137', 'SAN JUAN DE LURIGANCHO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140138', 'SAN LUIS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140139', 'CIENEGUILLA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140140', 'SAN BORJA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140141', 'VILLA EL SALVADOR', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140142', 'LOS OLIVOS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140143', 'SANTA ANITA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140200', 'CAJATAMBO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140201', 'CAJATAMBO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140205', 'COPA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140206', 'GORGOR', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140207', 'HUANCAPON', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140208', 'MANAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140300', 'CANTA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140301', 'CANTA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140302', 'ARAHUAY', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140303', 'HUAMANTANGA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140304', 'HUAROS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140305', 'LACHAQUI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140306', 'SAN BUENAVENTURA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140307', 'SANTA ROSA DE QUIVES', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140400', 'CAÑETE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140401', 'SAN VICENTE DE CAÑETE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140402', 'CALANGO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140403', 'CERRO AZUL', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140404', 'COAYLLO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140405', 'CHILCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140406', 'IMPERIAL', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140407', 'LUNAHUANA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140408', 'MALA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140409', 'NUEVO IMPERIAL', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140410', 'PACARAN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140411', 'QUILMANA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140412', 'SAN ANTONIO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140413', 'SAN LUIS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140414', 'SANTA CRUZ DE FLORES', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140415', 'ZUÑIGA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140416', 'ASIA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140500', 'HUAURA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140501', 'HUACHO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140502', 'AMBAR', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140504', 'CALETA DE CARQUIN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140505', 'CHECRAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140506', 'HUALMAY', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140507', 'HUAURA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140508', 'LEONCIO PRADO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140509', 'PACCHO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140511', 'SANTA LEONOR', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140512', 'SANTA MARIA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140513', 'SAYAN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140516', 'VEGUETA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140600', 'HUAROCHIRI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140601', 'MATUCANA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140602', 'ANTIOQUIA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140603', 'CALLAHUANCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140604', 'CARAMPOMA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140605', 'CASTA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140606', 'SAN JOSE DE LOS CHORRILLOS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140607', 'CHICLA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140608', 'HUANZA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140609', 'HUAROCHIRI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140610', 'LAHUAYTAMBO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140611', 'LANGA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140612', 'MARIATANA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140613', 'RICARDO PALMA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140614', 'SAN ANDRES DE TUPICOCHA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140615', 'SAN ANTONIO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140616', 'SAN BARTOLOME', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140617', 'SAN DAMIAN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140618', 'SANGALLAYA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140619', 'SAN JUAN DE TANTARANCHE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140620', 'SAN LORENZO DE QUINTI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140621', 'SAN MATEO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140622', 'SAN MATEO DE OTAO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140623', 'SAN PEDRO DE HUANCAYRE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140624', 'SANTA CRUZ DE COCACHACRA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140625', 'SANTA EULALIA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140626', 'SANTIAGO DE ANCHUCAYA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140627', 'SANTIAGO DE TUNA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140628', 'SANTO DOMINGO DE LOS OLLEROS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140629', 'SURCO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140630', 'HUACHUPAMPA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140631', 'LARAOS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140632', 'SAN JUAN DE IRIS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140700', 'YAUYOS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140701', 'YAUYOS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140702', 'ALIS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140703', 'ALLAUCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140704', 'AYAVIRI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140705', 'AZANGARO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140706', 'CACRA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140707', 'CARANIA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140708', 'COCHAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140709', 'COLONIA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140710', 'CHOCOS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140711', 'HUAMPARA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140712', 'HUANCAYA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140713', 'HUANGASCAR', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140714', 'HUANTAN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140715', 'HUAÑEC', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140716', 'LARAOS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140717', 'LINCHA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140718', 'MIRAFLORES', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140719', 'OMAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140720', 'QUINCHES', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140721', 'QUINOCAY', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140722', 'SAN JOAQUIN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140723', 'SAN PEDRO DE PILAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140724', 'TANTA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140725', 'TAURIPAMPA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140726', 'TUPE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140727', 'TOMAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140728', 'VIÑAC', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140729', 'VITIS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140730', 'HONGOS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140731', 'MADEAN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140732', 'PUTINZA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140733', 'CATAHUASI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140800', 'HUARAL', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140801', 'HUARAL', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140802', 'ATAVILLOS ALTO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140803', 'ATAVILLOS BAJO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140804', 'AUCALLAMA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140805', 'CHANCAY', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140806', 'IHUARI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140807', 'LAMPIAN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140808', 'PACARAOS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140809', 'SAN MIGUEL DE ACOS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140810', 'VEINTISIETE DE NOVIEMBRE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140811', 'SANTA CRUZ DE ANDAMARCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140812', 'SUMBILCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140900', 'BARRANCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140901', 'BARRANCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140902', 'PARAMONGA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140903', 'PATIVILCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140904', 'SUPE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('140905', 'SUPE PUERTO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('141000', 'OYON', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('141001', 'OYON', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('141002', 'NAVAN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('141003', 'CAUJUL', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('141004', 'ANDAJES', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('141005', 'PACHANGARA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('141006', 'COCHAMARCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150000', 'LORETO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150100', 'MAYNAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150101', 'IQUITOS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150102', 'ALTO NANAY', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150103', 'FERNANDO LORES', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150104', 'LAS AMAZONAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150105', 'MAZAN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150106', 'NAPO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150107', 'PUTUMAYO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150108', 'TORRES CAUSANA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150109', 'YAQUERANA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150110', 'INDIANA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150111', 'PUNCHANA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150112', 'BELEN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150113', 'SAN JUAN BAUTISTA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150114', 'TENIENTE MANUEL CLAVERO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150200', 'ALTO AMAZONAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150201', 'YURIMAGUAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150202', 'BALSAPUERTO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150203', 'BARRANCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150204', 'CAHUAPANAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150205', 'JEBEROS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150206', 'LAGUNAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150207', 'MANSERICHE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150208', 'MORONA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150209', 'PASTAZA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150210', 'SANTA CRUZ', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150211', 'TENIENTE CESAR LOPEZ ROJAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150300', 'LORETO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150301', 'NAUTA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150302', 'PARINARI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150303', 'TIGRE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150304', 'URARINAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150305', 'TROMPETEROS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150400', 'REQUENA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150401', 'REQUENA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150402', 'ALTO TAPICHE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150403', 'CAPELO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150404', 'EMILIO SAN MARTIN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150405', 'MAQUIA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150406', 'PUINAHUA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150407', 'SAQUENA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150408', 'SOPLIN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150409', 'TAPICHE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150410', 'JENARO HERRERA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150411', 'YAQUERANA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150500', 'UCAYALI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150501', 'CONTAMANA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150502', 'VARGAS GUERRA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150503', 'PADRE MARQUEZ', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150504', 'PAMPA HERMOSA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150505', 'SARAYACU', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150506', 'INAHUAYA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150600', 'MARISCAL RAMON CASTILLA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150601', 'RAMON CASTILLA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150602', 'PEBAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150603', 'YAVARI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150604', 'SAN PABLO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150701', 'BARRANCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150702', 'ANDOAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150703', 'CAHUAPANAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150704', 'MANSERICHE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150705', 'MORONA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150706', 'PASTAZA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150801', 'MASISEA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150901', 'PUTUMAYO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150902', 'ROSA PANDURO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('150903', 'TENIENTE MANUEL CLAVERO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('160000', 'MADRE DE DIOS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('160100', 'TAMBOPATA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('160101', 'TAMBOPATA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('160102', 'INAMBARI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('160103', 'LAS PIEDRAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('160104', 'LABERINTO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('160200', 'MANU', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('160201', 'MANU', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('160202', 'FITZCARRALD', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('160203', 'MADRE DE DIOS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('160204', 'HUEPETUHE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('160301', 'IÑAPARI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('160302', 'IBERIA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('160303', 'TAHUAMANU', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('170000', 'MOQUEGUA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('170100', 'MARISCAL NIETO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('170101', 'MOQUEGUA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('170102', 'CARUMAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('170103', 'CUCHUMBAYA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('170104', 'SAN CRISTOBAL', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('170105', 'TORATA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('170106', 'SAMEGUA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('170200', 'GENERAL SANCHEZ CERRO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('170201', 'OMATE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('170202', 'COALAQUE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('170203', 'CHOJATA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('170204', 'ICHUÑA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('170205', 'LA CAPILLA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('170206', 'LLOQUE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('170207', 'MATALAQUE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('170208', 'PUQUINA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('170209', 'QUINISTAQUILLAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('170210', 'UBINAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('170211', 'YUNGA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('170300', 'ILO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('170301', 'ILO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('170302', 'EL ALGARROBAL', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('170303', 'PACOCHA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('180000', 'PASCO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('180100', 'PASCO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('180101', 'CHAUPIMARCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('180103', 'HUACHON', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('180104', 'HUARIACA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('180105', 'HUAYLLAY', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('180106', 'NINACACA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('180107', 'PALLANCHACRA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('180108', 'PAUCARTAMBO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('180109', 'SAN FCO DE ASIS DE YARUSYACAN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('180110', 'SIMON BOLIVAR', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('180111', 'TICLACAYAN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('180112', 'TINYAHUARCO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('180113', 'VICCO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('180114', 'YANACANCHA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('180200', 'DANIEL ALCIDES CARRION', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('180201', 'YANAHUANCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('180202', 'CHACAYAN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('180203', 'GOYLLARISQUIZGA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('180204', 'PAUCAR', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('180205', 'SAN PEDRO DE PILLAO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('180206', 'SANTA ANA DE TUSI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('180207', 'TAPUC', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('180208', 'VILCABAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('180300', 'OXAPAMPA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('180301', 'OXAPAMPA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('180302', 'CHONTABAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('180303', 'HUANCABAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('180304', 'PUERTO BERMUDEZ', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('180305', 'VILLA RICA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('180306', 'POZUZO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('180307', 'PALCAZU', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('180308', 'CONSTITUCION', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190000', 'PIURA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190100', 'PIURA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190101', 'PIURA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190103', 'CASTILLA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190104', 'CATACAOS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190105', 'LA ARENA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190106', 'LA UNION', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190107', 'LAS LOMAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190109', 'TAMBO GRANDE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190113', 'CURA MORI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190114', 'EL TALLAN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190115', 'VEINTISEIS DE OCTUBRE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190200', 'AYABACA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190201', 'AYABACA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190202', 'FRIAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190203', 'LAGUNAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190204', 'MONTERO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190205', 'PACAIPAMPA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190206', 'SAPILLICA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190207', 'SICCHEZ', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190208', 'SUYO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190209', 'JILILI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190210', 'PAIMAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190300', 'HUANCABAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190301', 'HUANCABAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190302', 'CANCHAQUE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190303', 'HUARMACA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190304', 'SONDOR', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190305', 'SONDORILLO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190306', 'EL CARMEN DE LA FRONTERA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190307', 'SAN MIGUEL DE EL FAIQUE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190308', 'LALAQUIZ', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190400', 'MORROPON', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190401', 'CHULUCANAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190402', 'BUENOS AIRES', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190403', 'CHALACO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190404', 'MORROPON', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190405', 'SALITRAL', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190406', 'SANTA CATALINA DE MOSSA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190407', 'SANTO DOMINGO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190408', 'LA MATANZA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190409', 'YAMANGO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190410', 'SAN JUAN DE BIGOTE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190500', 'PAITA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190501', 'PAITA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190502', 'AMOTAPE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190503', 'ARENAL', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190504', 'LA HUACA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190505', 'COLAN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190506', 'TAMARINDO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190507', 'VICHAYAL', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190600', 'SULLANA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190601', 'SULLANA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190602', 'BELLAVISTA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190603', 'LANCONES', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190604', 'MARCAVELICA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190605', 'MIGUEL CHECA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190606', 'QUERECOTILLO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190607', 'SALITRAL', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190608', 'IGNACIO ESCUDERO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190700', 'TALARA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190701', 'PARIÑAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190702', 'EL ALTO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190703', 'LA BREA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190704', 'LOBITOS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190705', 'MANCORA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190706', 'LOS ORGANOS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190801', 'SECHURA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190802', 'VICE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190803', 'BERNAL', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190804', 'BELLAVISTA DE LA UNION', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190805', 'CRISTO NOS VALGA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('190806', 'RINCONADA-LLICUAR', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200000', 'PUNO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200100', 'PUNO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200101', 'PUNO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200102', 'ACORA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200103', 'ATUNCOLLA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200104', 'CAPACHICA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200105', 'COATA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200106', 'CHUCUITO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200107', 'HUATA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200108', 'MAÑAZO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200109', 'PAUCARCOLLA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200110', 'PICHACANI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200111', 'SAN ANTONIO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200112', 'TIQUILLACA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200113', 'VILQUE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200114', 'PLATERIA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200115', 'AMANTANI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200200', 'AZANGARO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200201', 'AZANGARO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200202', 'ACHAYA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200203', 'ARAPA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200204', 'ASILLO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200205', 'CAMINACA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200206', 'CHUPA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200207', 'JOSE DOMINGO CHOQUEHUANCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200208', 'MUÑANI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200210', 'POTONI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200212', 'SAMAN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200213', 'SAN ANTON', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200214', 'SAN JOSE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200215', 'SAN JUAN DE SALINAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200216', 'SANTIAGO DE PUPUJA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200217', 'TIRAPATA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200300', 'CARABAYA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200301', 'MACUSANI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200302', 'AJOYANI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200303', 'AYAPATA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200304', 'COASA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200305', 'CORANI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200306', 'CRUCERO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200307', 'ITUATA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200308', 'OLLACHEA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200309', 'SAN GABAN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200310', 'USICAYOS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200400', 'CHUCUITO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200401', 'JULI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200402', 'DESAGUADERO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200403', 'HUACULLANI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200406', 'PISACOMA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200407', 'POMATA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200410', 'ZEPITA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200412', 'KELLUYO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200500', 'HUANCANE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200501', 'HUANCANE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200502', 'COJATA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200504', 'INCHUPALLA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200506', 'PUSI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200507', 'ROSASPATA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200508', 'TARACO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200509', 'VILQUE CHICO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200511', 'HUATASANI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200600', 'LAMPA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200601', 'LAMPA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200602', 'CABANILLA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200603', 'CALAPUJA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200604', 'NICASIO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200605', 'OCUVIRI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200606', 'PALCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200607', 'PARATIA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200608', 'PUCARA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200609', 'SANTA LUCIA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200610', 'VILAVILA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200701', 'AYAVIRI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200702', 'ANTAUTA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200703', 'CUPI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200704', 'LLALLI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200705', 'MACARI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200706', 'NUÑOA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200707', 'ORURILLO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200708', 'SANTA ROSA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200709', 'UMACHIRI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200800', 'SANDIA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200801', 'SANDIA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200803', 'CUYOCUYO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200804', 'LIMBANI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200805', 'PHARA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200806', 'PATAMBUCO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200807', 'QUIACA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200808', 'SAN JUAN DEL ORO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200810', 'YANAHUAYA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200811', 'ALTO INAMBARI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200812', 'SAN PEDRO DE PUTINA PUNCO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200900', 'SAN ROMAN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200901', 'JULIACA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200902', 'CABANA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200903', 'CABANILLAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('200904', 'CARACOTO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('201000', 'YUNGUYO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('201001', 'YUNGUYO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('201002', 'UNICACHI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('201003', 'ANAPIA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('201004', 'COPANI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('201005', 'CUTURAPI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('201006', 'OLLARAYA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('201007', 'TINICACHI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('201101', 'PUTINA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('201102', 'PEDRO VILCA APAZA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('201103', 'QUILCAPUNCU', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('201104', 'ANANEA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('201105', 'SINA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('201201', 'ILAVE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('201202', 'PILCUYO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('201203', 'SANTA ROSA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('201204', 'CAPASO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('201205', 'CONDURIRI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('201301', 'MOHO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('201302', 'CONIMA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('201303', 'TILALI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('201304', 'HUAYRAPATA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210000', 'SAN MARTIN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210100', 'MOYOBAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210101', 'MOYOBAMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210102', 'CALZADA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210103', 'HABANA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210104', 'JEPELACIO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210105', 'SORITOR', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210106', 'YANTALO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210200', 'HUALLAGA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210201', 'SAPOSOA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210202', 'PISCOYACU', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210203', 'SACANCHE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210204', 'TINGO DE SAPOSOA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210205', 'ALTO SAPOSOA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210206', 'EL ESLABON', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210300', 'LAMAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210301', 'LAMAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210303', 'BARRANQUITA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210304', 'CAYNARACHI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210305', 'CUÑUMBUQUI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210306', 'PINTO RECODO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210307', 'RUMISAPA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210311', 'SHANAO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210313', 'TABALOSOS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210314', 'ZAPATERO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210315', 'ALONSO DE ALVARADO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210316', 'SAN ROQUE DE CUMBAZA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210400', 'MARISCAL CACERES', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210401', 'JUANJUI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210402', 'CAMPANILLA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210403', 'HUICUNGO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210404', 'PACHIZA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210405', 'PAJARILLO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210500', 'RIOJA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210501', 'RIOJA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210502', 'POSIC', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210503', 'YORONGOS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210504', 'YURACYACU', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210505', 'NUEVA CAJAMARCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210506', 'ELIAS SOPLIN VARGAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210507', 'SAN FERNANDO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210508', 'PARDO MIGUEL', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210509', 'AWAJUN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210600', 'SAN MARTIN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210601', 'TARAPOTO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210602', 'ALBERTO LEVEAU', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210604', 'CACATACHI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210606', 'CHAZUTA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210607', 'CHIPURANA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210608', 'EL PORVENIR', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210609', 'HUIMBAYOC', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210610', 'JUAN GUERRA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210611', 'MORALES', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210612', 'PAPAPLAYA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210616', 'SAN ANTONIO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210619', 'SAUCE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210620', 'SHAPAJA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210621', 'LA BANDA DE SHILCAYO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210700', 'BELLAVISTA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210701', 'BELLAVISTA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210702', 'SAN RAFAEL', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210703', 'SAN PABLO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210704', 'ALTO BIAVO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210705', 'HUALLAGA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210706', 'BAJO BIAVO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210801', 'TOCACHE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210802', 'NUEVO PROGRESO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210803', 'POLVORA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210804', 'SHUNTE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210805', 'UCHIZA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210901', 'PICOTA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210902', 'BUENOS AIRES', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210903', 'CASPIZAPA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210904', 'PILLUANA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210905', 'PUCACACA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210906', 'SAN CRISTOBAL', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210907', 'SAN HILARION', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210908', 'TINGO DE PONASA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210909', 'TRES UNIDOS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('210910', 'SHAMBOYACU', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('211001', 'SAN JOSE DE SISA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('211002', 'AGUA BLANCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('211003', 'SHATOJA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('211004', 'SAN MARTIN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('211005', 'SANTA ROSA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('220000', 'TACNA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('220100', 'TACNA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('220101', 'TACNA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('220102', 'CALANA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('220104', 'INCLAN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('220107', 'PACHIA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('220108', 'PALCA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('220109', 'POCOLLAY', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('220110', 'SAMA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('220111', 'ALTO DE LA ALIANZA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('220112', 'CIUDAD NUEVA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('220113', 'CORONEL GREGORIO ALBARRACIN L.', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('220200', 'TARATA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('220201', 'TARATA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('220205', 'HEROES ALBARRACIN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('220206', 'ESTIQUE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('220207', 'ESTIQUE PAMPA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('220210', 'SITAJARA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('220211', 'SUSAPAYA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('220212', 'TARUCACHI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('220213', 'TICACO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('220301', 'LOCUMBA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('220302', 'ITE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('220303', 'ILABAYA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('220401', 'CANDARAVE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('220402', 'CAIRANI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('220403', 'CURIBAYA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('220404', 'HUANUARA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('220405', 'QUILAHUANI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('220406', 'CAMILACA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('230000', 'TUMBES', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('230100', 'TUMBES', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('230101', 'TUMBES', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('230102', 'CORRALES', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('230103', 'LA CRUZ', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('230104', 'PAMPAS DE HOSPITAL', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('230105', 'SAN JACINTO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('230106', 'SAN JUAN DE LA VIRGEN', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('230200', 'CONTRALMIRANTE VILLAR', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('230201', 'ZORRITOS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('230202', 'CASITAS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('230203', 'CANOAS DE PUNTAL SAL', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('230301', 'ZARUMILLA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('230302', 'MATAPALO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('230303', 'PAPAYAL', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('230304', 'AGUAS VERDES', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('240000', 'CALLAO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('240100', 'CALLAO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('240101', 'CALLAO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('240102', 'BELLAVISTA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('240103', 'LA PUNTA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('240104', 'CARMEN DE LA LEGUA-REYNOSO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('240105', 'LA PERLA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('240106', 'VENTANILLA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('240107', 'MI PERU', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('250000', 'UCAYALI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('250100', 'CORONEL PORTILLO', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('250101', 'CALLERIA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('250102', 'YARINACOCHA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('250103', 'MASISEA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('250104', 'CAMPOVERDE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('250105', 'IPARIA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('250106', 'NUEVA REQUENA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('250107', 'MANANTAY', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('250201', 'PADRE ABAD', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('250202', 'IRAZOLA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('250203', 'CURIMANA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('250204', 'NESHUYA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('250205', 'ALEXANDER VON HUMBOLDT', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('250300', 'ATALAYA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('250301', 'RAIMONDI', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('250302', 'TAHUANIA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('250303', 'YURUA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('250304', 'SEPAHUA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('250401', 'PURUS', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('300101', 'IQUIQUE', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('300102', 'ARICA', '', true, 1, NOW());
INSERT INTO public.ubigeo
(sidubigeo, snombre, scodanterior, bactivo, nidsesion, dfechahoraaud)
VALUES('300103', 'TARAPACA', '', true, 1, NOW());



