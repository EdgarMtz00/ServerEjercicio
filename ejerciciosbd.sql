-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-08-2019 a las 04:47:54
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
(37, 'Elevación de la pierna', 'Elevar piernas flexionando las caderas y rodillas hasta que las caderas están completamente flexionadas. Continuar elevando las rodillas hacia los hombros doblando la cintura. Volver hasta la cintura, las caderas y las rodillas se extienden. Repetir.\r\nColocar pulsera para ejercicio arriba del tobillo de una pierna\\r\\nUtilizar el peso maximo que puedas levantar en este ejercicio', 1, 'Pierna'),
(38, 'Flexiones Laterales con Mancuernas', 'Sujeta una mancuerna con una mano, al costado de tu cuerpo.\\r\\nInclina la parte superior de tu cuerpo hacia el costado en el que sostienes la mancuerna, y luego de una breve pausa, vuelve a la posición inicial. Completa tu serie y cambia de lado.\\r\\nTen cuidado de no inclinar demasiado profundamente tu cuerpo hacia los costados, desde donde puede resultar dificultoso volver a enderezarte.', 0, NULL),
(39, 'Flexiones Laterales con Mancuernas', 'Sujeta una mancuerna con una mano, al costado de tu cuerpo.\\r\\nInclina la parte superior de tu cuerpo hacia el costado en el que sostienes la mancuerna, y luego de una breve pausa, vuelve a la posición inicial. Completa tu serie y cambia de lado.\\r\\nTen cuidado de no inclinar demasiado profundamente tu cuerpo hacia los costados, desde donde puede resultar dificultoso volver a enderezarte.', 1, 'Abdomen'),
(40, 'Patada de Burro de Tríceps', 'Coloca tu rodilla y tu mano sobre un banco y coge una mancuerna con tu otra mano, con la palma apuntando hacia tu cuerpo, y la parte superior de tu brazo paralela a tu cuerpo.\\r\\nEmpuja la mancuerna hacia atrás mediante la extensión de tu codo y permítele retornar lentamente luego de una breve pausa.\\r\\nMantén firmes las partes superiores de tus brazos durante todo el movimiento.', 2, 'Brazos'),
(41, 'Encogimientos - Con Carga', 'Recuéstate de espalda sobre un banco y sujeta una mancuerna por encima de tu pecho.\\r\\nEleva la parte superior de tu cuerpo hasta que tus omóplatos dejen de tocar el banco y luego de una breve pausa vuelve a bajarlo.\\r\\nPara evitar tirar de tu cuello con tus manos, mira recto hacia adelante en lugar de mirar a tus rodillas.', 2, 'Abdomen'),
(42, 'Estocadas Laterales ', 'Ponte de pie y sujeta una mancuerna en cada mano contra los lados de tu cuerpo, con las palmas apuntando una hacia la otra.\\r\\nDa un amplio paso hacia el costado, de manera que tu rodilla muestre un ángulo de 90 grados y lentamente vuelve a la posición inicial luego de una breve pausa.\\r\\nMantén tu espalda recta durante todo el movimiento.', 3, 'Pierna'),
(43, 'Estocadas Estáticas', 'Ponte de pie con un pie al frente, el otro atrás y sujeta una mancuerna en cada mano a los costados de tu cuerpo, con las palmas apuntando una hacia la otra.\\r\\nBájate a ti mismo sin mover tus pies hasta que tus rodillas forme un ángulo de 90 grados y luego de una breve pausa elévate a ti mismo.\\r\\nMantén tu tronco firme durante todo el movimiento.', 2, 'Pierna'),
(44, 'Peso Muerto', 'Ponte de pie y sujeta una mancuerna con cada una de tus manos.\\r\\nFlexiona tus rodillas y caderas de manera de bajar las mancuernas hacia abajo en forma recta, y elévate a ti mismo luego de una breve pausa.\\r\\nInhala al bajar y exhala al retornar a la posición inicial.', 1, 'Abdomen'),
(45, 'Remo para Deltoides Posteriores, Agachado', 'Agáchate flexionando tus caderas y rodillas y coge una mancuerna con cada mano, cerca de tus rodillas, con las palmas apuntando hacia atrás.\\r\\nEleva las mancuernas hacia arriba en forma recta hasta que tus codos formen un ángulo de 90 grados y bájalas luego de una breve pausa.\\r\\nIntenta concentrarte en sólo mover tus brazos durante el ejercicio.\r\n', 3, 'Brazos'),
(46, 'Flexiones de Bíceps Supinadoras', 'Recuéstate de espalda sobre un banco y sujeta una mancuerna con cada mano hacia cada lado de tu cuerpo, por debajo de la altura del cuerpo, con las palmas apuntando hacia arriba.\\r\\nEleva las mancuernas hasta que alcancen la altura de tu cuerpo y lentamente bájalas luego de una breve pausa.\\r\\nExhala en el momento de levantar las cargas e inhala al bajarlas.\r\n', 3, 'Brazos'),
(47, 'Flexiones al Pie Opuesto', 'Ponte de pie, estírate hacia abajo y coge 2 mancuernas justo por encima de uno de tus pies con tus manos (las rodillas ligeramente dobladas).\\r\\nEleva las mancuernas hacia arriba hasta que estés parado y luego bájalas, pero hacia el otro pie. Alterna los lados.\\r\\nA lo largo de todo el movimiento, mantén un ligero arqueo en tus rodillas.', 3, 'Abdomen'),
(48, 'Balanceo Integral con Mancuernas', 'Sujeta una mancuerna con ambas manos entre tus piernas y agáchate hasta que tus rodillas se encuentren formando ángulos de 90 grados.\\r\\nLevántate a ti mismo hacia la posición de pie mientras llevas la mancuerna por encima de tu cabeza y lentamente retorna a la posición inicial luego de una breve pausa.\\r\\nMantén tu espalda recta durante todo el movimiento.', 3, 'Pierna');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ejercicios_creados`
--

CREATE TABLE `ejercicios_creados` (
  `ID` bigint(20) NOT NULL,
  `Dia` enum('Lunes','Martes','Miercoles','Jueves','Viernes','Sabado','Domingo') NOT NULL,
  `IDusuario` bigint(20) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Repeticiones` int(11) NOT NULL,
  `Logrado` int(11) NOT NULL DEFAULT '0',
  `Zona` enum('Brazos','Abdomen','Pierna') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ejercicios_creados`
--

INSERT INTO `ejercicios_creados` (`ID`, `Dia`, `IDusuario`, `Nombre`, `Repeticiones`, `Logrado`, `Zona`) VALUES
(4, 'Jueves', 2479552088723892, 'kk', 30, 0, 'Brazos'),
(5, 'Lunes', 2, 'creado', 12, 0, 'Brazos'),
(6, 'Lunes', 2, 'kk', 31, 0, 'Brazos'),
(7, 'Martes', 2, 'kkk', 2, 0, 'Brazos'),
(8, 'Jueves', 2479552088723892, 'ahhh', 15, 0, 'Abdomen'),
(200, '', 0, '', 0, 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rutinas`
--

CREATE TABLE `rutinas` (
  `ID` int(11) NOT NULL,
  `IDUsuario` bigint(11) NOT NULL,
  `IDEjercicio` int(11) NOT NULL,
  `Dia` enum('Lunes','Martes','Miercoles','Jueves','Viernes','Sabado','Domingo') NOT NULL,
  `Repeticiones` smallint(6) DEFAULT NULL,
  `Logrado` int(11) NOT NULL DEFAULT '0',
  `Peso` enum('Alto','Medio','Bajo') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `rutinas`
--

INSERT INTO `rutinas` (`ID`, `IDUsuario`, `IDEjercicio`, `Dia`, `Repeticiones`, `Logrado`, `Peso`) VALUES
(31, 12, 23, 'Lunes', 31, 1, NULL),
(32, 2, 37, 'Lunes', 4, 0, NULL),
(33, 2, 28, 'Lunes', 32, 0, NULL),
(37, 13, 23, 'Lunes', 12, 0, NULL),
(38, 14, 36, 'Lunes', 12, 0, NULL),
(39, 14, 25, 'Lunes', 12, 0, NULL),
(40, 14, 24, 'Lunes', 12, 0, NULL),
(41, 14, 23, 'Lunes', 12, 0, NULL),
(42, 17, 32, 'Lunes', 15, 0, NULL),
(43, 17, 33, 'Lunes', 15, 0, NULL),
(44, 17, 35, 'Lunes', 15, 0, NULL),
(45, 17, 37, 'Lunes', 15, 0, NULL),
(46, 17, 34, 'Lunes', 15, 0, NULL),
(47, 17, 19, 'Martes', 15, 0, NULL),
(48, 17, 20, 'Martes', 15, 0, NULL),
(49, 17, 21, 'Martes', 15, 0, NULL),
(50, 17, 23, 'Martes', 15, 0, NULL),
(51, 17, 25, 'Martes', 15, 0, NULL),
(52, 17, 29, 'Miercoles', 15, 0, NULL),
(53, 17, 33, 'Miercoles', 15, 0, NULL),
(54, 17, 28, 'Miercoles', 15, 0, NULL),
(55, 17, 30, 'Miercoles', 15, 0, NULL),
(56, 17, 32, 'Jueves', 12, 0, NULL),
(57, 17, 33, 'Jueves', 12, 0, NULL),
(58, 17, 33, 'Jueves', 12, 0, NULL),
(59, 17, 19, 'Jueves', 12, 0, NULL),
(60, 17, 20, 'Jueves', 12, 0, NULL),
(61, 17, 21, 'Jueves', 12, 0, NULL),
(62, 17, 28, 'Viernes', 15, 0, NULL),
(63, 17, 29, 'Viernes', 15, 0, NULL),
(64, 17, 30, 'Viernes', 15, 0, NULL),
(65, 17, 23, 'Martes', 15, 0, NULL),
(66, 2479552088723908, 32, 'Lunes', 15, 0, NULL),
(67, 2479552088723908, 33, 'Lunes', 15, 0, NULL),
(68, 2479552088723908, 35, 'Lunes', 15, 0, NULL),
(69, 2479552088723908, 37, 'Lunes', 15, 0, NULL),
(70, 2479552088723908, 34, 'Lunes', 15, 0, NULL),
(71, 2479552088723908, 19, 'Martes', 15, 0, NULL),
(72, 2479552088723908, 20, 'Martes', 15, 0, NULL),
(73, 2479552088723908, 21, 'Martes', 15, 0, NULL),
(74, 2479552088723908, 23, 'Martes', 15, 0, NULL),
(75, 2479552088723908, 25, 'Martes', 15, 0, NULL),
(76, 2479552088723908, 29, 'Miercoles', 15, 0, NULL),
(77, 2479552088723908, 33, 'Miercoles', 15, 0, NULL),
(78, 2479552088723908, 28, 'Miercoles', 15, 0, NULL),
(79, 2479552088723908, 30, 'Miercoles', 15, 0, NULL),
(80, 2479552088723908, 32, 'Jueves', 12, 0, NULL),
(81, 2479552088723908, 33, 'Jueves', 12, 0, NULL),
(82, 2479552088723908, 33, 'Jueves', 12, 0, NULL),
(83, 2479552088723908, 19, 'Jueves', 12, 0, NULL),
(84, 2479552088723908, 20, 'Jueves', 12, 0, NULL),
(85, 2479552088723908, 21, 'Jueves', 12, 0, NULL),
(86, 2479552088723908, 28, 'Viernes', 15, 0, NULL),
(87, 2479552088723908, 29, 'Viernes', 15, 0, NULL),
(88, 2479552088723908, 30, 'Viernes', 15, 0, NULL),
(89, 2479552088723908, 23, 'Martes', 15, 0, NULL),
(90, 2479552088723908, 32, 'Lunes', 15, 0, NULL),
(91, 2479552088723908, 33, 'Lunes', 15, 0, NULL),
(92, 2479552088723908, 35, 'Lunes', 15, 0, NULL),
(93, 2479552088723908, 37, 'Lunes', 15, 0, NULL),
(94, 2479552088723908, 34, 'Lunes', 15, 0, NULL),
(95, 2479552088723908, 19, 'Martes', 15, 0, NULL),
(96, 2479552088723908, 20, 'Martes', 15, 0, NULL),
(97, 2479552088723908, 21, 'Martes', 15, 0, NULL),
(98, 2479552088723908, 23, 'Martes', 15, 0, NULL),
(99, 2479552088723908, 25, 'Martes', 15, 0, NULL),
(100, 2479552088723908, 29, 'Miercoles', 15, 0, NULL),
(101, 2479552088723908, 33, 'Miercoles', 15, 0, NULL),
(102, 2479552088723908, 28, 'Miercoles', 15, 0, NULL),
(103, 2479552088723908, 30, 'Miercoles', 15, 0, NULL),
(104, 2479552088723908, 32, 'Jueves', 12, 0, NULL),
(105, 2479552088723908, 33, 'Jueves', 12, 0, NULL),
(106, 2479552088723908, 33, 'Jueves', 12, 0, NULL),
(107, 2479552088723908, 19, 'Jueves', 12, 0, NULL),
(108, 2479552088723908, 20, 'Jueves', 12, 0, NULL),
(109, 2479552088723908, 21, 'Jueves', 12, 0, NULL),
(110, 2479552088723908, 28, 'Viernes', 15, 0, NULL),
(111, 2479552088723908, 29, 'Viernes', 15, 0, NULL),
(112, 2479552088723908, 30, 'Viernes', 15, 0, NULL),
(113, 2479552088723908, 23, 'Martes', 15, 0, NULL),
(114, 2479552088723908, 32, 'Lunes', 15, 0, NULL),
(115, 2479552088723908, 33, 'Lunes', 15, 0, NULL),
(116, 2479552088723908, 35, 'Lunes', 15, 0, NULL),
(117, 2479552088723908, 37, 'Lunes', 15, 0, NULL),
(118, 2479552088723908, 34, 'Lunes', 15, 0, NULL),
(119, 2479552088723908, 19, 'Martes', 15, 0, NULL),
(120, 2479552088723908, 20, 'Martes', 15, 0, NULL),
(121, 2479552088723908, 21, 'Martes', 15, 0, NULL),
(122, 2479552088723908, 23, 'Martes', 15, 0, NULL),
(123, 2479552088723908, 25, 'Martes', 15, 0, NULL),
(124, 2479552088723908, 29, 'Miercoles', 15, 0, NULL),
(125, 2479552088723908, 33, 'Miercoles', 15, 0, NULL),
(126, 2479552088723908, 28, 'Miercoles', 15, 0, NULL),
(127, 2479552088723908, 30, 'Miercoles', 15, 0, NULL),
(128, 2479552088723908, 32, 'Jueves', 12, 0, NULL),
(129, 2479552088723908, 33, 'Jueves', 12, 0, NULL),
(130, 2479552088723908, 33, 'Jueves', 12, 0, NULL),
(131, 2479552088723908, 19, 'Jueves', 12, 0, NULL),
(132, 2479552088723908, 20, 'Jueves', 12, 0, NULL),
(133, 2479552088723908, 21, 'Jueves', 12, 0, NULL),
(134, 2479552088723908, 28, 'Viernes', 15, 0, NULL),
(135, 2479552088723908, 29, 'Viernes', 15, 0, NULL),
(136, 2479552088723908, 30, 'Viernes', 15, 0, NULL),
(137, 2479552088723908, 23, 'Martes', 15, 0, NULL),
(138, 2479552088723911, 32, 'Lunes', 15, 0, NULL),
(139, 2479552088723911, 33, 'Lunes', 15, 0, NULL),
(140, 2479552088723911, 35, 'Lunes', 15, 0, NULL),
(141, 2479552088723911, 37, 'Lunes', 15, 0, NULL),
(142, 2479552088723911, 34, 'Lunes', 15, 0, NULL),
(143, 2479552088723911, 19, 'Martes', 15, 0, NULL),
(144, 2479552088723911, 20, 'Martes', 15, 0, NULL),
(145, 2479552088723911, 21, 'Martes', 15, 0, NULL),
(146, 2479552088723911, 23, 'Martes', 15, 0, NULL),
(147, 2479552088723911, 25, 'Martes', 15, 0, NULL),
(148, 2479552088723911, 29, 'Miercoles', 15, 0, NULL),
(149, 2479552088723911, 33, 'Miercoles', 15, 0, NULL),
(150, 2479552088723911, 28, 'Miercoles', 15, 0, NULL),
(151, 2479552088723911, 30, 'Miercoles', 15, 0, NULL),
(152, 2479552088723911, 32, 'Jueves', 12, 0, NULL),
(153, 2479552088723911, 33, 'Jueves', 12, 0, NULL),
(154, 2479552088723911, 33, 'Jueves', 12, 0, NULL),
(155, 2479552088723911, 19, 'Jueves', 12, 0, NULL),
(156, 2479552088723911, 20, 'Jueves', 12, 0, NULL),
(157, 2479552088723911, 21, 'Jueves', 12, 0, NULL),
(158, 2479552088723911, 28, 'Viernes', 15, 0, NULL),
(159, 2479552088723911, 29, 'Viernes', 15, 0, NULL),
(160, 2479552088723911, 30, 'Viernes', 15, 0, NULL),
(161, 2479552088723911, 23, 'Martes', 15, 0, NULL),
(242, 7, 17, 'Lunes', 7, 0, NULL),
(243, 7, 17, 'Martes', 7, 0, NULL),
(244, 7, 17, 'Miercoles', 8, 0, NULL),
(245, 7, 17, 'Jueves', 7, 0, NULL),
(246, 7, 17, 'Viernes', 6, 0, NULL),
(247, 7, 17, 'Sabado', 12, 0, NULL),
(248, 7, 17, 'Domingo', 12, 0, NULL),
(249, 2479552088723912, 32, 'Lunes', 20, 0, NULL),
(250, 2479552088723912, 41, 'Lunes', 20, 0, NULL),
(251, 2479552088723912, 35, 'Lunes', 20, 0, NULL),
(252, 2479552088723912, 28, 'Lunes', 20, 0, NULL),
(253, 2479552088723912, 34, 'Lunes', 20, 0, NULL),
(254, 2479552088723912, 19, 'Martes', 20, 0, NULL),
(255, 2479552088723912, 25, 'Martes', 20, 0, NULL),
(256, 2479552088723912, 21, 'Martes', 20, 0, NULL),
(257, 2479552088723912, 41, 'Martes', 20, 0, NULL),
(258, 2479552088723912, 34, 'Miercoles', 20, 0, NULL),
(259, 2479552088723912, 33, 'Miercoles', 20, 0, NULL),
(260, 2479552088723912, 43, 'Miercoles', 20, 0, NULL),
(261, 2479552088723912, 41, 'Miercoles', 20, 0, NULL),
(262, 2479552088723912, 32, 'Jueves', 20, 0, NULL),
(263, 2479552088723912, 33, 'Jueves', 20, 0, NULL),
(264, 2479552088723912, 33, 'Jueves', 20, 0, NULL),
(265, 2479552088723912, 41, 'Jueves', 20, 0, NULL),
(266, 2479552088723912, 39, 'Jueves', 20, 0, NULL),
(267, 2479552088723912, 28, 'Viernes', 20, 0, NULL),
(268, 2479552088723912, 29, 'Viernes', 20, 0, NULL),
(269, 2479552088723912, 43, 'Viernes', 20, 0, NULL),
(270, 2479552088723912, 40, 'Viernes', 20, 0, NULL),
(271, 2479552088723912, 34, 'Viernes', 20, 0, NULL),
(279, 2479552088723913, 27, 'Lunes', 15, 0, 'Alto'),
(280, 2479552088723913, 32, 'Lunes', 15, 0, 'Alto'),
(281, 2479552088723913, 47, 'Lunes', 15, 0, 'Alto'),
(282, 2479552088723913, 33, 'Lunes', 15, 0, 'Alto'),
(283, 2479552088723913, 48, 'Lunes', 15, 0, 'Alto'),
(284, 2479552088723913, 18, 'Martes', 15, 0, 'Alto'),
(285, 2479552088723913, 17, 'Martes', 15, 0, 'Alto'),
(286, 2479552088723913, 21, 'Martes', 15, 0, 'Alto'),
(287, 2479552088723913, 46, 'Martes', 15, 0, 'Alto'),
(288, 2479552088723913, 45, 'Martes', 15, 0, 'Alto'),
(289, 2479552088723913, 41, 'Martes', 15, 0, 'Alto'),
(290, 2479552088723913, 42, 'Miercoles', 15, 0, 'Alto'),
(291, 2479552088723913, 48, 'Miercoles', 15, 0, 'Alto'),
(292, 2479552088723913, 43, 'Miercoles', 15, 0, 'Alto'),
(293, 2479552088723913, 27, 'Miercoles', 15, 0, 'Alto'),
(294, 2479552088723913, 47, 'Jueves', 15, 0, 'Alto'),
(295, 2479552088723913, 32, 'Jueves', 15, 0, 'Alto'),
(296, 2479552088723913, 41, 'Jueves', 15, 0, 'Alto'),
(297, 2479552088723913, 42, 'Jueves', 15, 0, 'Alto'),
(298, 2479552088723913, 48, 'Jueves', 15, 0, 'Alto'),
(299, 2479552088723913, 18, 'Viernes', 15, 0, 'Alto'),
(300, 2479552088723913, 17, 'Viernes', 15, 0, 'Alto'),
(301, 2479552088723913, 21, 'Viernes', 15, 0, 'Alto'),
(302, 2479552088723913, 46, 'Viernes', 15, 0, 'Alto'),
(303, 2479552088723913, 45, 'Viernes', 15, 0, 'Alto'),
(304, 2479552088723913, 41, 'Viernes', 15, 0, 'Alto'),
(305, 2479552088723914, 32, 'Lunes', 20, 0, 'Medio'),
(306, 2479552088723914, 41, 'Lunes', 20, 0, 'Medio'),
(307, 2479552088723914, 35, 'Lunes', 20, 0, 'Medio'),
(308, 2479552088723914, 28, 'Lunes', 20, 0, 'Medio'),
(309, 2479552088723914, 34, 'Lunes', 20, 0, 'Medio'),
(310, 2479552088723914, 19, 'Martes', 20, 0, 'Medio'),
(311, 2479552088723914, 25, 'Martes', 20, 0, 'Medio'),
(312, 2479552088723914, 21, 'Martes', 20, 0, 'Medio'),
(313, 2479552088723914, 41, 'Martes', 20, 0, 'Medio'),
(314, 2479552088723914, 34, 'Miercoles', 20, 0, 'Medio'),
(315, 2479552088723914, 33, 'Miercoles', 20, 0, 'Medio'),
(316, 2479552088723914, 43, 'Miercoles', 20, 0, 'Medio'),
(317, 2479552088723914, 41, 'Miercoles', 20, 0, 'Medio'),
(318, 2479552088723914, 32, 'Jueves', 20, 0, 'Medio'),
(319, 2479552088723914, 33, 'Jueves', 20, 0, 'Medio'),
(320, 2479552088723914, 33, 'Jueves', 20, 0, 'Medio'),
(321, 2479552088723914, 41, 'Jueves', 20, 0, 'Medio'),
(322, 2479552088723914, 39, 'Jueves', 20, 0, 'Medio'),
(323, 2479552088723914, 28, 'Viernes', 20, 0, 'Medio'),
(324, 2479552088723914, 29, 'Viernes', 20, 0, 'Medio'),
(325, 2479552088723914, 43, 'Viernes', 20, 0, 'Medio'),
(326, 2479552088723914, 40, 'Viernes', 20, 0, 'Medio'),
(327, 2479552088723914, 34, 'Viernes', 20, 0, 'Medio'),
(328, 2479552088723915, 32, 'Lunes', 20, 0, 'Medio'),
(329, 2479552088723915, 41, 'Lunes', 20, 0, 'Medio'),
(330, 2479552088723915, 35, 'Lunes', 20, 0, 'Medio'),
(331, 2479552088723915, 28, 'Lunes', 20, 0, 'Medio'),
(332, 2479552088723915, 34, 'Lunes', 20, 0, 'Medio'),
(333, 2479552088723915, 19, 'Martes', 20, 0, 'Medio'),
(334, 2479552088723915, 25, 'Martes', 20, 0, 'Medio'),
(335, 2479552088723915, 21, 'Martes', 20, 0, 'Medio'),
(336, 2479552088723915, 41, 'Martes', 20, 0, 'Medio'),
(337, 2479552088723915, 34, 'Miercoles', 20, 0, 'Medio'),
(338, 2479552088723915, 33, 'Miercoles', 20, 0, 'Medio'),
(339, 2479552088723915, 43, 'Miercoles', 20, 0, 'Medio'),
(340, 2479552088723915, 41, 'Miercoles', 20, 0, 'Medio'),
(341, 2479552088723915, 32, 'Jueves', 20, 0, 'Medio'),
(342, 2479552088723915, 33, 'Jueves', 20, 0, 'Medio'),
(343, 2479552088723915, 33, 'Jueves', 20, 0, 'Medio'),
(344, 2479552088723915, 41, 'Jueves', 20, 0, 'Medio'),
(345, 2479552088723915, 39, 'Jueves', 20, 0, 'Medio'),
(346, 2479552088723915, 28, 'Viernes', 20, 0, 'Medio'),
(347, 2479552088723915, 29, 'Viernes', 20, 0, 'Medio'),
(348, 2479552088723915, 43, 'Viernes', 20, 0, 'Medio'),
(349, 2479552088723915, 40, 'Viernes', 20, 0, 'Medio'),
(350, 2479552088723915, 34, 'Viernes', 20, 0, 'Medio'),
(351, 2479552088723915, 32, 'Lunes', 20, 0, 'Medio'),
(352, 2479552088723915, 41, 'Lunes', 20, 0, 'Medio'),
(353, 2479552088723915, 35, 'Lunes', 20, 0, 'Medio'),
(354, 2479552088723915, 28, 'Lunes', 20, 0, 'Medio'),
(355, 2479552088723915, 34, 'Lunes', 20, 0, 'Medio'),
(356, 2479552088723915, 19, 'Martes', 20, 0, 'Medio'),
(357, 2479552088723915, 25, 'Martes', 20, 0, 'Medio'),
(358, 2479552088723915, 21, 'Martes', 20, 0, 'Medio'),
(359, 2479552088723915, 41, 'Martes', 20, 0, 'Medio'),
(360, 2479552088723915, 34, 'Miercoles', 20, 0, 'Medio'),
(361, 2479552088723915, 33, 'Miercoles', 20, 0, 'Medio'),
(362, 2479552088723915, 43, 'Miercoles', 20, 0, 'Medio'),
(363, 2479552088723915, 41, 'Miercoles', 20, 0, 'Medio'),
(364, 2479552088723915, 32, 'Jueves', 20, 0, 'Medio'),
(365, 2479552088723915, 33, 'Jueves', 20, 0, 'Medio'),
(366, 2479552088723915, 33, 'Jueves', 20, 0, 'Medio'),
(367, 2479552088723915, 41, 'Jueves', 20, 0, 'Medio'),
(368, 2479552088723915, 39, 'Jueves', 20, 0, 'Medio'),
(369, 2479552088723915, 28, 'Viernes', 20, 0, 'Medio'),
(370, 2479552088723915, 29, 'Viernes', 20, 0, 'Medio'),
(371, 2479552088723915, 43, 'Viernes', 20, 0, 'Medio'),
(372, 2479552088723915, 40, 'Viernes', 20, 0, 'Medio'),
(373, 2479552088723915, 34, 'Viernes', 20, 0, 'Medio'),
(374, 2479552088723916, 32, 'Lunes', 20, 0, 'Medio'),
(375, 2479552088723916, 41, 'Lunes', 20, 0, 'Medio'),
(376, 2479552088723916, 35, 'Lunes', 20, 0, 'Medio'),
(377, 2479552088723916, 28, 'Lunes', 20, 0, 'Medio'),
(378, 2479552088723916, 34, 'Lunes', 20, 0, 'Medio'),
(379, 2479552088723916, 19, 'Martes', 20, 0, 'Medio'),
(380, 2479552088723916, 25, 'Martes', 20, 0, 'Medio'),
(381, 2479552088723916, 21, 'Martes', 20, 0, 'Medio'),
(382, 2479552088723916, 41, 'Martes', 20, 0, 'Medio'),
(383, 2479552088723916, 34, 'Miercoles', 20, 0, 'Medio'),
(384, 2479552088723916, 33, 'Miercoles', 20, 0, 'Medio'),
(385, 2479552088723916, 43, 'Miercoles', 20, 0, 'Medio'),
(386, 2479552088723916, 41, 'Miercoles', 20, 0, 'Medio'),
(387, 2479552088723916, 32, 'Jueves', 20, 0, 'Medio'),
(388, 2479552088723916, 33, 'Jueves', 20, 0, 'Medio'),
(389, 2479552088723916, 33, 'Jueves', 20, 0, 'Medio'),
(390, 2479552088723916, 41, 'Jueves', 20, 0, 'Medio'),
(391, 2479552088723916, 39, 'Jueves', 20, 0, 'Medio'),
(392, 2479552088723916, 28, 'Viernes', 20, 0, 'Medio'),
(393, 2479552088723916, 29, 'Viernes', 20, 0, 'Medio'),
(394, 2479552088723916, 43, 'Viernes', 20, 0, 'Medio'),
(395, 2479552088723916, 40, 'Viernes', 20, 0, 'Medio'),
(396, 2479552088723916, 34, 'Viernes', 20, 0, 'Medio'),
(410, 2479552088723917, 17, 'Martes', 5, 0, NULL),
(411, 2479552088723917, 17, 'Miercoles', 7, 0, NULL),
(412, 2479552088723917, 17, 'Jueves', 7, 0, NULL),
(413, 2479552088723917, 17, 'Viernes', 7, 0, NULL),
(414, 2479552088723917, 17, 'Lunes', 2, 0, NULL),
(420, 2479552088723918, 19, 'Martes', 20, 0, 'Medio'),
(421, 2479552088723918, 25, 'Martes', 20, 0, 'Medio'),
(422, 2479552088723918, 21, 'Martes', 20, 0, 'Medio'),
(423, 2479552088723918, 41, 'Martes', 20, 0, 'Medio'),
(424, 2479552088723918, 34, 'Miercoles', 20, 0, 'Medio'),
(425, 2479552088723918, 33, 'Miercoles', 20, 0, 'Medio'),
(426, 2479552088723918, 43, 'Miercoles', 20, 0, 'Medio'),
(427, 2479552088723918, 41, 'Miercoles', 20, 0, 'Medio'),
(428, 2479552088723918, 32, 'Jueves', 20, 0, 'Medio'),
(429, 2479552088723918, 33, 'Jueves', 20, 0, 'Medio'),
(430, 2479552088723918, 33, 'Jueves', 20, 0, 'Medio'),
(431, 2479552088723918, 41, 'Jueves', 20, 0, 'Medio'),
(432, 2479552088723918, 39, 'Jueves', 20, 0, 'Medio'),
(433, 2479552088723918, 28, 'Viernes', 20, 0, 'Medio'),
(434, 2479552088723918, 29, 'Viernes', 20, 0, 'Medio'),
(435, 2479552088723918, 43, 'Viernes', 20, 0, 'Medio'),
(436, 2479552088723918, 40, 'Viernes', 20, 0, 'Medio'),
(437, 2479552088723918, 34, 'Viernes', 20, 0, 'Medio'),
(438, 2479552088723918, 17, 'Lunes', 6, 0, NULL),
(439, 2479552088723919, 32, 'Lunes', 10, 0, 'Alto'),
(440, 2479552088723919, 41, 'Lunes', 10, 0, 'Alto'),
(441, 2479552088723919, 35, 'Lunes', 10, 0, 'Alto'),
(442, 2479552088723919, 28, 'Lunes', 10, 0, 'Alto'),
(443, 2479552088723919, 34, 'Lunes', 10, 0, 'Alto'),
(444, 2479552088723919, 19, 'Martes', 10, 0, 'Alto'),
(445, 2479552088723919, 25, 'Martes', 10, 0, 'Alto'),
(446, 2479552088723919, 21, 'Martes', 10, 0, 'Alto'),
(447, 2479552088723919, 41, 'Martes', 10, 0, 'Alto'),
(448, 2479552088723919, 34, 'Miercoles', 10, 0, 'Medio'),
(449, 2479552088723919, 33, 'Miercoles', 10, 0, 'Alto'),
(450, 2479552088723919, 43, 'Miercoles', 10, 0, 'Alto'),
(451, 2479552088723919, 41, 'Miercoles', 10, 0, 'Alto'),
(452, 2479552088723919, 32, 'Jueves', 10, 0, 'Alto'),
(453, 2479552088723919, 33, 'Jueves', 10, 0, 'Alto'),
(454, 2479552088723919, 33, 'Jueves', 10, 0, 'Alto'),
(455, 2479552088723919, 41, 'Jueves', 10, 0, 'Alto'),
(456, 2479552088723919, 39, 'Jueves', 10, 0, 'Alto'),
(457, 2479552088723919, 28, 'Viernes', 10, 0, 'Alto'),
(458, 2479552088723919, 29, 'Viernes', 10, 0, 'Alto'),
(459, 2479552088723919, 43, 'Viernes', 10, 0, 'Alto'),
(460, 2479552088723919, 40, 'Viernes', 10, 0, 'Alto'),
(461, 2479552088723919, 34, 'Viernes', 10, 0, 'Alto'),
(462, 2479552088723920, 32, 'Lunes', 20, 0, 'Medio'),
(463, 2479552088723920, 41, 'Lunes', 20, 0, 'Medio'),
(464, 2479552088723920, 35, 'Lunes', 20, 0, 'Medio'),
(465, 2479552088723920, 28, 'Lunes', 20, 0, 'Medio'),
(466, 2479552088723920, 34, 'Lunes', 20, 0, 'Medio'),
(467, 2479552088723920, 19, 'Martes', 20, 0, 'Medio'),
(468, 2479552088723920, 25, 'Martes', 20, 0, 'Medio'),
(469, 2479552088723920, 21, 'Martes', 20, 0, 'Medio'),
(470, 2479552088723920, 41, 'Martes', 20, 0, 'Medio'),
(471, 2479552088723920, 34, 'Miercoles', 20, 0, 'Medio'),
(472, 2479552088723920, 33, 'Miercoles', 20, 0, 'Medio'),
(473, 2479552088723920, 43, 'Miercoles', 20, 0, 'Medio'),
(474, 2479552088723920, 41, 'Miercoles', 20, 0, 'Medio'),
(475, 2479552088723920, 32, 'Jueves', 20, 0, 'Medio'),
(476, 2479552088723920, 33, 'Jueves', 20, 0, 'Medio'),
(477, 2479552088723920, 33, 'Jueves', 20, 0, 'Medio'),
(478, 2479552088723920, 41, 'Jueves', 20, 0, 'Medio'),
(479, 2479552088723920, 39, 'Jueves', 20, 0, 'Medio'),
(480, 2479552088723920, 28, 'Viernes', 20, 0, 'Medio'),
(481, 2479552088723920, 29, 'Viernes', 20, 0, 'Medio'),
(482, 2479552088723920, 43, 'Viernes', 20, 0, 'Medio'),
(483, 2479552088723920, 40, 'Viernes', 20, 0, 'Medio'),
(484, 2479552088723920, 34, 'Viernes', 20, 0, 'Medio'),
(485, 2479552088723921, 32, 'Lunes', 20, 0, 'Medio'),
(486, 2479552088723921, 41, 'Lunes', 20, 0, 'Medio'),
(487, 2479552088723921, 35, 'Lunes', 20, 0, 'Medio'),
(488, 2479552088723921, 28, 'Lunes', 20, 0, 'Medio'),
(489, 2479552088723921, 34, 'Lunes', 20, 0, 'Medio'),
(490, 2479552088723921, 19, 'Martes', 20, 0, 'Medio'),
(491, 2479552088723921, 25, 'Martes', 20, 0, 'Medio'),
(492, 2479552088723921, 21, 'Martes', 20, 0, 'Medio'),
(493, 2479552088723921, 41, 'Martes', 20, 0, 'Medio'),
(494, 2479552088723921, 34, 'Miercoles', 20, 0, 'Medio'),
(495, 2479552088723921, 33, 'Miercoles', 20, 0, 'Medio'),
(496, 2479552088723921, 43, 'Miercoles', 20, 0, 'Medio'),
(497, 2479552088723921, 41, 'Miercoles', 20, 0, 'Medio'),
(498, 2479552088723921, 32, 'Jueves', 20, 0, 'Medio'),
(499, 2479552088723921, 33, 'Jueves', 20, 0, 'Medio'),
(500, 2479552088723921, 33, 'Jueves', 20, 0, 'Medio'),
(501, 2479552088723921, 41, 'Jueves', 20, 0, 'Medio'),
(502, 2479552088723921, 39, 'Jueves', 20, 0, 'Medio'),
(503, 2479552088723921, 28, 'Viernes', 20, 0, 'Medio'),
(504, 2479552088723921, 29, 'Viernes', 20, 0, 'Medio'),
(505, 2479552088723921, 43, 'Viernes', 20, 0, 'Medio'),
(506, 2479552088723921, 40, 'Viernes', 20, 0, 'Medio'),
(507, 2479552088723921, 34, 'Viernes', 20, 0, 'Medio'),
(508, 2479552088723922, 36, 'Lunes', 18, 0, 'Bajo'),
(509, 2479552088723922, 25, 'Lunes', 18, 0, 'Bajo'),
(510, 2479552088723922, 24, 'Lunes', 18, 0, 'Bajo'),
(511, 2479552088723922, 23, 'Lunes', 18, 0, 'Bajo'),
(512, 2479552088723922, 35, 'Miercoles', 18, 0, 'Bajo'),
(513, 2479552088723922, 31, 'Miercoles', 18, 0, 'Bajo'),
(514, 2479552088723922, 37, 'Miercoles', 18, 0, 'Bajo'),
(515, 2479552088723922, 34, 'Miercoles', 18, 0, 'Bajo'),
(516, 2479552088723922, 34, 'Viernes', 18, 0, 'Bajo'),
(517, 2479552088723922, 37, 'Viernes', 18, 0, 'Bajo'),
(518, 2479552088723922, 28, 'Viernes', 18, 0, 'Bajo'),
(519, 2479552088723922, 30, 'Viernes', 18, 0, 'Bajo'),
(520, 2479552088723923, 36, 'Lunes', 12, 0, 'Medio'),
(521, 2479552088723923, 25, 'Lunes', 12, 0, 'Medio'),
(522, 2479552088723923, 24, 'Lunes', 12, 0, 'Medio'),
(523, 2479552088723923, 23, 'Lunes', 12, 0, 'Medio'),
(524, 2479552088723923, 35, 'Miercoles', 12, 0, 'Medio'),
(525, 2479552088723923, 31, 'Miercoles', 12, 0, 'Medio'),
(526, 2479552088723923, 37, 'Miercoles', 12, 0, 'Medio'),
(527, 2479552088723923, 34, 'Miercoles', 12, 0, 'Medio'),
(528, 2479552088723923, 34, 'Viernes', 12, 0, 'Medio'),
(529, 2479552088723923, 37, 'Viernes', 12, 0, 'Medio'),
(530, 2479552088723923, 28, 'Viernes', 12, 0, 'Medio'),
(531, 2479552088723923, 30, 'Viernes', 12, 0, 'Medio'),
(532, 2479552088723924, 36, 'Lunes', 12, 0, 'Medio'),
(533, 2479552088723924, 25, 'Lunes', 12, 0, 'Medio'),
(534, 2479552088723924, 24, 'Lunes', 12, 0, 'Medio'),
(535, 2479552088723924, 23, 'Lunes', 12, 0, 'Medio'),
(536, 2479552088723924, 35, 'Miercoles', 12, 0, 'Medio'),
(537, 2479552088723924, 31, 'Miercoles', 12, 0, 'Medio'),
(538, 2479552088723924, 37, 'Miercoles', 12, 0, 'Medio'),
(539, 2479552088723924, 34, 'Miercoles', 12, 0, 'Medio'),
(540, 2479552088723924, 34, 'Viernes', 12, 0, 'Medio'),
(541, 2479552088723924, 37, 'Viernes', 12, 0, 'Medio'),
(542, 2479552088723924, 28, 'Viernes', 12, 0, 'Medio'),
(543, 2479552088723924, 30, 'Viernes', 12, 0, 'Medio'),
(548, 2479552088723930, 27, 'Martes', 56, 0, NULL),
(549, 2479552088723930, 31, 'Martes', 56, 0, NULL),
(550, 2479552088723930, 32, 'Martes', 56, 0, NULL),
(551, 2479552088723930, 33, 'Martes', 56, 0, NULL),
(552, 2479552088723930, 35, 'Martes', 56, 0, NULL),
(553, 2479552088723930, 39, 'Martes', 56, 0, NULL),
(554, 2479552088723930, 41, 'Martes', 56, 0, NULL),
(555, 2479552088723930, 28, 'Miercoles', 60, 0, NULL),
(556, 2479552088723930, 29, 'Miercoles', 60, 0, NULL),
(557, 2479552088723930, 30, 'Miercoles', 60, 0, NULL),
(581, 2479552088723930, 28, 'Lunes', 11, 0, NULL),
(582, 2479552088723930, 27, 'Lunes', 9, 0, NULL),
(583, 2479552088723930, 28, 'Lunes', 11, 0, NULL),
(585, -1, 36, 'Lunes', 12, 0, 'Medio'),
(586, -1, 25, 'Lunes', 12, 0, 'Medio'),
(587, -1, 24, 'Lunes', 12, 0, 'Medio'),
(588, -1, 23, 'Lunes', 12, 0, 'Medio'),
(589, -1, 35, 'Miercoles', 12, 0, 'Medio'),
(590, -1, 31, 'Miercoles', 12, 0, 'Medio'),
(591, -1, 37, 'Miercoles', 12, 0, 'Medio'),
(592, -1, 34, 'Miercoles', 12, 0, 'Medio'),
(593, -1, 34, 'Viernes', 12, 0, 'Medio'),
(594, -1, 37, 'Viernes', 12, 0, 'Medio'),
(595, -1, 28, 'Viernes', 12, 0, 'Medio'),
(596, -1, 30, 'Viernes', 12, 0, 'Medio'),
(597, 2479552088723892, 32, 'Lunes', 15, 0, 'Medio'),
(598, 2479552088723892, 33, 'Lunes', 15, 0, 'Medio'),
(599, 2479552088723892, 35, 'Lunes', 15, 0, 'Medio'),
(600, 2479552088723892, 37, 'Lunes', 15, 0, 'Medio'),
(601, 2479552088723892, 34, 'Lunes', 15, 0, 'Medio'),
(602, 2479552088723892, 19, 'Martes', 15, 0, 'Medio'),
(603, 2479552088723892, 20, 'Martes', 15, 0, 'Medio'),
(604, 2479552088723892, 21, 'Martes', 15, 0, 'Medio'),
(605, 2479552088723892, 23, 'Martes', 15, 0, 'Medio'),
(606, 2479552088723892, 25, 'Martes', 15, 0, 'Medio'),
(607, 2479552088723892, 29, 'Miercoles', 15, 0, 'Medio'),
(608, 2479552088723892, 33, 'Miercoles', 15, 0, 'Medio'),
(609, 2479552088723892, 28, 'Miercoles', 15, 0, 'Medio'),
(610, 2479552088723892, 30, 'Miercoles', 15, 0, 'Medio'),
(611, 2479552088723892, 32, 'Jueves', 12, 0, 'Medio'),
(612, 2479552088723892, 33, 'Jueves', 12, 0, 'Medio'),
(613, 2479552088723892, 33, 'Jueves', 12, 0, 'Medio'),
(614, 2479552088723892, 19, 'Jueves', 12, 0, 'Medio'),
(615, 2479552088723892, 20, 'Jueves', 12, 0, 'Medio'),
(616, 2479552088723892, 21, 'Jueves', 12, 0, 'Medio'),
(617, 2479552088723892, 28, 'Viernes', 15, 0, 'Medio'),
(618, 2479552088723892, 29, 'Viernes', 15, 0, 'Medio'),
(619, 2479552088723892, 30, 'Viernes', 15, 0, 'Medio'),
(620, 2479552088723892, 23, 'Viernes', 15, 0, 'Medio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `ID` bigint(11) NOT NULL,
  `Correo` varchar(40) DEFAULT NULL,
  `Contrasena` varchar(35) DEFAULT NULL,
  `Edad` tinyint(4) NOT NULL,
  `Estatura` int(4) NOT NULL,
  `Peso` smallint(6) NOT NULL,
  `Meta` enum('Sentadillas','Push up','Abdominales') DEFAULT NULL,
  `RepeticionesMeta` int(11) NOT NULL DEFAULT '0',
  `Record` int(11) DEFAULT '0',
  `Promedio` int(11) DEFAULT '0',
  `Ultimo` int(11) DEFAULT '0',
  `Contador` int(11) DEFAULT '0',
  `total` int(11) DEFAULT '0',
  `TiempoCorrer` int(11) DEFAULT '0',
  `TiempoEjercicio` int(11) DEFAULT '0',
  `Nivel` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`ID`, `Correo`, `Contrasena`, `Edad`, `Estatura`, `Peso`, `Meta`, `RepeticionesMeta`, `Record`, `Promedio`, `Ultimo`, `Contador`, `total`, `TiempoCorrer`, `TiempoEjercicio`, `Nivel`) VALUES
(-1, NULL, NULL, 17, 12, 2, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(1, 'edgar.agustin.martinez@gmail.com', 'proyecto', 2, 2, 2, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(2, 'edgar@gmail.com', 'proyecto', 22, 127, 70, '', 2, 0, 0, 0, 0, 0, 0, 15, 1),
(4, 'gera@gmail.com', 'colocado', 8, 13, 52, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(6, 'correo@usuario.com', 'pwd', 51, 42, 15, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(7, 'prueba@prueba.com', 'prueba', 19, 114, 67, '', 43, 0, 0, 0, 0, 0, 0, 0, 1),
(8, 'prueba@prueba.com', 'prueba', 19, 114, 67, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(9, 'prueba420@gmail.com', 'prueba', 18, 127, 70, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(10, NULL, NULL, 22, 183, 80, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(11, NULL, NULL, 22, 183, 80, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(12, NULL, NULL, 22, 183, 80, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 2),
(13, NULL, NULL, 22, 183, 80, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(14, NULL, NULL, 22, 183, 80, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(17, NULL, NULL, 22, 183, 80, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 2),
(2479552088723892, NULL, NULL, 17, 17, 17, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 2),
(2479552088723901, 'unusuarimas@gmail.com', 'edgar123', 20, 183, 78, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 2),
(2479552088723902, 'pruebarutina@correo.com', 'edgar', 19, 165, 60, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(2479552088723903, 'pruebarutina2@correo.com', 'rutinas', 17, 168, 68, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(2479552088723904, 'imbezil@gmail.com', 'imbezil', 69, 169, 69, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(2479552088723905, 'rutina@rutina.rutina', 'rutina', 34, 187, 100, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 2),
(2479552088723906, 'mecago@todo.com', '123', 17, 169, 69, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 2),
(2479552088723907, 'cuenta@correo.com', 'qwerty', 22, 173, 67, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(2479552088723908, 'corre@correo.com', 'pwd', 22, 183, 80, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 2),
(2479552088723911, 'corre@correo.com', 'ahhhhh', 22, 183, 80, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 2),
(2479552088723912, 'tonificar@medio.com', '1234', 19, 178, 75, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 2),
(2479552088723913, 'alto@musculo', '123', 20, 180, 80, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(2479552088723914, 'aggg@ahh.com', '123', 1, 1, 1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 2),
(2479552088723915, '123@123.com', '123', 3, 2, 1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 2),
(2479552088723916, '1234@123.com', '123', 3, 2, 1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 2),
(2479552088723917, 'principiante@acondicionamiento.com', '123', 3, 2, 1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(2479552088723918, '123@456', '123', 18, 175, 69, '', 50, 0, 0, 0, 0, 0, 0, 0, 2),
(2479552088723919, 'int@musc.com', '123', 1, 1, 1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 2),
(2479552088723920, '1234@56.com', '123', 2, 23, 1, '', 45, 0, 0, 0, 0, 0, 0, 0, 2),
(2479552088723921, 'correo@gmail.com', '1234', 21, 183, 78, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 2),
(2479552088723922, 'crypto@hotmail.com', 'crypto', 17, 168, 57, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(2479552088723923, 'crypt2@gmail.com', 'crypt2', 18, 173, 65, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(2479552088723924, 'crypt3@gmail.com', 'crypt3', 17, 170, 70, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(2479552088723925, 'ahhh@ahh.com', '202cb962ac59075b', 3, 2, 1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(2479552088723926, 'ahhhhhh@ahh.com', '202cb962ac59075b', 3, 2, 1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(2479552088723927, 'cryp@gmail.com', '202cb962ac59075b', 3, 2, 1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(2479552088723928, '123@123', '76d80224611fc919', 3, 2, 1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(2479552088723929, '456@456', '250cf8b51c773f3f8dc8b4be867a9a02', 6, 5, 4, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(2479552088723930, 'edgar@derecho.com', '202cb962ac59075b964b07152d234b70', 18, 178, 78, 'Sentadillas', 40, 26, 19, 26, 2, 37, 1, 1, 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ejercicios`
--
ALTER TABLE `ejercicios`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `ejercicios_creados`
--
ALTER TABLE `ejercicios_creados`
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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `ejercicios_creados`
--
ALTER TABLE `ejercicios_creados`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT de la tabla `rutinas`
--
ALTER TABLE `rutinas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=621;

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
