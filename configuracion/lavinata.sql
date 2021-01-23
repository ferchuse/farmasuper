/*
 Navicat MySQL Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50516
 Source Host           : localhost:3306
 Source Schema         : lavinata

 Target Server Type    : MySQL
 Target Server Version : 50516
 File Encoding         : 65001

 Date: 11/12/2020 15:57:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for almacenes
-- ----------------------------
DROP TABLE IF EXISTS `almacenes`;
CREATE TABLE `almacenes`  (
  `id_almacen` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion_almacen` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_almacen`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of almacenes
-- ----------------------------

-- ----------------------------
-- Table structure for arqueo
-- ----------------------------
DROP TABLE IF EXISTS `arqueo`;
CREATE TABLE `arqueo`  (
  `id_arqueo` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuarios` int(11) NOT NULL,
  `id_turnos` int(11) NOT NULL,
  `fecha_arqueo` date NULL DEFAULT NULL,
  `hora_arqueo` time NULL DEFAULT NULL,
  `importe` decimal(10, 2) NULL DEFAULT NULL,
  `1000` decimal(10, 0) NULL DEFAULT NULL,
  `500` decimal(10, 0) NULL DEFAULT NULL,
  `200` decimal(10, 0) NULL DEFAULT NULL,
  `100` decimal(10, 0) NULL DEFAULT NULL,
  `50` decimal(10, 0) NULL DEFAULT NULL,
  `20` decimal(10, 0) NULL DEFAULT NULL,
  `10` decimal(10, 0) NULL DEFAULT NULL,
  `5` decimal(10, 0) NULL DEFAULT NULL,
  `2` decimal(10, 0) NULL DEFAULT NULL,
  `1` decimal(10, 0) NULL DEFAULT NULL,
  `0.1` decimal(10, 0) NULL DEFAULT NULL,
  `0.5` decimal(10, 0) NULL DEFAULT NULL,
  `0.2` decimal(10, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_arqueo`, `id_usuarios`, `id_turnos`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of arqueo
-- ----------------------------

-- ----------------------------
-- Table structure for catalogo_egresos
-- ----------------------------
DROP TABLE IF EXISTS `catalogo_egresos`;
CREATE TABLE `catalogo_egresos`  (
  `id_catalogo_egresos` int(10) NOT NULL AUTO_INCREMENT,
  `tipo_egreso` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_catalogo_egresos`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of catalogo_egresos
-- ----------------------------
INSERT INTO `catalogo_egresos` VALUES (1, 'PROVEEDORES');
INSERT INTO `catalogo_egresos` VALUES (2, 'BASURA');
INSERT INTO `catalogo_egresos` VALUES (3, 'LIMPIEZA');
INSERT INTO `catalogo_egresos` VALUES (4, 'NOMINA');

-- ----------------------------
-- Table structure for clientes
-- ----------------------------
DROP TABLE IF EXISTS `clientes`;
CREATE TABLE `clientes`  (
  `id_clientes` int(11) NOT NULL AUTO_INCREMENT,
  `alias_clientes` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `direccion` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `correo_clientes` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `telefono` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_vendedores` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `razon_social_clientes` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `rfc_clientes` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_clientes`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of clientes
-- ----------------------------

-- ----------------------------
-- Table structure for compras
-- ----------------------------
DROP TABLE IF EXISTS `compras`;
CREATE TABLE `compras`  (
  `id_compras` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuarios` int(11) NULL DEFAULT NULL,
  `fecha_compras` datetime NULL DEFAULT NULL,
  `total_compras` float(11, 2) NULL DEFAULT NULL,
  `motivocancelacion_ventas` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `estatus_compras` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `articulos_ventas` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `id_proveedores` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id_compras`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of compras
-- ----------------------------
INSERT INTO `compras` VALUES (1, 1, '2020-08-19 12:09:12', 11.90, NULL, 'PENDIENTE', NULL, 2);

-- ----------------------------
-- Table structure for compras_detalle
-- ----------------------------
DROP TABLE IF EXISTS `compras_detalle`;
CREATE TABLE `compras_detalle`  (
  `id_compras_detalle` int(11) NOT NULL AUTO_INCREMENT,
  `id_compras` int(11) NULL DEFAULT NULL,
  `id_productos` int(11) NULL DEFAULT NULL,
  `unidad_productos` varchar(10) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `cantidad` float(10, 0) NULL DEFAULT NULL,
  `importe` decimal(10, 2) NULL DEFAULT NULL,
  `descripcion` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `precio` float(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id_compras_detalle`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of compras_detalle
-- ----------------------------
INSERT INTO `compras_detalle` VALUES (1, 1, 168, '', 1, 4.50, 'CARTON DE GREDA CHICA', 4.50);
INSERT INTO `compras_detalle` VALUES (2, 1, 292, '', 1, 7.40, 'ACUARELA DE 6 PAST', 7.40);

-- ----------------------------
-- Table structure for departamentos
-- ----------------------------
DROP TABLE IF EXISTS `departamentos`;
CREATE TABLE `departamentos`  (
  `id_departamentos` int(10) NOT NULL AUTO_INCREMENT,
  `nombre_departamentos` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_departamentos`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of departamentos
-- ----------------------------
INSERT INTO `departamentos` VALUES (1, 'Sin Departamento');

-- ----------------------------
-- Table structure for egresos
-- ----------------------------
DROP TABLE IF EXISTS `egresos`;
CREATE TABLE `egresos`  (
  `id_egresos` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion_egresos` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `cantidad_egresos` int(11) NULL DEFAULT NULL,
  `area_egresos` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `fecha_egresos` date NULL DEFAULT NULL,
  `hora_egresos` time NULL DEFAULT NULL,
  `estatus_egresos` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT 'ACTIVO',
  `motivocancelacion_egresos` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `id_turnos` int(10) NULL DEFAULT NULL,
  `id_catalogo_egresos` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_egresos`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of egresos
-- ----------------------------

-- ----------------------------
-- Table structure for empresas
-- ----------------------------
DROP TABLE IF EXISTS `empresas`;
CREATE TABLE `empresas`  (
  `id_empresas` int(10) NOT NULL AUTO_INCREMENT,
  `nombre_empresas` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `logotipo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `direccion` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `rfc` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `telefono` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_empresas`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of empresas
-- ----------------------------
INSERT INTO `empresas` VALUES (1, 'La Vinata', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for historial_precios
-- ----------------------------
DROP TABLE IF EXISTS `historial_precios`;
CREATE TABLE `historial_precios`  (
  `id_productos` int(10) NULL DEFAULT NULL,
  `fecha_precio` date NULL DEFAULT NULL,
  `precio_anterior` decimal(10, 2) NULL DEFAULT NULL,
  `precio_nuevo` decimal(10, 2) NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of historial_precios
-- ----------------------------

-- ----------------------------
-- Table structure for impuestos
-- ----------------------------
DROP TABLE IF EXISTS `impuestos`;
CREATE TABLE `impuestos`  (
  `id_facturas_detalle` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `id_impuesto` int(11) NOT NULL AUTO_INCREMENT,
  `impuesto` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `tipo` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `base` decimal(10, 2) NULL DEFAULT NULL,
  `tipo_factor` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `tasa` decimal(10, 6) NULL DEFAULT NULL,
  `importe_impuesto` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id_impuesto`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of impuestos
-- ----------------------------

-- ----------------------------
-- Table structure for ingresos
-- ----------------------------
DROP TABLE IF EXISTS `ingresos`;
CREATE TABLE `ingresos`  (
  `id_ingresos` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion_ingresos` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `cantidad_ingresos` int(11) NULL DEFAULT NULL,
  `area_ingresos` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `fecha_ingresos` date NULL DEFAULT NULL,
  `hora_ingresos` time NULL DEFAULT NULL,
  `estatus_ingresos` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT 'ACTIVO',
  `motivocancelacion_ingresos` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `turno` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `id_turnos` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_ingresos`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ingresos
-- ----------------------------

-- ----------------------------
-- Table structure for paginas
-- ----------------------------
DROP TABLE IF EXISTS `paginas`;
CREATE TABLE `paginas`  (
  `id_paginas` int(255) NOT NULL AUTO_INCREMENT,
  `nombre_paginas` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `url_paginas` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `categoria_paginas` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_paginas`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 37 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of paginas
-- ----------------------------
INSERT INTO `paginas` VALUES (1, 'Ventas', 'index.php', 'Ventas');
INSERT INTO `paginas` VALUES (2, 'Compras', 'compras/compras_lista.php', 'Compras');
INSERT INTO `paginas` VALUES (3, 'Ventas Por DÃ­a', 'reportes/index.php', 'Reportes');
INSERT INTO `paginas` VALUES (5, 'Egresos', 'reportes/egresos.php', 'Reportes');
INSERT INTO `paginas` VALUES (6, 'Movimientos', 'inventarios/movimientos.php', 'Reportes');
INSERT INTO `paginas` VALUES (7, 'Nuevo ', 'productos/editar.php?accion=nuevo', 'Productos');
INSERT INTO `paginas` VALUES (8, 'Editar ', 'productos/editar.php?accion=editar', 'Productos');
INSERT INTO `paginas` VALUES (9, 'CatÃ¡logo', 'productos/catalogo.php', 'Productos');
INSERT INTO `paginas` VALUES (10, 'Departamentos', 'departamentos.php', 'CatÃ¡logos');
INSERT INTO `paginas` VALUES (11, 'Proveedores', 'proveedores.php', 'CatÃ¡logos');
INSERT INTO `paginas` VALUES (12, 'Egresos', 'egresos.php', 'CatÃ¡logos');
INSERT INTO `paginas` VALUES (13, 'Corte de Caja', 'corte/resumen.php', 'Corte');
INSERT INTO `paginas` VALUES (14, 'Usuarios', 'usuarios/index.php', 'Usuarios');

-- ----------------------------
-- Table structure for permisos
-- ----------------------------
DROP TABLE IF EXISTS `permisos`;
CREATE TABLE `permisos`  (
  `id_usuarios` int(10) NOT NULL,
  `id_paginas` int(10) NOT NULL,
  `permiso` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '0',
  PRIMARY KEY (`id_usuarios`, `id_paginas`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permisos
-- ----------------------------
INSERT INTO `permisos` VALUES (1, 1, 'Supervisor');
INSERT INTO `permisos` VALUES (1, 2, 'Supervisor');
INSERT INTO `permisos` VALUES (1, 3, 'Supervisor');
INSERT INTO `permisos` VALUES (1, 5, 'Supervisor');
INSERT INTO `permisos` VALUES (1, 6, 'Supervisor');
INSERT INTO `permisos` VALUES (1, 7, 'Supervisor');
INSERT INTO `permisos` VALUES (1, 8, 'Supervisor');
INSERT INTO `permisos` VALUES (1, 9, 'Supervisor');
INSERT INTO `permisos` VALUES (1, 13, 'Supervisor');
INSERT INTO `permisos` VALUES (1, 14, 'Supervisor');
INSERT INTO `permisos` VALUES (2, 1, 'Escritura');
INSERT INTO `permisos` VALUES (2, 2, 'Sin Acceso');
INSERT INTO `permisos` VALUES (2, 3, 'Sin Acceso');
INSERT INTO `permisos` VALUES (2, 5, 'Sin Acceso');
INSERT INTO `permisos` VALUES (2, 6, 'Sin Acceso');
INSERT INTO `permisos` VALUES (2, 7, 'Sin Acceso');
INSERT INTO `permisos` VALUES (2, 8, 'Sin Acceso');
INSERT INTO `permisos` VALUES (2, 9, 'Sin Acceso');
INSERT INTO `permisos` VALUES (2, 10, 'Sin Acceso');
INSERT INTO `permisos` VALUES (2, 11, 'Sin Acceso');
INSERT INTO `permisos` VALUES (2, 12, 'Sin Acceso');
INSERT INTO `permisos` VALUES (2, 13, 'Escritura');
INSERT INTO `permisos` VALUES (2, 14, 'Sin Acceso');
INSERT INTO `permisos` VALUES (1, 10, '');
INSERT INTO `permisos` VALUES (1, 11, '');
INSERT INTO `permisos` VALUES (1, 12, '');

-- ----------------------------
-- Table structure for productos
-- ----------------------------
DROP TABLE IF EXISTS `productos`;
CREATE TABLE `productos`  (
  `id_productos` int(10) NOT NULL AUTO_INCREMENT,
  `codigo_productos` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'TRIAL',
  `descripcion_productos` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'TRIAL',
  `costo_proveedor` decimal(10, 2) NULL DEFAULT 0.00,
  `costo_mayoreo` decimal(10, 2) NULL DEFAULT NULL,
  `unidad_productos` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'PZA' COMMENT 'TRIAL',
  `ganancia_menudeo_porc` float(10, 2) NULL DEFAULT 0.00 COMMENT 'TRIAL',
  `precio_mayoreo` decimal(10, 2) NULL DEFAULT 0.00 COMMENT 'TRIAL',
  `precio_menudeo` decimal(10, 2) NULL DEFAULT 0.00 COMMENT 'TRIAL',
  `existencia_productos` float(10, 0) NULL DEFAULT 0 COMMENT 'TRIAL',
  `min_productos` float(10, 0) NULL DEFAULT 1 COMMENT 'TRIAL',
  `id_departamentos` int(10) NULL DEFAULT NULL,
  `piezas` int(10) NULL DEFAULT 1,
  `usa_inventario` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'SI',
  PRIMARY KEY (`id_productos`) USING BTREE,
  FULLTEXT INDEX `descripcion`(`descripcion_productos`)
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'TRIAL' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of productos
-- ----------------------------
INSERT INTO `productos` VALUES (1, '12345', 'PRODUCTO PRUEBA', 10.00, 100.00, 'PZA', 25.00, 0.00, 12.50, 8, 0, 0, 10, 'SI');

-- ----------------------------
-- Table structure for proveedores
-- ----------------------------
DROP TABLE IF EXISTS `proveedores`;
CREATE TABLE `proveedores`  (
  `id_proveedores` int(255) NOT NULL AUTO_INCREMENT,
  `nombre_proveedores` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_proveedores`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of proveedores
-- ----------------------------
INSERT INTO `proveedores` VALUES (1, 'DISTRIBUIDORA PAPELERA');
INSERT INTO `proveedores` VALUES (2, 'DEDEDE');

-- ----------------------------
-- Table structure for turnos
-- ----------------------------
DROP TABLE IF EXISTS `turnos`;
CREATE TABLE `turnos`  (
  `id_turnos` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_inicio_turnos` date NULL DEFAULT NULL,
  `fecha_cierre_turnos` date NULL DEFAULT NULL,
  `hora_inicios` time NULL DEFAULT NULL,
  `hora_fin` time NULL DEFAULT NULL,
  `saldo_final` decimal(10, 2) NULL DEFAULT NULL,
  `efectivo_inicial` decimal(10, 2) NULL DEFAULT NULL,
  `id_usuarios` int(11) NULL DEFAULT NULL,
  `cerrado` tinyint(1) NULL DEFAULT 0,
  PRIMARY KEY (`id_turnos`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of turnos
-- ----------------------------
INSERT INTO `turnos` VALUES (1, '2020-12-09', NULL, '20:54:27', NULL, NULL, 0.00, NULL, 0);

-- ----------------------------
-- Table structure for unidades
-- ----------------------------
DROP TABLE IF EXISTS `unidades`;
CREATE TABLE `unidades`  (
  `id_unidades` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `nombre_unidades` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `descripcion_unidades` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of unidades
-- ----------------------------
INSERT INTO `unidades` VALUES ('18', 'Tambor de cincuenta y cinco galones (EUA)', NULL);
INSERT INTO `unidades` VALUES ('19', 'CamiÃƒÂ³n cisterna', NULL);
INSERT INTO `unidades` VALUES ('26', 'Tonelada real', NULL);
INSERT INTO `unidades` VALUES ('29', 'Libra por mil pies cuadrados', NULL);
INSERT INTO `unidades` VALUES ('30', 'DÃƒÂ­a de potencia de caballos por tonelada mÃƒÂ©trica de aire seco', NULL);
INSERT INTO `unidades` VALUES ('31', 'Pescar', NULL);
INSERT INTO `unidades` VALUES ('32', 'Kilogramo por tonelada mÃƒÂ©trica seca del aire', NULL);
INSERT INTO `unidades` VALUES ('36', 'Pie cÃƒÂºbico por minuto por pie cuadrado', 'Se requiere factor de conversiÃƒÂ³n');
INSERT INTO `unidades` VALUES ('44', 'Bolsa a granel de quinientos kilos', NULL);
INSERT INTO `unidades` VALUES ('45', 'Bolsa a granel de trescientos kilos', NULL);
INSERT INTO `unidades` VALUES ('46', 'Bolsa a granel de cincuenta libras', NULL);
INSERT INTO `unidades` VALUES ('47', 'Bolso de cincuenta libras', NULL);
INSERT INTO `unidades` VALUES ('48', 'Carga masiva', NULL);
INSERT INTO `unidades` VALUES ('53', 'Kilogramo teÃƒÂ³rico', NULL);
INSERT INTO `unidades` VALUES ('54', 'Tonelada teÃƒÂ³rica (UK)', NULL);
INSERT INTO `unidades` VALUES ('62', 'Por ciento por 1000 horas', NULL);
INSERT INTO `unidades` VALUES ('63', 'Tasa de fracaso en el tiempo', NULL);
INSERT INTO `unidades` VALUES ('64', 'Libra por pulgada cuadrada, calÃƒÂ­bre', NULL);
INSERT INTO `unidades` VALUES ('66', 'Oersted', NULL);
INSERT INTO `unidades` VALUES ('69', 'Escala especÃƒÂ­fica de prueba', NULL);
INSERT INTO `unidades` VALUES ('71', 'Voltios amperios por libra', NULL);
INSERT INTO `unidades` VALUES ('72', 'Vatio por libra', NULL);
INSERT INTO `unidades` VALUES ('73', 'Amperios por centÃƒÂ­metro', NULL);
INSERT INTO `unidades` VALUES ('76', 'Gauss', NULL);
INSERT INTO `unidades` VALUES ('77', 'Kilogauss', NULL);
INSERT INTO `unidades` VALUES ('84', 'Kilopound-force por pulgada cuadrada', 'Unidad de presiÃƒÂ³n que define el nÃƒÂºmero de kilopounds fuerza por pulgada cuadrada.Ã‚Â \r\n\r\nUtilice kip por pulgada cuadrada (cÃƒÂ³digo comÃƒÂºn N20).');
INSERT INTO `unidades` VALUES ('90', 'Saybold segundo universal', NULL);
INSERT INTO `unidades` VALUES ('92', 'CalorÃƒÂ­as por centÃƒÂ­metro cÃƒÂºbico', NULL);
INSERT INTO `unidades` VALUES ('93', 'CalorÃƒÂ­as por gramo', 'Utilice calorÃƒÂ­as de la tabla internacional (IT) por gramo (cÃƒÂ³digo comÃƒÂºn D75).');
INSERT INTO `unidades` VALUES ('94', 'Unidad de curl', NULL);
INSERT INTO `unidades` VALUES ('95', 'Veinte mil galones', NULL);
INSERT INTO `unidades` VALUES ('96', 'Diez mil galones (US)', NULL);
INSERT INTO `unidades` VALUES ('97', 'Diez kilos de tambor', NULL);
INSERT INTO `unidades` VALUES ('98', 'Quince kilos de tambor', NULL);
INSERT INTO `unidades` VALUES ('5', 'Ascensor', NULL);
INSERT INTO `unidades` VALUES ('6', 'PequeÃƒÂ±o aerosol', NULL);
INSERT INTO `unidades` VALUES ('8', 'MontÃƒÂ³n de calor', NULL);
INSERT INTO `unidades` VALUES ('10', 'Grupos', 'Una unidad de conteo que define el nÃƒÂºmero de grupos (grupo: conjunto de elementos clasificados juntos).');
INSERT INTO `unidades` VALUES ('11', 'Equipos', ' Unidad de recuento que define el nÃƒÂºmero de equipos (equipo: un conjunto completo de equipo / materiales / objetos utilizados para un propÃƒÂ³sito especÃƒÂ­fico).');
INSERT INTO `unidades` VALUES ('13', 'Raciones', 'Una unidad de recuento para definir el nÃƒÂºmero de raciones (raciÃƒÂ³n: una sola porciÃƒÂ³n de las disposiciones).');
INSERT INTO `unidades` VALUES ('14', 'Shot', 'Unidad de medida para liquidos.');
INSERT INTO `unidades` VALUES ('15', 'Palo, medida militar.', 'Unidad para el momento de rotaciÃƒÂ³n relacionado con la longitud segÃƒÂºn el sistema de unidades Anglo-Americanas e Imperial.');
INSERT INTO `unidades` VALUES ('16', 'Tambor de 115 kilogramos', NULL);
INSERT INTO `unidades` VALUES ('17', 'Tambor de cien libras', NULL);
INSERT INTO `unidades` VALUES ('1A', 'Milla de carros', NULL);
INSERT INTO `unidades` VALUES ('1B', 'Recuento de automÃƒÂ³viles', NULL);
INSERT INTO `unidades` VALUES ('1C', 'Conteo de locomotoras', NULL);
INSERT INTO `unidades` VALUES ('1D', 'Caboose count', NULL);
INSERT INTO `unidades` VALUES ('1E', 'Coche vacÃƒÂ­o', NULL);
INSERT INTO `unidades` VALUES ('1F', 'Milla de tren', NULL);
INSERT INTO `unidades` VALUES ('1G', 'GalÃƒÂ³n del uso del combustible (los EUA)', NULL);
INSERT INTO `unidades` VALUES ('1H', 'Milla de caboose', NULL);
INSERT INTO `unidades` VALUES ('1I', ' Tipo de interÃƒÂ©s fijo', ' Unidad de cantidad expresada como una tasa predeterminada o conjunto para el uso de una instalaciÃƒÂ³n o servicio.');
INSERT INTO `unidades` VALUES ('1J', 'Tonelada milla', NULL);
INSERT INTO `unidades` VALUES ('1K', 'Milla locomotora', NULL);
INSERT INTO `unidades` VALUES ('1L', 'Recuento total de automÃƒÂ³viles', NULL);
INSERT INTO `unidades` VALUES ('1M', 'Milla total del coche', NULL);
INSERT INTO `unidades` VALUES ('1X', 'Cuarto de milla', NULL);
INSERT INTO `unidades` VALUES ('20', ' Contenedores de veinte pies', ' Unidad de conteo que define el nÃƒÂºmero de contenedores de transporte que miden 20 pies de longitud.');
INSERT INTO `unidades` VALUES ('21', ' Contenedor de cuarenta pies', ' Unidad de conteo que define el nÃƒÂºmero de contenedores de transporte que miden 40 pies de longitud.');
INSERT INTO `unidades` VALUES ('22', 'Decilitro por gramo', NULL);
INSERT INTO `unidades` VALUES ('23', 'Gramo por centÃƒÂ­metro cÃƒÂºbico', NULL);
INSERT INTO `unidades` VALUES ('24', 'Libra teÃƒÂ³rica', ' Unidad de masa que define la masa esperada de material expresado como el nÃƒÂºmero de libras.');
INSERT INTO `unidades` VALUES ('25', 'Gramo por centÃƒÂ­metro cuadrado', NULL);
INSERT INTO `unidades` VALUES ('27', 'Tonelada teÃƒÂ³rica', 'Unidad de masa que define la masa esperada de material, expresada como el nÃƒÂºmero de toneladas.');
INSERT INTO `unidades` VALUES ('28', 'Kilogramo por metro cuadrado', NULL);
INSERT INTO `unidades` VALUES ('2A', 'RadiÃƒÂ¡n por segundo', 'Es la velocidad de un cuerpo que, con una rotaciÃƒÂ³n uniforme alrededor de un eje fijo, gira en 1 segundo, 1 radiÃƒÂ¡n. ');
INSERT INTO `unidades` VALUES ('2B', 'RadiÃƒÂ¡n por segundo cuadrado', 'Es la aceleraciÃƒÂ³n angular de un cuerpo animado de una rotaciÃƒÂ³n uniformemente variada alrededor de un eje fijo, cuya velocidad angular, varÃƒÂ­a 1 radiÃƒÂ¡n por segundo, en 1 segundo. ');
INSERT INTO `unidades` VALUES ('2C', 'Roentgen', NULL);
INSERT INTO `unidades` VALUES ('2G', 'Voltios CA', ' Una unidad de potencial elÃƒÂ©ctrico en relaciÃƒÂ³n a la corriente alterna (CA).');
INSERT INTO `unidades` VALUES ('2H', 'Voltios CD', 'Unidad de potencial elÃƒÂ©ctrico en relaciÃƒÂ³n con corriente directa (CD).');
INSERT INTO `unidades` VALUES ('2I', 'Unidad tÃƒÂ©rmica britÃƒÂ¡nica (tabla internacional) por hora', NULL);
INSERT INTO `unidades` VALUES ('2J', 'CentÃƒÂ­metro cÃƒÂºbico por segundo', NULL);
INSERT INTO `unidades` VALUES ('2K', 'Pie cÃƒÂºbico por hora', NULL);
INSERT INTO `unidades` VALUES ('2L', 'Pie cÃƒÂºbico por minuto', NULL);
INSERT INTO `unidades` VALUES ('2M', 'CentÃƒÂ­metro por segundo', NULL);
INSERT INTO `unidades` VALUES ('2N', 'Decibel', 'Medida de sonoridad o sensaciÃƒÂ³n sonora que es igual a la dÃƒÂ©cima parte de un bel.');
INSERT INTO `unidades` VALUES ('2P', 'Kilobyte', ' Unidad de informaciÃƒÂ³n igual a 10 Ã‚Â³  (1000) bytes.');
INSERT INTO `unidades` VALUES ('2Q', 'Kilobecquerel', NULL);
INSERT INTO `unidades` VALUES ('2R', 'Kilocurie', NULL);
INSERT INTO `unidades` VALUES ('2U', 'Megagramo', NULL);
INSERT INTO `unidades` VALUES ('2V', 'Megagrama por hora', NULL);
INSERT INTO `unidades` VALUES ('2X', 'Metro por minuto', NULL);
INSERT INTO `unidades` VALUES ('2Y', 'Milliroentgen', NULL);
INSERT INTO `unidades` VALUES ('2Z', 'Milivoltio', NULL);
INSERT INTO `unidades` VALUES ('33', 'Kilopascal por grtr', NULL);
INSERT INTO `unidades` VALUES ('34', 'Kilopascal por milimetro', NULL);
INSERT INTO `unidades` VALUES ('35', 'Milimetro por un segundo centimetro cuadrado', NULL);
INSERT INTO `unidades` VALUES ('37', 'Onza por pie cuadrado', NULL);
INSERT INTO `unidades` VALUES ('38', 'Onzas por pie cuadrado por 0,01 pulgadas', NULL);
INSERT INTO `unidades` VALUES ('3B', 'Megajoule', NULL);
INSERT INTO `unidades` VALUES ('3C', 'Manmonth', 'Unidad de cuenta que define el nÃƒÂºmero de meses que una persona o personas pueden desempeÃƒÂ±ar alguna actividad.');
INSERT INTO `unidades` VALUES ('3E', 'Libra por libra de producto', NULL);
INSERT INTO `unidades` VALUES ('3G', 'Libra por pieza de producto', NULL);
INSERT INTO `unidades` VALUES ('3H', 'Kilogramo por kilogramo de producto', NULL);
INSERT INTO `unidades` VALUES ('3I', 'Kilogramo por pedazo de producto', NULL);
INSERT INTO `unidades` VALUES ('40', 'Mililitro por segundo', NULL);
INSERT INTO `unidades` VALUES ('41', 'Mililitro por minuto', NULL);
INSERT INTO `unidades` VALUES ('4B', 'Gorra', NULL);
INSERT INTO `unidades` VALUES ('4C', 'Centistokes', NULL);
INSERT INTO `unidades` VALUES ('4E', 'Veinte pack', NULL);
INSERT INTO `unidades` VALUES ('4G', 'Microlitro', NULL);
INSERT INTO `unidades` VALUES ('4H', 'Micra', 'El micrÃƒÂ³metro, micrÃƒÂ³n o micra es una unidad de longitud equivalente a una milÃƒÂ©sima parte de un milÃƒÂ­metro.');
INSERT INTO `unidades` VALUES ('4K', 'Miliamperio', NULL);
INSERT INTO `unidades` VALUES ('4L', 'Megabyte', 'Unidad que se usa para cuantificar un caudal de datos equivalente a 1000 kb/s.');
INSERT INTO `unidades` VALUES ('4M', 'Miligramo por hora', NULL);
INSERT INTO `unidades` VALUES ('4N', 'Megabequerel', NULL);
INSERT INTO `unidades` VALUES ('4O', 'Microfaradio', NULL);
INSERT INTO `unidades` VALUES ('4P', 'Newton por metro', NULL);
INSERT INTO `unidades` VALUES ('4Q', 'Onza pulgada', NULL);
INSERT INTO `unidades` VALUES ('4R', 'Onza pie', NULL);
INSERT INTO `unidades` VALUES ('4T', 'Picofaradio', NULL);
INSERT INTO `unidades` VALUES ('4U', 'Libra por hora', NULL);
INSERT INTO `unidades` VALUES ('4W', 'Tonelada (EUA) por hora', NULL);
INSERT INTO `unidades` VALUES ('4X', 'Kilolitro por hora', NULL);
INSERT INTO `unidades` VALUES ('56', 'Sitas', ' Unidad de ÃƒÂ¡rea de placa de estaÃƒÂ±o igual a un ÃƒÂ¡rea de superficie de 100 metros cuadrados.');
INSERT INTO `unidades` VALUES ('57', 'Malla', 'Una unidad de recuento de definir el nÃƒÂºmero de hebras por pulgada como una medida de la finura de un producto tejido.');
INSERT INTO `unidades` VALUES ('58', ' kilogramo neto', 'Unidad de masa que define el nÃƒÂºmero total de kilogramos despuÃƒÂ©s de las deducciones.');
INSERT INTO `unidades` VALUES ('59', 'Parte por millÃƒÂ³n', ' Una unidad de proporciÃƒÂ³n igual a 10??.');
INSERT INTO `unidades` VALUES ('5A', 'Barril por minuto', NULL);
INSERT INTO `unidades` VALUES ('5B', 'Batch', 'Unidad de conteo que define el nÃƒÂºmero de lotes (lote: cantidad de material producido en una operaciÃƒÂ³n o nÃƒÂºmero de animales o personas que vienen a la vez).');
INSERT INTO `unidades` VALUES ('5C', 'GalÃƒÂ³n (US) por mil', NULL);
INSERT INTO `unidades` VALUES ('5E', 'Mmscf/day', 'Unidad de volumen equivalente a un millÃƒÂ³n (1,000,000) pies cÃƒÂºbicos de gas por dÃƒÂ­a.');
INSERT INTO `unidades` VALUES ('5F', 'Libra por mil', NULL);
INSERT INTO `unidades` VALUES ('5G', 'bomba', NULL);
INSERT INTO `unidades` VALUES ('5H', 'Escenario', NULL);
INSERT INTO `unidades` VALUES ('5I', 'Pies cÃƒÂºbicos estÃƒÂ¡ndar', 'Utilice estÃƒÂ¡ndar (cÃƒÂ³digo comÃƒÂºn WSD)');
INSERT INTO `unidades` VALUES ('5J', 'Caballos de potencia hidrÃƒÂ¡ulica', 'Unidad de potencia de la definiciÃƒÂ³n de los caballos de potencia hidrÃƒÂ¡ulica suministrada por una bomba de fluido dependiendo de la viscosidad del fluido.');
INSERT INTO `unidades` VALUES ('5K', 'Contar por minuto', NULL);
INSERT INTO `unidades` VALUES ('5P', 'Nivel sÃƒÂ­smico', NULL);
INSERT INTO `unidades` VALUES ('5Q', 'LÃƒÂ­nea sÃƒÂ­smica', NULL);
INSERT INTO `unidades` VALUES ('60', 'Tanto por ciento en peso', 'Una unidad de proporciÃƒÂ³n igual a 10?Ã‚Â².');
INSERT INTO `unidades` VALUES ('61', 'Parte por mil millones (EUA)', 'Una unidad de proporciÃƒÂ³n igual a 10??.');
INSERT INTO `unidades` VALUES ('74', 'Milipascal', NULL);
INSERT INTO `unidades` VALUES ('77', 'Mili-pulgada', NULL);
INSERT INTO `unidades` VALUES ('80', 'Libra por pulgada cuadrado absoluta', NULL);
INSERT INTO `unidades` VALUES ('81', 'Henry', 'Un henry es la unidad para la inductancia elÃƒÂ©ctrica en el Sistema Internacional de Unidades. Es la inductancia elÃƒÂ©ctrica de un circuito cerrado en el que se produce una fuerza electromotriz de 1 voltio, cuando la corriente elÃƒÂ©ctrica que recorre e');
INSERT INTO `unidades` VALUES ('85', 'Pie libra-fuerza', NULL);
INSERT INTO `unidades` VALUES ('87', 'Libra por pie cÃƒÂºbico', NULL);
INSERT INTO `unidades` VALUES ('89', 'Poise', 'El poise (sÃƒÂ­mbolo: P) es la unidad de viscosidad dinÃƒÂ¡mica del sistema cegesimal de unidades.');
INSERT INTO `unidades` VALUES ('91', 'Stokes', 'El Stokes es la unidad de viscosidad cinemÃƒÂ¡tica en el Sistema Cegesimal de Unidades');
INSERT INTO `unidades` VALUES ('A1', '15 Ã‚Â° C calorÃƒÂ­as', NULL);
INSERT INTO `unidades` VALUES ('A10', 'Amperio por metro cuadrado por joule segundo', NULL);
INSERT INTO `unidades` VALUES ('A11', 'ÃƒÂngstrom', 'El ÃƒÂ¡ngstrom es una unidad de longitud empleada principalmente para expresar longitudes de onda, distancias moleculares y atÃƒÂ³micas, etc.');
INSERT INTO `unidades` VALUES ('A12', 'Unidad astronÃƒÂ³mica', 'Es una unidad de longitud igual por definiciÃƒÂ³n a 149 597 870 700 metros, y que equivale aproximadamente a la distancia media entre el planeta Tierra y el Sol.');
INSERT INTO `unidades` VALUES ('A13', 'Attojoule', ' Una unidad SI de la energÃƒÂ­a, el trabajo, y el calor igual a 10 -18 joules');
INSERT INTO `unidades` VALUES ('A14', 'Barn', 'Es una unidad de superficie, equivalente a 10-28 mÃ‚Â² (100 femtÃƒÂ³metros cuadrados). Sus mÃƒÂºltiplos son muy utilizados en fÃƒÂ­sica de partÃƒÂ­culas para medir las secciones eficaces en reacciones nucleares, y sus inversos para medir luminosidades.');
INSERT INTO `unidades` VALUES ('A15', 'Barn por electrovoltio', NULL);
INSERT INTO `unidades` VALUES ('A16', 'Barn por electrovoltio ', NULL);
INSERT INTO `unidades` VALUES ('A17', 'Barn por esteroradian', NULL);
INSERT INTO `unidades` VALUES ('A18', 'Becquerel por kilogramo', NULL);
INSERT INTO `unidades` VALUES ('A19', 'Becquerel por metro cÃƒÂºbico', NULL);
INSERT INTO `unidades` VALUES ('A2', 'Amperio por centÃƒÂ­metro', NULL);
INSERT INTO `unidades` VALUES ('A20', 'Unidad tÃƒÂ©rmica britÃƒÂ¡nica (tabla internacional) por segundo pie cuadrado grado rankine.', NULL);
INSERT INTO `unidades` VALUES ('A21', 'Unidad tÃƒÂ©rmica britÃƒÂ¡nica (tabla internacional) por libra grado rankine', NULL);
INSERT INTO `unidades` VALUES ('A22', 'Unidad tÃƒÂ©rmica britÃƒÂ¡nica (tabla internacional) por segundo pie grado rankine', NULL);
INSERT INTO `unidades` VALUES ('A23', 'Unidad tÃƒÂ©rmica britÃƒÂ¡nica (tabla internacional) por hora pie cuadrado grado rankine.', NULL);
INSERT INTO `unidades` VALUES ('A24', 'Candela por metro cuadrado', NULL);
INSERT INTO `unidades` VALUES ('A25', 'Caballo de vapor', 'SinÃƒÂ³nimo: Caballo de fuerza mÃƒÂ©trico');
INSERT INTO `unidades` VALUES ('A26', 'Culombio metro', NULL);
INSERT INTO `unidades` VALUES ('A27', 'Culombio metro cuadrado por voltio', NULL);
INSERT INTO `unidades` VALUES ('A28', 'Culombio por centÃƒÂ­metro cÃƒÂºbico', NULL);
INSERT INTO `unidades` VALUES ('A29', 'Culombio por metro cÃƒÂºbico', NULL);
INSERT INTO `unidades` VALUES ('A3', 'Amperio por milÃƒÂ­metro', NULL);
INSERT INTO `unidades` VALUES ('A30', 'Culombio por milimetro cÃƒÂºbico', NULL);
INSERT INTO `unidades` VALUES ('A31', 'Culombio por kilogramo-segundo', NULL);
INSERT INTO `unidades` VALUES ('A32', 'Culombio por Mol', NULL);
INSERT INTO `unidades` VALUES ('A33', 'Culombio por centÃƒÂ­metro cuadrado', NULL);
INSERT INTO `unidades` VALUES ('A34', 'Culombio por metro cuadrado', NULL);
INSERT INTO `unidades` VALUES ('A35', 'Culombio por milÃƒÂ­metro cuadrado', NULL);
INSERT INTO `unidades` VALUES ('A36', 'Centimetro cÃƒÂºbico por Mol', NULL);
INSERT INTO `unidades` VALUES ('A37', 'Decimetro cuadrado por Mol', NULL);
INSERT INTO `unidades` VALUES ('A38', 'Cubic pooulo p', NULL);
INSERT INTO `unidades` VALUES ('A39', 'Metro cÃƒÂºbico por kilogramo', NULL);
INSERT INTO `unidades` VALUES ('A4', 'Amperio por centÃƒÂ­metro cuadrado', NULL);
INSERT INTO `unidades` VALUES ('A40', 'Metro cubbico por Mol', NULL);
INSERT INTO `unidades` VALUES ('A41', 'Amperio por metro cuadrado', NULL);
INSERT INTO `unidades` VALUES ('A42', 'Curie por kilogramo', NULL);
INSERT INTO `unidades` VALUES ('A43', 'Tonelaje de peso muerto', 'Unidad de masa que define la diferencia entre el peso de un barco cuando estÃƒÂ¡ completamente vacÃƒÂ­o y su peso cuando estÃƒÂ¡ completamente cargado, expresado como el nÃƒÂºmero de toneladas.');
INSERT INTO `unidades` VALUES ('A44', 'Decalitro', NULL);
INSERT INTO `unidades` VALUES ('A45', 'DecÃƒÂ¡metro', 'Medida de longitud, de sÃƒÂ­mbolo dam o Dm, que es igual a 10 metros.');
INSERT INTO `unidades` VALUES ('A47', 'Decitex', 'Unidad de densidad de hilo.Ã‚Â Un decitex es igual a una masa de 1 gramo por 10 kilÃƒÂ³metros de longitud.');
INSERT INTO `unidades` VALUES ('A48', 'Grado rankine', 'Consulte ISO 80000-5 (Cantidades y unidades - Parte 5: TermodinÃƒÂ¡mica)');
INSERT INTO `unidades` VALUES ('A49', 'Negador', 'Unidad de densidad de hilo.Ã‚Â Una denier es igual a una masa de 1 gramo por 9 kilÃƒÂ³metros de longitud.');
INSERT INTO `unidades` VALUES ('A5', 'Amperio metro cuadrado', NULL);
INSERT INTO `unidades` VALUES ('A50', 'Dyne segundo por centÃƒÂ­metro cÃƒÂºbico', NULL);
INSERT INTO `unidades` VALUES ('A51', 'Dyne segundo por centÃƒÂ­metro', NULL);
INSERT INTO `unidades` VALUES ('A52', 'Dyne segundo por centÃƒÂ­metro a la quinta potencia', NULL);
INSERT INTO `unidades` VALUES ('A53', 'ElectrÃƒÂ³nvoltio', NULL);
INSERT INTO `unidades` VALUES ('A54', 'Electrovoltio por metro', NULL);
INSERT INTO `unidades` VALUES ('A55', 'Electrovoltio por metro cuadrado', NULL);
INSERT INTO `unidades` VALUES ('A56', 'Electrovoltio metro cuadrado por kilogramo', NULL);
INSERT INTO `unidades` VALUES ('A57', 'Ergio', NULL);
INSERT INTO `unidades` VALUES ('A58', 'Erg por centÃƒÂ­metro', NULL);
INSERT INTO `unidades` VALUES ('A59', 'La cobertura de nubes 8-parte', 'Unidad de recuento para definir el nÃƒÂºmero de octavos de partes como una medida de la cobertura de nubes de la ccÃƒÂºpula celeste.Ã‚Â \r\n\r\n\'SinÃƒÂ³nimo: OKTA, OCTA');
INSERT INTO `unidades` VALUES ('A6', 'Amperio por metro cuadrado Kelvin cuadrado', NULL);
INSERT INTO `unidades` VALUES ('A60', 'Erg por centÃƒÂ­metro cÃƒÂºbico', NULL);
INSERT INTO `unidades` VALUES ('A61', 'Erg por gramo', NULL);
INSERT INTO `unidades` VALUES ('A62', 'Erg por segundo gramo', NULL);
INSERT INTO `unidades` VALUES ('A63', 'Erg por segundo', NULL);
INSERT INTO `unidades` VALUES ('A64', 'Erg por segundo centÃƒÂ­metro cuadrado', NULL);
INSERT INTO `unidades` VALUES ('A65', 'Erg por centÃƒÂ­metro cuadrado segundo', NULL);
INSERT INTO `unidades` VALUES ('A66', 'Erg centÃƒÂ­metro cuadrado', NULL);
INSERT INTO `unidades` VALUES ('A67', 'Erg centÃƒÂ­metro cuadrado por gramo', NULL);
INSERT INTO `unidades` VALUES ('A68', 'Exajoule', NULL);
INSERT INTO `unidades` VALUES ('A69', 'Faradio por metro', NULL);
INSERT INTO `unidades` VALUES ('A7', 'Amperio por milÃƒÂ­metro cuadrado', NULL);
INSERT INTO `unidades` VALUES ('A70', 'Femtojoule', NULL);
INSERT INTO `unidades` VALUES ('A71', 'FemtÃƒÂ³metro', 'Es la unidad de longitud que equivale a una milbillÃƒÂ³nesima parte del metro.');
INSERT INTO `unidades` VALUES ('A73', 'Pie por segundo al cuadrado', NULL);
INSERT INTO `unidades` VALUES ('A74', 'Pie libra-fuerza por segundo', NULL);
INSERT INTO `unidades` VALUES ('A75', 'Tonelada de carga', 'Unidad de informaciÃƒÂ³n que normalmente se utiliza para la facturaciÃƒÂ³n, que se define como sea el nÃƒÂºmero de toneladas mÃƒÂ©tricas o el nÃƒÂºmero de metros cÃƒÂºbicos, lo que sea mayor.');
INSERT INTO `unidades` VALUES ('A76', 'GalÃƒÂ³n', 'Es una unidad de volumen que se emplea en los paÃƒÂ­ses anglÃƒÂ³fonos (especialmente Estados Unidos) o con influencia de estos (como Liberia, Guatemala, PanamÃƒÂ¡, Honduras, Nicaragua, El Salvador, Colombia y parcialmente en MÃƒÂ©xico), para medir volÃƒÂº');
INSERT INTO `unidades` VALUES ('A77', 'Gaussian CGS (CentÃƒÂ­metro-Gram-Segundo sistema) unidad de desplazamiento', NULL);
INSERT INTO `unidades` VALUES ('A78', 'Gaussiano CGS (CentÃƒÂ­metro-Gram-Segundo sistema) unidad de corriente elÃƒÂ©ctrica', NULL);
INSERT INTO `unidades` VALUES ('A79', 'Gaussian CGS (CentÃƒÂ­metro-Gram-Segundo sistema) unidad de carga elÃƒÂ©ctrica', NULL);
INSERT INTO `unidades` VALUES ('A8', 'Amperio segundo', NULL);
INSERT INTO `unidades` VALUES ('A80', 'Gaussiano CGS (CentÃƒÂ­metro-Gram-Segundo sistema) unidad de la fuerza del campo elÃƒÂ©ctrico', NULL);
INSERT INTO `unidades` VALUES ('A81', 'Gaussian CGS (CentÃƒÂ­metro-Gram-Segundo sistema) unidad de polarizaciÃƒÂ³n elÃƒÂ©ctrica', NULL);
INSERT INTO `unidades` VALUES ('A82', 'Gaussiano CGS (CentÃƒÂ­metro-Gram-Segundo sistema) unidad de potencial elÃƒÂ©ctrico', NULL);
INSERT INTO `unidades` VALUES ('A83', 'Gaussian CGS (CentÃƒÂ­metro-Gram-Segundo sistema) unidad de magnetizaciÃƒÂ³n', NULL);
INSERT INTO `unidades` VALUES ('A84', 'GigaCulombio por metro cÃƒÂºbico', NULL);
INSERT INTO `unidades` VALUES ('A85', 'GigaelectrÃƒÂ³nvoltio', NULL);
INSERT INTO `unidades` VALUES ('A86', 'Gigahertz', 'Es un mÃƒÂºltiplo de la unidad de medida de frecuencia hercio (Hz) y equivale a 109 (1 000 000 000) Hz. Por lo tanto, tiene un perÃƒÂ­odo de oscilaciÃƒÂ³n de 1 nanosegundo. Las ondas de radio con frecuencias cercanas al gigahercio se denominan microondas.');
INSERT INTO `unidades` VALUES ('A87', 'GigaOhm', NULL);
INSERT INTO `unidades` VALUES ('A88', 'GigaOhm metro', NULL);
INSERT INTO `unidades` VALUES ('A89', 'Gigapascal', NULL);
INSERT INTO `unidades` VALUES ('A9', 'TarÃƒÂ­fa', 'Unidad de cantidad expresada como una tasa para el uso de una instalaciÃƒÂ³n o servicio.');
INSERT INTO `unidades` VALUES ('A90', 'Gigawatt', NULL);
INSERT INTO `unidades` VALUES ('A91', 'Grado centesimal', 'SinÃƒÂ³nimo: grado\r\nEl grado centesimal o gon Ã¢â‚¬â€tambiÃƒÂ©n llamado gradiÃƒÂ¡n (plural: gradianes) y gonio Ã¢â‚¬â€ es una unidad de medida de ÃƒÂ¡ngulos planos, alternativa al grado sexagesimal y al radiÃƒÂ¡n.');
INSERT INTO `unidades` VALUES ('A93', 'Gramo por metro cÃƒÂºbico', NULL);
INSERT INTO `unidades` VALUES ('A94', 'Gramo por Mol', NULL);
INSERT INTO `unidades` VALUES ('A95', 'Gray', 'Es una unidad derivada del Sistema Internacional de Unidades que mide la dosis absorbida de radiaciones ionizantes por un determinado material. Un Gray es equivalente a la absorciÃƒÂ³n de un julio de energÃƒÂ­a ionizante por un kilogramo de material irrad');
INSERT INTO `unidades` VALUES ('A96', 'Gray por segundo', NULL);
INSERT INTO `unidades` VALUES ('A97', 'Hectopascal', NULL);
INSERT INTO `unidades` VALUES ('A98', 'Henry por metro', NULL);
INSERT INTO `unidades` VALUES ('A99', 'Bit', 'Unidad de informaciÃƒÂ³n igual a un dÃƒÂ­gito binario.');
INSERT INTO `unidades` VALUES ('AA', 'BalÃƒÂ³n', 'Unidad de recuento para definir el nÃƒÂºmero de bolas (BalÃƒÂ³n: objeto formado en la forma de esfera).');
INSERT INTO `unidades` VALUES ('AB', 'Paquete a granel', 'Unidad de recuento para definir el nÃƒÂºmero de artÃƒÂ­culos por paquete a granel.');
INSERT INTO `unidades` VALUES ('ACR', 'Acre', 'Es una medida de superficie, usada en agricultura en varios paÃƒÂ­ses.');
INSERT INTO `unidades` VALUES ('ACT', 'Actividad', 'Unidad de recuento para definir el nÃƒÂºmero de actividades (actividad: una unidad de trabajo o acciÃƒÂ³n).');
INSERT INTO `unidades` VALUES ('AD', 'Byte', 'Unidad de informaciÃƒÂ³n igual a 8 bits.');
INSERT INTO `unidades` VALUES ('AE', 'Amperio por metro', '(a veces llamado amperio vuelta por metro) es la unidad SI de la corriente de campo magnÃƒÂ©tico.');
INSERT INTO `unidades` VALUES ('AH', 'Minuto adicional', 'Unidad de tiempo que define el nÃƒÂºmero de minutos, ademÃƒÂ¡s de los minutos referenciados.');
INSERT INTO `unidades` VALUES ('AI', 'Minuto y medio por llamada', 'Unidad de recuento para definir el nÃƒÂºmero de minutos para el intervalo medio de una llamada.');
INSERT INTO `unidades` VALUES ('AJ', 'policÃƒÂ­a', NULL);
INSERT INTO `unidades` VALUES ('AK', 'Braza', 'Una braza es una unidad de longitud nÃƒÂ¡utica, usada generalmente para medir la profundidad del agua. Se llama braza porque equivale a la longitud de un par de brazos extendidos, aproximadamente dos metros, ÃƒÂ³ 6 pies en el sistema de mediciÃƒÂ³n estado');
INSERT INTO `unidades` VALUES ('AL', 'LÃƒÂ­nea de acceso', 'Unidad de recuento para definir el nÃƒÂºmero de lÃƒÂ­neas de acceso telefÃƒÂ³nico.');
INSERT INTO `unidades` VALUES ('AMH', 'Amperio hora', 'Unidad de carga electrica definida por la cantidad de carga acumulada por un flujo constante de un amperio por 1 hora. ');
INSERT INTO `unidades` VALUES ('AMP', 'Amperio', 'Es la intensidad de una corriente constante que manteniÃƒÂ©ndose en dos conductores paralelos, rectilÃƒÂ­neos, de longitud infinita, de secciÃƒÂ³n circular despreciable y situados a una distancia de un metro uno de otro en el vacÃƒÂ­o, producirÃƒÂ­a una f');
INSERT INTO `unidades` VALUES ('ANN', 'AÃƒÂ±o', 'Unidad de tiempo equivalente a 365.25 dÃƒÂ­as. ');
INSERT INTO `unidades` VALUES ('AP', 'Libra de aluminio solamente', NULL);
INSERT INTO `unidades` VALUES ('APZ', 'Onza troy u onza farmacÃƒÂ©utica ', NULL);
INSERT INTO `unidades` VALUES ('AQ', 'Unidad del factir anti-hemofilico.', 'Unidad de medida para la potencia de la sangre (US).');
INSERT INTO `unidades` VALUES ('AR', 'supositorio', NULL);
INSERT INTO `unidades` VALUES ('ARE', 'Are', 'SinÃƒÂ³nimo: decametro cuadrado');
INSERT INTO `unidades` VALUES ('AS', 'Variedad', 'Unidad de recuento para definir el nÃƒÂºmero de surtidos (variedad: conjunto de elementos agrupados en una colecciÃƒÂ³n mixta).');
INSERT INTO `unidades` VALUES ('ASM', 'Grado alcohÃƒÂ³lico en masa', 'Unidad de masa que define el grado alcohÃƒÂ³lico de un lÃƒÂ­quido.');
INSERT INTO `unidades` VALUES ('ASU', 'Grado alcohÃƒÂ³lico volumÃƒÂ©trico', 'Unidad de volumen que define el grado alcohÃƒÂ³lico de un lÃƒÂ­quido (por ejemplo, alcohol, vino, cerveza, etc.), a menudo a una temperatura especÃƒÂ­fica.');
INSERT INTO `unidades` VALUES ('ATM', 'AtmÃƒÂ³sfera estÃƒÂ¡ndar', 'Es un modelo de la atmÃƒÂ³sfera terrestre que permite obtener los valores de presiÃƒÂ³n, temperatura, densidad y viscosidad del aire en funciÃƒÂ³n de la altitud. Su funciÃƒÂ³n es proporcionar un marco de referencia invariante para la navegaciÃƒÂ³n aÃƒÂ©re');
INSERT INTO `unidades` VALUES ('ATT', 'AtmÃƒÂ³sfera tÃƒÂ©cnica', NULL);
INSERT INTO `unidades` VALUES ('AW', 'Relleno de polvo en viales', NULL);
INSERT INTO `unidades` VALUES ('AWG', 'Calibre de alambre americano', 'TambiÃƒÂ©n conocido como el calibre del cable Brown & Sharpe , es un estandarizado calibre del cable sistema utilizado desde 1857 predominantemente en NorteamÃƒÂ©rica para los diÃƒÂ¡metros de vuelta, no ferroso,, sÃƒÂ³lido elÃƒÂ©ctricamente conductor de a');
INSERT INTO `unidades` VALUES ('AY', 'Montaje', 'Una unidad de recuento de definir el nÃƒÂºmero de conjuntos (montaje: artÃƒÂ­culos que consisten de partes componentes).');
INSERT INTO `unidades` VALUES ('AZ', 'Unidad tÃƒÂ©rmica britÃƒÂ¡nica (tabla internacional) por libra', NULL);
INSERT INTO `unidades` VALUES ('B0', 'Btu por pie cÃƒÂºbico', NULL);
INSERT INTO `unidades` VALUES ('B1', 'Barril (EUA) por dÃƒÂ­a', NULL);
INSERT INTO `unidades` VALUES ('B10', 'Bits por segundo', 'Unidad de informaciÃƒÂ³n igual a un dÃƒÂ­gito binario por segundo.');
INSERT INTO `unidades` VALUES ('B11', 'Joule por kilogramo kelvin', 'Es la capacidad tÃƒÂ©rmica mÃƒÂ¡sica de un cuerpo homogÃƒÂ©neo de una masa de 1 kilogramo, en el que el aporte de una cantidad de calor de un joule, produce una elevaciÃƒÂ³n de temperatura termodinÃƒÂ¡mica de 1 kelvin. ');
INSERT INTO `unidades` VALUES ('B12', 'Joule por metro', NULL);
INSERT INTO `unidades` VALUES ('B13', 'Joule por metro cuadrado', 'SinÃƒÂ³nimo: joule por metro cuadrado');
INSERT INTO `unidades` VALUES ('B14', 'Joule por metro a la cuarta potencia', NULL);
INSERT INTO `unidades` VALUES ('B15', 'Juole por Mol', NULL);
INSERT INTO `unidades` VALUES ('B16', 'Juoule por Mol kelvin', NULL);
INSERT INTO `unidades` VALUES ('B17', 'CrÃƒÂ©dito', 'Unidad de recuento de definir el nÃƒÂºmero de entradas realizadas en el haber de una cuenta.');
INSERT INTO `unidades` VALUES ('B18', 'Segundos joule', NULL);
INSERT INTO `unidades` VALUES ('B19', 'DÃƒÂ­gito', 'Unidad de informaciÃƒÂ³n que define la cantidad de nÃƒÂºmeros utiliza para formar un nÃƒÂºmero.');
INSERT INTO `unidades` VALUES ('B2', 'litera', NULL);
INSERT INTO `unidades` VALUES ('B20', 'Joule metro cuadrado por kologramo', NULL);
INSERT INTO `unidades` VALUES ('B21', 'Kelvin por watt', NULL);
INSERT INTO `unidades` VALUES ('B22', 'Kiloamperio', NULL);
INSERT INTO `unidades` VALUES ('B23', 'Kiloamperio por metro cuadrado', NULL);
INSERT INTO `unidades` VALUES ('B24', 'Kiloamperio por metro', NULL);
INSERT INTO `unidades` VALUES ('B25', 'Kilobecquerel por metrocÃƒÂºbico', NULL);
INSERT INTO `unidades` VALUES ('B26', 'KiloCulombio', NULL);
INSERT INTO `unidades` VALUES ('B27', 'KiloCulombio por metro cÃƒÂºbico', NULL);
INSERT INTO `unidades` VALUES ('B28', 'KiloCulombio por metro cuadrado', NULL);
INSERT INTO `unidades` VALUES ('B29', 'KiloelectrÃƒÂ³nvoltio', NULL);
INSERT INTO `unidades` VALUES ('B3', 'Libra de bateo', 'Unidad de masa que define el nÃƒÂºmero de libras de fibra acolchada.');
INSERT INTO `unidades` VALUES ('B30', 'Gibibit', 'Unidad de informaciÃƒÂ³n igual a 2Ã‚Â³? los bits (dÃƒÂ­gitos binarios).');
INSERT INTO `unidades` VALUES ('B31', 'Kilogramo metro por segundo', NULL);
INSERT INTO `unidades` VALUES ('B32', 'Kilogramo metro cuadrado', NULL);
INSERT INTO `unidades` VALUES ('B33', 'Kilogramo metro cuadrado por segundo', NULL);
INSERT INTO `unidades` VALUES ('B34', 'Kilogramo por decÃƒÂ­metro cÃƒÂºbico', NULL);
INSERT INTO `unidades` VALUES ('B35', 'Kilogramo por litro', NULL);
INSERT INTO `unidades` VALUES ('B36', 'CalorÃƒÂ­as (termoquÃƒÂ­micas) por gramo', NULL);
INSERT INTO `unidades` VALUES ('B37', 'Kilogramo de fuerza', NULL);
INSERT INTO `unidades` VALUES ('B38', 'Kilogramo-metro de la fuerza', NULL);
INSERT INTO `unidades` VALUES ('B39', 'Kilogramo-fuerza del metro por segundo', NULL);
INSERT INTO `unidades` VALUES ('B4', 'Barril, unidad imperial', 'Unidad de volumen utilizado para medir cerveza.Ã‚Â Un barril de cerveza es igual a 36 galones imperiales.');
INSERT INTO `unidades` VALUES ('B40', 'Kilogramo de fuerza por metro cuadrado', NULL);
INSERT INTO `unidades` VALUES ('B41', 'Kilojoule por kelvin', NULL);
INSERT INTO `unidades` VALUES ('B42', 'Kilojoule por kilogramo', NULL);
INSERT INTO `unidades` VALUES ('B43', 'Kilojoule por kilogramo kelvin', NULL);
INSERT INTO `unidades` VALUES ('B44', 'Kilojoule por Mol ', NULL);
INSERT INTO `unidades` VALUES ('B45', 'KiloMol', NULL);
INSERT INTO `unidades` VALUES ('B46', 'KiloMol por metro cÃƒÂºbico', NULL);
INSERT INTO `unidades` VALUES ('B47', 'Kilonewton', NULL);
INSERT INTO `unidades` VALUES ('B48', 'Kilonewton metro', NULL);
INSERT INTO `unidades` VALUES ('B49', 'KiloOhm', NULL);
INSERT INTO `unidades` VALUES ('B5', 'palanquilla', NULL);
INSERT INTO `unidades` VALUES ('B50', 'KiloOhm metro', NULL);
INSERT INTO `unidades` VALUES ('B51', 'KiloLibra', 'SinÃƒÂ³nimo: Kilogramo-fuerza');
INSERT INTO `unidades` VALUES ('B52', 'Kilosegundo', NULL);
INSERT INTO `unidades` VALUES ('B53', 'Kilosiemens', NULL);
INSERT INTO `unidades` VALUES ('B54', 'Kilosiemens por metro', NULL);
INSERT INTO `unidades` VALUES ('B55', 'Kilovoltio por metro', NULL);
INSERT INTO `unidades` VALUES ('B56', 'Kiloweber por metro', NULL);
INSERT INTO `unidades` VALUES ('B57', 'AÃƒÂ±o luz', 'Unidad de longitud que considera la distancia a la que viaja la luz en el vacÃƒÂ­o en un aÃƒÂ±o.');
INSERT INTO `unidades` VALUES ('B58', 'Litro por Mol', NULL);
INSERT INTO `unidades` VALUES ('B59', 'Lumen hora', NULL);
INSERT INTO `unidades` VALUES ('B6', 'Bollo', NULL);
INSERT INTO `unidades` VALUES ('B60', 'Lumen por metro cuadrado', NULL);
INSERT INTO `unidades` VALUES ('B61', 'Luminosidad por watt', NULL);
INSERT INTO `unidades` VALUES ('B62', 'Lumen segundo', NULL);
INSERT INTO `unidades` VALUES ('B63', 'Hora de luz', NULL);
INSERT INTO `unidades` VALUES ('B64', 'Segundo de luz', NULL);
INSERT INTO `unidades` VALUES ('B65', 'Maxwell', NULL);
INSERT INTO `unidades` VALUES ('B66', 'Megaamperio por metro cuadrado', NULL);
INSERT INTO `unidades` VALUES ('B67', 'Megabecquerel por kilogramo', NULL);
INSERT INTO `unidades` VALUES ('B68', 'Gigabit', 'Unidad de informaciÃƒÂ³n igual a 10? los bits (dÃƒÂ­gitos binarios).');
INSERT INTO `unidades` VALUES ('B69', 'MegaCulombio por metro cÃƒÂºbico', NULL);
INSERT INTO `unidades` VALUES ('B7', 'Ciclo', 'Unidad de recuento de definir el nÃƒÂºmero de ciclos (ciclo: un perÃƒÂ­odo recurrente de duraciÃƒÂ³n definida).');
INSERT INTO `unidades` VALUES ('B70', 'MegaCulombio por metro cuadrado', NULL);
INSERT INTO `unidades` VALUES ('B71', 'MegaelectrÃƒÂ³nvoltio', NULL);
INSERT INTO `unidades` VALUES ('B72', 'Megagramo por metro cÃƒÂºbico', NULL);
INSERT INTO `unidades` VALUES ('B73', 'Meganewton', NULL);
INSERT INTO `unidades` VALUES ('B74', 'Meganewton metro', NULL);
INSERT INTO `unidades` VALUES ('B75', 'MegaOhm', NULL);
INSERT INTO `unidades` VALUES ('B76', 'MegaOhm metro', NULL);
INSERT INTO `unidades` VALUES ('B77', 'Megasiemens por metro', NULL);
INSERT INTO `unidades` VALUES ('B78', 'Megavoltio ', NULL);
INSERT INTO `unidades` VALUES ('B79', 'Megavoltio por metro', NULL);
INSERT INTO `unidades` VALUES ('B8', 'Joule por metro cÃƒÂºbico', NULL);
INSERT INTO `unidades` VALUES ('B80', 'Gigabit por segundo', 'Unidad de informaciÃƒÂ³n igual a 10? bits (dÃƒÂ­gitos binarios) por segundo.');
INSERT INTO `unidades` VALUES ('B81', 'Reciprocidad del metro cuadrado, reciprocidad del segundo', NULL);
INSERT INTO `unidades` VALUES ('B82', 'Pulgadas por pie lineal', 'Unidad de longitud que define el nÃƒÂºmero de pulgadas por pie lineal.');
INSERT INTO `unidades` VALUES ('B83', 'Metro a la cuarta potencia', NULL);
INSERT INTO `unidades` VALUES ('B84', 'Microamperio', NULL);
INSERT INTO `unidades` VALUES ('B85', 'Microbar', NULL);
INSERT INTO `unidades` VALUES ('B86', 'MicroCulombio', NULL);
INSERT INTO `unidades` VALUES ('B87', 'MicroCulombio por metro cÃƒÂºbico', NULL);
INSERT INTO `unidades` VALUES ('B88', 'MicroCulombio por metro cuadrado', NULL);
INSERT INTO `unidades` VALUES ('B89', 'Microfaradio por metro', NULL);
INSERT INTO `unidades` VALUES ('B9', 'Batt', NULL);
INSERT INTO `unidades` VALUES ('B90', 'Microhenry', NULL);
INSERT INTO `unidades` VALUES ('B91', 'Microhenry por metro', NULL);
INSERT INTO `unidades` VALUES ('B92', 'Micronewton', NULL);
INSERT INTO `unidades` VALUES ('B93', 'Micronewton metro', NULL);
INSERT INTO `unidades` VALUES ('B94', 'Micro Ohm', NULL);
INSERT INTO `unidades` VALUES ('B95', 'MicroOhm metro', NULL);
INSERT INTO `unidades` VALUES ('B96', 'Micropascal', NULL);
INSERT INTO `unidades` VALUES ('B97', 'MicrorradiÃƒÂ¡n', 'Unidad de distancia angular igual a una milÃƒÂ©sima de milliradian. Unidad angular - una unidad de medida para ÃƒÂ¡ngulos.');
INSERT INTO `unidades` VALUES ('B98', 'Microsegundo', NULL);
INSERT INTO `unidades` VALUES ('B99', 'Microsiemens', NULL);
INSERT INTO `unidades` VALUES ('BAR', 'Bar [unidad de presiÃƒÂ³n]', 'Se denomina bar a una unidad de presiÃƒÂ³n equivalente a un millÃƒÂ³n de barias, aproximadamente igual a una atmÃƒÂ³sfera (1 atm). Su sÃƒÂ­mbolo es Ã‚Â«barÃ‚Â».');
INSERT INTO `unidades` VALUES ('BB', 'Caja base', 'Una unidad de ÃƒÂ¡rea de 112 hojas de productos de estaÃƒÂ±o (placa de estaÃƒÂ±o, acero libre de estaÃƒÂ±o o placa negra) 14 por 20 pulgadas o 31,360 pulgadas cuadradas.');
INSERT INTO `unidades` VALUES ('BFT', 'Tablero de pies', 'Unidad de medida para el volumen de la madera en el Estados Unidos y CanadÃƒÂ¡ . Es el volumen de una longitud de un pie de una placa de un pie de ancho y una pulgada de grosor.');
INSERT INTO `unidades` VALUES ('BH', 'Cepillo', NULL);
INSERT INTO `unidades` VALUES ('BHP', 'Potencia al freno', NULL);
INSERT INTO `unidades` VALUES ('BIL', 'Billon', 'Sinonimo: Trillon en EUA.');
INSERT INTO `unidades` VALUES ('BLD', 'Barril seco (EUA)', NULL);
INSERT INTO `unidades` VALUES ('BLL', 'Barril (EUA)', 'Un barril estadounidense es igual a:\r\n\r\n42 galones estadounidenses\r\n168 cuartos estadounidenses\r\n336 pintas estadounidenses\r\n1344 gills estadounidenses\r\n5376 onzas lÃƒÂ­quidas estadounidenses\r\n158.987294928 litros');
INSERT INTO `unidades` VALUES ('BP', 'Tabledo de cien pies', NULL);
INSERT INTO `unidades` VALUES ('BPM', 'Latidos por minuto', 'El nÃƒÂºmero de latidos por minuto.');
INSERT INTO `unidades` VALUES ('BQL', 'Becquerel', 'Es la actividad de una fuente radiactiva en la que se desintegra un nÃƒÂºcleo por segundo en un dado instante.');
INSERT INTO `unidades` VALUES ('BTU', 'Unidad tÃƒÂ©rmica britÃƒÂ¡nica (tabla internacional)', NULL);
INSERT INTO `unidades` VALUES ('BUA', 'Bushel (EUA)', 'El bushel es una unidad de medida de capacidad para mercancÃƒÂ­a sÃƒÂ³lida en los paÃƒÂ­ses anglosajones (paÃƒÂ­ses de habla inglesa). Se utiliza en el comercio de granos, harinas y otros productos anÃƒÂ¡logos.');
INSERT INTO `unidades` VALUES ('BUI', 'Bushel (UK)', 'Un bushel tiene 4 pecks o 32 quarts, y equivale a 1,03205 del bushel de los Estados Unidos, que a su vez equivale a 0,35238 hectolitros. La palabra bushel estÃƒÂ¡ cayendo en desuso rÃƒÂ¡pidamente.');
INSERT INTO `unidades` VALUES ('BW', 'Peso base', NULL);
INSERT INTO `unidades` VALUES ('BZ', 'Millones de BTUs', NULL);
INSERT INTO `unidades` VALUES ('C0', 'Llamada', 'Una unidad de recuento de definir el nÃƒÂºmero de llamadas (call: sesiÃƒÂ³n de comunicaciÃƒÂ³n o de visita).');
INSERT INTO `unidades` VALUES ('C1', 'Libra de producto compuesto (peso total)', NULL);
INSERT INTO `unidades` VALUES ('C10', 'Milifaradio', NULL);
INSERT INTO `unidades` VALUES ('C11', 'MiligalÃƒÂ³n', NULL);
INSERT INTO `unidades` VALUES ('C12', 'Miligramo por metro', NULL);
INSERT INTO `unidades` VALUES ('C13', 'MilliGray', NULL);
INSERT INTO `unidades` VALUES ('C14', 'Milihenry', NULL);
INSERT INTO `unidades` VALUES ('C15', 'Milijoule', NULL);
INSERT INTO `unidades` VALUES ('C16', 'MilÃƒÂ­metro por segundo', NULL);
INSERT INTO `unidades` VALUES ('C17', 'MilÃƒÂ­metro cuadrado por segundo', NULL);
INSERT INTO `unidades` VALUES ('C18', 'MiliMol', NULL);
INSERT INTO `unidades` VALUES ('C19', 'Mol por kilogramo', NULL);
INSERT INTO `unidades` VALUES ('C2', 'Carset', NULL);
INSERT INTO `unidades` VALUES ('C20', 'Milinewton', NULL);
INSERT INTO `unidades` VALUES ('C21', 'Kibibit', 'Unidad de informaciÃƒÂ³n igual a 2Ã‚Â¹? (1024) bits (dÃƒÂ­gitos binarios).');
INSERT INTO `unidades` VALUES ('C22', 'Milinewton por metro', NULL);
INSERT INTO `unidades` VALUES ('C23', 'MiliOhm metro', NULL);
INSERT INTO `unidades` VALUES ('C24', 'Milipascal segundo', NULL);
INSERT INTO `unidades` VALUES ('C25', 'MilirradiÃƒÂ¡n', 'Es una unidad derivada sistema internacional para la mediciÃƒÂ³n angular , que se define como una milÃƒÂ©sima parte de un radiÃƒÂ¡n (0,001 radianes).');
INSERT INTO `unidades` VALUES ('C26', 'Milisegundo', NULL);
INSERT INTO `unidades` VALUES ('C27', 'Milisiemens', NULL);
INSERT INTO `unidades` VALUES ('C28', 'MilliSievert', NULL);
INSERT INTO `unidades` VALUES ('C29', 'Militesla', NULL);
INSERT INTO `unidades` VALUES ('C3', 'Microvoltios por metro', NULL);
INSERT INTO `unidades` VALUES ('C30', 'Milivoltio por metro', NULL);
INSERT INTO `unidades` VALUES ('C31', 'Miliwatt', NULL);
INSERT INTO `unidades` VALUES ('C32', 'Miliwatt por metro cuadrado', 'Es equivalente a una milÃƒÂ©sima de vatio.');
INSERT INTO `unidades` VALUES ('C33', 'Miliweber', NULL);
INSERT INTO `unidades` VALUES ('C34', 'Mol', 'Es la cantidad de sustancia de un sistema que contiene tantas entidades elementales como ÃƒÂ¡tomos hay en 0,012 kilogramos de carbono 12. ');
INSERT INTO `unidades` VALUES ('C35', 'Mol por decimetro cÃƒÂºbico', NULL);
INSERT INTO `unidades` VALUES ('C36', 'Mol por metro cÃƒÂºbico', NULL);
INSERT INTO `unidades` VALUES ('C37', 'Kilobits', 'Unidad de informaciÃƒÂ³n igual a 10Ã‚Â³(1000) bits (dÃƒÂ­gitos binarios).');
INSERT INTO `unidades` VALUES ('C38', 'Mol por litro', NULL);
INSERT INTO `unidades` VALUES ('C39', 'Nanoamperio', NULL);
INSERT INTO `unidades` VALUES ('C4', 'partido de carga', NULL);
INSERT INTO `unidades` VALUES ('C40', 'NanoCulombio', NULL);
INSERT INTO `unidades` VALUES ('C41', 'Nanofaradio', NULL);
INSERT INTO `unidades` VALUES ('C42', 'Nanofaradio por metro', NULL);
INSERT INTO `unidades` VALUES ('C43', 'Nanohenry', NULL);
INSERT INTO `unidades` VALUES ('C44', 'Nanohenry por metro', NULL);
INSERT INTO `unidades` VALUES ('C45', 'NanÃƒÂ³metro', 'Medida de longitud que equivale a la milmillonÃƒÂ©sima parte del metro.');
INSERT INTO `unidades` VALUES ('C46', 'NanoOhm metro', NULL);
INSERT INTO `unidades` VALUES ('C47', 'Nanosegundo', NULL);
INSERT INTO `unidades` VALUES ('C48', 'Nanotesla', NULL);
INSERT INTO `unidades` VALUES ('C49', 'Nanowatt', NULL);
INSERT INTO `unidades` VALUES ('C5', 'Costo', NULL);
INSERT INTO `unidades` VALUES ('C50', 'Neperio', 'El neper o neperio es una unidad de medida relativa que se utiliza frecuentemente en el campo de la telecomunicaciÃƒÂ³n, para expresar relaciones entre voltajes o intensidades.');
INSERT INTO `unidades` VALUES ('C51', 'Neperio por segundo', NULL);
INSERT INTO `unidades` VALUES ('C52', 'PicÃƒÂ³metro', 'Es una unidad de longitud del SI que equivale a una billonÃƒÂ©sima (0,000 000 000 001 o 1Ãƒâ€”10-12) parte de un metro.');
INSERT INTO `unidades` VALUES ('C53', 'Newton metro segundo', NULL);
INSERT INTO `unidades` VALUES ('C54', 'Newton metro cuadrado por kilogramo cuadrado', NULL);
INSERT INTO `unidades` VALUES ('C55', 'Newton por metro cuadrado', NULL);
INSERT INTO `unidades` VALUES ('C56', 'Newton por milimetro cuadrado', NULL);
INSERT INTO `unidades` VALUES ('C57', 'Newton segundo', NULL);
INSERT INTO `unidades` VALUES ('C58', 'Segundos newton por metro', NULL);
INSERT INTO `unidades` VALUES ('C59', 'Octava', 'Una unidad utilizada en la mÃƒÂºsica para describir la relaciÃƒÂ³n de la frecuencia entre las notas.');
INSERT INTO `unidades` VALUES ('C6', 'celda', NULL);
INSERT INTO `unidades` VALUES ('C60', 'Ohm centÃƒÂ­metro', NULL);
INSERT INTO `unidades` VALUES ('C61', 'Ohm metro', NULL);
INSERT INTO `unidades` VALUES ('C62', 'Uno', 'SinÃƒÂ³nimo: unidad');
INSERT INTO `unidades` VALUES ('C63', 'PÃƒÂ¡rsec', 'Es una unidad de medida astronÃƒÂ³mica bastante utilizada para calcular grandes distancias entre objetos. ');
INSERT INTO `unidades` VALUES ('C64', 'Pascal por kelvin', NULL);
INSERT INTO `unidades` VALUES ('C65', 'Pascal segundo', 'Es la viscosidad dinÃƒÂ¡mica de un fluido homogÃƒÂ©neo, en el cual, el movimiento rectilÃƒÂ­neo y uniforme de una superficie plana de 1 metro cuadrado, da lugar a una fuerza retardatriz de 1 newton, cuando hay una diferencia de velocidad de 1 metro por se');
INSERT INTO `unidades` VALUES ('C66', 'Segundos pascal por metro cÃƒÂºbico', NULL);
INSERT INTO `unidades` VALUES ('C67', 'Segundos pascal por metro ', NULL);
INSERT INTO `unidades` VALUES ('C68', 'Petajoule', NULL);
INSERT INTO `unidades` VALUES ('C69', 'Phon', 'Unidad de volumen del sonido subjetivo. Un sonido tiene p phons de sonoridad si se parece al oyente a ser iguales en intensidad, con el sonido de un tono puro de frecuencia 1 kilohertz y de la fuerza p decibelios.');
INSERT INTO `unidades` VALUES ('C7', 'Centipoise', NULL);
INSERT INTO `unidades` VALUES ('C70', 'Picoamperio', NULL);
INSERT INTO `unidades` VALUES ('C71', 'PicoCulombio', NULL);
INSERT INTO `unidades` VALUES ('C72', 'Picofaradio por metro', NULL);
INSERT INTO `unidades` VALUES ('C73', 'Picohenry', NULL);
INSERT INTO `unidades` VALUES ('C74', 'Kilobits por segundo', 'Unidad de informaciÃƒÂ³n igual a 10 Ã‚Â³  (1000) bits (dÃƒÂ­gitos binarios) por segundo.');
INSERT INTO `unidades` VALUES ('C75', 'Picowatt', NULL);
INSERT INTO `unidades` VALUES ('C76', 'Picowatt  por metro cuadrado', 'Es igual a la trillonÃƒÂ©sima parte de un vatio (10?12).');
INSERT INTO `unidades` VALUES ('C77', 'Calibre de libra', NULL);
INSERT INTO `unidades` VALUES ('C78', 'Libra fuerza', NULL);
INSERT INTO `unidades` VALUES ('C79', 'Kilovoltios horas amperios', 'Unidad de energÃƒÂ­a acumulada de 1000 amperios voltioios durante un perÃƒÂ­odo de una hora.');
INSERT INTO `unidades` VALUES ('C8', 'MilliCulombio por kilogramo', NULL);
INSERT INTO `unidades` VALUES ('C80', 'Rad', NULL);
INSERT INTO `unidades` VALUES ('C81', 'RadiÃƒÂ¡n', 'Es la unidad de medida de un ÃƒÂ¡ngulo con vÃƒÂ©rtice en el centro de un cÃƒÂ­rculo cuyos lados son cortados por el arco de la circunferencia, y que ademÃƒÂ¡s dicho arco tiene una longitud igual a la del radio.');
INSERT INTO `unidades` VALUES ('C82', 'Radianmetro cuadrado por Mol', NULL);
INSERT INTO `unidades` VALUES ('C83', 'Rradian metro cuadrado por kilogramo', NULL);
INSERT INTO `unidades` VALUES ('C84', 'RadÃƒÂ­an por metro', NULL);
INSERT INTO `unidades` VALUES ('C85', 'Reciprocidad ÃƒÂmstrong', NULL);
INSERT INTO `unidades` VALUES ('C86', 'Reciprocidad del metro cÃƒÂºbico', NULL);
INSERT INTO `unidades` VALUES ('C87', 'Reciprocidad metro cÃƒÂºbico por segundo', 'Sinonimo: Reciprocidad del segundo por metro cÃƒÂºbico.');
INSERT INTO `unidades` VALUES ('C88', 'RecÃƒÂ­proco joule por metro cÃƒÂºbico', NULL);
INSERT INTO `unidades` VALUES ('C89', 'Henry recÃƒÂ­proco', NULL);
INSERT INTO `unidades` VALUES ('C9', 'Grupo bobinas', 'Unidad de conteo que define el nÃƒÂºmero de grupos de bobinas (grupo bobina: grupos de elementos dispuestos por longitudes de los objetos colocados en una secuencia de cÃƒÂ­rculos concÃƒÂ©ntricos unido).');
INSERT INTO `unidades` VALUES ('C90', 'RecÃƒÂ­proco Henry', NULL);
INSERT INTO `unidades` VALUES ('C91', 'RecÃƒÂ­procidad de kelvin ÃƒÂ³ kelvin a la potencia menos 1', NULL);
INSERT INTO `unidades` VALUES ('C92', 'Reciprocidad Metro', NULL);
INSERT INTO `unidades` VALUES ('C93', 'Reciprocidad Metro cuadrado', 'SinÃƒÂ³nimo: Reciprocidad de metro cuadrado');
INSERT INTO `unidades` VALUES ('C94', 'Reciprocidad Minuto', NULL);
INSERT INTO `unidades` VALUES ('C95', 'Reciprocidad Mol', 'Es una propiedad fÃƒÂ­sica definida como su masa por unidad de cantidad de sustancia.');
INSERT INTO `unidades` VALUES ('C96', 'Reciprocidad Pascal o pascal a la potencia menos 1 ', NULL);
INSERT INTO `unidades` VALUES ('C97', 'Reciprocidad Segundo', NULL);
INSERT INTO `unidades` VALUES ('C98', 'Segundo recÃƒÂ­proco por metro cÃƒÂºbico', NULL);
INSERT INTO `unidades` VALUES ('C99', 'Reciprocidad Segundo por metro cuadrado', NULL);
INSERT INTO `unidades` VALUES ('CCT', 'Capacidad de carga en toneladas mÃƒÂ©tricas', 'Unidad de masa que define la capacidad de carga, expresada como el nÃƒÂºmero de toneladas mÃƒÂ©tricas.');
INSERT INTO `unidades` VALUES ('CDL', 'Candela', 'La candela es una de las unidades bÃƒÂ¡sicas del Sistema Internacional, de intensidad luminosa.');
INSERT INTO `unidades` VALUES ('CE', 'Cada mes', NULL);
INSERT INTO `unidades` VALUES ('CEL', 'Grados celsius', 'Consulte ISO 80000-5 (Cantidades y unidades - Parte 5: TermodinÃƒÂ¡mica)');
INSERT INTO `unidades` VALUES ('CEN', 'Centenar', 'Una unidad de recuento de definir el nÃƒÂºmero de unidades en mÃƒÂºltiplos de 100.');
INSERT INTO `unidades` VALUES ('CG', 'Tarjeta', 'Unidad de conteo que define el nÃƒÂºmero de unidades de la tarjeta (tarjeta: papel rÃƒÂ­gido grueso o cartÃƒÂ³n).');
INSERT INTO `unidades` VALUES ('CGM', 'CentÃƒÂ­gramo', NULL);
INSERT INTO `unidades` VALUES ('CK', 'Conector', NULL);
INSERT INTO `unidades` VALUES ('CKG', 'Culombio por kilogramo', NULL);
INSERT INTO `unidades` VALUES ('CLF', 'Cientos de hojas', 'Una unidad de recuento de definir el nÃƒÂºmero de hojas, expresado en unidades de cien hojas.');
INSERT INTO `unidades` VALUES ('CLT', 'Centilitro', 'Medida de volumen, de sÃƒÂ­mbolo cl, que es igual a la centÃƒÂ©sima parte de un litro.');
INSERT INTO `unidades` VALUES ('CMK', 'CentÃƒÂ­metro cuadrado', 'Medida de longitud, de sÃƒÂ­mbolo cm, que es igual a la centÃƒÂ©sima parte de un metro.');
INSERT INTO `unidades` VALUES ('CMQ', 'CentÃƒÂ­metro cÃƒÂºbico', 'Medida de longitud, de sÃƒÂ­mbolo cm, que es igual a la centÃƒÂ©sima parte de un metro.');
INSERT INTO `unidades` VALUES ('CMT', 'CentÃƒÂ­metro', 'Es una unidad de longitud. Es el segundo submÃƒÂºltiplo del metro y equivale a la centÃƒÂ©sima parte de ÃƒÂ©l.');
INSERT INTO `unidades` VALUES ('CNP', 'Cientos de paquetes', 'Unidad de recuento para definir el nÃƒÂºmero de cientos de paquetes (cien paquete: conjunto de un centenar de artÃƒÂ­culos empaquetados juntos).');
INSERT INTO `unidades` VALUES ('CNT', 'Cental (UK)', 'Una unidad de masa igual a cien  kilos (EUA).');
INSERT INTO `unidades` VALUES ('COU', 'Culombio', 'Es la cantidad de electricidad transportada en 1 segundo por una corriente de intensidad 1 amperio. ');
INSERT INTO `unidades` VALUES ('CTG', 'Contenido en gramos', 'Unidad de masa que define el nÃƒÂºmero de gramos de un elemento con nombre en un producto.');
INSERT INTO `unidades` VALUES ('CTM', 'Quilatage mÃƒÂ©trico', 'Es una unidad de masa igual a 200  mg y se utiliza para la mediciÃƒÂ³n de las piedras preciosas y perlas .');
INSERT INTO `unidades` VALUES ('CTN', 'Tonelada de contenido (mÃƒÂ©trica)', 'Unidad de masa que define el nÃƒÂºmero de toneladas mÃƒÂ©tricas de un elemento con nombre en un producto.');
INSERT INTO `unidades` VALUES ('CUR', 'Curie', 'El Curie (Ci) es la unidad antigua de medida de radiactividad, definida como la actividad de in gramo del isÃƒÂ³topo Ra-226, su equivalencia es: 1Ci = 3,7 1010 Bq.');
INSERT INTO `unidades` VALUES ('CWA', 'Hundred pound', NULL);
INSERT INTO `unidades` VALUES ('CWI', 'Hundredweight', NULL);
INSERT INTO `unidades` VALUES ('CZ', 'Combo', NULL);
INSERT INTO `unidades` VALUES ('D03', 'Kilovatio hora por hora', 'Unidad de energÃƒÂ­a acumulada en mil vatios durante un perÃƒÂ­odo de una hora.');
INSERT INTO `unidades` VALUES ('D04', 'Lot [unidad de peso]', 'Unidad de peso igual a aproximadamente media onza o 15 gramos.');
INSERT INTO `unidades` VALUES ('D1', 'Segundo recÃƒÂ­proco por estereorradiÃƒÂ¡n', NULL);
INSERT INTO `unidades` VALUES ('D10', 'Siemens por metro', NULL);
INSERT INTO `unidades` VALUES ('D11', 'Mebibit', 'Una unidad de informaciÃƒÂ³n igual a 2Ã‚Â²? (1048576) bits (dÃƒÂ­gitos binarios).');
INSERT INTO `unidades` VALUES ('D12', 'Siemens metro cuadrado por Mol', NULL);
INSERT INTO `unidades` VALUES ('D13', 'Sievert', NULL);
INSERT INTO `unidades` VALUES ('D14', 'Yarda mil lineal', NULL);
INSERT INTO `unidades` VALUES ('D15', 'Sone', 'Una unidad de volumen del sonido subjetivo. Un sone es la intensidad de un tono puro de la frecuencia y la fuerza de un kilohertz 40 decibelios.');
INSERT INTO `unidades` VALUES ('D16', 'Centimetro cuadrado por erg', NULL);
INSERT INTO `unidades` VALUES ('D17', 'Centimetro cuadrado por esteroradian erg', NULL);
INSERT INTO `unidades` VALUES ('D18', 'Metro kelvin', NULL);
INSERT INTO `unidades` VALUES ('D19', 'Metro cuadrado kelvin por watt.', NULL);
INSERT INTO `unidades` VALUES ('D2', 'Segundo recÃƒÂ­proco por estereorradiÃƒÂ¡n metro cuadrado', NULL);
INSERT INTO `unidades` VALUES ('D20', 'Metro cuadrado por joule', NULL);
INSERT INTO `unidades` VALUES ('D21', 'Metro cuadrado por kilogramo', NULL);
INSERT INTO `unidades` VALUES ('D22', 'Metro cuadrado por Mol', NULL);
INSERT INTO `unidades` VALUES ('D23', 'Gramo pluma (proteÃƒÂ­na)', 'Unidad de recuento pata definir el nÃƒÂºmero de gramos de aminoÃƒÂ¡cidos  prescritos para la terapia parenteral y terapia enteral.');
INSERT INTO `unidades` VALUES ('D24', 'Metro cuadrado por esteroradian', NULL);
INSERT INTO `unidades` VALUES ('D25', 'Metro cuadrado por esteroradian joule', NULL);
INSERT INTO `unidades` VALUES ('D26', 'Metro cuadrado por voltiosegundo', NULL);
INSERT INTO `unidades` VALUES ('D27', 'EstereorradÃƒÂ­an', 'Es la unidad que mide angulos solidos');
INSERT INTO `unidades` VALUES ('D28', 'sifÃƒÂ³n', NULL);
INSERT INTO `unidades` VALUES ('D29', 'Terahertz', 'Se refiere a las ondas electromagnÃƒÂ©ticas que se propagan en las frecuencias en el rango de los terahercios.');
INSERT INTO `unidades` VALUES ('D30', 'Terajoule', NULL);
INSERT INTO `unidades` VALUES ('D31', 'Terawatt', NULL);
INSERT INTO `unidades` VALUES ('D32', 'Terawatt hora ', NULL);
INSERT INTO `unidades` VALUES ('D33', 'Tesla', 'Es la inducciÃƒÂ³n magnÃƒÂ©tica uniforme que, repartida normalmente sobre una superficie de 1 metro cuadrado, produce a travÃƒÂ©s de esta superficie un flujo magnÃƒÂ©tico total de 1 weber. ');
INSERT INTO `unidades` VALUES ('D34', 'Tex', 'Enidad de medida utilizada para medir la densidad o la masa lineal de una fibra.');
INSERT INTO `unidades` VALUES ('D35', 'CalorÃƒÂ­as (termoquÃƒÂ­micas)', NULL);
INSERT INTO `unidades` VALUES ('D36', 'Megabit', 'unidad que se usa para cuantificar un caudal de datos equivalente a 1000 kb/s.');
INSERT INTO `unidades` VALUES ('D37', 'CalorÃƒÂ­as (termoquÃƒÂ­micas) por gramo de kelvin', NULL);
INSERT INTO `unidades` VALUES ('D38', 'CalorÃƒÂ­as (termoquÃƒÂ­micas) por segundo centÃƒÂ­metro kelvin', NULL);
INSERT INTO `unidades` VALUES ('D39', 'CalorÃƒÂ­as (termoquÃƒÂ­micas) por segundo centÃƒÂ­metro cuadrado kelvin', NULL);
INSERT INTO `unidades` VALUES ('D40', 'Mil litros', NULL);
INSERT INTO `unidades` VALUES ('D41', 'Tonelada por metro cÃƒÂºbico', NULL);
INSERT INTO `unidades` VALUES ('D42', 'AÃƒÂ±o tropical', 'Unidad de tiempo equivalente a 365.242 19 dÃƒÂ­as. SinÃƒÂ³nimo: aÃƒÂ±o solar.');
INSERT INTO `unidades` VALUES ('D43', 'Unidad de masa atÃƒÂ³mica unificada', NULL);
INSERT INTO `unidades` VALUES ('D44', 'Var', 'El nombre de la unidad es un acrÃƒÂ³nimo de volt-amperio-reactive.');
INSERT INTO `unidades` VALUES ('D45', 'Voltio cuadrado por kelvin cuadrado', NULL);
INSERT INTO `unidades` VALUES ('D46', 'Voltioio-amperio', NULL);
INSERT INTO `unidades` VALUES ('D47', 'Voltio por centÃƒÂ­metro', NULL);
INSERT INTO `unidades` VALUES ('D48', 'Voltio por Kelvin ', NULL);
INSERT INTO `unidades` VALUES ('D49', 'Millivoltio por Kelvin ', NULL);
INSERT INTO `unidades` VALUES ('D5', 'Kilogramo por centÃƒÂ­metro cuadrado', NULL);
INSERT INTO `unidades` VALUES ('D50', 'Voltio por metro', 'Es la intensidad de un campo elÃƒÂ©ctrico, que ejerce una fuerza de 1 newton sobre un cuerpo cargado con una cantidad de electricidad de 1 coulomb.');
INSERT INTO `unidades` VALUES ('D51', 'Voltio por milÃƒÂ­metro', NULL);
INSERT INTO `unidades` VALUES ('D52', 'Watt por kelvin', NULL);
INSERT INTO `unidades` VALUES ('D53', 'Watt por metro kelvin', 'Es la conductividad tÃƒÂ©rmica de un cuerpo homogÃƒÂ©neo isÃƒÂ³tropo, en la que una diferencia de temperatura de 1 kelvin entre dos planos paralelos, de ÃƒÂ¡rea 1 metro cuadrado y distantes 1 metro, produce entre estos planos un flujo tÃƒÂ©rmico de 1 watt');
INSERT INTO `unidades` VALUES ('D54', 'Watt por metro cuadrado', NULL);
INSERT INTO `unidades` VALUES ('D55', 'Watt por metro cuadrado kelvin', NULL);
INSERT INTO `unidades` VALUES ('D56', 'Watt por metro cuadrado kelvin a la cuarta potencia', NULL);
INSERT INTO `unidades` VALUES ('D57', 'Watt por estereorradiÃƒÂ¡n', NULL);
INSERT INTO `unidades` VALUES ('D58', 'Watt por estereorradiÃƒÂ¡n metro cuadrado', NULL);
INSERT INTO `unidades` VALUES ('D59', 'Weber por metro', NULL);
INSERT INTO `unidades` VALUES ('D6', 'Roentgen por segundo', NULL);
INSERT INTO `unidades` VALUES ('D60', 'Weber por milÃƒÂ­metro', NULL);
INSERT INTO `unidades` VALUES ('D61', 'Minuto [unidad de ÃƒÂ¡ngulo]', 'Es una sexagesima parte de un grado.');
INSERT INTO `unidades` VALUES ('D62', 'Segundo [unidad de ÃƒÂ¡ngulo]', 'Es una unidad de medida angular. Su valor equivale a 1/60 del minuto de arco y a 1/3600 del grado sexagesimal.');
INSERT INTO `unidades` VALUES ('D63', 'Libro', 'Unidad de recuento para definir el nÃƒÂºmero de libros (libro: conjunto de elementos unidos entre sÃƒÂ­ o documento de un material escrito).');
INSERT INTO `unidades` VALUES ('D64', 'bloquear', NULL);
INSERT INTO `unidades` VALUES ('D65', 'Redondo', 'Unidad de recuento para definir el nÃƒÂºmero de rondas (redondos: un objeto circular o cilÃƒÂ­ndrico).');
INSERT INTO `unidades` VALUES ('D66', 'casete', NULL);
INSERT INTO `unidades` VALUES ('D67', 'DÃƒÂ³lar por hora', NULL);
INSERT INTO `unidades` VALUES ('D68', 'NÃƒÂºmero de palabras', 'Unidad de recuento para definir el nÃƒÂºmero de palabras.');
INSERT INTO `unidades` VALUES ('D69', 'Pulgada a la cuarta potencia', NULL);
INSERT INTO `unidades` VALUES ('D7', 'Sandwich', NULL);
INSERT INTO `unidades` VALUES ('D70', 'CalorÃƒÂ­as (tabla internacional)', NULL);
INSERT INTO `unidades` VALUES ('D71', 'CalorÃƒÂ­as (tabla internacional) por segundo centÃƒÂ­metro kelvin', NULL);
INSERT INTO `unidades` VALUES ('D72', 'CalorÃƒÂ­as (tabla internacional) por segundo centÃƒÂ­metro cuadrado kelvin', NULL);
INSERT INTO `unidades` VALUES ('D73', 'Joule metro cuadrado', NULL);
INSERT INTO `unidades` VALUES ('D74', 'Kilogramo por Mol', NULL);
INSERT INTO `unidades` VALUES ('D75', 'CalorÃƒÂ­as (tabla internacional) por gramo', NULL);
INSERT INTO `unidades` VALUES ('D76', 'CalorÃƒÂ­as (tabla internacional) por gramo de kelvin', NULL);
INSERT INTO `unidades` VALUES ('D77', 'MegaCulombio', NULL);
INSERT INTO `unidades` VALUES ('D78', 'Megajoule por segundo', 'Unidad de energÃƒÂ­a acumulada igual a un millÃƒÂ³n de julios por segundo.');
INSERT INTO `unidades` VALUES ('D79', 'Viga', NULL);
INSERT INTO `unidades` VALUES ('D8', 'Draize score', NULL);
INSERT INTO `unidades` VALUES ('D80', 'Microwatt', NULL);
INSERT INTO `unidades` VALUES ('D81', 'Microtesla', NULL);
INSERT INTO `unidades` VALUES ('D82', 'Microvoltio', NULL);
INSERT INTO `unidades` VALUES ('D83', 'Milinewton metro', NULL);
INSERT INTO `unidades` VALUES ('D85', 'Microwatt por metro cuadrado', 'Es equivalente a una millonÃƒÂ©sima parte de un vatio.');
INSERT INTO `unidades` VALUES ('D86', 'MiliCulombio', NULL);
INSERT INTO `unidades` VALUES ('D87', 'MiliMol por kilogramo', NULL);
INSERT INTO `unidades` VALUES ('D88', 'MiliCulombio por metro cÃƒÂºbico', NULL);
INSERT INTO `unidades` VALUES ('D89', 'MiliCulombio por metro cuadrado', NULL);
INSERT INTO `unidades` VALUES ('D9', 'Dyne por centÃƒÂ­metro cuadrado', NULL);
INSERT INTO `unidades` VALUES ('D90', 'Metro cÃƒÂºbico (neta)', NULL);
INSERT INTO `unidades` VALUES ('D91', 'Rem', NULL);
INSERT INTO `unidades` VALUES ('D92', 'banda', NULL);
INSERT INTO `unidades` VALUES ('D93', 'Segundo por metro cÃƒÂºbico', NULL);
INSERT INTO `unidades` VALUES ('D94', 'Segundo por metro cÃƒÂºbico Radian', NULL);
INSERT INTO `unidades` VALUES ('D95', 'Joule por gramo', NULL);
INSERT INTO `unidades` VALUES ('D96', 'Libra bruta', NULL);
INSERT INTO `unidades` VALUES ('D98', 'Libra masiva', NULL);
INSERT INTO `unidades` VALUES ('D99', 'manga', NULL);
INSERT INTO `unidades` VALUES ('DAA', 'Decar', NULL);
INSERT INTO `unidades` VALUES ('DAD', 'Decena de dÃƒÂ­as', 'Unidad de tiempo que define el nÃƒÂºmero de dÃƒÂ­as en mÃƒÂºltiplos de 10.');
INSERT INTO `unidades` VALUES ('DAY', 'DÃƒÂ­a', 'Se denomina dÃƒÂ­a (del latÃƒÂ­n dies) al lapso que tarda la Tierra desde que el Sol estÃƒÂ¡ en el punto mÃƒÂ¡s alto sobre el horizonte hasta que vuelve a estarlo.');
INSERT INTO `unidades` VALUES ('DB', 'Libra seca', 'Unidad de masa que define el nÃƒÂºmero de libras de un producto, sin tener en cuenta el contenido de agua del producto.');
INSERT INTO `unidades` VALUES ('DC', 'Disco (disco)', NULL);
INSERT INTO `unidades` VALUES ('DD', 'Grado [unidad de ÃƒÂ¡ngulo]', 'Es el resultado de dividir el ÃƒÂ¡ngulo llano en 180 partes iguales.');
INSERT INTO `unidades` VALUES ('DE', 'Acuerdo', NULL);
INSERT INTO `unidades` VALUES ('DEC', 'DÃƒÂ©cada', 'Unidad de recuento de definir el nÃƒÂºmero de dÃƒÂ©cadas (dÃƒÂ©cada: cantidad igual a 10 o tiempo igual a 10 aÃƒÂ±os).');
INSERT INTO `unidades` VALUES ('DG', 'Decigramo', NULL);
INSERT INTO `unidades` VALUES ('DI', 'dispensador', NULL);
INSERT INTO `unidades` VALUES ('DJ', 'Decagramo', NULL);
INSERT INTO `unidades` VALUES ('DLT', 'Decilitro', NULL);
INSERT INTO `unidades` VALUES ('DMA', 'DecÃƒÂ¡metro cÃƒÂºbico', NULL);
INSERT INTO `unidades` VALUES ('DMK', 'DecÃƒÂ­metro cuadrado ', 'Medida de longitud, de sÃƒÂ­mbolo dm, que es igual a la dÃƒÂ©cima parte de un metro.');
INSERT INTO `unidades` VALUES ('DMO', 'Kiloliter norma', 'Unidad de volumen que define el nÃƒÂºmero de kilolitros de un producto a una temperatura de 15 grados centÃƒÂ­grados, sobre todo en relaciÃƒÂ³n con los aceites de hidrocarburos.');
INSERT INTO `unidades` VALUES ('DMQ', 'DecÃƒÂ­metro cÃƒÂºbico', 'Medida de longitud, de sÃƒÂ­mbolo dm, que es igual a la dÃƒÂ©cima parte de un metro.');
INSERT INTO `unidades` VALUES ('DMT', 'DecÃƒÂ­metro', 'Es una unidad de longitud. Es el primer submÃƒÂºltiplo del metro y equivale a la dÃƒÂ©cima parte de ÃƒÂ©l.');
INSERT INTO `unidades` VALUES ('DN', 'Decinewton metro', NULL);
INSERT INTO `unidades` VALUES ('DPC', 'Docenas de piezas', 'Unidad de recuento para definir el nÃƒÂºmero de piezas en mÃƒÂºltiplos de 12 (pieza: un solo artÃƒÂ­culo, el artÃƒÂ­culo o ejemplar).');
INSERT INTO `unidades` VALUES ('DPR', 'Docenas de pares', 'Unidad de recuento de definir el nÃƒÂºmero de pares en mÃƒÂºltiplos de 12 (par: ÃƒÂ­tem descrito por dos de).');
INSERT INTO `unidades` VALUES ('DPT', 'Peso de desplazamiento', 'Unidad de masa que define el volumen de agua de mar de un barco desplaza, expresada como el nÃƒÂºmero de toneladas.');
INSERT INTO `unidades` VALUES ('DQ', 'registro de datos', NULL);
INSERT INTO `unidades` VALUES ('DRA', 'Dram (EUA)', 'SinÃƒÂ³nimo: dracma (Reino Unido), dram Troy');
INSERT INTO `unidades` VALUES ('DRI', 'Dram (UK)', 'Son las siglas de la voz inglesa Dynamic Random Access Memory, que significa memoria dinÃƒÂ¡mica de acceso aleatorio (o RAM dinÃƒÂ¡mica), para denominar a un tipo de tecnologÃƒÂ­a de memoria RAM basada en condensadores, los cuales pierden su carga progres');
INSERT INTO `unidades` VALUES ('DRL', 'Docena de rodillos', 'Unidad de recuento de definir el nÃƒÂºmero de rollos, expresado en doce unidades de rodillos.');
INSERT INTO `unidades` VALUES ('DRM', 'Drachm (UK)', NULL);
INSERT INTO `unidades` VALUES ('DS', 'monitor', NULL);
INSERT INTO `unidades` VALUES ('DT', 'Tonelada seca', 'Unidad de masa que define el nÃƒÂºmero de toneladas de un producto, sin tener en cuenta el contenido de agua del producto.');
INSERT INTO `unidades` VALUES ('DTN', 'Decitonelada mÃƒÂ©trica', 'SinÃƒÂ³nimo: centner, mÃƒÂ©trico 100 kg; Quintal, mÃƒÂ©trico 100 kg');
INSERT INTO `unidades` VALUES ('DU', 'dina', NULL);
INSERT INTO `unidades` VALUES ('DWT', 'Pennyweight', 'La unidad obsoleta pennyweight era Unidad de masa utilizada en el Reino Unido antes de 1971. Se consideraba equivalente a la masa de un penique, y equivale a la 1/240 parte de una libra troy. Se abrevia pwt.');
INSERT INTO `unidades` VALUES ('Dx', 'Dyne por centÃƒÂ­metro', NULL);
INSERT INTO `unidades` VALUES ('DY', 'Libro de directorio', NULL);
INSERT INTO `unidades` VALUES ('DZN', 'Docena', 'Unidad de recuento de definir el nÃƒÂºmero de unidades en mÃƒÂºltiplos de 12.');
INSERT INTO `unidades` VALUES ('DZP', 'Docena de paquete', 'Unidad de conteo que define el nÃƒÂºmero de paquetes en mÃƒÂºltiplos de 12 (paquete: unidad de embalaje estÃƒÂ¡ndar).');
INSERT INTO `unidades` VALUES ('E01', 'Newton por centÃƒÂ­metro cuadrado', 'Medida de la presiÃƒÂ³n expresada en newtons por centÃƒÂ­metro cuadrado');
INSERT INTO `unidades` VALUES ('E07', 'Megawatt hora por hora', 'Unidad de energÃƒÂ­a acumulado de un millÃƒÂ³n de vatios durante un perÃƒÂ­odo de una hora.');
INSERT INTO `unidades` VALUES ('E08', 'Megavatios por hertz', 'Unidad de energÃƒÂ­a expresada como el cambio de carga en millones de watts que provocarÃƒÂ¡ un desplazamiento de frecuencia de un hertz.');
INSERT INTO `unidades` VALUES ('E09', 'Miliamperio hora', 'Unidad de carga de potencia entregada a razÃƒÂ³n de una milÃƒÂ©sima parte de un amperio durante un perÃƒÂ­odo de una hora.');
INSERT INTO `unidades` VALUES ('E10', 'DÃƒÂ­a de grado', 'Unidad de medida utilizada en la meteorologÃƒÂ­a y la ingenierÃƒÂ­a para medir la demanda de calentamiento o enfriamiento durante un perÃƒÂ­odo determinado de dÃƒÂ­as.');
INSERT INTO `unidades` VALUES ('E11', 'Gigacalorie', 'Una unidad de energÃƒÂ­a tÃƒÂ©rmica equivalente a mil millones de calorÃƒÂ­as.');
INSERT INTO `unidades` VALUES ('E12', 'Mille', 'Unidad de recuento de definir el nÃƒÂºmero de cigarrillos en unidades de 1.000.');
INSERT INTO `unidades` VALUES ('E14', 'KilocalorÃƒÂ­a (tabla internacional)', NULL);
INSERT INTO `unidades` VALUES ('E15', 'KilocalorÃƒÂ­a (termoquÃƒÂ­mica) por hora', NULL);
INSERT INTO `unidades` VALUES ('E16', 'MillÃƒÂ³n de btu (ti) por hora', 'Unidad de potencia igual a un millÃƒÂ³n de unidades tÃƒÂ©rmicas britÃƒÂ¡nicas por hora.');
INSERT INTO `unidades` VALUES ('E17', 'Pie cÃƒÂºbico por segundo', 'Unidad de volumen igual a un pie cÃƒÂºbico pasa por un punto dado en un periodo de un segundo.');
INSERT INTO `unidades` VALUES ('E18', 'Tonelada por hora', 'Una unidad de peso o masa equivalente a una tonelada mÃƒÂ©trica por hora.');
INSERT INTO `unidades` VALUES ('E19', 'Ping', 'Unidad de ÃƒÂ¡rea equivalente a 3,3 metros cuadrados.');
INSERT INTO `unidades` VALUES ('E20', 'Megabit por segundo', 'Unidad de informaciÃƒÂ³n igual a 10 ?  (1000000) bits (dÃƒÂ­gitos binarios) por segundo.');
INSERT INTO `unidades` VALUES ('E21', 'Shares', 'Unidad de recuento para definir el nÃƒÂºmero de acciones (proporciÃƒÂ³n: un total o una parte de las partes en que se divide el capital de una entidad comercial).');
INSERT INTO `unidades` VALUES ('E22', 'Tue', 'Unidad de recuento para definir el nÃƒÂºmero de unidades equivalentes a veinte pies (TEU) como una medida de la capacidad de carga en contenedores.');
INSERT INTO `unidades` VALUES ('E23', 'NeumÃƒÂ¡tico', 'Unidad de recuento de definir el nÃƒÂºmero de neumÃƒÂ¡ticos (una cubierta sÃƒÂ³lida o llena de aire colocado alrededor de una llanta de rueda para formar un contacto suave con la carretera, absorber los golpes y proporcionar tracciÃƒÂ³n).');
INSERT INTO `unidades` VALUES ('E25', 'Unidad activa', 'Unidad de conteo que define el nÃƒÂºmero de unidades activas dentro de una sustancia.');
INSERT INTO `unidades` VALUES ('E27', 'Dosis', 'Unidad de recuento de definir el nÃƒÂºmero de dosis (dosis: una cantidad definida de un medicamento o fÃƒÂ¡rmaco).');
INSERT INTO `unidades` VALUES ('E28', 'Tonelada seca de aire', 'Unidad de masa que define el nÃƒÂºmero de toneladas de un producto, sin tener en cuenta el contenido de agua del producto.');
INSERT INTO `unidades` VALUES ('E3', 'remolque', NULL);
INSERT INTO `unidades` VALUES ('E30', 'Hebra', 'Unidad de recuento de definir el nÃƒÂºmero de hebras (hebra: de largo,, flexible, solo hilo delgado, tiras de fibra, filamento constituyente o mÃƒÂºltiplos de la misma, trenzados entre sÃƒÂ­).');
INSERT INTO `unidades` VALUES ('E31', 'Metro cuadrado por litro', 'Unidad de recuento de definir el nÃƒÂºmero de metros cuadrados por litro.');
INSERT INTO `unidades` VALUES ('E32', 'Litros por hora', 'Unidad de recuento de definir el nÃƒÂºmero de litros por hora.');
INSERT INTO `unidades` VALUES ('E33', 'Por mil pies', 'Unidad de recuento de definir el nÃƒÂºmero de pies por mil unidades.');
INSERT INTO `unidades` VALUES ('E34', 'Gigabyte', 'Unidad de informaciÃƒÂ³n igual a 10? bytes.');
INSERT INTO `unidades` VALUES ('E35', 'Terabyte', 'Unidad de informaciÃƒÂ³n igual a 10Ã‚Â¹Ã‚Â² bytes.');
INSERT INTO `unidades` VALUES ('E36', 'Petabyte', 'Unidad de informaciÃƒÂ³n igual a 10Ã‚Â¹? bytes.');
INSERT INTO `unidades` VALUES ('E37', 'Pixel', 'Unidad de recuento de definir el nÃƒÂºmero de pÃƒÂ­xeles (pÃƒÂ­xel: elemento de imagen).');
INSERT INTO `unidades` VALUES ('E38', 'MegapÃƒÂ­xeles', 'Unidad de recuento igual a 10 $ ? $ (1000000) pÃƒÂ­xeles (elementos de imagen).');
INSERT INTO `unidades` VALUES ('E39', 'Puntos por pulgada', 'Unidad de informaciÃƒÂ³n que define el nÃƒÂºmero de puntos por pulgada lineal como una medida de la resoluciÃƒÂ³n o nitidez de una imagen grÃƒÂ¡fica.');
INSERT INTO `unidades` VALUES ('E4', 'Kilo bruto', 'Unidad de masa que define el nÃƒÂºmero total de kilogramos antes de las deducciones.');
INSERT INTO `unidades` VALUES ('E40', 'Parte por cien mil', 'Unidad de proporciÃƒÂ³n igual a 10??.');
INSERT INTO `unidades` VALUES ('E41', 'Kilogramo-fuerza por milÃƒÂ­metro cuadrado', NULL);
INSERT INTO `unidades` VALUES ('E42', 'Kilogramo-fuerza por centÃƒÂ­metro cuadrado', NULL);
INSERT INTO `unidades` VALUES ('E43', 'Joule por centÃƒÂ­metro cuadrado', 'Una unidad de energÃƒÂ­a que define el nÃƒÂºmero de julios por centÃƒÂ­metro cuadrado.');
INSERT INTO `unidades` VALUES ('E44', 'Metros kilogramo-fuerza por centÃƒÂ­metro cuadrado', 'Unidad de torsiÃƒÂ³n que define el medidor de par kilogramo-fuerza por centÃƒÂ­metro cuadrado.');
INSERT INTO `unidades` VALUES ('E45', 'MiliOhm', NULL);
INSERT INTO `unidades` VALUES ('E46', 'Kilovatio hora por metro cÃƒÂºbico', 'Unidad de consumo de energÃƒÂ­a expresada como kilovatio hora por metro cÃƒÂºbico.');
INSERT INTO `unidades` VALUES ('E47', 'Kilovatio hora por kelvin', 'Unidad de consumo de energÃƒÂ­a expresada como kilovatio hora por kelvin.');
INSERT INTO `unidades` VALUES ('E48', 'Unidad de servicio', 'Unidad de conteo que define el nÃƒÂºmero de unidades de servicio (unidad de servicio: definido perÃƒÂ­odo / propiedad / centro / utilidad de alimentaciÃƒÂ³n).');
INSERT INTO `unidades` VALUES ('E49', 'DÃƒÂ­a de trabajo', 'Unidad de recuento de definir el nÃƒÂºmero de dÃƒÂ­as de trabajo (jornada de trabajo: un dÃƒÂ­a en el que se lleva a cabo normalmente un trabajo).');
INSERT INTO `unidades` VALUES ('E5', 'Tonelada mÃƒÂ©trica larga', 'Utilice ton (UK) o tonelada larga (US) (cÃƒÂ³digo comÃƒÂºn LTN)');
INSERT INTO `unidades` VALUES ('E50', 'Unidad de cuenta', 'Unidad de recuento de definir el nÃƒÂºmero de unidades de contabilidad.');
INSERT INTO `unidades` VALUES ('E51', 'Trabajo', 'Unidad de recuento de definir el nÃƒÂºmero de puestos de trabajo.');
INSERT INTO `unidades` VALUES ('E52', 'Run foot', 'Unidad de conteo para definir la distancia (en la unidad Pie) que se dan en una carrera).');
INSERT INTO `unidades` VALUES ('E53', 'Prueba', 'Unidad de recuento de definir el nÃƒÂºmero de pruebas.');
INSERT INTO `unidades` VALUES ('E54', 'Viaje', 'Unidad de recuento de definir el nÃƒÂºmero de viajes.');
INSERT INTO `unidades` VALUES ('E55', 'Utilizar', 'Unidad de recuento de definir el nÃƒÂºmero de veces que se utiliza un objeto.');
INSERT INTO `unidades` VALUES ('E56', 'Bien', 'Unidad de recuento para definir el nÃƒÂºmero de pozos.');
INSERT INTO `unidades` VALUES ('E57', 'Zona', 'Unidad de conteo que define el nÃƒÂºmero de zonas.');
INSERT INTO `unidades` VALUES ('E58', 'Exabit por segundo', 'Unidad de informaciÃƒÂ³n igual a 10Ã‚Â¹? bits (dÃƒÂ­gitos binarios) por segundo.');
INSERT INTO `unidades` VALUES ('E59', 'Exbibyte', 'Unidad de informaciÃƒÂ³n igual a 2?? bytes.');
INSERT INTO `unidades` VALUES ('E60', 'Pebibyte', 'Unidad de informaciÃƒÂ³n igual a 2?? bytes.');
INSERT INTO `unidades` VALUES ('E61', 'Tebibyte', 'Unidad de informaciÃƒÂ³n igual a 2?? bytes.');
INSERT INTO `unidades` VALUES ('E62', 'Gibibyte', 'Unidad de informaciÃƒÂ³n igual a 2Ã‚Â³? bytes.');
INSERT INTO `unidades` VALUES ('E63', 'Mebibyte', 'Unidad de informaciÃƒÂ³n igual a 2Ã‚Â²? bytes.');
INSERT INTO `unidades` VALUES ('E64', 'Kibibyte', 'Unidad de informaciÃƒÂ³n igual a 2Ã‚Â¹? bytes.');
INSERT INTO `unidades` VALUES ('E65', 'Exbibit por metro', 'Unidad de informaciÃƒÂ³n igual a 2?? bits (dÃƒÂ­gitos binarios) por metro.');
INSERT INTO `unidades` VALUES ('E66', 'Exbibit por metro cuadrado', 'Unidad de informaciÃƒÂ³n igual a 2?? bits (dÃƒÂ­gitos binarios) por metro cuadrado.');
INSERT INTO `unidades` VALUES ('E67', 'Exbibit por metro cÃƒÂºbico', 'Unidad de informaciÃƒÂ³n igual a 2?? bits (dÃƒÂ­gitos binarios) por metro cÃƒÂºbico.');
INSERT INTO `unidades` VALUES ('E68', 'Gigabyte por segundo', 'Unidad de informaciÃƒÂ³n igual a 10? bytes por segundo.');
INSERT INTO `unidades` VALUES ('E69', 'Gibibit por metro', 'Unidad de informaciÃƒÂ³n igual a 2Ã‚Â³? bits (dÃƒÂ­gitos binarios) por metro.');
INSERT INTO `unidades` VALUES ('E70', 'Gibibit por metro cuadrado', 'Unidad de informaciÃƒÂ³n igual a 2Ã‚Â³? bits (dÃƒÂ­gitos binarios) por metro cuadrado.');
INSERT INTO `unidades` VALUES ('E71', 'Gibibit por metro cÃƒÂºbico', 'Unidad de informaciÃƒÂ³n igual a 2Ã‚Â³? bits (dÃƒÂ­gitos binarios) por metro cÃƒÂºbico.');
INSERT INTO `unidades` VALUES ('E72', 'Kibibit por metro', 'Unidad de informaciÃƒÂ³n igual a 2Ã‚Â¹? bits (dÃƒÂ­gitos binarios) por metro.');
INSERT INTO `unidades` VALUES ('E73', 'Kibibit por metro cuadrado', 'Unidad de informaciÃƒÂ³n igual a 2Ã‚Â¹? bits (dÃƒÂ­gitos binarios) por metro cuadrado.');
INSERT INTO `unidades` VALUES ('E74', 'Kikibit por metro cÃƒÂºbico.', ' Unidad de informaciÃƒÂ³n igual a 2Ã‚Â¹? bits (dÃƒÂ­gitos binarios) por metro cÃƒÂºbico.');
INSERT INTO `unidades` VALUES ('E75', 'Mebbit por metro.', ' Unidad de informaciÃƒÂ³n igual a 2Ã‚Â²? bits (dÃƒÂ­gitos binarios) por metro.');
INSERT INTO `unidades` VALUES ('E76', 'Mebbitt por metro cuadrado.', ' Unidad de informaciÃƒÂ³n igual a 2Ã‚Â²? bits (dÃƒÂ­gitos binarios) por metro cuadrado.');
INSERT INTO `unidades` VALUES ('E77', 'Mebbit por metro cÃƒÂºbico. ', ' Unidad de informaciÃƒÂ³n igual a 2Ã‚Â²? bits (dÃƒÂ­gitos binarios) por metro cÃƒÂºbico.');
INSERT INTO `unidades` VALUES ('E78', 'Petabit', ' Unidad de informaciÃƒÂ³n igual a 10Ã‚Â¹? los bits (dÃƒÂ­gitos binarios).');
INSERT INTO `unidades` VALUES ('E79', 'Pebibit por segundo.', ' Unidad de informaciÃƒÂ³n igual a 10Ã‚Â¹? bits (dÃƒÂ­gitos binarios) por segundo.');
INSERT INTO `unidades` VALUES ('E80', 'Pebibit por metro.', 'Unidad de informaciÃƒÂ³n igual a 2?? bits (dÃƒÂ­gitos binarios) por metro.');
INSERT INTO `unidades` VALUES ('E81', 'Pebibit por metro cuadrado.', ' Unidad de informaciÃƒÂ³n igual a 2?? bits (dÃƒÂ­gitos binarios) por metro cuadrado.');
INSERT INTO `unidades` VALUES ('E82', 'Pebibit por metro cÃƒÂºbico.', ' Unidad de informaciÃƒÂ³n igual a 2?? bits (dÃƒÂ­gitos binarios) por metro cÃƒÂºbico.');
INSERT INTO `unidades` VALUES ('E83', 'Tebibit.', ' Unidad de informaciÃƒÂ³n igual a 10Ã‚Â¹Ã‚Â² los bits (dÃƒÂ­gitos binarios).');
INSERT INTO `unidades` VALUES ('E84', 'Tebibit por segundo', ' Unidad de informaciÃƒÂ³n igual a 10Ã‚Â¹Ã‚Â² bits (dÃƒÂ­gitos binarios) por segundo.');
INSERT INTO `unidades` VALUES ('E85', 'Tebibit por metro.', ' Unidad de informaciÃƒÂ³n igual a 2?? bits (dÃƒÂ­gitos binarios) por metro.');
INSERT INTO `unidades` VALUES ('E86', 'Tebibit por metro cÃƒÂºbico.', ' Unidad de informaciÃƒÂ³n igual a 2?? bits (dÃƒÂ­gitos binarios) por metro cÃƒÂºbico.');
INSERT INTO `unidades` VALUES ('E87', 'Tebibit por metro cuadrado', ' Unidad de informaciÃƒÂ³n igual a 2?? bits (dÃƒÂ­gitos binarios) por metro cuadrado.');
INSERT INTO `unidades` VALUES ('E88', 'Bit por metro', 'Unidad de informaciÃƒÂ³n igual a 1 bit (dÃƒÂ­gito binario) por metro.');
INSERT INTO `unidades` VALUES ('E89', 'Bit por metro cuadrado', ' Unidad de informaciÃƒÂ³n igual a 1 bit (dÃƒÂ­gito binario) por metro cuadrado.');
INSERT INTO `unidades` VALUES ('E90', 'CentÃƒÂ­metro recÃƒÂ­proco', NULL);
INSERT INTO `unidades` VALUES ('E91', 'DÃƒÂ­a recÃƒÂ­proco', NULL);
INSERT INTO `unidades` VALUES ('E92', 'DecÃƒÂ­metro cÃƒÂºbico por hora', NULL);
INSERT INTO `unidades` VALUES ('E93', 'Kilogramo por hora', NULL);
INSERT INTO `unidades` VALUES ('E94', 'KiloMol por segundo', NULL);
INSERT INTO `unidades` VALUES ('E95', 'Mol por segundo', NULL);
INSERT INTO `unidades` VALUES ('E96', 'Grado por segundo', NULL);
INSERT INTO `unidades` VALUES ('E97', 'Mililitro por gadro celsius metro', NULL);
INSERT INTO `unidades` VALUES ('E98', 'Grado celsius por kelvin', NULL);
INSERT INTO `unidades` VALUES ('E99', 'Hectopascal por bar', NULL);
INSERT INTO `unidades` VALUES ('EA', 'Elemento', 'Unidad de conteo que define el nÃƒÂºmero de elementos considerados como unidades separadas.');
INSERT INTO `unidades` VALUES ('EB', 'Casilla de correo electrÃƒÂ³nico', 'Es el destino al que correo electrÃƒÂ³nico se entregan los mensajes. Es el equivalente de un buzÃƒÂ³n en el sistema postal.');
INSERT INTO `unidades` VALUES ('EP', 'Paquete de once', NULL);
INSERT INTO `unidades` VALUES ('EQ', 'GalÃƒÂ³n equivalente', 'Unidad de volumen que define el nÃƒÂºmero de galones de producto producido a partir de concentrado.');
INSERT INTO `unidades` VALUES ('F01', 'Bit por metro cÃƒÂºbico', 'Unidad de informaciÃƒÂ³n igual a 1 bit (dÃƒÂ­gito binario) por metro cÃƒÂºbico.');
INSERT INTO `unidades` VALUES ('F02', 'Kelvin por kelvin', NULL);
INSERT INTO `unidades` VALUES ('F03', 'Kilopascal por bar', NULL);
INSERT INTO `unidades` VALUES ('F04', 'Milibar por bar', NULL);
INSERT INTO `unidades` VALUES ('F05', 'Megapascal por bar', NULL);
INSERT INTO `unidades` VALUES ('F06', 'Poise por bar', NULL);
INSERT INTO `unidades` VALUES ('F07', 'Pascal por bar', NULL);
INSERT INTO `unidades` VALUES ('F08', 'Miliamperio por pulgada', NULL);
INSERT INTO `unidades` VALUES ('F1', 'Mil pies cÃƒÂºbicos por dÃƒÂ­a', NULL);
INSERT INTO `unidades` VALUES ('F10', 'Kelvin por hora', NULL);
INSERT INTO `unidades` VALUES ('F11', 'Kelvin por minuto', NULL);
INSERT INTO `unidades` VALUES ('F12', 'Kelvin por segundo', NULL);
INSERT INTO `unidades` VALUES ('F13', 'Slug', 'Una unidad de masa. Un slug es la masa acelerada a 1 pie por segundo por segundo por una fuerza de 1 libra.');
INSERT INTO `unidades` VALUES ('F14', 'Gramo por kelvin', NULL);
INSERT INTO `unidades` VALUES ('F15', 'Kilogramo por kelvin', NULL);
INSERT INTO `unidades` VALUES ('F16', 'Miligramo por kelvin', NULL);
INSERT INTO `unidades` VALUES ('F17', 'Libra fuerza por pie', NULL);
INSERT INTO `unidades` VALUES ('F18', 'Kilogramo centÃƒÂ­metro cuadrado', NULL);
INSERT INTO `unidades` VALUES ('F19', 'Kilogramo milimetro cuadrado', NULL);
INSERT INTO `unidades` VALUES ('F20', 'Libra pulgada cuadrada', NULL);
INSERT INTO `unidades` VALUES ('F21', 'Libra fuerza pulgada', NULL);
INSERT INTO `unidades` VALUES ('F22', 'Libra fuerza por pie entre amperio', NULL);
INSERT INTO `unidades` VALUES ('F23', 'Gramo por decÃƒÂ­metro cÃƒÂºbico', NULL);
INSERT INTO `unidades` VALUES ('F24', 'Kilogramo por kiloMol', NULL);
INSERT INTO `unidades` VALUES ('F25', 'Gramo por hertz', NULL);
INSERT INTO `unidades` VALUES ('F26', 'Gramo por dÃƒÂ­a', NULL);
INSERT INTO `unidades` VALUES ('F27', 'Gramo por hora', NULL);
INSERT INTO `unidades` VALUES ('F28', 'Gramo por minuto', NULL);
INSERT INTO `unidades` VALUES ('F29', 'Gramo por segundo', NULL);
INSERT INTO `unidades` VALUES ('F30', 'Kilogramo por dÃƒÂ­a', NULL);
INSERT INTO `unidades` VALUES ('F31', 'Kilogramo por minuto', NULL);
INSERT INTO `unidades` VALUES ('F32', 'Miligramo por dia', NULL);
INSERT INTO `unidades` VALUES ('F33', 'Miligramo por minuto', NULL);
INSERT INTO `unidades` VALUES ('F34', 'Miligramo por segundo', NULL);
INSERT INTO `unidades` VALUES ('F35', 'Gramo por dÃƒÂ­a kelvin', NULL);
INSERT INTO `unidades` VALUES ('F36', 'Gramo por hora kelvin', NULL);
INSERT INTO `unidades` VALUES ('F37', 'Gramo por minuto kelvin', NULL);
INSERT INTO `unidades` VALUES ('F38', 'Gramo por segundo kelvin', NULL);
INSERT INTO `unidades` VALUES ('F39', 'Kilogramo por dÃƒÂ­a kelvin', NULL);
INSERT INTO `unidades` VALUES ('F40', 'Kilogramo por hora kelvin', NULL);
INSERT INTO `unidades` VALUES ('F41', 'Kilogramo por minuto kelvin', NULL);
INSERT INTO `unidades` VALUES ('F42', 'Kilogramo por segundo kelvin', NULL);
INSERT INTO `unidades` VALUES ('F43', 'Miligramo por dÃƒÂ­a kelvin', NULL);
INSERT INTO `unidades` VALUES ('F44', 'Miligramo por hora kelvin', NULL);
INSERT INTO `unidades` VALUES ('F45', 'Miligramo por minuto kelvin', NULL);
INSERT INTO `unidades` VALUES ('F46', 'Miligramo por segundo kelvin', NULL);
INSERT INTO `unidades` VALUES ('F47', 'Newton por milÃƒÂ­metro', NULL);
INSERT INTO `unidades` VALUES ('F48', 'Libra fuerza por pulgada', NULL);
INSERT INTO `unidades` VALUES ('F49', 'Rod (Unidad de distancia)', 'Unidad de distancia equivalente a 5.5 yardas (16 pies 6 pulgadas)');
INSERT INTO `unidades` VALUES ('F50', 'MicrÃƒÂ³metro por kelvin', NULL);
INSERT INTO `unidades` VALUES ('F51', 'CentÃƒÂ­metro por kelvin', NULL);
INSERT INTO `unidades` VALUES ('F52', 'Metro por kelvin', NULL);
INSERT INTO `unidades` VALUES ('F53', 'Mililitro por kelvin', NULL);
INSERT INTO `unidades` VALUES ('F54', 'MiliOhm por metro', NULL);
INSERT INTO `unidades` VALUES ('F55', 'Ohm por milla (milla estatal)', NULL);
INSERT INTO `unidades` VALUES ('F56', 'Ohm por kilÃƒÂ³metro', NULL);
INSERT INTO `unidades` VALUES ('F57', 'Miliamperio por libra-fuerza por pulgada cuadrada', NULL);
INSERT INTO `unidades` VALUES ('F58', 'Bar recÃƒÂ­proco', NULL);
INSERT INTO `unidades` VALUES ('F59', 'Miliamperio por bar', NULL);
INSERT INTO `unidades` VALUES ('F60', 'Grado celsius por bar', NULL);
INSERT INTO `unidades` VALUES ('F61', 'Kelvin por bar', NULL);
INSERT INTO `unidades` VALUES ('F62', 'Gramo por dÃƒÂ­a bar', NULL);
INSERT INTO `unidades` VALUES ('F63', 'Gramo por hora bar', NULL);
INSERT INTO `unidades` VALUES ('F64', 'Gramo por minuto bar', NULL);
INSERT INTO `unidades` VALUES ('F65', 'Gramo por segundo bar', NULL);
INSERT INTO `unidades` VALUES ('F66', 'Kililogramo por dÃƒÂ­a bar', NULL);
INSERT INTO `unidades` VALUES ('F67', 'Kilogramo por hora bar', NULL);
INSERT INTO `unidades` VALUES ('F68', 'Kilogramo por minuto bar', NULL);
INSERT INTO `unidades` VALUES ('F69', 'Kilogramo por segundo bar', NULL);
INSERT INTO `unidades` VALUES ('F70', 'Miligramo por dÃƒÂ­a bar', NULL);
INSERT INTO `unidades` VALUES ('F71', 'Miligramo por hora bar', NULL);
INSERT INTO `unidades` VALUES ('F72', 'Miligramo por minuto bar', NULL);
INSERT INTO `unidades` VALUES ('F73', 'Miligramo por segundo bar', NULL);
INSERT INTO `unidades` VALUES ('F74', 'Gramo por bar', NULL);
INSERT INTO `unidades` VALUES ('F75', 'Miligramo por bar', NULL);
INSERT INTO `unidades` VALUES ('F76', 'Miliamperio por milÃƒÂ­metro', NULL);
INSERT INTO `unidades` VALUES ('F77', 'Pascal segundo por kelvin', NULL);
INSERT INTO `unidades` VALUES ('F78', 'Pulgada de agua', NULL);
INSERT INTO `unidades` VALUES ('F79', 'Pulgada de mercurio', NULL);
INSERT INTO `unidades` VALUES ('F80', 'Caballos de fuerza de agua', 'Define la cantidad de potencia requerida para mover un volumen dado de agua contra la aceleraciÃƒÂ³n de la gravedad a una elevaciÃƒÂ³n especificada (cabezal de presiÃƒÂ³n).');
INSERT INTO `unidades` VALUES ('F81', 'Bar por kelvin', NULL);
INSERT INTO `unidades` VALUES ('F82', 'Hectopascal por kelvin', NULL);
INSERT INTO `unidades` VALUES ('F83', 'Kilopascal por kelvin', NULL);
INSERT INTO `unidades` VALUES ('F84', 'Milibar por kelvin', NULL);
INSERT INTO `unidades` VALUES ('F85', 'Megapascal por kelvin', NULL);
INSERT INTO `unidades` VALUES ('F86', 'Poise por kelvin', NULL);
INSERT INTO `unidades` VALUES ('F87', 'Voltio por litro minuto', NULL);
INSERT INTO `unidades` VALUES ('F88', 'Newton centÃƒÂ­metro', NULL);
INSERT INTO `unidades` VALUES ('F89', 'Newton metro por grados', NULL);
INSERT INTO `unidades` VALUES ('F9', 'Fibra por centÃƒÂ­metro cÃƒÂºbico de aire', NULL);
INSERT INTO `unidades` VALUES ('F90', 'Newton metro por amperio', NULL);
INSERT INTO `unidades` VALUES ('F91', 'Bar litro por segundo', NULL);
INSERT INTO `unidades` VALUES ('F92', 'Bar metro cÃƒÂºbico por segundo', NULL);
INSERT INTO `unidades` VALUES ('F93', 'Hectopascal litro por segundo', NULL);
INSERT INTO `unidades` VALUES ('F94', 'Hectopascal metro cÃƒÂºbico por segundo', NULL);
INSERT INTO `unidades` VALUES ('F95', 'Milibar litro por segundo', NULL);
INSERT INTO `unidades` VALUES ('F96', 'Milibar metro cÃƒÂºbico por segundo', NULL);
INSERT INTO `unidades` VALUES ('F97', 'Megapascal litro por segundo', NULL);
INSERT INTO `unidades` VALUES ('F98', 'Megapascal metro cÃƒÂºbico por segundo', NULL);
INSERT INTO `unidades` VALUES ('F99', 'Pascal litro por segundo', NULL);
INSERT INTO `unidades` VALUES ('FAH', 'Grado fahrenheit', 'Consulte ISO 80000-5 (Cantidades y unidades - Parte 5: TermodinÃƒÂ¡mica)');
INSERT INTO `unidades` VALUES ('FAR', 'Farad', 'Es la capacidad de un condensador elÃƒÂ©ctrico que entre sus armaduras aparece una diferencia de potencial elÃƒÂ©ctrico de 1 volt, cuando estÃƒÂ¡ cargado con una cantidad de electricidad igual a 1 coulomb. ');
INSERT INTO `unidades` VALUES ('FB', 'campo', NULL);
INSERT INTO `unidades` VALUES ('FBM', 'Medidor de fibra', 'Unidad de longitud que define el nÃƒÂºmero de metros de fibra individual.');
INSERT INTO `unidades` VALUES ('FC', 'Mil pies cÃƒÂºbicos', 'Unidad de volumen igual a mil pies cÃƒÂºbicos.');
INSERT INTO `unidades` VALUES ('FD', 'Millones de partÃƒÂ­culas por pie cÃƒÂºbico', NULL);
INSERT INTO `unidades` VALUES ('FE', 'Pie de pista', NULL);
INSERT INTO `unidades` VALUES ('FF', 'Cien metros cÃƒÂºbicos', 'Unidad de volumen igual a cien metros cÃƒÂºbicos.');
INSERT INTO `unidades` VALUES ('FG', 'Parche transdÃƒÂ©rmico', NULL);
INSERT INTO `unidades` VALUES ('FH', 'MicroMol', NULL);
INSERT INTO `unidades` VALUES ('FIT', 'Fallas en el tiempo', 'Unidad de conteo que define el nÃƒÂºmero de fallos que se pueden esperar en un intervalo de tiempo especificado. Las tasas de fallo de los componentes semiconductores se especifican a menudo como FIT (fallas en la unidad de tiempo) donde 1 FIT = 10?? / h.');
INSERT INTO `unidades` VALUES ('FL', 'Flake ton', 'Unidad de masa que define el nÃƒÂºmero de toneladas de una sustancia en copos (escamas: un pequeÃƒÂ±o fragmento plano).');
INSERT INTO `unidades` VALUES ('FM', 'Millones de pies cÃƒÂºbicos', NULL);
INSERT INTO `unidades` VALUES ('FOT', 'Pie', 'Unidad de medida empleada por aeronautas, equivale a 30.48 cm');
INSERT INTO `unidades` VALUES ('FP', 'Libra por pie cuadrado', NULL);
INSERT INTO `unidades` VALUES ('FR', 'Pie por minuto', NULL);
INSERT INTO `unidades` VALUES ('FS', 'Pie por segundo', NULL);
INSERT INTO `unidades` VALUES ('FTK', 'Pie cuadrado', ' Es una unidad de superficie del sistema anglosajÃƒÂ³n de unidades, equivalente a un cuadrado de un pie de lado.');
INSERT INTO `unidades` VALUES ('FTQ', 'Pie cÃƒÂºbico', NULL);
INSERT INTO `unidades` VALUES ('G01', 'Pascal metro cÃƒÂºbico por segundo', NULL);
INSERT INTO `unidades` VALUES ('G04', 'CentÃƒÂ­metro por bar', NULL);
INSERT INTO `unidades` VALUES ('G05', 'Metro por bar ', NULL);
INSERT INTO `unidades` VALUES ('G06', 'MilÃƒÂ­metro por bar ', NULL);
INSERT INTO `unidades` VALUES ('G08', 'Pulgada cuadrada por segundo', NULL);
INSERT INTO `unidades` VALUES ('G09', 'Metro cuadrado por segundo kelvin', NULL);
INSERT INTO `unidades` VALUES ('G10', 'Stokes por kelvin', NULL);
INSERT INTO `unidades` VALUES ('G11', 'Gramo por centÃƒÂ­metro cÃƒÂºbico bar', NULL);
INSERT INTO `unidades` VALUES ('G12', 'Gramo por decÃƒÂ­metro cÃƒÂºbico bar', NULL);
INSERT INTO `unidades` VALUES ('G13', 'Gramo por litro bar', NULL);
INSERT INTO `unidades` VALUES ('G14', 'Gramo por metro cÃƒÂºbico bar', NULL);
INSERT INTO `unidades` VALUES ('G15', 'Gramo por mililitro bar', NULL);
INSERT INTO `unidades` VALUES ('G16', 'Kilogramo por centÃƒÂ­metro cÃƒÂºbico bar', NULL);
INSERT INTO `unidades` VALUES ('G17', 'Kilogramo por litro bar', NULL);
INSERT INTO `unidades` VALUES ('G18', 'Kilogramo por metro cÃƒÂºbico bar', NULL);
INSERT INTO `unidades` VALUES ('G19', 'Newton metro por kilogramo', NULL);
INSERT INTO `unidades` VALUES ('G2', 'GalÃƒÂ³n (EUA) por minuto', NULL);
INSERT INTO `unidades` VALUES ('G20', 'Libra-fuerza pie por libra', NULL);
INSERT INTO `unidades` VALUES ('G21', 'Taza (unidad de volumen)', NULL);
INSERT INTO `unidades` VALUES ('G23', 'Peck', 'Es una unidad de medida imperial y habitual en  Estados Unidos de volumen seco.');
INSERT INTO `unidades` VALUES ('G24', 'Cucharada (estados unidos)', '1/2 onzas fluidas, 3 cucharaditas, 15 mililitros');
INSERT INTO `unidades` VALUES ('G25', 'Cucharilla (estados unidos)', '1/6 onzas fluidas o 5 mililitros');
INSERT INTO `unidades` VALUES ('G26', 'Estere', NULL);
INSERT INTO `unidades` VALUES ('G27', 'CentÃƒÂ­metro cÃƒÂºbico por kelvin', NULL);
INSERT INTO `unidades` VALUES ('G28', 'Litro por kelvin', NULL);
INSERT INTO `unidades` VALUES ('G29', 'Metro cÃƒÂºbico por kelvin', NULL);
INSERT INTO `unidades` VALUES ('G3', 'GalÃƒÂ³n (RU) por minuto', NULL);
INSERT INTO `unidades` VALUES ('G30', 'Mililitro por klevin', NULL);
INSERT INTO `unidades` VALUES ('G31', 'Kilogramo por centÃƒÂ­metro cÃƒÂºbico', NULL);
INSERT INTO `unidades` VALUES ('G32', 'Onza (avoirdupois) por yarda cÃƒÂºbica', NULL);
INSERT INTO `unidades` VALUES ('G33', 'Gramo por centÃƒÂ­metro cÃƒÂºbico kelvin', NULL);
INSERT INTO `unidades` VALUES ('G34', 'Gramo por decÃƒÂ­metro cÃƒÂºbico kelvin', NULL);
INSERT INTO `unidades` VALUES ('G35', 'Gramo por litro kelvin', NULL);
INSERT INTO `unidades` VALUES ('G36', 'Gramo por metro cÃƒÂºbico kelvin', NULL);
INSERT INTO `unidades` VALUES ('G37', 'Gramo por mililitro kelvin', NULL);
INSERT INTO `unidades` VALUES ('G38', 'Kilogramo por centÃƒÂ­metro cÃƒÂºbico kelvin', NULL);
INSERT INTO `unidades` VALUES ('G39', 'Kilogramo por litro kelvin', NULL);
INSERT INTO `unidades` VALUES ('G40', 'Kilogramo por metro cÃƒÂºbico kelvin', NULL);
INSERT INTO `unidades` VALUES ('G41', 'Metro cuadrado por segundo bar', NULL);
INSERT INTO `unidades` VALUES ('G42', 'Microsiemens por centÃƒÂ­metro', NULL);
INSERT INTO `unidades` VALUES ('G43', 'Microsiemens por metro', NULL);
INSERT INTO `unidades` VALUES ('G44', 'Nanosiemens por centÃƒÂ­metro', NULL);
INSERT INTO `unidades` VALUES ('G45', 'Nanosiemens por metro', NULL);
INSERT INTO `unidades` VALUES ('G46', 'Stokes por bar', NULL);
INSERT INTO `unidades` VALUES ('G47', 'CentÃƒÂ­metro cÃƒÂºbico por dÃƒÂ­a', NULL);
INSERT INTO `unidades` VALUES ('G48', 'CentÃƒÂ­metro cÃƒÂºbico por hora', NULL);
INSERT INTO `unidades` VALUES ('G49', 'CentÃƒÂ­metro cÃƒÂºbico por minuto', NULL);
INSERT INTO `unidades` VALUES ('G50', 'GalÃƒÂ³n por hora', NULL);
INSERT INTO `unidades` VALUES ('G51', 'Litro por segundo', NULL);
INSERT INTO `unidades` VALUES ('G52', 'Metro cÃƒÂºbico por dÃƒÂ­a', NULL);
INSERT INTO `unidades` VALUES ('G53', 'Metro cÃƒÂºbico por minuto', NULL);
INSERT INTO `unidades` VALUES ('G54', 'Mililitro por dÃƒÂ­a', NULL);
INSERT INTO `unidades` VALUES ('G55', 'Mililitro por hora', NULL);
INSERT INTO `unidades` VALUES ('G56', 'Pulgada cÃƒÂºbica por hora', NULL);
INSERT INTO `unidades` VALUES ('G57', 'Pulgada cÃƒÂºbica por minuto', NULL);
INSERT INTO `unidades` VALUES ('G58', 'Pulgada cÃƒÂºbica por segundo', NULL);
INSERT INTO `unidades` VALUES ('G59', 'Miliamperio por litro minuto', NULL);
INSERT INTO `unidades` VALUES ('G60', 'Voltio por bar', NULL);
INSERT INTO `unidades` VALUES ('G61', 'CentÃƒÂ­metro cÃƒÂºbico por dÃƒÂ­a kelvin', NULL);
INSERT INTO `unidades` VALUES ('G62', 'CentÃƒÂ­metro cÃƒÂºbico por hora kelvin', NULL);
INSERT INTO `unidades` VALUES ('G63', 'CentÃƒÂ­metro cÃƒÂºbico por minuto kelvin', NULL);
INSERT INTO `unidades` VALUES ('G64', 'CentÃƒÂ­metro cÃƒÂºbico por segundo kelvin', NULL);
INSERT INTO `unidades` VALUES ('G65', 'Litro por dÃƒÂ­a kelvin', NULL);
INSERT INTO `unidades` VALUES ('G66', 'Litro por hora kelvin', NULL);
INSERT INTO `unidades` VALUES ('G67', 'Litro por minuto kelvin', NULL);
INSERT INTO `unidades` VALUES ('G68', 'Litro por segundo kelvin', NULL);
INSERT INTO `unidades` VALUES ('G69', 'Metro cÃƒÂºbico por dÃƒÂ­a kelvin', NULL);
INSERT INTO `unidades` VALUES ('G7', 'Hoja de microficha', NULL);
INSERT INTO `unidades` VALUES ('G70', 'Metro cÃƒÂºbico por hora kelvin', NULL);
INSERT INTO `unidades` VALUES ('G71', 'Metro cÃƒÂºbico por minuto kelvin', NULL);
INSERT INTO `unidades` VALUES ('G72', 'Metro cÃƒÂºbico por segundo kelvin', NULL);
INSERT INTO `unidades` VALUES ('G73', 'Mililitro por dÃƒÂ­a kelvin', NULL);
INSERT INTO `unidades` VALUES ('G74', 'Mililitro por hora kelvin', NULL);
INSERT INTO `unidades` VALUES ('G75', 'Mililitro por minuto kelvin', NULL);
INSERT INTO `unidades` VALUES ('G76', 'Mililitro por segundo kelvin', NULL);
INSERT INTO `unidades` VALUES ('G77', 'MilÃƒÂ­metro a la cuarta potencia ', NULL);
INSERT INTO `unidades` VALUES ('G78', 'CentÃƒÂ­metro cÃƒÂºbico por dÃƒÂ­a bar', NULL);
INSERT INTO `unidades` VALUES ('G79', 'CentÃƒÂ­metro cÃƒÂºbico por hora bar', NULL);
INSERT INTO `unidades` VALUES ('G80', 'CentÃƒÂ­metro cÃƒÂºbico por minuto bar', NULL);
INSERT INTO `unidades` VALUES ('G81', 'CentÃƒÂ­metro cÃƒÂºbico por segundo bar', NULL);
INSERT INTO `unidades` VALUES ('G82', 'Litro por dÃƒÂ­a bar', NULL);
INSERT INTO `unidades` VALUES ('G83', 'Litro por hora bar', NULL);
INSERT INTO `unidades` VALUES ('G84', 'Litro por minuto bar', NULL);
INSERT INTO `unidades` VALUES ('G85', 'Litro por segundo bar', NULL);
INSERT INTO `unidades` VALUES ('G86', 'Metro cÃƒÂºbico por dÃƒÂ­a bar', NULL);
INSERT INTO `unidades` VALUES ('G87', 'Metro cÃƒÂºbico por hora bar', NULL);
INSERT INTO `unidades` VALUES ('G88', 'Metro cÃƒÂºbico por minuto bar', NULL);
INSERT INTO `unidades` VALUES ('G89', 'Metro cÃƒÂºbico por segundo bar', NULL);
INSERT INTO `unidades` VALUES ('G90', 'Mililitro por dÃƒÂ­a bar', NULL);
INSERT INTO `unidades` VALUES ('G91', 'Mililitro por hora bar', NULL);
INSERT INTO `unidades` VALUES ('G92', 'Mililitro por minuto bar', NULL);
INSERT INTO `unidades` VALUES ('G93', 'Mililitro por segundo bar', NULL);
INSERT INTO `unidades` VALUES ('G94', 'CentÃƒÂ­metro cÃƒÂºbico por bar', NULL);
INSERT INTO `unidades` VALUES ('G95', 'Litro por bar', NULL);
INSERT INTO `unidades` VALUES ('G96', 'Metro cÃƒÂºbico por bar', NULL);
INSERT INTO `unidades` VALUES ('G97', 'Mililitro por bar ', NULL);
INSERT INTO `unidades` VALUES ('G98', 'Micro henry por kiloOhm', NULL);
INSERT INTO `unidades` VALUES ('G99', 'Micro henry por Ohm', NULL);
INSERT INTO `unidades` VALUES ('GB', 'GalÃƒÂ³n (EUA) por dÃƒÂ­a', NULL);
INSERT INTO `unidades` VALUES ('GBQ', 'Gigabecquerel', NULL);
INSERT INTO `unidades` VALUES ('GC', 'Gramo por 100 gramos', NULL);
INSERT INTO `unidades` VALUES ('Gd', 'Barril bruto', NULL);
INSERT INTO `unidades` VALUES ('GDW', 'Gramo, peso seco', 'Unidad de masa que define el nÃƒÂºmero de gramos de un producto, sin tener en cuenta el contenido de agua del producto.');
INSERT INTO `unidades` VALUES ('GE', 'Libra por galÃƒÂ³n (EUA)', NULL);
INSERT INTO `unidades` VALUES ('GF', 'Gramo por metro (gramo por 100 centÃƒÂ­metros)', NULL);
INSERT INTO `unidades` VALUES ('GFI', 'Gramo de isÃƒÂ³topo fisible', 'Unidad de masa que define el nÃƒÂºmero de gramos de un isÃƒÂ³topo fisible (isÃƒÂ³topo fisible: un isÃƒÂ³topo cuyo nÃƒÂºcleo es capaz de ser dividido cuando se irradia con neutrones de baja energÃƒÂ­a).');
INSERT INTO `unidades` VALUES ('GGR', 'Grandioso', 'Unidad de cuenta que define el nÃƒÂºmero de unidades en mÃƒÂºltiplos de 1728 (12 x 12 x 12).');
INSERT INTO `unidades` VALUES ('GH', 'Medio galÃƒÂ³n (US)', NULL);
INSERT INTO `unidades` VALUES ('GIA', 'Gill (us)', 'Es Unidad de volumen inglesa en el sistema imperial y en los Estados Unidos. La versiÃƒÂ³n imperial usada en el UK es de 5 onzas lÃƒÂ­quidas, y es equivalente a 142,0653125 ml; mientras que en los EUA es de 4 onzas lÃƒÂ­quidas, y es equivalente a 118,2941');
INSERT INTO `unidades` VALUES ('GIC', 'Gramo, incluido el contenedor', 'Unidad de masa que define el nÃƒÂºmero de gramos de un producto, incluyendo su recipiente.');
INSERT INTO `unidades` VALUES ('GII', 'Gill (uk)', 'Es Unidad de volumen inglesa en el sistema imperial y en los Estados Unidos. La versiÃƒÂ³n imperial usada en el UK es de 5 onzas lÃƒÂ­quidas, y es equivalente a 142.0653125 ml; mientras que en los EUA es de 4 onzas lÃƒÂ­quidas, y es equivalente a 118.2941');
INSERT INTO `unidades` VALUES ('GIP', 'Grama, incluido el embalaje interior', 'Unidad de masa que define el nÃƒÂºmero de gramos de un producto, incluyendo sus materiales de envasado interior.');
INSERT INTO `unidades` VALUES ('GJ', 'Gramo por mililitro', NULL);
INSERT INTO `unidades` VALUES ('GK', 'Gramo por kilogramo', NULL);
INSERT INTO `unidades` VALUES ('GL', 'Gramo por litro', NULL);
INSERT INTO `unidades` VALUES ('GLD', 'GalÃƒÂ³n seco (EUA)', NULL);
INSERT INTO `unidades` VALUES ('GLI', 'GalÃƒÂ³n (UK)', 'Es una unidad de volumen que se emplea en los paÃƒÂ­ses anglÃƒÂ³fonos (especialmente Estados Unidos) o con influencia de estos (como Liberia, Guatemala, PanamÃƒÂ¡, Honduras, Nicaragua, El Salvador, Colombia y parcialmente en MÃƒÂ©xico), para medir volÃƒÂº');
INSERT INTO `unidades` VALUES ('GLL', 'GalÃƒÂ³n (EUA)', 'Es una unidad de volumen que se emplea en los paÃƒÂ­ses anglÃƒÂ³fonos (especialmente Estados Unidos) o con influencia de estos (como Liberia, Guatemala, PanamÃƒÂ¡, Honduras, Nicaragua, El Salvador, Colombia y parcialmente en MÃƒÂ©xico), para medir volÃƒÂº');
INSERT INTO `unidades` VALUES ('GM', 'Gramo por metro cuadrado', NULL);
INSERT INTO `unidades` VALUES ('GN', 'GalÃƒÂ³n bruto', NULL);
INSERT INTO `unidades` VALUES ('GO', 'Miligramo por metro cuadrado', NULL);
INSERT INTO `unidades` VALUES ('GP', 'Miligramo por metro cÃƒÂºbico', NULL);
INSERT INTO `unidades` VALUES ('GQ', 'Microgramo por metro cÃƒÂºbico', NULL);
INSERT INTO `unidades` VALUES ('GRM', 'Gramo', 'Medida de masa, de sÃƒÂ­mbolo g, que es igual a la milÃƒÂ©sima parte de un kilogramo.');
INSERT INTO `unidades` VALUES ('GRN', 'Grano', 'Es la mÃƒÂ­nima unidad de masa en el sistema inglÃƒÂ©s de medidas. Se considera con el mismo valor en cualquier paÃƒÂ­s anglosajÃƒÂ³n. Se utiliza para estimar con mÃƒÂ¡s sensibilidad y precisiÃƒÂ³n la poca masa de pequeÃƒÂ±os objetos (medicamentos, drogas');
INSERT INTO `unidades` VALUES ('GRO', 'Gross', 'Unidad de conteo que define el nÃƒÂºmero de unidades en mÃƒÂºltiplos de 144 (12 x 12).');
INSERT INTO `unidades` VALUES ('GT', 'Tonelada bruta', 'Una unidad de masa igual a 2240 libras.Ã‚Â VÃƒÂ©ase el Convenio internacional sobre arqueo de buques.\r\n\r\nSinÃƒÂ³nimo: ton (UK) o tonelada larga (US) (cÃƒÂ³digo comÃƒÂºn LTN)Ã‚Â ');
INSERT INTO `unidades` VALUES ('GV', 'Gigajoule', NULL);
INSERT INTO `unidades` VALUES ('GW', 'GalÃƒÂ³n por mil pies cÃƒÂºbicos', NULL);
INSERT INTO `unidades` VALUES ('GWH', 'Gigawatt hora', NULL);
INSERT INTO `unidades` VALUES ('GY', 'Patio grueso', NULL);
INSERT INTO `unidades` VALUES ('GZ', 'Sistema de calibraciÃƒÂ³n', NULL);
INSERT INTO `unidades` VALUES ('H03', 'Henry por kiloOhm', NULL);
INSERT INTO `unidades` VALUES ('H04', 'Henry por Ohm', NULL);
INSERT INTO `unidades` VALUES ('H05', 'Milihenry por kiloOhm', NULL);
INSERT INTO `unidades` VALUES ('H06', 'Milihenry por Ohm', NULL);
INSERT INTO `unidades` VALUES ('H07', 'Pascal segundo por bar', NULL);
INSERT INTO `unidades` VALUES ('H08', 'Microbequerel', NULL);
INSERT INTO `unidades` VALUES ('H09', 'AÃƒÂ±o recÃƒÂ­proco', NULL);
INSERT INTO `unidades` VALUES ('H1', 'Media pÃƒÂ¡gina - electrÃƒÂ³nica', NULL);
INSERT INTO `unidades` VALUES ('H10', 'Hora recÃƒÂ­proca', NULL);
INSERT INTO `unidades` VALUES ('H11', 'Mes recÃƒÂ­proco', NULL);
INSERT INTO `unidades` VALUES ('H12', 'Grado celsius por hora', NULL);
INSERT INTO `unidades` VALUES ('H13', 'Grado celsius por minuto', NULL);
INSERT INTO `unidades` VALUES ('H14', 'Grado celsius por segundo', NULL);
INSERT INTO `unidades` VALUES ('H15', 'CentÃƒÂ­metro cudrado por gramo', NULL);
INSERT INTO `unidades` VALUES ('H16', 'DecÃƒÂ¡metro cuadrado', NULL);
INSERT INTO `unidades` VALUES ('H18', 'HectÃƒÂ³metro cuadrado', 'SinÃƒÂ³nimo: hectÃƒÂ¡rea');
INSERT INTO `unidades` VALUES ('H19', 'HectÃƒÂ³metro cÃƒÂºbico', NULL);
INSERT INTO `unidades` VALUES ('H2', 'Medio litro', NULL);
INSERT INTO `unidades` VALUES ('H20', 'KilÃƒÂ³metro cÃƒÂºbico', NULL);
INSERT INTO `unidades` VALUES ('H21', 'Blanco', 'Unidad de conteo que define el nÃƒÂºmero de blancos');
INSERT INTO `unidades` VALUES ('H22', 'Voltio pulgada cuadrada por libra fuerza', NULL);
INSERT INTO `unidades` VALUES ('H23', 'Voltio por pulgada', NULL);
INSERT INTO `unidades` VALUES ('H24', 'Voltio por microsegundo', NULL);
INSERT INTO `unidades` VALUES ('H25', 'Por ciento por kelvin', 'Unidad de proporciÃƒÂ³n, igual a 0,01, en relaciÃƒÂ³n con la unidad de base SI Kelvin.');
INSERT INTO `unidades` VALUES ('H26', 'Ohm por metro', NULL);
INSERT INTO `unidades` VALUES ('H27', 'Grado por metro', NULL);
INSERT INTO `unidades` VALUES ('H28', 'Microfaradio por kilÃƒÂ³metro', NULL);
INSERT INTO `unidades` VALUES ('H29', 'Microgramo por litro', NULL);
INSERT INTO `unidades` VALUES ('H30', 'MicrÃƒÂ³metro cuadrado', NULL);
INSERT INTO `unidades` VALUES ('H31', 'Amperio por kilogramo', NULL);
INSERT INTO `unidades` VALUES ('H32', 'Amperio cuadrado segundo', 'Es una unidad de medida basada en la energÃƒÂ­a o el calor que se permite pasar a travÃƒÂ©s del fusible o interruptor durante una condiciÃƒÂ³n de cortocircuito.');
INSERT INTO `unidades` VALUES ('H33', 'Faradio por kilÃƒÂ³metro', NULL);
INSERT INTO `unidades` VALUES ('H34', 'Hertz metro', NULL);
INSERT INTO `unidades` VALUES ('H35', 'Kelvin metro por watt', NULL);
INSERT INTO `unidades` VALUES ('H36', 'MegaOhm por kilÃƒÂ³metro', NULL);
INSERT INTO `unidades` VALUES ('H37', 'MegaOhm por metro', NULL);
INSERT INTO `unidades` VALUES ('H38', 'Megaamperio', NULL);
INSERT INTO `unidades` VALUES ('H39', 'Megahertz kilÃƒÂ³metro', NULL);
INSERT INTO `unidades` VALUES ('H40', 'Newton por amperio', NULL);
INSERT INTO `unidades` VALUES ('H41', 'Newton metro watts elevado a la potencia menos 0.5', NULL);
INSERT INTO `unidades` VALUES ('H42', 'Pascal por metro', NULL);
INSERT INTO `unidades` VALUES ('H43', 'Siemens por centÃƒÂ­metro', NULL);
INSERT INTO `unidades` VALUES ('H44', 'TeraOhm', NULL);
INSERT INTO `unidades` VALUES ('H45', 'Voltio segundo por metro', NULL);
INSERT INTO `unidades` VALUES ('H46', 'Voltio por segundo', NULL);
INSERT INTO `unidades` VALUES ('H47', 'Watt por metro cÃƒÂºbico', NULL);
INSERT INTO `unidades` VALUES ('H48', 'Attofarad', NULL);
INSERT INTO `unidades` VALUES ('H49', 'CentÃƒÂ­metro por hora', NULL);
INSERT INTO `unidades` VALUES ('H50', 'Reciprocidad del centimetro cÃƒÂºbico', NULL);
INSERT INTO `unidades` VALUES ('H51', 'Decibel per kilometro', NULL);
INSERT INTO `unidades` VALUES ('H52', 'Decibel per metro', NULL);
INSERT INTO `unidades` VALUES ('H53', 'Kilogramo por bar', NULL);
INSERT INTO `unidades` VALUES ('H54', 'Kilogramo por decÃƒÂ­metro cÃƒÂºbico kelvin ', NULL);
INSERT INTO `unidades` VALUES ('H55', 'Kilogramo por decÃƒÂ­metro cÃƒÂºbico bar', NULL);
INSERT INTO `unidades` VALUES ('H56', 'Kilogramo por metro cuadrado segundo', NULL);
INSERT INTO `unidades` VALUES ('H57', 'Pulgada por dos pi por radiÃƒÂ¡n', NULL);
INSERT INTO `unidades` VALUES ('H58', 'Metro por voltio segundo', NULL);
INSERT INTO `unidades` VALUES ('H59', 'Metro cuadrado por newton', NULL);
INSERT INTO `unidades` VALUES ('H60', 'Metro cÃƒÂºbico por metro cÃƒÂºbico', NULL);
INSERT INTO `unidades` VALUES ('H61', 'Milisiemens por centÃƒÂ­metro', NULL);
INSERT INTO `unidades` VALUES ('H62', 'Milivoltio por minuto', NULL);
INSERT INTO `unidades` VALUES ('H63', 'Miligramo por centÃƒÂ­metro cuadrado', NULL);
INSERT INTO `unidades` VALUES ('H64', 'Miligramo por gramo', NULL);
INSERT INTO `unidades` VALUES ('H65', 'Mililitro por metro cÃƒÂºbico', NULL);
INSERT INTO `unidades` VALUES ('H66', 'MilÃƒÂ­metro por aÃƒÂ±o ', NULL);
INSERT INTO `unidades` VALUES ('H67', 'MilÃƒÂ­metro por hora', NULL);
INSERT INTO `unidades` VALUES ('H68', 'MiliMol por gram', NULL);
INSERT INTO `unidades` VALUES ('H69', 'Picopascal por kilometro', NULL);
INSERT INTO `unidades` VALUES ('H70', 'Picosegundo', NULL);
INSERT INTO `unidades` VALUES ('H71', 'Por ciento al mes', 'Unidad de proporciÃƒÂ³n, igual a 0,01, en relaciÃƒÂ³n a un mes.');
INSERT INTO `unidades` VALUES ('H72', 'Por ciento por hectobar', 'Unidad de proporciÃƒÂ³n, igual a 0,01, en relaciÃƒÂ³n con 100 veces la barra unitaria');
INSERT INTO `unidades` VALUES ('H73', 'Por ciento por decakelvin', 'Unidad de proporciÃƒÂ³n, igual a 0,01, en relaciÃƒÂ³n con 10 veces la unidad de base SI Kelvin');
INSERT INTO `unidades` VALUES ('H74', 'Watt por metro', NULL);
INSERT INTO `unidades` VALUES ('H75', 'Decapascal', NULL);
INSERT INTO `unidades` VALUES ('H76', 'Gramo por milÃƒÂ­metro', NULL);
INSERT INTO `unidades` VALUES ('H77', 'Anchura del mÃƒÂ³dulo', 'Unidad de medida utilizada para describir la anchura de los conjuntos electrÃƒÂ³nicos como una norma de instalaciÃƒÂ³n o una dimensiÃƒÂ³n de montaje.');
INSERT INTO `unidades` VALUES ('H78', 'CentÃƒÂ­metro convencional de agua', NULL);
INSERT INTO `unidades` VALUES ('H79', 'Escala francesa ', 'Unidad de longitud usada para la mediciÃƒÂ³n de los diÃƒÂ¡metros de pequeÃƒÂ±os tubos como instrumentos urolÃƒÂ³gicos y catÃƒÂ©teres.                                                       \r\nSinÃƒÂ³nimos: FrancÃƒÂ©s, CharriÃƒÂ¨re, CharriÃƒÂ¨re gauge.');
INSERT INTO `unidades` VALUES ('H80', 'Unidad de bastidor', 'Unidad de medida utilizada para describir la altura en unidades de bastidor del equipo destinado a ser montado en un bastidor de 19 pulgadas o un bastidor de 23 pulgadas. Unidad de bastidor tiene 1,45 pulgadas (44,45 mm) de alto.');
INSERT INTO `unidades` VALUES ('H81', 'MilÃƒÂ­metro por minuto', NULL);
INSERT INTO `unidades` VALUES ('H82', 'Punto grande', 'Unidad de longitud que define el nÃƒÂºmero de puntos grandes (punto grande: el software de Adobe (EUA) define el punto grande a ser exactamente 1/72 de pulgada (0,013 888 9 pulgadas o 0,352 777 8 milÃƒÂ­metros)');
INSERT INTO `unidades` VALUES ('H83', 'Litro por kilogramo', NULL);
INSERT INTO `unidades` VALUES ('H84', 'Gramos milÃƒÂ­metro', NULL);
INSERT INTO `unidades` VALUES ('H85', 'Semana recÃƒÂ­proca', NULL);
INSERT INTO `unidades` VALUES ('H87', 'Pieza', 'Unidad de conteo que define el nÃƒÂºmero de piezas (pieza: un solo artÃƒÂ­culo, artÃƒÂ­culo o ejemplar).');
INSERT INTO `unidades` VALUES ('H88', 'MegaOhm kilÃƒÂ³metro', NULL);
INSERT INTO `unidades` VALUES ('H89', 'Por ciento por Ohmio', 'Unidad de proporciÃƒÂ³n, igual a 0,01, en relaciÃƒÂ³n con un ÃƒÂ¡ngulo de un grado.');
INSERT INTO `unidades` VALUES ('H90', 'Porcentaje por grado', 'Unidad de proporciÃƒÂ³n, igual a 0,01, en relaciÃƒÂ³n a mÃƒÂºltiplos de diez mil.');
INSERT INTO `unidades` VALUES ('H91', 'Por ciento por cada diez mil', 'Unidad de proporciÃƒÂ³n, igual a 0,01, en relaciÃƒÂ³n a mÃƒÂºltiplos de cien mil.');
INSERT INTO `unidades` VALUES ('H92', 'Ciento por cien mil', 'Unidad de proporciÃƒÂ³n, igual a 0,01, en relaciÃƒÂ³n a mÃƒÂºltiplos de cien.');
INSERT INTO `unidades` VALUES ('H93', 'Porcentaje por cien', 'Unidad de proporciÃƒÂ³n, igual a 0,01, en relaciÃƒÂ³n a mÃƒÂºltiplos de mil.');
INSERT INTO `unidades` VALUES ('H94', 'Por ciento por mil', 'Unidad de proporciÃƒÂ³n, igual a 0,01, en relaciÃƒÂ³n con la unidad derivada de SI volt.');
INSERT INTO `unidades` VALUES ('H95', 'Por ciento por voltio', 'Unidad de proporciÃƒÂ³n, igual a 0,01, en relaciÃƒÂ³n con una presiÃƒÂ³n atmosfÃƒÂ©rica de una barra.');
INSERT INTO `unidades` VALUES ('H96', 'Tanto por ciento por bar', 'Unidad de proporciÃƒÂ³n, igual a 0,01, en relaciÃƒÂ³n con una presiÃƒÂ³n atmosfÃƒÂ©rica de una barra.');
INSERT INTO `unidades` VALUES ('H98', 'Por ciento por pulgada', 'Unidad de proporciÃƒÂ³n, igual a 0,01, en relaciÃƒÂ³n a una pulgada.');
INSERT INTO `unidades` VALUES ('H99', 'Por ciento por metro', 'Unidad de proporciÃƒÂ³n, igual a 0,01, en relaciÃƒÂ³n con un metro.');
INSERT INTO `unidades` VALUES ('HA', 'Madeja', 'Unidad de longitud, tÃƒÂ­picamente para el hilado.');
INSERT INTO `unidades` VALUES ('HAR', 'hectÃƒÂ¡rea', 'SinÃƒÂ³nimo: hectÃƒÂ³metro cuadrado');
INSERT INTO `unidades` VALUES ('HBA', 'Hectobar ', NULL);
INSERT INTO `unidades` VALUES ('HBX', 'Ciento de cajas', 'Unidad de conteo que define el nÃƒÂºmero de cajas en mÃƒÂºltiplos de cien unidades de caja.');
INSERT INTO `unidades` VALUES ('HC', 'Conteo en cientos', 'Unidad de cuenta que define el nÃƒÂºmero de unidades contadas en mÃƒÂºltiplos de 100.');
INSERT INTO `unidades` VALUES ('HD', 'Media docena', NULL);
INSERT INTO `unidades` VALUES ('HDW', 'Cien kilogramos, peso seco', 'Unidad de masa que define el nÃƒÂºmero de cien kilogramos de un producto, sin tener en cuenta el contenido de agua del producto.');
INSERT INTO `unidades` VALUES ('HE', 'CentÃƒÂ©sima de un quilate', NULL);
INSERT INTO `unidades` VALUES ('HEA', 'Cabeza', 'Unidad de conteo que define el nÃƒÂºmero de cabezas (cabeza: persona o animal considerada como un nÃƒÂºmero.');
INSERT INTO `unidades` VALUES ('HF', 'Cien pies', NULL);
INSERT INTO `unidades` VALUES ('HGM', 'HÃƒÂ©ctogramo', NULL);
INSERT INTO `unidades` VALUES ('HH', 'Cien pies cÃƒÂºbicos', 'Unidad de volumen igual a cien pies cÃƒÂºbicos.');
INSERT INTO `unidades` VALUES ('HI', 'Cien hojas', NULL);
INSERT INTO `unidades` VALUES ('HIU', 'Unidad internacional de cien', 'Unidad de cuenta que define el nÃƒÂºmero de unidades internacionales en mÃƒÂºltiplos de 100.');
INSERT INTO `unidades` VALUES ('HJ', 'Potencia mÃƒÂ©trica', NULL);
INSERT INTO `unidades` VALUES ('HK', 'Cien kilogramos', NULL);
INSERT INTO `unidades` VALUES ('HKM', 'Cien kilogramos, masa neta', 'Unidad de masa que define el nÃƒÂºmero de cientos de kilogramos de un producto, despuÃƒÂ©s de las deducciones.');
INSERT INTO `unidades` VALUES ('HL', 'Cien pies (lineal)', NULL);
INSERT INTO `unidades` VALUES ('HLT', 'Hectolitro', 'Es una unidad de volumen equivalente a cien litros, representado por el sÃƒÂ­mbolo hl. Es el segundo mÃƒÂºltiplo del litro y tambiÃƒÂ©n equivale a 100 decÃƒÂ­metros cÃƒÂºbicos (0,1 metros cÃƒÂºbicos).');
INSERT INTO `unidades` VALUES ('HM', 'Milla por hora (milla estatal)', NULL);
INSERT INTO `unidades` VALUES ('HMQ', 'Millones de metros cÃƒÂºbicos', 'Unidad de volumen igual a un millÃƒÂ³n de metros cÃƒÂºbicos.');
INSERT INTO `unidades` VALUES ('HMT', 'HectÃƒÂ³metro', 'Es una unidad de longitud. Equivale a 100 metros. Hecto es el prefijo para 100 en el Sistema Internacional de Unidades.');
INSERT INTO `unidades` VALUES ('HN', 'MilÃƒÂ­metro convencional de mercurio', NULL);
INSERT INTO `unidades` VALUES ('HO', 'Cien onzas troy', NULL);
INSERT INTO `unidades` VALUES ('HP', 'MilÃƒÂ­metro convencional de agua', NULL);
INSERT INTO `unidades` VALUES ('HPA', 'Hectolitro de alcohol puro', 'Unidad de volumen igual a cien litros de alcohol puro.');
INSERT INTO `unidades` VALUES ('HS', 'Cien pies cuadrados', NULL);
INSERT INTO `unidades` VALUES ('HT', 'media hora', NULL);
INSERT INTO `unidades` VALUES ('HTZ', 'Hertz', 'Unidad de frecuencia del Sistema Internacional, de sÃƒÂ­mbolo Hz, que equivale a la frecuencia de un fenÃƒÂ³meno periÃƒÂ³dico cuyo perÃƒÂ­odo es 1 segundo.');
INSERT INTO `unidades` VALUES ('HUR', 'Hora', 'Es una unidad de tiempo que se corresponde con la vigÃƒÂ©simo-cuarta parte de un dÃƒÂ­a solar medio.');
INSERT INTO `unidades` VALUES ('HY', 'Cien yardas', NULL);
INSERT INTO `unidades` VALUES ('IA', 'Pulgada libra', NULL);
INSERT INTO `unidades` VALUES ('IC', 'Contar por pulgada', NULL);
INSERT INTO `unidades` VALUES ('IE', 'Personas', 'Unidad de conteo que define el nÃƒÂºmero de personas.');
INSERT INTO `unidades` VALUES ('IF', 'Pulgadas de agua', 'Use una pulgada de agua (cÃƒÂ³digo comÃƒÂºn F78)');
INSERT INTO `unidades` VALUES ('II', 'Columna pulgada', NULL);
INSERT INTO `unidades` VALUES ('IM', 'ImpresiÃƒÂ³n', NULL);
INSERT INTO `unidades` VALUES ('INH', 'Pulgada', 'Es una unidad de longitud antropomÃƒÂ©trica que equivale al ancho de la primera falange del pulgar, y mÃƒÂ¡s especÃƒÂ­ficamente a su falange distal.');
INSERT INTO `unidades` VALUES ('INK', 'Pulgada cuadrada', 'Es una unidad de medida imperial, equivalente a la superficie de un cuadrado cuyo lado posee 1 pulgada de longitud (2,54 centÃƒÂ­metros).');
INSERT INTO `unidades` VALUES ('INQ', 'Pulgada cÃƒÂºbica', 'SinÃƒÂ³nimo: pulgada cuadrada');
INSERT INTO `unidades` VALUES ('IP', 'pÃƒÂ³liza de seguros', NULL);
INSERT INTO `unidades` VALUES ('ISD', 'Grado internacional de azÃƒÂºcar', 'Unidad de medida que define el contenido de azÃƒÂºcar de una soluciÃƒÂ³n, expresada en grados.');
INSERT INTO `unidades` VALUES ('IT', 'Recuento por centÃƒÂ­metro', NULL);
INSERT INTO `unidades` VALUES ('IU', 'Pulgada por segundo', NULL);
INSERT INTO `unidades` VALUES ('IV', 'Pulgada por segundo al cuadrado', NULL);
INSERT INTO `unidades` VALUES ('J10', 'Por ciento por milÃƒÂ­metro', 'Unidad de proporciÃƒÂ³n, igual a 0,01, en relaciÃƒÂ³n a un milÃƒÂ­metro.');
INSERT INTO `unidades` VALUES ('J12', 'Por mille por psi', 'Unidad de presiÃƒÂ³n igual a una milÃƒÂ©sima de psi (libra-fuerza por pulgada cuadrada).');
INSERT INTO `unidades` VALUES ('J13', 'Grado api', 'Unidad de densidad relativa como una medida de cuÃƒÂ¡n pesado o ligero es un lÃƒÂ­quido de petrÃƒÂ³leo comparado con agua (API: American Petroleum Institute).');
INSERT INTO `unidades` VALUES ('J14', 'Grado baume (escala de origen)', 'Unidad tradicional de densidad relativa para lÃƒÂ­quidos. Nombrado en honor de Antoine BaumÃƒÂ©.');
INSERT INTO `unidades` VALUES ('J15', 'Grado baume (us pesado)', 'Unidad de densidad relativa para lÃƒÂ­quidos mÃƒÂ¡s pesados que el agua.');
INSERT INTO `unidades` VALUES ('J16', 'Grado baume (luz de los EUA)', 'Unidad de densidad relativa para lÃƒÂ­quidos mÃƒÂ¡s ligeros que el agua.');
INSERT INTO `unidades` VALUES ('J17', 'Grado balling', 'Unidad de densidad como medida del contenido de azÃƒÂºcar, especialmente de mosto de cerveza. Nombrado en honor de Karl Balling.');
INSERT INTO `unidades` VALUES ('J18', 'Grado brix', 'Unidad de proporcion utilizada para medir la proporcion de masa de azÃƒÂºcar disuelta a agua de un lÃƒÂ­quido. Nombrado en honor de Adolf Brix');
INSERT INTO `unidades` VALUES ('J19', 'Grado fahrenheit hora pie cuadrado por unidad tÃƒÂ©rmica britÃƒÂ¡nica (termoquÃƒÂ­mico).', NULL);
INSERT INTO `unidades` VALUES ('J2', 'Joule por kilogramo', NULL);
INSERT INTO `unidades` VALUES ('J20', 'Grado fahrenheit por kelvin', NULL);
INSERT INTO `unidades` VALUES ('J21', 'Grado fahrenheit por bar', NULL);
INSERT INTO `unidades` VALUES ('J22', 'Grado fahrenheit hora pie cuadrado por unidad tÃƒÂ©rmica britÃƒÂ¡nica (tabla internacional).', NULL);
INSERT INTO `unidades` VALUES ('J23', 'Grado fahrenheit por hora', NULL);
INSERT INTO `unidades` VALUES ('J24', 'Grado fahrenheit por minuto', NULL);
INSERT INTO `unidades` VALUES ('J25', 'Grado fahrenheit por segundo', NULL);
INSERT INTO `unidades` VALUES ('J26', 'Reciprocidad grado fahrenheit', NULL);
INSERT INTO `unidades` VALUES ('J27', 'Grado oechsle', 'Unidad de densidad como medida del contenido de azÃƒÂºcar de mosto, el licor no fermentado del que se elabora el vino. Nombrado en honor de Ferdinand Oechsle.');
INSERT INTO `unidades` VALUES ('J28', 'Grado rankine por hora', NULL);
INSERT INTO `unidades` VALUES ('J29', 'Grado rankine por minuto', NULL);
INSERT INTO `unidades` VALUES ('J30', 'Grado rankine por segundo', NULL);
INSERT INTO `unidades` VALUES ('J31', 'Grado twaddel.', 'Unidad de densidad para lÃƒÂ­quidos que son mÃƒÂ¡s pesados que el agua. 1 grado Twaddle representa una diferencia en gravedad especÃƒÂ­fica de 0,005.');
INSERT INTO `unidades` VALUES ('J32', 'Micropoise', NULL);
INSERT INTO `unidades` VALUES ('J33', 'Microgramo por kilogramo', NULL);
INSERT INTO `unidades` VALUES ('J34', 'Microgramo por metro cÃƒÂºbico kelvin', NULL);
INSERT INTO `unidades` VALUES ('J35', 'Microgramo por metro cÃƒÂºbico bar', NULL);
INSERT INTO `unidades` VALUES ('J36', 'Microlitro por litro', NULL);
INSERT INTO `unidades` VALUES ('J38', 'Baud', 'Es Unidad de medida utilizada en telecomunicaciones, que representa el nÃƒÂºmero de sÃƒÂ­mbolos por segundo en un medio de transmisiÃƒÂ³n digital.1 Cada sÃƒÂ­mbolo puede comprender 1 o mÃƒÂ¡s bits, dependiendo del esquema de modulaciÃƒÂ³n.');
INSERT INTO `unidades` VALUES ('J39', 'Unidad tÃƒÂ©rmica britÃƒÂ¡nica (significado)', NULL);
INSERT INTO `unidades` VALUES ('J40', 'Unidad tÃƒÂ©rmica britÃƒÂ¡nica (tabla internacional) pie por hora pie cuadrado grado fahrenheit.', NULL);
INSERT INTO `unidades` VALUES ('J41', 'Unidad tÃƒÂ©rmica britÃƒÂ¡nica (tabla internacional) pulgada por hora pie cuadrado grado fahrenheit.', NULL);
INSERT INTO `unidades` VALUES ('J42', 'Unidad tÃƒÂ©rmica britÃƒÂ¡nica (tabla internacional) pulgada por segundo pie cuadrado grado fahrenheit.', NULL);
INSERT INTO `unidades` VALUES ('J43', 'Unidad tÃƒÂ©rmica britÃƒÂ¡nica (tabla internacional) por libra grado fahrenheit', NULL);
INSERT INTO `unidades` VALUES ('J44', 'Unidad tÃƒÂ©rmica britÃƒÂ¡nica (tabla internacional) por minuto', NULL);
INSERT INTO `unidades` VALUES ('J45', 'Unidad tÃƒÂ©rmica britÃƒÂ¡nica (tabla internacional) por segundo', NULL);
INSERT INTO `unidades` VALUES ('J46', 'Unidad tÃƒÂ©rmica britÃƒÂ¡nica (termoquÃƒÂ­mico) pie por hora pie cuadrado grado fahrenheit.', NULL);
INSERT INTO `unidades` VALUES ('J47', 'Unidad tÃƒÂ©rmica britÃƒÂ¡nica (termoquÃƒÂ­mica) por hora', NULL);
INSERT INTO `unidades` VALUES ('J48', 'Unidad tÃƒÂ©rmica britÃƒÂ¡nica (termoquÃƒÂ­mico) pulgada por hora pie cuadrado grado fahrenheit.', NULL);
INSERT INTO `unidades` VALUES ('J49', 'Unidad tÃƒÂ©rmica britÃƒÂ¡nica (termoquÃƒÂ­mico) pulgada por segundo pie cuadrado grado fahrenheit.', NULL);
INSERT INTO `unidades` VALUES ('J50', 'Unidad tÃƒÂ©rmica britÃƒÂ¡nica (termoquÃƒÂ­mico) por libra grado fahrenheit', NULL);
INSERT INTO `unidades` VALUES ('J51', 'Unidad tÃƒÂ©rmica britÃƒÂ¡nica (termoquÃƒÂ­mica) por minuto', NULL);
INSERT INTO `unidades` VALUES ('J52', 'Unidad tÃƒÂ©rmica britÃƒÂ¡nica (termoquÃƒÂ­mica) por segundo', NULL);
INSERT INTO `unidades` VALUES ('J53', 'Culombio metro cuadrado por kilogramo', NULL);
INSERT INTO `unidades` VALUES ('J54', 'Megabaud', 'Unidad de velocidad de transmisiÃƒÂ³n de seÃƒÂ±al igual a 106 (1000000) eventos de seÃƒÂ±alizaciÃƒÂ³n por segundo.');
INSERT INTO `unidades` VALUES ('J55', 'Watt segundo', NULL);
INSERT INTO `unidades` VALUES ('J56', 'Bar por bar', NULL);
INSERT INTO `unidades` VALUES ('J57', 'Barril (uk petrÃƒÂ³leo)', 'Es el nombre de varias unidades de volumen usadas en el Reino Unido y en los Estados Unidos.');
INSERT INTO `unidades` VALUES ('J58', 'Barril (petrÃƒÂ³leo UK) por minuto', NULL);
INSERT INTO `unidades` VALUES ('J59', 'Barril (petrÃƒÂ³leo UK) por dÃƒÂ­a', NULL);
INSERT INTO `unidades` VALUES ('J60', 'Barril (petrÃƒÂ³leo UK) por hora', NULL);
INSERT INTO `unidades` VALUES ('J61', 'Barril (petrÃƒÂ³leo UK) por segundo', NULL);
INSERT INTO `unidades` VALUES ('J62', 'Barril (petrÃƒÂ³leo estados unidos) por hora', NULL);
INSERT INTO `unidades` VALUES ('J63', 'Barril (petrÃƒÂ³leo estados unidos) por segundo', NULL);
INSERT INTO `unidades` VALUES ('J64', 'Bushel (UK) por dÃƒÂ­a ', NULL);
INSERT INTO `unidades` VALUES ('J65', 'Bushel (UK) por hora', NULL);
INSERT INTO `unidades` VALUES ('J66', 'Bushel (UK) por minuto', NULL);
INSERT INTO `unidades` VALUES ('J67', 'Bushel (UK) por segundo', NULL);
INSERT INTO `unidades` VALUES ('J68', 'Bushel (seco,estados unidos) por dÃƒÂ­a', NULL);
INSERT INTO `unidades` VALUES ('J69', 'Bushel (seco,estados unidos) por hora', NULL);
INSERT INTO `unidades` VALUES ('J70', 'Bushel (seco,estados unidos) por minuto', NULL);
INSERT INTO `unidades` VALUES ('J71', 'Bushel (seco,estados unidos) por segundo', NULL);
INSERT INTO `unidades` VALUES ('J72', 'Centinewton metro', NULL);
INSERT INTO `unidades` VALUES ('J73', 'Centipoise por kelvin', NULL);
INSERT INTO `unidades` VALUES ('J74', 'Centipoise por bar', NULL);
INSERT INTO `unidades` VALUES ('J75', 'CalorÃƒÂ­a', 'Unidad de energÃƒÂ­a tÃƒÂ©rmica, de sÃƒÂ­mbolo cal, que equivale a la cantidad de calor necesaria para elevar 1 grado centÃƒÂ­grado la temperatura de 1 gramo de agua.');
INSERT INTO `unidades` VALUES ('J76', 'CalorÃƒÂ­a (tabla internacional) por gramo gadro celsius', NULL);
INSERT INTO `unidades` VALUES ('J78', 'CalorÃƒÂ­a (termoquÃƒÂ­mica) por centÃƒÂ­metro segundo grado celsius', NULL);
INSERT INTO `unidades` VALUES ('J79', 'CalorÃƒÂ­a (termoquÃƒÂ­mico) por gramo gadro celsius', NULL);
INSERT INTO `unidades` VALUES ('J81', 'CalorÃƒÂ­a (termoquÃƒÂ­mica) por minuto', NULL);
INSERT INTO `unidades` VALUES ('J82', 'CalorÃƒÂ­a (termoquÃƒÂ­mica) por segundo', NULL);
INSERT INTO `unidades` VALUES ('J83', 'Clo', 'Clo es una unidad de medida empleada para el ÃƒÂ­ndice de indumento.');
INSERT INTO `unidades` VALUES ('J84', 'CentÃƒÂ­metro por segundo kelvin', NULL);
INSERT INTO `unidades` VALUES ('J85', 'CentÃƒÂ­metro por segundo bar', NULL);
INSERT INTO `unidades` VALUES ('J87', 'CentÃƒÂ­metro cÃƒÂºbico por metro cÃƒÂºbico', NULL);
INSERT INTO `unidades` VALUES ('J89', 'CentÃƒÂ­metro de mercurio', NULL);
INSERT INTO `unidades` VALUES ('J90', 'DecÃƒÂ­metro cÃƒÂºbico por dÃƒÂ­a', NULL);
INSERT INTO `unidades` VALUES ('J91', 'DecÃƒÂ­metro cÃƒÂºbico por metro cÃƒÂºbico', NULL);
INSERT INTO `unidades` VALUES ('J92', 'DecÃƒÂ­metro cÃƒÂºbico por minuto', NULL);
INSERT INTO `unidades` VALUES ('J93', 'DecÃƒÂ­metro cÃƒÂºbico por segundo', NULL);
INSERT INTO `unidades` VALUES ('J94', 'Dyne centÃƒÂ­metro', NULL);
INSERT INTO `unidades` VALUES ('J95', 'Onza (fluido, UK) por dÃƒÂ­a', NULL);
INSERT INTO `unidades` VALUES ('J96', 'Onza (fluido, UK) por hora', NULL);
INSERT INTO `unidades` VALUES ('J97', 'Onza (fluido, UK) por minuto', NULL);
INSERT INTO `unidades` VALUES ('J98', 'Onza (fluido, UK) por segundo', NULL);
INSERT INTO `unidades` VALUES ('J99', 'Onza (fluido, estados unidos) por dÃƒÂ­a', NULL);
INSERT INTO `unidades` VALUES ('JB', 'Jumbo', NULL);
INSERT INTO `unidades` VALUES ('JE', 'Joule por kelvin', 'Es el aumento de entropÃƒÂ­a de un sistema que recibe una cantidad de calor de 1 joule, a la temperatura termodinÃƒÂ¡mica constante de 1 kelvin, siempre que en el sistema no tenga lugar ninguna transformaciÃƒÂ³n irreversible.');
INSERT INTO `unidades` VALUES ('JK', 'Megajoule por kilogramo', NULL);
INSERT INTO `unidades` VALUES ('JM', 'Megajoule por metro cÃƒÂºbico', NULL);
INSERT INTO `unidades` VALUES ('JNT', 'Junta de tuberÃƒÂ­a', 'Un recuento del nÃƒÂºmero de juntas de la tuberÃƒÂ­a.');
INSERT INTO `unidades` VALUES ('Jo', 'ArticulaciÃƒÂ³n', NULL);
INSERT INTO `unidades` VALUES ('JOU', 'Joule', 'Es el trabajo producido por una fuerza de 1 newton, cuyo punto de aplicaciÃƒÂ³n se desplaza 1 metro en la direcciÃƒÂ³n de la fuerza. ');
INSERT INTO `unidades` VALUES ('JPS', 'Cien metros', 'Unidad de conteo que define el nÃƒÂºmero de longitudes de 100 metros.');
INSERT INTO `unidades` VALUES ('JWL', 'NÃƒÂºmero de joyas', 'Unidad de cuenta que define el nÃƒÂºmero de joyas (joya: piedra preciosa).');
INSERT INTO `unidades` VALUES ('K1', 'Demanda de kilowatt', 'Unidad de medida que define la carga de potencia medida a intervalos predeterminados.');
INSERT INTO `unidades` VALUES ('K10', 'Onza (fluido, estados unidos) por hora', NULL);
INSERT INTO `unidades` VALUES ('K11', 'Onza (fluido, estados unidos) por minuto', NULL);
INSERT INTO `unidades` VALUES ('K12', 'Onza (fluido, estados unidos) por segundo', NULL);
INSERT INTO `unidades` VALUES ('K13', 'Pie por grado fahrenheit', NULL);
INSERT INTO `unidades` VALUES ('K14', 'Pie por hora', NULL);
INSERT INTO `unidades` VALUES ('K15', 'Pie libra-fuerza por hora', NULL);
INSERT INTO `unidades` VALUES ('K16', 'Pie libra-fuerza por minuto', NULL);
INSERT INTO `unidades` VALUES ('K17', 'Pie por psi (libra por pulgada cuadrada)', NULL);
INSERT INTO `unidades` VALUES ('K18', 'Pie por segundo grado fahrenheit', NULL);
INSERT INTO `unidades` VALUES ('K19', 'Pie por segundo psi (libra por pulgada cuadrada)', NULL);
INSERT INTO `unidades` VALUES ('K2', 'Kilovoltios amperios demanda reactiva', 'Unidad de medida que define la demanda de potencia reactiva igual a un kilovoltioio de potencia reactiva.');
INSERT INTO `unidades` VALUES ('K20', 'Reciprocidad del pie cuadrado', NULL);
INSERT INTO `unidades` VALUES ('K21', 'Pie cÃƒÂºbico por grado fahrenheit', NULL);
INSERT INTO `unidades` VALUES ('K22', 'Pie cÃƒÂºbico por dÃƒÂ­a', NULL);
INSERT INTO `unidades` VALUES ('K23', 'Pie cÃƒÂºbico por psi (libra por pulgada cuadrada)', NULL);
INSERT INTO `unidades` VALUES ('K24', 'Pie de agua', NULL);
INSERT INTO `unidades` VALUES ('K25', 'Pie de mercurio', NULL);
INSERT INTO `unidades` VALUES ('K26', 'GalÃƒÂ³n (UK) por dÃƒÂ­a', NULL);
INSERT INTO `unidades` VALUES ('K27', 'GalÃƒÂ³n (UK) por hora', NULL);
INSERT INTO `unidades` VALUES ('K28', 'GalÃƒÂ³n (UK) por segundo', NULL);
INSERT INTO `unidades` VALUES ('K3', 'Kilovoltio amperio hora reactivo', 'Unidad de medida que define la energÃƒÂ­a reactiva acumulada igual a un kilovoltioio de potencia reactiva por hora.');
INSERT INTO `unidades` VALUES ('K30', 'GalÃƒÂ³n (lÃƒÂ­quido, EUA) por segundo', NULL);
INSERT INTO `unidades` VALUES ('K31', 'Gramo-fuerza por centÃƒÂ­metro cuadrado', NULL);
INSERT INTO `unidades` VALUES ('K32', 'Gill (UK) por dÃƒÂ­a', 'Gill es una unidad de volumen inglesa en el sistema imperial y en los Estados Unidos. La versiÃƒÂ³n imperial usada en el UK es de 5 onzas lÃƒÂ­quidas, y es equivalente a 142,0653125 ml; mientras que en los EUA es de 4 onzas lÃƒÂ­quidas, y es equivalente a');
INSERT INTO `unidades` VALUES ('K33', 'Gill (UK) por hora', NULL);
INSERT INTO `unidades` VALUES ('K34', 'Gill (UK) por minuto', NULL);
INSERT INTO `unidades` VALUES ('K35', 'Gill (UK) por segundo', NULL);
INSERT INTO `unidades` VALUES ('K36', 'Gill (estados unidos) por dÃƒÂ­a', NULL);
INSERT INTO `unidades` VALUES ('K37', 'Gill (estados unidos) por hora', NULL);
INSERT INTO `unidades` VALUES ('K38', 'Gill (estados unidos) por minuto', NULL);
INSERT INTO `unidades` VALUES ('K39', 'Gill (estados unidos) por segundo', NULL);
INSERT INTO `unidades` VALUES ('K40', 'AceleraciÃƒÂ³n estÃƒÂ¡ndar de la caÃƒÂ­da libre', 'Es la aceleraciÃƒÂ³n nominal de la gravedad de un objeto en un vacÃƒÂ­o cerca de la superficie de la Tierra.');
INSERT INTO `unidades` VALUES ('K41', 'Grano por galÃƒÂ³n (EUA)', NULL);
INSERT INTO `unidades` VALUES ('K42', 'Caballo de fuerza de caldera ', 'Es la cantidad de energÃƒÂ­a requerida para producir 34,5 libras (15,65 kg) de vapor por hora a presiÃƒÂ³n y temperatura 0 psig (0 bar) y 212 o F (100 o C) - con agua de alimentaciÃƒÂ³n a presiÃƒÂ³n 0 psig y la temperatura 212 o F.');
INSERT INTO `unidades` VALUES ('K43', 'Caballo de fuerza (elÃƒÂ©ctrico)', 'Es una unidad de medida de potencia (la velocidad a la que el trabajo se realiza).');
INSERT INTO `unidades` VALUES ('K45', 'Pulgada por grado fahrenheit', NULL);
INSERT INTO `unidades` VALUES ('K46', 'Pulgada por psi (libra por pulgada cuadrada)', NULL);
INSERT INTO `unidades` VALUES ('K47', 'Pulgada por segundo grado fahrenheit', NULL);
INSERT INTO `unidades` VALUES ('K48', 'Pulgada por segundo psi (libra por pulgada cuadrada)', NULL);
INSERT INTO `unidades` VALUES ('K49', 'Reciprocidad de la pulgada cuadrada', NULL);
INSERT INTO `unidades` VALUES ('K5', 'Kilovoltios amperios (reactivos)', 'Utilice kilovar (cÃƒÂ³digo comÃƒÂºn KVR)');
INSERT INTO `unidades` VALUES ('K50', 'Kilobaud', 'Unidad de velocidad de transmisiÃƒÂ³n de seÃƒÂ±al igual a 10Ã‚Â³ (1000) eventos de seÃƒÂ±alizaciÃƒÂ³n por segundo.');
INSERT INTO `unidades` VALUES ('K51', 'KilocalorÃƒÂ­a (significado)', NULL);
INSERT INTO `unidades` VALUES ('K52', 'KilocalorÃƒÂ­a (tabla internacional) por hora metro grado celsius', NULL);
INSERT INTO `unidades` VALUES ('K53', 'KilocalorÃƒÂ­a (termoquÃƒÂ­mico)', NULL);
INSERT INTO `unidades` VALUES ('K54', 'KilocalorÃƒÂ­a (termoquÃƒÂ­mica) por minuto', NULL);
INSERT INTO `unidades` VALUES ('K55', 'KilocalorÃƒÂ­a (termoquÃƒÂ­mica) por segundo', NULL);
INSERT INTO `unidades` VALUES ('K58', 'KiloMol por hora', NULL);
INSERT INTO `unidades` VALUES ('K59', 'KiloMol por metro cÃƒÂºbico kelvin', NULL);
INSERT INTO `unidades` VALUES ('K6', 'Kilolitro', NULL);
INSERT INTO `unidades` VALUES ('K60', 'KiloMol por metro cÃƒÂºbico bar', NULL);
INSERT INTO `unidades` VALUES ('K61', 'KiloMol por minuto', NULL);
INSERT INTO `unidades` VALUES ('K62', 'Litro por litro', NULL);
INSERT INTO `unidades` VALUES ('K63', 'Reciprocidad del litro', NULL);
INSERT INTO `unidades` VALUES ('K64', 'Libra (avoirdupois) por grado fahrenheit', NULL);
INSERT INTO `unidades` VALUES ('K65', 'Libra (avoirdupois) pie cuadrado', NULL);
INSERT INTO `unidades` VALUES ('K66', 'Libra (avoirdupois) por dÃƒÂ­a', NULL);
INSERT INTO `unidades` VALUES ('K67', 'Libra por pie hora', NULL);
INSERT INTO `unidades` VALUES ('K68', 'Libra por pie segundo', NULL);
INSERT INTO `unidades` VALUES ('K69', 'Libra (avoirdupois) por pie cÃƒÂºbico grado fahrenheit', NULL);
INSERT INTO `unidades` VALUES ('K70', 'Libra (avoirdupois) por pie cÃƒÂºbico psi', NULL);
INSERT INTO `unidades` VALUES ('K71', 'Libra (avoirdupois) por galÃƒÂ³n (UK)', NULL);
INSERT INTO `unidades` VALUES ('K73', 'Libra (avoirdupois) por hora grados fahrenheit', NULL);
INSERT INTO `unidades` VALUES ('K74', 'Libra (avoirdupois) por hora libra-fuerza por pulgada cuadrada', NULL);
INSERT INTO `unidades` VALUES ('K75', 'Libra (avoirdupois) por pulgada cÃƒÂºbica grado fahrenheit', NULL);
INSERT INTO `unidades` VALUES ('K76', 'Libra (avoirdupois) por pulgada cÃƒÂºbica psi', NULL);
INSERT INTO `unidades` VALUES ('K77', 'Libra (avoirdupois) por psi', NULL);
INSERT INTO `unidades` VALUES ('K78', 'Libra (avoirdupois) por minuto', NULL);
INSERT INTO `unidades` VALUES ('K79', 'Libra (avoirdupois) por minuto grados fahrenheit', NULL);
INSERT INTO `unidades` VALUES ('K80', 'Libra (avoirdupois) por minuto libra-fuerza por pulgada cuadrada', NULL);
INSERT INTO `unidades` VALUES ('K81', 'Libra (avoirdupois) por segundo', NULL);
INSERT INTO `unidades` VALUES ('K82', 'Libra (avoirdupois)por segundo grados fahrenheit', NULL);
INSERT INTO `unidades` VALUES ('K83', 'Libra (avoirdupois) por segundo libra-fuerza por pulgada cuadrada', NULL);
INSERT INTO `unidades` VALUES ('K84', 'Libra por yarda cÃƒÂºbica ', NULL);
INSERT INTO `unidades` VALUES ('K85', 'Libra-fuerza por pie cuadrado', NULL);
INSERT INTO `unidades` VALUES ('K86', 'Libra-fuerza por pulgada cuadrada grados fahrenheit', NULL);
INSERT INTO `unidades` VALUES ('K87', 'Libra-fuerza por pulgada cuadrada pulgada cÃƒÂºbica por segundo', NULL);
INSERT INTO `unidades` VALUES ('K88', 'Libra-fuerza por pulgada cuadrada litro por segundo', NULL);
INSERT INTO `unidades` VALUES ('K89', 'Libra-fuerza por pulgada cuadrada metro cÃƒÂºbico por segundo', NULL);
INSERT INTO `unidades` VALUES ('K90', 'Libra-fuerza por pulgada cuadrada yarda cÃƒÂºbica por segundo', NULL);
INSERT INTO `unidades` VALUES ('K91', 'Libra-fuerza segundo por pie cuadrado', NULL);
INSERT INTO `unidades` VALUES ('K92', 'Libra-fuerza segundo por pulgada cuadrada', NULL);
INSERT INTO `unidades` VALUES ('K93', 'Reciprocidad psi', NULL);
INSERT INTO `unidades` VALUES ('K94', 'Cuarto (lÃƒÂ­quido, UK) por dÃƒÂ­a', NULL);
INSERT INTO `unidades` VALUES ('K95', 'Cuarto (lÃƒÂ­quido, UK) por hora', NULL);
INSERT INTO `unidades` VALUES ('K96', 'Cuarto (lÃƒÂ­quido, UK) por minuto', NULL);
INSERT INTO `unidades` VALUES ('K97', 'Cuarto (lÃƒÂ­quido, UK) por segundo', NULL);
INSERT INTO `unidades` VALUES ('K98', 'Cuarto (lÃƒÂ­quido, estados unidos) por dÃƒÂ­a', NULL);
INSERT INTO `unidades` VALUES ('K99', 'Cuarto (lÃƒÂ­quido, estados unidos) por hora', NULL);
INSERT INTO `unidades` VALUES ('KA', 'Pastel', 'Unidad de conteo que define el nÃƒÂºmero de pasteles (torta: objeto en forma de una masa plana y compacta).');
INSERT INTO `unidades` VALUES ('KAT', 'Katal', ' Una unidad de actividad catalÃƒÂ­tica que define la actividad catalÃƒÂ­tica de las enzimas y otros catalizadores.');
INSERT INTO `unidades` VALUES ('KB', 'Kilocaracter', 'Unidad de informaciÃƒÂ³n igual a 10Ã‚Â³ (1000) caracteres.');
INSERT INTO `unidades` VALUES ('KBA', 'Kilobar', NULL);
INSERT INTO `unidades` VALUES ('KCC', 'Kilogramo de cloruro de colina', 'Unidad de masa igual a mil gramos de cloruro de colina.');
INSERT INTO `unidades` VALUES ('KD', 'Kilogram decimal', NULL);
INSERT INTO `unidades` VALUES ('KDW', 'Kilogramo de peso neto drenado', 'Unidad de masa que define el nÃƒÂºmero neto de kilogramos de un producto, sin tener en cuenta el contenido lÃƒÂ­quido del producto.');
INSERT INTO `unidades` VALUES ('KEL', 'Kelvin', 'Unidad de temperatura termodinÃƒÂ¡mica, es la fracciÃƒÂ³n 1/273,16 de la temperatura termodinÃƒÂ¡mica del punto triple del agua. ');
INSERT INTO `unidades` VALUES ('KF', 'Kilopacket', NULL);
INSERT INTO `unidades` VALUES ('KGM', 'Kilogramo', 'Una unidad de masa igual a mil gramos.');
INSERT INTO `unidades` VALUES ('KGS', 'Kilogramo por segundo', NULL);
INSERT INTO `unidades` VALUES ('KHY', 'Kilogramo de perÃƒÂ³xido de hidrÃƒÂ³geno', 'Unidad de masa igual a mil gramos de perÃƒÂ³xido de hidrÃƒÂ³geno.');
INSERT INTO `unidades` VALUES ('KHZ', 'Kilohertz', 'Medida de frecuencia que es igual a 1000 hertz.');
INSERT INTO `unidades` VALUES ('KI', 'Kilogramo por milÃƒÂ­metro de ancho', NULL);
INSERT INTO `unidades` VALUES ('KIC', 'Kilogramo, incluyendo el contenedor', 'Unidad de masa que define el nÃƒÂºmero de kilogramos de un producto, incluido su contenedor.');
INSERT INTO `unidades` VALUES ('KIP', 'Kilogramo, incluyendo el empaquetado interno', 'Unidad de masa que define el nÃƒÂºmero de kilogramos de un producto, incluyendo sus materiales de embalaje internos.');
INSERT INTO `unidades` VALUES ('KJ', 'Kilosegmento', 'Unidad de informaciÃƒÂ³n igual a 10Ã‚Â³ (1000) segmentos.');
INSERT INTO `unidades` VALUES ('KJO', 'Kilojoule', NULL);
INSERT INTO `unidades` VALUES ('KL', 'Kilogramo por metro', NULL);
INSERT INTO `unidades` VALUES ('KLK', 'Porcentaje de material seco lÃƒÂ¡ctico', 'Unidad de proporciÃƒÂ³n que define el porcentaje de material lÃƒÂ¡ctico seco en un producto.');
INSERT INTO `unidades` VALUES ('KLX', 'Kilolux', 'Una unidad de iluminancia igual a mil lux.');
INSERT INTO `unidades` VALUES ('KMA', 'Kilogramo de metilamina', 'Unidad de masa igual a mil gramos de metilamina.');
INSERT INTO `unidades` VALUES ('KMH', 'KilÃƒÂ³metro por hora', NULL);
INSERT INTO `unidades` VALUES ('KMK', 'KilÃƒÂ³metro cuadrado', 'Es la unidad de superficie de ÃƒÂ¡rea que se corresponde con un cuadrado de un kilÃƒÂ³metro de lado.');
INSERT INTO `unidades` VALUES ('KMQ', 'Kilogramo por metro cÃƒÂºbico', 'Unidad de peso expresada en kilogramos de una sustancia que llena un volumen de un metro cÃƒÂºbico.');
INSERT INTO `unidades` VALUES ('KMT', 'KilÃƒÂ³metro', 'Es una unidad de longitud. Es el tercer mÃƒÂºltiplo del metro, equivalente a 1000 metros. Su sÃƒÂ­mbolo es km y no acepta plural ni lleva punto final Ã¢â‚¬â€excepto cuando se encuentra como ÃƒÂºltimo elemento de una frase u oraciÃƒÂ³nÃ¢â‚¬â€ por no trat');
INSERT INTO `unidades` VALUES ('KNI', 'Kilogramo de nitrÃƒÂ³geno', 'Unidad de masa igual a mil gramos de nitrÃƒÂ³geno.');
INSERT INTO `unidades` VALUES ('KNM', 'Kolonewton por metro cuadrado', NULL);
INSERT INTO `unidades` VALUES ('KNS', 'Kilogram sustancia nombrada', 'Unidad de masa igual a un kilogramo de una sustancia llamada.');
INSERT INTO `unidades` VALUES ('KNT', 'Nudo', 'El nudo es una medida de velocidad utilizada tanto para navegaciÃƒÂ³n marÃƒÂ­tima como aÃƒÂ©rea, equivalente a 1852 m/hora. TambiÃƒÂ©n se utiliza en meteorologÃƒÂ­a para medir la velocidad de los vientos.');
INSERT INTO `unidades` VALUES ('KO', 'Miliequivalentes de potasa cÃƒÂ¡ustica por gramo de producto', 'Unidad de conteo que define el nÃƒÂºmero de miligramos de hidrÃƒÂ³xido de potasio por gramo de producto como una medida de la concentraciÃƒÂ³n de hidrÃƒÂ³xido de potasio en el producto.');
INSERT INTO `unidades` VALUES ('KPA', 'Kilopascal', NULL);
INSERT INTO `unidades` VALUES ('KPH', 'Kilogramo de hidrÃƒÂ³xido de potasio (potasa cÃƒÂ¡ustica)', 'Unidad de masa igual a mil gramos de hidrÃƒÂ³xido de potasio (potasa cÃƒÂ¡ustica).');
INSERT INTO `unidades` VALUES ('KPO', 'Kilogramo de ÃƒÂ³xido de potasio', 'Unidad de masa igual a mil gramos de ÃƒÂ³xido de potasio.');
INSERT INTO `unidades` VALUES ('KPP', 'Kilogramo de pentÃƒÂ³xido de fÃƒÂ³sforo (anhÃƒÂ­drido fosfÃƒÂ³rico)', 'Unidad de masa igual a mil gramos de anhÃƒÂ­drido fosfÃƒÂ³rico de pentÃƒÂ³xido de fÃƒÂ³sforo.');
INSERT INTO `unidades` VALUES ('KR', 'Kiloroentgen', NULL);
INSERT INTO `unidades` VALUES ('KS', 'Mil libras por pulgada cuadrada', NULL);
INSERT INTO `unidades` VALUES ('KSD', 'Kilogramo de sustancia 90% seco', 'Unidad de masa igual a mil gramos de una sustancia llamada 90% seca.');
INSERT INTO `unidades` VALUES ('KSH', 'Kilogramo de hidrÃƒÂ³xido de sodio (sodio cÃƒÂ¡ustica)', 'Unidad de masa igual a mil gramos de hidrÃƒÂ³xido sÃƒÂ³dico (sosa cÃƒÂ¡ustica).');
INSERT INTO `unidades` VALUES ('KT', 'Kit', 'Unidad de conteo que define el nÃƒÂºmero de kits (kit: baÃƒÂ±era, barril o cubo).');
INSERT INTO `unidades` VALUES ('KTN', 'Kilotonelada MÃƒÂ©trica', NULL);
INSERT INTO `unidades` VALUES ('KUR', 'Kilogramo de uranio', 'Unidad de masa igual a mil gramos de uranio.');
INSERT INTO `unidades` VALUES ('KVA', 'Kilovoltio - amperio', NULL);
INSERT INTO `unidades` VALUES ('KVR', 'Kilovar', NULL);
INSERT INTO `unidades` VALUES ('KVT', 'Kilovoltio', NULL);
INSERT INTO `unidades` VALUES ('KW', 'Kilogramo por milÃƒÂ­metro', NULL);
INSERT INTO `unidades` VALUES ('KWH', 'Kilowatt hora', NULL);
INSERT INTO `unidades` VALUES ('KWN', 'Kilowatt hora por metro cÃƒÂºbico normalizado', 'Kilowatt hora por metro cÃƒÂºbico normalizado (temperatura 0 Ã‚Â° C y presiÃƒÂ³n 101325 milibares).');
INSERT INTO `unidades` VALUES ('KWO', 'Kilogramo de triÃƒÂ³xido de tungsteno', 'A unit of mass equal to one thousand grams of tungsten trioxide.');
INSERT INTO `unidades` VALUES ('KWS', 'Kilowatt hora por metro cÃƒÂºbico estÃƒÂ¡ndar', 'Kilowatt hora por metro cÃƒÂºbico normalizado (temperatura 15 Ã‚Â° C y presiÃƒÂ³n 101325 milibares).');
INSERT INTO `unidades` VALUES ('KWT', 'Kilowatt', NULL);
INSERT INTO `unidades` VALUES ('KX', 'Mililitro por kilogramo', NULL);
INSERT INTO `unidades` VALUES ('L10', 'Cuarto (lÃƒÂ­quido, estados unidos) por minuto', NULL);
INSERT INTO `unidades` VALUES ('L11', 'Cuarto (lÃƒÂ­quido, estados unidos) por segundo', NULL);
INSERT INTO `unidades` VALUES ('L12', 'Metro por segundo kelvin', NULL);
INSERT INTO `unidades` VALUES ('L13', 'Metro por segundo bar', NULL);
INSERT INTO `unidades` VALUES ('L14', 'Metro cuadrado hora grado celsius por kilocalorÃƒÂ­a (tabla internacional)', NULL);
INSERT INTO `unidades` VALUES ('L15', 'Milipascal segundo por kelvin', NULL);
INSERT INTO `unidades` VALUES ('L16', 'Milipascal segundo por bar', NULL);
INSERT INTO `unidades` VALUES ('L17', 'Miligramo por metro cÃƒÂºbico kelvin', NULL);
INSERT INTO `unidades` VALUES ('L18', 'Miligramo por metro cÃƒÂºbico bar', NULL);
INSERT INTO `unidades` VALUES ('L19', 'Mililitro por litro', NULL);
INSERT INTO `unidades` VALUES ('L2', 'Litro por minuto', NULL);
INSERT INTO `unidades` VALUES ('L20', 'Reciprocidad del milimetro cÃƒÂºbico', NULL);
INSERT INTO `unidades` VALUES ('L21', 'Milimetro cÃƒÂºbico por metro cÃƒÂºbico', NULL);
INSERT INTO `unidades` VALUES ('L23', 'Mol por hora ', NULL);
INSERT INTO `unidades` VALUES ('L24', 'Mol por kilogramo kelvin', NULL);
INSERT INTO `unidades` VALUES ('L25', 'Mol por kilogramo bar', NULL);
INSERT INTO `unidades` VALUES ('L26', 'Mol por litreo kelvin', NULL);
INSERT INTO `unidades` VALUES ('L27', 'Mol por litro bar', NULL);
INSERT INTO `unidades` VALUES ('L28', 'Mol por metro cÃƒÂºbico kelvin', NULL);
INSERT INTO `unidades` VALUES ('L29', 'Mol por metro cÃƒÂºbico bar', NULL);
INSERT INTO `unidades` VALUES ('L30', 'Mol por minuto', NULL);
INSERT INTO `unidades` VALUES ('L31', 'Milliroentgen aequivalent men', NULL);
INSERT INTO `unidades` VALUES ('L32', 'Nanogramo por kilogramo', NULL);
INSERT INTO `unidades` VALUES ('L33', 'Onza (avoirdupois) por dÃƒÂ­a', NULL);
INSERT INTO `unidades` VALUES ('L34', 'Onza (avoirdupois) por hora', NULL);
INSERT INTO `unidades` VALUES ('L35', 'Onza (avoirdupois) por minuto', NULL);
INSERT INTO `unidades` VALUES ('L36', 'Onza (avoirdupois) por segundo', NULL);
INSERT INTO `unidades` VALUES ('L37', 'Onza (avoirdupois) por galÃƒÂ³n (UK)', NULL);
INSERT INTO `unidades` VALUES ('L38', 'Onza (avoirdupois) por galÃƒÂ³n (EUA)', NULL);
INSERT INTO `unidades` VALUES ('L39', 'Onza (avoirdupois) por pulgada cÃƒÂºbica', NULL);
INSERT INTO `unidades` VALUES ('L40', 'Onza fuerza', NULL);
INSERT INTO `unidades` VALUES ('L41', 'Onza (avoirdupois) fuerza pulgada', NULL);
INSERT INTO `unidades` VALUES ('L42', 'Picosiemens por metro', NULL);
INSERT INTO `unidades` VALUES ('L43', 'Peck (UK)', 'Un peck es una unidad tradicional de medida de volÃƒÂºmenes. Aunque puede ser utilizado para medir seco y lÃƒÂ­quido, se utiliza generalmente para las materias secas. Es igual a 1/4 bushel, 2 galones, o 8 cuartos de galÃƒÂ³n.');
INSERT INTO `unidades` VALUES ('L44', 'Peck (UK) por dÃƒÂ­a', NULL);
INSERT INTO `unidades` VALUES ('L45', 'Peck (UK) por hora', NULL);
INSERT INTO `unidades` VALUES ('L46', 'Peck (UK) por minuto', NULL);
INSERT INTO `unidades` VALUES ('L47', 'Peck (UK) por segundo', NULL);
INSERT INTO `unidades` VALUES ('L48', 'Peck (seco, estados unidos) por dÃƒÂ­a', NULL);
INSERT INTO `unidades` VALUES ('L49', 'Peck (seco, estados unidos) por hora', NULL);
INSERT INTO `unidades` VALUES ('L50', 'Peck (seco, estados unidos) por minuto', NULL);
INSERT INTO `unidades` VALUES ('L51', 'Peck (seco, estados unidos) por segundo', NULL);
INSERT INTO `unidades` VALUES ('L52', 'Libra.fuerza por pulgada cuadrada por libra fuerza por pulgada cuadrada', NULL);
INSERT INTO `unidades` VALUES ('L53', 'Pinta (UK) por dÃƒÂ­a', NULL);
INSERT INTO `unidades` VALUES ('L54', 'Pinta (UK) por hora', NULL);
INSERT INTO `unidades` VALUES ('L55', 'Pinta (UK) por minuto', NULL);
INSERT INTO `unidades` VALUES ('L56', 'Pinta (UK) por segundo', NULL);
INSERT INTO `unidades` VALUES ('L57', 'Pinta (lÃƒÂ­quido, estados unidos) por dÃƒÂ­a', NULL);
INSERT INTO `unidades` VALUES ('L58', 'Pinta (lÃƒÂ­quido, estados unidos) por hora', NULL);
INSERT INTO `unidades` VALUES ('L59', 'Pinta (lÃƒÂ­quido, estados unidos) por minuto', NULL);
INSERT INTO `unidades` VALUES ('L60', 'Pinta (lÃƒÂ­quido, estados unidos) por segundo', NULL);
INSERT INTO `unidades` VALUES ('L61', 'Pinta (US seco)', 'Utilice pinta seca (cÃƒÂ³digo comÃƒÂºn PTD)');
INSERT INTO `unidades` VALUES ('L62', 'Cuarto de galÃƒÂ³n (seco de los EUA)', 'Utilice cuarto seco (EUA) (cÃƒÂ³digo comÃƒÂºn QTD)');
INSERT INTO `unidades` VALUES ('L63', 'Slug por dÃƒÂ­a', NULL);
INSERT INTO `unidades` VALUES ('L64', 'Slug por pie segundo', NULL);
INSERT INTO `unidades` VALUES ('L65', 'Slug por pie cÃƒÂºbico', NULL);
INSERT INTO `unidades` VALUES ('L66', 'Slug por hora', NULL);
INSERT INTO `unidades` VALUES ('L67', 'Slug por minuto', NULL);
INSERT INTO `unidades` VALUES ('L68', 'Slug por segundo', NULL);
INSERT INTO `unidades` VALUES ('L69', 'Tonelada por kelvin', NULL);
INSERT INTO `unidades` VALUES ('L70', 'Tonelada por bar', NULL);
INSERT INTO `unidades` VALUES ('L71', 'Tonelada por dÃƒÂ­a', NULL);
INSERT INTO `unidades` VALUES ('L72', 'Tonelada por dÃƒÂ­a kelvin', NULL);
INSERT INTO `unidades` VALUES ('L73', 'Tonelada por dÃƒÂ­a bar', NULL);
INSERT INTO `unidades` VALUES ('L74', 'Tonelada por hora kelvin', NULL);
INSERT INTO `unidades` VALUES ('L75', 'Tonelada por hora bar', NULL);
INSERT INTO `unidades` VALUES ('L76', 'Tonelada por metro cÃƒÂºbico kelvin', NULL);
INSERT INTO `unidades` VALUES ('L77', 'Tonelada por metro cÃƒÂºbico bar', NULL);
INSERT INTO `unidades` VALUES ('L78', 'Tonelada por minuto', NULL);
INSERT INTO `unidades` VALUES ('L79', 'Tonelada por minuto kelvin', NULL);
INSERT INTO `unidades` VALUES ('L80', 'Tonelada por minuto bar', NULL);
INSERT INTO `unidades` VALUES ('L81', 'Tonelada por segundo', NULL);
INSERT INTO `unidades` VALUES ('L82', 'Tonelada por segundo kelvin', NULL);
INSERT INTO `unidades` VALUES ('L83', 'Tonelada por segundo bar', NULL);
INSERT INTO `unidades` VALUES ('L84', 'Tonelada (flota UK)', NULL);
INSERT INTO `unidades` VALUES ('L85', 'Tonelada larga por dÃƒÂ­a', NULL);
INSERT INTO `unidades` VALUES ('L86', 'Tonelada (flota estados unidos)', NULL);
INSERT INTO `unidades` VALUES ('L87', 'Tonelada corta por grado fahrenheit', NULL);
INSERT INTO `unidades` VALUES ('L88', 'Tonelada corta por dÃƒÂ­a', NULL);
INSERT INTO `unidades` VALUES ('L89', 'Tonelada corta por hora grados fahrenheit', NULL);
INSERT INTO `unidades` VALUES ('L90', 'Tonelada corta por hora libra-fuerza por pulgada cuadrada', NULL);
INSERT INTO `unidades` VALUES ('L91', 'Tonelada corta por psi', NULL);
INSERT INTO `unidades` VALUES ('L92', 'Tonelada larga (UK) por yarda cÃƒÂºbica', NULL);
INSERT INTO `unidades` VALUES ('L93', 'Tonelada corta (estados unidos) por yarda cÃƒÂºbica', NULL);
INSERT INTO `unidades` VALUES ('L94', 'Tonelada fuerza', NULL);
INSERT INTO `unidades` VALUES ('L95', 'AÃƒÂ±o comÃƒÂºn', 'Es un aÃƒÂ±o civil de 365 dÃƒÂ­as, uno menos que el aÃƒÂ±o bisiesto, por lo que tiene exactamente 52 semanas y un dÃƒÂ­a. El reparto de los aÃƒÂ±os civiles entre aÃƒÂ±os comunes y aÃƒÂ±os bisiestos se hace de acuerdo con el calendario gregoriano: en cada ');
INSERT INTO `unidades` VALUES ('L96', 'AÃƒÂ±o sideral', 'Es el tiempo que trascurre entre dos pasos consecutivos de la Tierra por un mismo punto de su ÃƒÂ³rbita, tomando como referencia a las estrellas.');
INSERT INTO `unidades` VALUES ('L98', 'Yarda por grado fahrenheit', NULL);
INSERT INTO `unidades` VALUES ('L99', 'Yarda por psi (libra por pulgada cuadrada)', NULL);
INSERT INTO `unidades` VALUES ('LA', 'Libra por pulgada cÃƒÂºbica ', NULL);
INSERT INTO `unidades` VALUES ('LAC', 'Porcentaje de exceso de lactosa', 'Unidad de proporciÃƒÂ³n que define el porcentaje de lactosa en un producto que excede un nivel de porcentaje definido.');
INSERT INTO `unidades` VALUES ('LBR', 'Libra', 'Unidad monetaria de Irlanda (hasta su sustituciÃƒÂ³n por el euro), Reino Unido, Chipre, Egipto, LÃƒÂ­bano, Malta, Siria y otros paÃƒÂ­ses.');
INSERT INTO `unidades` VALUES ('LBT', 'Troy pound', NULL);
INSERT INTO `unidades` VALUES ('LC', 'CentÃƒÂ­metro lineal', NULL);
INSERT INTO `unidades` VALUES ('LD', 'Litro por dÃƒÂ­a', NULL);
INSERT INTO `unidades` VALUES ('LE', 'Lite', NULL);
INSERT INTO `unidades` VALUES ('LEF', 'Hoja', 'Unidad de conteo que define el nÃƒÂºmero de hojas.');
INSERT INTO `unidades` VALUES ('LF', 'Pie lineal', 'Unidad de conteo que define el nÃƒÂºmero de pies (12 pulgadas) de longitud de un objeto de ancho uniforme.');
INSERT INTO `unidades` VALUES ('LH', 'Hora de trabajo', 'Unidad de tiempo que define el nÃƒÂºmero de horas de trabajo.');
INSERT INTO `unidades` VALUES ('LI', 'Pulgada lineal', NULL);
INSERT INTO `unidades` VALUES ('LJ', 'Spray grande', NULL);
INSERT INTO `unidades` VALUES ('LK', 'Enlazar', 'Unidad de distancia igual a 0.01 cadena.');
INSERT INTO `unidades` VALUES ('LM', 'Metro lineal', 'Unidad de conteo que define el nÃƒÂºmero de metros de longitud de un objeto de ancho uniforme.');
INSERT INTO `unidades` VALUES ('LN', 'Longitud', 'Unidad de distancia que define la extensiÃƒÂ³n lineal de un elemento medido de extremo a extremo.');
INSERT INTO `unidades` VALUES ('LO', 'Lote [unidad de adquisiciÃƒÂ³n]', 'Unidad de conteo que define el nÃƒÂºmero de lotes (lote: una colecciÃƒÂ³n de artÃƒÂ­culos asociados).');
INSERT INTO `unidades` VALUES ('LP', 'Libra lÃƒÂ­quida', 'Unidad de masa que define el nÃƒÂºmero de libras de una sustancia lÃƒÂ­quida.');
INSERT INTO `unidades` VALUES ('LPA', 'Litro de alcohol puro', 'Unidad de volumen igual a un litro de alcohol puro.');
INSERT INTO `unidades` VALUES ('LR', 'Capa ', 'Unidad de conteo que define el nÃƒÂºmero de capas.');
INSERT INTO `unidades` VALUES ('LS', 'Suma global', 'Unidad de conteo que define el nÃƒÂºmero de cantidades monetarias completas o completas.');
INSERT INTO `unidades` VALUES ('LTN', 'Tonelada (UK) o tonelada larga (estados unidos)', 'SinÃƒÂ³nimo: tonelada bruta (2240 ??lb)');
INSERT INTO `unidades` VALUES ('LTR', 'Litro', 'Es una unidad de volumen equivalente a un decÃƒÂ­metro cÃƒÂºbico (1 dmÃ‚Â³). Su uso es aceptado en el Sistema Internacional de Unidades (SI), aunque ya no pertenece estrictamente a ÃƒÂ©l.');
INSERT INTO `unidades` VALUES ('LUB', 'Tonelada mÃƒÂ©trica, aceite lubricante', 'Unidad de masa que define el nÃƒÂºmero de toneladas mÃƒÂ©tricas de aceite lubricante.');
INSERT INTO `unidades` VALUES ('LUM', 'Lumen', 'El lumen es la unidad estÃƒÂ¡ndar del flujo luminoso de una fuente de luz. Es una unidad derivada del sistema internacional, basada en la candela.');
INSERT INTO `unidades` VALUES ('LUX', 'Lux', 'Un lux es la incidencia perpendicular de un lumen en una superficie de 1 metro cuadrado. Equivale a 0.0929 lÃƒÂºmenes.');
INSERT INTO `unidades` VALUES ('LX', 'Yarda lineal por libra', NULL);
INSERT INTO `unidades` VALUES ('LY', 'Yarda lineal', 'Unidad de conteo que define el nÃƒÂºmero de unidades de 36 pulgadas en longitud de un objeto de ancho uniforme.');
INSERT INTO `unidades` VALUES ('M0', 'cinta magnÃƒÂ©tica', NULL);
INSERT INTO `unidades` VALUES ('M1', 'Miligramo por litro', NULL);
INSERT INTO `unidades` VALUES ('M10', 'Reciprocidad de la yarda cuadrada', NULL);
INSERT INTO `unidades` VALUES ('M11', 'Yarda cÃƒÂºbica por grado fahrenheit', NULL);
INSERT INTO `unidades` VALUES ('M12', 'Yarda cÃƒÂºbica por dÃƒÂ­a', NULL);
INSERT INTO `unidades` VALUES ('M13', 'Yarda cÃƒÂºbica por hora ', NULL);
INSERT INTO `unidades` VALUES ('M14', 'Yarda cÃƒÂºbica por psi (libra por pulgada cuadrada)', NULL);
INSERT INTO `unidades` VALUES ('M15', 'Yarda cÃƒÂºbica por minuto', NULL);
INSERT INTO `unidades` VALUES ('M16', 'Yarda cÃƒÂºbica por segundo', NULL);
INSERT INTO `unidades` VALUES ('M17', 'Kilohertz metro', NULL);
INSERT INTO `unidades` VALUES ('M18', 'Gigahertz metro', NULL);
INSERT INTO `unidades` VALUES ('M19', 'Beaufort', 'Una medida empÃƒÂ­rica para describir la velocidad del viento basada principalmente en condiciones marinas observadas. La escala de Beaufort indica la velocidad del viento por nÃƒÂºmeros que tÃƒÂ­picamente varÃƒÂ­an de 0 para la calma, a 12 para el huracÃ');
INSERT INTO `unidades` VALUES ('M20', 'RecÃƒÂ­proco de megakelvin ÃƒÂ³ megakelvin a la potencia menos 1', NULL);
INSERT INTO `unidades` VALUES ('M21', 'Kilovoltio-amperio hora recÃƒÂ­procidad', NULL);
INSERT INTO `unidades` VALUES ('M22', 'MilÃƒÂ­metro por centÃƒÂ­metro cuadrado minuto', NULL);
INSERT INTO `unidades` VALUES ('M23', 'Newton por centÃƒÂ­metro', NULL);
INSERT INTO `unidades` VALUES ('M24', 'Ohm kilÃƒÂ³metro', NULL);
INSERT INTO `unidades` VALUES ('M25', 'Porcentaje por grado celsius', 'Unidad de proporciÃƒÂ³n, igual a 0,01, en relaciÃƒÂ³n a una temperatura de un grado.');
INSERT INTO `unidades` VALUES ('M26', 'GigaOhm por metro', NULL);
INSERT INTO `unidades` VALUES ('M27', 'Megahertz metro', NULL);
INSERT INTO `unidades` VALUES ('M29', 'Kilogramo por kilogramo', NULL);
INSERT INTO `unidades` VALUES ('M30', 'voltio-amperio segundo recÃƒÂ­procidad', NULL);
INSERT INTO `unidades` VALUES ('M31', 'Kilogramo por kilÃƒÂ³metro', NULL);
INSERT INTO `unidades` VALUES ('M32', 'Segundos pascal por litro', NULL);
INSERT INTO `unidades` VALUES ('M33', 'MiliMol por litro', NULL);
INSERT INTO `unidades` VALUES ('M34', 'Newton metro por metro cuadrado', NULL);
INSERT INTO `unidades` VALUES ('M35', 'Milivoltio - amperio', NULL);
INSERT INTO `unidades` VALUES ('M36', 'Mes de 30 dÃƒÂ­as', 'Unidad de cuenta que define el nÃƒÂºmero de meses expresado en mÃƒÂºltiplos de 30 dÃƒÂ­as, un dÃƒÂ­a es igual a 24 horas.');
INSERT INTO `unidades` VALUES ('M37', 'Actual 360', 'Unidad de cuenta que define el nÃƒÂºmero de aÃƒÂ±os expresado en mÃƒÂºltiplos de 360 dÃƒÂ­as, un dÃƒÂ­a es igual a 24 horas.');
INSERT INTO `unidades` VALUES ('M38', 'KilÃƒÂ³metro por segundo cuadrado', '1000 veces de la unidad base del sistema internacional dividido por la potencia de la unidad base del sistema internacional por el segundo al  exponente 2.');
INSERT INTO `unidades` VALUES ('M39', 'CentÃƒÂ­metro por segundo cuadrado', '0.01 veces de unidad de base del sistema internacional dividido por la potencia de la unidad de base del sistema internacional en segundo lugar por el exponente 2.');
INSERT INTO `unidades` VALUES ('M4', 'Valor monetario', 'Unidad de medida expresada como un monto monetario.');
INSERT INTO `unidades` VALUES ('M40', 'Yarda por segundo cuadrado', 'Unidad de longitud de acuerdo con el sistema Anglo-Americano y el sistema imperial de unidades, dividido por la potencia de la unidad del sistema internacional, segundo elevado al exponente 2.');
INSERT INTO `unidades` VALUES ('M41', 'MilÃƒÂ­metro por segundo cuadrado', '0.001 veces de unidad de base del sistema internacional, dividido por la potencia de la unidad de base del sistema internacional por el segundo exponente 2.');
INSERT INTO `unidades` VALUES ('M42', 'Milla (milla estatal)  por segundo cuadrado', 'Unidad de la longitud segÃƒÂºn el sistema Imperial de unidades dividido por la potencia de la unidad base del sistema internacional por segundo por el exponente 2.');
INSERT INTO `unidades` VALUES ('M43', 'Mil (unidad de Medida Militar)', 'Unidad para indicar un ÃƒÂ¡ngulo en la zona militar, igual a la 6400Ã‚Âª parte del cÃƒÂ­rculo completo del 360Ã‚Â° ÃƒÂ³ 2  pi radian.');
INSERT INTO `unidades` VALUES ('M44', 'RevoluciÃƒÂ³n', 'Unidad para identificar un ÃƒÂ¡ngulo de un cÃƒÂ­rculo de 360 grados ÃƒÂ³ 2*pi*radio (Referencia ISO/TC12 SI GuÃƒÂ­a).');
INSERT INTO `unidades` VALUES ('M45', 'Grado por segundo cuadrado', '360 partes de un cÃƒÂ­rculo completo dividido por la potencia de la unidad de base SI en segundo lugar y el exponente 2.');
INSERT INTO `unidades` VALUES ('M46', 'RevoluciÃƒÂ³n por minuto', NULL);
INSERT INTO `unidades` VALUES ('M47', 'Circular Mil', 'Unidad que representa el ÃƒÂ¡rea del cÃƒÂ­rculo de un mil de diÃƒÂ¡metro.');
INSERT INTO `unidades` VALUES ('M48', 'Milla cuadrada (basado en u.s survey foot)', 'Unidad de ÃƒÂ¡rea que es principalmente usada en la agricultura y en la forestaciÃƒÂ³n.');
INSERT INTO `unidades` VALUES ('M49', 'Cadena ', ' Es una unidad de longitud utilizada para medir terrenos. Equivale a 20,1168 metros, y en inglÃƒÂ©s se llama surveyor chain.');
INSERT INTO `unidades` VALUES ('M5', 'Microcurie', NULL);
INSERT INTO `unidades` VALUES ('M50', 'Estadio', 'Unidad comunmente usada en Gran BretaÃƒÂ±a en distancias rurales: 1 furlong = 40 rods = 10 cadenas (UK) =1/8 de milla = 1/10 furlong = 220 yardas =660 pies.');
INSERT INTO `unidades` VALUES ('M51', 'Pie (TopografÃƒÂ­a UEA)', 'Unidad comunmente usada en los estados unidos para la inspecciÃƒÂ³n de artillerÃƒÂ­a.');
INSERT INTO `unidades` VALUES ('M52', 'Milla', 'Unidad comunmente usada en los Estados Unidos para la inspecciÃƒÂ³n de artillerÃƒÂ­a.');
INSERT INTO `unidades` VALUES ('M53', 'Metro por pascal', 'Metro, unidad del Sistema Internacional dividido por Pascal, Unidad del Sistema Internacional');
INSERT INTO `unidades` VALUES ('M55', 'Metro por radiÃƒÂ¡n', 'Unidad del factor de conversiÃƒÂ³n para la implementaciÃƒÂ³n de rotaciÃƒÂ³n a movimiento lineal.');
INSERT INTO `unidades` VALUES ('M56', 'Shake ', 'Unidad para un periÃƒÂ³do muy corto.');
INSERT INTO `unidades` VALUES ('M57', 'Milla por minuto', 'Unidad de velocidad del sistema inglÃƒÂ©s de unidades.');
INSERT INTO `unidades` VALUES ('M58', 'Milla por segundo', 'Unidad de velocidad del sistema inglÃƒÂ©s de unidades.');
INSERT INTO `unidades` VALUES ('M59', 'Metro por segundo pascal', 'Metro dividido por el producto de SI unidad base segundo y el derivado unidad SI pascal.');
INSERT INTO `unidades` VALUES ('M60', 'Metro por hora', 'Metro,unidad del sistema internacional dividido por la unidad de hora.');
INSERT INTO `unidades` VALUES ('M61', 'Pulgada por aÃƒÂ±o', 'Unidad de longitud segÃƒÂºn el sistema de unidades Anglo-Americano y el sistema Imperial de unidades dividido por la unidad comÃƒÂºn aÃƒÂ±o de 365 dÃƒÂ­as.');
INSERT INTO `unidades` VALUES ('M62', 'KilÃƒÂ³metro por segundo', '1000 veces del medidor de unidad de base SI dividido por la segunda unidad de base SI.');
INSERT INTO `unidades` VALUES ('M63', 'Pulgada por minuto', 'Unidad de pulgada de acuerdo con el sistema de unidades Anglo-Americanas e Imperial dividido por el minuto de unidad.');
INSERT INTO `unidades` VALUES ('M64', 'Yarda por segundo', 'Unidad de yarda de acuerdo con el sistema de unidades Anglo-Americanas e Imperial dividido por la unidad de base segundo.');
INSERT INTO `unidades` VALUES ('M65', 'Yarda por minuto', 'Unidad de yarda de acuerdo con el sistema de unidades Anglo-Americanas e Imperial dividido por el minuto de unidad.');
INSERT INTO `unidades` VALUES ('M66', 'Yarda por hora', 'Unidad de yarda de acuerdo con el sistema Anglo-Americano y el sistema Imperial de unidades, dividido por la unidad de minuto.');
INSERT INTO `unidades` VALUES ('M67', 'Acre-pie', 'Unidad de volÃƒÂºmen, la cÃƒÂºal es usada en los Estados Unidos para medir la capacidad de las presas.');
INSERT INTO `unidades` VALUES ('M68', 'CordÃƒÂ³n', 'Unidad tradicional del volumen de leÃƒÂ±a apilada que se ha medido con un cordÃƒÂ³n.');
INSERT INTO `unidades` VALUES ('M69', 'Milla cÃƒÂºbica (reinounido)', NULL);
INSERT INTO `unidades` VALUES ('M7', 'Micro-pulgada', NULL);
INSERT INTO `unidades` VALUES ('M70', 'Unidad tradicional de capacidad de carga', NULL);
INSERT INTO `unidades` VALUES ('M71', 'Metro cÃƒÂºbico por pascal (joules)', 'Unidad de EnergÃƒÂ­a del sistema internacional, metro elevado al exponente 3 y dividido por la unidad pascal.');
INSERT INTO `unidades` VALUES ('M72', 'Bel', 'las dÃƒÂ©cimas de bel, o decibeles. El logaritmo de la relaciÃƒÂ³n del sonido o la seÃƒÂ±al con un estÃƒÂ¡ndar proporciona la mediciÃƒÂ³n del decibel. ... El sÃƒÂ­mbolo correspondiente a la unidad es B, pero dB es la unidad estÃƒÂ¡ndar.');
INSERT INTO `unidades` VALUES ('M73', 'Kilogramo por metro cÃƒÂºbico pascal', 'Unidad base del sistema internacional kilogramo, dividido por el producto de metro elevado al exponente 3 por pascal.');
INSERT INTO `unidades` VALUES ('M74', 'Kilogramo por pascal', NULL);
INSERT INTO `unidades` VALUES ('M75', 'Kilolibra fuerza', '100 veces la unidad de fuerza, libra fueza de acuerdo con la relaciÃƒÂ³n del sistema de unidades  Anglo-Americano');
INSERT INTO `unidades` VALUES ('M76', 'Poundal', 'Unidad no conforme al sistema internacional de la potencia, que corresponde a una masa de una libra multiplicada con la aceleraciÃƒÂ³n de un pie por segundo cuadrado.');
INSERT INTO `unidades` VALUES ('M77', 'Kilogramo metro por segundo cuadrado', 'Producto del kilogramo,unidad base del sistema internacional y del metro, unidad base del sistema internacional dividido por la potencia del segundo elevado al exponente 2.');
INSERT INTO `unidades` VALUES ('M78', 'Pond', '0.001 veces de la unidad del peso, definida como una masa de 1 kg que se encuentra sobre una fuerza de peso de 1 kp por la fuerza gravitatoria al nivel del mar, que corresponde a una fuerza de 9,806 65 newton.');
INSERT INTO `unidades` VALUES ('M79', 'Pie cuadrado por hora', 'Potencia de la unidad pie, de acuerdo con el sistema Anglo-Americano e Imperial de unidades, elevado al exponente 2 y dividido por la unidad derivada pascal del sistema internacional de unidades.');
INSERT INTO `unidades` VALUES ('M80', 'Stokes por pascal', 'CGS (CentÃƒÂ­metro-Gramo-Segundo sistema) unidad stokes dividido por la unidad derivada del sistema internacional, pascal.');
INSERT INTO `unidades` VALUES ('M81', 'CentÃƒÂ­metro cuadrado por segundo', NULL);
INSERT INTO `unidades` VALUES ('M82', 'Metro cuadrado por segundo pascal', 'Potencia de la unidad base, metro, del sistema internacional con el exponente 2, dividido por la unidad base, segundo, y la unidad derivada, pascal, ambas del sistema internacional.');
INSERT INTO `unidades` VALUES ('M83', 'Denier', 'Unidad tradicional para la indicaciÃƒÂ³n de la masa lineal de fibras e hilados textiles.');
INSERT INTO `unidades` VALUES ('M84', 'Libra por yarda ', 'Unidad de masa lineal segÃƒÂºn el sistema de unidades avoirdupois.');
INSERT INTO `unidades` VALUES ('M85', 'Tonelada, ensayo', 'Unidad de masa no conforme al sistema internacional, utilizada en la mineralogÃƒÂ­a para determinar la concentraciÃƒÂ³n de metales preciosos en el mineral de acuerdo con la masa del metal precioso en miligramos en una muestra de la masa de un sonido de en');
INSERT INTO `unidades` VALUES ('M86', 'Libra Alemana', 'Anticuada unidad de masa usada en Alemania.');
INSERT INTO `unidades` VALUES ('M87', 'Kilogramo por segundo pascal', 'Es la unidad base kilogramo dividido por el producto de la unidad base segundo y la derivada de la unidad pascal.');
INSERT INTO `unidades` VALUES ('M88', 'Tonelada por mes', 'Unidad tonelada mÃƒÂ©trica dividida por la unidad mes');
INSERT INTO `unidades` VALUES ('M89', 'Tonelada por aÃƒÂ±o', 'Unidad tonelada mÃƒÂ©trica dividida por la unidad aÃƒÂ±o con 365 dÃƒÂ­as');
INSERT INTO `unidades` VALUES ('M9', 'Millones de btu por 1000 pies cÃƒÂºbicos', NULL);
INSERT INTO `unidades` VALUES ('M90', 'Kilolibra por hora', '1000 veces la unidad de la masa libra avoirdupois de acuerdo con el sistema unitario avoirdupois dividido por la unidad de hora.');
INSERT INTO `unidades` VALUES ('M91', 'Libra por libra', 'ProporciÃƒÂ³n de la masa consistente en la libra avoirdupois segÃƒÂºn el sistema unitario avoirdupois dividido por la libra avoirdupois segÃƒÂºn el sistema unitario avoirdupois.');
INSERT INTO `unidades` VALUES ('M92', 'Libra fuerza pie', 'Producto de la unidad libra fuerza, de acuerdo con el sistema de unidades Anglo-Americano, y la unidad pie, de acuerdo con el sistema de unidades, Anglo-Americano y el sistema imperial de unidades.');
INSERT INTO `unidades` VALUES ('M93', 'Newton metro por radiÃƒÂ¡n', 'Producto de la unidad derivada del sistema internacional, newton y de la unidad base , metro, dividida por la unidad radiÃƒÂ¡n.');
INSERT INTO `unidades` VALUES ('M94', 'Kilogramo metro', 'Unidad de desequilibrio como producto del kilogramo  y el metro.');
INSERT INTO `unidades` VALUES ('M95', 'Poundal pie', 'Producto de la unidad poundal, no conforme al sistema internacional de unidades, y la unidad pie, de acuerdo con el sistema de unidades Anglo-Americano y el sistema imperial.');
INSERT INTO `unidades` VALUES ('M96', 'Poundal pulgada', 'Producto de la unidad poundal, no conforme al sistema internacional de unidades, y la unidad pulgada, de acuerdo con el sistema de unidades Anglo-Americano y el sistema imperial.');
INSERT INTO `unidades` VALUES ('M97', 'Dina metro', 'CGS (CentÃƒÂ­metro-Gramo-Segundo sistema) unidad del momento de rotaciÃƒÂ³n.');
INSERT INTO `unidades` VALUES ('M98', 'Kilogramo centÃƒÂ­metro por segundo', 'Producto del kilogramo de unidad de base SI y  0.01 veces de metro unidad de base SI dividido por la unidad de base SI en segundo.');
INSERT INTO `unidades` VALUES ('M99', 'Gramo centÃƒÂ­metro por segundo', 'Producto del 0.001 veces del kilogramo de la unidad base SI y el 0,01 veces del metro de la unidad base SI dividido por la unidad base SI, segundo.');
INSERT INTO `unidades` VALUES ('MA', 'MÃƒÂ¡quina por unidad', NULL);
INSERT INTO `unidades` VALUES ('MAH', 'Megavoltio amperio reactivo hora', 'Define la cantidad total de potencia reactiva a travÃƒÂ©s de un sistema de potencia.');
INSERT INTO `unidades` VALUES ('MAL', 'Megalitro', NULL);
INSERT INTO `unidades` VALUES ('MAM', 'Megametro', 'Es la unidad de longitud que equivale a un millÃƒÂ³n de metros.');
INSERT INTO `unidades` VALUES ('MAR', 'Megavar', 'Una unidad de potencia reactiva elÃƒÂ©ctrica representada por una corriente de mil amperios que fluye debido a una diferencia de potencial de mil voltios donde el seno del ÃƒÂ¡ngulo de fase entre ellos es 1.');
INSERT INTO `unidades` VALUES ('MAW', 'Megawatt', 'Unidad de potencia que define la tasa de energÃƒÂ­a transferida o consumida cuando una corriente de 1000 amperios fluye debido a un potencial de 1000 volts al factor de potencia unitario.');
INSERT INTO `unidades` VALUES ('MBE', 'Mil equivalente de ladrillo estÃƒÂ¡ndar', 'Unidad de cuenta que define el nÃƒÂºmero de mil unidades equivalentes de ladrillo.');
INSERT INTO `unidades` VALUES ('MBF', 'Mil pies de tabla', NULL);
INSERT INTO `unidades` VALUES ('MBR', 'Milibar', NULL);
INSERT INTO `unidades` VALUES ('MC', 'Microgramo', NULL);
INSERT INTO `unidades` VALUES ('MCU', 'Milicurie', NULL);
INSERT INTO `unidades` VALUES ('MD', 'Tonelada mÃƒÂ©trica seca al aire', 'Unidad de conteo que define el nÃƒÂºmero de toneladas mÃƒÂ©tricas de un producto, sin tener en cuenta el contenido de agua del producto.');
INSERT INTO `unidades` VALUES ('MF', 'Miligramo por pie cuadrado por lado', NULL);
INSERT INTO `unidades` VALUES ('MGM', 'Miligramo', 'Medida de masa, de sÃƒÂ­mbolo mg, que es igual a la milÃƒÂ©sima parte de un gramo.');
INSERT INTO `unidades` VALUES ('MHZ', 'Megahertz', 'Medida de frecuencia que es igual a 1 millÃƒÂ³n de hertz.');
INSERT INTO `unidades` VALUES ('MIK', 'Milla cuadrada (milla estatal)', ' Es una unidad de superficie equivalente a un cuadrado cuyos lados miden una milla estatutaria.');
INSERT INTO `unidades` VALUES ('MIL', 'Mil', 'Es un nÃƒÂºmero natural que se escribe 1000 o 10Ã‚Â³ en notaciÃƒÂ³n cientÃƒÂ­fica, y que sigue del 999 y precede al 1001.');
INSERT INTO `unidades` VALUES ('MIN', 'Minuto [unidad de tiempo]', 'Es una unidad de tiempo que equivale a la sexagÃƒÂ©sima parte de una hora. TambiÃƒÂ©n comprende 60Ã‚Â segundos. Su sÃƒÂ­mbolo es min (adviÃƒÂ©rtase que no es una abreviatura: no admite mayÃƒÂºscula, ni punto, ni plural). ');
INSERT INTO `unidades` VALUES ('MIO', 'Millon', 'Es igual a mil millares, o 106. El concepto de millÃƒÂ³n tambiÃƒÂ©n se puede expresar mediante el prefijo mega antepuesto a unidades del SI. EtimologÃƒÂ­a: millÃƒÂ³n proviene del tÃƒÂ©rmino italiano milione (del latÃƒÂ­n: mille).');
INSERT INTO `unidades` VALUES ('MIU', 'Unidad internacional de millon', 'Unidad de cuenta que define el nÃƒÂºmero de unidades internacionales en mÃƒÂºltiplos de 106.');
INSERT INTO `unidades` VALUES ('MK', 'Miligramo por pulgada cuadrada', NULL);
INSERT INTO `unidades` VALUES ('MLD', 'Mil millones', 'SinÃƒÂ³nimo: billon (US)');
INSERT INTO `unidades` VALUES ('MLT', 'Mililitro', 'Medida de volumen, de sÃƒÂ­mbolo ml, que es igual a la milÃƒÂ©sima parte de un litro.');
INSERT INTO `unidades` VALUES ('MMK', 'MilÃƒÂ­metro cuadrado', 'Medida de longitud, de sÃƒÂ­mbolo mm, que es igual a la milÃƒÂ©sima parte de un metro.');
INSERT INTO `unidades` VALUES ('MMQ', 'MilÃƒÂ­metro cÃƒÂºbico', 'Medida de longitud, de sÃƒÂ­mbolo mm, que es igual a la milÃƒÂ©sima parte de un metro.');
INSERT INTO `unidades` VALUES ('MMT', 'MilÃƒÂ­metro', 'Es una unidad de longitud. Es el tercer submÃƒÂºltiplo del metro y equivale a la milÃƒÂ©sima parte de ÃƒÂ©l. ');
INSERT INTO `unidades` VALUES ('MND', 'Kilogramo, peso seco', 'Unidad de masa que define el nÃƒÂºmero de kilogramos de un producto, sin tener en cuenta el contenido de agua del producto.');
INSERT INTO `unidades` VALUES ('MON', 'Mes ', 'Unidad de tiempo equivalente a 1/12 de aÃƒÂ±o de 365.25 dÃƒÂ­as.');
INSERT INTO `unidades` VALUES ('MPA', 'Megapascal', NULL);
INSERT INTO `unidades` VALUES ('MQ', 'Mil metros', NULL);
INSERT INTO `unidades` VALUES ('MQH', 'Metro cÃƒÂºbico por hora', NULL);
INSERT INTO `unidades` VALUES ('MQS', 'Metro cÃƒÂºbico por segundo', NULL);
INSERT INTO `unidades` VALUES ('MSK', 'Metro por segundo cuadrado', 'Es la aceleraciÃƒÂ³n de un cuerpo, animado de movimiento uniformemente variado, cuya velocidad varÃƒÂ­a cada segundo, 1 m/s. ');
INSERT INTO `unidades` VALUES ('MTK', 'Metro cuadrado', 'Es la unidad bÃƒÂ¡sica de superficie en el Sistema Internacional de Unidades. Si a esta unidad se antepone un prefijo del Sistema Internacional se crea un mÃƒÂºltiplo o submÃƒÂºltiplo de esta.');
INSERT INTO `unidades` VALUES ('MTQ', 'Metro cÃƒÂºbico', 'SinÃƒÂ³nimo: metro cÃƒÂºbico');
INSERT INTO `unidades` VALUES ('MTR', 'Metro', 'El metro (sÃƒÂ­mbolo m) es la principal unidad de longitud del Sistema Internacional de Unidades. Un metro es la distancia que recorre la luz en el vacÃƒÂ­o en un intervalo de 1/299 792 458 de segundo.');
INSERT INTO `unidades` VALUES ('MTS', 'Metro por segundo', 'Es la velocidad de un cuerpo que, con movimiento uniforme, recorre, una longitud de un metro en 1 segundo .');
INSERT INTO `unidades` VALUES ('MV', 'NÃƒÂºmero de mults', NULL);
INSERT INTO `unidades` VALUES ('MVA', 'Megavoltio - amperio', NULL);
INSERT INTO `unidades` VALUES ('MWH', 'Megawatt hora', 'Unidad de potencia que define la cantidad total de energÃƒÂ­a a granel transferida o consumida.');
INSERT INTO `unidades` VALUES ('N1', 'Pluma calÃƒÂ³rica', 'Unidad de conteo que define el nÃƒÂºmero de calorÃƒÂ­as que se recetan diariamente para la terapia parenteral / enteral.');
INSERT INTO `unidades` VALUES ('N10', 'Libra pie por segundo', 'Producto de la libra avoirdupois de acuerdo con el sistema de unidades avoirdupois y el pie de acuerdo con el sistema de unidades Anglo-Americano y el sistema imperial, dividido por la unidad segundo del sistema interacional.');
INSERT INTO `unidades` VALUES ('N11', 'Libra pulgada por segundo', 'Producto de la libra avoirdupois de acuerdo con el sistema de unidades avoirdupois y la pulgada de acuerdo con el sistema de unidades Anglo-Americano y el sistema imperial, dividido por la unidad segundo del sistema interacional.');
INSERT INTO `unidades` VALUES ('N12', 'Pferdestaerke', 'Unidad obsoleta de la potencia relativa a DIN 1301-3: 1979: 1 PS = 735.498 75 W.');
INSERT INTO `unidades` VALUES ('N13', 'CentÃƒÂ­metro de mercurio (0Ã‚Â°)', 'Unidad de presiÃƒÂ³n no conforme al sistema internacional, en la cuÃƒÂ¡l el valor de 1 cmHg cumple con la presiÃƒÂ³n estÃƒÂ¡tica, que es generada por un mercurio a una temperatura de 0 Ã‚Â° C con una altura de 1 centÃƒÂ­metro.');
INSERT INTO `unidades` VALUES ('N14', 'CentÃƒÂ­metro de agua (4Ã‚Â°)', 'Unidad de presiÃƒÂ³n no conforme al sistema internacional, en la cuÃƒÂ¡l el valor de 1 cmH2O cumple con la presiÃƒÂ³n estÃƒÂ¡tica, que es generada por una cabeza de agua a una temperatura de 4 Ã‚Â° C con una altura de 1 centÃƒÂ­metro.');
INSERT INTO `unidades` VALUES ('N15', 'Pie de agua (39.2 Ã‚Â°f)', 'Unidad de presiÃƒÂ³n no conforme al sistema internacional, de acuerdo con el sistema Anglo-Americano e Imperial para unidades, mientras que el valor de 1 ft H2O es equivalente a la presiÃƒÂ³n estÃƒÂ¡tica, que es generada por una cabeza de agua a una tempe');
INSERT INTO `unidades` VALUES ('N16', 'Pulgada de mercurio (32 Ã‚Â°f)', 'Unidad de presiÃƒÂ³n no conforme al sistema internacional, de acuerdo con el sistema Anglo-American e Imperial para unidades, mientras que el valor de 1 inHg cumple con la presiÃƒÂ³n estÃƒÂ¡tica, que es generada por un mercurio a una temperatura de 32 Ã‚Â');
INSERT INTO `unidades` VALUES ('N17', 'Pulgada de mercurio (60 Ã‚Â°f)', 'Unidad de presiÃƒÂ³n no conforme al sistema internacional sino segÃƒÂºn al sistema Anglo-Americano e Imperial para unidades, mientras que el valor de 1 in Hg satisface la presiÃƒÂ³n estÃƒÂ¡tica, que es generada por un mercurio a una temperatura de 60 Ã‚Â°');
INSERT INTO `unidades` VALUES ('N18', 'Pulgada de agua (39.2 Ã‚Â°f)', 'Unidad de presiÃƒÂ³n no conforme al sistema internacional sino de acuerdo con el sistema Anglo-Americano e Imperial para unidades, mientras que el valor de 1 inH2O satisface la presiÃƒÂ³n estÃƒÂ¡tica, que es generada por una cabeza de agua a una temperatu');
INSERT INTO `unidades` VALUES ('N19', 'Pulgada de agua (60 Ã‚Â°f)', 'Unidad de presiÃƒÂ³n no conforme al sistema internacional sino segÃƒÂºn al sistema Anglo-Americano e Imperial para unidades, mientras que el valor de 1 inH2O satisface la presiÃƒÂ³n estÃƒÂ¡tica, que es generada por una cabeza de agua a una temperatura de ');
INSERT INTO `unidades` VALUES ('N2', 'nÃƒÂºmero de lÃƒÂ­neas', NULL);
INSERT INTO `unidades` VALUES ('N20', 'Kip por pulgada cuadrada', 'Unidad de presiÃƒÂ³n no conforme al sistema internacional de unidades sino de acuerdo con el sistema Anglo-Americano de unidades como el 1000 veces de la unidad de fuerza de libra fuerza dividida por la potencia de la unidad de pulgada por el exponente 2.');
INSERT INTO `unidades` VALUES ('N21', 'Poundal por pie cuadrado', 'Unidad de presiÃƒÂ³n no conforme al sistema internacional segÃƒÂºn el sistema Imperial de unidades segÃƒÂºn NIST: 1 pdl / ftÃ‚Â² = 1,488 164 Pa.');
INSERT INTO `unidades` VALUES ('N22', 'Onza (avoirdupois) por pulgada cuadrada', 'Unidad de la masa especÃƒÂ­fica de la superficie (onza de avoirdupois segÃƒÂºn el sistema del avoirdupois de unidades segÃƒÂºn la superficie pulgada cuadrada segÃƒÂºn el sistema Anglo-Americano e imperial de unidades).');
INSERT INTO `unidades` VALUES ('N23', 'Metro convencional de agua', 'No es una unidad de presiÃƒÂ³n del sistema internacional, mientras que un valor de 1 mH2O es equivalente a la presiÃƒÂ³n estÃƒÂ¡tica, que es producida por una columna de agua de un metro de alto.');
INSERT INTO `unidades` VALUES ('N24', 'Gramo por milÃƒÂ­metro cuadrado', '0.001 veces el kilo de unidad de basedel sistema internacional dividido por el 0,000 001 veces de la potencia del medidor de unidad de base del sistema internacional por el exponente 2.');
INSERT INTO `unidades` VALUES ('N25', 'Libra por yarda cuadrada', 'Unidad para la masa relacionada con el ÃƒÂ¡rea como una unidad de la libra segÃƒÂºn el sistema de la unidad del avoirdupois dividido por la potencia del patio de la unidad segÃƒÂºn el sistema Anglo-Americano e imperial de unidades con el exponente 2.');
INSERT INTO `unidades` VALUES ('N26', 'Poundal por pulgada cuadrada', 'Unidad de presiÃƒÂ³n no conforme al sistema internacional sino segÃƒÂºn el sistema Imperial de unidades (poundal por pulgada cuadrada).');
INSERT INTO `unidades` VALUES ('N27', 'Pie a la cuarta potencia ', 'Potencia de la unidad pie, de acuerdo con el sistema Anglo-Americano e Imperial de unidades, elevado al exponente 4 de acuerdo con NIST: 1 ft4 = 8,630 975 m4.');
INSERT INTO `unidades` VALUES ('N28', 'DecÃƒÂ­metro cÃƒÂºbico por kilogramo', '0.001 veces de metro, unidad base  del sistema internacional elevado al exponente 3 dividido por el kilogramo.');
INSERT INTO `unidades` VALUES ('N29', 'Pie cÃƒÂºbico por libra ', 'Potencia del pie, unidad de acuerdo con el sistema de unidades Anglo-Americanas e Imperial elevado al exponente 3 dividido por la libra de la unidad avoirdupois segÃƒÂºn el sistema unitario avoirdupois.');
INSERT INTO `unidades` VALUES ('N30', 'ImpresiÃƒÂ³n de punto', NULL);
INSERT INTO `unidades` VALUES ('N30', 'Pulgada cÃƒÂºbica por libra', 'Potencia de la unidad pulgada segÃƒÂºn el sistema Anglo-Americano e Imperial de unidades elevado al exponente 3 dividido por la libra avoirdupois segÃƒÂºn el sistema unitario avoirdupois.');
INSERT INTO `unidades` VALUES ('N31', 'Kilonewton por metro', '1000 veces de la unidad derivada newton dividido por el metro, ambas unidades del sistema internacional.');
INSERT INTO `unidades` VALUES ('N32', 'Poundal por pulgada', 'Unidad de tensiÃƒÂ³n superficial de acuerdo con el sistema de unidad Imperial como cociente de poundal por pulgada.');
INSERT INTO `unidades` VALUES ('N33', 'Libra-fuerza por yarda', 'Unidad de fuerza por unidad de longitud basado en el sistema Anglo-Americano de unidades.');
INSERT INTO `unidades` VALUES ('N34', 'Poundal segundo por pie cuadrado', 'Unidad de viscosidad no conforme al sistema internacional.');
INSERT INTO `unidades` VALUES ('N35', 'Poise por pascal', 'CGS (CentÃƒÂ­metro-Gramo-Segundo sistema) unidad poise dividido por la unidad derivada del sistema internacional, pascal.');
INSERT INTO `unidades` VALUES ('N36', 'Newton segundo por metro cuadrado', 'Unidad de la viscosidad dinÃƒÂ¡mica como un producto de la unidad de la presiÃƒÂ³n (newton por metro cuadrado) multiplicado con la unidad de base SI segundo.');
INSERT INTO `unidades` VALUES ('N37', 'Kilogramo por metro segundo', 'Unidad de la viscosidad dinÃƒÂ¡mica como un cociente de la unidad kilogramo del sistema internacional entre la unidad metro y por segundo del sistema internacional de unidades.');
INSERT INTO `unidades` VALUES ('N38', 'Kilogramo por metro minuto', 'Unidad de la viscosidad dinÃƒÂ¡mica como un cociente de la unidad kilogramo del sistema internacional entre la unidad metro y por minuto del sistema internacional de unidades.');
INSERT INTO `unidades` VALUES ('N39', 'Kilogramo por metro dÃƒÂ­a', 'Unidad de la viscosidad dinÃƒÂ¡mica como un cociente de unidad base kilogramo dividido por la unidad base metro y por la unidad de dÃƒÂ­a, ambas del sistema internacional. ');
INSERT INTO `unidades` VALUES ('N40', 'Kilogramo por metro hora', 'Unidad de la viscosidad dinÃƒÂ¡mica como cociente de la unidad base kilogramo dividido por la unidad base metro y por unidad de hora, ambas del sistema internacional.');
INSERT INTO `unidades` VALUES ('N41', 'Gramo por centÃƒÂ­metro segundo', 'Unidad de la viscosidad dinÃƒÂ¡mica como un cociente del 0,001 veces de la unidad base kilogramo dividido por el 0,01 veces de la unidad base metro y la unidad base segundo, del sistema internacional de unidades.');
INSERT INTO `unidades` VALUES ('N42', 'Poundal segundo por pulgada cuadrada', 'Unidad de viscosidad dinÃƒÂ¡mica no conforme al sistema internacional sino segÃƒÂºn el sistema Imperial de unidades, como producto de la  unidad de presiÃƒÂ³n (poundal por pulgada cuadrada) multiplicada por la unidad base segundo, del sistema internaciona');
INSERT INTO `unidades` VALUES ('N43', 'Libra por pie minuto', 'Unidad de la viscosidad dinÃƒÂ¡mica segÃƒÂºn el sistema Anglo-Americano de unidades.');
INSERT INTO `unidades` VALUES ('N44', 'Libra por pie dÃƒÂ­a', 'Unidad de la viscosidad dinÃƒÂ¡mica segÃƒÂºn el sistema Anglo-Americano de unidades.');
INSERT INTO `unidades` VALUES ('N45', 'Metro cÃƒÂºbico por segundo pascal', 'Potencia de la unidad metro del sistema internacional por el exponente 3 dividido por el producto de la unidad base segundo y la unidad derivada pascal, ambas del sistema internacional de unidades.');
INSERT INTO `unidades` VALUES ('N46', 'Pie poundal', 'Unidad de trabajo (trayectoria de fuerza)');
INSERT INTO `unidades` VALUES ('N47', 'Pulgada poundal', 'Unidad de trabajo (fuerza multiplicado por trayectoria) de acuerdo con el sistema imperial de unidades como el producto de la unidad pulgada multiplicada por el poundal.');
INSERT INTO `unidades` VALUES ('N48', 'Watt por centÃƒÂ­metro cuadrado', 'Unidad derivada del sistema internacional, watt, dividido por la potencia de la 0.01 parte de la unidad base del sistema internacional, metro al exponente 2.');
INSERT INTO `unidades` VALUES ('N49', 'Watt por pulgada cuadrada', 'Unidad derivada del sistema internacional, watt, dividido por la potencia de la unidad pulgada al exponente 2, de acuerdo al sistema de unidades Anglo-Americano y el sistema imperial de unidades.');
INSERT INTO `unidades` VALUES ('N50', 'Unidad tÃƒÂ©rmica britÃƒÂ¡nica (tabla internacional) por pie cuadrado hora.', 'Unidad del flujo superficial de calor segÃƒÂºn el sistema Imperial de unidades.');
INSERT INTO `unidades` VALUES ('N51', 'Unidad tÃƒÂ©rmica britÃƒÂ¡nica (termoquÃƒÂ­mica) por pie cuadrado hora.', 'Unidad del flujo superficial de calor segÃƒÂºn el sistema Imperial de unidades.');
INSERT INTO `unidades` VALUES ('N52', 'Unidad tÃƒÂ©rmica britÃƒÂ¡nica (termoquÃƒÂ­mico) por pie cuadrado minuto.', 'Unidad del flujo superficial de calor segÃƒÂºn el sistema Imperial de unidades.');
INSERT INTO `unidades` VALUES ('N53', 'Unidad tÃƒÂ©rmica britÃƒÂ¡nica (tabla internacional) por pie cuadrado segundo.', 'Unidad del flujo superficial de calor segÃƒÂºn el sistema Imperial de unidades.');
INSERT INTO `unidades` VALUES ('N54', 'Unidad tÃƒÂ©rmica britÃƒÂ¡nica (termoquÃƒÂ­mica) por pie cuadrado segundo.', 'Unidad del flujo superficial de calor segÃƒÂºn el sistema Imperial de unidades.');
INSERT INTO `unidades` VALUES ('N55', 'Unidad tÃƒÂ©rmica britÃƒÂ¡nica (tabla internacional) por pulgada cuadrada segundo.', 'Unidad del flujo superficial de calor segÃƒÂºn el sistema Imperial de unidades.');
INSERT INTO `unidades` VALUES ('N56', 'CalorÃƒÂ­a (termoquÃƒÂ­mica) por centÃƒÂ­metro cuadrado minuto', 'Unidad del flujo superficial de calor segÃƒÂºn el sistema Imperial de unidades.');
INSERT INTO `unidades` VALUES ('N57', 'CalorÃƒÂ­a (termoquÃƒÂ­mica) por centÃƒÂ­metro cuadrado segundo', 'Unidad del flujo superficial de calor segÃƒÂºn el sistema Imperial de unidades.');
INSERT INTO `unidades` VALUES ('N58', 'Unidad tÃƒÂ©rmica britÃƒÂ¡nica (tabla internacional) por pie cÃƒÂºbico', 'Unidad de la densidad de energÃƒÂ­a segÃƒÂºn el sistema Imperial de unidades.');
INSERT INTO `unidades` VALUES ('N59', 'Unidad tÃƒÂ©rmica britÃƒÂ¡nica (termoquÃƒÂ­mica) por pie cÃƒÂºbico', 'Unidad de la densidad de energÃƒÂ­a segÃƒÂºn el sistema Imperial de unidades.');
INSERT INTO `unidades` VALUES ('N60', 'Unidad tÃƒÂ©rmica britÃƒÂ¡nica (tabla internacional) por grado fahrenheit', 'Unidad de la capacidad calorÃƒÂ­fica segÃƒÂºn el sistema Imperial de unidades.');
INSERT INTO `unidades` VALUES ('N61', 'Unidad tÃƒÂ©rmica britÃƒÂ¡nica (termoquÃƒÂ­mico) por grado fahrenheit', 'Unidad de la capacidad calorÃƒÂ­fica segÃƒÂºn el sistema Imperial de unidades.');
INSERT INTO `unidades` VALUES ('N62', 'Unidad tÃƒÂ©rmica britÃƒÂ¡nica (tabla internacional) por grado rankine', 'Unidad de la capacidad calorÃƒÂ­fica segÃƒÂºn el sistema Imperial de unidades.');
INSERT INTO `unidades` VALUES ('N63', 'Unidad tÃƒÂ©rmica britÃƒÂ¡nica (termoquÃƒÂ­mico) por grado rankine', 'Unidad de la capacidad calorÃƒÂ­fica segÃƒÂºn el sistema Imperial de unidades.');
INSERT INTO `unidades` VALUES ('N64', 'Unidad tÃƒÂ©rmica britÃƒÂ¡nica (termoquÃƒÂ­mico) por libra grado rankine', 'Unidad de la capacidad calorÃƒÂ­fica (unidad tÃƒÂ©rmica britÃƒÂ¡nica segÃƒÂºn la tabla internacional segÃƒÂºn el grado de Rankine) de acuerdo con el sistema Imperial de unidades dividido por la unidad avoirdupois libra segÃƒÂºn el sistema de avoirdupois d');
INSERT INTO `unidades` VALUES ('N65', 'KilocalorÃƒÂ­a (tabla internacional) por gramo kelvin', 'Unidad de la capacidad calorÃƒÂ­fica relacionada con la masa como cociente 1000 veces de la calorÃƒÂ­a (tabla internacional) dividido por el producto de 0,001 veces de las unidades de base kilogramo y kelvin.');
INSERT INTO `unidades` VALUES ('N66', 'Unidad tÃƒÂ©rmica britÃƒÂ¡nica (39 Ã‚Â°f)', 'Unidad de energÃƒÂ­a tÃƒÂ©rmica segÃƒÂºn el sistema Imperial de unidades en una temperatura de referencia de 39 Ã‚Â° F.');
INSERT INTO `unidades` VALUES ('N67', 'Unidad tÃƒÂ©rmica britÃƒÂ¡nica (59 Ã‚Â°f)', 'Unidad de energÃƒÂ­a tÃƒÂ©rmica segÃƒÂºn el sistema Imperial de unidades en una temperatura de referencia de 59 Ã‚Â° F.');
INSERT INTO `unidades` VALUES ('N68', 'Unidad tÃƒÂ©rmica britÃƒÂ¡nica (60 Ã‚Â°f)', 'Unidad de energÃƒÂ­a tÃƒÂ©rmica segÃƒÂºn el sistema Imperial de unidades en una temperatura de referencia de 60 Ã‚Â° F.');
INSERT INTO `unidades` VALUES ('N69', 'CalorÃƒÂ­a (20 Ã‚Â°c)', 'Unidad para la cantidad de calor, que se requiere para que 1g de agua libre de aire a una presiÃƒÂ³n constante de 101.325 kPa, se caliente a la presiÃƒÂ³n de la atmÃƒÂ³sfera estÃƒÂ¡ndar a nivel del mar, de 19,5 Ã‚Â° C a 20,5 Ã‚Â° C.');
INSERT INTO `unidades` VALUES ('N70', 'Quad', 'Unidad de energÃƒÂ­a de acuerdo al sistema imperial de unidades');
INSERT INTO `unidades` VALUES ('N71', 'Termia (energÃƒÂ­a comercial)', 'Unidad de energÃƒÂ­a calorÃƒÂ­fica en uso comercial, dentro de Estados Unidos definida como: 1 thm (EC) = 100 000 BtuIT.');
INSERT INTO `unidades` VALUES ('N72', 'Termia (UEA)', 'Unidad de energÃƒÂ­a tÃƒÂ©rmica en uso comercial.');
INSERT INTO `unidades` VALUES ('N73', 'Unidad tÃƒÂ©rmica britÃƒÂ¡nica (termoquÃƒÂ­mica) por libra', 'Unidad de la energÃƒÂ­a calorÃƒÂ­fica segÃƒÂºn el sistema imperial de unidades dividiÃƒÂ³ por la unidad de la libra de avoirdupois segÃƒÂºn el sistema de avoirdupois de unidades.');
INSERT INTO `unidades` VALUES ('N74', 'Unidad tÃƒÂ©rmica britÃƒÂ¡nica (tabla internacional) por hora pie cuadrado grado fahrenheit.', 'Unidad del coeficiente de transiciÃƒÂ³n tÃƒÂ©rmica segÃƒÂºn el sistema Imperial de unidades.');
INSERT INTO `unidades` VALUES ('N75', 'Unidad tÃƒÂ©rmica britÃƒÂ¡nica (termoquÃƒÂ­mico) por hora pie cuadrado grado farenheit.', 'Unidad del coeficiente de transiciÃƒÂ³n tÃƒÂ©rmica segÃƒÂºn el sistema imperial de unidades.');
INSERT INTO `unidades` VALUES ('N76', 'Unidad tÃƒÂ©rmica britÃƒÂ¡nica (tabla internacional) por segundo pie cuadrado grado fahrenheit.', 'Unidad del coeficiente de transiciÃƒÂ³n tÃƒÂ©rmica segÃƒÂºn el sistema imperial de unidades.');
INSERT INTO `unidades` VALUES ('N77', 'Unidad tÃƒÂ©rmica britÃƒÂ¡nica (termoquÃƒÂ­mico) por segundo pie cuadrado grado fahrenheit.', 'Unidad del coeficiente de transiciÃƒÂ³n tÃƒÂ©rmica segÃƒÂºn el sistema imperial de unidades.');
INSERT INTO `unidades` VALUES ('N78', 'Kilowatt por metro cuadrado kelvin', '1000 veces la unidad derivada watt, dividida por el producto de la potencia de unidad base, metro, por el exponente 2 y la unidad base, kelvin, del sistema internacional de unidades.');
INSERT INTO `unidades` VALUES ('N79', 'Kelvin por pascal', 'Unidad base del sistema internacional kelvin, dividido entre pascal, unidad base del sistema internacional');
INSERT INTO `unidades` VALUES ('N80', 'Watt por metro grado celsius', 'Unidad derivada del sistema internacional, watt, dividido por el producto de la unidad base, metro, y la unidad de temperatura grados Celsius.');
INSERT INTO `unidades` VALUES ('N81', 'Kilowatt por metro kelvin', '1000 veces de la unidad derivada, watt, dividido por el producto de la unidad de base metro y la unidad base kelvin, ambas del sistema internacional.');
INSERT INTO `unidades` VALUES ('N82', 'Kilowatt por metro grado celsius', '1000 veces de la unidad derivada, watt, dividido por el producto de la unidad base metro y la unidad de temperatura grados Celsius.');
INSERT INTO `unidades` VALUES ('N83', 'Metro por grado celsius metro', NULL);
INSERT INTO `unidades` VALUES ('N84', 'Grado fahrenheit hora por unidad tÃƒÂ©rmica britÃƒÂ¡nica (tabla internacional)', 'Unidad no conforme al sistema internacional de unidades,de la resistencia tÃƒÂ©rmica segÃƒÂºn el sistema Imperial de unidades.');
INSERT INTO `unidades` VALUES ('N85', 'Grado fahrenheit hora por unidad tÃƒÂ©rmica britÃƒÂ¡nica (termoquÃƒÂ­mico)', 'Unidad no conforme al sistema internacional de unidades,de la resistencia tÃƒÂ©rmica segÃƒÂºn el sistema Imperial de unidades.');
INSERT INTO `unidades` VALUES ('N86', 'Grado fahrenheit segundo por unidad tÃƒÂ©rmica britÃƒÂ¡nica (tabla internacional)', 'Unidad no conforme al sistema internacional de unidades,de la resistencia tÃƒÂ©rmica segÃƒÂºn el sistema Imperial de unidades.');
INSERT INTO `unidades` VALUES ('N87', 'Grago fahrenheit segundo por unidad tÃƒÂ©rmica britÃƒÂ¡nica (termoquÃƒÂ­mico)', 'Unidad no conforme al sistema internacional de unidades,de la resistencia tÃƒÂ©rmica segÃƒÂºn el sistema Imperial de unidades.');
INSERT INTO `unidades` VALUES ('N88', 'Grado fahrenheit hora pie cuadrado por unidad tÃƒÂ©rmica britÃƒÂ¡nica (tabla internacional) pulgada', 'Unidad de resistencia tÃƒÂ©rmica especÃƒÂ­fica segÃƒÂºn el sistema Imperial de unidades');
INSERT INTO `unidades` VALUES ('N89', 'Grado fahrenheit hora pie cuadrado por unidad tÃƒÂ©rmica britÃƒÂ¡nica (termoquÃƒÂ­mico) pulgada.', 'Unidad de resistencia tÃƒÂ©rmica especÃƒÂ­fica segÃƒÂºn el sistema Imperial de unidades');
INSERT INTO `unidades` VALUES ('N90', 'Kilofaradio', '1000 veces del faradio, unidad derivada del sistema internacional');
INSERT INTO `unidades` VALUES ('N91', 'Joule recÃƒÂ­proco', NULL);
INSERT INTO `unidades` VALUES ('N92', 'Picosiemens', '0.000 000 000 001 veces de la unidad derivada  siemens del sistema internacional de unidades.');
INSERT INTO `unidades` VALUES ('N93', 'Amperio por pascal', 'Unidad base amperio dividido por la unidad derivada pascal.');
INSERT INTO `unidades` VALUES ('N94', 'Franklin', 'CGS (CentÃƒÂ­metro-Gram-Segundo sistema) unidad de la carga elÃƒÂ©ctrica, donde la carga asciende exactamente a 1 franklin donde la fuerza de 1 dina sobre una carga igual se realiza a una distancia de 1 cm.');
INSERT INTO `unidades` VALUES ('N95', 'Amperio minuto', 'Unidad de carga elÃƒÂ©ctrica que define la cantidad de carga acumulada por un flujo constante de un amperio por un minuto.');
INSERT INTO `unidades` VALUES ('N96', 'Biot', 'El nÃƒÂºmero de Biot (Bi) es un nÃƒÂºmero adimensional utilizado en cÃƒÂ¡lculos de transmisiÃƒÂ³n de calor. Su nombre hace honor al fÃƒÂ­sico francÃƒÂ©s Jean Baptiste Biot (1774-1862) y relaciona la transferencia de calor por conducciÃƒÂ³n dentro de un cu');
INSERT INTO `unidades` VALUES ('N97', 'Gilbert', 'CGS (CentÃƒÂ­metro-Gram-Segundo sistema) unidad de la fuerza magnetomotriz, que se define por el trabajo para aumentar el potencial magnÃƒÂ©tico de un polo comÃƒÂºn positivo con 1 erg.');
INSERT INTO `unidades` VALUES ('N98', 'Voltio por pascal', 'Unidad derivada del sistema internacional, voltio, dividido entre la unidad derivada del sistema internacional, pascal.');
INSERT INTO `unidades` VALUES ('N99', 'Picovoltio', '0.000 000 000 001 veces de la unidad derivada del sistema internacional, voltio.');
INSERT INTO `unidades` VALUES ('NA', 'Miligramo por kilogramo', NULL);
INSERT INTO `unidades` VALUES ('NAR', 'NÃƒÂºmero de artÃƒÂ­culos', 'Unidad de conteo que define el nÃƒÂºmero de artÃƒÂ­culos ');
INSERT INTO `unidades` VALUES ('NB', 'barcaza', NULL);
INSERT INTO `unidades` VALUES ('NBB', 'NÃƒÂºmero de bobinas', NULL);
INSERT INTO `unidades` VALUES ('NC', 'Carro', NULL);
INSERT INTO `unidades` VALUES ('NCL', 'NÃƒÂºmero de celulas', 'Unidad de conteo que define el nÃƒÂºmero de cÃƒÂ©lulas (cÃƒÂ©lula: un espacio cerrado o circunscrito, cavidad o volumen)');
INSERT INTO `unidades` VALUES ('ND', 'Barril neto', NULL);
INSERT INTO `unidades` VALUES ('NE', 'Litro neto', NULL);
INSERT INTO `unidades` VALUES ('NEW', 'Newton', NULL);
INSERT INTO `unidades` VALUES ('NF', 'Mensaje', 'Unidad de conteo que define el nÃƒÂºmero de mensajes');
INSERT INTO `unidades` VALUES ('NG', 'GalÃƒÂ³n neto (us)', NULL);
INSERT INTO `unidades` VALUES ('NH', 'Hora del mensaje', NULL);
INSERT INTO `unidades` VALUES ('NI', 'GalÃƒÂ³n imperial neto', NULL);
INSERT INTO `unidades` VALUES ('NIL', 'Nil', 'Unidad de conteo que define el nÃƒÂºmero de instancias de nada');
INSERT INTO `unidades` VALUES ('NIU', 'NÃƒÂºmero de unidades internacionales', 'Unidad de conteo que define el nÃƒÂºmero de unidades internacionales');
INSERT INTO `unidades` VALUES ('NJ', 'NÃƒÂºmero de pantallas', NULL);
INSERT INTO `unidades` VALUES ('NL', 'Carga', 'Unidad de volumen que define el nÃƒÂºmero de cargas(carga: cantidad de artÃƒÂ­culos transportados o procesados al mismo tiempo)');
INSERT INTO `unidades` VALUES ('NM3', 'Metro cÃƒÂºbico normalizado', 'Metros cÃƒÂºbicos normalizados (temperatura 0 Ã‚Â° C y presiÃƒÂ³n 101325 milibares)');
INSERT INTO `unidades` VALUES ('NMI', 'Milla nÃƒÂ¡utica', 'Es una unidad de longitud empleada en navegaciÃƒÂ³n marÃƒÂ­tima y aÃƒÂ©rea.');
INSERT INTO `unidades` VALUES ('NMP', 'NÃƒÂºmero de paquetes', 'Unidad que define el nÃƒÂºmero de paquetes (paquetes: colecciÃƒÂ³n de objetos empaquetados)');
INSERT INTO `unidades` VALUES ('NN', 'tren', NULL);
INSERT INTO `unidades` VALUES ('NPR', 'NÃƒÂºmero de parejas', 'Una unidad de cuenta que define el nÃƒÂºmero de pares (par: elemento descrito por dos).');
INSERT INTO `unidades` VALUES ('NPT', 'NÃƒÂºmero de partes', 'Unidad de conteo que define el nÃƒÂºmero de partes (partes: componente de larga entidad)');
INSERT INTO `unidades` VALUES ('NQ', 'Mho', NULL);
INSERT INTO `unidades` VALUES ('NR', 'Micromho', NULL);
INSERT INTO `unidades` VALUES ('NT', 'Tonelada neta', 'Unidad de masa equivalente a 2000 libras, ver (US). Convencion Internacional referencia sobre el arqueo de los busques');
INSERT INTO `unidades` VALUES ('NTT', 'Tonelada de registro neto', 'Una unidad de masa igual al total de las imÃƒÂ¡genes cÃƒÂºbicas despuÃƒÂ©s de las deducciones, donde 1 registro t es igual a 100 pies cÃƒÂºbicos.Ã‚Â VÃƒÂ©ase el Convenio internacional sobre el arqueo de los buques.');
INSERT INTO `unidades` VALUES ('NV', 'vehÃƒÂ­culo', NULL);
INSERT INTO `unidades` VALUES ('NV', 'Libra por tonelada mÃƒÂ©trica al aire seco', NULL);
INSERT INTO `unidades` VALUES ('NX', 'Parte por mil', 'Unidad de proporcion igual a 10 SÃƒÂ­nonimo: por milla');
INSERT INTO `unidades` VALUES ('OA', 'Panel', 'Unidade de conteo que define el n[umero de paneles ');
INSERT INTO `unidades` VALUES ('ODE', 'Equvalente de agotamiento del ozona', 'Unidad de masa que define el potencial de agotamiento del ozono en kilogramos de un producto en relaciÃƒÂ³n con el agotamiento calculado para la sustancia de referencia Triclorofluorometano (CFC-11).');
INSERT INTO `unidades` VALUES ('Ohm', 'Ohm', 'es la resistencia elÃƒÂ©ctrica que existe entre dos puntos de un conductor cuando una diferencia de potencial constante de 1 volt aplicada entre estos dos puntos produce, en dicho conductor, una corriente de intensidad 1 amperio, cuando no haya fuerza ele');
INSERT INTO `unidades` VALUES ('ON', 'Onza por yarda cuadrada', NULL);
INSERT INTO `unidades` VALUES ('ONZ', 'Onza (avoirdupois)', 'Es una unidad de masa usada desde la Antigua Roma para pesar con mayor precisiÃƒÂ³n las mercancÃƒÂ­as y otros artÃƒÂ­culos, especialmente si su peso era menor que una libra romana');
INSERT INTO `unidades` VALUES ('OP', 'Dos paquetes', NULL);
INSERT INTO `unidades` VALUES ('OPM', 'Oscilaciones por minuto', 'nÃƒÂºmero de variaciones, perturbaciones o fluctuaciÃƒÂ³n en el tiempo de un medio o sistema');
INSERT INTO `unidades` VALUES ('OT', 'Hora extra', 'Unidad de tiempo que define el n[umero de horas extras');
INSERT INTO `unidades` VALUES ('OZ', 'Onza AV', 'Una unidad de medida igual a 1/16 de una libra o aproximadamente 28.3495 gramos (av = avoirdupois).Ã‚Â Use onza (cÃƒÂ³digo comÃƒÂºn ONZ).');
INSERT INTO `unidades` VALUES ('OZA', 'Onza lÃƒÂ­quida (estados unidos)', NULL);
INSERT INTO `unidades` VALUES ('OZI', 'Onza lÃƒÂ­quida (UK)', NULL);
INSERT INTO `unidades` VALUES ('P0', 'PÃƒÂ¡gina electrÃƒÂ³nica', NULL);
INSERT INTO `unidades` VALUES ('P1', 'Tanto por ciento', 'Unidad de proporcion equivalente a 0.01');
INSERT INTO `unidades` VALUES ('P10', 'Culombio por metro', 'Unidad derivada, coulomb dividida por la unidad base, metro.');
INSERT INTO `unidades` VALUES ('P11', 'Kiloweber', '1000 veces la unidad derivada weber, del sistema internacional de unidades.');
INSERT INTO `unidades` VALUES ('P12', 'Gamma', 'Unidad de densidad de flujo magnÃƒÂ©tico.');
INSERT INTO `unidades` VALUES ('P13', 'Kilotesla', '1000 veces la unidad derivada tesla.');
INSERT INTO `unidades` VALUES ('P14', 'Joule por segundo', 'Cociente de la unidad derivada joule dividido entre la unidad base, segundo, ambas del sistema internacional.');
INSERT INTO `unidades` VALUES ('P15', 'Joule por minuto', 'Cociente de la unidad derivada, joule, dividido entre la unidad minuto.');
INSERT INTO `unidades` VALUES ('P16', 'Joule por hora', 'Cociente de la unidad derivada, joule, dividido entre la unidad hora.');
INSERT INTO `unidades` VALUES ('P17', 'Joule por dÃƒÂ­a', 'Cociente de la unidad derivada, joule, dividido entre la unidad dÃƒÂ­a.');
INSERT INTO `unidades` VALUES ('P18', 'Kilojoule por segundo', 'Cociente entre 1000 veces de la unida derivada, joule, dividido por la unidad base segundo.');
INSERT INTO `unidades` VALUES ('P19', 'Kilojoule por minuto', 'Cociente entre 1000 veces de la unida derivada, joule, dividido por la unidad minuto.');
INSERT INTO `unidades` VALUES ('P2', 'Libra por pie', NULL);
INSERT INTO `unidades` VALUES ('P20', 'Kilojoule por hora', 'Cociente entre 1000 veces de la unida derivada, joule, dividido por la unidad hora.');
INSERT INTO `unidades` VALUES ('P21', 'Kilojoule por dia', 'Cociente entre 1000 veces de la unida derivada, joule, dividido por la unidad dÃƒÂ­a');
INSERT INTO `unidades` VALUES ('P22', 'NanoOhm', '0.000 000 001 veces de la unidad derivada Ohm.');
INSERT INTO `unidades` VALUES ('P23', 'Ohm circular-mil por pie', 'Unidad de resistividad.');
INSERT INTO `unidades` VALUES ('P24', 'Kilohenry', '1000 veces la unidad derivada, henry del sistema internacional.');
INSERT INTO `unidades` VALUES ('P25', 'Lumen por pie cuadrado', 'Unidad derivada, lumen dividido por la potencia de la unidad pie, al exponente 2, de acuerdo con el sistema anglo-americano y el sistema imperial.');
INSERT INTO `unidades` VALUES ('P26', 'Foto', 'es una unidad de iluminancia  o flujo luminoso a travÃƒÂ©s de un ÃƒÂ¡rea. No es una unidad del sistema internacional, sino que se asocia con el antiguo segundo sistema centÃƒÂ­metro gramo de unidades .');
INSERT INTO `unidades` VALUES ('P27', 'Vela (medida)', 'Es una unidad de medida de iluminancia que no pertenece al Sistema Internacional de Unidades, pero es ampliamente usada en Estados Unidos para fotografÃƒÂ­a, cine, televisiÃƒÂ³n, conservaciÃƒÂ³n luminosa, ingenierÃƒÂ­a de la construcciÃƒÂ³n, etc. Una vela');
INSERT INTO `unidades` VALUES ('P28', 'Candela por pulgada cuadrada', 'Unidad base, candela dividido por la potencia de la unidad de pulgada al exponente 2 de acuerdo con el sistema de unidades Anglo-Americanas e Imperial.');
INSERT INTO `unidades` VALUES ('P29', 'Footlambert', 'Unidad de luminancia de acuerdo con el sistema Anglo-Americano de unidades, y se define como la luminancia emitida o reflejada de un lumen por pie cuadrado.');
INSERT INTO `unidades` VALUES ('P3', 'Tres paquetes', NULL);
INSERT INTO `unidades` VALUES ('P30', 'Lambert', 'Unidad de luminancia CGS (CentÃƒÂ­metro-Gram-Segundo sistema), definida como la luminancia emitida o reflejada de un lumen por centÃƒÂ­metro cuadrado.');
INSERT INTO `unidades` VALUES ('P31', 'Stilb ', 'Unidad de luminancia CGS (CentÃƒÂ­metro-Gram-Segundo sistema), definida como la luminancia emitida o reflejada de un lumen por centÃƒÂ­metro cuadrado.');
INSERT INTO `unidades` VALUES ('P32', 'Candela por pie cuadrado', 'Unidad base, candela dividido por la potencia de la unidad pie al exponente 2 , de acuerdo con el sistema anglo-americano y el sistema imperial de unidades ');
INSERT INTO `unidades` VALUES ('P33', 'Kilocandela', '1000 veces la unidad base, candela, del sistema internacional.');
INSERT INTO `unidades` VALUES ('P34', 'Milicandela', '0.001 veces la unidad base , candela, del sistema internacional.');
INSERT INTO `unidades` VALUES ('P35', 'Hefner-kerze', 'Obsoleto, unidad de potencia en Alemania relacionado con DIN 1301-3:1979: 1 HK = 0,903 candela.');
INSERT INTO `unidades` VALUES ('P36', 'Candela internacional', 'Unidad obsoleta de la potencia en Alemania relativa a DIN 1301-3: 1979: 1 HK = 1.019 candela.');
INSERT INTO `unidades` VALUES ('P37', 'Unidad tÃƒÂ©rmica britÃƒÂ¡nica (tabla internacional) por pie cuadrado', 'Unidad de la transmisiÃƒÂ³n de energÃƒÂ­a relacionado de muestreo de ÃƒÂ¡reas de acuerdo con el sistema imperial de unidades.');
INSERT INTO `unidades` VALUES ('P38', 'Unidad tÃƒÂ©rmica britÃƒÂ¡nica (termoquÃƒÂ­mica) por pie cuadrado', 'Unidad de la transmisiÃƒÂ³n de energÃƒÂ­a relacionado de muestreo de ÃƒÂ¡reas de acuerdo con el sistema imperial de unidades.');
INSERT INTO `unidades` VALUES ('P39', 'CalorÃƒÂ­a (termoquÃƒÂ­mica) por centÃƒÂ­metro cuadrado', 'Unidad de la transmisiÃƒÂ³n de energÃƒÂ­a relacionado de muestreo de ÃƒÂ¡reas de acuerdo con el sistema imperial de unidades.');
INSERT INTO `unidades` VALUES ('P4', 'paquete de cuatro', NULL);
INSERT INTO `unidades` VALUES ('P40', 'Langley', 'CGS (CentÃƒÂ­metro-Gramo-Segundo sistema) unidad de la transmisiÃƒÂ³n de energÃƒÂ­a relacionada con el ÃƒÂ¡rea (como una medida de la cantidad incidente de calor de la radiaciÃƒÂ³n solar en la superficie de la tierra).');
INSERT INTO `unidades` VALUES ('P41', 'DÃƒÂ©cada (logaritmica)', 'Una escala logarÃƒÂ­tmica es una escala de medida que utiliza el logaritmo de una cantidad fÃƒÂ­sica en lugar de la propia cantidad.');
INSERT INTO `unidades` VALUES ('P42', 'Pascal por segundo cuadrado', 'Unidad del conjunto como un producto de la potencia de derivado unidad pascal SI con exponente 2 y la unidad base segunda SI.');
INSERT INTO `unidades` VALUES ('P43', 'Bel por metro', 'Una unidad Bel dividida por la unidad bÃƒÂ¡sica del sistema internacional (metros).');
INSERT INTO `unidades` VALUES ('P44', 'Libra Mol', 'Unidad que no forma parte del sistema internacional, cantidad de una sustancia relacionada que un mol libra de una composiciÃƒÂ³n quÃƒÂ­mica corresponde a la misma cantidad de libras como el peso molcular de una molÃƒÂ©cula de esta composiciÃƒÂ³n en unida');
INSERT INTO `unidades` VALUES ('P45', 'Libra de Mol por segundo', 'No forma parte del sistema internacional de unidades.\r\nUnidad de flujo del flujo molar que se refiere a que una libra mol de una composiciÃƒÂ³n quÃƒÂ­mica el mismo nÃƒÂºmero de libras corresponde con el peso molcular de una molÃƒÂ©cula de esta composiciÃƒ');
INSERT INTO `unidades` VALUES ('P46', 'Libra Mol por minuto', 'No forma parte del sistema internacional de unidades.\r\nUnidad de flujo del flujo molar que se refiere a que una libra mol de una composiciÃƒÂ³n quÃƒÂ­mica el mismo nÃƒÂºmero de libras corresponde como el peso molcular de una molÃƒÂ©cula de esta composiciÃ');
INSERT INTO `unidades` VALUES ('P47', 'KiloMol por kilogramo', '1000 veces la divisiÃƒÂ³n de la unidad base mol por la base de la unidad kilogramo.');
INSERT INTO `unidades` VALUES ('P48', 'Libra de Mol por libra', 'Unidad del flujo molar material dividido por la libra avoirdupois para la masa de acuerdo con el sistema de unidades avoirdupois no SI-conforme.');
INSERT INTO `unidades` VALUES ('P49', 'Newton metro cuadrado por amperio', 'Producto de la division de la unidad Newton y la unidad base metro \r\nProducto de la unidad derivada newton y la potencia del medidor de la unidad base con el exponente 2 dividido por el amperio de la unidad base.');
INSERT INTO `unidades` VALUES ('P5', 'Paquete de cinco', 'Unidad de conteo que define el nÃƒÂºmero de paquetes-cinco (paquete-cinco: set de cinco artÃƒÂ­culos empaquetados siempre)');
INSERT INTO `unidades` VALUES ('P50', 'Metro weber', 'Producto de la divisiÃƒÂ³n entre  la unidad Weber y la unidad Metro.');
INSERT INTO `unidades` VALUES ('P51', 'Mol por kilogramo pascal ', 'Unidad base mol dividido por el producto de la unidad base SI kilogramo y la unidad derivada pascal SI. ');
INSERT INTO `unidades` VALUES ('P52', 'Mol por metro cÃƒÂºbico pascal', 'unidad base mol dividido por el producto de la potencia de la unidad base SI metros con exponente 3 y la unidad derivada pascal SI.');
INSERT INTO `unidades` VALUES ('P53', 'Unit por segundo', 'Sistema CGS (CentÃƒÂ­metro-Gram-Segundo sistema) para el flujo magnÃƒÂ©tico de un polo magnÃƒÂ©tico (segÃƒÂºn la interacciÃƒÂ³n de polos idÃƒÂ©nticos de 1 din a una distancia de un cm).');
INSERT INTO `unidades` VALUES ('P54', 'MiliGray por segundo', '0.0001 veces de la unidad derivada Gray dividido por la unidad de base segundos.');
INSERT INTO `unidades` VALUES ('P55', 'MicroGray por segundo', '0.000 001 veces de la unidad derivada Gray dividido por la unidad de base segundos.');
INSERT INTO `unidades` VALUES ('P56', 'NanoGray por segundo', '0.000 000 001 veces de la unidad derivada Gray dividido por la unidad de base segundos.');
INSERT INTO `unidades` VALUES ('P57', 'Gray por minuto', 'Derivada del la unidad Gray dividida por la unidad minutos.');
INSERT INTO `unidades` VALUES ('P58', 'MiliGray por minuto', '0.001 veces de la unidad derivada de Gray dividida por la unidad de minutos.');
INSERT INTO `unidades` VALUES ('P59', 'Microgray por minuto', '0.000 001 veces de la unidad derivada gris SI dividido por la unidad de minutos.');
INSERT INTO `unidades` VALUES ('P6', 'paquete de seis', NULL);
INSERT INTO `unidades` VALUES ('P60', 'Nanogray por minuto', '0.000 000 001 veces de la unidad derivada gris SI dividido por la unidad de minutos.');
INSERT INTO `unidades` VALUES ('P61', 'Gray por hora', 'Derivada de la unidad Gray por la derivada de la unidad hora.');
INSERT INTO `unidades` VALUES ('P62', 'MiliGray por hora', '0.001 veces de la unidad derivada Gray por la unidad hora');
INSERT INTO `unidades` VALUES ('P63', 'Micro gray por hora', '0.000 001 veces de la unidad derivada gris SI dividida por la hora unidad.');
INSERT INTO `unidades` VALUES ('P64', 'Nanogray por hora', '0.000 000 001 veces de la unidad derivada gris SI dividida por la hora unidad.');
INSERT INTO `unidades` VALUES ('P65', 'Sievert por segundo', 'Derivada de la unidad Sievert dividida por la unidad de base segundos.');
INSERT INTO `unidades` VALUES ('P66', 'MilliSievert por segundo', '0.001 veces de la unidad derivada Sievert dividida por la unidad de base segundos.');
INSERT INTO `unidades` VALUES ('P67', 'MicroSievert por segundo', '0.000 001 veces de la unidad derivada Sievert dividido por la unidad de base segundos.');
INSERT INTO `unidades` VALUES ('P68', 'NanoSievert por segundo', '0.000 000 001 veces de la unidad derivada Sievert dividido por la unidad de base segundos.');
INSERT INTO `unidades` VALUES ('P69', 'Rem por segundo', 'Unidad para la tasa de estaÃƒÂ±o equivalente y relativa a DIN 1301-3: 1979: 1 rem / s = 0,01 J / (kg Ã‚Â· s) = 1 Sv / s.');
INSERT INTO `unidades` VALUES ('P7', 'Paquete de siete', NULL);
INSERT INTO `unidades` VALUES ('P70', 'Sievert por hora', 'Derivado unidad Sievert dividida por la hora unidad.');
INSERT INTO `unidades` VALUES ('P71', 'MilliSievert por hora', '0.001 veces de la unidad derivada Sievert SI dividida por la unidad hora.');
INSERT INTO `unidades` VALUES ('P72', 'Micro Sievert por hora', '0.000 001 veces de la unidad derivada Sievert dividida por la unidad hora.');
INSERT INTO `unidades` VALUES ('P73', 'NanoSievert por hora', '0.000 000 001 veces de la unidad derivada Sievert dividida por la unidad hora.');
INSERT INTO `unidades` VALUES ('P74', 'Sievert por minuto', 'Derivado unidad Sievert dividido por la unidad minuto.');
INSERT INTO `unidades` VALUES ('P75', 'MilliSievert por minuto', '0.001 veces de la unidad derivada Sievert dividido por la unidad de minutos.');
INSERT INTO `unidades` VALUES ('P76', 'MicroSievert por minuto', '0.000 001 veces de la unidad derivada Sievert dividido por la unidad de minutos.');
INSERT INTO `unidades` VALUES ('P77', 'NanoSievert pominut ', '0.000 000 001 veces de la unidad derivada Sievert dividido por la unidad de minutos.');
INSERT INTO `unidades` VALUES ('P78', 'Reciprocidad por segundo', 'Complemento de la potencia de la unidad pulgada segÃƒÂºn el sistema Anglo-Americano e Imperial de unidades por exponente 2.');
INSERT INTO `unidades` VALUES ('P79', 'Pascal metro cuadrado por kilogramo', ' Unidad del ÃƒÂ­ndice de estallido como unidad derivada para pascal presiÃƒÂ³n relacionada con la sustancia, representado como cociente de la unidad base SI kilogramo dividida por la potencia de la unidad base SI metros por exponente 2.');
INSERT INTO `unidades` VALUES ('P8', 'Paquete de ocho', NULL);
INSERT INTO `unidades` VALUES ('P80', 'Milipascal por metro.', ' 0.001 veces de la unidad derivada pascal dividido por la unidad de base metros.');
INSERT INTO `unidades` VALUES ('P81', 'Kilopascal por metro.', '1000 veces de la unidad derivada pascal dividido por la unidad de base metros.');
INSERT INTO `unidades` VALUES ('P82', 'Hectopascal por metro.', '100 veces de la unidad derivada pascal SI dividido por la unidad de base metros. ');
INSERT INTO `unidades` VALUES ('P83', 'Admosfera estandar por metro.', 'Unidad anticuadas de la presiÃƒÂ³n dividida por la unidad de base metros.');
INSERT INTO `unidades` VALUES ('P84', 'Admosfera tecnica por metro.', 'unidad obsoleta y no legal de la presiÃƒÂ³n que se genera por una columna de agua de 10 metros dividida por la unidad de base metros.');
INSERT INTO `unidades` VALUES ('P85', 'Torr por metro.', 'Unidad de la presiÃƒÂ³n dividida por la unidad de base metros.');
INSERT INTO `unidades` VALUES ('P86', 'Psi por pulgada', 'Unidad de compuesto para la presiÃƒÂ³n (libra de fuerza de acuerdo con el sistema de la unidad angloamericana dividida por la potencia de la unidad de pulgada de acuerdo con el sistema angloamericano e Imperial de unidades con el exponente 2) dividido por');
INSERT INTO `unidades` VALUES ('P87', 'Metro cÃƒÂºbico por segundo de metro cuadrado', 'Unidad de volumen de flujo metros cÃƒÂºbicos por segundo relacionado con la superficie de transmisiÃƒÂ³n en metros cuadrados.');
INSERT INTO `unidades` VALUES ('P88', 'Rhe', 'Unidad no conforme a SI de fluidez de viscosidad dinÃƒÂ¡mica');
INSERT INTO `unidades` VALUES ('P89', 'Libra por metro cÃƒÂºbico de pulgada', 'Unidad para el momento de rotaciÃƒÂ³n relacionado con la longitud segÃƒÂºn el sistema de unidades Anglo-Americanas e Imperial.');
INSERT INTO `unidades` VALUES ('P9', 'Nueve paquetes', NULL);
INSERT INTO `unidades` VALUES ('P90', 'Libra-fuerza por pulgada cuadrada', 'Unidad para el momento de rotaciÃƒÂ³n relacionado con la longitud segÃƒÂºn el sistema de unidades Anglo-Americanas e Imperial.');
INSERT INTO `unidades` VALUES ('P91', 'Permanente (0Ã‚Â°c)', 'Unidad tradicional para la capacidad de un material para permitir la transiciÃƒÂ³n del vapor, definida a una temperatura de 0Ã‚Â°C como transmitancia del vapor en la cual la masa de un grano de vapor penetra en un ÃƒÂ¡rea de un pie cuadrado a una presiÃƒÂ');
INSERT INTO `unidades` VALUES ('P92', 'Permanente (23Ã‚Â°c)', 'Unidad tradicional para la capacidad de un material para permitir la transiciÃƒÂ³n del vapor, definida a una temperatura de 23Ã‚Â°C como transmitancia del vapor en la cual la masa de un grano de vapor penetra en un ÃƒÂ¡rea de un pie cuadrado a una presiÃƒ');
INSERT INTO `unidades` VALUES ('P93', 'Byte por segundo', 'Son utilizados para expresar la velocidad de transmisiÃƒÂ³n de datos o bit rate. Con frecuencia se usa en forma ambigua como bps, que para el SI significarÃƒÂ­a \"bits por segundos\"');
INSERT INTO `unidades` VALUES ('P94', 'Kilobyte por segundo', '1000-veces la unidad de byte dividida por la unidad de base SI en segundo lugar.');
INSERT INTO `unidades` VALUES ('P95', 'Megabite por segundo', '1 000 000 veces de la unidad de byte dividida por la unidad base SI segunda');
INSERT INTO `unidades` VALUES ('P96', 'RecÃƒÂ­proco de la unidad si deriva voltio', 'RecÃƒÂ­proco de la unidad SI deriva voltio');
INSERT INTO `unidades` VALUES ('P97', 'Reciprocidad de Radian', 'RecÃƒÂ­proco de la unidad radian');
INSERT INTO `unidades` VALUES ('P98', 'Pascal a la suma de potencia de los nÃƒÂºmeros estequimetricos', 'Unidad de la constante de equilibrio sobre la base de la presiÃƒÂ³n (ISO 80000-9: 2009, 9-35.a).');
INSERT INTO `unidades` VALUES ('P99', 'Mols por metro cÃƒÂºbico a la suma de potencia de los nÃƒÂºmeros estequimetricos', 'Unidad de la constante de equilibrio sobre la base de la concentraciÃƒÂ³n (ISO 80000-9: 2009, 9-36.a).');
INSERT INTO `unidades` VALUES ('PAL', 'Pascal', 'Es la presiÃƒÂ³n uniforme que, actuando sobre una superficie plana de 1 metro cuadrado, ejerce perpendicularmente a esta superficie una fuerza total de 1 newton. ');
INSERT INTO `unidades` VALUES ('PB', 'Par de la pulgada', NULL);
INSERT INTO `unidades` VALUES ('PD', 'Almohadilla', 'Unidad de conteo que define el nÃƒÂºmero de almohadillas (almohadilla: bloquea de hojas de papel sujetas juntas en un extremo).');
INSERT INTO `unidades` VALUES ('PE', 'Libra equivalente', NULL);
INSERT INTO `unidades` VALUES ('PFL', 'Litro de prueba ', 'Unidad de volumen igual a un litro de alcoholes de prueba, o su equivalente alcohÃƒÂ³lico. Se utiliza para medir la concentraciÃƒÂ³n de licores alcohÃƒÂ³licos destilados, expresada como porcentaje del contenido en alcohol de una mezcla patrÃƒÂ³n a una tem');
INSERT INTO `unidades` VALUES ('PGL', 'GalÃƒÂ³n de prueba', 'Unidad de volumen igual a un galÃƒÂ³n de alcoholes de prueba, o su equivalente alcohÃƒÂ³lico. Se utiliza para medir la concentraciÃƒÂ³n de licores alcohÃƒÂ³licos destilados, expresada como porcentaje del contenido en alcohol de una mezcla patrÃƒÂ³n a una ');
INSERT INTO `unidades` VALUES ('PI', 'Tono', 'Unidade de conteo que define el nÃƒÂºmero de caracteres que se ajustan en una pulgada horizontal');
INSERT INTO `unidades` VALUES ('PLA', 'Grado de platÃƒÂ³n ', 'Unidad de proporciÃƒÂ³n que define el contenido de azÃƒÂºcar de un producto, especialmente en relaciÃƒÂ³n con la cerveza');
INSERT INTO `unidades` VALUES ('PM', 'Porcentaje de libra', NULL);
INSERT INTO `unidades` VALUES ('PO', 'Libra por pulgada', NULL);
INSERT INTO `unidades` VALUES ('PQ', 'PÃƒÂ¡gina por pulgada', 'Unidad de cantidad que define el grado de espesor de una publicaciÃƒÂ³n enlazada, expresada como el nÃƒÂºmero de de pÃƒÂ¡ginas por pulgada de espesor.');
INSERT INTO `unidades` VALUES ('PR', 'Par', 'Unidad de conteo que define el nÃƒÂºmero de pares (par: descripciÃƒÂ³n por 2)');
INSERT INTO `unidades` VALUES ('PS', 'Libra fuerza por pulgada cuadrada', NULL);
INSERT INTO `unidades` VALUES ('PT', 'Pinta (US)', 'Utilice pinta lÃƒÂ­quida (cÃƒÂ³digo comÃƒÂºn PTL)');
INSERT INTO `unidades` VALUES ('PTD', 'Pinta seca (estados unidos)', NULL);
INSERT INTO `unidades` VALUES ('PTI', 'Pint (uk)', 'Es una unidad de volumen inglesa en el sistema imperial y los Estados Unidos. La versiÃƒÂ³n imperial usada en el UK es de 20 onzas lÃƒÂ­quidas y es equivalente a 568,26125 ml, mientras que en los EUA es de 16 onzas lÃƒÂ­quidas y es equivalente a 473,17647');
INSERT INTO `unidades` VALUES ('PTL', 'Pinta lÃƒÂ­quida (estados unidos)', NULL);
INSERT INTO `unidades` VALUES ('PTN', 'Parte', 'Cantidad de alimentos asignados o suficientes para una persona ');
INSERT INTO `unidades` VALUES ('PV', 'Media pinta (US)', NULL);
INSERT INTO `unidades` VALUES ('PW', 'Libra por pulgada de ancho', NULL);
INSERT INTO `unidades` VALUES ('PY', 'Pico seco (EUA)', NULL);
INSERT INTO `unidades` VALUES ('PZ', 'Peck dry (UK)', NULL);
INSERT INTO `unidades` VALUES ('Q10', 'Joule por tesla', 'Unidad del momento dipolar magnÃƒÂ©tico de la molÃƒÂ©cula como derivado de la unidad SI joule dividido por la unidad SI derivada Tesla');
INSERT INTO `unidades` VALUES ('Q11', 'Erlang', 'Unidad del valor del mercado de acuerdo con la caracteristica de una sola caracterÃƒÂ­stica como una mediciÃƒÂ³n estadÃƒÂ­stica de la utilizaciÃƒÂ³n existente ');
INSERT INTO `unidades` VALUES ('Q12', 'Octeto', 'SinÃƒÂ³nimo por byte: 1octet =8bit = 1byte');
INSERT INTO `unidades` VALUES ('Q13', 'Octeto por segundo', 'Unidad octeto dividido por la unidad base SI segundo');
INSERT INTO `unidades` VALUES ('Q14', 'Shannon', 'Unidad logarÃƒÂ­tmica para la informaciÃƒÂ³n igual al contenido de la decisiÃƒÂ³n de una oraciÃƒÂ³n de dos sucesos mutuamente excluyentes, expresada como un logaritmo a la base 2.');
INSERT INTO `unidades` VALUES ('Q15', 'Hartley', 'Unidad logarÃƒÂ­tmica para la informaciÃƒÂ³n igual al contenido de la decisiÃƒÂ³n de una oraciÃƒÂ³n de diez sucesos mutuamente excluyentes, expresada como un logaritmo base 10.');
INSERT INTO `unidades` VALUES ('Q16', 'Unidad natural de informaciÃƒÂ³n ', 'Unidad logarÃƒÂ­tmica para informaciÃƒÂ³n igual al contenido de la decisiÃƒÂ³n de una oraciÃƒÂ³n de 718 281 828 459 sucesos mutuamente excluyentes, expresada como un logaritmo para basar el valor de Euler e.');
INSERT INTO `unidades` VALUES ('Q17', 'Shannon por segundo', 'Unidad logarÃƒÂ­tmica relacionada con el tiempo para informaciÃƒÂ³n igual al contenido de la decisiÃƒÂ³n de una oraciÃƒÂ³n de dos sucesos mutuamente excluyentes, expresada como logarÃƒÂ­tmo base 2.');
INSERT INTO `unidades` VALUES ('Q18', 'Hartley por segundo ', 'Unidad logaritmica relacionada con el tiempo para informaciÃƒÂ³n igual al contenido de la decisiÃƒÂ³n de una oraciÃƒÂ³n de diez sucesos mutuamente excluyentes, expresada como un logartimo a la base 10. ');
INSERT INTO `unidades` VALUES ('Q19', 'Unidad natural de informaciÃƒÂ³n por segundo ', 'Unidad logarÃƒÂ­tmica relacionada con el tiempo para informaciÃƒÂ³n igual al contenido de la decisiÃƒÂ³n de una oraciÃƒÂ³n 2.718281828459 mutuamente excluyentes, expresado como un logarÃƒÂ­tmo a la base del valor de Euler');
INSERT INTO `unidades` VALUES ('Q20', 'Segundo por kilogramo', 'Unidad de la probabilidad de transiciÃƒÂ³n de Einsten para emisiones espontÃƒÂ¡neas o inductoras y absorciÃƒÂ³n segÃƒÂºn ISO 80000-7, expresada como unidad base SI segundo dividida por la unidad base kilogramo.');
INSERT INTO `unidades` VALUES ('Q21', 'Watt metro cuadrado', 'Unidad de las primeras constantes de radiaciÃƒÂ³n c1=2.p.c0, cuyo valor es 3.74177118.10 6 veces la del valor comparativo del producto de la unidad SI deriva watts multiplicada con la potencia de la SI medidor de la unidad base con el exponente 2.');
INSERT INTO `unidades` VALUES ('Q22', 'Segundo por metro cÃƒÂºbicos de radianes ', 'Unidad de la densidad de estados como una expresiÃƒÂ³n de la frecuencia angular como complemento del producto de hertzio y radiante y la potencia del medidor de la unidad base SI por exponente 3.');
INSERT INTO `unidades` VALUES ('Q23', 'Weber a la potencia menos uno', 'Complemento de la unidad SI deriva weber como unidad de la constante de Joshepson, cuyo valor es igual al 384,597,891 veces del valor de referencia gigahertz dividido  por volt. 4');
INSERT INTO `unidades` VALUES ('Q24', 'Reciprocidad de Pulgada', 'Complemento de la unidad pulgada segÃƒÂºn el sistema de unidades Anglo-Americanas e Imperial');
INSERT INTO `unidades` VALUES ('Q25', 'DioptrÃƒÂ­a', 'Unidad utilizada en la declaraciÃƒÂ³n de ÃƒÂ­ndices de refracciÃƒÂ³n relativos de sistemas ÃƒÂ³pticos como complemento de la longitud focal con correspondencia con: 1dpt=1/m.');
INSERT INTO `unidades` VALUES ('Q26', 'Uno por uno', 'Valor del cociente de dos unidades fÃƒÂ­sicas del mismo tipo que un numerador y denominador mientras que las unidades se acortan mutuamente');
INSERT INTO `unidades` VALUES ('Q27', 'Newtons metros por metro', 'Unidad para el momento de rotaciÃƒÂ³n relacionado con la longitud como producto de la unidad SI derivada por el medidor de la unidad SI');
INSERT INTO `unidades` VALUES ('Q28', 'Kilograma por metro cuadrado pascal segundo', 'Unidad para la capacidad de un material para permitir la transiciÃƒÂ³n del vapor');
INSERT INTO `unidades` VALUES ('Q29', 'Microgramo por hectogramo', 'Microgramo por hectogramo');
INSERT INTO `unidades` VALUES ('Q3', 'Comida', 'Unidad de conteo que define el nÃƒÂºmero de comida');
INSERT INTO `unidades` VALUES ('Q30', 'Ph (potencial de hidrogeno)', 'Es una escala numÃƒÂ©rica utilizada para especificar la acidez o basicidad de una soluciÃƒÂ³n acuosa . ');
INSERT INTO `unidades` VALUES ('Q31', 'Kilojoule por gramo', NULL);
INSERT INTO `unidades` VALUES ('Q32', 'Femtolitro', NULL);
INSERT INTO `unidades` VALUES ('Q33', 'Picolitro', NULL);
INSERT INTO `unidades` VALUES ('Q34', 'Nanolitro', NULL);
INSERT INTO `unidades` VALUES ('Q35', 'Megawatts por minuto', 'Unidad de potencia que define la cantidad total de energÃƒÂ­a mayor transferida o consumida en un minuto.');
INSERT INTO `unidades` VALUES ('Q36', 'Metro cuadrado por metro cÃƒÂºbico', 'Unidad de la cantidad de superficie por unidad de volumen de un objeto o colecciÃƒÂ³n de objetos');
INSERT INTO `unidades` VALUES ('Q37', 'Metro cÃƒÂºbico estÃƒÂ¡ndar por dÃƒÂ­a', 'Metro cÃƒÂºbico estÃƒÂ¡ndar (temperatura 15 Ã‚Â° C y presiÃƒÂ³n 101325 milibares) por dÃƒÂ­a');
INSERT INTO `unidades` VALUES ('Q38', 'Metro cÃƒÂºbico estÃƒÂ¡ndar por hora', 'Metro cÃƒÂºbico estÃƒÂ¡ndar (temperatura 15 Ã‚Â° C y presiÃƒÂ³n 101325 milibares) por dÃƒÂ­a');
INSERT INTO `unidades` VALUES ('Q39', 'Metro cÃƒÂºbico normalizado por dÃƒÂ­a', 'Metro cÃƒÂºbico estÃƒÂ¡ndar (temperatura 0Ã‚Â° C y presiÃƒÂ³n 101325 milibares) por dÃƒÂ­a');
INSERT INTO `unidades` VALUES ('Q40', 'Metro cÃƒÂºbico normalizado por hora', 'Metro cÃƒÂºbico estÃƒÂ¡ndar (temperatura 0Ã‚Â° C y presiÃƒÂ³n 101325 milibares) por dÃƒÂ­a');
INSERT INTO `unidades` VALUES ('Q41', 'Joule por metro cÃƒÂºbico normalizado', 'Joule por metro cÃƒÂºbico normalizado (temperatura 0 Ã‚Â° C y presiÃƒÂ³n 101325 milibares).');
INSERT INTO `unidades` VALUES ('Q42', 'Joule por metro cÃƒÂºbico estÃƒÂ¡ndar', 'Joule por metro cÃƒÂºbico normalizado (temperatura 15 Ã‚Â° C y presiÃƒÂ³n 101325 milibares).');
INSERT INTO `unidades` VALUES ('QA', 'PÃƒÂ¡gina-fascimil', 'Unidad de conteo que define el nÃƒÂºmero de pÃƒÂ¡ginas fascimil');
INSERT INTO `unidades` VALUES ('QAN', 'Cuarto (de un aÃƒÂ±o)', 'Unidad de tiempo que define el nÃƒÂºmero de aÃƒÂ±os (3 meses)');
INSERT INTO `unidades` VALUES ('QB', 'PÃƒÂ¡gina, copia impresa', 'Unidad de conteo que define el nÃƒÂºmero de copias impresas');
INSERT INTO `unidades` VALUES ('QD', 'Cuarta docena', NULL);
INSERT INTO `unidades` VALUES ('QH', 'Un cuarto de hora', NULL);
INSERT INTO `unidades` VALUES ('QK', 'Cuarto de kilogramo', NULL);
INSERT INTO `unidades` VALUES ('QR', 'Mano de papel', 'Unidad de conteo para papel, expresada como el nÃƒÂºmero de manos de papel (mano de papel: numero de papel en hojas, tÃƒÂ­picamente 25)');
INSERT INTO `unidades` VALUES ('QT', 'Cuarto (EUA)', 'Utilice cuarto de galÃƒÂ³n lÃƒÂ­quido (cÃƒÂ³digo comÃƒÂºn QTL)');
INSERT INTO `unidades` VALUES ('QTD', 'Cuarto seco (estados unidos)', NULL);
INSERT INTO `unidades` VALUES ('QTI', 'Cuarto (UK)', 'Es una unidad de medida de volumen equivalente a media fanega. En Castilla equivalÃƒÂ­a a aproximadamente a 6 celemines. La medida real cambia segÃƒÂºn regiones o incluso localidades.');
INSERT INTO `unidades` VALUES ('QTL', 'Cuarto de lÃƒÂ­quido (estadis unidos)', NULL);
INSERT INTO `unidades` VALUES ('QTR', 'Cuarto', 'Unidad tradicional de peso igual a 1/4 de peso. En el Reino Unido 1/4 equivale a 28 libras.');
INSERT INTO `unidades` VALUES ('R1', 'Pica', 'Unidad de conteo que define el nÃƒÂºmero de picas (pica: longitud tipografia igual a 12 puntos o 4,22 mm aprox)');
INSERT INTO `unidades` VALUES ('R9', 'Mil metros cÃƒÂºbicos ', 'Unidad de volumen que equivale a mil metro cÃƒÂºbicos');
INSERT INTO `unidades` VALUES ('RH', 'Hora de funcionamiento', 'Unidad de tiempo que define el nÃƒÂºmero de horas de operaciÃƒÂ³n');
INSERT INTO `unidades` VALUES ('RK', 'Medida mÃƒÂ©trica de rollo', NULL);
INSERT INTO `unidades` VALUES ('RM', 'Resma', 'Unidad de conteo para papel, espresada como el nÃƒÂºmero de resmas (resma: una gran cantidad de hojas de papel, tipicamente 500)');
INSERT INTO `unidades` VALUES ('RN', 'Medida mÃƒÂ©trica de Hojas (resma)', NULL);
INSERT INTO `unidades` VALUES ('ROM', 'HabitaciÃƒÂ³n', 'Unidad de conteo que define el nÃƒÂºmero de habitaciones');
INSERT INTO `unidades` VALUES ('RP', 'Libra por resma', 'Unidad de masa para papel, expresada en libras por resma. (Resma: una gran cantidad de papel, tipicamente 500 hojas)');
INSERT INTO `unidades` VALUES ('RPM', 'Revoluciones por minuto', 'Consulte la GuÃƒÂ­a ISO / TC12 SI');
INSERT INTO `unidades` VALUES ('RPS', 'Revoluciones por segundo', 'Consulte la GuÃƒÂ­a ISO / TC12 SI');
INSERT INTO `unidades` VALUES ('RS', 'Reiniciar', NULL);
INSERT INTO `unidades` VALUES ('RT', 'Milla de toneladas de ingresos', 'Unidad de informaciÃƒÂ³n tipicamente utilizada para propÃƒÂ³sitos de facturaciÃƒÂ³n, expresada como el nÃƒÂºmero de toneladas en ingresos: una tonelada mÃƒÂ©trica o un metro cÃƒÂºbico, la que sea mayor) se movio  a una distancia de una milla');
INSERT INTO `unidades` VALUES ('RU', 'correr', NULL);
INSERT INTO `unidades` VALUES ('S3', 'Pie cuadrado por segundo', 'SinÃƒÂ³nimo: pie cuadrado por segundo');
INSERT INTO `unidades` VALUES ('S4', 'Metro cuadrado por segundo', 'SinÃƒÂ³nimo: metro cuadrado por segundo');
INSERT INTO `unidades` VALUES ('S5', 'Sesenta cuartos de pulgada', NULL);
INSERT INTO `unidades` VALUES ('S6', 'SesiÃƒÂ³n', NULL);
INSERT INTO `unidades` VALUES ('S7', 'unidad de almacenamiento', NULL);
INSERT INTO `unidades` VALUES ('S8', 'Unidad de publicidad estÃƒÂ¡ndar', NULL);
INSERT INTO `unidades` VALUES ('SAN', 'Medio aÃƒÂ±o', 'Unidad de tiempo que define el nÃƒÂºmero de aÃƒÂ±os ');
INSERT INTO `unidades` VALUES ('SCO', 'PuntuaciÃƒÂ³n', 'Unidad de conteo que define el nÃƒÂºmero de unidades en multiplos de 20');
INSERT INTO `unidades` VALUES ('SCR', 'EscrÃƒÂºpulo', 'El escrÃƒÂºpulo (en inglÃƒÂ©s apothecary scruple) era Unidad de medida utilizada en farmacia para pesar ingredientes de los medicamentos.\r\n\r\nEl escrÃƒÂºpulo podÃƒÂ­a tener diferentes valores en cada paÃƒÂ­s: en EspaÃƒÂ±a y Portugal, un escrÃƒÂºpulo equiva');
INSERT INTO `unidades` VALUES ('SD', 'Libra sÃƒÂ³lida', NULL);
INSERT INTO `unidades` VALUES ('SE', 'SecciÃƒÂ³n', NULL);
INSERT INTO `unidades` VALUES ('SEC', 'Segundo [unidad de tiempo]', 'Supone comÃƒÂºnmente una sesentava parte de un minuto (1?60) y es esencial para la mediciÃƒÂ³n en mÃƒÂºltiples sistemas de unidades. ');
INSERT INTO `unidades` VALUES ('SET', 'Conjunto', 'Unidad de conteo que define el nÃƒÂºmero de conjuntos (Conjunto: un nÃƒÂºmero de objetos agrupados)');
INSERT INTO `unidades` VALUES ('SG', 'Segmento ', 'Unidad de informaciÃƒÂ³n equivalente a 64000bytes');
INSERT INTO `unidades` VALUES ('SHT', 'Tonelada de envÃƒÂ­os', 'Unidad de masa que define el nÃƒÂºmero de toneladas para el envÃƒÂ­o.');
INSERT INTO `unidades` VALUES ('SIE', 'Siemens', 'Se denomina siemens a la unidad derivada del SI para la medida de la conductancia elÃƒÂ©ctrica.');
INSERT INTO `unidades` VALUES ('SK', 'CamiÃƒÂ³n cisterna con divisiÃƒÂ³n', NULL);
INSERT INTO `unidades` VALUES ('SM3', 'Metro cÃƒÂºbico estÃƒÂ¡ndar', 'Metro cÃƒÂºbico estÃƒÂ¡ndar (temperatura 15 Ã‚Â° C y presiÃƒÂ³n 101325 milibares)');
INSERT INTO `unidades` VALUES ('SMI', 'Milla (milla estatal)', 'Medida de longitud, especialmente utilizada en marina, que equivale a 1,852 m.');
INSERT INTO `unidades` VALUES ('SN', 'Barra cuadrada', NULL);
INSERT INTO `unidades` VALUES ('SQ', 'Cuadrado', 'Unidad de conteo que define el nÃƒÂºmero de cuadrados (cuadrado: forma rectangular)');
INSERT INTO `unidades` VALUES ('SQR', 'Cuadrado y techado', 'Unidad de conteo que conteo que define el nÃƒÂºmero de plazas de materiales para techos, medida en mÃƒÂºltiplos de 100 pies cuadrados');
INSERT INTO `unidades` VALUES ('SR', 'Tira', 'Unidad de conteo que define el nÃƒÂºmero de tiras (pieza larga y estrecha de un objeto)');
INSERT INTO `unidades` VALUES ('SS', 'Medida mÃƒÂ©trica de hoja', NULL);
INSERT INTO `unidades` VALUES ('SST', 'Estandar corto (7200 partidos)', NULL);
INSERT INTO `unidades` VALUES ('STC', 'Palo', 'Unidad de conteo que define el nÃƒÂºmero de palos (palo: pieza delgada y a menudo cilÃƒÂ­ndirca de una sustancia)');
INSERT INTO `unidades` VALUES ('STI', 'Estone (UK)', NULL);
INSERT INTO `unidades` VALUES ('STK', 'Palo, cigarrillo', 'Unidad de conteo que define el nÃƒÂºmero de cigarrillos en la unidad mÃƒÂ¡s pequeÃƒÂ±a para el cÃƒÂ¡lculo de la poblaciÃƒÂ³n y/o del trabajo');
INSERT INTO `unidades` VALUES ('STL', 'Litro estÃƒÂ¡ndar', 'Unidad de volumen que define el nÃƒÂºmero de litros de un producto a una temperatura de 15 grados celsius, especialmente en relaciÃƒÂ³n con los aceites de hidrocarburos');
INSERT INTO `unidades` VALUES ('STN', 'Tonelada (estados unidos) o tonelada corta (UK y estados unidos)', 'SinÃƒÂ³nimo: tonelada neta (2000 lb)');
INSERT INTO `unidades` VALUES ('STW', 'Paja', 'Unidad de conteo que define el nÃƒÂºmero de pajitas (paja:un tubo delgado utilizado para succionar liquidos)');
INSERT INTO `unidades` VALUES ('SW', 'NÃƒÂºmero de madejas', 'Unidad de conteo que define el nÃƒÂºmero de madejas (skein:un paquete de hilo o hilo suelto)');
INSERT INTO `unidades` VALUES ('SX', 'EnvÃƒÂ­o', 'Unidad de conteo que define el nÃƒÂºmero de envÃƒÂ­os (embarque: una cantidad de mercancias embarcadas o transportadas)');
INSERT INTO `unidades` VALUES ('SYR', 'Jeringuilla', 'Unidad de conteo que define el nÃƒÂºmero de jeringuillas (jeringa: un pequeÃƒÂ±o dispositivo para bombear, pulverizar y/o inyectar liquidos a travÃƒÂ©s de una pequeÃƒÂ±a abertura)');
INSERT INTO `unidades` VALUES ('T0', 'Linea de telecomunicaciones en servicio', 'Unidad de conteo que define el nÃƒÂºmero de lÃƒÂ­neas de servicio');
INSERT INTO `unidades` VALUES ('T1', 'Mil libras', NULL);
INSERT INTO `unidades` VALUES ('T3', 'Mil pedazos', 'Unidad de conteo que define el nÃƒÂºmero de piezas en mÃƒÂºltiplos de 1000 (pieza: un solo artÃƒÂ­culo, artÃƒÂ­culo o ejemplar)');
INSERT INTO `unidades` VALUES ('T4', 'Bolsa de mil', NULL);
INSERT INTO `unidades` VALUES ('T5', 'Mil envolturas', NULL);
INSERT INTO `unidades` VALUES ('T6', 'Mil galones (US)', NULL);
INSERT INTO `unidades` VALUES ('T7', 'ImpresiÃƒÂ³n de mil', NULL);
INSERT INTO `unidades` VALUES ('T8', 'Mil pulgadas lineales', NULL);
INSERT INTO `unidades` VALUES ('TA', 'DÃƒÂ©cimo de pie cÃƒÂºbico', NULL);
INSERT INTO `unidades` VALUES ('TAB', 'Tonelada de registro bruto', 'Una unidad de masa igual al total de las imÃƒÂ¡genes cÃƒÂºbicas antes de las deducciones, donde 1 registro t es igual a 100 pies cÃƒÂºbicos.VÃƒÂ©ase el Convenio internacional sobre el arqueo de los buques.');
INSERT INTO `unidades` VALUES ('TAH', 'Kiloamperio-hora (milamperio-hora)', NULL);
INSERT INTO `unidades` VALUES ('TAN', 'NÃƒÂºmero de acido total', 'Unidad de quÃƒÂ­mica que define la cantidad de hidrÃƒÂ³xido de potasio (KOH) en miligramos que se necesita para neutralizar los ÃƒÂ¡cidos en un gramo de aceite. Es una medida importante de la calidad del petrÃƒÂ³leo crudo');
INSERT INTO `unidades` VALUES ('TC', 'CamiÃƒÂ³n', NULL);
INSERT INTO `unidades` VALUES ('TD', 'Termico', NULL);
INSERT INTO `unidades` VALUES ('TE', 'Totalizador', NULL);
INSERT INTO `unidades` VALUES ('TF', 'Diez yardas cuadradas', NULL);
INSERT INTO `unidades` VALUES ('TI', 'Mil pulgadas cuadradas', 'Unidad de medida imperial');
INSERT INTO `unidades` VALUES ('TIC', 'Tonelada mÃƒÂ©trica, incluido el contenedor', 'Unidad de masa que define el nÃƒÂºmero de toneladas mÃƒÂ©tricas de un producto, incluyendo su contenedor');
INSERT INTO `unidades` VALUES ('TIP', 'Tonelada mÃƒÂ©trica, incluido el embalaje interior', 'Unidad de masa que define el nÃƒÂºmero de toneladas metricas de un producto, incluyendo sus materiales de embalaje interior');
INSERT INTO `unidades` VALUES ('TJ', 'Mil centÃƒÂ­metros cuadrados', NULL);
INSERT INTO `unidades` VALUES ('TKM', 'Tonelada kilometro', 'Unidad de informaciÃƒÂ³n tÃƒÂ­picamente usada para propÃƒÂ³sitos de facturaciÃƒÂ³n, expresada como el nÃƒÂºmero de toneladas (toneladas mÃƒÂ©tricas) movidas sobre una distancia de un kilÃƒÂ³metro');
INSERT INTO `unidades` VALUES ('TL', 'Mil pies (lineal)', NULL);
INSERT INTO `unidades` VALUES ('TMS', 'Kilogramo de carne importada, menos despojos', 'Unidad de masa equivalente a mil gramos de carne importada, sin tener en cuenta los subproductos menos valiosos como las montaÃƒÂ±as');
INSERT INTO `unidades` VALUES ('TNE', 'Tonelada (tonelada mÃƒÂ©trica)', 'SinÃƒÂ³nimo: tonelada mÃƒÂ©trica');
INSERT INTO `unidades` VALUES ('TP', 'Paquete de diez', 'Unidad de conteo que define el nÃƒÂºmero de elementos en mÃƒÂºltiplos de 10');
INSERT INTO `unidades` VALUES ('TPI', 'Dientes por pulgada', 'El nÃƒÂºmero de dientes por pulgada');
INSERT INTO `unidades` VALUES ('TPR', 'Decenas de pares', 'Unidad de conteo que define el nÃƒÂºmero de pares en multiplos de 10 (par:elemento descrito por dos)');
INSERT INTO `unidades` VALUES ('TQ', 'Mil pies', NULL);
INSERT INTO `unidades` VALUES ('TQD', 'Mil metros cÃƒÂºbicos por dÃƒÂ­a ', 'Unidad de volumen igual a mil metros cÃƒÂºbicos por dÃƒÂ­a');
INSERT INTO `unidades` VALUES ('TR', 'Diez pies cuadrados', NULL);
INSERT INTO `unidades` VALUES ('TRL', 'Trillones (eur)', 'Unidad de escala nÃƒÂºmerica');
INSERT INTO `unidades` VALUES ('Ts', 'Mil pies cuadrados', NULL);
INSERT INTO `unidades` VALUES ('TSD', 'Tonelada de sustancia 90% seca', NULL);
INSERT INTO `unidades` VALUES ('TSH', 'Tonelada de vapor por hora', NULL);
INSERT INTO `unidades` VALUES ('TST', 'Decena de conjuntos', 'Unidad de conteo que define el nÃƒÂºmero de conjuntos en mÃƒÂºltiplos de 10 (conjunto: un nÃƒÂºmero de objetos agrupados)');
INSERT INTO `unidades` VALUES ('TT', 'Mil metros lineales', NULL);
INSERT INTO `unidades` VALUES ('TTS', 'Decenas de millar de pegatinas', 'Unidad de conteo que define el nÃƒÂºmero de palos multiples de 10000 (Pegatina: pieza delgada y a menudo cilÃƒÂ­ndrica de una sustancia)');
INSERT INTO `unidades` VALUES ('Tu', 'Contenedor externo', 'Tipo de caja de contenciÃƒÂ³n que sirve como contenedor de transporte externo, no especificado como equipo de transporte.');
INSERT INTO `unidades` VALUES ('TV', 'Mil kilogramos', NULL);
INSERT INTO `unidades` VALUES ('TW', 'Mil hojas', NULL);
INSERT INTO `unidades` VALUES ('U1', 'Tratamiento ', 'Unidad de conteo que define el nÃƒÂºmero de tratamientos (tratamiento: sujecciÃƒÂ³n a la acciÃƒÂ³n de un agente quÃƒÂ­mico, fÃƒÂ­sico o biolÃƒÂ³gico)');
INSERT INTO `unidades` VALUES ('U2', 'NÃƒÂºmero de tabletas', 'Unidad de conteo que define el nÃƒÂºmero de tabletas');
INSERT INTO `unidades` VALUES ('UA', 'Torr', NULL);
INSERT INTO `unidades` VALUES ('UB', 'Linea de telecomunicaciones en servicio promedio ', 'Unida de conteo que define el nÃƒÂºmero medio de lÃƒÂ­neas de servicio');
INSERT INTO `unidades` VALUES ('UC', 'Puerto de telecomunicaciones ', 'Uindad de conteo que define el nÃƒÂºmero de pÃƒÂºertos de acceso a la red');
INSERT INTO `unidades` VALUES ('UD', 'DÃƒÂ©cimo minuto', NULL);
INSERT INTO `unidades` VALUES ('UE', 'Hora de dÃƒÂ©cimo', NULL);
INSERT INTO `unidades` VALUES ('UF', 'Uso por lÃƒÂ­nea de telecomunicaciones promedio', NULL);
INSERT INTO `unidades` VALUES ('UH', 'Diez mil yardas', NULL);
INSERT INTO `unidades` VALUES ('UM', 'MillÃƒÂ³n de unidades', NULL);
INSERT INTO `unidades` VALUES ('UN', 'Newton metro', NULL);
INSERT INTO `unidades` VALUES ('VA', 'Voltio-amperio por kilogramo', NULL);
INSERT INTO `unidades` VALUES ('VLT', 'Voltio', 'Es la unidad derivada del Sistema Internacional para el potencial elÃƒÂ©ctrico, la fuerza electromotriz y la tensiÃƒÂ³n elÃƒÂ©ctrica.');
INSERT INTO `unidades` VALUES ('VP', 'Volumen porcentual ', 'Unidad de medida de concentraciÃƒÂ³n, expresada tipÃƒÂ­camente como el porcentaje de volumen de un soluto en una soluciÃƒÂ³n ');
INSERT INTO `unidades` VALUES ('VS', 'Visita', NULL);
INSERT INTO `unidades` VALUES ('W2', 'Kilo hÃƒÂºmedo ', 'Unidad de masa que define el nÃƒÂºmero de kilogramos de un producto, incluido el contenido de agua del producto.');
INSERT INTO `unidades` VALUES ('W4', 'Dos semanas', NULL);
INSERT INTO `unidades` VALUES ('WA', 'Watt por kilogramo ', 'Unidad de potencia');
INSERT INTO `unidades` VALUES ('WB', 'Libra hÃƒÂºmeda', 'Unidad de masa que define el nÃƒÂºmero de libras de un material, incluyendo el contenido de agua del material ');
INSERT INTO `unidades` VALUES ('WCD', 'Cable', 'Unidad de volumen utilizada para medir la madera. Un pie de tabla equivale a 1/2 de un pie cÃƒÂºbico.');
INSERT INTO `unidades` VALUES ('WE', 'Tonelada hÃƒÂºmeda ', 'Unidad de masa que define el nÃƒÂºmero de toneladas de un material, incluyendo el contenido de agua del material.');
INSERT INTO `unidades` VALUES ('WEB', 'Weber', 'Es el flujo magnÃƒÂ©tico que, al atravesar un circuito de una sola espira produce en la misma una fuerza electromotriz de 1 volt si se anula dicho flujo en un segundo por decaimiento uniforme. ');
INSERT INTO `unidades` VALUES ('WEE', 'Semana', 'Es el perÃƒÂ­odo de tiempo estÃƒÂ¡ndar utilizado para los ciclos de dÃƒÂ­as de trabajo y de descanso en la mayorÃƒÂ­a de las partes del mundo.');
INSERT INTO `unidades` VALUES ('WG', 'GalÃƒÂ³n de vino', 'Unidad de volumen igual a 231 pulgadas cÃƒÂºbicas');
INSERT INTO `unidades` VALUES ('WH', 'Rueda', NULL);
INSERT INTO `unidades` VALUES ('WHR', 'Watt hora', NULL);
INSERT INTO `unidades` VALUES ('WI', 'Peso por pulgada cuadrada', NULL);
INSERT INTO `unidades` VALUES ('WM', 'Mes de trabajo ', 'Unidad de tiempo que define el nÃƒÂºmero de meses de trabajo.');
INSERT INTO `unidades` VALUES ('WR', 'Envolver', NULL);
INSERT INTO `unidades` VALUES ('WSD', 'EstÃƒÂ¡ndar', 'Unidad de volumen de madera acabada igual a 165 pies cÃƒÂºbicos.');
INSERT INTO `unidades` VALUES ('WTT', 'Watt', 'Es la potencia que da lugar a una producciÃƒÂ³n de energÃƒÂ­a igual a 1 joule por segundo. ');
INSERT INTO `unidades` VALUES ('WW', 'Mililitro de agua', 'Unidad de volumen igual al nÃƒÂºmero de mililitros de agua.');
INSERT INTO `unidades` VALUES ('X1', 'Cadena de gunter', 'Empleada para medir distancias, formada por 100 eslabones metÃƒÂ¡licos, equivalentes a una longitud total de 20.1168 metros (66 pies) que aÃƒÂºn es ampliamente usada en los paÃƒÂ­ses anglosajones. ');
INSERT INTO `unidades` VALUES ('X1A', 'Tambor de acero', NULL);
INSERT INTO `unidades` VALUES ('X1B', 'Tambor de aluminio', NULL);
INSERT INTO `unidades` VALUES ('X1D', 'Tambor contrachapado', NULL);
INSERT INTO `unidades` VALUES ('X1F', 'Contenedor flexible', 'Contenedor de empaque de construcciÃƒÂ³n flexible.');
INSERT INTO `unidades` VALUES ('X1G', 'Tambor de fibra', NULL);
INSERT INTO `unidades` VALUES ('X1w', 'Tambor de madera', NULL);
INSERT INTO `unidades` VALUES ('X2C', 'Barril de madera', NULL);
INSERT INTO `unidades` VALUES ('X3A', 'BidÃƒÂ³n de acero', NULL);
INSERT INTO `unidades` VALUES ('X3H', 'BidÃƒÂ³n de plÃƒÂ¡stico', NULL);
INSERT INTO `unidades` VALUES ('X43', 'Bolsa de gran tamaÃƒÂ±o', 'Bolsa de tela de plÃƒÂ¡stico o de papel que tiene las dimensiones del pallet sobre el que estÃƒÂ¡ construido.');
INSERT INTO `unidades` VALUES ('X44', 'Bolsa de plastico', 'Un tipo de bolsa de plÃƒÂ¡stico, normalmente utilizada para envolver piezas promocionales, publicaciones, muestras de productos y / o catÃƒÂ¡logos.');
INSERT INTO `unidades` VALUES ('X4A', 'Caja de acero', NULL);
INSERT INTO `unidades` VALUES ('X4B', 'Caja de aluminio', NULL);
INSERT INTO `unidades` VALUES ('X4C', 'Caja de  madera natural', NULL);
INSERT INTO `unidades` VALUES ('X4D', 'Caja de contrachapado', NULL);
INSERT INTO `unidades` VALUES ('X4F', 'Caja de madera reconstituida', NULL);
INSERT INTO `unidades` VALUES ('X4G', 'Caja de cartÃƒÂ³n', NULL);
INSERT INTO `unidades` VALUES ('X4H', 'Caja de plÃƒÂ¡stico', NULL);
INSERT INTO `unidades` VALUES ('X5H', 'Bolsa de plÃƒÂ¡stico tejido', NULL);
INSERT INTO `unidades` VALUES ('X5L', 'Bolsa textil', NULL);
INSERT INTO `unidades` VALUES ('X5M', 'Bolsa de papel', NULL);
INSERT INTO `unidades` VALUES ('X6H', 'Recipiente de plÃƒÂ¡stico, Contenedor compuesto.', NULL);
INSERT INTO `unidades` VALUES ('X6P', 'Recipiente de vidrio, Contenedor compuesto.', NULL);
INSERT INTO `unidades` VALUES ('X7A', 'Estuche para carro', 'Tipo de contenedor portÃƒÂ¡til diseÃƒÂ±ado para almacenar equipo para el transporte en un automÃƒÂ³vil.');
INSERT INTO `unidades` VALUES ('X7B', 'Estuche de madera', 'Un estuche de madera para retener sustancias o artÃƒÂ­culos.');
INSERT INTO `unidades` VALUES ('X8A', 'Pallet de madera', 'Plataforma o caja abierta de madera, en la que se conservan las mercancÃƒÂ­as para facilitar su manejo mecÃƒÂ¡nico durante el transporte y almacenamiento.');
INSERT INTO `unidades` VALUES ('X8B', 'CajÃƒÂ³n de madera', 'Un contenedor de madera, en el que se conservan las mercancÃƒÂ­as para facilitar su manipulaciÃƒÂ³n mecÃƒÂ¡nica durante el transporte y almacenamiento.');
INSERT INTO `unidades` VALUES ('X8C', 'Madera flejada', 'Piezas sueltas o sin contenedor de madera atadas o envueltas.');
INSERT INTO `unidades` VALUES ('XAA', 'Contenedor intermedio  para grÃƒÂ¡neles de plÃƒÂ¡stico rÃƒÂ­gido', NULL);
INSERT INTO `unidades` VALUES ('XAB', 'Contenedor de fibra', 'Recipiente de contenciÃƒÂ³n de fibra, utilizado para retener sustancias o artÃƒÂ­culos.');
INSERT INTO `unidades` VALUES ('XAC', 'Contenedor de papel', 'Recipiente de contenciÃƒÂ³n de papel, para retener sustancias o artÃƒÂ­culos.');
INSERT INTO `unidades` VALUES ('XAD', 'Contenedor de madera', 'Recipiente de contenciÃƒÂ³n de madera, para retener sustancias o artÃƒÂ­culos.');
INSERT INTO `unidades` VALUES ('XAE', 'Aerosol', 'Una unidad de cuenta que define el nÃƒÂºmero de Aerosoles');
INSERT INTO `unidades` VALUES ('XAF', 'Pallet modular con collares,  80cms * 60cms', 'Pallet de tamaÃƒÂ±o estÃƒÂ¡ndar con dimensiones de 80 centÃƒÂ­metros por 60 centÃƒÂ­metros (cms).');
INSERT INTO `unidades` VALUES ('XAG', 'Pallet o empaquetado', 'La carga del pallet se asegura con una pelÃƒÂ­cula de plÃƒÂ¡stico transparente envuelta alrededor y luego encogido firmemente.');
INSERT INTO `unidades` VALUES ('XAH', 'Pallet, 100cms X 110cms', 'Pallet tamaÃƒÂ±o estÃƒÂ¡ndar con dimensiones de 100 centÃƒÂ­metros por 110 centÃƒÂ­metros (cms).');
INSERT INTO `unidades` VALUES ('XAI', 'Contenedor tipo concha', NULL);
INSERT INTO `unidades` VALUES ('XAJ', 'Cono', 'Contenedor utilizado en el transporte de material lineal como el hilo.');
INSERT INTO `unidades` VALUES ('XAL', 'EsfÃƒÂ©ra', 'Recipiente de contenciÃƒÂ³n esfÃƒÂ©rico para retener sustancias o artÃƒÂ­culos.');
INSERT INTO `unidades` VALUES ('XAM', 'Ampolleta no protegida', NULL);
INSERT INTO `unidades` VALUES ('XAP', 'Ampolleta protegida', NULL);
INSERT INTO `unidades` VALUES ('XAT', 'Atomizador', NULL);
INSERT INTO `unidades` VALUES ('XAV', 'CÃƒÂ¡psula', NULL);
INSERT INTO `unidades` VALUES ('XB4', 'CinturÃƒÂ³n', 'Banda utiliza para retener varios artÃƒÂ­culos juntos.');
INSERT INTO `unidades` VALUES ('XBA', 'Barril', NULL);
INSERT INTO `unidades` VALUES ('XBB', 'Bobina', NULL);
INSERT INTO `unidades` VALUES ('XBC', 'CajÃƒÂ³n para botellas / Estante para botellas', NULL);
INSERT INTO `unidades` VALUES ('XBD', 'Tablero', NULL);
INSERT INTO `unidades` VALUES ('XBE', 'Flejado', NULL);
INSERT INTO `unidades` VALUES ('XBF', 'Globo no protegido', NULL);
INSERT INTO `unidades` VALUES ('XBG', 'Bolso', 'Recipiente de material flexible con tapa abierta o cerrada.');
INSERT INTO `unidades` VALUES ('XBH', 'Manojo', NULL);
INSERT INTO `unidades` VALUES ('XBI', 'Compartimiento', NULL);
INSERT INTO `unidades` VALUES ('XBJ', 'Cubeta', NULL);
INSERT INTO `unidades` VALUES ('XBK', 'Cesta', NULL);
INSERT INTO `unidades` VALUES ('XBL', 'Paca comprimida', NULL);
INSERT INTO `unidades` VALUES ('XBM', 'Cuenco', NULL);
INSERT INTO `unidades` VALUES ('XBN', 'Paca no comprimida', NULL);
INSERT INTO `unidades` VALUES ('XBO', 'Botella no-protegida y cilÃƒÂ­ndrica', 'Recipiente de forma cilÃƒÂ­ndrica de cuello estrecho sin material de empaque protector externo.');
INSERT INTO `unidades` VALUES ('XBP', 'Globo protegido', NULL);
INSERT INTO `unidades` VALUES ('XBQ', 'Botella cilÃƒÂ­ndrica protegida', 'Recipiente de forma cilÃƒÂ­ndrica de cuello estrecho con material de empaque protector externo.');
INSERT INTO `unidades` VALUES ('XBR', 'Barra', NULL);
INSERT INTO `unidades` VALUES ('XBS', 'Botella, no-protegida en forma de bulbo', 'Recipiente en forma de bulbo de cuello estrecho sin material de empaque protector externo.');
INSERT INTO `unidades` VALUES ('XBT', 'Rollo de tela', NULL);
INSERT INTO `unidades` VALUES ('XBU', 'Butt', 'Barril de 1/2 tonel');
INSERT INTO `unidades` VALUES ('XBV', 'Botella de bulbo protegido', 'Recipiente en forma de bulbo de cuello estrecho con material de empaque protector externo.');
INSERT INTO `unidades` VALUES ('XBW', 'Caja para lÃƒÂ­quidos', NULL);
INSERT INTO `unidades` VALUES ('XBX', 'Caja', NULL);
INSERT INTO `unidades` VALUES ('XBY', 'Tablero, con fleje/ agrupados/ armados', NULL);
INSERT INTO `unidades` VALUES ('XBZ', 'Barras, con fleje/ agrupados/ armados', NULL);
INSERT INTO `unidades` VALUES ('XCA', 'Lata rectangular', NULL);
INSERT INTO `unidades` VALUES ('XCB', 'CajÃƒÂ³n para cerveza', NULL);
INSERT INTO `unidades` VALUES ('XCC', 'Mantequera', NULL);
INSERT INTO `unidades` VALUES ('XCD', 'Lata con mango y boquilla', NULL);
INSERT INTO `unidades` VALUES ('XCE', 'Cesto tejido', NULL);
INSERT INTO `unidades` VALUES ('XCF', 'Cofre', NULL);
INSERT INTO `unidades` VALUES ('XCG', 'Contenedor tipo Jaula', NULL);
INSERT INTO `unidades` VALUES ('XCH', 'Cajonera', NULL);
INSERT INTO `unidades` VALUES ('XCI', 'Frasco', NULL);
INSERT INTO `unidades` VALUES ('XCJ', 'AtaÃƒÂºd', NULL);
INSERT INTO `unidades` VALUES ('XCK', 'Barrica', NULL);
INSERT INTO `unidades` VALUES ('XCL', 'Espiral', NULL);
INSERT INTO `unidades` VALUES ('XCM', 'Paquete de tarjetas', 'Paquete plano normalmente hecho de cartÃƒÂ³n desde / hacia el cual el producto es a menudo colgado o unido.');
INSERT INTO `unidades` VALUES ('XCN', 'Contenedor, no especificado como equipo de transporte', NULL);
INSERT INTO `unidades` VALUES ('XCO', 'GarrafÃƒÂ³n no protegido', NULL);
INSERT INTO `unidades` VALUES ('XCP', 'GarrafÃƒÂ³n protegido', NULL);
INSERT INTO `unidades` VALUES ('XCQ', 'Cartucho', 'Paquete que contiene una carga tal como un explosivo propulsor para armas de fuego o tÃƒÂ³ner de tinta para una impresora.');
INSERT INTO `unidades` VALUES ('XCR', 'CajÃƒÂ³n', NULL);
INSERT INTO `unidades` VALUES ('XCS', 'Estuche', NULL);
INSERT INTO `unidades` VALUES ('XCT', 'CartÃƒÂ³n', NULL);
INSERT INTO `unidades` VALUES ('XCU', 'Vaso', NULL);
INSERT INTO `unidades` VALUES ('XCV', 'Cubierta', NULL);
INSERT INTO `unidades` VALUES ('XCW', 'Jaula estilo rodillo', NULL);
INSERT INTO `unidades` VALUES ('XCX', 'Lata cilÃƒÂ­ndrica', NULL);
INSERT INTO `unidades` VALUES ('XCY', 'Cilindro', NULL);
INSERT INTO `unidades` VALUES ('XCZ', 'Lona', NULL);
INSERT INTO `unidades` VALUES ('XDA', 'CajÃƒÂ³n multicapa de plÃƒÂ¡stico', NULL);
INSERT INTO `unidades` VALUES ('XDB', 'CajÃƒÂ³n de varias capas de madera', NULL);
INSERT INTO `unidades` VALUES ('XDC', 'CajÃƒÂ³n multicapa de cartÃƒÂ³n', NULL);
INSERT INTO `unidades` VALUES ('XDG', 'Jaula, SegÃƒÂºn la clasificaciÃƒÂ³n de la compaÃƒÂ±ÃƒÂ­a (Commonwealth Handling Equipment Pool (CHEP))', NULL);
INSERT INTO `unidades` VALUES ('XDH', 'Caja, SegÃƒÂºn la clasificaciÃƒÂ³n de la compaÃƒÂ±ÃƒÂ­a (CHEP), Eurobox', 'Caja montada sobre una base de pallet SegÃƒÂºn la clasificaciÃƒÂ³n de la compaÃƒÂ±ÃƒÂ­a (CHEP).');
INSERT INTO `unidades` VALUES ('XDI', 'Tambor de hierro', NULL);
INSERT INTO `unidades` VALUES ('XDJ', 'damajuana o garrafa, no protegido', NULL);
INSERT INTO `unidades` VALUES ('XDK', 'CajÃƒÂ³n a granel, cartÃƒÂ³n', NULL);
INSERT INTO `unidades` VALUES ('XDL', 'Cajas de plÃƒÂ¡stico', NULL);
INSERT INTO `unidades` VALUES ('XDM', 'Cajones a granel de madera', NULL);
INSERT INTO `unidades` VALUES ('XDN', 'Dispensador', NULL);
INSERT INTO `unidades` VALUES ('XDP', 'damajuana o garrafa, protegido', NULL);
INSERT INTO `unidades` VALUES ('XDR', 'Tambor', NULL);
INSERT INTO `unidades` VALUES ('XDS', 'Bandeja de una capa sin cubierta y de plÃƒÂ¡stico', NULL);
INSERT INTO `unidades` VALUES ('XDT', 'Bandeja de una capa sin cubierta y de madera', NULL);
INSERT INTO `unidades` VALUES ('XDU', 'Bandeja de una capa sin cubierta y  poliestireno', NULL);
INSERT INTO `unidades` VALUES ('XDV', 'Bandeja de una capa sin cubierta y de cartÃƒÂ³n', NULL);
INSERT INTO `unidades` VALUES ('XDW', 'Bandeja de dos capas sin tapa y con bandeja de plÃƒÂ¡stico', NULL);
INSERT INTO `unidades` VALUES ('XDX', 'Bandeja de dos capas sin cubierta y de madera', NULL);
INSERT INTO `unidades` VALUES ('XDY', 'Bandeja de dos capas sin cubierta y de cartÃƒÂ³n', NULL);
INSERT INTO `unidades` VALUES ('XEC', 'Bolsa de plÃƒÂ¡stico', NULL);
INSERT INTO `unidades` VALUES ('XED', 'Estuche, con pallet de base', NULL);
INSERT INTO `unidades` VALUES ('XEE', 'Estuche, con pallet base de madera', NULL);
INSERT INTO `unidades` VALUES ('XEF', 'Estuche, con pallet base de cartÃƒÂ³n', NULL);
INSERT INTO `unidades` VALUES ('XEG', 'Estuche, con pallet base de plÃƒÂ¡stico', NULL);
INSERT INTO `unidades` VALUES ('XEH', 'Estuche, con pallet base de metal', NULL);
INSERT INTO `unidades` VALUES ('XEI', 'Estuche isotÃƒÂ©rmico', NULL);
INSERT INTO `unidades` VALUES ('XEN', 'Sobre', NULL);
INSERT INTO `unidades` VALUES ('XFB', 'Bolsa flexible', 'Bolsa de contenciÃƒÂ³n flexible hecha de plÃƒÂ¡stico, usado tÃƒÂ­picamente para el transporte de mercancÃƒÂ­as no peligrosas a granel, que usan contenedores de transporte de tamaÃƒÂ±o estÃƒÂ¡ndar.');
INSERT INTO `unidades` VALUES ('XFC', 'CajÃƒÂ³n para fruta', NULL);
INSERT INTO `unidades` VALUES ('XFD', 'CajÃƒÂ³n enmarcado', NULL);
INSERT INTO `unidades` VALUES ('XFE', 'Tanque flexible', 'Contenedor flexible de plÃƒÂ¡stico, usado tÃƒÂ­picamente para el transporte de cargas no peligrosas a granel usando contenedores de transporte de tamaÃƒÂ±o estÃƒÂ¡ndar.');
INSERT INTO `unidades` VALUES ('XFI', 'Firkin', 'Barril de 41 litros');
INSERT INTO `unidades` VALUES ('XFL', 'Matraz', NULL);
INSERT INTO `unidades` VALUES ('XFO', 'CajÃƒÂ³n para zapatos', NULL);
INSERT INTO `unidades` VALUES ('XFP', 'Caja auxiliar para pelÃƒÂ­cula fotogrÃƒÂ¡fica', NULL);
INSERT INTO `unidades` VALUES ('XFR', 'Marco', NULL);
INSERT INTO `unidades` VALUES ('XFT', 'Contenedor para alimentos', NULL);
INSERT INTO `unidades` VALUES ('XFW', 'Carro de cama plana', 'MÃƒÂ³dulo con ruedas en el que las bandejas u otros artÃƒÂ­culos de forma regular se empacan para fines de transporte.');
INSERT INTO `unidades` VALUES ('XFX', 'Bolsa flexible tipo contenedor', NULL);
INSERT INTO `unidades` VALUES ('XGB', 'Botella para gas', 'Cilindro metÃƒÂ¡lico de cuello estrecho para la retenciÃƒÂ³n de gas licuado o comprimido.');
INSERT INTO `unidades` VALUES ('XGI', 'Viga', NULL);
INSERT INTO `unidades` VALUES ('XGL', 'Contenedor tipo galÃƒÂ³n', 'Contenedor con una capacidad de un galÃƒÂ³n.');
INSERT INTO `unidades` VALUES ('XGR', 'Recipiente de vidrio', 'Recipiente de contenciÃƒÂ³n de vidrio para retener sustancias o artÃƒÂ­culos.');
INSERT INTO `unidades` VALUES ('XGU', 'Bandeja contenedor para apilar horizontalmente objetos planos', 'Bandeja para contiene objetos planos apilados uno encima del otro.');
INSERT INTO `unidades` VALUES ('XGY', 'Costal de Yute', 'Hecho de yute, usado para transportar mercancÃƒÂ­as gruesas, tales como granos, patatas, y otros productos agrÃƒÂ­colas.');
INSERT INTO `unidades` VALUES ('XGZ', 'Vigas con correas o agrupadas', NULL);
INSERT INTO `unidades` VALUES ('XHA', 'Cesta con mango y de plÃƒÂ¡stico', NULL);
INSERT INTO `unidades` VALUES ('XHB', 'Cesta con mango y de madera', NULL);
INSERT INTO `unidades` VALUES ('XHC', 'Cesta  con asa y de  cartÃƒÂ³n', NULL);
INSERT INTO `unidades` VALUES ('XHG', 'Hogshead', 'Barril de 1/4 de tonel');
INSERT INTO `unidades` VALUES ('XHN', 'Gancho', 'Artefacto, cuya forma con un gancho en la parte superior, tiene el propÃƒÂ³sito de colgar artÃƒÂ­culos de un carril.');
INSERT INTO `unidades` VALUES ('XHR', 'Cesto', NULL);
INSERT INTO `unidades` VALUES ('XIA', 'Paquete con pantalla y de madera', NULL);
INSERT INTO `unidades` VALUES ('XIB', 'Paquete  con pantalla y de cartÃƒÂ³n', NULL);
INSERT INTO `unidades` VALUES ('XIC', 'Paquete con pantalla y de plÃƒÂ¡stico', NULL);
INSERT INTO `unidades` VALUES ('XID', 'Paquete con pantalla y de metal', NULL);
INSERT INTO `unidades` VALUES ('XIE', 'Paquete de mostrador.', NULL);
INSERT INTO `unidades` VALUES ('XIF', 'Envase para alimentos', 'Envase flexible tubular o de piel, posiblemente transparente, a menudo utilizado para contener alimentos (por ejemplo salami).');
INSERT INTO `unidades` VALUES ('XIG', 'Paquete envuelto en papel', NULL);
INSERT INTO `unidades` VALUES ('XIH', 'Tambor de plÃƒÂ¡stico', NULL);
INSERT INTO `unidades` VALUES ('XIK', 'Paquete de cartÃƒÂ³n con los agujeros para botellas', 'Material de empaque realizado en cartÃƒÂ³n que facilita la separaciÃƒÂ³n de botellas individuales de vidrio o plÃƒÂ¡stico.');
INSERT INTO `unidades` VALUES ('XIL', 'Bandeja rÃƒÂ­gida con tapa y apilable (CEN TS 14482: 2002)', 'Bandeja rÃƒÂ­gida apilable empotrada compatible con CEN TS 14482: 2002.');
INSERT INTO `unidades` VALUES ('XIN', 'Lingote', NULL);
INSERT INTO `unidades` VALUES ('XIZ', 'Lingotes  con correas/ agrupados', NULL);
INSERT INTO `unidades` VALUES ('XJB', 'Bolsa jumbo', 'Bolsa de contenciÃƒÂ³n flexible, ampliamente utilizada para almacenamiento, transporte y manipulaciÃƒÂ³n de materiales en polvo, escamas o granulares.Ã‚Â TÃƒÂ­picamente construido a partir de tejido de polipropileno (PP) tejido en forma de bolsas cÃƒÂºbic');
INSERT INTO `unidades` VALUES ('XJC', 'BidÃƒÂ³n rectangular', NULL);
INSERT INTO `unidades` VALUES ('XJG', 'Jarra', NULL);
INSERT INTO `unidades` VALUES ('XJR', 'Tarro', NULL);
INSERT INTO `unidades` VALUES ('XJT', 'Bolsa de yute', NULL);
INSERT INTO `unidades` VALUES ('XJY', 'BidÃƒÂ³n, cilÃƒÂ­ndrico', NULL);
INSERT INTO `unidades` VALUES ('XKG', 'Barrilete', NULL);
INSERT INTO `unidades` VALUES ('XKI', 'Kit (Conjunto de piezas)', 'Conjunto de artÃƒÂ­culos o implementos utilizados para un propÃƒÂ³sito especÃƒÂ­fico.');
INSERT INTO `unidades` VALUES ('XLE', 'Valijas', 'ColecciÃƒÂ³n de bolsas, cajas y / o contenedores que contienen objetos personales para un viaje.');
INSERT INTO `unidades` VALUES ('XLG', 'Bitacora', NULL);
INSERT INTO `unidades` VALUES ('XLT', 'Lote', NULL);
INSERT INTO `unidades` VALUES ('XLU', 'Caja de arrastre', 'Caja de madera para el transporte y almacenamiento de frutas y verduras.');
INSERT INTO `unidades` VALUES ('XLV', 'Contenedor pequeÃƒÂ±o', 'Contenedor de madera o metal, usado para empacar artÃƒÂ­culos de uso domÃƒÂ©stico y personales.');
INSERT INTO `unidades` VALUES ('XLZ', 'Registros  con fleje/ agrupados/ armados', NULL);
INSERT INTO `unidades` VALUES ('XMA', 'CajÃƒÂ³n metÃƒÂ¡lico', 'Caja de contenciÃƒÂ³n hecha de metal para retener sustancias o artÃƒÂ­culos.');
INSERT INTO `unidades` VALUES ('XMB', 'MÃƒÂºltiplo de bolsas', NULL);
INSERT INTO `unidades` VALUES ('XMC', 'CajÃƒÂ³n para leche', NULL);
INSERT INTO `unidades` VALUES ('XME', 'Contenedor de metal', 'Tipo de caja de contenciÃƒÂ³n hecha de metal para retener sustancias o artÃƒÂ­culos, no especificado de otro modo como equipo de transporte.');
INSERT INTO `unidades` VALUES ('XMR', 'Recipiente de metal', 'Recipiente de contenciÃƒÂ³n de metal para retener sustancias o artÃƒÂ­culos.');
INSERT INTO `unidades` VALUES ('XMS', 'Saco milti-pared', NULL);
INSERT INTO `unidades` VALUES ('XMT', 'Tapete', NULL);
INSERT INTO `unidades` VALUES ('XMW', 'Contenedor envuelto en plÃƒÂ¡stico', 'Recipiente de contenciÃƒÂ³n envuelto en plÃƒÂ¡stico para retener sustancias o artÃƒÂ­culos.');
INSERT INTO `unidades` VALUES ('XMX', 'Caja pequeÃƒÂ±a de cerillos', NULL);
INSERT INTO `unidades` VALUES ('XNA', 'No disponible', NULL);
INSERT INTO `unidades` VALUES ('XNE', 'Sin empaque o no empaquetado', NULL);
INSERT INTO `unidades` VALUES ('XNF', 'Sin empaque o no empaquetado, unidad simple', NULL);
INSERT INTO `unidades` VALUES ('XNG', 'Sin empaque o no empaquetado, unidades mÃƒÂºltiples', NULL);
INSERT INTO `unidades` VALUES ('XNS', 'Caja nido', NULL);
INSERT INTO `unidades` VALUES ('XNT', 'Red', NULL);
INSERT INTO `unidades` VALUES ('XNU', 'Red de plÃƒÂ¡stico con tubo', NULL);
INSERT INTO `unidades` VALUES ('XNV', 'Red textil con tubo', NULL);
INSERT INTO `unidades` VALUES ('XOA', 'Pallet, SegÃƒÂºn la clasificaciÃƒÂ³n de la compaÃƒÂ±ÃƒÂ­a (Commonwealth Handling Equipment Pool (CHEP) 40 cm x 60 cm', 'Pallet de dimensiones 40 centÃƒÂ­metros x 60 centÃƒÂ­metros.');
INSERT INTO `unidades` VALUES ('XOB', 'Pallet, SegÃƒÂºn la clasificaciÃƒÂ³n de la compaÃƒÂ±ÃƒÂ­a (Commonwealth Handling Equipment Pool (CHEP) 80 cm x 120 cm', 'Pallet de dimensiones 80 centÃƒÂ­metros x 120 centÃƒÂ­metros.');
INSERT INTO `unidades` VALUES ('XOC', 'Pallet, SegÃƒÂºn la clasificaciÃƒÂ³n de la compaÃƒÂ±ÃƒÂ­a (Commonwealth Handling Equipment Pool (CHEP) 100 cm x 120 cm', 'Pallet de dimensiones 100 centÃƒÂ­metros x 120 centÃƒÂ­metros.');
INSERT INTO `unidades` VALUES ('XOD', 'Pallet, AS 4068-1993', 'Pallet con  estÃƒÂ¡ndar australiano de dimensiones 115.5 centÃƒÂ­metros x 116.5 centÃƒÂ­metros.');
INSERT INTO `unidades` VALUES ('XOE', 'Pallet, ISO T11', 'Pallet con estÃƒÂ¡ndar ISO de dimensiones 110 centÃƒÂ­metros x 110 centÃƒÂ­metros, prevalente en la regiÃƒÂ³n Asia-PacÃƒÂ­fico.');
INSERT INTO `unidades` VALUES ('XOF', 'Plataforma, peso o dimensiÃƒÂ³n no especificada', 'Plataforma de carga equivalente del Pallet de dimensiones desconocidas o peso desconocido.');
INSERT INTO `unidades` VALUES ('XOK', 'Bloque', 'Una pieza sÃƒÂ³lida de una sustancia dura, tal como granito, que tiene uno o mÃƒÂ¡s lados planos.');
INSERT INTO `unidades` VALUES ('XOT', 'Octabin', 'Envase estÃƒÂ¡ndar de cartÃƒÂ³n de grandes dimensiones para almacenar por ejemplo verduras, grÃƒÂ¡nulos de plÃƒÂ¡stico u otros productos secos.');
INSERT INTO `unidades` VALUES ('XP2', 'Charola', 'Recipiente ancho y abierto, usualmente de metal.');
INSERT INTO `unidades` VALUES ('XPA', 'Cajetilla', 'Paquete pequeÃƒÂ±o.');
INSERT INTO `unidades` VALUES ('XPB', 'Pallet, Caja combinada y abierta con caja y pallet.', NULL);
INSERT INTO `unidades` VALUES ('XPC', 'Paquete postal', NULL);
INSERT INTO `unidades` VALUES ('XPD', 'Pallet modular con collares (80cms * 100cms)', 'Pallet tamaÃƒÂ±o estÃƒÂ¡ndar de dimensiones 80 centÃƒÂ­metros por 100 centÃƒÂ­metros (cms).');
INSERT INTO `unidades` VALUES ('XPE', 'Pallet modular con collares (80cms * 120cms)', 'Pallet tamaÃƒÂ±o estÃƒÂ¡ndar de dimensiones 80 centÃƒÂ­metros por 120 centÃƒÂ­metros (cms).');
INSERT INTO `unidades` VALUES ('XPF', 'Corral', 'PequeÃƒÂ±o recinto abierto para retener animales.');
INSERT INTO `unidades` VALUES ('XPG', 'Placa', NULL);
INSERT INTO `unidades` VALUES ('XPH', 'Cantaro', NULL);
INSERT INTO `unidades` VALUES ('XPI', 'Pleca', NULL);
INSERT INTO `unidades` VALUES ('XPJ', 'Canastilla', NULL);
INSERT INTO `unidades` VALUES ('XPK', 'Paquete', 'Unidad de empaque estÃƒÂ¡ndar.');
INSERT INTO `unidades` VALUES ('XPL', 'Balde', NULL);
INSERT INTO `unidades` VALUES ('XPN', 'TablÃƒÂ³n', NULL);
INSERT INTO `unidades` VALUES ('XPO', 'Bolsa pequeÃƒÂ±a', NULL);
INSERT INTO `unidades` VALUES ('XPR', 'Contenedor de plÃƒÂ¡stico', 'Recipiente de contenciÃƒÂ³n de plÃƒÂ¡stico para retener sustancias o artÃƒÂ­culos.');
INSERT INTO `unidades` VALUES ('XPT', 'Maceta', NULL);
INSERT INTO `unidades` VALUES ('XPU', 'Cacerola', NULL);
INSERT INTO `unidades` VALUES ('XPV', 'Tubos, con fleje/ agrupados/ armados', NULL);
INSERT INTO `unidades` VALUES ('XPX', 'Pallet', 'Plataforma o caja abierta, generalmente de madera, en la que se conservan las mercancÃƒÂ­as para facilitar el manejo mecÃƒÂ¡nico durante el transporte y almacenamiento.');
INSERT INTO `unidades` VALUES ('XPY', 'Placas con fleje/ agrupados/ armados', NULL);
INSERT INTO `unidades` VALUES ('XPZ', 'Tablones con fleje/ agrupados/ armados', NULL);
INSERT INTO `unidades` VALUES ('XQA', 'Tambor de acero con cabeza no desmontable', NULL);
INSERT INTO `unidades` VALUES ('XQB', 'Tambor de  acero con cabeza extraÃƒÂ­ble', NULL);
INSERT INTO `unidades` VALUES ('XQC', 'Tambor de aluminio con cabeza no extraÃƒÂ­ble', NULL);
INSERT INTO `unidades` VALUES ('XQD', 'Tambor de aluminio con cabeza extraÃƒÂ­ble', NULL);
INSERT INTO `unidades` VALUES ('XQF', 'Tambor, plÃƒÂ¡stico con cabeza no desmontable', NULL);
INSERT INTO `unidades` VALUES ('XQG', 'Tambor, plÃƒÂ¡stico, cabeza extraÃƒÂ­ble', NULL);
INSERT INTO `unidades` VALUES ('XQH', 'Barril de madera con tapÃƒÂ³n', NULL);
INSERT INTO `unidades` VALUES ('XQJ', 'Barril de madera con cabeza desprendible', NULL);
INSERT INTO `unidades` VALUES ('XQK', 'BidÃƒÂ³n de acero con cabeza no desmontable', NULL);
INSERT INTO `unidades` VALUES ('XQL', 'BidÃƒÂ³n de acero con cabeza desmontable', NULL);
INSERT INTO `unidades` VALUES ('XQM', 'BidÃƒÂ³n de plÃƒÂ¡stico con cabeza no desmontable', NULL);
INSERT INTO `unidades` VALUES ('XQN', 'BidÃƒÂ³n de plÃƒÂ¡stico con cabeza extraÃƒÂ­ble', NULL);
INSERT INTO `unidades` VALUES ('XQP', 'Caja de madera natural estÃƒÂ¡ndar', NULL);
INSERT INTO `unidades` VALUES ('XQQ', 'Caja de madera natural con muros a prueba de filtraciones', NULL);
INSERT INTO `unidades` VALUES ('XQR', 'Caja de plÃƒÂ¡stico expandida', NULL);
INSERT INTO `unidades` VALUES ('XQS', 'Caja de plÃƒÂ¡stico sÃƒÂ³lida', NULL);
INSERT INTO `unidades` VALUES ('XRD', 'Rod', NULL);
INSERT INTO `unidades` VALUES ('XRG', 'Anillo', NULL);
INSERT INTO `unidades` VALUES ('XRJ', 'Estante, Perchero para ropa', NULL);
INSERT INTO `unidades` VALUES ('XRK', 'Estante', NULL);
INSERT INTO `unidades` VALUES ('XRL', 'Carrete', 'Dispositivo giratorio cilÃƒÂ­ndrico con un reborde en cada extremo en el que se enrollan los materiales.');
INSERT INTO `unidades` VALUES ('XRO', 'Rollo', NULL);
INSERT INTO `unidades` VALUES ('XRT', 'Red Roja', 'Material de confinamiento hecho de redes de malla roja para retener artÃƒÂ­culos (por ejemplo ÃƒÂ¡rboles).');
INSERT INTO `unidades` VALUES ('XRZ', 'Varillas  con fleje/ agrupados/ armados', NULL);
INSERT INTO `unidades` VALUES ('XSA', 'Saco', NULL);
INSERT INTO `unidades` VALUES ('XSB', 'Losa', NULL);
INSERT INTO `unidades` VALUES ('XSC', 'CajÃƒÂ³n poco profundo', NULL);
INSERT INTO `unidades` VALUES ('XSD', 'Huso', NULL);
INSERT INTO `unidades` VALUES ('XSE', 'BaÃƒÂºl', NULL);
INSERT INTO `unidades` VALUES ('XSH', 'Bolsa pequeÃƒÂ±a hermÃƒÂ©tica', NULL);
INSERT INTO `unidades` VALUES ('XSI', 'PatÃƒÂ­n', 'Una plataforma o plataforma mÃƒÂ³vil baja para facilitar el manejo y transporte de mercancÃƒÂ­as.');
INSERT INTO `unidades` VALUES ('XSK', 'Carcasa esqueleto', NULL);
INSERT INTO `unidades` VALUES ('XSL', 'Hoja de deslizamiento', 'LÃƒÂ¡minas de plÃƒÂ¡stico duro se utilizan principalmente como la base sobre la cual apilan mercancÃƒÂ­as para optimizar el espacio dentro de un contenedor.Ã‚Â Puede utilizarse como alternativa a un embalaje paletizado.');
INSERT INTO `unidades` VALUES ('XSM', 'Hoja de metal', NULL);
INSERT INTO `unidades` VALUES ('XSO', 'Carrete pequeÃƒÂ±o', 'Contenedor de empaque utilizado en el transporte de artÃƒÂ­culos tales como alambre, cable, cinta e hilo.');
INSERT INTO `unidades` VALUES ('XSP', 'Hoja de empaque de plÃƒÂ¡stico', NULL);
INSERT INTO `unidades` VALUES ('XSS', 'CajÃƒÂ³n de acero', NULL);
INSERT INTO `unidades` VALUES ('XSU', 'Maleta', NULL);
INSERT INTO `unidades` VALUES ('XSV', 'Sobre de acero', NULL);
INSERT INTO `unidades` VALUES ('XSW', 'Envoltorio', 'MercancÃƒÂ­as retenidas en una pelÃƒÂ­cula de plÃƒÂ¡stico transparente que ha sido envuelta alrededor y luego encogido fuertemente a las mercancÃƒÂ­as.');
INSERT INTO `unidades` VALUES ('XSY', 'Manga', NULL);
INSERT INTO `unidades` VALUES ('XSZ', 'Hojas  con fleje/ agrupados/ armados', NULL);
INSERT INTO `unidades` VALUES ('XT1', 'Tableta', 'ArtÃƒÂ­culo suelto o sin empaque en forma de barra, bloque o pieza.');
INSERT INTO `unidades` VALUES ('XTB', 'Tina', NULL);
INSERT INTO `unidades` VALUES ('XTC', 'Caja para tÃƒÂ©', NULL);
INSERT INTO `unidades` VALUES ('XTD', 'Tubo plegable', NULL);
INSERT INTO `unidades` VALUES ('XTG', 'Contenedor de tanque genÃƒÂ©rico', 'Recipiente especialmente construido para el transporte de lÃƒÂ­quidos y gases a granel.');
INSERT INTO `unidades` VALUES ('XTI', 'Tierce', 'Barril de 1/6 parte de tonel');
INSERT INTO `unidades` VALUES ('XTK', 'Tanque rectangular', NULL);
INSERT INTO `unidades` VALUES ('XTL', 'Tina con tapa', NULL);
INSERT INTO `unidades` VALUES ('XTN', 'Hojalata', NULL);
INSERT INTO `unidades` VALUES ('XTO', 'Tonel', 'Barril con capacidad para 982 litros');
INSERT INTO `unidades` VALUES ('XTR', 'Maletero', NULL);
INSERT INTO `unidades` VALUES ('XTS', 'Estructura', NULL);
INSERT INTO `unidades` VALUES ('XTT', 'Bolsa de mano', 'Una gran bolsa o cesto.');
INSERT INTO `unidades` VALUES ('XTU', 'Tubo', NULL);
INSERT INTO `unidades` VALUES ('XTV', 'Tubo con boquilla', 'Tubo de plÃƒÂ¡stico, metal o cartÃƒÂ³n, provisto de una boquilla, que contiene un producto lÃƒÂ­quido o semilÃƒÂ­quido, por ejemplo silicio.');
INSERT INTO `unidades` VALUES ('XTW', 'Pallet tricapa', 'Una paleta ligera hecha de cartÃƒÂ³n ondulado resistente.');
INSERT INTO `unidades` VALUES ('XTY', 'Tanque cilÃƒÂ­ndrico', NULL);
INSERT INTO `unidades` VALUES ('XTZ', 'Tubos  con fleje/ agrupados/ armados', NULL);
INSERT INTO `unidades` VALUES ('XUC', 'Sin empaque', NULL);
INSERT INTO `unidades` VALUES ('XUN', 'Unidad', 'Tipo de paquete compuesto de un solo artÃƒÂ­culo u objeto, no especificado de otro modo como una unidad de equipo de transporte.');
INSERT INTO `unidades` VALUES ('XVA', 'Tanque', NULL);
INSERT INTO `unidades` VALUES ('XVG', 'Tanque de gas (a 1,031 mbar y 15Ã‚Â°Ã‚Â C)', NULL);
INSERT INTO `unidades` VALUES ('XVI', 'Frasco pequeÃƒÂ±o', NULL);
INSERT INTO `unidades` VALUES ('XVK', 'Paquete transportable', 'Tipo de cajÃƒÂ³n de madera.');
INSERT INTO `unidades` VALUES ('XVL', 'Contenedor para lÃƒÂ­quidos a granel', NULL);
INSERT INTO `unidades` VALUES ('XVN', 'VehÃƒÂ­culo', 'Medio de transporte autopropulsado.');
INSERT INTO `unidades` VALUES ('XVO', 'Contenedor para sÃƒÂ³lido de partÃƒÂ­culas grandes a granel (\"nÃƒÂ³dulos\")', NULL);
INSERT INTO `unidades` VALUES ('XVP', 'Envasado al vacÃƒÂ­o', NULL);
INSERT INTO `unidades` VALUES ('XVQ', 'Tanque para Gas licuado (a temperatura / presiÃƒÂ³n anormal)', NULL);
INSERT INTO `unidades` VALUES ('XVR', 'Contenedor para sÃƒÂ³lidos de partÃƒÂ­culas granulares a granel (Granos)', NULL);
INSERT INTO `unidades` VALUES ('XVS', 'Contenedor de chatarra a granel', 'Chatarra suelta o sin empaquetar transportada a granel.');
INSERT INTO `unidades` VALUES ('XVY', 'Contenedor para sÃƒÂ³lido de partÃƒÂ­culas finas a granel (\"polvos\")', NULL);
INSERT INTO `unidades` VALUES ('XWA', 'Contenedor de granel intermedio', 'Recipiente reutilizable hecho de metal, plÃƒÂ¡stico, textiles, madera o materiales compuestos utilizados para facilitar el transporte de sÃƒÂ³lidos y lÃƒÂ­quidos a granel en volÃƒÂºmenes manejables.');
INSERT INTO `unidades` VALUES ('XWB', 'Botella de mimbre', NULL);
INSERT INTO `unidades` VALUES ('XWC', 'Contenedor intermedio para grÃƒÂ¡neles y de acero', NULL);
INSERT INTO `unidades` VALUES ('XWD', 'Contenedor intermedio para grÃƒÂ¡neles y de aluminio', NULL);
INSERT INTO `unidades` VALUES ('XWF', 'Contenedor intermedio para grÃƒÂ¡neles y de metal', NULL);
INSERT INTO `unidades` VALUES ('XWG', 'Contenedor intermedio para grÃƒÂ¡neles y de acero presurizado menor a 10 kpa', NULL);
INSERT INTO `unidades` VALUES ('XWH', 'Contenedor intermedio para grÃƒÂ¡neles y de aluminio, presurizado menor a 10 kpa', NULL);
INSERT INTO `unidades` VALUES ('XWJ', 'Contenedor intermedio para grÃƒÂ¡neles y de metal con una presiÃƒÂ³n de 10 kpa', NULL);
INSERT INTO `unidades` VALUES ('XWK', 'Contenedor intermedio para grÃƒÂ¡neles y de acero para lÃƒÂ­quido', NULL);
INSERT INTO `unidades` VALUES ('XWL', 'Contenedor intermedio para grÃƒÂ¡neles y de aluminio para lÃƒÂ­quido', NULL);
INSERT INTO `unidades` VALUES ('XWM', 'Contenedor intermedio para grÃƒÂ¡neles y de metal para lÃƒÂ­quido', NULL);
INSERT INTO `unidades` VALUES ('XWN', 'Contenedor intermedio para grÃƒÂ¡neles con tejido plÃƒÂ¡stico sin capa con revestimiento', NULL);
INSERT INTO `unidades` VALUES ('XWP', 'Contenedor intermedio para grÃƒÂ¡neles con tejido plÃƒÂ¡stico y recubierto', NULL);
INSERT INTO `unidades` VALUES ('XWQ', 'Contenedor intermedio para grÃƒÂ¡neles con tejido plÃƒÂ¡stico con revestimiento', NULL);
INSERT INTO `unidades` VALUES ('XWR', 'Contenedor intermedio para grÃƒÂ¡neles con tejido plÃƒÂ¡stico, revestido y con forro', NULL);
INSERT INTO `unidades` VALUES ('XWS', 'Contenedor intermedio para grÃƒÂ¡neles con pelÃƒÂ­cula de plÃƒÂ¡stico', NULL);
INSERT INTO `unidades` VALUES ('XWT', 'Contenedor intermedio para grÃƒÂ¡neles textil sin capa / forro', NULL);
INSERT INTO `unidades` VALUES ('XWU', 'Contenedor intermedio para grÃƒÂ¡neles de madera natural con forro interior', NULL);
INSERT INTO `unidades` VALUES ('XWV', 'Contenedor intermedio para grÃƒÂ¡neles textil recubierto', NULL);
INSERT INTO `unidades` VALUES ('XWW', 'Contenedor intermedio para grÃƒÂ¡neles textil con revestimiento', NULL);
INSERT INTO `unidades` VALUES ('XWX', 'Contenedor intermedio para grÃƒÂ¡neles textil recubierto y con forro', NULL);
INSERT INTO `unidades` VALUES ('XWY', 'Contenedor intermedio para grÃƒÂ¡neles contrachapado con revestimiento interior', NULL);
INSERT INTO `unidades` VALUES ('XWZ', 'Contenedor intermedio para grÃƒÂ¡neles de madera reconstituida con revestimiento interior', NULL);
INSERT INTO `unidades` VALUES ('XXA', 'Bolsa de tejido plÃƒÂ¡stico, sin abrigo interior ni forro', NULL);
INSERT INTO `unidades` VALUES ('XXB', 'Bolsa de tejido plÃƒÂ¡stico a prueba de filtraciones', NULL);
INSERT INTO `unidades` VALUES ('XXC', 'Bolsa de tejido plÃƒÂ¡stico resistente al agua', NULL);
INSERT INTO `unidades` VALUES ('XXD', 'Bolsa con pelÃƒÂ­cula de plÃƒÂ¡stico', NULL);
INSERT INTO `unidades` VALUES ('XXF', 'Bolsa textil sin capa ni forro interior', NULL);
INSERT INTO `unidades` VALUES ('XXG', 'Bolsa textil a prueba de filtraciones', NULL);
INSERT INTO `unidades` VALUES ('XXH', 'Bolsa textil resistente al agua', NULL);
INSERT INTO `unidades` VALUES ('XXJ', 'Bolsa de papel multi-pared', NULL);
INSERT INTO `unidades` VALUES ('XXK', 'Bolsa de papel multi-pared, resistente al agua', NULL);
INSERT INTO `unidades` VALUES ('XYA', 'Empaque compuesto, recipiente de plÃƒÂ¡stico en tambor de acero', NULL);
INSERT INTO `unidades` VALUES ('XYB', 'Empaque compuesto, recipiente de plÃƒÂ¡stico en cajas de acero', NULL);
INSERT INTO `unidades` VALUES ('XYC', 'Empaque compuesto, recipiente de plÃƒÂ¡stico en tambor de aluminio', NULL);
INSERT INTO `unidades` VALUES ('XYD', 'Empaque compuesto, recipiente de plÃƒÂ¡stico en cajÃƒÂ³n de aluminio', NULL);
INSERT INTO `unidades` VALUES ('XYF', 'Empaque compuesto, recipiente de plÃƒÂ¡stico en caja de madera', NULL);
INSERT INTO `unidades` VALUES ('XYG', 'Empaque compuesto, recipiente de plÃƒÂ¡stico en tambor de madera contrachapada', NULL);
INSERT INTO `unidades` VALUES ('XYH', 'Empaque compuesto, recipiente de plÃƒÂ¡stico en caja de madera contrachapada', NULL);
INSERT INTO `unidades` VALUES ('XYJ', 'Empaque compuesto, recipiente de plÃƒÂ¡stico en tambor de fibra', NULL);
INSERT INTO `unidades` VALUES ('XYK', 'Empaque compuesto, recipiente de plÃƒÂ¡stico en caja de cartÃƒÂ³n', NULL);
INSERT INTO `unidades` VALUES ('XYL', 'Empaque compuesto, recipiente de plÃƒÂ¡stico en el tambor de plÃƒÂ¡stico', NULL);
INSERT INTO `unidades` VALUES ('XYM', 'Empaque compuesto, recipiente de plÃƒÂ¡stico en caja de plÃƒÂ¡stico sÃƒÂ³lido', NULL);
INSERT INTO `unidades` VALUES ('XYN', 'Empaque compuesto, receptÃƒÂ¡culo de vidrio en tambor de acero', NULL);
INSERT INTO `unidades` VALUES ('XYP', 'Empaque compuesto, receptÃƒÂ¡culo de vidrio en caja de cajas de acero', NULL);
INSERT INTO `unidades` VALUES ('XYQ', 'Empaque compuesto, recipiente de vidrio en tambor de aluminio', NULL);
INSERT INTO `unidades` VALUES ('XYR', 'Empaque compuesto, receptÃƒÂ¡culo de vidrio en caja de aluminio', NULL);
INSERT INTO `unidades` VALUES ('XYS', 'Empaque compuesto, recipiente de vidrio en caja de madera', NULL);
INSERT INTO `unidades` VALUES ('XYT', 'Empaque compuesto, recipiente de vidrio en tambor de madera contrachapada', NULL);
INSERT INTO `unidades` VALUES ('Xyv', 'Empaque compuesto, recipiente de vidrio en el cesto de mimbre', NULL);
INSERT INTO `unidades` VALUES ('XYW', 'Empaque compuesto, recipiente de vidrio en tambor de fibra', NULL);
INSERT INTO `unidades` VALUES ('XYX', 'Empaque compuesto, recipiente de vidrio en caja de cartÃƒÂ³n', NULL);
INSERT INTO `unidades` VALUES ('XYY', 'Empaque compuesto, recipiente de vidrio en paquete de plÃƒÂ¡stico expandible', NULL);
INSERT INTO `unidades` VALUES ('XYZ', 'Empaque compuesto, recipiente de vidrio en paquete de plÃƒÂ¡stico sÃƒÂ³lido', NULL);
INSERT INTO `unidades` VALUES ('XZA', 'Contenedor de granel intermedio, papel, multi-pared', NULL);
INSERT INTO `unidades` VALUES ('XZB', 'Bolsa grande', NULL);
INSERT INTO `unidades` VALUES ('XZC', 'Contenedor intermedio para grÃƒÂ¡neles de papel, multi-pared y resistente al agua', NULL);
INSERT INTO `unidades` VALUES ('XZD', 'Contenedor intermedio para grÃƒÂ¡neles de plÃƒÂ¡stico rÃƒÂ­gido, con equipo estructural para sÃƒÂ³lidos', NULL);
INSERT INTO `unidades` VALUES ('XZF', 'Contenedor intermedio para grÃƒÂ¡neles de plÃƒÂ¡stico rÃƒÂ­gido, autoportante para sÃƒÂ³lidos', NULL);
INSERT INTO `unidades` VALUES ('XZG', 'Contenedor intermedio para grÃƒÂ¡neles de plÃƒÂ¡stico rÃƒÂ­gido, con equipo estructural, presurizado', NULL);
INSERT INTO `unidades` VALUES ('XZH', 'Contenedor intermedio para grÃƒÂ¡neles de plÃƒÂ¡stico rÃƒÂ­gido, autoportante y presurizado', NULL);
INSERT INTO `unidades` VALUES ('XZJ', 'Contenedor intermedio para grÃƒÂ¡neles de plÃƒÂ¡stico rÃƒÂ­gido, con equipo estructural para lÃƒÂ­quidos', NULL);
INSERT INTO `unidades` VALUES ('XZK', 'Contenedor intermedio para grÃƒÂ¡neles de plÃƒÂ¡stico rÃƒÂ­gido, autoportante, lÃƒÂ­quidos', NULL);
INSERT INTO `unidades` VALUES ('XZL', 'Contenedor intermedio para grÃƒÂ¡neles, compuesto y de plÃƒÂ¡stico rÃƒÂ­gido, sÃƒÂ³lidos', NULL);
INSERT INTO `unidades` VALUES ('XZM', 'Contenedor intermedio para grÃƒÂ¡neles, compuesto y de plÃƒÂ¡stico flexible, sÃƒÂ³lidos', NULL);
INSERT INTO `unidades` VALUES ('XZN', 'Contenedor intermedio para grÃƒÂ¡neles, compuesto y de plÃƒÂ¡stico rÃƒÂ­gido, presurizado', NULL);
INSERT INTO `unidades` VALUES ('XZP', 'Contenedor intermedio para grÃƒÂ¡neles, compuesto y de plÃƒÂ¡stico flexible, presurizado', NULL);
INSERT INTO `unidades` VALUES ('XZQ', 'Contenedor intermedio para grÃƒÂ¡neles, compuesto y de plÃƒÂ¡stico rÃƒÂ­gido, lÃƒÂ­quidos', NULL);
INSERT INTO `unidades` VALUES ('XZR', 'Contenedor intermedio para grÃƒÂ¡neles, compuesto y de plÃƒÂ¡stico flexible para lÃƒÂ­quidos', NULL);
INSERT INTO `unidades` VALUES ('XZS', 'Contenedor intermedio para grÃƒÂ¡neles, compuesto', NULL);
INSERT INTO `unidades` VALUES ('XZT', 'Contenedor intermedio para grÃƒÂ¡neles con tablero de fibras', NULL);
INSERT INTO `unidades` VALUES ('XZU', 'Contenedor intermedio para grÃƒÂ¡neles flexible', NULL);
INSERT INTO `unidades` VALUES ('XZV', 'Contenedor intermedio para grÃƒÂ¡neles de metal, distinto del acero', NULL);
INSERT INTO `unidades` VALUES ('XZW', 'Contenedor intermedio para grÃƒÂ¡neles, de madera natural', NULL);
INSERT INTO `unidades` VALUES ('XZX', 'Contenedor intermedio para grÃƒÂ¡neles, de contrachapado', NULL);
INSERT INTO `unidades` VALUES ('XZY', 'Contenedor intermedio para grÃƒÂ¡neles, de madera reconstituida', NULL);
INSERT INTO `unidades` VALUES ('YDK', 'Yarda cuadrada', 'Es una unidad anglosajona de superficie de una yarda de lado. ');
INSERT INTO `unidades` VALUES ('YDQ', 'Yarda cÃƒÂºbica', NULL);
INSERT INTO `unidades` VALUES ('YL', 'Cien yardas lineales', NULL);
INSERT INTO `unidades` VALUES ('YRD', 'Yarda', 'Es la unidad de longitud bÃƒÂ¡sica en los sistemas de medida utilizados en Estados Unidos, PanamÃƒÂ¡ y Reino Unido.\r\nEquivale a 91.4 centÃƒÂ­metros.');
INSERT INTO `unidades` VALUES ('YT', 'Diez yardas', NULL);
INSERT INTO `unidades` VALUES ('Z1', 'Furgoneta', NULL);
INSERT INTO `unidades` VALUES ('Z11', 'Contenedor colgante ', 'Unidad de conteo que define el nÃƒÂºmero de contenedores colgantes.');
INSERT INTO `unidades` VALUES ('Z5', 'Arrastre', NULL);
INSERT INTO `unidades` VALUES ('Z6', 'Punto de conferencia', NULL);
INSERT INTO `unidades` VALUES ('Z8', 'PÃƒÂ¡gina de noticias', NULL);
INSERT INTO `unidades` VALUES ('ZP', 'PÃƒÂ¡ginas', 'Unidad de conteo que define el nÃƒÂºmero de pÃƒÂ¡ginas');
INSERT INTO `unidades` VALUES ('ZZ', 'Mutuamente definido', 'Unidad de medida acordada en comÃƒÂºn entre dos o mÃƒÂ¡s partes');

-- ----------------------------
-- Table structure for usuarios
-- ----------------------------
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios`  (
  `id_usuarios` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_completo_usuarios` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `nombre_usuarios` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `permiso_usuarios` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT 'caja',
  `pass_usuarios` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `estatus_usuarios` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT 'Activo',
  PRIMARY KEY (`id_usuarios`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
INSERT INTO `usuarios` VALUES (1, 'admin', 'admin', 'administrador', '12345', 'Activo');
INSERT INTO `usuarios` VALUES (2, 'cajero', 'cajero', 'caja', 'caja', 'Activo');

-- ----------------------------
-- Table structure for ventas
-- ----------------------------
DROP TABLE IF EXISTS `ventas`;
CREATE TABLE `ventas`  (
  `id_ventas` int(11) NOT NULL AUTO_INCREMENT,
  `id_turnos` int(255) NULL DEFAULT NULL,
  `id_usuarios` int(11) NULL DEFAULT NULL,
  `fecha_ventas` date NULL DEFAULT NULL,
  `subtotal_ventas` float(11, 2) NULL DEFAULT NULL,
  `comision` float(10, 2) NULL DEFAULT NULL,
  `descuento_ventas` float(11, 2) NULL DEFAULT NULL,
  `total_ventas` float(11, 2) NULL DEFAULT NULL,
  `hora_ventas` time NULL DEFAULT NULL,
  `datos_cancelacion` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `estatus_ventas` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `facturado` tinyint(1) NULL DEFAULT 0,
  `cambio_ventas` float(255, 2) NULL DEFAULT NULL,
  `pagocon_ventas` float(255, 2) NULL DEFAULT NULL,
  `iva_ventas` int(11) NULL DEFAULT NULL,
  `articulos` int(10) NULL DEFAULT NULL,
  `tarjeta` decimal(10, 2) NULL DEFAULT 0.00,
  `efectivo` decimal(10, 2) NULL DEFAULT NULL,
  `ganancia_ventas` float(10, 2) NULL DEFAULT NULL,
  `nombre_cliente` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `forma_pago` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_ventas`) USING BTREE,
  INDEX `id_ventas`(`id_ventas`) USING BTREE,
  INDEX `fecha_ventas`(`fecha_ventas`) USING BTREE,
  INDEX `estatus_ventas`(`estatus_ventas`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ventas
-- ----------------------------
INSERT INTO `ventas` VALUES (1, 21, 1, '2020-12-09', 12.50, 0.00, NULL, 12.50, '20:53:43', 'Usuario admin, <br>\r\n		Fecha: 09/12/2020, <br>\r\n		Hora: 20:54:52, <br>\r\n		Motivo: ', 'CANCELADO', 0, 187.50, 200.00, NULL, 1, 0.00, 12.50, NULL, 'CLIENTE 1', 'efectivo');
INSERT INTO `ventas` VALUES (2, 21, 1, '2020-12-09', 12.50, 0.00, NULL, 12.50, '20:53:51', NULL, 'PAGADO', 0, 0.00, 12.50, NULL, 1, 0.00, 12.50, NULL, 'CLIENTE 1', 'efectivo');
INSERT INTO `ventas` VALUES (3, 21, 48, '2020-12-11', 12.50, 0.00, NULL, 12.50, '15:31:35', NULL, 'PAGADO', 0, 0.00, 12.50, NULL, 1, 0.00, 12.50, NULL, 'CLIENTE 1', 'efectivo');

-- ----------------------------
-- Table structure for ventas_detalle
-- ----------------------------
DROP TABLE IF EXISTS `ventas_detalle`;
CREATE TABLE `ventas_detalle`  (
  `id_ventas_detalle` int(11) NOT NULL AUTO_INCREMENT,
  `id_ventas` int(11) NOT NULL,
  `id_productos` int(11) NOT NULL,
  `unidad_productos` varchar(10) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `cantidad` float(10, 3) NULL DEFAULT NULL,
  `importe` decimal(10, 2) NULL DEFAULT NULL,
  `descripcion` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `descuento` decimal(10, 2) NULL DEFAULT NULL,
  `ganancia` decimal(10, 2) NULL DEFAULT NULL,
  `precio` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id_ventas_detalle`, `id_productos`, `id_ventas`) USING BTREE,
  INDEX `id_ventas`(`id_ventas`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ventas_detalle
-- ----------------------------
INSERT INTO `ventas_detalle` VALUES (1, 1, 1, '', 1.000, 12.50, 'PRODUCTO PRUEBA', NULL, 2.50, 12.50);
INSERT INTO `ventas_detalle` VALUES (2, 2, 1, '', 1.000, 12.50, 'PRODUCTO PRUEBA', NULL, 2.50, 12.50);
INSERT INTO `ventas_detalle` VALUES (3, 3, 1, '', 1.000, 12.50, 'PRODUCTO PRUEBA', NULL, 2.50, 12.50);

SET FOREIGN_KEY_CHECKS = 1;
