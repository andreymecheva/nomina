-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-01-2015 a las 22:30:55
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `nomina`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE IF NOT EXISTS `empleado` (
  `ide_emp` int(11) NOT NULL AUTO_INCREMENT,
  `nom_emp` varchar(45) DEFAULT NULL,
  `cedula` int(11) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL,
  `mes` varchar(45) DEFAULT NULL,
  `an` int(11) DEFAULT NULL,
  `contrato` varchar(45) DEFAULT NULL,
  `salario` int(11) DEFAULT NULL,
  `cargo` varchar(45) DEFAULT NULL,
  `clave` varchar(45) DEFAULT NULL,
  `ciudad` varchar(45) DEFAULT NULL,
  `empresa_ide_emp` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ide_emp`),
  KEY `fk_empleado_empresa_idx` (`empresa_ide_emp`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=185 ;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`ide_emp`, `nom_emp`, `cedula`, `dia`, `mes`, `an`, `contrato`, `salario`, `cargo`, `clave`, `ciudad`, `empresa_ide_emp`) VALUES
(2, 'ADALBERTO LOPEZ ROMERO', 79995323, 16, 'Agosto', 2014, 'indefinido', 1019700, 'TECNICO DE MANTENIMIENTO ', 'S7WDC020X', 'BOGOTÁ', 1),
(3, 'ALEJANDRO MANUEL SANCHEZ MARTINEZ', 94384721, 1, 'Diciembre', 2012, 'indefinido', 2183600, 'JEFE DE PLANTA', 'P1XUQ841J', 'CALI', 1),
(4, 'ALEJANDRO RAMIREZ FLECHAS', 80815464, 3, 'Junio ', 2014, 'indefinido', 3800000, 'LIDER DE PLANEACION FINANCIERA', 'M6SUL746S', 'BOGOTÁ', 1),
(5, 'ANADELINA DIAZ ARIZA', 53082176, 16, 'Septiembre', 2014, 'fijo a un año', 616000, 'VENDEDOR SERVICIOS EDS', 'V3KJE734J', 'BOGOTÁ', 1),
(6, 'ANCISAR RUBIANO PUERTAS', 14396991, 19, 'Septiembre', 2011, 'indefinido', 1091800, 'ANALISTA LABORATORIO', 'I7NVB266D', 'IBAGUE', 1),
(7, 'ANDREA CATALINA OSSA VILLEGAS', 1030589742, 16, 'Abril', 2014, 'indefinido', 1236000, 'DISEÑADOR', 'D4TIB052T', 'BOGOTÁ', 1),
(8, 'ANDREA DEL PILAR PRADA', 52813425, 1, 'Octubre', 2014, 'indefinido', 1000000, 'FACTURADORA COMBUSTIBLES', 'W5XGZ387H', 'BOGOTÁ', 1),
(9, 'ANDRES ALVAREZ LOZANO', 16758170, 8, 'Agosto', 2012, 'indefinido', 5665000, 'ASESOR JURIDICO SENIOR', 'Z5DTK536L', 'CALI', 1),
(10, 'ANDRES FELIPE SANABRIA MERCHAN', 80156745, 1, 'Septiembre', 2009, 'indefinido', 1310160, 'ASISTENTE COMPRAS', 'T2XKA145X', 'BOGOTÁ', 1),
(11, 'ANGELICA MARIA CAPERA CABRERA', 1110535385, 16, 'Julio', 2013, 'indefinido', 634480, 'AUXILIAR LOGISTICA', 'Z4XJM152M', 'PLANADAS', 1),
(12, 'ANGELICA SANCHEZ LA TORRE', 1070588320, 16, 'Septiembre', 2014, 'fijo a un año', 616000, 'VENDEDOR SERVICIOS EDS', 'Q9HYS881V', 'GIRARDOT', 1),
(13, 'ANGIE LIZZET AVILAN RODRIGUEZ', 1075652981, 7, 'ENERO', 2014, 'Indefinido', 1648000, 'ANALISTA DE GESTION HUMANA', 'MDH75JD2', 'ZIPAQUIRA', 1),
(14, 'ARIANA MARGOT PAREJA DE LA HOZ', 52356465, 11, 'Noviembre', 2011, 'indefinido', 3002450, 'ANALISTA CONTABLE', 'E1VJH650U', 'BOGOTÁ', 1),
(15, 'ARQUIMEDES SEDANO GONZALEZ', 13707785, 1, 'Noviembre', 2011, 'indefinido', 873440, 'CONDUCTOR', 'B1HDW529E', 'VELEZ', 1),
(16, 'BERNARDO AUGUSTO SUAREZ CHAVEZ', 79653265, 1, 'Abril', 2011, 'indefinido', 2183600, 'JEFE LOGISTICA', 'X0DBU573Q', 'BOGOTÁ', 1),
(17, 'BRUCE ANDREY SANCHEZ RIVAS', 1110530326, 5, 'Enero', 2015, 'Indefinido', 644350, 'OPERARIO', 'HNJ562PKD', 'IBAGUE', 1),
(18, 'CARLOS MARIO CASTILLO VALDERRAMA', 79902028, 1, 'Mayo ', 2008, 'indefinido', 8008000, 'DIRECTOR CONTABLE', 'P9KIV245T', 'BOGOTÁ', 1),
(19, 'CARMENZA TRIANA TRIANA', 52319596, 16, 'Agosto', 2014, 'indefinido', 1200000, 'FACTURADOR COMBUSTIBLES - COME', 'W6LHA558M', 'BOGOTÁ', 1),
(20, 'CAROL XIMENA ORTIZ SANTANA', 28550706, 1, 'Noviembre', 2013, 'indefinido', 1545000, 'LIDER DE FACTURACION', 'W4YIV014Q', 'IBAGUE', 1),
(21, 'CINDY STEFANNY JARAMILLO SALCEDO', 1110492299, 6, 'Mayo ', 2014, 'indefinido', 824000, 'AUXILIAR DE FACTURACION Y SAC', 'E5LOE197E', 'IBAGUE', 1),
(22, 'CRISTIAN CAMILO OSPINA DUQUE', 1110462958, 1, 'Noviembre', 2011, 'indefinido', 750000, 'AUXILIAR DE INVENTARIOS', 'L4JGP786S', 'IBAGUE', 1),
(23, 'DANIEL FELIPE DIAZ SANCHEZ', 1110569916, 16, 'Noviembre', 2014, 'Indefinido', 644350, 'AIXILIAR CONTABLE', 'XJO89KLS', 'IBAGUE', 1),
(24, 'DANIELA ALEXANDRA CHICA MORALES', 1110567125, 1, 'Octubre', 2014, 'indefinido', 700000, 'AUXILIAR NOMINA', 'T5JQO288L', 'IBAGUE', 1),
(25, 'DANILO FELIX QUIROZ ANGULO', 72276182, 2, 'Mayo ', 2014, 'indefinido', 1751000, 'INGENIERO DE INFRAESTRUCTURA ', 'R7IOM788R', 'BARRANQUILLA', 1),
(26, 'DIANA MARCELA GONZALEZ ORDOÑEZ', 1020736773, 8, 'Julio', 2013, 'indefinido', 1800000, 'ANALISTA DE COMUNICACIONES', 'C5TFH222S', 'BOGOTÁ', 1),
(27, 'DIANA PATRICIA GOMEZ RODRIGUEZ', 1016000793, 3, 'Diciembre', 2012, 'indefinido', 1854000, 'ASISTENTE COMBUSTIBLES', 'U1ZYP460M', 'BOGOTÁ', 1),
(28, 'DIEGO ARMANDO ARDILA SUA', 1032365884, 1, 'Noviembre', 2011, 'indefinido', 2500000, 'DISEÑADOR SENIOR', 'I1BCH335J', 'BOGOTÁ', 1),
(29, 'DINA LUZ CASTRO AREVALO', 52168278, 3, 'Febrero ', 2014, 'indefinido', 2000000, 'JEFE DE COMPRAS', 'X4OOR122P', 'BOGOTÁ', 1),
(30, 'DOLLY MALLERLY SUAREZ VACA', 38140495, 1, 'Septiembre', 2012, 'indefinido', 824000, 'AUXILIAR DE FACTURACION Y SAC', 'H3PXY381P', 'IBAGUE', 1),
(31, 'EDGAR ARIZA RODRIGUEZ', 13957423, 2, 'Septiembre', 2009, 'indefinido', 3800000, 'JEFE DE SISTEMAS', 'J6ITE915Z', 'VELEZ', 1),
(32, 'EDINSON FERNANDEZ MORENO', 1110472327, 1, 'Noviembre', 2011, 'indefinido', 764260, 'ANALISTA LABORATORIO JR.', 'O5YLU093H', 'IBAGUE', 1),
(33, 'ERICA YDALVA OSSA BENITEZ', 1128407165, 16, 'Septiembre', 2014, 'fijo a un año', 616000, 'VENDEDOR SERVICIOS EDS', 'A2ZWG768H', 'MEDELLIN', 1),
(34, 'FELIPE ANDRES BOADA PEREZ', 1110448005, 16, 'Abril', 2013, 'indefinido', 616000, 'AUXILIAR DE OPERACIONES', 'M1YSZ650Y', 'IBAGUE', 1),
(35, 'HAMILTON JOHAN VANEGAS SILVA', 1110486766, 7, 'Enero', 2014, 'indefinido', 616000, 'AUXILIAR DE BODEGA', 'X7RXH885G', 'IBAGUE', 1),
(36, 'HECTOR ANCISAR FORERO CASTRO', 5828047, 16, 'Febrero ', 2013, 'indefinido', 616000, 'OPERARIO', 'C2KVI144L', 'IBAGUE', 1),
(37, 'HECTOR DANIEL LONDOÑO BARRETO', 14297437, 7, 'Enero', 2014, 'indefinido', 873440, 'AUXILIAR DE CARTERA', 'Q5DMU364B', 'IBAGUE', 1),
(38, 'HECTOR FABIAN MACHADO MORALES', 1105678570, 17, 'Diciembre', 2012, 'indefinido', 764260, 'ANALISTA LABORATORIO JR.', 'O0ENQ900P', 'ESPINAL', 1),
(39, 'INGRID LORENA TRIANA RAMIREZ', 1110524173, 1, 'Agosto', 2014, 'indefinido', 1100000, 'AUXILIAR CONTABLE ', 'C7ETC683W', 'IBAGUE', 1),
(40, 'JAIME ALBERTO VELASQUEZ GIRALDO', 93373932, 10, 'Octubre', 2011, 'indefinido', 873440, 'CONDUCTOR', 'B0YCP670Y', 'IBAGUE', 1),
(41, 'JAIR ORLANDO CASTILLO JIMENEZ', 79827546, 16, 'Octubre', 2014, 'fijo a un año', 848000, 'CONDUCTOR ', 'O8TRL729A', 'BOGOTÁ', 1),
(42, 'JAIRO  MARROQUIN RODRIGUEZ', 80062667, 1, 'Septiembre', 2009, 'indefinido', 1091800, 'LIDER DE MEZCLA', 'S8UZB341J', 'BOGOTÁ', 1),
(43, 'JAVIER REINALDO LASPRILLA JIMENEZ', 9531214, 13, 'Abril', 2011, 'indefinido', 6004900, 'DIRECTOR DE OPERACIONES COMBUS', 'N4RYP144C', 'SOGAMOSO', 1),
(44, 'JOAQUIN ORLANDO QUIROGA CASTRO', 93369979, 16, 'Febrero ', 2013, 'indefinido', 658428, 'AUXILIAR DE BODEGA', 'Y1HGA389E', 'IBAGUE', 1),
(45, 'JOHN FREDY CUERVO RIVERA', 4514114, 16, 'Septiembre', 2014, 'fijo a un año', 616000, 'VENDEDOR SERVICIOS EDS', 'H3TCD695X', 'PEREIRA', 1),
(46, 'JONATHAN GUZMAN DIAZ', 14396720, 1, 'Noviembre', 2011, 'indefinido', 873440, 'FACILITADOR DE LINEA', 'I0VJX193C', 'IBAGUE', 1),
(47, 'JORGE ANDRES ARIAS CAMARGO', 1069719463, 1, 'Septiembre', 2012, 'indefinido', 1287500, 'ANALISTA DE SISTEMAS JR', 'E6WHH188A', 'FUSAGASUGA', 1),
(48, 'JOSE ALEJANDRO RODRIGUEZ RIBERO', 91080356, 3, 'Febrero ', 2014, 'indefinido', 3000000, 'ASESOR JURIDICO JUNIOR', 'Y3IYD024T', 'SAN GIL', 1),
(49, 'JOSE MANUEL ARTURO DIAZ', 1109381456, 16, 'Agosto', 2014, 'indefinido', 616000, 'OPERARIO ', 'D5HNY957K', 'LERIDA', 1),
(50, 'JUAN CAMILO CRUZ PEDRAZA', 1110536697, 17, 'Septiembre', 2012, 'indefinido', 750000, 'AUXILIAR DE INVENTARIOS', 'U2SEE586C', 'IBAGUE', 1),
(51, 'JUAN GUILLERMO PEREZ PEREZ', 14295690, 1, 'Noviembre', 2011, 'indefinido', 681294, 'AUXILIAR DE BODEGA', 'H5QJB395Y', 'IBAGUE', 1),
(52, 'JUAN PABLO ARBOLEDA MENDEZ', 71387504, 9, 'Mayo', 2014, 'indefinido', 616000, 'VENDEDOR SERVICIOS EDS', 'D4PRB348T', 'MEDELLIN', 1),
(53, 'JULIAN ANDRES ÑUSTES PEREZ', 2230563, 16, 'Febrero ', 2013, 'indefinido', 616000, 'OPERARIO', 'M5BJQ673P', 'IBAGUE', 1),
(54, 'JULIAN ANTIA MORA', 1110459676, 1, 'Octubre', 2014, 'indefinido', 1200000, 'INGENIERO DE MANTENIMIENTO ', 'N1MCT355O', 'IBAGUE', 1),
(55, 'JULIO CESAR ROA ROJAS', 93377974, 1, 'Abril', 2014, 'indefinido', 616000, 'OPERARIO ', 'O1MCH130G', 'IBAGUE', 1),
(56, 'LEXIS ANGELICA LOPEZ SEGOVIA', 28555010, 10, 'Marzo', 2014, 'indefinido', 616000, 'ASISTENTE SEDE SUR', 'P2TUE501F', 'IBAGUE', 1),
(57, 'LILIA ANDREA MOYANO GARCIA', 46451248, 3, 'Septiembre', 2008, 'indefinido', 1854000, 'QUIMICO LABORATORIO', 'B8NLH294V', 'DUITAMA', 1),
(58, 'LIZETH XIMENA CASTAÑEDA HINESTROZA', 1030609734, 1, 'Diciembre', 2012, 'indefinido', 709670, 'RECEPCIONISTA', 'D5RCB702T', 'BOGOTÁ', 1),
(59, 'LUIS ALFONSO OSORIO LARGO', 1112301246, 1, 'Agosto', 2014, 'fijo a un año', 616000, 'VENDEDOR SERVICIOS EDS', 'U1JSN356O', 'RIOFRIO', 1),
(60, 'LUIS FERNANDO CAMPOS ESCOBAR', 1110507897, 20, 'Agosto', 2013, 'indefinido', 772500, 'AUXILIAR MERCADEO', 'X8ZFQ637H', 'IBAGUE', 1),
(61, 'LUIS FERNEY BARRAGAN CANDELA', 14396665, 16, 'Agosto', 2014, 'indefinido', 616000, 'OPERARIO ', 'U7CYM234Z', 'IBAGUE', 1),
(62, 'LUIS HECTOR RODRIGUEZ NIETO', 14296304, 16, 'Febrero ', 2013, 'indefinido', 681294, 'AUX SERVICIOS GENERALES', 'S8BZQ514R', 'IBAGUE', 1),
(63, 'MAGDA CONSTANZA GUZMAN GAVIRIA', 65766003, 1, 'Noviembre', 2011, 'indefinido', 681294, 'AUX SERVICIOS GENERALES', 'S1VGO790S', 'IBAGUE', 1),
(64, 'MARIA ALEJANDRA MOLINA GOMEZ', 1110476609, 1, 'Noviembre', 2011, 'indefinido', 1236000, 'LIDER DE TESORERIA', 'U2YUB544G', 'IBAGUE', 1),
(65, 'MARIA ALEJANDRA PALMA VALDERRAMA', 1110551332, 16, 'Junio ', 2013, 'indefinido', 824000, 'AUXILIAR DE FACTURACION Y SAC', 'U6ZFU295F', 'IBAGUE', 1),
(66, 'MERY QUIROGA GOMEZ', 39546289, 1, 'Febrero ', 2009, 'indefinido', 681294, 'AUX SERVICIOS GENERALES', 'Y6OUQ261M', 'BOGOTÁ', 1),
(67, 'MIGUEL ANGEL CHACON TORRES', 80255820, 16, 'Septiembre', 2014, 'fijo a un año', 616000, 'VENDEDOR SERVICIOS EDS', 'F8JGQ674B', 'BOGOTÁ', 1),
(68, 'MILDRED YARETLY RIAPIRA CUBILLOS', 53164962, 22, 'Julio', 2013, 'indefinido', 1545000, 'LIDER DE CREDITO Y CARTERA', 'I6PLA283R', 'BOGOTÁ', 1),
(69, 'MILENA ARDILA CARVAJAL', 1022345651, 16, 'Octubre', 2014, 'indefinido', 1133000, 'ADMINISTRADORA GULF EXPRESS ', 'K5JRK013O', 'BOGOTÁ', 1),
(70, 'MONICA ALEJANDRA VARGAS INFANTE', 1110462977, 1, 'Octubre', 2014, 'indefinido', 1339000, 'ASISTENTE SGC ', 'T8TZD922M', 'IBAGUE', 1),
(71, 'NELSON FABIAN ACHIPIZ GARCIA', 83227221, 1, 'Enero', 2014, 'indefinido', 2500000, 'ANALISTA DE PROYECTOS ', 'A5FIG359G', 'EL PITAL', 1),
(72, 'OSCAR ALBEIRO MORALES PARRA', 10032912, 16, 'Septiembre', 2014, 'fijo a un año', 616000, 'VENDEDOR SERVICIOS EDS', 'Z4ZUF503A', 'PEREIRA', 1),
(73, 'OSCAR FARID OLMOS BRICEÑO', 93410375, 16, 'Febrero ', 2013, 'indefinido', 616000, 'OPERARIO', 'F7WCH188D', 'IBAGUE', 1),
(74, 'OSWALDO CARDENAS SALCEDO', 91355221, 22, 'Febrero ', 2011, 'indefinido', 873440, 'CONDUCTOR', 'Q4MST091E', 'PIEDECUESTA', 1),
(75, 'PAOLA ANDREA AVENDAÑO TRUJILLO', 1019016160, 4, 'Junio ', 2013, 'indefinido', 1236000, 'DISEÑADOR', 'X8PYF680R', 'BOGOTÁ', 1),
(76, 'RICARDO ADRIAN ISAZA ZAPATA', 1088261440, 16, 'Septiembre', 2014, 'fijo a un año', 616000, 'VENDEDOR SERVICIOS EDS', 'R7XSF661Y', 'PEREIRA', 1),
(77, 'RICARDO AUGUSTO MENDEZ LOPEZ', 6024959, 1, 'Septiembre', 2014, 'indefinido', 3000000, 'AUDITOR', 'X6QYP581X', 'VENADILLO', 1),
(78, 'RONAL ALEJANDRO FONTECHA MARTINEZ', 80736810, 17, 'Enero', 2014, 'indefinido', 616000, 'OPERARIO', 'K3EWT119R', 'BOGOTÁ', 1),
(79, 'RUBEN ALIRIO HERRERA MARTINEZ', 1110551383, 25, 'Enero', 2014, 'indefinido', 824000, 'AUXILIAR DE FACTURACION Y SAC', 'Y3IRV774O', 'IBAGUE', 1),
(80, 'SANDRA PATRICIA RODRIGUEZ MONTENEGRO', 1110479137, 7, 'Marzo', 2012, 'indefinido', 1700000, 'LIDER DE IMPUESTOS', 'V9IWD611L', 'IBAGUE', 1),
(81, 'SONIA JOHANA MOYA CORTES', 52699726, 22, 'Julio', 2013, 'indefinido', 1133000, 'ANALISTA RETAIL', 'P2UBA432Z', 'BOGOTÁ', 1),
(82, 'URIEL HUMBERTO JUSTINICO', 1110504851, 11, 'Abril', 2011, 'indefinido', 873440, 'CONDUCTOR', 'I4FZB871V', 'IBAGUE', 1),
(83, 'VICTOR MANUEL FUNQUEN RAMIREZ', 79821848, 1, 'Junio ', 2012, 'indefinido', 873440, 'CONDUCTOR', 'I4GKX953O', 'BOGOTÁ', 1),
(84, 'VIVIAN GISELLE SOLINA PAEZ', 52796736, 1, 'Noviembre', 2005, 'indefinido', 3930480, 'JEFE ADMINISTRATIVA', 'R8FQD991Y', 'IBAGUE', 1),
(85, 'WILLIAM ALBER QUIÑONEZ TORRES', 1110476871, 16, 'Mayo ', 2014, 'indefinido', 616000, 'AUXILIAR DE BODEGA ', 'E5HSX420C', 'IBAGUE', 1),
(86, 'WILMAR GIOVANNY TAMAYO HERRERA', 93410735, 1, 'Diciembre', 2012, 'indefinido', 1091800, 'LIDER DE BODEGA', 'G8KYN611E', 'IBAGUE', 1),
(87, 'YEFFERSON MONTAÑO PANAMEÑO', 1111753757, 7, 'Enero', 2014, 'indefinido', 616000, 'OPERARIO', 'A7MKJ356V', 'IBAGUE', 1),
(88, 'YESENIA MARCELA OSPINA LARA', 1110465722, 7, 'Enero', 2014, 'indefinido', 1100000, 'AUXILIAR CONTABLE', 'I8LIS633I', 'IBAGUE', 1),
(89, 'YINETH SIRLEY MOSQUERA CORREA', 31309666, 16, 'Octubre', 2014, 'indefinido', 616000, 'MERCADERISTA ', 'U1ARF175U', 'CALI', 1),
(90, 'YOANA YESENIA DIAZ GUZMAN', 52706518, 22, 'Mayo ', 2006, 'indefinido', 5000000, 'DIRECTORA DE GESTION HUMANA', 'R5UOB733W', 'BOGOTÁ', 1),
(91, 'ADALBERTO LOPEZ ROMERO', 79995323, 16, 'Agosto', 2014, 'indefinido', 1019700, 'TECNICO DE MANTENIMIENTO ', 'S7WDC020X', 'BOGOTÁ', 1),
(92, 'ALEJANDRO MANUEL SANCHEZ MARTINEZ', 94384721, 1, 'Diciembre', 2012, 'indefinido', 2183600, 'JEFE DE PLANTA', 'P1XUQ841J', 'CALI', 1),
(93, 'ALEJANDRO RAMIREZ FLECHAS', 80815464, 3, 'Junio ', 2014, 'indefinido', 3800000, 'LIDER DE PLANEACION FINANCIERA', 'M6SUL746S', 'BOGOTÁ', 1),
(94, 'ANADELINA DIAZ ARIZA', 53082176, 16, 'Septiembre', 2014, 'fijo a un año', 616000, 'VENDEDOR SERVICIOS EDS', 'V3KJE734J', 'BOGOTÁ', 1),
(95, 'ANCISAR RUBIANO PUERTAS', 14396991, 19, 'Septiembre', 2011, 'indefinido', 1091800, 'ANALISTA LABORATORIO', 'I7NVB266D', 'IBAGUE', 1),
(96, 'ANDREA CATALINA OSSA VILLEGAS', 1030589742, 16, 'Abril', 2014, 'indefinido', 1236000, 'DISEÑADOR', 'D4TIB052T', 'BOGOTÁ', 1),
(97, 'ANDREA DEL PILAR PRADA', 52813425, 1, 'Octubre', 2014, 'indefinido', 1000000, 'FACTURADORA COMBUSTIBLES', 'W5XGZ387H', 'BOGOTÁ', 1),
(98, 'ANDRES ALVAREZ LOZANO', 16758170, 8, 'Agosto', 2012, 'indefinido', 5665000, 'ASESOR JURIDICO SENIOR', 'Z5DTK536L', 'CALI', 1),
(99, 'ANDRES FELIPE SANABRIA MERCHAN', 80156745, 1, 'Septiembre', 2009, 'indefinido', 1310160, 'ASISTENTE COMPRAS', 'T2XKA145X', 'BOGOTÁ', 1),
(100, 'ANGELICA MARIA CAPERA CABRERA', 1110535385, 16, 'Julio', 2013, 'indefinido', 634480, 'AUXILIAR LOGISTICA', 'Z4XJM152M', 'PLANADAS', 1),
(101, 'ANGELICA SANCHEZ LA TORRE', 1070588320, 16, 'Septiembre', 2014, 'fijo a un año', 616000, 'VENDEDOR SERVICIOS EDS', 'Q9HYS881V', 'GIRARDOT', 1),
(102, 'ANGIE LIZZET AVILAN RODRIGUEZ', 1075652981, 7, 'ENERO', 2014, 'Indefinido', 1648000, 'ANALISTA DE GESTION HUMANA', 'MDH75JD2', 'ZIPAQUIRA', 1),
(103, 'ARIANA MARGOT PAREJA DE LA HOZ', 52356465, 11, 'Noviembre', 2011, 'indefinido', 3002450, 'ANALISTA CONTABLE', 'E1VJH650U', 'BOGOTÁ', 1),
(104, 'ARQUIMEDES SEDANO GONZALEZ', 13707785, 1, 'Noviembre', 2011, 'indefinido', 873440, 'CONDUCTOR', 'B1HDW529E', 'VELEZ', 1),
(105, 'BERNARDO AUGUSTO SUAREZ CHAVEZ', 79653265, 1, 'Abril', 2011, 'indefinido', 2183600, 'JEFE LOGISTICA', 'X0DBU573Q', 'BOGOTÁ', 1),
(106, 'BRUCE ANDREY SANCHEZ RIVAS', 1110530326, 5, 'Enero', 2015, 'Indefinido', 644350, 'OPERARIO', 'HNJ562PKD', 'IBAGUE', 1),
(107, 'CARLOS MARIO CASTILLO VALDERRAMA', 79902028, 1, 'Mayo ', 2008, 'indefinido', 8008000, 'DIRECTOR CONTABLE', 'P9KIV245T', 'BOGOTÁ', 1),
(108, 'CARMENZA TRIANA TRIANA', 52319596, 16, 'Agosto', 2014, 'indefinido', 1200000, 'FACTURADOR COMBUSTIBLES - COME', 'W6LHA558M', 'BOGOTÁ', 1),
(109, 'CAROL XIMENA ORTIZ SANTANA', 28550706, 1, 'Noviembre', 2013, 'indefinido', 1545000, 'LIDER DE FACTURACION', 'W4YIV014Q', 'IBAGUE', 1),
(110, 'CINDY STEFANNY JARAMILLO SALCEDO', 1110492299, 6, 'Mayo ', 2014, 'indefinido', 824000, 'AUXILIAR DE FACTURACION Y SAC', 'E5LOE197E', 'IBAGUE', 1),
(111, 'CRISTIAN CAMILO OSPINA DUQUE', 1110462958, 1, 'Noviembre', 2011, 'indefinido', 750000, 'AUXILIAR DE INVENTARIOS', 'L4JGP786S', 'IBAGUE', 1),
(112, 'DANIEL FELIPE DIAZ SANCHEZ', 1110569916, 16, 'Noviembre', 2014, 'Indefinido', 644350, 'AIXILIAR CONTABLE', 'XJO89KLS', 'IBAGUE', 1),
(113, 'DANIELA ALEXANDRA CHICA MORALES', 1110567125, 1, 'Octubre', 2014, 'indefinido', 700000, 'AUXILIAR NOMINA', 'T5JQO288L', 'IBAGUE', 1),
(114, 'DANILO FELIX QUIROZ ANGULO', 72276182, 2, 'Mayo ', 2014, 'indefinido', 1751000, 'INGENIERO DE INFRAESTRUCTURA ', 'R7IOM788R', 'BARRANQUILLA', 1),
(115, 'DIANA MARCELA GONZALEZ ORDOÑEZ', 1020736773, 8, 'Julio', 2013, 'indefinido', 1800000, 'ANALISTA DE COMUNICACIONES', 'C5TFH222S', 'BOGOTÁ', 1),
(116, 'DIANA PATRICIA GOMEZ RODRIGUEZ', 1016000793, 3, 'Diciembre', 2012, 'indefinido', 1854000, 'ASISTENTE COMBUSTIBLES', 'U1ZYP460M', 'BOGOTÁ', 1),
(117, 'DIEGO ARMANDO ARDILA SUA', 1032365884, 1, 'Noviembre', 2011, 'indefinido', 2500000, 'DISEÑADOR SENIOR', 'I1BCH335J', 'BOGOTÁ', 1),
(118, 'DINA LUZ CASTRO AREVALO', 52168278, 3, 'Febrero ', 2014, 'indefinido', 2000000, 'JEFE DE COMPRAS', 'X4OOR122P', 'BOGOTÁ', 1),
(119, 'DOLLY MALLERLY SUAREZ VACA', 38140495, 1, 'Septiembre', 2012, 'indefinido', 824000, 'AUXILIAR DE FACTURACION Y SAC', 'H3PXY381P', 'IBAGUE', 1),
(120, 'EDGAR ARIZA RODRIGUEZ', 13957423, 2, 'Septiembre', 2009, 'indefinido', 3800000, 'JEFE DE SISTEMAS', 'J6ITE915Z', 'VELEZ', 1),
(121, 'EDINSON FERNANDEZ MORENO', 1110472327, 1, 'Noviembre', 2011, 'indefinido', 764260, 'ANALISTA LABORATORIO JR.', 'O5YLU093H', 'IBAGUE', 1),
(122, 'ERICA YDALVA OSSA BENITEZ', 1128407165, 16, 'Septiembre', 2014, 'fijo a un año', 616000, 'VENDEDOR SERVICIOS EDS', 'A2ZWG768H', 'MEDELLIN', 1),
(123, 'FELIPE ANDRES BOADA PEREZ', 1110448005, 16, 'Abril', 2013, 'indefinido', 616000, 'AUXILIAR DE OPERACIONES', 'M1YSZ650Y', 'IBAGUE', 1),
(124, 'HAMILTON JOHAN VANEGAS SILVA', 1110486766, 7, 'Enero', 2014, 'indefinido', 616000, 'AUXILIAR DE BODEGA', 'X7RXH885G', 'IBAGUE', 1),
(125, 'HECTOR ANCISAR FORERO CASTRO', 5828047, 16, 'Febrero ', 2013, 'indefinido', 616000, 'OPERARIO', 'C2KVI144L', 'IBAGUE', 1),
(126, 'HECTOR DANIEL LONDOÑO BARRETO', 14297437, 7, 'Enero', 2014, 'indefinido', 873440, 'AUXILIAR DE CARTERA', 'Q5DMU364B', 'IBAGUE', 1),
(127, 'HECTOR FABIAN MACHADO MORALES', 1105678570, 17, 'Diciembre', 2012, 'indefinido', 764260, 'ANALISTA LABORATORIO JR.', 'O0ENQ900P', 'ESPINAL', 1),
(128, 'INGRID LORENA TRIANA RAMIREZ', 1110524173, 1, 'Agosto', 2014, 'indefinido', 1100000, 'AUXILIAR CONTABLE ', 'C7ETC683W', 'IBAGUE', 1),
(129, 'JAIME ALBERTO VELASQUEZ GIRALDO', 93373932, 10, 'Octubre', 2011, 'indefinido', 873440, 'CONDUCTOR', 'B0YCP670Y', 'IBAGUE', 1),
(130, 'JAIR ORLANDO CASTILLO JIMENEZ', 79827546, 16, 'Octubre', 2014, 'fijo a un año', 848000, 'CONDUCTOR ', 'O8TRL729A', 'BOGOTÁ', 1),
(131, 'JAIRO  MARROQUIN RODRIGUEZ', 80062667, 1, 'Septiembre', 2009, 'indefinido', 1091800, 'LIDER DE MEZCLA', 'S8UZB341J', 'BOGOTÁ', 1),
(132, 'JAVIER REINALDO LASPRILLA JIMENEZ', 9531214, 13, 'Abril', 2011, 'indefinido', 6004900, 'DIRECTOR DE OPERACIONES COMBUS', 'N4RYP144C', 'SOGAMOSO', 1),
(133, 'JOAQUIN ORLANDO QUIROGA CASTRO', 93369979, 16, 'Febrero ', 2013, 'indefinido', 658428, 'AUXILIAR DE BODEGA', 'Y1HGA389E', 'IBAGUE', 1),
(134, 'JOHN FREDY CUERVO RIVERA', 4514114, 16, 'Septiembre', 2014, 'fijo a un año', 616000, 'VENDEDOR SERVICIOS EDS', 'H3TCD695X', 'PEREIRA', 1),
(135, 'JONATHAN GUZMAN DIAZ', 14396720, 1, 'Noviembre', 2011, 'indefinido', 873440, 'FACILITADOR DE LINEA', 'I0VJX193C', 'IBAGUE', 1),
(136, 'JORGE ANDRES ARIAS CAMARGO', 1069719463, 1, 'Septiembre', 2012, 'indefinido', 1287500, 'ANALISTA DE SISTEMAS JR', 'E6WHH188A', 'FUSAGASUGA', 1),
(137, 'JOSE ALEJANDRO RODRIGUEZ RIBERO', 91080356, 3, 'Febrero ', 2014, 'indefinido', 3000000, 'ASESOR JURIDICO JUNIOR', 'Y3IYD024T', 'SAN GIL', 1),
(138, 'JOSE MANUEL ARTURO DIAZ', 1109381456, 16, 'Agosto', 2014, 'indefinido', 616000, 'OPERARIO ', 'D5HNY957K', 'LERIDA', 1),
(139, 'JUAN CAMILO CRUZ PEDRAZA', 1110536697, 17, 'Septiembre', 2012, 'indefinido', 750000, 'AUXILIAR DE INVENTARIOS', 'U2SEE586C', 'IBAGUE', 1),
(140, 'JUAN GUILLERMO PEREZ PEREZ', 14295690, 1, 'Noviembre', 2011, 'indefinido', 681294, 'AUXILIAR DE BODEGA', 'H5QJB395Y', 'IBAGUE', 1),
(141, 'JUAN PABLO ARBOLEDA MENDEZ', 71387504, 9, 'Mayo', 2014, 'indefinido', 616000, 'VENDEDOR SERVICIOS EDS', 'D4PRB348T', 'MEDELLIN', 1),
(142, 'JULIAN ANDRES ÑUSTES PEREZ', 2230563, 16, 'Febrero ', 2013, 'indefinido', 616000, 'OPERARIO', 'M5BJQ673P', 'IBAGUE', 1),
(143, 'JULIAN ANTIA MORA', 1110459676, 1, 'Octubre', 2014, 'indefinido', 1200000, 'INGENIERO DE MANTENIMIENTO ', 'N1MCT355O', 'IBAGUE', 1),
(144, 'JULIO CESAR ROA ROJAS', 93377974, 1, 'Abril', 2014, 'indefinido', 616000, 'OPERARIO ', 'O1MCH130G', 'IBAGUE', 1),
(145, 'LEXIS ANGELICA LOPEZ SEGOVIA', 28555010, 10, 'Marzo', 2014, 'indefinido', 616000, 'ASISTENTE SEDE SUR', 'P2TUE501F', 'IBAGUE', 1),
(146, 'LILIA ANDREA MOYANO GARCIA', 46451248, 3, 'Septiembre', 2008, 'indefinido', 1854000, 'QUIMICO LABORATORIO', 'B8NLH294V', 'DUITAMA', 1),
(147, 'LIZETH XIMENA CASTAÑEDA HINESTROZA', 1030609734, 1, 'Diciembre', 2012, 'indefinido', 709670, 'RECEPCIONISTA', 'D5RCB702T', 'BOGOTÁ', 1),
(148, 'LUIS ALFONSO OSORIO LARGO', 1112301246, 1, 'Agosto', 2014, 'fijo a un año', 616000, 'VENDEDOR SERVICIOS EDS', 'U1JSN356O', 'RIOFRIO', 1),
(149, 'LUIS FERNANDO CAMPOS ESCOBAR', 1110507897, 20, 'Agosto', 2013, 'indefinido', 772500, 'AUXILIAR MERCADEO', 'X8ZFQ637H', 'IBAGUE', 1),
(150, 'LUIS FERNEY BARRAGAN CANDELA', 14396665, 16, 'Agosto', 2014, 'indefinido', 616000, 'OPERARIO ', 'U7CYM234Z', 'IBAGUE', 1),
(151, 'LUIS HECTOR RODRIGUEZ NIETO', 14296304, 16, 'Febrero ', 2013, 'indefinido', 681294, 'AUX SERVICIOS GENERALES', 'S8BZQ514R', 'IBAGUE', 1),
(152, 'MAGDA CONSTANZA GUZMAN GAVIRIA', 65766003, 1, 'Noviembre', 2011, 'indefinido', 681294, 'AUX SERVICIOS GENERALES', 'S1VGO790S', 'IBAGUE', 1),
(153, 'MARIA ALEJANDRA MOLINA GOMEZ', 1110476609, 1, 'Noviembre', 2011, 'indefinido', 1236000, 'LIDER DE TESORERIA', 'U2YUB544G', 'IBAGUE', 1),
(154, 'MARIA ALEJANDRA PALMA VALDERRAMA', 1110551332, 16, 'Junio ', 2013, 'indefinido', 824000, 'AUXILIAR DE FACTURACION Y SAC', 'U6ZFU295F', 'IBAGUE', 1),
(155, 'MERY QUIROGA GOMEZ', 39546289, 1, 'Febrero ', 2009, 'indefinido', 681294, 'AUX SERVICIOS GENERALES', 'Y6OUQ261M', 'BOGOTÁ', 1),
(156, 'MIGUEL ANGEL CHACON TORRES', 80255820, 16, 'Septiembre', 2014, 'fijo a un año', 616000, 'VENDEDOR SERVICIOS EDS', 'F8JGQ674B', 'BOGOTÁ', 1),
(157, 'MILDRED YARETLY RIAPIRA CUBILLOS', 53164962, 22, 'Julio', 2013, 'indefinido', 1545000, 'LIDER DE CREDITO Y CARTERA', 'I6PLA283R', 'BOGOTÁ', 1),
(158, 'MILENA ARDILA CARVAJAL', 1022345651, 16, 'Octubre', 2014, 'indefinido', 1133000, 'ADMINISTRADORA GULF EXPRESS ', 'K5JRK013O', 'BOGOTÁ', 1),
(159, 'MONICA ALEJANDRA VARGAS INFANTE', 1110462977, 1, 'Octubre', 2014, 'indefinido', 1339000, 'ASISTENTE SGC ', 'T8TZD922M', 'IBAGUE', 1),
(160, 'NELSON FABIAN ACHIPIZ GARCIA', 83227221, 1, 'Enero', 2014, 'indefinido', 2500000, 'ANALISTA DE PROYECTOS ', 'A5FIG359G', 'EL PITAL', 1),
(161, 'OSCAR ALBEIRO MORALES PARRA', 10032912, 16, 'Septiembre', 2014, 'fijo a un año', 616000, 'VENDEDOR SERVICIOS EDS', 'Z4ZUF503A', 'PEREIRA', 1),
(162, 'OSCAR FARID OLMOS BRICEÑO', 93410375, 16, 'Febrero ', 2013, 'indefinido', 616000, 'OPERARIO', 'F7WCH188D', 'IBAGUE', 1),
(163, 'OSWALDO CARDENAS SALCEDO', 91355221, 22, 'Febrero ', 2011, 'indefinido', 873440, 'CONDUCTOR', 'Q4MST091E', 'PIEDECUESTA', 1),
(164, 'PAOLA ANDREA AVENDAÑO TRUJILLO', 1019016160, 4, 'Junio ', 2013, 'indefinido', 1236000, 'DISEÑADOR', 'X8PYF680R', 'BOGOTÁ', 1),
(165, 'RICARDO ADRIAN ISAZA ZAPATA', 1088261440, 16, 'Septiembre', 2014, 'fijo a un año', 616000, 'VENDEDOR SERVICIOS EDS', 'R7XSF661Y', 'PEREIRA', 1),
(166, 'RICARDO AUGUSTO MENDEZ LOPEZ', 6024959, 1, 'Septiembre', 2014, 'indefinido', 3000000, 'AUDITOR', 'X6QYP581X', 'VENADILLO', 1),
(167, 'RONAL ALEJANDRO FONTECHA MARTINEZ', 80736810, 17, 'Enero', 2014, 'indefinido', 616000, 'OPERARIO', 'K3EWT119R', 'BOGOTÁ', 1),
(168, 'RUBEN ALIRIO HERRERA MARTINEZ', 1110551383, 25, 'Enero', 2014, 'indefinido', 824000, 'AUXILIAR DE FACTURACION Y SAC', 'Y3IRV774O', 'IBAGUE', 1),
(169, 'SANDRA PATRICIA RODRIGUEZ MONTENEGRO', 1110479137, 7, 'Marzo', 2012, 'indefinido', 1700000, 'LIDER DE IMPUESTOS', 'V9IWD611L', 'IBAGUE', 1),
(170, 'SONIA JOHANA MOYA CORTES', 52699726, 22, 'Julio', 2013, 'indefinido', 1133000, 'ANALISTA RETAIL', 'P2UBA432Z', 'BOGOTÁ', 1),
(171, 'URIEL HUMBERTO JUSTINICO', 1110504851, 11, 'Abril', 2011, 'indefinido', 873440, 'CONDUCTOR', 'I4FZB871V', 'IBAGUE', 1),
(172, 'VICTOR MANUEL FUNQUEN RAMIREZ', 79821848, 1, 'Junio ', 2012, 'indefinido', 873440, 'CONDUCTOR', 'I4GKX953O', 'BOGOTÁ', 1),
(173, 'VIVIAN GISELLE SOLINA PAEZ', 52796736, 1, 'Noviembre', 2005, 'indefinido', 3930480, 'JEFE ADMINISTRATIVA', 'R8FQD991Y', 'IBAGUE', 1),
(174, 'WILLIAM ALBER QUIÑONEZ TORRES', 1110476871, 16, 'Mayo ', 2014, 'indefinido', 616000, 'AUXILIAR DE BODEGA ', 'E5HSX420C', 'IBAGUE', 1),
(175, 'WILMAR GIOVANNY TAMAYO HERRERA', 93410735, 1, 'Diciembre', 2012, 'indefinido', 1091800, 'LIDER DE BODEGA', 'G8KYN611E', 'IBAGUE', 1),
(176, 'YEFFERSON MONTAÑO PANAMEÑO', 1111753757, 7, 'Enero', 2014, 'indefinido', 616000, 'OPERARIO', 'A7MKJ356V', 'IBAGUE', 1),
(177, 'YESENIA MARCELA OSPINA LARA', 1110465722, 7, 'Enero', 2014, 'indefinido', 1100000, 'AUXILIAR CONTABLE', 'I8LIS633I', 'IBAGUE', 1),
(178, 'YINETH SIRLEY MOSQUERA CORREA', 31309666, 16, 'Octubre', 2014, 'indefinido', 616000, 'MERCADERISTA ', 'U1ARF175U', 'CALI', 1),
(179, 'YOANA YESENIA DIAZ GUZMAN', 52706518, 22, 'Mayo ', 2006, 'indefinido', 5000000, 'DIRECTORA DE GESTION HUMANA', 'R5UOB733W', 'BOGOTÁ', 1),
(180, 'ANDRES MAURICIO HERRAN RODRIGUEZ', 5825071, 16, 'Octubre', 2014, 'Fijo a un año', 616000, 'AUXILIAR DE BODEGA ', 'G8YRF655Z', 'Ibague', 2),
(181, 'BLANCA INES SANCHEZ TOVAR', 28955644, 1, 'Agosto', 2014, 'Indefinido', 2100000, 'COORDINADORA ADMINISTRATIVA', '''S8JJR476F''', 'santa Isabel', 2),
(182, 'LUIS CARLOS ORTIZ ESPINOZA', 5829216, 1, 'Agosto', 2014, 'Indefinido', 1100000, 'ASISTENTE DE OPERACIONES', '''A5ZUP039H''', 'Ibague', 2),
(183, 'MARLON ANDRES WILCHES LUNA', 2234860, 1, 'Agosto', 2014, 'Indefinido', 1500000, 'CORDINADOR LOGISTICO ', 'O3RSS854G', 'Ibague', 2),
(184, 'NESTOR IVAN AGUDELO CARDENAS', 14396325, 21, 'Mayo', 2014, 'Indefinido', 900000, 'ASISTENTE DE OPERACIONES', '''G8YRF655Z''', 'Ibagué', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleadov`
--

CREATE TABLE IF NOT EXISTS `empleadov` (
  `ide_emp` int(11) NOT NULL AUTO_INCREMENT,
  `nom_emp` varchar(45) DEFAULT NULL,
  `cedula` int(11) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL,
  `mes` varchar(45) DEFAULT NULL,
  `an` int(11) DEFAULT NULL,
  `contrato` varchar(45) DEFAULT NULL,
  `salario` int(11) DEFAULT NULL,
  `cargo` varchar(45) DEFAULT NULL,
  `clave` varchar(45) DEFAULT NULL,
  `ciudad` varchar(45) DEFAULT NULL,
  `hasta` int(11) DEFAULT NULL,
  `rodamiento` int(11) DEFAULT NULL,
  `empresa_ide_emp` int(11) NOT NULL DEFAULT '2',
  PRIMARY KEY (`ide_emp`),
  KEY `fk_empleadov_empresa1_idx` (`empresa_ide_emp`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=52 ;

--
-- Volcado de datos para la tabla `empleadov`
--

INSERT INTO `empleadov` (`ide_emp`, `nom_emp`, `cedula`, `dia`, `mes`, `an`, `contrato`, `salario`, `cargo`, `clave`, `ciudad`, `hasta`, `rodamiento`, `empresa_ide_emp`) VALUES
(1, 'ADRIANA EUSTOQUIA CARDENAS GARCIA', 63484937, 3, 'Septiembre', 2012, 'indefinido', 2266000, 'INGENIERO COMERCIAL', 'D8BRI554H', 'BUCARAMANGA', 2600000, 412000, 1),
(2, 'ALIXXON AURELIO GONZALEZ VIVEROS', 1013582539, 1, 'Agosto', 2014, 'indefinido', 2000000, 'COORDINADOR DE PRODUCTIVIDAD', 'K0DQS393F', 'BOGOTÁ', 1000000, 412000, 1),
(3, 'ANDRES FELIPE MONSALVE VELEZ', 94495632, 1, 'Junio', 2014, 'indefinido', 1133000, 'ADMINISTRADOR GULF EXPRESS', 'T8EQX460W', 'MANIZALES', 600000, 0, 1),
(4, 'ANGELICA MARIA GALLEGO VALENCIA', 1087992522, 16, 'Octubre', 2013, 'indefinido', 1545000, 'ADMINISTRADOR EDS', 'J8UOT925I', 'DOSQUEBRADAS', 300000, 0, 1),
(5, 'BLEIDY VIANEY GUTIERREZ PADILLA', 52214210, 1, 'Septiembre', 2014, 'indefinido', 1500000, 'EJECUTIVO CUENTAS CLAVE - COMB', 'A6NVD276N', 'BOGOTÁ', 1500000, 412000, 1),
(6, 'CESAR AUGUSTO MAZUTIER TRIANA', 79632998, 16, 'Octubre', 2014, 'indefinido', 1442000, 'ASESOR COMERCIAL', 'I0GSJ790P', 'BOGOTÁ', 1700000, 412000, 1),
(7, 'CLARA CECILIA MEJIA PATIÑO', 43689457, 1, 'Agosto', 2014, 'indefinido', 2266000, 'ASESOR COMERCIAL', 'D9MRF065H', 'RETIRO', 2600000, 412000, 1),
(8, 'CLAUDIA PATRICIA GUARIN CRISPIN', 52736984, 1, 'Agosto', 2007, 'indefinido', 3605000, 'DIRECTOR DE CUENTAS CLAVE', 'Q0VEP013H', 'BOGOTÁ', 2600000, 412000, 1),
(9, 'DEIVI ESTID CUBIDES DAZA', 80165936, 16, 'Octubre', 2014, 'indefinido', 1442000, 'ASESOR COMERCIAL', 'U5GDM195K', 'BOGOTÁ', 1700000, 412000, 1),
(10, 'DIEGO ANDRES GARCIA SANTOS', 80073996, 16, 'Febrero', 2008, 'indefinido', 5500000, 'DIRECTOR DE OPERACIONES LUBRIC', 'F1TUT043B', 'BOGOTÁ', 2500000, 412000, 1),
(11, 'DIEGO FERNANDO VALDIVIESO VILLAMIZAR', 79601483, 3, 'Abril', 2006, 'indefinido', 23617797, 'PRESIDENTE', 'K1VRF386Q', 'BOGOTÁ', 22000000, 412000, 1),
(12, 'EDISON CHINCHILLA SANCHEZ', 13743061, 16, 'Mayo', 2014, 'indefinido', 1000000, 'ASESOR COMERCIAL', 'X6MDV099Q', 'EL CARMEN', 1400000, 412000, 1),
(13, 'EDNA MARGARITA ORTIZ RAMIREZ', 55301387, 18, 'Septiembre', 2013, 'indefinido', 3090000, 'REPRESENTANTE COMERCIAL', 'W9ZON157R', 'BARRANQUILLA', 1200000, 412000, 1),
(14, 'ELOY FLOREZ LOPEZ', 13839169, 22, 'Abril', 2014, 'indefinido', 8008000, 'GERENTE DE OPERACIONES', 'R5VBP869P', 'BUCARAMANGA', 4000000, 412000, 1),
(15, 'ERIKA DEL CARMEN SERRANO MERCADO', 22523346, 2, 'Mayo', 2013, 'indefinido', 1442000, 'ASESOR COMERCIAL', 'Y9DMW152E', 'BARRANQUILLA', 1700000, 412000, 1),
(16, 'GERMAN PALOMO SARMIENTO', 7703539, 1, 'Noviembre', 2011, 'indefinido', 5150000, 'DIRECTOR DE PROYECTOS', 'L2XEC511X', 'NEIVA', 2700000, 412000, 1),
(17, 'GUSTAVO ADOLFO ESCOBAR VASQUEZ', 71781112, 1, 'Agosto', 2014, 'indefinido', 2266000, 'ASESOR COMERCIAL', 'K6ULW015N', 'MEDELLIN', 2600000, 412000, 1),
(18, 'HECTOR HERNANDO CLAVIJO TRIANA', 79751180, 6, 'Marzo', 2007, 'indefinido', 2600000, 'INGENIERO DE CUENTAS CLAVE', 'U6IJS318M', 'BOGOTÁ', 3800000, 412000, 1),
(19, 'HECTOR IVAN RENTERIAVELASCO', 94402488, 11, 'Febrero', 2013, 'indefinido', 1300000, 'ASESOR COMERCIAL', 'E7VNA283H', 'CALI', 1700000, 412000, 1),
(20, 'IVON TATIANA ARDILA DIAZ', 37552045, 14, 'Enero', 2013, 'indefinido', 1000000, 'ASESOR COMERCIAL', 'G2UNS637Q', 'GIRON', 1400000, 412000, 1),
(21, 'JAIME ANTONIO RODRIGUEZ PEREZ', 17333380, 14, 'Enero', 2013, 'indefinido', 1000000, 'ASESOR COMERCIAL', 'A1PGY440G', 'VILLAVICENCIO', 1400000, 412000, 1),
(22, 'JAZMIN NATALIA VARGAS ESPINDOLA', 1015395412, 1, 'Agosto', 2013, 'indefinido', 1133000, 'ANALISTA CAM2', 'A2BCJ105F', 'BOGOTÁ', 300000, 0, 1),
(23, 'JENNIFER ALEXANDRA IMBACUAN SAENZ', 1143827712, 16, 'Octubre', 2014, 'fijo a un año', 616000, 'MERCADERISTA ', 'B5GQT971I', 'CALI', 300000, 0, 1),
(24, 'JORGE ALEXANDER AMEZQUITA DIAZ', 79519747, 17, 'Septiembre', 2013, 'indefinido', 2266000, 'LIDER DE CUENTAS ESPECIALES VE', 'C8VFO285W', 'BOGOTÁ', 1500000, 412000, 1),
(25, 'JORGE ENRIQUE OSORIO MEDINA', 93406484, 21, 'Enero', 2013, 'indefinido', 2300000, 'INGENIERO DE FLOTAS', 'O0XHV886F', 'IBAGUE', 3600000, 412000, 1),
(26, 'JORGE LUIS VARON CLAVIJO', 1110456582, 16, 'Agosto', 2014, 'indefinido', 1800000, 'ASESOR COMERCIAL', 'S5CQH184Q', 'IBAGUE', 2200000, 412000, 1),
(27, 'JORGE MARIO TORO NIETO', 75104157, 16, 'Noviembre', 2014, 'Indefinido', 1700000, 'ASESOR COMERCIAL', 'KDID523KKS', 'MANIZALES', 1600000, 412000, 1),
(28, 'JUAN FERNANDO DUQUE CASTRILLON', 71766560, 16, 'Mayo', 2014, 'indefinido', 1300000, 'ASESOR COMERCIAL', 'T2PGH456V', 'MEDELLIN', 1700000, 412000, 1),
(29, 'JUAN PABLO CARDENAS GONZALEZ', 98665616, 9, 'Mayo', 2011, 'indefinido', 2600000, 'INGENIERO DE PRODUCTIVIDAD', 'C2UFN673G', 'ENVIGADO', 2600000, 412000, 1),
(30, 'JULIAN ANDRES ATAHUALPA', 6108958, 16, 'Abril', 2012, 'indefinido', 2266000, 'INGENIERO COMERCIAL', 'S8JJR476F', 'CALI', 2600000, 412000, 1),
(31, 'JULIE PAULINE RESTREPO MASMUT', 55249016, 4, 'Junio', 2013, 'indefinido', 1000000, 'ASESOR COMERCIAL', 'F5TQZ980S', 'BOGOTÁ', 1400000, 412000, 1),
(32, 'JULIO CESAR CALDERON OLIVEROS', 79602901, 25, 'Febrero', 2013, 'indefinido', 1442000, 'ASESOR COMERCIAL', 'X9RKQ379T', 'BOGOTÁ', 1700000, 412000, 1),
(33, 'LAUREN PATRICIA GIL HERRERA', 63550249, 2, 'Julio', 2013, 'indefinido', 1800000, 'ASESOR COMERCIAL', 'G8YRF655Z', 'BUCARAMANGA', 2200000, 412000, 1),
(34, 'LEIDY TATIANA MENJURA GAONA', 38360815, 4, 'Febrero', 2013, 'indefinido', 4500000, 'DIRECTOR COMERCIAL ZONA SUR', 'S1UWF415N', 'IBAGUE', 3500000, 412000, 1),
(35, 'LUIS ERNESTO VEGA FARFAN', 12130474, 16, 'Noviembre', 2014, 'Indefinido', 1700000, 'ASESOR COMERCIAL', 'PLS23KOL', 'NEIVA', 1600000, 412000, 1),
(36, 'MIGUEL ANTONIO YANCES ROJAS', 3806780, 26, 'Junio', 2014, 'indefinido', 4500000, 'DIRECTOR COMERCIAL ZONA NORTE', 'C3UMB593M', 'CARTAGENA', 3500000, 412000, 1),
(37, 'NESTOR ENRIQUE BELTRAN JOYA', 13514234, 16, 'Diciembre', 2010, 'indefinido', 4500000, 'DIRECTOR COMERCIAL ZONA ORIENT', 'W3GEQ130U', 'BUCARAMANGA', 3500000, 412000, 1),
(38, 'OLGA INES DIEZ CASTAÑO', 66999269, 3, 'Febrero', 2014, 'indefinido', 3200000, 'REPRESENTANTE COMERCIAL', 'B2IQC730B', 'CALI', 1400000, 412000, 1),
(39, 'PABLO CESAR MONROY DELGADO', 93391292, 14, 'Enero', 2013, 'indefinido', 1300000, 'ASESOR COMERCIAL', 'A5ZUP039H', 'IBAGUE', 1700000, 412000, 1),
(40, 'ROBERTO GALVIS LONDOÑO', 5956877, 16, 'Noviembre', 2013, 'indefinido', 2472000, 'REPRESENTANTE COMERCIAL', 'K1EHB340E', 'MARIQUITA', 2200000, 412000, 1),
(41, 'ROBINSON MARTINEZ HERNANDEZ', 80527912, 3, 'Diciembre', 2012, 'indefinido', 5000000, 'DIRECTOR CAM2', 'R2JZW370R', 'BOGOTÁ', 3000000, 412000, 1),
(42, 'RODRIGO PIMIENTO SAAVEDRA', 86052301, 1, 'Octubre', 2010, 'indefinido', 14000000, 'GERENTE COMERCIAL LUBRICANTES', 'H5TVU764P', 'VILLAVICENCIO', 6000000, 412000, 1),
(43, 'ROY ANDRES BUENO TORRES', 1100950017, 1, 'Noviembre', 2012, 'indefinido', 3090000, 'REPRESENTANTE COMERCIAL', 'I3DPA216D', 'SAN GIL', 1200000, 412000, 1),
(44, 'SANDRA MILENA URUEÑA LEON', 52364216, 16, 'Agosto', 2013, 'indefinido', 2600000, 'INGENIERO DE CUENTAS CLAVE', 'X9EQY737I', 'BOGOTÁ', 3800000, 412000, 1),
(45, 'SORAYA XIMENA BAYONA O´MEARA', 52816573, 8, 'Septiembre', 2014, 'indefinido', 5000000, 'DIRECTOR COMERCIAL ZONA CENTRO', 'O3RSS854G', 'BOGOTÁ', 3500000, 412000, 1),
(46, 'WILSON DIAZ ORTEGON', 11225907, 15, 'Mayo', 2012, 'indefinido', 1800000, 'INGENIERO COMERCIAL COMBUSTIBL', 'K2VIM774R', 'GIRARDOT', 2200000, 412000, 1),
(47, 'WILSON FERNEY MORA CERON', 88236614, 18, 'Febrero', 2013, 'indefinido', 4120000, 'DIRECTOR VENTAS RETAIL', 'D4OIP573C', 'IBAGUE', 3000000, 412000, 1),
(48, 'YENY LORENA GIRALDO GUTIERREZ', 1022350483, 1, 'Febrero', 2013, 'indefinido', 1300000, 'ASESOR COMERCIAL', 'Q5UYZ295Q', 'BOGOTÁ', 1700000, 412000, 1),
(49, 'ALVARO RANGEL DURAN', 79541071, 11, 'Agosto', 2014, 'fijo inferior a un año', 1200000, 'ASESOR COMERCIAL', 'R5VBP869P', 'BOGOTA', 1300000, 412000, 2),
(50, 'DIEGO FERNANDO RENDON FLOREZ', 93399444, 27, 'Diciembre', 2013, 'Indefinido', 800000, 'PROMOTOR VENTAS', 'J8UOT925I', 'IBAGUE', 800000, 0, 2),
(51, 'MARIO FERNANDO TAMAYO RENDON', 5825230, 19, 'Mayo', 2014, 'Indefinido', 3500000, 'DIRECTOR COMERCIAL', 'R2JZW370R', 'IBAGUE', 2600000, 0, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE IF NOT EXISTS `empresa` (
  `ide_emp` int(11) NOT NULL,
  `razon` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ide_emp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`ide_emp`, `razon`) VALUES
(1, 'Prolub S.A.'),
(2, 'Opeco SAS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migration`
--

CREATE TABLE IF NOT EXISTS `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1421700643),
('m130524_201442_init', 1421700646);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `fk_empleado_empresa` FOREIGN KEY (`empresa_ide_emp`) REFERENCES `empresa` (`ide_emp`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `empleadov`
--
ALTER TABLE `empleadov`
  ADD CONSTRAINT `fk_empleadov_empresa1` FOREIGN KEY (`empresa_ide_emp`) REFERENCES `empresa` (`ide_emp`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
