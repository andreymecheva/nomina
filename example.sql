-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb2+deb7u1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 19-01-2015 a las 16:08:00
-- Versión del servidor: 5.5.40
-- Versión de PHP: 5.4.34-0+deb7u1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `certificados`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `example`
--

CREATE TABLE IF NOT EXISTS `example` (
  `nombre` varchar(60) NOT NULL,
  `cedula` int(11) DEFAULT NULL,
  `ciudad` varchar(30) NOT NULL,
  `dia` int(11) NOT NULL,
  `mes` varchar(19) NOT NULL,
  `an` int(11) NOT NULL,
  `contrato` varchar(30) NOT NULL,
  `salario` int(11) NOT NULL,
  `cargo` varchar(30) NOT NULL,
  `clave` varchar(30) NOT NULL,
  PRIMARY KEY (`nombre`),
  KEY `cedula` (`cedula`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `example`
--

INSERT INTO `example` (`nombre`, `cedula`, `ciudad`, `dia`, `mes`, `an`, `contrato`, `salario`, `cargo`, `clave`) VALUES
('ADALBERTO LOPEZ ROMERO', 79995323, 'BOGOTÁ', 16, 'Agosto', 2014, 'indefinido', 1019700, 'TECNICO DE MANTENIMIENTO ', 'S7WDC020X'),
('ALEJANDRO MANUEL SANCHEZ MARTINEZ', 94384721, 'CALI', 1, 'Diciembre', 2012, 'indefinido', 2183600, 'JEFE DE PLANTA', 'P1XUQ841J'),
('ALEJANDRO RAMIREZ FLECHAS', 80815464, 'BOGOTÁ', 3, 'Junio ', 2014, 'indefinido', 3800000, 'LIDER DE PLANEACION FINANCIERA', 'M6SUL746S'),
('ANADELINA DIAZ ARIZA', 53082176, 'BOGOTÁ', 16, 'Septiembre', 2014, 'fijo a un año', 616000, 'VENDEDOR SERVICIOS EDS', 'V3KJE734J'),
('ANCISAR RUBIANO PUERTAS', 14396991, 'IBAGUE', 19, 'Septiembre', 2011, 'indefinido', 1091800, 'ANALISTA LABORATORIO', 'I7NVB266D'),
('ANDREA CATALINA OSSA VILLEGAS', 1030589742, 'BOGOTÁ', 16, 'Abril', 2014, 'indefinido', 1236000, 'DISEÑADOR', 'D4TIB052T'),
('ANDREA DEL PILAR PRADA', 52813425, 'BOGOTÁ', 1, 'Octubre', 2014, 'indefinido', 1000000, 'FACTURADORA COMBUSTIBLES', 'W5XGZ387H'),
('ANDRES ALVAREZ LOZANO', 16758170, 'CALI', 8, 'Agosto', 2012, 'indefinido', 5665000, 'ASESOR JURIDICO SENIOR', 'Z5DTK536L'),
('ANDRES FELIPE SANABRIA MERCHAN', 80156745, 'BOGOTÁ', 1, 'Septiembre', 2009, 'indefinido', 1310160, 'ASISTENTE COMPRAS', 'T2XKA145X'),
('ANGELICA MARIA CAPERA CABRERA', 1110535385, 'PLANADAS', 16, 'Julio', 2013, 'indefinido', 634480, 'AUXILIAR LOGISTICA', 'Z4XJM152M'),
('ANGELICA SANCHEZ LA TORRE', 1070588320, 'GIRARDOT', 16, 'Septiembre', 2014, 'fijo a un año', 616000, 'VENDEDOR SERVICIOS EDS', 'Q9HYS881V'),
('ANGIE LIZZET AVILAN RODRIGUEZ', 1075652981, 'ZIPAQUIRA', 7, 'ENERO', 2014, 'Indefinido', 1648000, 'ANALISTA DE GESTION HUMANA', 'MDH75JD2'),
('ARIANA MARGOT PAREJA DE LA HOZ', 52356465, 'BOGOTÁ', 11, 'Noviembre', 2011, 'indefinido', 3002450, 'ANALISTA CONTABLE', 'E1VJH650U'),
('ARQUIMEDES SEDANO GONZALEZ', 13707785, 'VELEZ', 1, 'Noviembre', 2011, 'indefinido', 873440, 'CONDUCTOR', 'B1HDW529E'),
('BERNARDO AUGUSTO SUAREZ CHAVEZ', 79653265, 'BOGOTÁ', 1, 'Abril', 2011, 'indefinido', 2183600, 'JEFE LOGISTICA', 'X0DBU573Q'),
('BRUCE ANDREY SANCHEZ RIVAS', 1110530326, 'IBAGUE', 5, 'Enero', 2015, 'Indefinido', 644350, 'OPERARIO', 'HNJ562PKD'),
('CARLOS MARIO CASTILLO VALDERRAMA', 79902028, 'BOGOTÁ', 1, 'Mayo ', 2008, 'indefinido', 8008000, 'DIRECTOR CONTABLE', 'P9KIV245T'),
('CARMENZA TRIANA TRIANA', 52319596, 'BOGOTÁ', 16, 'Agosto', 2014, 'indefinido', 1200000, 'FACTURADOR COMBUSTIBLES - COME', 'W6LHA558M'),
('CAROL XIMENA ORTIZ SANTANA', 28550706, 'IBAGUE', 1, 'Noviembre', 2013, 'indefinido', 1545000, 'LIDER DE FACTURACION', 'W4YIV014Q'),
('CINDY STEFANNY JARAMILLO SALCEDO', 1110492299, 'IBAGUE', 6, 'Mayo ', 2014, 'indefinido', 824000, 'AUXILIAR DE FACTURACION Y SAC', 'E5LOE197E'),
('CRISTIAN CAMILO OSPINA DUQUE', 1110462958, 'IBAGUE', 1, 'Noviembre', 2011, 'indefinido', 750000, 'AUXILIAR DE INVENTARIOS', 'L4JGP786S'),
('DANIEL FELIPE DIAZ SANCHEZ', 1110569916, 'IBAGUE', 16, 'Noviembre', 2014, 'Indefinido', 644350, 'AIXILIAR CONTABLE', 'XJO89KLS'),
('DANIELA ALEXANDRA CHICA MORALES', 1110567125, 'IBAGUE', 1, 'Octubre', 2014, 'indefinido', 700000, 'AUXILIAR NOMINA', 'T5JQO288L'),
('DANILO FELIX QUIROZ ANGULO', 72276182, 'BARRANQUILLA', 2, 'Mayo ', 2014, 'indefinido', 1751000, 'INGENIERO DE INFRAESTRUCTURA ', 'R7IOM788R'),
('DIANA MARCELA GONZALEZ ORDOÑEZ', 1020736773, 'BOGOTÁ', 8, 'Julio', 2013, 'indefinido', 1800000, 'ANALISTA DE COMUNICACIONES', 'C5TFH222S'),
('DIANA PATRICIA GOMEZ RODRIGUEZ', 1016000793, 'BOGOTÁ', 3, 'Diciembre', 2012, 'indefinido', 1854000, 'ASISTENTE COMBUSTIBLES', 'U1ZYP460M'),
('DIEGO ARMANDO ARDILA SUA', 1032365884, 'BOGOTÁ', 1, 'Noviembre', 2011, 'indefinido', 2500000, 'DISEÑADOR SENIOR', 'I1BCH335J'),
('DINA LUZ CASTRO AREVALO', 52168278, 'BOGOTÁ', 3, 'Febrero ', 2014, 'indefinido', 2000000, 'JEFE DE COMPRAS', 'X4OOR122P'),
('DOLLY MALLERLY SUAREZ VACA', 38140495, 'IBAGUE', 1, 'Septiembre', 2012, 'indefinido', 824000, 'AUXILIAR DE FACTURACION Y SAC', 'H3PXY381P'),
('EDGAR ARIZA RODRIGUEZ', 13957423, 'VELEZ', 2, 'Septiembre', 2009, 'indefinido', 3800000, 'JEFE DE SISTEMAS', 'J6ITE915Z'),
('EDINSON FERNANDEZ MORENO', 1110472327, 'IBAGUE', 1, 'Noviembre', 2011, 'indefinido', 764260, 'ANALISTA LABORATORIO JR.', 'O5YLU093H'),
('ERICA YDALVA OSSA BENITEZ', 1128407165, 'MEDELLIN', 16, 'Septiembre', 2014, 'fijo a un año', 616000, 'VENDEDOR SERVICIOS EDS', 'A2ZWG768H'),
('FELIPE ANDRES BOADA PEREZ', 1110448005, 'IBAGUE', 16, 'Abril', 2013, 'indefinido', 616000, 'AUXILIAR DE OPERACIONES', 'M1YSZ650Y'),
('HAMILTON JOHAN VANEGAS SILVA', 1110486766, 'IBAGUE', 7, 'Enero', 2014, 'indefinido', 616000, 'AUXILIAR DE BODEGA', 'X7RXH885G'),
('HECTOR ANCISAR FORERO CASTRO', 5828047, 'IBAGUE', 16, 'Febrero ', 2013, 'indefinido', 616000, 'OPERARIO', 'C2KVI144L'),
('HECTOR DANIEL LONDOÑO BARRETO', 14297437, 'IBAGUE', 7, 'Enero', 2014, 'indefinido', 873440, 'AUXILIAR DE CARTERA', 'Q5DMU364B'),
('HECTOR FABIAN MACHADO MORALES', 1105678570, 'ESPINAL', 17, 'Diciembre', 2012, 'indefinido', 764260, 'ANALISTA LABORATORIO JR.', 'O0ENQ900P'),
('INGRID LORENA TRIANA RAMIREZ', 1110524173, 'IBAGUE', 1, 'Agosto', 2014, 'indefinido', 1100000, 'AUXILIAR CONTABLE ', 'C7ETC683W'),
('JAIME ALBERTO VELASQUEZ GIRALDO', 93373932, 'IBAGUE', 10, 'Octubre', 2011, 'indefinido', 873440, 'CONDUCTOR', 'B0YCP670Y'),
('JAIR ORLANDO CASTILLO JIMENEZ', 79827546, 'BOGOTÁ', 16, 'Octubre', 2014, 'fijo a un año', 848000, 'CONDUCTOR ', 'O8TRL729A'),
('JAIRO  MARROQUIN RODRIGUEZ', 80062667, 'BOGOTÁ', 1, 'Septiembre', 2009, 'indefinido', 1091800, 'LIDER DE MEZCLA', 'S8UZB341J'),
('JAVIER REINALDO LASPRILLA JIMENEZ', 9531214, 'SOGAMOSO', 13, 'Abril', 2011, 'indefinido', 6004900, 'DIRECTOR DE OPERACIONES COMBUS', 'N4RYP144C'),
('JOAQUIN ORLANDO QUIROGA CASTRO', 93369979, 'IBAGUE', 16, 'Febrero ', 2013, 'indefinido', 658428, 'AUXILIAR DE BODEGA', 'Y1HGA389E'),
('JOHN FREDY CUERVO RIVERA', 4514114, 'PEREIRA', 16, 'Septiembre', 2014, 'fijo a un año', 616000, 'VENDEDOR SERVICIOS EDS', 'H3TCD695X'),
('JONATHAN GUZMAN DIAZ', 14396720, 'IBAGUE', 1, 'Noviembre', 2011, 'indefinido', 873440, 'FACILITADOR DE LINEA', 'I0VJX193C'),
('JORGE ANDRES ARIAS CAMARGO', 1069719463, 'FUSAGASUGA', 1, 'Septiembre', 2012, 'indefinido', 1287500, 'ANALISTA DE SISTEMAS JR', 'E6WHH188A'),
('JOSE ALEJANDRO RODRIGUEZ RIBERO', 91080356, 'SAN GIL', 3, 'Febrero ', 2014, 'indefinido', 3000000, 'ASESOR JURIDICO JUNIOR', 'Y3IYD024T'),
('JOSE MANUEL ARTURO DIAZ', 1109381456, 'LERIDA', 16, 'Agosto', 2014, 'indefinido', 616000, 'OPERARIO ', 'D5HNY957K'),
('JUAN CAMILO CRUZ PEDRAZA', 1110536697, 'IBAGUE', 17, 'Septiembre', 2012, 'indefinido', 750000, 'AUXILIAR DE INVENTARIOS', 'U2SEE586C'),
('JUAN GUILLERMO PEREZ PEREZ', 14295690, 'IBAGUE', 1, 'Noviembre', 2011, 'indefinido', 681294, 'AUXILIAR DE BODEGA', 'H5QJB395Y'),
('JUAN PABLO ARBOLEDA MENDEZ', 71387504, 'MEDELLIN', 9, 'Mayo', 2014, 'indefinido', 616000, 'VENDEDOR SERVICIOS EDS', 'D4PRB348T'),
('JULIAN ANDRES ÑUSTES PEREZ', 2230563, 'IBAGUE', 16, 'Febrero ', 2013, 'indefinido', 616000, 'OPERARIO', 'M5BJQ673P'),
('JULIAN ANTIA MORA', 1110459676, 'IBAGUE', 1, 'Octubre', 2014, 'indefinido', 1200000, 'INGENIERO DE MANTENIMIENTO ', 'N1MCT355O'),
('JULIO CESAR ROA ROJAS', 93377974, 'IBAGUE', 1, 'Abril', 2014, 'indefinido', 616000, 'OPERARIO ', 'O1MCH130G'),
('LEXIS ANGELICA LOPEZ SEGOVIA', 28555010, 'IBAGUE', 10, 'Marzo', 2014, 'indefinido', 616000, 'ASISTENTE SEDE SUR', 'P2TUE501F'),
('LILIA ANDREA MOYANO GARCIA', 46451248, 'DUITAMA', 3, 'Septiembre', 2008, 'indefinido', 1854000, 'QUIMICO LABORATORIO', 'B8NLH294V'),
('LIZETH XIMENA CASTAÑEDA HINESTROZA', 1030609734, 'BOGOTÁ', 1, 'Diciembre', 2012, 'indefinido', 709670, 'RECEPCIONISTA', 'D5RCB702T'),
('LUIS ALFONSO OSORIO LARGO', 1112301246, 'RIOFRIO', 1, 'Agosto', 2014, 'fijo a un año', 616000, 'VENDEDOR SERVICIOS EDS', 'U1JSN356O'),
('LUIS FERNANDO CAMPOS ESCOBAR', 1110507897, 'IBAGUE', 20, 'Agosto', 2013, 'indefinido', 772500, 'AUXILIAR MERCADEO', 'X8ZFQ637H'),
('LUIS FERNEY BARRAGAN CANDELA', 14396665, 'IBAGUE', 16, 'Agosto', 2014, 'indefinido', 616000, 'OPERARIO ', 'U7CYM234Z'),
('LUIS HECTOR RODRIGUEZ NIETO', 14296304, 'IBAGUE', 16, 'Febrero ', 2013, 'indefinido', 681294, 'AUX SERVICIOS GENERALES', 'S8BZQ514R'),
('MAGDA CONSTANZA GUZMAN GAVIRIA', 65766003, 'IBAGUE', 1, 'Noviembre', 2011, 'indefinido', 681294, 'AUX SERVICIOS GENERALES', 'S1VGO790S'),
('MARIA ALEJANDRA MOLINA GOMEZ', 1110476609, 'IBAGUE', 1, 'Noviembre', 2011, 'indefinido', 1236000, 'LIDER DE TESORERIA', 'U2YUB544G'),
('MARIA ALEJANDRA PALMA VALDERRAMA', 1110551332, 'IBAGUE', 16, 'Junio ', 2013, 'indefinido', 824000, 'AUXILIAR DE FACTURACION Y SAC', 'U6ZFU295F'),
('MERY QUIROGA GOMEZ', 39546289, 'BOGOTÁ', 1, 'Febrero ', 2009, 'indefinido', 681294, 'AUX SERVICIOS GENERALES', 'Y6OUQ261M'),
('MIGUEL ANGEL CHACON TORRES', 80255820, 'BOGOTÁ', 16, 'Septiembre', 2014, 'fijo a un año', 616000, 'VENDEDOR SERVICIOS EDS', 'F8JGQ674B'),
('MILDRED YARETLY RIAPIRA CUBILLOS', 53164962, 'BOGOTÁ', 22, 'Julio', 2013, 'indefinido', 1545000, 'LIDER DE CREDITO Y CARTERA', 'I6PLA283R'),
('MILENA ARDILA CARVAJAL', 1022345651, 'BOGOTÁ', 16, 'Octubre', 2014, 'indefinido', 1133000, 'ADMINISTRADORA GULF EXPRESS ', 'K5JRK013O'),
('MONICA ALEJANDRA VARGAS INFANTE', 1110462977, 'IBAGUE', 1, 'Octubre', 2014, 'indefinido', 1339000, 'ASISTENTE SGC ', 'T8TZD922M'),
('NELSON FABIAN ACHIPIZ GARCIA', 83227221, 'EL PITAL', 1, 'Enero', 2014, 'indefinido', 2500000, 'ANALISTA DE PROYECTOS ', 'A5FIG359G'),
('OSCAR ALBEIRO MORALES PARRA', 10032912, 'PEREIRA', 16, 'Septiembre', 2014, 'fijo a un año', 616000, 'VENDEDOR SERVICIOS EDS', 'Z4ZUF503A'),
('OSCAR FARID OLMOS BRICEÑO', 93410375, 'IBAGUE', 16, 'Febrero ', 2013, 'indefinido', 616000, 'OPERARIO', 'F7WCH188D'),
('OSWALDO CARDENAS SALCEDO', 91355221, 'PIEDECUESTA', 22, 'Febrero ', 2011, 'indefinido', 873440, 'CONDUCTOR', 'Q4MST091E'),
('PAOLA ANDREA AVENDAÑO TRUJILLO', 1019016160, 'BOGOTÁ', 4, 'Junio ', 2013, 'indefinido', 1236000, 'DISEÑADOR', 'X8PYF680R'),
('RICARDO ADRIAN ISAZA ZAPATA', 1088261440, 'PEREIRA', 16, 'Septiembre', 2014, 'fijo a un año', 616000, 'VENDEDOR SERVICIOS EDS', 'R7XSF661Y'),
('RICARDO AUGUSTO MENDEZ LOPEZ', 6024959, 'VENADILLO', 1, 'Septiembre', 2014, 'indefinido', 3000000, 'AUDITOR', 'X6QYP581X'),
('RONAL ALEJANDRO FONTECHA MARTINEZ', 80736810, 'BOGOTÁ', 17, 'Enero', 2014, 'indefinido', 616000, 'OPERARIO', 'K3EWT119R'),
('RUBEN ALIRIO HERRERA MARTINEZ', 1110551383, 'IBAGUE', 25, 'Enero', 2014, 'indefinido', 824000, 'AUXILIAR DE FACTURACION Y SAC', 'Y3IRV774O'),
('SANDRA PATRICIA RODRIGUEZ MONTENEGRO', 1110479137, 'IBAGUE', 7, 'Marzo', 2012, 'indefinido', 1700000, 'LIDER DE IMPUESTOS', 'V9IWD611L'),
('SONIA JOHANA MOYA CORTES', 52699726, 'BOGOTÁ', 22, 'Julio', 2013, 'indefinido', 1133000, 'ANALISTA RETAIL', 'P2UBA432Z'),
('URIEL HUMBERTO JUSTINICO', 1110504851, 'IBAGUE', 11, 'Abril', 2011, 'indefinido', 873440, 'CONDUCTOR', 'I4FZB871V'),
('VICTOR MANUEL FUNQUEN RAMIREZ', 79821848, 'BOGOTÁ', 1, 'Junio ', 2012, 'indefinido', 873440, 'CONDUCTOR', 'I4GKX953O'),
('VIVIAN GISELLE SOLINA PAEZ', 52796736, 'IBAGUE', 1, 'Noviembre', 2005, 'indefinido', 3930480, 'JEFE ADMINISTRATIVA', 'R8FQD991Y'),
('WILLIAM ALBER QUIÑONEZ TORRES', 1110476871, 'IBAGUE', 16, 'Mayo ', 2014, 'indefinido', 616000, 'AUXILIAR DE BODEGA ', 'E5HSX420C'),
('WILMAR GIOVANNY TAMAYO HERRERA', 93410735, 'IBAGUE', 1, 'Diciembre', 2012, 'indefinido', 1091800, 'LIDER DE BODEGA', 'G8KYN611E'),
('YEFFERSON MONTAÑO PANAMEÑO', 1111753757, 'IBAGUE', 7, 'Enero', 2014, 'indefinido', 616000, 'OPERARIO', 'A7MKJ356V'),
('YESENIA MARCELA OSPINA LARA', 1110465722, 'IBAGUE', 7, 'Enero', 2014, 'indefinido', 1100000, 'AUXILIAR CONTABLE', 'I8LIS633I'),
('YINETH SIRLEY MOSQUERA CORREA', 31309666, 'CALI', 16, 'Octubre', 2014, 'indefinido', 616000, 'MERCADERISTA ', 'U1ARF175U'),
('YOANA YESENIA DIAZ GUZMAN', 52706518, 'BOGOTÁ', 22, 'Mayo ', 2006, 'indefinido', 5000000, 'DIRECTORA DE GESTION HUMANA', 'R5UOB733W');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;