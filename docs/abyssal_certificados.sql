-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3307
-- Tiempo de generación: 18-03-2022 a las 08:04:01
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `abyssal_certificados`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `td_curso_usuario`
--

CREATE TABLE `td_curso_usuario` (
  `curd_id` int(11) NOT NULL,
  `cur_id` int(11) NOT NULL,
  `usu_id` int(11) NOT NULL,
  `fech_crea` datetime DEFAULT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `td_curso_usuario`
--

INSERT INTO `td_curso_usuario` (`curd_id`, `cur_id`, `usu_id`, `fech_crea`, `est`) VALUES
(1, 1, 3, '2022-03-18 08:00:22', 1),
(2, 1, 4, '2022-03-18 08:00:22', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_categoria`
--

CREATE TABLE `tm_categoria` (
  `cat_id` int(11) NOT NULL,
  `cat_nom` varchar(150) COLLATE utf8mb4_spanish_ci NOT NULL,
  `fech_crea` datetime DEFAULT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tm_categoria`
--

INSERT INTO `tm_categoria` (`cat_id`, `cat_nom`, `fech_crea`, `est`) VALUES
(1, 'Industrial', '2022-03-18 07:40:57', 1),
(2, 'Aeronáutico', '2022-03-18 07:40:57', 1),
(3, 'Bomberos', '2022-03-18 07:40:57', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_curso`
--

CREATE TABLE `tm_curso` (
  `cur_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `cur_nom` varchar(250) COLLATE utf8mb4_spanish_ci NOT NULL,
  `cur_descrip` varchar(1000) COLLATE utf8mb4_spanish_ci NOT NULL,
  `cur_fechi` date NOT NULL,
  `cur_fechf` date NOT NULL,
  `inst_id` int(11) NOT NULL,
  `fech_crea` datetime DEFAULT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tm_curso`
--

INSERT INTO `tm_curso` (`cur_id`, `cat_id`, `cur_nom`, `cur_descrip`, `cur_fechi`, `cur_fechf`, `inst_id`, `fech_crea`, `est`) VALUES
(1, 1, 'Técnicas y estrategias para el combate contra incendios en aeronaves basado en NFPA 1003', 'Agradeciendo el interés por el curso, envió la propuesta de un (1) curso de entrenamiento el cual constara de 40 horas que se dividirán en 5 días de los cuales 20% se dará en teoría y 80% en practicas.', '2022-03-18', '2022-04-04', 1, '2022-03-18 07:45:33', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_instructor`
--

CREATE TABLE `tm_instructor` (
  `inst_id` int(11) NOT NULL,
  `inst_nom` varchar(150) COLLATE utf8mb4_spanish_ci NOT NULL,
  `inst_app` varchar(150) COLLATE utf8mb4_spanish_ci NOT NULL,
  `inst_apm` varchar(150) COLLATE utf8mb4_spanish_ci NOT NULL,
  `inst_correo` varchar(150) COLLATE utf8mb4_spanish_ci NOT NULL,
  `inst_sex` varchar(1) COLLATE utf8mb4_spanish_ci NOT NULL,
  `inst_tel` varchar(12) COLLATE utf8mb4_spanish_ci NOT NULL,
  `fech_crea` datetime DEFAULT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tm_instructor`
--

INSERT INTO `tm_instructor` (`inst_id`, `inst_nom`, `inst_app`, `inst_apm`, `inst_correo`, `inst_sex`, `inst_tel`, `fech_crea`, `est`) VALUES
(1, 'Juan', 'Perez', 'Coca', 'asdasd@asdashdasd', 'M', '6598526', '2022-03-18 07:36:23', 1),
(2, 'Cesar', 'Medrano', 'Ruiz', 'asdasd@asdashdasd.com', 'F', '25742358', '2022-03-18 07:36:23', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_usuario`
--

CREATE TABLE `tm_usuario` (
  `usu_id` int(11) NOT NULL,
  `usu_nom` varchar(150) COLLATE utf8mb4_spanish_ci NOT NULL,
  `usu_app` varchar(150) COLLATE utf8mb4_spanish_ci NOT NULL,
  `usu_apm` varchar(150) COLLATE utf8mb4_spanish_ci NOT NULL,
  `usu_correo` varchar(150) COLLATE utf8mb4_spanish_ci NOT NULL,
  `usu_pass` varchar(10) COLLATE utf8mb4_spanish_ci NOT NULL,
  `usu_sex` varchar(1) COLLATE utf8mb4_spanish_ci NOT NULL,
  `usu_tel` varchar(12) COLLATE utf8mb4_spanish_ci NOT NULL,
  `fech_crear` datetime DEFAULT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tm_usuario`
--

INSERT INTO `tm_usuario` (`usu_id`, `usu_nom`, `usu_app`, `usu_apm`, `usu_correo`, `usu_pass`, `usu_sex`, `usu_tel`, `fech_crear`, `est`) VALUES
(3, 'David', 'Mecalco', 'Alejo', 'dmecalcoa1200@alumno.ipn.mx', '123456', 'M', '5581989321', '2022-03-18 07:26:49', 1),
(4, 'Abraham', 'Perez', 'Sanchez', 'asdasdasd@dsfsdfsdf.com', '123456', 'M', '515641651', '2022-03-18 07:26:49', 1),
(5, 'Alan Ivan', 'Matias', 'Pérez ', 'ventas@abyssal-consultancy.com.mx', '123456', 'M', '4181891554', '2022-03-18 07:26:49', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `td_curso_usuario`
--
ALTER TABLE `td_curso_usuario`
  ADD PRIMARY KEY (`curd_id`);

--
-- Indices de la tabla `tm_categoria`
--
ALTER TABLE `tm_categoria`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indices de la tabla `tm_curso`
--
ALTER TABLE `tm_curso`
  ADD PRIMARY KEY (`cur_id`);

--
-- Indices de la tabla `tm_instructor`
--
ALTER TABLE `tm_instructor`
  ADD PRIMARY KEY (`inst_id`);

--
-- Indices de la tabla `tm_usuario`
--
ALTER TABLE `tm_usuario`
  ADD PRIMARY KEY (`usu_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `td_curso_usuario`
--
ALTER TABLE `td_curso_usuario`
  MODIFY `curd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tm_categoria`
--
ALTER TABLE `tm_categoria`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tm_curso`
--
ALTER TABLE `tm_curso`
  MODIFY `cur_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tm_instructor`
--
ALTER TABLE `tm_instructor`
  MODIFY `inst_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tm_usuario`
--
ALTER TABLE `tm_usuario`
  MODIFY `usu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
