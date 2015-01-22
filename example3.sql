-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb2+deb7u1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 19-01-2015 a las 16:22:26
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
-- Estructura de tabla para la tabla `example3`
--

CREATE TABLE IF NOT EXISTS `example3` (
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
  `hasta` int(11) NOT NULL,
  `rodamiento` int(11) NOT NULL,
  PRIMARY KEY (`nombre`),
  KEY `cedula` (`cedula`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `example3`
--

INSERT INTO `example3` (`nombre`, `cedula`, `ciudad`, `dia`, `mes`, `an`, `contrato`, `salario`, `cargo`, `clave`, `hasta`, `rodamiento`) VALUES
('ALVARO RANGEL DURAN', 79541071, 'BOGOTA', 11, 'Agosto', 2014, 'fijo inferior a un año', 1200000, 'ASESOR COMERCIAL', 'R5VBP869P', 1300000, 412000),
('DIEGO FERNANDO RENDON FLOREZ', 93399444, 'IBAGUE', 27, 'Diciembre', 2013, 'Indefinido', 800000, 'PROMOTOR VENTAS', 'J8UOT925I', 800000, 0),
('MARIO FERNANDO TAMAYO RENDON', 5825230, 'IBAGUE', 19, 'Mayo', 2014, 'Indefinido', 3500000, 'DIRECTOR COMERCIAL', 'R2JZW370R', 2600000, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
