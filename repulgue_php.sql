-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 02-06-2021 a las 22:44:57
-- Versión del servidor: 8.0.22
-- Versión de PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `repulgue_php`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `idCliente` int NOT NULL,
  `nombreCliente` varchar(45) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `direccionCliente` varchar(45) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `cpCliente` int NOT NULL,
  `localidadCliente` varchar(45) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`idCliente`, `nombreCliente`, `direccionCliente`, `cpCliente`, `localidadCliente`) VALUES
(1, 'Raúl lópez', 'Av Calanda N7 1A', 50017, 'Zaragoza'),
(2, '\'Rosa Pardo', 'Calle Celanova N2', 50017, 'Zaragoza');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cocinero`
--

CREATE TABLE `cocinero` (
  `idCocinero` int NOT NULL,
  `recetaMesCocinero` varchar(45) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `idEmpleadoFK` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `cocinero`
--

INSERT INTO `cocinero` (`idCocinero`, `recetaMesCocinero`, `idEmpleadoFK`) VALUES
(1, 'Empanada carne marzo', 1),
(2, 'Empanada atún marzo', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `idEmpleado` int NOT NULL,
  `nombreEmpleado` varchar(45) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `direccionEmpleado` varchar(45) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `cpEmpleado` int NOT NULL,
  `localidadEmpleado` varchar(45) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `sueldoEmpleado` decimal(6,2) NOT NULL,
  `idEmpleadoJefeFK` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`idEmpleado`, `nombreEmpleado`, `direccionEmpleado`, `cpEmpleado`, `localidadEmpleado`, `sueldoEmpleado`, `idEmpleadoJefeFK`) VALUES
(1, 'Ana Sierra', 'Calle Rioja N7 P1C', 50017, 'Zaragoza', '2000.00', 1),
(2, 'Carlos Torres', 'Av Navarra N3', 50017, 'Zaragoza', '1800.00', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lineaordenescompra`
--

CREATE TABLE `lineaordenescompra` (
  `idLineaOrdenCompra` int NOT NULL,
  `cantidad` varchar(45) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `idProductoFK` int NOT NULL,
  `idOrdenCompraFK` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `lineaordenescompra`
--

INSERT INTO `lineaordenescompra` (`idLineaOrdenCompra`, `cantidad`, `idProductoFK`, `idOrdenCompraFK`) VALUES
(1, '5', 1, 1),
(2, '10', 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordenescompra`
--

CREATE TABLE `ordenescompra` (
  `idOrdenCompra` int NOT NULL,
  `totalOrdenCompra` decimal(6,2) NOT NULL,
  `subtotalOrdenCompra` decimal(6,2) NOT NULL,
  `ivaOrdenCompra` decimal(6,2) NOT NULL,
  `fechaOrdenCompra` date NOT NULL,
  `idEmpleadoFK` int NOT NULL,
  `idClienteFK` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `ordenescompra`
--

INSERT INTO `ordenescompra` (`idOrdenCompra`, `totalOrdenCompra`, `subtotalOrdenCompra`, `ivaOrdenCompra`, `fechaOrdenCompra`, `idEmpleadoFK`, `idClienteFK`) VALUES
(1, '12.10', '10.00', '21.00', '2021-03-08', 1, 1),
(2, '24.20', '20.00', '21.00', '2021-03-09', 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `idProducto` int NOT NULL,
  `descripcionProducto` varchar(45) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `precioProducto` decimal(6,2) NOT NULL,
  `stockProducto` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`idProducto`, `descripcionProducto`, `precioProducto`, `stockProducto`) VALUES
(1, 'Empanada carne', '2.00', 400),
(2, 'Empanada atún', '2.00', 500);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendedor`
--

CREATE TABLE `vendedor` (
  `idVendedor` int NOT NULL,
  `primaVendedor` decimal(6,2) NOT NULL,
  `objetivosVendedor` int NOT NULL,
  `idEmpleadoFK` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `vendedor`
--

INSERT INTO `vendedor` (`idVendedor`, `primaVendedor`, `objetivosVendedor`, `idEmpleadoFK`) VALUES
(1, '100.00', 400, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idCliente`);

--
-- Indices de la tabla `cocinero`
--
ALTER TABLE `cocinero`
  ADD PRIMARY KEY (`idCocinero`),
  ADD KEY `idEmpleadoFK` (`idEmpleadoFK`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`idEmpleado`),
  ADD KEY `idEmpleadoJefeFK` (`idEmpleadoJefeFK`);

--
-- Indices de la tabla `lineaordenescompra`
--
ALTER TABLE `lineaordenescompra`
  ADD PRIMARY KEY (`idLineaOrdenCompra`),
  ADD KEY `idProductoFK` (`idProductoFK`,`idOrdenCompraFK`),
  ADD KEY `idOrdenCompraFK` (`idOrdenCompraFK`);

--
-- Indices de la tabla `ordenescompra`
--
ALTER TABLE `ordenescompra`
  ADD PRIMARY KEY (`idOrdenCompra`),
  ADD KEY `idEmpleadoFK` (`idEmpleadoFK`,`idClienteFK`),
  ADD KEY `idClienteFK` (`idClienteFK`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`idProducto`);

--
-- Indices de la tabla `vendedor`
--
ALTER TABLE `vendedor`
  ADD PRIMARY KEY (`idVendedor`),
  ADD KEY `idEmpleadoFK` (`idEmpleadoFK`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `idCliente` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `cocinero`
--
ALTER TABLE `cocinero`
  MODIFY `idCocinero` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `idEmpleado` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `lineaordenescompra`
--
ALTER TABLE `lineaordenescompra`
  MODIFY `idLineaOrdenCompra` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `ordenescompra`
--
ALTER TABLE `ordenescompra`
  MODIFY `idOrdenCompra` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `idProducto` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `vendedor`
--
ALTER TABLE `vendedor`
  MODIFY `idVendedor` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cocinero`
--
ALTER TABLE `cocinero`
  ADD CONSTRAINT `cocinero_ibfk_1` FOREIGN KEY (`idEmpleadoFK`) REFERENCES `cocinero` (`idCocinero`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`idEmpleadoJefeFK`) REFERENCES `empleados` (`idEmpleado`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `lineaordenescompra`
--
ALTER TABLE `lineaordenescompra`
  ADD CONSTRAINT `lineaordenescompra_ibfk_1` FOREIGN KEY (`idProductoFK`) REFERENCES `lineaordenescompra` (`idLineaOrdenCompra`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `lineaordenescompra_ibfk_2` FOREIGN KEY (`idOrdenCompraFK`) REFERENCES `lineaordenescompra` (`idLineaOrdenCompra`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `ordenescompra`
--
ALTER TABLE `ordenescompra`
  ADD CONSTRAINT `ordenescompra_ibfk_1` FOREIGN KEY (`idEmpleadoFK`) REFERENCES `ordenescompra` (`idOrdenCompra`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `ordenescompra_ibfk_2` FOREIGN KEY (`idClienteFK`) REFERENCES `ordenescompra` (`idOrdenCompra`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `vendedor`
--
ALTER TABLE `vendedor`
  ADD CONSTRAINT `vendedor_ibfk_1` FOREIGN KEY (`idEmpleadoFK`) REFERENCES `vendedor` (`idVendedor`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
