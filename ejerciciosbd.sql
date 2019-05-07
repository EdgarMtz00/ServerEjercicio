-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-05-2019 a las 05:51:10
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
  `Dificultad` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ejercicios`
--

INSERT INTO `ejercicios` (`ID`, `Nombre`, `Instrucciones`, `Dificultad`) VALUES
(1, 'nombre', 'instruccion', 2),
(15, 'nombre', 'instruccion', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rutinas`
--

CREATE TABLE `rutinas` (
  `ID` int(11) NOT NULL,
  `IDUsuario` int(11) NOT NULL,
  `IDEjercicio` int(11) NOT NULL,
  `Dia` enum('Lunes','Martes','Miercoles','Jueves','Viernes','Sabado','Domingo') NOT NULL,
  `Repeticiones` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `rutinas`
--

INSERT INTO `rutinas` (`ID`, `IDUsuario`, `IDEjercicio`, `Dia`, `Repeticiones`) VALUES
(1, 1, 1, 'Lunes', 30),
(2, 1, 1, 'Martes', 30),
(3, 1, 15, 'Lunes', 30),
(4, 2, 15, 'Lunes', 30),
(5, 1, 15, 'Lunes', 30),
(6, 1, 15, 'Lunes', 30),
(7, 1, 15, 'Lunes', 30),
(8, 1, 15, 'Lunes', 30),
(9, 1, 15, 'Viernes', 30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `ID` int(11) NOT NULL,
  `Correo` varchar(40) NOT NULL,
  `Contrasena` varchar(16) NOT NULL,
  `Edad` tinyint(4) NOT NULL,
  `Estatura` tinyint(4) NOT NULL,
  `Peso` smallint(6) NOT NULL,
  `Meta` enum('Pierna','Brazos','Abdomen','') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`ID`, `Correo`, `Contrasena`, `Edad`, `Estatura`, `Peso`, `Meta`) VALUES
(1, 'edgar.agustin.martinez@gmail.com', 'proyecto', 2, 2, 2, NULL),
(2, 'edgar@gmail.com', 'proyecto', 8, 13, 52, NULL),
(4, 'gera@gmail.com', 'colocado', 8, 13, 52, NULL),
(6, 'correo@usuario.com', 'pwd', 51, 42, 15, NULL),
(7, 'prueba@prueba.com', 'prueba', 19, 114, 67, NULL),
(8, 'prueba@prueba.com', 'prueba', 19, 114, 67, NULL);

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
  ADD KEY `IDEjercicio` (`IDEjercicio`),
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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `rutinas`
--
ALTER TABLE `rutinas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `rutinas`
--
ALTER TABLE `rutinas`
  ADD CONSTRAINT `rutinas_ibfk_1` FOREIGN KEY (`IDEjercicio`) REFERENCES `ejercicios` (`ID`),
  ADD CONSTRAINT `rutinas_ibfk_2` FOREIGN KEY (`IDUsuario`) REFERENCES `usuario` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
