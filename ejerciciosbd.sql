-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-06-2019 a las 09:37:17
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
  `Nombre` varchar(50) NOT NULL,
  `Instrucciones` varchar(500) NOT NULL,
  `Dificultad` tinyint(4) NOT NULL,
  `Zona` enum('Pierna','Brazos','Abdomen') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ejercicios`
--

INSERT INTO `ejercicios` (`ID`, `Nombre`, `Instrucciones`, `Dificultad`, `Zona`) VALUES
(17, 'extensión de tríceps recostado', 'Bajar la barra doblando los codos. A medida que se acerca a la barra cabeza, mover los codos ligeramente hacia atrás lo suficiente como para permitir que la barra para limpiar alrededor de la curvatura de la cabeza. Extiende los brazos. A medida que la barra borra cabeza, cambiar la posición de los codos a su posición anterior hasta que los brazos estén completamente extendidos. Repetir.\r\nColocar pulsera para el ejercicio en el brazo.', 3, 'Brazos'),
(18, 'extensión de tríceps', 'Antebrazo inferior detrás del brazo superior con los codos encima de la cabeza restantes. Extender por encima del antebrazo. Menor y repetir. \r\nColocar pulsera para el ejercicio en el brazo.', 3, 'Brazos'),
(19, 'tríceps de extensión (agarre en pronación)', 'Agarre estribo de fijación del cable de detrás. Coloque la mano con el cable detrás del cuello; palma hacia el cuello y el codo posicionado hacia arriba.\r\nExtender brazo hacia arriba. Volver y repetir. Continuar con el brazo opuesto.\r\nColocar pulsera para el ejercicio en el brazo. ', 2, 'Brazos'),
(20, 'tríceps Dip', 'Arrodíllese cerca de la polea baja y adjuntar cable para el cinturón. Ponte de pie y montar barra de inmersión, con los brazos estirados por encima de los hombros las manos. Mantenga las caderas recta. \r\nFlexionar parte inferior de los brazos hasta sentir  un estiramiento en los hombros. Empujar el cuerpo hacia arriba hasta que los brazos queden rectos. Repetir.\r\nColocar pulsera para el ejercicio en el brazo.', 2, 'Brazos'),
(21, 'tríceps extensión (agarre supino)', 'Agarre estribo de fijación del cable de detrás. Coloque la mano con el cable detrás del cuello; palma hacia el cuello y el codo posicionado hacia arriba.\r\nExtender brazo hacia arriba. Volver y repetir. Continuar con el brazo opuesto.\r\nColocar pulsera para el ejercicio en el brazo.', 2, 'Brazos'),
(23, 'Press JM', 'Recuestese en el banco con la espalda plana y agarrar barra de bastidor con la anchura del hombro.\r\nBaja en línea recta hacia el cuello mientras se mantiene codos relativamente alta y doblándolas hacia los lados,mover muñecas ligeramente a medida que la barra se baja como para mantener el peso de la barra en la base de palmas. Pausa cuando la barra haga contacto con bíceps. Empuje barra hacia atrás hasta que los brazos queden rectos. Repetir. \r\nColocar pulsera para el ejercicio en el brazo.', 1, 'Brazos'),
(24, 'Lagartijas', 'Acuéstese boca abajo en suelo con las manos debajo de los hombros o ligeramente más estrecho. la posición del cuerpo hasta baja, junto con los brazos extendidos y el cuerpo recto.\r\nMantener el cuerpo recto, parte inferior del cuerpo a la baja por los brazos doblado. Empujar el cuerpo hacia arriba hasta que los brazos están extendidos. Repetir.\r\nColocar pulsera para el ejercicio en el brazo. ', 1, 'Brazos'),
(25, 'Pushdown', 'De cara a la polea alta y agarrar acoplamiento de cable con agarre en pronación estrecha. Posición codos a lado.\r\nExtender los brazos hacia abajo. Volver hasta el antebrazo está cerca de brazo superior. Repetir.\r\nColocar pulsera para el ejercicio en el brazo. ', 1, 'Brazos'),
(27, 'Empuje Sentado', 'pies de posición debajo de la almohadilla del pie y se encuentran en posición supina sobre banco plano o inclinado. Tire de barra desde el suelo o agarrar de cremallera atrás con agarre en pronación. Posición barra sobre el pecho con la anchura del hombro o agarre ligeramente más ancho.\r\nElevar torso lo más alto posible y mantener las caderas dobladas. Mantenga el peso colocado encima de los hombros y regrese para lograr la postura erguida. Repetir.\r\nColocar pulsera para el ejercicio en el brazo', 3, 'Abdomen'),
(28, 'Sentadilla Frontal', 'Póngase en cuclillas, doblando las caderas hacia atrás al tiempo que permite rodillas se doblen hacia adelante, manteniendo la espalda recta y las rodillas apuntando misma dirección que los pies. Descender hasta los muslos son paralelos pasado. Extender las rodillas y las caderas hasta que las piernas son rectas. Volver y repetir.\r\nColocar pulsera para el ejercicio en el brazo. ', 1, 'Pierna'),
(29, 'sentadilla completa', 'Póngase en cuclillas, doblando las caderas hacia atrás al tiempo que permite rodillas se doblen hacia adelante, manteniendo la espalda recta y las rodillas apuntando misma dirección que los pies. Descender hasta las rodillas y las caderas son totalmente doblada. Extender las rodillas y las caderas hasta que las piernas son rectas. Volver y repetir.\r\nColocar pulsera para el ejercicio en el brazo. ', 2, 'Pierna'),
(30, 'Elevaciones de talones de pie', 'Elevar los talones mediante la extensión de los tobillos lo más alto posible. tacos más bajos por los tobillos hasta las pantorrillas flexión se estiran. Repetir.\r\nColocar pulsera para el ejercicio en el brazo. ', 1, 'Pierna'),
(31, 'Abdominal Inclinada', 'Elevar el torso del banco junto cintura y las caderas flexión. Volver hasta posterior de los hombros en contacto con placa de inclinación acolchada. Repetir. \r\nColocar pulsera para el ejercicio en el brazo.', 1, 'Abdomen'),
(32, 'Abdominal con bola', 'Con la bola en ambas manos, acostarse sobre el soporte hacia atrás mientras baja la bola de medicina detrás de la cabeza. Elevar torso de soporte de la espalda doblando la cintura y las caderas mientras que aumenta la pelota sobre la cabeza. Inmediatamente lanzar la bola en blanco y agarrar otra bola de medicina en la parte inferior de la tolva. Repita el movimiento. \r\nColocar pulsera para el ejercicio en el brazo.', 2, 'Abdomen'),
(33, 'Hack Squat', 'Baje la palanca flexionando las caderas y las rodillas hasta las rodillas son poco menos de la flexión completa. Elevar trineo mediante la extensión de las rodillas y las caderas. Repetir.\r\nColocar pulsera para el ejercicio en el brazo.', 2, 'Abdomen'),
(34, 'V-Squat', 'Baje la palanca flexionando las caderas y las rodillas hasta las rodillas son poco menos de la flexión completa. Elevar trineo mediante la extensión de las rodillas y las caderas. Repetir.\r\nColocar pulsera para el ejercicio en el brazo.', 1, 'Pierna'),
(35, 'encorvada', 'Doble las rodillas ligeramente y se doblan sobre la barra con la espalda recta. Agarre la barra con agarre en pronación ancho.\r\nTire de la barra a la cintura superior. Regresar hasta que los brazos están extendidos y los hombros se estiran hacia abajo. Repetir.\r\nColocar pulsera para el ejercicio en el brazo.', 1, 'Abdomen'),
(36, 'Remo alto', 'Tire de la instalación del cable a la cintura y se inclina un poco hacia atrás. Tire los hombros hacia atrás y empujar el pecho hacia adelante mientras se arquea hacia atrás. Volver hasta el torso, los brazos y los hombros tirados hacia adelante. Repetir. \r\nColocar pulsera para ejercicio en el brazo\r\n', 1, 'Brazos'),
(37, 'Elevación de la pierna', 'Elevar piernas flexionando las caderas y rodillas hasta que las caderas están completamente flexionadas. Continuar elevando las rodillas hacia los hombros doblando la cintura. Volver hasta la cintura, las caderas y las rodillas se extienden. Repetir.\r\nColocar pulsera para ejercicio arriba del tobillo de una pierna', 1, 'Pierna');

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
(31, 12, 23, 'Lunes', 12),
(32, 2, 37, 'Lunes', 32),
(33, 2, 28, 'Lunes', 32),
(37, 13, 23, 'Lunes', 12),
(38, 14, 36, 'Lunes', 12),
(39, 14, 25, 'Lunes', 12),
(40, 14, 24, 'Lunes', 12),
(41, 14, 23, 'Lunes', 12),
(42, 17, 32, 'Lunes', 15),
(43, 17, 33, 'Lunes', 15),
(44, 17, 35, 'Lunes', 15),
(45, 17, 37, 'Lunes', 15),
(46, 17, 34, 'Lunes', 15),
(47, 17, 19, 'Martes', 15),
(48, 17, 20, 'Martes', 15),
(49, 17, 21, 'Martes', 15),
(50, 17, 23, 'Martes', 15),
(51, 17, 25, 'Martes', 15),
(52, 17, 29, 'Miercoles', 15),
(53, 17, 33, 'Miercoles', 15),
(54, 17, 28, 'Miercoles', 15),
(55, 17, 30, 'Miercoles', 15),
(56, 17, 32, 'Jueves', 12),
(57, 17, 33, 'Jueves', 12),
(58, 17, 33, 'Jueves', 12),
(59, 17, 19, 'Jueves', 12),
(60, 17, 20, 'Jueves', 12),
(61, 17, 21, 'Jueves', 12),
(62, 17, 28, 'Viernes', 15),
(63, 17, 29, 'Viernes', 15),
(64, 17, 30, 'Viernes', 15),
(65, 17, 23, 'Martes', 15),
(66, 2479552088723908, 32, 'Lunes', 15),
(67, 2479552088723908, 33, 'Lunes', 15),
(68, 2479552088723908, 35, 'Lunes', 15),
(69, 2479552088723908, 37, 'Lunes', 15),
(70, 2479552088723908, 34, 'Lunes', 15),
(71, 2479552088723908, 19, 'Martes', 15),
(72, 2479552088723908, 20, 'Martes', 15),
(73, 2479552088723908, 21, 'Martes', 15),
(74, 2479552088723908, 23, 'Martes', 15),
(75, 2479552088723908, 25, 'Martes', 15),
(76, 2479552088723908, 29, 'Miercoles', 15),
(77, 2479552088723908, 33, 'Miercoles', 15),
(78, 2479552088723908, 28, 'Miercoles', 15),
(79, 2479552088723908, 30, 'Miercoles', 15),
(80, 2479552088723908, 32, 'Jueves', 12),
(81, 2479552088723908, 33, 'Jueves', 12),
(82, 2479552088723908, 33, 'Jueves', 12),
(83, 2479552088723908, 19, 'Jueves', 12),
(84, 2479552088723908, 20, 'Jueves', 12),
(85, 2479552088723908, 21, 'Jueves', 12),
(86, 2479552088723908, 28, 'Viernes', 15),
(87, 2479552088723908, 29, 'Viernes', 15),
(88, 2479552088723908, 30, 'Viernes', 15),
(89, 2479552088723908, 23, 'Martes', 15),
(90, 2479552088723908, 32, 'Lunes', 15),
(91, 2479552088723908, 33, 'Lunes', 15),
(92, 2479552088723908, 35, 'Lunes', 15),
(93, 2479552088723908, 37, 'Lunes', 15),
(94, 2479552088723908, 34, 'Lunes', 15),
(95, 2479552088723908, 19, 'Martes', 15),
(96, 2479552088723908, 20, 'Martes', 15),
(97, 2479552088723908, 21, 'Martes', 15),
(98, 2479552088723908, 23, 'Martes', 15),
(99, 2479552088723908, 25, 'Martes', 15),
(100, 2479552088723908, 29, 'Miercoles', 15),
(101, 2479552088723908, 33, 'Miercoles', 15),
(102, 2479552088723908, 28, 'Miercoles', 15),
(103, 2479552088723908, 30, 'Miercoles', 15),
(104, 2479552088723908, 32, 'Jueves', 12),
(105, 2479552088723908, 33, 'Jueves', 12),
(106, 2479552088723908, 33, 'Jueves', 12),
(107, 2479552088723908, 19, 'Jueves', 12),
(108, 2479552088723908, 20, 'Jueves', 12),
(109, 2479552088723908, 21, 'Jueves', 12),
(110, 2479552088723908, 28, 'Viernes', 15),
(111, 2479552088723908, 29, 'Viernes', 15),
(112, 2479552088723908, 30, 'Viernes', 15),
(113, 2479552088723908, 23, 'Martes', 15),
(114, 2479552088723908, 32, 'Lunes', 15),
(115, 2479552088723908, 33, 'Lunes', 15),
(116, 2479552088723908, 35, 'Lunes', 15),
(117, 2479552088723908, 37, 'Lunes', 15),
(118, 2479552088723908, 34, 'Lunes', 15),
(119, 2479552088723908, 19, 'Martes', 15),
(120, 2479552088723908, 20, 'Martes', 15),
(121, 2479552088723908, 21, 'Martes', 15),
(122, 2479552088723908, 23, 'Martes', 15),
(123, 2479552088723908, 25, 'Martes', 15),
(124, 2479552088723908, 29, 'Miercoles', 15),
(125, 2479552088723908, 33, 'Miercoles', 15),
(126, 2479552088723908, 28, 'Miercoles', 15),
(127, 2479552088723908, 30, 'Miercoles', 15),
(128, 2479552088723908, 32, 'Jueves', 12),
(129, 2479552088723908, 33, 'Jueves', 12),
(130, 2479552088723908, 33, 'Jueves', 12),
(131, 2479552088723908, 19, 'Jueves', 12),
(132, 2479552088723908, 20, 'Jueves', 12),
(133, 2479552088723908, 21, 'Jueves', 12),
(134, 2479552088723908, 28, 'Viernes', 15),
(135, 2479552088723908, 29, 'Viernes', 15),
(136, 2479552088723908, 30, 'Viernes', 15),
(137, 2479552088723908, 23, 'Martes', 15),
(138, 2479552088723911, 32, 'Lunes', 15),
(139, 2479552088723911, 33, 'Lunes', 15),
(140, 2479552088723911, 35, 'Lunes', 15),
(141, 2479552088723911, 37, 'Lunes', 15),
(142, 2479552088723911, 34, 'Lunes', 15),
(143, 2479552088723911, 19, 'Martes', 15),
(144, 2479552088723911, 20, 'Martes', 15),
(145, 2479552088723911, 21, 'Martes', 15),
(146, 2479552088723911, 23, 'Martes', 15),
(147, 2479552088723911, 25, 'Martes', 15),
(148, 2479552088723911, 29, 'Miercoles', 15),
(149, 2479552088723911, 33, 'Miercoles', 15),
(150, 2479552088723911, 28, 'Miercoles', 15),
(151, 2479552088723911, 30, 'Miercoles', 15),
(152, 2479552088723911, 32, 'Jueves', 12),
(153, 2479552088723911, 33, 'Jueves', 12),
(154, 2479552088723911, 33, 'Jueves', 12),
(155, 2479552088723911, 19, 'Jueves', 12),
(156, 2479552088723911, 20, 'Jueves', 12),
(157, 2479552088723911, 21, 'Jueves', 12),
(158, 2479552088723911, 28, 'Viernes', 15),
(159, 2479552088723911, 29, 'Viernes', 15),
(160, 2479552088723911, 30, 'Viernes', 15),
(161, 2479552088723911, 23, 'Martes', 15),
(202, 2479552088723892, 17, 'Lunes', 42),
(203, 2479552088723892, 23, 'Martes', 59),
(204, 2479552088723892, 24, 'Miercoles', 39),
(205, 2479552088723892, 17, 'Jueves', 53),
(206, 2479552088723892, 17, 'Viernes', 61),
(207, 2479552088723892, 17, 'Sabado', 47),
(208, 2479552088723892, 17, 'Domingo', 62);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `ID` bigint(11) NOT NULL,
  `Correo` varchar(40) DEFAULT NULL,
  `Contrasena` varchar(16) DEFAULT NULL,
  `Edad` tinyint(4) NOT NULL,
  `Estatura` int(4) NOT NULL,
  `Peso` smallint(6) NOT NULL,
  `Meta` enum('Piernas','Brazos','Abdomen') DEFAULT NULL,
  `RepeticionesMeta` int(11) NOT NULL DEFAULT '0',
  `Record` int(11) DEFAULT '0',
  `Promedio` int(11) DEFAULT '0',
  `Ultimo` int(11) DEFAULT '0',
  `Contador` int(11) DEFAULT '0',
  `total` int(11) DEFAULT '0',
  `TiempoCorrer` int(11) DEFAULT NULL,
  `TiempoEjercicio` int(11) DEFAULT NULL,
  `Nivel` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`ID`, `Correo`, `Contrasena`, `Edad`, `Estatura`, `Peso`, `Meta`, `RepeticionesMeta`, `Record`, `Promedio`, `Ultimo`, `Contador`, `total`, `TiempoCorrer`, `TiempoEjercicio`, `Nivel`) VALUES
(1, 'edgar.agustin.martinez@gmail.com', 'proyecto', 2, 2, 2, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, 1),
(2, 'edgar@gmail.com', 'proyecto', 22, 127, 70, 'Abdomen', 0, 15, 15, 15, 1, 0, NULL, 5, 1),
(4, 'gera@gmail.com', 'colocado', 8, 13, 52, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, 1),
(6, 'correo@usuario.com', 'pwd', 51, 42, 15, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, 1),
(7, 'prueba@prueba.com', 'prueba', 19, 114, 67, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, 1),
(8, 'prueba@prueba.com', 'prueba', 19, 114, 67, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, 1),
(9, 'prueba420@gmail.com', 'prueba', 18, 127, 70, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, 1),
(10, NULL, NULL, 22, 183, 80, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, 3),
(11, NULL, NULL, 22, 183, 80, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, 1),
(12, NULL, NULL, 22, 183, 80, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, 1),
(13, NULL, NULL, 22, 183, 80, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, 1),
(14, NULL, NULL, 22, 183, 80, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, 1),
(17, NULL, NULL, 22, 183, 80, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, 2),
(2479552088723892, NULL, NULL, 17, 178, 74, NULL, 0, 0, 0, 0, 0, 0, NULL, 8, 2),
(2479552088723901, 'unusuarimas@gmail.com', 'edgar123', 20, 183, 78, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, 2),
(2479552088723902, 'pruebarutina@correo.com', 'edgar', 19, 165, 60, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, 1),
(2479552088723903, 'pruebarutina2@correo.com', 'rutinas', 17, 168, 68, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, 1),
(2479552088723904, 'imbezil@gmail.com', 'imbezil', 69, 169, 69, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, 1),
(2479552088723905, 'rutina@rutina.rutina', 'rutina', 34, 187, 100, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, 2),
(2479552088723906, 'mecago@todo.com', '123', 17, 169, 69, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, 2),
(2479552088723907, 'cuenta@correo.com', 'qwerty', 22, 173, 67, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, 1),
(2479552088723908, 'corre@correo.com', 'pwd', 22, 183, 80, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, 2),
(2479552088723911, 'corre@correo.com', 'ahhhhh', 22, 183, 80, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, 2);

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `rutinas`
--
ALTER TABLE `rutinas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

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
