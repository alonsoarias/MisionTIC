-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 10-07-2019 a las 18:18:47
-- Versión del servidor: 5.7.17-log
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sgbe`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autor`
--

CREATE TABLE `autor` (
  `sl_no` int(255) NOT NULL,
  `autor_name` varchar(300) NOT NULL,
  `perfil` varchar(1000) DEFAULT NULL,
  `added_on` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `autor`
--

INSERT INTO `autor` (`sl_no`, `autor_name`, `perfil`, `added_on`) VALUES
(2062, 'César Vallejo', 'Vanguardista', '10-dic-2018 10:48:41 PM'),
(2064, 'Mario Vargas Llosa', 'Nobel 2010', '10-dic-2018 11:41:43 PM'),
(2065, 'Abraham Valdelomar', 'Literato Peruano', '29/06/19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `sl_no` int(255) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `profile` varchar(1000) DEFAULT NULL,
  `added_on` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`sl_no`, `category_name`, `profile`, `added_on`) VALUES
(130, 'Aventura', '', '10-dic-2018 09:51:39 PM'),
(131, 'Cuento corto', '', '10-dic-2018 10:48:41 PM'),
(132, 'Romanticismo', 'El Romanticismo es un movimiento cultural que se originó en Alemania y en Reino Unido a finales del siglo XVIII como una reacción revolucionaria contra la Ilustración y el Neoclasicismo, confiriendo prioridad a los sentimientos.&#8203;', '10-dic-2018 11:00:16 PM'),
(137, 'Leyenda', 'asddas', '29/06/19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `student_id` int(50) NOT NULL,
  `student_name` varchar(300) NOT NULL,
  `student_app` varchar(300) NOT NULL,
  `nivel` varchar(300) DEFAULT NULL,
  `grado` varchar(300) DEFAULT NULL,
  `seccion` varchar(300) DEFAULT NULL,
  `book_name` varchar(300) DEFAULT NULL,
  `tprest` varchar(1000) DEFAULT NULL,
  `estado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`student_id`, `student_name`, `student_app`, `nivel`, `grado`, `seccion`, `book_name`, `tprest`, `estado`) VALUES
(1, 'Grissmer', 'Cumpa', 'Secundaria', '5', 'B', 'Tom Sawyer', '7 días', 'Pendiente'),
(2, 'Brandon', 'Domi­nguez', 'Primaria', '6', 'B', 'Los Cachorros', '1 hora', 'Retornado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `libro_titulo` varchar(255) NOT NULL,
  `categoria_name` varchar(300) DEFAULT NULL,
  `autor_name` varchar(300) DEFAULT NULL,
  `editor_name` varchar(300) DEFAULT NULL,
  `edicion` varchar(100) DEFAULT NULL,
  `volumen` varchar(100) DEFAULT NULL,
  `isbn` varchar(300) DEFAULT NULL,
  `precio` varchar(300) DEFAULT NULL,
  `idioma` varchar(300) DEFAULT NULL,
  `descripcion` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`libro_titulo`, `categoria_name`, `autor_name`, `editor_name`, `edicion`, `volumen`, `isbn`, `precio`, `idioma`, `descripcion`) VALUES
('El principito', 'Aventura', 'Antoine de Saint-Exupéry', 'Navarrete', 'I', 'I', '0000-9999', '3.5', 'Español', 'Libro para niños'),
('Paco Yunque', 'Cuento corto', 'César Vallejo', 'Chirre', '-', '-', '000-7474', '1.50', 'Español', 'La vida de Paco Yunque en la escuela.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(50) NOT NULL,
  `user` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `pass` varchar(50) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `user`, `pass`) VALUES
(1, 'admin', '1234');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`sl_no`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`sl_no`),
  ADD UNIQUE KEY `category_name` (`category_name`);

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`student_id`);

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD UNIQUE KEY `book_title` (`libro_titulo`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `autor`
--
ALTER TABLE `autor`
  MODIFY `sl_no` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2072;
--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `sl_no` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;
--
-- AUTO_INCREMENT de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  MODIFY `student_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
