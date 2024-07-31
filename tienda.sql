-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-07-2024 a las 17:53:05
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `cedula` varchar(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `direccion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`cedula`, `nombre`, `apellido`, `correo`, `direccion`) VALUES
('0902034597', 'Carlos', 'Perez', 'carlos.perez@example.com', 'Calle 1, Ciudad A'),
('0902034598', 'Ana', 'Gomez', 'ana.gomez@example.com', 'Calle 2, Ciudad B'),
('0902034599', 'Luis', 'Martinez', 'luis.martinez@example.com', 'Calle 3, Ciudad C'),
('0902034600', 'Maria', 'Lopez', 'maria.lopez@example.com', 'Calle 4, Ciudad D'),
('0902034601', 'Juan', 'Hernandez', 'juan.hernandez@example.com', 'Calle 5, Ciudad E'),
('0902034602', 'Jose', 'Garcia', 'jose.garcia@example.com', 'Calle 6, Ciudad F'),
('0902034603', 'Laura', 'Rodriguez', 'laura.rodriguez@example.com', 'Calle 7, Ciudad G'),
('0902034604', 'Pedro', 'Sanchez', 'pedro.sanchez@example.com', 'Calle 8, Ciudad H'),
('0902034605', 'Elena', 'Ramirez', 'elena.ramirez@example.com', 'Calle 9, Ciudad I'),
('0902034606', 'Diego', 'Torres', 'diego.torres@example.com', 'Calle 10, Ciudad J'),
('0902034607', 'Sofia', 'Flores', 'sofia.flores@example.com', 'Calle 11, Ciudad K'),
('0902034608', 'Daniel', 'Castro', 'daniel.castro@example.com', 'Calle 12, Ciudad L'),
('0902034609', 'Isabel', 'Fernandez', 'isabel.fernandez@example.com', 'Calle 13, Ciudad M'),
('0902034610', 'Miguel', 'Ruiz', 'miguel.ruiz@example.com', 'Calle 14, Ciudad N'),
('0902034611', 'Paula', 'Jimenez', 'paula.jimenez@example.com', 'Calle 15, Ciudad O'),
('0902034612', 'Antonio', 'Mendoza', 'antonio.mendoza@example.com', 'Calle 16, Ciudad P'),
('0902034613', 'Luisa', 'Ortega', 'luisa.ortega@example.com', 'Calle 17, Ciudad Q'),
('0902034614', 'Fernando', 'Vargas', 'fernando.vargas@example.com', 'Calle 18, Ciudad R'),
('0902034615', 'Marta', 'Morales', 'marta.morales@example.com', 'Calle 19, Ciudad S'),
('0902034616', 'Jorge', 'Rojas', 'jorge.rojas@example.com', 'Calle 20, Ciudad T'),
('0902034617', 'Patricia', 'Guerrero', 'patricia.guerrero@example.com', 'Calle 21, Ciudad U'),
('0902034618', 'Ricardo', 'Paredes', 'ricardo.paredes@example.com', 'Calle 22, Ciudad V'),
('0902034619', 'Carmen', 'Carrillo', 'carmen.carrillo@example.com', 'Calle 23, Ciudad W'),
('0902034620', 'Victor', 'Soto', 'victorZot@hotmail.com', 'Calle 24, Ciudad X'),
('0902034621', 'Gloria', 'Saenz', 'gloria.saenz@example.com', 'Calle 25, Ciudad Y'),
('0902034622', 'Andres', 'Navarro', 'andres.navarro@example.com', 'Calle 26, Ciudad Z'),
('0902034623', 'Monica', 'Duarte', 'monica.duarte@example.com', 'Calle 27, Ciudad AA'),
('0902034624', 'Roberto', 'Rivas', 'roberto.rivas@example.com', 'Calle 28, Ciudad BB'),
('0902034625', 'Lucia', 'Peña', 'lucia.pena@example.com', 'Calle 29, Ciudad CC'),
('0902034626', 'Francisco', 'Lara', 'francisco.lara@example.com', 'Calle 30, Ciudad DD'),
('0902034627', 'Angela', 'Campos', 'angela.campos@example.com', 'Calle 31, Ciudad EE'),
('0902034628', 'Raul', 'Montero', 'raul.montero@example.com', 'Calle 32, Ciudad FF'),
('0902034629', 'Veronica', 'Santana', 'veronica.santana@example.com', 'Calle 33, Ciudad GG'),
('0902034630', 'Hector', 'Mejia', 'hector.mejia@example.com', 'Calle 34, Ciudad HH'),
('0902034631', 'Silvia', 'Mora', 'silvia.mora@example.com', 'Calle 35, Ciudad II'),
('0902034632', 'Alberto', 'Espinosa', 'alberto.espinosa@example.com', 'Calle 36, Ciudad JJ'),
('0902034633', 'Gabriela', 'Cortez', 'gabriela.cortez@example.com', 'Calle 37, Ciudad KK'),
('0902034634', 'Enrique', 'Rangel', 'enrique.rangel@example.com', 'Calle 38, Ciudad LL'),
('0902034635', 'Valeria', 'Reyes', 'valeria.reyes@example.com', 'Calle 39, Ciudad MM'),
('0902034636', 'Oscar', 'Maldonado', 'oscar.maldonado@example.com', 'Calle 40, Ciudad NN'),
('0902034637', 'Claudia', 'Ponce', 'claudia.ponce@example.com', 'Calle 41, Ciudad OO'),
('0902034638', 'Eduardo', 'Vasquez', 'eduardo.vasquez@example.com', 'Calle 42, Ciudad PP'),
('0902034639', 'Cristina', 'Salinas', 'cristina.salinas@example.com', 'Calle 43, Ciudad QQ'),
('0902034640', 'Alejandro', 'Nunez', 'alejandro.nunez@example.com', 'Calle 44, Ciudad RR'),
('0902034641', 'Sonia', 'Villalobos', 'sonia.villalobos@example.com', 'Calle 45, Ciudad SS'),
('0902034642', 'Federico', 'Bravo', 'federico.bravo@example.com', 'Calle 46, Ciudad TT'),
('0902034643', 'Adriana', 'Aguirre', 'adriana.aguirre@example.com', 'Calle 47, Ciudad UU'),
('0902034644', 'Mauricio', 'Fierro', 'mauricio.fierro@example.com', 'Calle 48, Ciudad VV'),
('0902034645', 'Cecilia', 'Vega', 'cecilia.vega@example.com', 'Calle 49, Ciudad WW'),
('0929994820', 'ricardo', 'piza', 'piza', 'km 41 dia daule');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `itemcompra`
--

CREATE TABLE `itemcompra` (
  `id` int(11) NOT NULL,
  `pedido_id` int(11) DEFAULT NULL,
  `producto_codigo` varchar(20) DEFAULT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `itemcompra`
--

INSERT INTO `itemcompra` (`id`, `pedido_id`, `producto_codigo`, `cantidad`) VALUES
(1, 3, '12', 2),
(2, 4, '12', 1),
(3, 5, '1', 3),
(4, 6, '2', 4),
(6, 8, '4', 5),
(7, 9, '5', 6),
(8, 10, '6', 7),
(9, 11, '7', 8),
(10, 12, '8', 3),
(11, 13, '9', 4),
(12, 14, '10', 5),
(13, 15, '11', 6),
(14, 16, '13', 7),
(15, 17, '14', 8),
(16, 18, '15', 3),
(17, 19, '16', 4),
(18, 20, '17', 5),
(19, 21, '18', 6),
(20, 22, '19', 7),
(21, 23, '20', 8),
(22, 24, '21', 3),
(23, 25, '23', 4),
(24, 26, '24', 5),
(25, 27, '25', 6),
(26, 28, '26', 7),
(27, 29, '27', 8),
(28, 30, '28', 3),
(29, 31, '29', 4),
(30, 32, '30', 5),
(31, 33, '31', 6),
(32, 34, '33', 7),
(33, 35, '34', 8),
(34, 36, '35', 3),
(35, 37, '36', 4),
(36, 38, '37', 5),
(37, 39, '38', 6),
(38, 40, '39', 7),
(39, 41, '40', 8),
(40, 42, '41', 3),
(41, 43, '43', 4),
(42, 44, '44', 5),
(43, 45, '45', 6),
(44, 46, '46', 7),
(45, 47, '47', 8),
(46, 48, '48', 3),
(47, 49, '49', 4),
(48, 50, '50', 5),
(49, 3, '5', 6),
(50, 4, '7', 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `id` int(11) NOT NULL,
  `cliente_cedula` varchar(20) DEFAULT NULL,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`id`, `cliente_cedula`, `total`) VALUES
(1, '0902034645', 750.00),
(2, '0929994820', 6000.00),
(3, '0902034644', 800.00),
(4, '0902034643', 850.00),
(5, '0902034642', 900.00),
(6, '0902034641', 950.00),
(7, '0902034640', 1000.00),
(8, '0902034639', 1050.00),
(9, '0902034638', 1100.00),
(10, '0902034637', 1150.00),
(11, '0902034636', 1200.00),
(12, '0902034635', 1250.00),
(13, '0902034634', 1300.00),
(14, '0902034633', 1350.00),
(15, '0902034632', 1400.00),
(16, '0902034631', 1450.00),
(17, '0902034630', 1500.00),
(18, '0902034629', 1550.00),
(19, '0902034628', 1600.00),
(20, '0902034627', 1650.00),
(21, '0902034626', 1700.00),
(22, '0902034625', 1750.00),
(23, '0902034624', 1800.00),
(24, '0902034623', 1850.00),
(25, '0902034622', 1900.00),
(26, '0902034621', 1950.00),
(27, '0902034620', 2000.00),
(28, '0902034619', 2050.00),
(29, '0902034618', 2100.00),
(30, '0902034617', 2150.00),
(31, '0902034616', 2200.00),
(32, '0902034615', 2250.00),
(33, '0902034614', 2300.00),
(34, '0902034613', 2350.00),
(35, '0902034612', 2400.00),
(36, '0902034611', 2450.00),
(37, '0902034610', 2500.00),
(38, '0902034609', 2550.00),
(39, '0902034608', 2600.00),
(40, '0902034607', 2650.00),
(41, '0902034606', 2700.00),
(42, '0902034605', 2750.00),
(43, '0902034604', 2800.00),
(44, '0902034603', 2850.00),
(45, '0902034602', 2900.00),
(46, '0902034601', 2950.00),
(47, '0902034600', 3000.00),
(48, '0902034599', 3050.00),
(49, '0902034598', 3100.00),
(50, '0902034597', 3150.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `codigo` varchar(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `precio` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`codigo`, `nombre`, `descripcion`, `precio`, `stock`) VALUES
('1', 'Teclado', 'Teclado mecánico retroiluminado', 50.00, 100),
('10', 'Altavoz', 'Altavoz Bluetooth', 40.00, 110),
('11', 'Disco Duro', 'Disco duro externo 1TB', 60.00, 120),
('12', 'mouse', 'mouse republic gamer ', 3000.00, 15),
('13', 'Memoria USB', 'Memoria USB 64GB', 10.00, 150),
('14', 'Tarjeta Gráfica', 'Tarjeta gráfica 8GB', 700.00, 20),
('15', 'SSD', 'Unidad SSD 512GB', 150.00, 35),
('16', 'Fuente de Alimentación', 'Fuente de alimentación 650W', 85.00, 45),
('17', 'Caja PC', 'Caja para PC ATX', 70.00, 55),
('18', 'Monitor UltraWide', 'Monitor UltraWide 34 pulgadas', 400.00, 20),
('19', 'Micrófono', 'Micrófono de condensador', 60.00, 25),
('2', 'Monitor', 'Monitor LED 24 pulgadas', 150.00, 50),
('20', 'Webcam', 'Webcam HD 1080p', 50.00, 30),
('21', 'Cargador', 'Cargador rápido USB-C', 25.00, 100),
('22', 'Cable HDMI', 'Cable HDMI 2 metros', 15.00, 150),
('23', 'Mousepad', 'Mousepad gamer', 20.00, 200),
('24', 'Ventilador', 'Ventilador de CPU', 35.00, 75),
('25', 'Teclado Mecánico', 'Teclado mecánico RGB', 80.00, 65),
('26', 'Memoria RAM', 'Memoria RAM 16GB', 90.00, 50),
('27', 'Disipador', 'Disipador de CPU', 45.00, 40),
('28', 'Tarjeta Madre', 'Tarjeta madre ATX', 180.00, 30),
('29', 'Switch', 'Switch de red 8 puertos', 60.00, 85),
('3', 'Portátil', 'Portátil gaming 16GB RAM', 1000.00, 30),
('30', 'Proyector', 'Proyector LED', 250.00, 20),
('31', 'Batería Externa', 'Batería externa 10000mAh', 35.00, 60),
('32', 'Lector de Tarjetas', 'Lector de tarjetas USB 3.0', 20.00, 90),
('33', 'Mouse', 'Mouse óptico', 25.00, 120),
('34', 'Cámara de Seguridad', 'Cámara de seguridad IP', 100.00, 40),
('35', 'Repetidor WiFi', 'Repetidor WiFi de largo alcance', 55.00, 55),
('36', 'Consola', 'Consola de videojuegos', 400.00, 10),
('37', 'Joystick', 'Joystick para PC', 30.00, 80),
('38', 'Lámpara LED', 'Lámpara LED de escritorio', 20.00, 70),
('39', 'Microscopio Digital', 'Microscopio digital USB', 150.00, 25),
('4', 'Tablet', 'Tablet 10 pulgadas 64GB', 200.00, 80),
('40', 'Termómetro', 'Termómetro digital', 25.00, 50),
('41', 'Cámara Deportiva', 'Cámara deportiva 4K', 150.00, 30),
('42', 'Escáner', 'Escáner portátil', 120.00, 20),
('43', 'Monitor Curvo', 'Monitor curvo 27 pulgadas', 350.00, 15),
('44', 'Grabadora de Voz', 'Grabadora de voz digital', 40.00, 35),
('45', 'Detector de Metales', 'Detector de metales portátil', 90.00, 18),
('46', 'Teléfono Inalámbrico', 'Teléfono inalámbrico', 50.00, 40),
('47', 'Walkie Talkie', 'Walkie talkie par', 80.00, 30),
('48', 'Radiador', 'Radiador para PC', 100.00, 25),
('49', 'Cámara Instantánea', 'Cámara instantánea', 120.00, 20),
('5', 'Cámara', 'Cámara digital 20MP', 300.00, 25),
('50', 'Smartwatch', 'Reloj inteligente', 200.00, 10),
('6', 'Impresora', 'Impresora multifunción', 120.00, 40),
('7', 'Router', 'Router WiFi 6', 90.00, 60),
('8', 'Smartphone', 'Smartphone 128GB', 500.00, 70),
('9', 'Auriculares', 'Auriculares inalámbricos', 80.00, 90);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_cliente`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_cliente` (
`cedula` varchar(20)
,`nombre` varchar(50)
,`apellido` varchar(50)
,`correo` varchar(100)
,`direccion` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_cliente_actualizado`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_cliente_actualizado` (
`cedula` varchar(20)
,`nombre` varchar(50)
,`apellido` varchar(50)
,`correo` varchar(100)
,`direccion` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_cliente_pedido_producto`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_cliente_pedido_producto` (
`cliente_cedula` varchar(20)
,`cliente_nombre` varchar(50)
,`cliente_apellido` varchar(50)
,`pedido_id` int(11)
,`pedido_total` decimal(10,2)
,`producto_codigo` varchar(20)
,`producto_nombre` varchar(50)
,`cantidad` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_itemcompra_sin_id_5`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_itemcompra_sin_id_5` (
`id` int(11)
,`pedido_id` int(11)
,`producto_codigo` varchar(20)
,`cantidad` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_pedido_cliente`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_pedido_cliente` (
`pedido_id` int(11)
,`total` decimal(10,2)
,`cliente_cedula` varchar(20)
,`nombre` varchar(50)
,`apellido` varchar(50)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_pedido_cliente_producto`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_pedido_cliente_producto` (
`pedido_id` int(11)
,`pedido_total` decimal(10,2)
,`cliente_cedula` varchar(20)
,`cliente_nombre` varchar(50)
,`producto_nombre` varchar(50)
,`producto_precio` decimal(10,2)
,`cantidad` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_producto_ordenado`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_producto_ordenado` (
`codigo` varchar(20)
,`nombre` varchar(50)
,`descripcion` text
,`precio` decimal(10,2)
,`stock` int(11)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_cliente`
--
DROP TABLE IF EXISTS `vista_cliente`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_cliente`  AS SELECT `cliente`.`cedula` AS `cedula`, `cliente`.`nombre` AS `nombre`, `cliente`.`apellido` AS `apellido`, `cliente`.`correo` AS `correo`, `cliente`.`direccion` AS `direccion` FROM `cliente` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_cliente_actualizado`
--
DROP TABLE IF EXISTS `vista_cliente_actualizado`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_cliente_actualizado`  AS SELECT `cliente`.`cedula` AS `cedula`, `cliente`.`nombre` AS `nombre`, `cliente`.`apellido` AS `apellido`, `cliente`.`correo` AS `correo`, `cliente`.`direccion` AS `direccion` FROM `cliente` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_cliente_pedido_producto`
--
DROP TABLE IF EXISTS `vista_cliente_pedido_producto`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_cliente_pedido_producto`  AS SELECT `c`.`cedula` AS `cliente_cedula`, `c`.`nombre` AS `cliente_nombre`, `c`.`apellido` AS `cliente_apellido`, `p`.`id` AS `pedido_id`, `p`.`total` AS `pedido_total`, `pr`.`codigo` AS `producto_codigo`, `pr`.`nombre` AS `producto_nombre`, `ic`.`cantidad` AS `cantidad` FROM (((`cliente` `c` left join `pedido` `p` on(`c`.`cedula` = `p`.`cliente_cedula`)) left join `itemcompra` `ic` on(`p`.`id` = `ic`.`pedido_id`)) left join `producto` `pr` on(`ic`.`producto_codigo` = `pr`.`codigo`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_itemcompra_sin_id_5`
--
DROP TABLE IF EXISTS `vista_itemcompra_sin_id_5`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_itemcompra_sin_id_5`  AS SELECT `itemcompra`.`id` AS `id`, `itemcompra`.`pedido_id` AS `pedido_id`, `itemcompra`.`producto_codigo` AS `producto_codigo`, `itemcompra`.`cantidad` AS `cantidad` FROM `itemcompra` WHERE `itemcompra`.`id` <> 5 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_pedido_cliente`
--
DROP TABLE IF EXISTS `vista_pedido_cliente`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_pedido_cliente`  AS SELECT `p`.`id` AS `pedido_id`, `p`.`total` AS `total`, `c`.`cedula` AS `cliente_cedula`, `c`.`nombre` AS `nombre`, `c`.`apellido` AS `apellido` FROM (`pedido` `p` join `cliente` `c` on(`p`.`cliente_cedula` = `c`.`cedula`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_pedido_cliente_producto`
--
DROP TABLE IF EXISTS `vista_pedido_cliente_producto`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_pedido_cliente_producto`  AS SELECT `p`.`id` AS `pedido_id`, `p`.`total` AS `pedido_total`, `c`.`cedula` AS `cliente_cedula`, `c`.`nombre` AS `cliente_nombre`, `pr`.`nombre` AS `producto_nombre`, `pr`.`precio` AS `producto_precio`, `ic`.`cantidad` AS `cantidad` FROM (((`itemcompra` `ic` join `pedido` `p` on(`ic`.`pedido_id` = `p`.`id`)) join `cliente` `c` on(`p`.`cliente_cedula` = `c`.`cedula`)) join `producto` `pr` on(`ic`.`producto_codigo` = `pr`.`codigo`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_producto_ordenado`
--
DROP TABLE IF EXISTS `vista_producto_ordenado`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_producto_ordenado`  AS SELECT `producto`.`codigo` AS `codigo`, `producto`.`nombre` AS `nombre`, `producto`.`descripcion` AS `descripcion`, `producto`.`precio` AS `precio`, `producto`.`stock` AS `stock` FROM `producto` ORDER BY `producto`.`nombre` ASC ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cedula`);

--
-- Indices de la tabla `itemcompra`
--
ALTER TABLE `itemcompra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pedido_id` (`pedido_id`),
  ADD KEY `producto_codigo` (`producto_codigo`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cliente_cedula` (`cliente_cedula`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`codigo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `itemcompra`
--
ALTER TABLE `itemcompra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `itemcompra`
--
ALTER TABLE `itemcompra`
  ADD CONSTRAINT `itemcompra_ibfk_1` FOREIGN KEY (`pedido_id`) REFERENCES `pedido` (`id`),
  ADD CONSTRAINT `itemcompra_ibfk_2` FOREIGN KEY (`producto_codigo`) REFERENCES `producto` (`codigo`);

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`cliente_cedula`) REFERENCES `cliente` (`cedula`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
