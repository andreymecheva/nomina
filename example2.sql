-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb2+deb7u1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 19-01-2015 a las 16:18:19
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
-- Estructura de tabla para la tabla `example2`
--

CREATE TABLE IF NOT EXISTS `example2` (
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
-- Volcado de datos para la tabla `example2`
--

INSERT INTO `empleado` (`nom_emp`, `cedula`, `ciudad`, `dia`, `mes`, `an`, `contrato`, `salario`, `cargo`, `clave`, `empresa_ide_emp`) VALUES
('ANDRES MAURICIO HERRAN RODRIGUEZ', 5825071, 'Ibague', 16, 'Octubre', 2014, 'Fijo a un año', 616000, 'AUXILIAR DE BODEGA ', 'G8YRF655Z', '2'),
('BLANCA INES SANCHEZ TOVAR', 28955644, 'santa Isabel', 1, 'Agosto', 2014, 'Indefinido', 2100000, 'COORDINADORA ADMINISTRATIVA', '''S8JJR476F''','2'),
('LUIS CARLOS ORTIZ ESPINOZA', 5829216, 'Ibague', 1, 'Agosto', 2014, 'Indefinido', 1100000, 'ASISTENTE DE OPERACIONES', '''A5ZUP039H''', '2'),
('MARLON ANDRES WILCHES LUNA', 2234860, 'Ibague', 1, 'Agosto', 2014, 'Indefinido', 1500000, 'CORDINADOR LOGISTICO ', 'O3RSS854G', '2'),
('NESTOR IVAN AGUDELO CARDENAS', 14396325, 'Ibagué', 21, 'Mayo', 2014, 'Indefinido', 900000, 'ASISTENTE DE OPERACIONES', '''G8YRF655Z''', '2');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
