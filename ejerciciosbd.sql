-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-05-2019 a las 05:40:58
-- Versión del servidor: 10.1.30-MariaDB
-- Versión de PHP: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ejerciciosbd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ejercicios`
--

CREATE TABLE `ejercicios` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(25) NOT NULL,
  `Instrucciones` varchar(100) NOT NULL,
  `Dificultad` tinyint(4) NOT NULL,
  `Zona` enum('Pierna','Brazos','Abdomen') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ejercicios`
--

INSERT INTO `ejercicios` (`ID`, `Nombre`, `Instrucciones`, `Dificultad`, `Zona`) VALUES
(16, 'Close Grip Bench Press', 'Lower weight to chest with elbows close to body. Push bar back up until arms are straight. Repeat. ', 2, 'Brazos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rutinas`
--

CREATE TABLE `rutinas` (
  `ID` int(11) NOT NULL,
  `IDUsuario` bigint(11) NOT NULL,
  `IDEjercicio` int(11) NOT NULL,
  `Dia` enum('Lunes','Martes','Miercoles','Jueves','Viernes','Sabado','Domingo') NOT NULL,
  `Repeticiones` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `rutinas`
--

INSERT INTO `rutinas` (`ID`, `IDUsuario`, `IDEjercicio`, `Dia`, `Repeticiones`) VALUES
(94, 2, 16, 'Lunes', 20),
(95, 2, 16, 'Martes', 20),
(96, 2, 16, 'Miercoles', 20),
(97, 2, 16, 'Jueves', 20),
(98, 2, 16, 'Viernes', 20),
(99, 2, 16, 'Sabado', 20),
(100, 2, 16, 'Domingo', 20),
(101, 9, 16, 'Lunes', 21),
(102, 9, 16, 'Martes', 10),
(103, 9, 16, 'Miercoles', 10),
(104, 9, 16, 'Jueves', 9),
(105, 9, 16, 'Viernes', 24),
(106, 9, 16, 'Sabado', 10),
(107, 9, 16, 'Domingo', 13),
(117, 2479552088723892, 16, 'Lunes', 36),
(118, 2479552088723892, 16, 'Martes', 53),
(119, 2479552088723892, 16, 'Miercoles', 59),
(120, 2479552088723892, 16, 'Jueves', 68),
(121, 2479552088723892, 16, 'Viernes', 74),
(122, 2479552088723892, 16, 'Sabado', 81),
(123, 2479552088723892, 16, 'Domingo', 92);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `ID` bigint(11) NOT NULL,
  `Correo` varchar(40) DEFAULT NULL,
  `Contrasena` varchar(16) DEFAULT NULL,
  `Edad` tinyint(4) NOT NULL,
  `Estatura` tinyint(4) NOT NULL,
  `Peso` smallint(6) NOT NULL,
  `Meta` enum('Piernas','Brazos','Abdomen') DEFAULT NULL,
  `Record` int(11) DEFAULT '0',
  `Promedio` int(11) DEFAULT '0',
  `Ultimo` int(11) DEFAULT '0',
  `Contador` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`ID`, `Correo`, `Contrasena`, `Edad`, `Estatura`, `Peso`, `Meta`, `Record`, `Promedio`, `Ultimo`, `Contador`) VALUES
(1, 'edgar.agustin.martinez@gmail.com', 'proyecto', 2, 2, 2, NULL, 0, 0, 0, 0),
(2, 'edgar@gmail.com', 'proyecto', 22, 127, 70, 'Abdomen', 0, 0, 0, 0),
(4, 'gera@gmail.com', 'colocado', 8, 13, 52, NULL, 0, 0, 0, 0),
(6, 'correo@usuario.com', 'pwd', 51, 42, 15, NULL, 0, 0, 0, 0),
(7, 'prueba@prueba.com', 'prueba', 19, 114, 67, NULL, 0, 0, 0, 0),
(8, 'prueba@prueba.com', 'prueba', 19, 114, 67, NULL, 0, 0, 0, 0),
(9, 'prueba420@gmail.com', 'prueba', 18, 127, 70, NULL, 0, 0, 0, 0),
(2479552088723892, NULL, NULL, 18, 127, 69, 'Abdomen', 19, 14, 10, 5),
(2479552088723900, NULL, NULL, 2, 2, 21, NULL, 0, 0, 0, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ejercicios`
--
ALTER TABLE `ejercicios`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `rutinas`
--
ALTER TABLE `rutinas`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `rutinas_ibfk_1` (`IDEjercicio`),
  ADD KEY `IDUsuario` (`IDUsuario`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ejercicios`
--
ALTER TABLE `ejercicios`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `rutinas`
--
ALTER TABLE `rutinas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `ID` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2147483647;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `rutinas`
--
ALTER TABLE `rutinas`
  ADD CONSTRAINT `rutinas_ibfk_1` FOREIGN KEY (`IDEjercicio`) REFERENCES `ejercicios` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rutinas_ibfk_2` FOREIGN KEY (`IDUsuario`) REFERENCES `usuario` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
