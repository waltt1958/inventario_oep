-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-11-2017 a las 14:54:30
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `inventario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `leido`
--

CREATE TABLE `leido` (
  `oepLEIDO` text NOT NULL,
  `controlLEIDO` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oep`
--

CREATE TABLE `oep` (
  `diasVisita` smallint(10) NOT NULL,
  `idPieza` int(9) NOT NULL,
  `numero` text NOT NULL,
  `diasRestantes` smallint(13) NOT NULL,
  `siglaCli` text NOT NULL,
  `operativa` mediumint(6) NOT NULL,
  `fecha` date NOT NULL,
  `nombre` text NOT NULL,
  `calle` text NOT NULL,
  `localidad` text NOT NULL,
  `provincia` text NOT NULL,
  `nada` text NOT NULL,
  `final` text NOT NULL,
  `controlOEP` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `leido`
--
ALTER TABLE `leido`
  ADD UNIQUE KEY `oepLEIDO` (`oepLEIDO`(21)) USING BTREE;

--
-- Indices de la tabla `oep`
--
ALTER TABLE `oep`
  ADD UNIQUE KEY `numero` (`numero`(21)) USING BTREE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
