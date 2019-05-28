-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-05-2019 a las 19:47:51
-- Versión del servidor: 10.1.32-MariaDB
-- Versión de PHP: 7.2.5

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
(17, 'extensión de tríceps recostado', 'Bajar la barra doblando los codos. A medida que se acerca a la barra cabeza, mover los codos ligeramente hacia atrás lo suficiente como para permitir que la barra para limpiar alrededor de la curvatura de la cabeza. Extiende los brazos. A medida que la barra borra cabeza, cambiar la posición de los codos a su posición anterior hasta que los brazos estén completamente extendidos. Repetir. ', 3, 'Brazos'),
(18, 'extensión de tríceps', 'Antebrazo inferior detrás del brazo superior con los codos encima de la cabeza restantes. Extender por encima del antebrazo. Menor y repetir. ', 3, 'Brazos'),
(19, 'tríceps de extensión (agarre en pronación)', 'Agarre estribo de fijación del cable de detrás. Coloque la mano con el cable detrás del cuello; palma hacia el cuello y el codo posicionado hacia arriba.\r\nExtender brazo hacia arriba. Volver y repetir. Continuar con el brazo opuesto. ', 2, 'Brazos'),
(20, 'tríceps Dip', 'Paso entre hombro bares anchura de inmersión con la correa alrededor de la cintura de inmersión. Arrodíllese tan cerca de polea baja y adjuntar cable para sumergir cinturón. Ponte de pie y montar barra de inmersión, con los brazos estirados por encima de los hombros las manos. Mantenga las caderas recta. \r\nFlexionar parte inferior de los brazos hasta sentir  un ligero estiramiento en los hombros. Empujar el cuerpo hacia arriba hasta que los brazos queden rectos. Repetir. ', 2, 'Brazos'),
(21, 'tríceps extensión (agarre supino)', 'Agarre estribo de fijación del cable de detrás. Coloque la mano con el cable detrás del cuello; palma hacia el cuello y el codo posicionado hacia arriba.\r\nExtender brazo hacia arriba. Volver y repetir. Continuar con el brazo opuesto. ', 2, 'Brazos'),
(23, 'Press JM', 'Recuestese en el banco con la espalda plana y agarrar barra de bastidor con la anchura del hombro.\r\nBaja en línea recta hacia el cuello mientras se mantiene codos relativamente alta y doblándolas hacia los lados,mover muñecas ligeramente a medida que la barra se baja como para mantener el peso de la barra en la base de palmas. Pausa cuando antebrazos MAK e sólida contacto con bíceps. Empuje barra hacia atrás hasta que los brazos queden rectos. Repetir. ', 1, 'Brazos'),
(24, 'Lagartijas', 'Acuéstese boca abajo en suelo con las manos debajo de los hombros o ligeramente más estrecho. la posición del cuerpo hasta baja, junto con los brazos extendidos y el cuerpo recto.\r\nMantener el cuerpo recto, parte inferior del cuerpo a la baja por los brazos doblado. Empujar el cuerpo hacia arriba hasta que los brazos están extendidos. Repetir. ', 1, 'Brazos'),
(25, 'Pushdown', 'De cara a la polea alta y agarrar acoplamiento de cable con agarre en pronación estrecha. Posición codos a lado.\r\nExtender los brazos hacia abajo. Volver hasta el antebrazo está cerca de brazo superior. Repetir. ', 1, 'Brazos'),
(27, 'Empuje Sentado', 'pies de posición debajo de la almohadilla del pie y se encuentran en posición supina sobre banco plano o inclinado. Tire de barra desde el suelo o agarrar de cremallera atrás con agarre en pronación. Posición barra sobre el pecho con la anchura del hombro o agarre ligeramente más ancho.\r\nElevar torso lo más alto posible y mantener las caderas dobladas. Mantenga el peso colocado encima de los hombros. Lograr la postura erguida (flexibilidad de la cadera, la inclinación y la posición de la cadera ', 3, 'Abdomen'),
(28, 'Sentadilla Frontal', 'Póngase en cuclillas, doblando las caderas hacia atrás al tiempo que permite rodillas se doblen hacia adelante, manteniendo la espalda recta y las rodillas apuntando misma dirección que los pies. Descender hasta los muslos son paralelos pasado. Extender las rodillas y las caderas hasta que las piernas son rectas. Volver y repetir. ', 1, 'Pierna'),
(29, 'sentadilla completa', 'Póngase en cuclillas, doblando las caderas hacia atrás al tiempo que permite rodillas se doblen hacia adelante, manteniendo la espalda recta y las rodillas apuntando misma dirección que los pies. Descender hasta las rodillas y las caderas son totalmente doblada. Extender las rodillas y las caderas hasta que las piernas son rectas. Volver y repetir. ', 2, 'Pierna'),
(30, 'Elevaciones de talones de pie', 'Elevar los talones mediante la extensión de los tobillos lo más alto posible. tacos más bajos por los tobillos hasta las pantorrillas flexión se estiran. Repetir. ', 1, 'Pierna'),
(31, 'Abdominal Inclinada', 'Elevar el torso del banco junto cintura y las caderas flexión. Volver hasta posterior de los hombros en contacto con placa de inclinación acolchada. Repetir. ', 1, 'Abdomen'),
(32, 'Abdominal con bola', 'Con la bola en ambas manos, acostarse sobre el soporte hacia atrás mientras baja la bola de medicina detrás de la cabeza. Elevar torso de soporte de la espalda doblando la cintura y las caderas mientras que aumenta la pelota sobre la cabeza. Inmediatamente lanzar la bola en blanco y agarrar otra bola de medicina en la parte inferior de la tolva. Repita el movimiento. ', 2, 'Abdomen'),
(33, 'Hack Squat', 'Baje la palanca flexionando las caderas y las rodillas hasta las rodillas son poco menos de la flexión completa. Elevar trineo mediante la extensión de las rodillas y las caderas. Repetir.', 2, 'Abdomen'),
(34, 'V-Squat', 'Baje la palanca flexionando las caderas y las rodillas hasta las rodillas son poco menos de la flexión completa. Elevar trineo mediante la extensión de las rodillas y las caderas. Repetir.', 1, 'Pierna'),
(35, 'encorvada', 'Doble las rodillas ligeramente y se doblan sobre la barra con la espalda recta. Agarre la barra con agarre en pronación ancho.\r\nTire de la barra a la cintura superior. Regresar hasta que los brazos están extendidos y los hombros se estiran hacia abajo. Repetir.', 1, 'Abdomen'),
(36, 'Remo alto', 'Tire de la instalación del cable a la cintura y se inclina un poco hacia atrás. Tire los hombros hacia atrás y empujar el pecho hacia adelante mientras se arquea hacia atrás. Volver hasta el torso, los brazos y los hombros tirados hacia adelante. Repetir. ', 1, 'Brazos'),
(37, 'Elevación de la pierna', 'Elevar piernas flexionando las caderas y rodillas hasta que las caderas están completamente flexionadas. Continuar elevando las rodillas hacia los hombros doblando la cintura. Volver hasta la cintura, las caderas y las rodillas se extienden. Repetir. ', 1, 'Pierna');

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
  `Contador` int(11) DEFAULT '0',
  `total` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`ID`, `Correo`, `Contrasena`, `Edad`, `Estatura`, `Peso`, `Meta`, `Record`, `Promedio`, `Ultimo`, `Contador`, `total`) VALUES
(1, 'edgar.agustin.martinez@gmail.com', 'proyecto', 2, 2, 2, NULL, 0, 0, 0, 0, 0),
(2, 'edgar@gmail.com', 'proyecto', 22, 127, 70, 'Abdomen', 15, 15, 15, 1, 0),
(4, 'gera@gmail.com', 'colocado', 8, 13, 52, NULL, 0, 0, 0, 0, 0),
(6, 'correo@usuario.com', 'pwd', 51, 42, 15, NULL, 0, 0, 0, 0, 0),
(7, 'prueba@prueba.com', 'prueba', 19, 114, 67, NULL, 0, 0, 0, 0, 0),
(8, 'prueba@prueba.com', 'prueba', 19, 114, 67, NULL, 0, 0, 0, 0, 0),
(9, 'prueba420@gmail.com', 'prueba', 18, 127, 70, NULL, 0, 0, 0, 0, 0),
(2479552088723892, NULL, NULL, 18, 127, 69, 'Abdomen', 17, 12, 2, 4, 47),
(2479552088723900, NULL, NULL, 2, 2, 21, NULL, 0, 0, 0, 0, 0);

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

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
