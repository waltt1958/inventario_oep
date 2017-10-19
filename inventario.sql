-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-10-2017 a las 21:50:07
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

--
-- Volcado de datos para la tabla `leido`
--

INSERT INTO `leido` (`oepLEIDO`, `controlLEIDO`) VALUES
('88', 0),
('99', 0);

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
  `operativa` mediumint(9) NOT NULL,
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
-- Volcado de datos para la tabla `oep`
--

INSERT INTO `oep` (`diasVisita`, `idPieza`, `numero`, `diasRestantes`, `siglaCli`, `operativa`, `fecha`, `nombre`, `calle`, `localidad`, `provincia`, `nada`, `final`, `controlOEP`) VALUES
(399, 110129128, '1862200000000062404', -82, 'TC2', 97608, '2017-01-04', 'OCA - SOLUCIONES - Rosario 3', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(400, 110129129, '1862200000000062403', -82, 'TC2', 97608, '2017-01-04', 'OCA - SOLUCIONES - Rosario 4', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(404, 110129127, '1862200000000062405', -82, 'TC2', 97608, '2017-01-04', 'OCA - SOLUCIONES - Rosario 2', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(401, 110130854, '1862200000000062445', -82, 'TC2', 97608, '2017-01-04', 'OCA - SOLUCIONES - Rosario 3', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(402, 110130855, '1862200000000062444', -82, 'TC2', 97608, '2017-01-04', 'OCA - SOLUCIONES - Rosario 4', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(403, 110130856, '1862200000000062443', -82, 'TC2', 97608, '2017-01-04', 'OCA - SOLUCIONES - Rosario 5', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(392, 110188409, '1862200000000062627', -81, 'TC2', 97608, '2017-01-04', 'Oca - Prepay - Rosario ', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(393, 110188410, '1862200000000062626', -81, 'TC2', 97608, '2017-01-04', 'Oca - Prepay - Rosario 2', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(394, 110188411, '1862200000000062625', -81, 'TC2', 97608, '2017-01-04', 'Oca - Prepay - Rosario 3', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(395, 110188414, '1862200000000062622', -81, 'TC2', 97608, '2017-01-04', 'Oca - Prepay - Rosario 6', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(396, 110188415, '1862200000000062621', -81, 'TC2', 97608, '2017-01-04', 'Oca - Prepay - Rosario 7', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(397, 110188416, '1862200000000062620', -81, 'TC2', 97608, '2017-01-04', 'Oca - Prepay - Rosario 8', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(398, 110188417, '1862200000000062619', -81, 'TC2', 97608, '2017-01-04', 'Oca - Prepay - Rosario 9', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(391, 110336635, '1862200000000062934', -75, 'TC2', 97608, '2017-01-11', 'Oca - Prepay - Rosario ', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(385, 110497872, '1862200000000063531', -71, 'TC2', 97608, '2017-01-12', 'Oca - Prepay - Rosario 5', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(386, 110497873, '1862200000000063530', -71, 'TC2', 97608, '2017-01-12', 'Oca - Prepay - Rosario 6', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(387, 110497874, '1862200000000063529', -71, 'TC2', 97608, '2017-01-12', 'Oca - Prepay - Rosario 7', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(388, 110497875, '1862200000000063528', -71, 'TC2', 97608, '2017-01-12', 'Oca - Prepay - Rosario 8', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(389, 110501116, '1862200000000063595', -71, 'TC2', 97608, '2017-01-12', 'Oca - Prepay - Rosario 2', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(390, 110501118, '1862200000000063593', -71, 'TC2', 97608, '2017-01-12', 'Oca - Prepay - Rosario 4', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(384, 110397060, '1862200000000063091', -68, 'TC2', 97608, '2017-01-17', 'Oca - Prepay - Rosario 3', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(374, 111013898, '1862200000000064362', -56, 'TC2', 97608, '2017-01-27', 'OCA - VITACOM - Rosario 6', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(376, 111021963, '1862200000000064500', -56, 'TC2', 97608, '2017-01-27', 'Oca - Prepay - Rosario 2', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(378, 111021965, '1862200000000064498', -56, 'TC2', 97608, '2017-01-27', 'Oca - Prepay - Rosario 4', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(377, 111021964, '1862200000000064499', -56, 'TC2', 97608, '2017-01-27', 'Oca - Prepay - Rosario 3', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(379, 110980096, '1862200000000064186', -56, 'TC2', 97608, '2017-01-27', 'Oca - Prepay - Rosario ', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(380, 110980097, '1862200000000064185', -56, 'TC2', 97608, '2017-01-27', 'Oca - Prepay - Rosario 2', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(375, 111021962, '1862200000000064501', -56, 'TC2', 97608, '2017-01-27', 'Oca - Prepay - Rosario ', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(381, 110980098, '1862200000000064184', -57, 'TC2', 97608, '2017-01-27', 'Oca - Prepay - Rosario 3', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(382, 110980099, '1862200000000064183', -57, 'TC2', 97608, '2017-01-27', 'Oca - Prepay - Rosario 4', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(383, 110980100, '1862200000000064182', -57, 'TC2', 97608, '2017-01-27', 'Oca - Prepay - Rosario 5', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(372, 111226283, '1862200000000064698', -50, 'TC2', 97608, '2017-02-02', 'OCA - VITACOM - Rosario ', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(373, 111226284, '1862200000000064697', -50, 'TC2', 97608, '2017-02-02', 'OCA - VITACOM - Rosario 2', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(364, 111688393, '1862200000000065620', -39, 'TC2', 97608, '2017-02-15', 'OCA - VITACOM - Rosario 10', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(365, 111688394, '1862200000000065619', -39, 'TC2', 97608, '2017-02-15', 'OCA - VITACOM - Rosario 11', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(360, 111688388, '1862200000000065625', -39, 'TC2', 97608, '2017-02-15', 'OCA - VITACOM - Rosario 5', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(367, 111688397, '1862200000000065616', -39, 'TC2', 97608, '2017-02-15', 'OCA - VITACOM - Rosario 14', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(368, 111688399, '1862200000000065614', -39, 'TC2', 97608, '2017-02-15', 'OCA - VITACOM - Rosario 16', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(369, 111688401, '1862200000000065612', -39, 'TC2', 97608, '2017-02-15', 'OCA - VITACOM - Rosario 18', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(362, 111688390, '1862200000000065623', -39, 'TC2', 97608, '2017-02-15', 'OCA - VITACOM - Rosario 7', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(366, 111688395, '1862200000000065618', -39, 'TC2', 97608, '2017-02-15', 'OCA - VITACOM - Rosario 12', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(370, 111688403, '1862200000000065610', -39, 'TC2', 97608, '2017-02-15', 'OCA - VITACOM - Rosario 20', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(363, 111688391, '1862200000000065622', -39, 'TC2', 97608, '2017-02-15', 'OCA - VITACOM - Rosario 8', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(361, 111688389, '1862200000000065624', -39, 'TC2', 97608, '2017-02-15', 'OCA - VITACOM - Rosario 6', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(359, 111688387, '1862200000000065626', -39, 'TC2', 97608, '2017-02-15', 'OCA - VITACOM - Rosario 4', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(358, 111688384, '1862200000000065629', -39, 'TC2', 97608, '2017-02-15', 'OCA - VITACOM - Rosario ', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(371, 111688404, '1862200000000065609', -39, 'TC2', 97608, '2017-02-15', 'OCA - VITACOM - Rosario 21', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(346, 111829278, '1862200000000066016', -34, 'TC2', 97608, '2017-02-18', 'OCA - SOLUCIONES - Rosario 18', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(347, 111829279, '1862200000000066015', -34, 'TC2', 97608, '2017-02-18', 'OCA - SOLUCIONES - Rosario 19', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(348, 111829291, '1862200000000066003', -34, 'TC2', 97608, '2017-02-18', 'OCA - SOLUCIONES - Rosario 31', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(349, 111829292, '1862200000000066002', -34, 'TC2', 97608, '2017-02-18', 'OCA - SOLUCIONES - Rosario 32', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(350, 111829293, '1862200000000066001', -34, 'TC2', 97608, '2017-02-18', 'OCA - SOLUCIONES - Rosario 33', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(351, 111829294, '1862200000000066000', -34, 'TC2', 97608, '2017-02-18', 'OCA - SOLUCIONES - Rosario 34', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(352, 111829295, '1862200000000065999', -34, 'TC2', 97608, '2017-02-18', 'OCA - SOLUCIONES - Rosario 35', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(353, 111829296, '1862200000000065998', -34, 'TC2', 97608, '2017-02-18', 'OCA - SOLUCIONES - Rosario 36', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(354, 111829297, '1862200000000065997', -34, 'TC2', 97608, '2017-02-18', 'OCA - SOLUCIONES - Rosario 37', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(355, 111829298, '1862200000000065996', -34, 'TC2', 97608, '2017-02-18', 'OCA - SOLUCIONES - Rosario 38', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(356, 111829299, '1862200000000065995', -34, 'TC2', 97608, '2017-02-18', 'OCA - SOLUCIONES - Rosario 39', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(357, 111829300, '1862200000000065994', -34, 'TC2', 97608, '2017-02-18', 'OCA - SOLUCIONES - Rosario 40', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(334, 111825897, '1862200000000065968', -34, 'TC2', 97608, '2017-02-18', 'OCA - SOLUCIONES - Rosario 16', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(335, 111825898, '1862200000000065967', -34, 'TC2', 97608, '2017-02-18', 'OCA - SOLUCIONES - Rosario 17', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(345, 111825924, '1862200000000065941', -34, 'TC2', 97608, '2017-02-20', 'OCA - SOLUCIONES - Rosario 10', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(339, 111825918, '1862200000000065947', -34, 'TC2', 97608, '2017-02-20', 'OCA - SOLUCIONES - Rosario 4', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(342, 111825921, '1862200000000065944', -34, 'TC2', 97608, '2017-02-20', 'OCA - SOLUCIONES - Rosario 7', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(344, 111825923, '1862200000000065942', -34, 'TC2', 97608, '2017-02-20', 'OCA - SOLUCIONES - Rosario 9', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(336, 111825899, '1862200000000065966', -34, 'TC2', 97608, '2017-02-20', 'OCA - SOLUCIONES - Rosario 18', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(337, 111825900, '1862200000000065965', -34, 'TC2', 97608, '2017-02-20', 'OCA - SOLUCIONES - Rosario 19', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(338, 111825901, '1862200000000065964', -34, 'TC2', 97608, '2017-02-20', 'OCA - SOLUCIONES - Rosario 20', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(343, 111825922, '1862200000000065943', -34, 'TC2', 97608, '2017-02-20', 'OCA - SOLUCIONES - Rosario 8', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(340, 111825919, '1862200000000065946', -34, 'TC2', 97608, '2017-02-20', 'OCA - SOLUCIONES - Rosario 5', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(341, 111825920, '1862200000000065945', -34, 'TC2', 97608, '2017-02-20', 'OCA - SOLUCIONES - Rosario 6', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(332, 111889922, '1862200000000066268', -33, 'TC2', 97608, '2017-02-21', 'OCA - VITACOM - Rosario 4', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(333, 111889934, '1862200000000066256', -33, 'TC2', 97608, '2017-02-21', 'OCA - VITACOM - Rosario 2', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(317, 111884637, '1862200000000066128', -33, 'TC2', 97608, '2017-02-21', 'Oca - Prepay - Rosario 3', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(318, 111885547, '1862200000000066170', -33, 'TC2', 97608, '2017-02-21', 'Oca - Prepay - Rosario ', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(319, 111885548, '1862200000000066169', -33, 'TC2', 97608, '2017-02-21', 'Oca - Prepay - Rosario 2', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(320, 111885549, '1862200000000066168', -33, 'TC2', 97608, '2017-02-21', 'Oca - Prepay - Rosario 3', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(321, 111885550, '1862200000000066167', -33, 'TC2', 97608, '2017-02-21', 'Oca - Prepay - Rosario 4', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(322, 111885551, '1862200000000066166', -33, 'TC2', 97608, '2017-02-21', 'Oca - Prepay - Rosario 5', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(323, 111885552, '1862200000000066165', -33, 'TC2', 97608, '2017-02-21', 'Oca - Prepay - Rosario 6', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(324, 111885553, '1862200000000066164', -33, 'TC2', 97608, '2017-02-21', 'Oca - Prepay - Rosario 7', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(325, 111886137, '1862200000000066192', -33, 'TC2', 97608, '2017-02-21', 'OCA - SOLUCIONES - Rosario ', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(329, 111886141, '1862200000000066188', -33, 'TC2', 97608, '2017-02-21', 'OCA - SOLUCIONES - Rosario 5', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(330, 111886142, '1862200000000066187', -33, 'TC2', 97608, '2017-02-21', 'OCA - SOLUCIONES - Rosario 6', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(331, 111886143, '1862200000000066186', -33, 'TC2', 97608, '2017-02-21', 'OCA - SOLUCIONES - Rosario 7', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(326, 111886138, '1862200000000066191', -33, 'TC2', 97608, '2017-02-22', 'OCA - SOLUCIONES - Rosario 2', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(327, 111886139, '1862200000000066190', -33, 'TC2', 97608, '2017-02-22', 'OCA - SOLUCIONES - Rosario 3', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(328, 111886140, '1862200000000066189', -33, 'TC2', 97608, '2017-02-22', 'OCA - SOLUCIONES - Rosario 4', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(310, 112473472, '1862200000000066803', -14, 'TC2', 97608, '2017-03-11', 'OCA - VITACOM - Rosario 2', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(311, 112473473, '1862200000000066802', -14, 'TC2', 97608, '2017-03-11', 'OCA - VITACOM - Rosario 3', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(312, 112473474, '1862200000000066801', -14, 'TC2', 97608, '2017-03-11', 'OCA - VITACOM - Rosario 4', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(313, 112473475, '1862200000000066800', -14, 'TC2', 97608, '2017-03-11', 'OCA - VITACOM - Rosario 5', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(314, 112473476, '1862200000000066799', -14, 'TC2', 97608, '2017-03-11', 'OCA - VITACOM - Rosario 6', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(315, 112473477, '1862200000000066798', -14, 'TC2', 97608, '2017-03-11', 'OCA - VITACOM - Rosario 7', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(308, 112593925, '1862200000000067023', -12, 'TC2', 97608, '2017-03-15', 'OCA - SOLUCIONES - Rosario 6', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(278, 112597315, '1862200000000067064', -12, 'TC2', 97608, '2017-03-15', 'OCA - SOLUCIONES - Rosario 9', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(279, 112597316, '1862200000000067063', -12, 'TC2', 97608, '2017-03-15', 'OCA - SOLUCIONES - Rosario 10', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(275, 112597312, '1862200000000067067', -12, 'TC2', 97608, '2017-03-15', 'OCA - SOLUCIONES - Rosario 6', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(307, 112593924, '1862200000000067024', -12, 'TC2', 97608, '2017-03-15', 'OCA - SOLUCIONES - Rosario 5', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(277, 112597314, '1862200000000067065', -12, 'TC2', 97608, '2017-03-15', 'OCA - SOLUCIONES - Rosario 8', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(276, 112597313, '1862200000000067066', -12, 'TC2', 97608, '2017-03-15', 'OCA - SOLUCIONES - Rosario 7', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(306, 112593923, '1862200000000067025', -12, 'TC2', 97608, '2017-03-15', 'OCA - SOLUCIONES - Rosario 4', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(254, 112594539, '1862200000000067037', -12, 'TC2', 97608, '2017-03-15', 'OCA - SOLUCIONES - Rosario 4', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(265, 112595974, '1862200000000067046', -12, 'TC2', 97608, '2017-03-15', 'OCA - SOLUCIONES - Rosario 6', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(253, 112594538, '1862200000000067038', -12, 'TC2', 97608, '2017-03-15', 'OCA - SOLUCIONES - Rosario 3', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(263, 112595972, '1862200000000067048', -12, 'TC2', 97608, '2017-03-15', 'OCA - SOLUCIONES - Rosario 4', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(288, 112597325, '1862200000000067054', -12, 'TC2', 97608, '2017-03-15', 'OCA - SOLUCIONES - Rosario 19', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(268, 112595977, '1862200000000067043', -12, 'TC2', 97608, '2017-03-15', 'OCA - SOLUCIONES - Rosario 9', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(261, 112595970, '1862200000000067050', -12, 'TC2', 97608, '2017-03-15', 'OCA - SOLUCIONES - Rosario 2', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(287, 112597324, '1862200000000067055', -12, 'TC2', 97608, '2017-03-15', 'OCA - SOLUCIONES - Rosario 18', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(260, 112594546, '1862200000000067030', -12, 'TC2', 97608, '2017-03-15', 'OCA - SOLUCIONES - Rosario 11', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(289, 112597326, '1862200000000067053', -12, 'TC2', 97608, '2017-03-15', 'OCA - SOLUCIONES - Rosario 20', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(251, 112594536, '1862200000000067040', -12, 'TC2', 97608, '2017-03-15', 'OCA - SOLUCIONES - Rosario ', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(264, 112595973, '1862200000000067047', -12, 'TC2', 97608, '2017-03-15', 'OCA - SOLUCIONES - Rosario 5', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(269, 112595978, '1862200000000067042', -12, 'TC2', 97608, '2017-03-15', 'OCA - SOLUCIONES - Rosario 10', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(262, 112595971, '1862200000000067049', -12, 'TC2', 97608, '2017-03-15', 'OCA - SOLUCIONES - Rosario 3', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(282, 112597319, '1862200000000067060', -12, 'TC2', 97608, '2017-03-15', 'OCA - SOLUCIONES - Rosario 13', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(249, 112593932, '1862200000000067016', -12, 'TC2', 97608, '2017-03-15', 'OCA - SOLUCIONES - Rosario 13', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(252, 112594537, '1862200000000067039', -12, 'TC2', 97608, '2017-03-15', 'OCA - SOLUCIONES - Rosario 2', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(271, 112597308, '1862200000000067071', -12, 'TC2', 97608, '2017-03-15', 'OCA - SOLUCIONES - Rosario 2', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(280, 112597317, '1862200000000067062', -12, 'TC2', 97608, '2017-03-15', 'OCA - SOLUCIONES - Rosario 11', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(286, 112597323, '1862200000000067056', -12, 'TC2', 97608, '2017-03-15', 'OCA - SOLUCIONES - Rosario 17', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(273, 112597310, '1862200000000067069', -12, 'TC2', 97608, '2017-03-15', 'OCA - SOLUCIONES - Rosario 4', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(266, 112595975, '1862200000000067045', -12, 'TC2', 97608, '2017-03-15', 'OCA - SOLUCIONES - Rosario 7', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(274, 112597311, '1862200000000067068', -12, 'TC2', 97608, '2017-03-15', 'OCA - SOLUCIONES - Rosario 5', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(272, 112597309, '1862200000000067070', -12, 'TC2', 97608, '2017-03-15', 'OCA - SOLUCIONES - Rosario 3', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(281, 112597318, '1862200000000067061', -12, 'TC2', 97608, '2017-03-15', 'OCA - SOLUCIONES - Rosario 12', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(250, 112593933, '1862200000000067015', -12, 'TC2', 97608, '2017-03-15', 'OCA - SOLUCIONES - Rosario 14', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(267, 112595976, '1862200000000067044', -12, 'TC2', 97608, '2017-03-15', 'OCA - SOLUCIONES - Rosario 8', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(295, 112592360, '1862200000000066979', -12, 'TC2', 97608, '2017-03-15', 'OCA - SOLUCIONES - Rosario 6', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(292, 112592357, '1862200000000066982', -12, 'TC2', 97608, '2017-03-15', 'OCA - SOLUCIONES - Rosario 3', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(296, 112592361, '1862200000000066978', -12, 'TC2', 97608, '2017-03-15', 'OCA - SOLUCIONES - Rosario 7', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(305, 112593922, '1862200000000067026', -12, 'TC2', 97608, '2017-03-15', 'OCA - SOLUCIONES - Rosario 3', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(293, 112592358, '1862200000000066981', -12, 'TC2', 97608, '2017-03-15', 'OCA - SOLUCIONES - Rosario 4', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(290, 112592355, '1862200000000066984', -12, 'TC2', 97608, '2017-03-15', 'OCA - SOLUCIONES - Rosario ', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(257, 112594542, '1862200000000067034', -12, 'TC2', 97608, '2017-03-15', 'OCA - SOLUCIONES - Rosario 7', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(246, 112593926, '1862200000000067022', -12, 'TC2', 97608, '2017-03-15', 'OCA - SOLUCIONES - Rosario 7', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(256, 112594541, '1862200000000067035', -12, 'TC2', 97608, '2017-03-15', 'OCA - SOLUCIONES - Rosario 6', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(258, 112594543, '1862200000000067033', -12, 'TC2', 97608, '2017-03-15', 'OCA - SOLUCIONES - Rosario 8', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(298, 112592363, '1862200000000066976', -12, 'TC2', 97608, '2017-03-15', 'OCA - SOLUCIONES - Rosario 9', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(301, 112592366, '1862200000000066973', -12, 'TC2', 97608, '2017-03-15', 'OCA - SOLUCIONES - Rosario 12', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(259, 112594544, '1862200000000067032', -12, 'TC2', 97608, '2017-03-15', 'OCA - SOLUCIONES - Rosario 9', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(300, 112592365, '1862200000000066974', -12, 'TC2', 97608, '2017-03-15', 'OCA - SOLUCIONES - Rosario 11', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(270, 112597307, '1862200000000067072', -12, 'TC2', 97608, '2017-03-15', 'OCA - SOLUCIONES - Rosario ', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(299, 112592364, '1862200000000066975', -12, 'TC2', 97608, '2017-03-15', 'OCA - SOLUCIONES - Rosario 10', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(285, 112597322, '1862200000000067057', -12, 'TC2', 97608, '2017-03-15', 'OCA - SOLUCIONES - Rosario 16', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(302, 112592367, '1862200000000066972', -12, 'TC2', 97608, '2017-03-15', 'OCA - SOLUCIONES - Rosario 13', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(283, 112597320, '1862200000000067059', -12, 'TC2', 97608, '2017-03-15', 'OCA - SOLUCIONES - Rosario 14', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(297, 112592362, '1862200000000066977', -12, 'TC2', 97608, '2017-03-15', 'OCA - SOLUCIONES - Rosario 8', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(291, 112592356, '1862200000000066983', -12, 'TC2', 97608, '2017-03-15', 'OCA - SOLUCIONES - Rosario 2', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(303, 112593920, '1862200000000067028', -12, 'TC2', 97608, '2017-03-15', 'OCA - SOLUCIONES - Rosario ', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(247, 112593927, '1862200000000067021', -12, 'TC2', 97608, '2017-03-15', 'OCA - SOLUCIONES - Rosario 8', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(304, 112593921, '1862200000000067027', -12, 'TC2', 97608, '2017-03-15', 'OCA - SOLUCIONES - Rosario 2', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(255, 112594540, '1862200000000067036', -12, 'TC2', 97608, '2017-03-15', 'OCA - SOLUCIONES - Rosario 5', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(294, 112592359, '1862200000000066980', -12, 'TC2', 97608, '2017-03-15', 'OCA - SOLUCIONES - Rosario 5', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(248, 112593928, '1862200000000067020', -12, 'TC2', 97608, '2017-03-15', 'OCA - SOLUCIONES - Rosario 9', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(284, 112597321, '1862200000000067058', -12, 'TC2', 97608, '2017-03-15', 'OCA - SOLUCIONES - Rosario 15', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(245, 112790028, '1862100001437961438', -8, 'TCP', 64831, '2017-03-20', 'DUSSO LUCIANO 860715036406686', 'AV NTRA SENORA DEL R 312      ', 'ROSARIO', 'SANTA FE                      ', '0', '0', 0),
(235, 112873640, '1862200000000067491', -3, 'TC2', 97608, '2017-03-22', 'OCA - VITACOM - Rosario ', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(236, 112873641, '1862200000000067490', -3, 'TC2', 97608, '2017-03-22', 'OCA - VITACOM - Rosario 2', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(239, 112873644, '1862200000000067487', -3, 'TC2', 97608, '2017-03-22', 'OCA - VITACOM - Rosario 5', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(240, 112873645, '1862200000000067486', -3, 'TC2', 97608, '2017-03-22', 'OCA - VITACOM - Rosario 6', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(242, 112873647, '1862200000000067484', -3, 'TC2', 97608, '2017-03-22', 'OCA - VITACOM - Rosario 8', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(243, 112873648, '1862200000000067483', -3, 'TC2', 97608, '2017-03-22', 'OCA - VITACOM - Rosario 9', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(237, 112873642, '1862200000000067489', -3, 'TC2', 97608, '2017-03-22', 'OCA - VITACOM - Rosario 3', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(241, 112873646, '1862200000000067485', -3, 'TC2', 97608, '2017-03-22', 'OCA - VITACOM - Rosario 7', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(238, 112873643, '1862200000000067488', -3, 'TC2', 97608, '2017-03-22', 'OCA - VITACOM - Rosario 4', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(214, 112720559, '3913500000000014850', -1, 'WY4', 74453, '2017-03-22', 'arias soledad', 'almirante brown 921  ', 'San MartÃ­n', 'SANTA FE                      ', '0', '0', 0),
(218, 112953773, '1041900000000135501', -2, 'TRB', 55367, '2017-03-22', 'S/D S/D', 'S/D S/N   - S/D    S/D ', 'ROSARIO', 'SANTA FE', '0', '0', 0),
(198, 112943236, '4465300000000001003', 0, 'R8C', 255126, '2017-03-23', 'DESCANSAR S.R.L.', 'BV. SARMIENTO 1389 ', '', 'SANTA FE', '0', '0', 0),
(226, 112927112, '1862200000000067625', -2, 'TC2', 97608, '2017-03-23', 'Oca - Prepay - Rosario 2', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(227, 112927113, '1862200000000067624', -2, 'TC2', 97608, '2017-03-23', 'Oca - Prepay - Rosario 3', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(225, 112927111, '1862200000000067626', -2, 'TC2', 97608, '2017-03-23', 'Oca - Prepay - Rosario ', 'ROS - SANTIAGO                 380  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(223, 113012463, '1600300000001236158', -2, 'XXE', 55754, '2017-03-23', 'RED F PISTACCHIA S/D', 'AV E PERON 8055 ', 'ROSARIO', 'SANTA FE', '0', '0', 0),
(234, 112890162, '0827400000003054864', -3, 'MAR', 266536, '2017-03-23', 'VALERIA RAQUEL SUIMBOURN S/D', 'SAN MARTIN 3209 PISO 8 S/N  ', 'ROSARIO', 'SANTA FE', '0', '0', 0),
(233, 112792002, '0827400000003053834', -3, 'MAR', 266536, '2017-03-23', 'CLAUDIA VICTORIA VILLARREAL de S/D', 'ITALIA  2278 S/N  ', 'ALVEAR', 'SANTA FE', '0', '0', 0),
(170, 113028696, '4550700000000026517', 1, 'HKO', 251907, '2017-03-25', 'Viscarra Marcela', 'Sorrento 1270', ' Estacion De      ', 'Rosario', '0', '0', 0),
(201, 113037598, '1851200000000394619', 0, '2PS', 56528, '2017-03-25', 'B P S S/D', 'RIOJA 1205 ', 'ROSARIO', 'SANTA FE', '0', '0', 0),
(228, 112928419, '1808200000004463430', -2, 'A8R', 55681, '2017-03-25', 'DUILIO SANABRIA', 'PUYRREDON 435  ', 'CANADA ROSQUIN', 'SANTA FE', '0', '0', 0),
(159, 112884424, '3867500000035776591', 2, 'XZ0', 258600, '2017-03-25', '- Adriel Pellegrini', 'ColÃ³n 811  ', 'MarÃ­a Susana', 'SANTA FE                      ', '0', '0', 0),
(215, 112726750, '3867500000035618026', -1, 'XZ0', 74107, '2017-03-25', '- mauro sosa', '29 145  ', 'Maria Susana', 'SANTA FE                      ', '0', '0', 0),
(157, 112949818, '5145000000000000453', 2, '6IJ', 270744, '2017-03-25', 'PORTA LUCIANA MARIA', 'SAN GERONIMO 498  ', '', 'SANTA FE', '0', '0', 0),
(96, 112952290, '3867500000035836520', 3, 'XZ0', 73328, '2017-03-25', '- matias roncaroli', 'Av Cincuentenario 1041 ', 'mariasusana', 'SANTA FE                      ', '0', '0', 0),
(177, 113013057, '1808200000004467542', 1, '---', 55681, '2017-03-25', 'S/D S/D', 'S/D S/N   - S/D    S/D ', 'CASAS', 'SANTA FE', '0', '0', 0),
(175, 112937513, '3867500000035824314', 1, 'XZ0', 258601, '2017-03-27', '- Luciano Vera', 'RO1 - CORRIENTES               746  ', 'ROSARIO                  ', 'SANTA FE                      ', '0', '0', 0),
(202, 113049425, '1041900000000135574', 0, 'TRB', 55367, '2017-03-27', 'S/D S/D', 'S/D S/N   - S/D    S/D ', 'ROSARIO', 'SANTA FE', '0', '0', 0),
(182, 113130812, '1923800000000523933', 1, 'DRK', 57858, '2017-03-27', 'ZELAYA S/D', 'CORDOBA N  744 S/N  ', 'MACIEL', 'SANTA FE', '0', '0', 0),
(162, 113017970, '3867500000035893478', 2, 'XZ0', 278660, '2017-03-27', '- Gustavo Chinellato', 'Eva PerÃ³n 937  ', 'Pueblo Andino', 'SANTA FE                      ', '0', '0', 0),
(88, 112998829, '4327500000000071401', 3, 'ZUG', 276575, '2017-03-27', 'Alarcon Mariela', 'Castellanos 840   - Fa    ', 'Puerto gaboto', 'SANTA FE                      ', '0', '0', 0),
(224, 112885493, '1217400000000227025', -2, 'S03', 274435, '2017-03-27', 'ROJO CARINA', 'independencia 351  ', '', 'SANTA FE                      ', '0', '0', 0),
(211, 112877803, '3663400000003110532', -1, '594', 67717, '2017-03-27', 'Alberto Marcela', 'Peron 1049 ', 'San Martin de las Escobas', 'SANTA FE                      ', '0', '0', 0),
(210, 112842705, '3663400000003108571', -1, '594', 67717, '2017-03-27', 'Alberto Marcela', 'Peron 1049 ', 'San Martin de las Escobas', 'SANTA FE                      ', '0', '0', 0),
(196, 112709291, '3867500000035602831', 0, 'XZ0', 74107, '2017-03-27', '- SONIA GONZALEZ', 'ALZUGARAY 720  ', 'ROSARIO', 'SANTA FE                      ', '0', '0', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `leido`
--
ALTER TABLE `leido`
  ADD UNIQUE KEY `oepLEIDO` (`oepLEIDO`(21));

--
-- Indices de la tabla `oep`
--
ALTER TABLE `oep`
  ADD UNIQUE KEY `numero` (`numero`(21));

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
