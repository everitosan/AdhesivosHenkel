-- phpMyAdmin SQL Dump
-- version 4.2.7
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 16-10-2014 a las 05:15:12
-- Versión del servidor: 5.5.34
-- Versión de PHP: 5.5.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `Adhesivos_new`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ClientesProovedores`
--

CREATE TABLE IF NOT EXISTS `ClientesProovedores` (
`id` int(10) unsigned NOT NULL,
  `rfc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `razonsocial` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `calle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `noexterior` int(11) NOT NULL,
  `nointerior` int(11) NOT NULL,
  `colonia` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `delegacionmunicipio` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ciudad` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `estado` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cp` int(11) NOT NULL,
  `referenciasubicacion` text COLLATE utf8_unicode_ci NOT NULL,
  `contacto` int(10) unsigned NOT NULL,
  `tipo` enum('Cliente','Proveedor') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CobroPendientes`
--

CREATE TABLE IF NOT EXISTS `CobroPendientes` (
`id` int(10) unsigned NOT NULL,
  `tipo` enum('Factura-e','Factura','Nota') COLLATE utf8_unicode_ci NOT NULL,
  `folio` int(11) NOT NULL,
  `monto` float(8,2) NOT NULL,
  `fechapago` date NOT NULL,
  `noreferenciacheque` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Compra`
--

CREATE TABLE IF NOT EXISTS `Compra` (
`id` int(10) unsigned NOT NULL,
  `tipo` enum('Factura-e','Factura','Nota') COLLATE utf8_unicode_ci NOT NULL,
  `foliofactura` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `descuento` float(8,2) NOT NULL,
  `formapago` int(10) unsigned NOT NULL,
  `condicionpago` int(10) unsigned NOT NULL,
  `comprador` int(10) unsigned NOT NULL,
  `proveedor` int(10) unsigned NOT NULL,
  `nopedido` int(11) NOT NULL,
  `observacionesgenerales` text COLLATE utf8_unicode_ci NOT NULL,
  `concepto` int(10) unsigned NOT NULL,
  `subtotal` float(8,2) NOT NULL,
  `iva` float(8,2) NOT NULL,
  `total` float(8,2) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Concepto`
--

CREATE TABLE IF NOT EXISTS `Concepto` (
`id` int(10) unsigned NOT NULL,
  `producto` int(10) unsigned NOT NULL,
  `cantidad` int(11) NOT NULL,
  `descuento` int(11) NOT NULL,
  `noenvases` int(11) NOT NULL,
  `facturapor` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `preciobase` float(8,2) NOT NULL,
  `preciounitario` float(8,2) NOT NULL,
  `subtotalconcepto` float(8,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CondicionPago`
--

CREATE TABLE IF NOT EXISTS `CondicionPago` (
`id` int(10) unsigned NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `diascredito` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CorteInventario`
--

CREATE TABLE IF NOT EXISTS `CorteInventario` (
`id` int(10) unsigned NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `observaciones` text COLLATE utf8_unicode_ci NOT NULL,
  `producto` int(10) unsigned NOT NULL,
  `cantidadcontada` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `DatosContacto`
--

CREATE TABLE IF NOT EXISTS `DatosContacto` (
`id` int(10) unsigned NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `apppaterno` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `appmaterno` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `genero` enum('masculino','femenino') COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telefonos` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `FormasPago`
--

CREATE TABLE IF NOT EXISTS `FormasPago` (
`id` int(10) unsigned NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Gasto`
--

CREATE TABLE IF NOT EXISTS `Gasto` (
`id` int(10) unsigned NOT NULL,
  `monto` float(8,2) NOT NULL,
  `fecha` date NOT NULL,
  `rubro` int(10) unsigned NOT NULL,
  `rfc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `concepto` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `usuario` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Inventario`
--

CREATE TABLE IF NOT EXISTS `Inventario` (
`id` int(10) unsigned NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `clave` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fecha` date NOT NULL,
  `cantidad` int(11) NOT NULL,
  `comprado` int(11) NOT NULL,
  `vendido` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_09_07_174928_create_Presentacion_table', 1),
('2014_09_07_174949_create_Usuarios_table', 1),
('2014_09_07_175006_create_RubrosGasto_table', 1),
('2014_09_07_175021_create_FormasPago_table', 1),
('2014_09_07_175034_create_CondicionPago_table', 1),
('2014_09_07_175107_create_CobroPendientes_table', 1),
('2014_09_07_175121_create_Telefonos_table', 1),
('2014_09_07_175145_create_Inventario_table', 1),
('2014_09_07_191415_create_Pendientes_table', 1),
('2014_09_07_192100_create_Producto_table', 1),
('2014_09_07_192113_create_Gasto_table', 1),
('2014_09_07_192128_create_PrecioEnvase_table', 1),
('2014_09_07_192153_create_DatosContacto_table', 1),
('2014_09_07_195040_create_PrecioProducto_table', 1),
('2014_09_07_195102_create_CorteInventario_table', 1),
('2014_09_07_202539_create_Concepto_table', 1),
('2014_09_07_202707_create_ClientesProovedores_table', 1),
('2014_09_07_203222_create_Venta_table', 1),
('2014_09_07_203240_create_Compra_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Pendientes`
--

CREATE TABLE IF NOT EXISTS `Pendientes` (
`id` int(10) unsigned NOT NULL,
  `fecha_limite` date NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `estado` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `respuesta` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `responsable` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PrecioEnvase`
--

CREATE TABLE IF NOT EXISTS `PrecioEnvase` (
`id` int(10) unsigned NOT NULL,
  `presentacion` int(10) unsigned NOT NULL,
  `fecha` date NOT NULL,
  `divisa` enum('pesos','dlls') COLLATE utf8_unicode_ci NOT NULL,
  `preciocompra` float(8,2) NOT NULL,
  `precioventa` float(8,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PrecioProducto`
--

CREATE TABLE IF NOT EXISTS `PrecioProducto` (
`id` int(10) unsigned NOT NULL,
  `producto` int(10) unsigned NOT NULL,
  `fecha` date NOT NULL,
  `divisa` enum('pesos','dlls') COLLATE utf8_unicode_ci NOT NULL,
  `preciocompra` float(8,2) NOT NULL,
  `precioventa` float(8,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Presentacion`
--

CREATE TABLE IF NOT EXISTS `Presentacion` (
`id` int(10) unsigned NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Producto`
--

CREATE TABLE IF NOT EXISTS `Producto` (
`id` int(10) unsigned NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `clave` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `medida` enum('Peso','Volumen','Pieza') COLLATE utf8_unicode_ci NOT NULL,
  `presentacion` int(10) unsigned NOT NULL,
  `cantidad` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `RubrosGasto`
--

CREATE TABLE IF NOT EXISTS `RubrosGasto` (
`id` int(10) unsigned NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Telefonos`
--

CREATE TABLE IF NOT EXISTS `Telefonos` (
`id` int(10) unsigned NOT NULL,
  `telefono` int(11) NOT NULL,
  `celular` int(11) NOT NULL,
  `nextel` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Usuarios`
--

CREATE TABLE IF NOT EXISTS `Usuarios` (
`id` int(10) unsigned NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `direccion` text COLLATE utf8_unicode_ci NOT NULL,
  `noexterior` int(11) NOT NULL,
  `nointerior` int(11) NOT NULL,
  `colonia` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `delegacionmunicipio` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ciudad` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `estado` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cp` int(11) NOT NULL,
  `refereniasubicacion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telefono` int(11) NOT NULL,
  `tipousuario` enum('admin','user') COLLATE utf8_unicode_ci NOT NULL,
  `nombreusuario` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Venta`
--

CREATE TABLE IF NOT EXISTS `Venta` (
`id` int(10) unsigned NOT NULL,
  `tipo` enum('Factura-e','Factura','Nota') COLLATE utf8_unicode_ci NOT NULL,
  `folio` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `fecha_vencimiento` date NOT NULL,
  `fecha_ultimo_cobro` date NOT NULL,
  `hora` time NOT NULL,
  `descuento_global` float(8,2) NOT NULL,
  `cliente` int(10) unsigned NOT NULL,
  `cuenta_bancaria` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `forma_pago` int(10) unsigned NOT NULL,
  `condicion_pago` int(10) unsigned NOT NULL,
  `vendedor` int(10) unsigned NOT NULL,
  `observaciones_generales` text COLLATE utf8_unicode_ci NOT NULL,
  `concepto` int(10) unsigned NOT NULL,
  `no_pedido` int(11) NOT NULL,
  `fecha_embarque` date NOT NULL,
  `direccion_embarque` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `observaciones_embarque` text COLLATE utf8_unicode_ci NOT NULL,
  `subtotal` float(8,2) NOT NULL,
  `iva` float(8,2) NOT NULL,
  `total` float(8,2) NOT NULL,
  `total_cobrado` float(8,2) NOT NULL,
  `estatus` tinyint(1) NOT NULL,
  `cancelado` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ClientesProovedores`
--
ALTER TABLE `ClientesProovedores`
 ADD PRIMARY KEY (`id`), ADD KEY `clientesproovedores_contacto_foreign` (`contacto`);

--
-- Indices de la tabla `CobroPendientes`
--
ALTER TABLE `CobroPendientes`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Compra`
--
ALTER TABLE `Compra`
 ADD PRIMARY KEY (`id`), ADD KEY `compra_formapago_foreign` (`formapago`), ADD KEY `compra_condicionpago_foreign` (`condicionpago`), ADD KEY `compra_comprador_foreign` (`comprador`), ADD KEY `compra_proveedor_foreign` (`proveedor`), ADD KEY `compra_concepto_foreign` (`concepto`);

--
-- Indices de la tabla `Concepto`
--
ALTER TABLE `Concepto`
 ADD PRIMARY KEY (`id`), ADD KEY `concepto_producto_foreign` (`producto`);

--
-- Indices de la tabla `CondicionPago`
--
ALTER TABLE `CondicionPago`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `CorteInventario`
--
ALTER TABLE `CorteInventario`
 ADD PRIMARY KEY (`id`), ADD KEY `corteinventario_producto_foreign` (`producto`);

--
-- Indices de la tabla `DatosContacto`
--
ALTER TABLE `DatosContacto`
 ADD PRIMARY KEY (`id`), ADD KEY `datoscontacto_telefonos_foreign` (`telefonos`);

--
-- Indices de la tabla `FormasPago`
--
ALTER TABLE `FormasPago`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Gasto`
--
ALTER TABLE `Gasto`
 ADD PRIMARY KEY (`id`), ADD KEY `gasto_rubro_foreign` (`rubro`), ADD KEY `gasto_usuario_foreign` (`usuario`);

--
-- Indices de la tabla `Inventario`
--
ALTER TABLE `Inventario`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Pendientes`
--
ALTER TABLE `Pendientes`
 ADD PRIMARY KEY (`id`), ADD KEY `pendientes_responsable_foreign` (`responsable`);

--
-- Indices de la tabla `PrecioEnvase`
--
ALTER TABLE `PrecioEnvase`
 ADD PRIMARY KEY (`id`), ADD KEY `precioenvase_presentacion_foreign` (`presentacion`);

--
-- Indices de la tabla `PrecioProducto`
--
ALTER TABLE `PrecioProducto`
 ADD PRIMARY KEY (`id`), ADD KEY `precioproducto_producto_foreign` (`producto`);

--
-- Indices de la tabla `Presentacion`
--
ALTER TABLE `Presentacion`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Producto`
--
ALTER TABLE `Producto`
 ADD PRIMARY KEY (`id`), ADD KEY `producto_presentacion_foreign` (`presentacion`);

--
-- Indices de la tabla `RubrosGasto`
--
ALTER TABLE `RubrosGasto`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Telefonos`
--
ALTER TABLE `Telefonos`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Usuarios`
--
ALTER TABLE `Usuarios`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Venta`
--
ALTER TABLE `Venta`
 ADD PRIMARY KEY (`id`), ADD KEY `venta_concepto_foreign` (`concepto`), ADD KEY `venta_cliente_foreign` (`cliente`), ADD KEY `venta_forma_pago_foreign` (`forma_pago`), ADD KEY `venta_condicion_pago_foreign` (`condicion_pago`), ADD KEY `venta_vendedor_foreign` (`vendedor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ClientesProovedores`
--
ALTER TABLE `ClientesProovedores`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `CobroPendientes`
--
ALTER TABLE `CobroPendientes`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `Compra`
--
ALTER TABLE `Compra`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `Concepto`
--
ALTER TABLE `Concepto`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `CondicionPago`
--
ALTER TABLE `CondicionPago`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `CorteInventario`
--
ALTER TABLE `CorteInventario`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `DatosContacto`
--
ALTER TABLE `DatosContacto`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `FormasPago`
--
ALTER TABLE `FormasPago`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `Gasto`
--
ALTER TABLE `Gasto`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `Inventario`
--
ALTER TABLE `Inventario`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `Pendientes`
--
ALTER TABLE `Pendientes`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `PrecioEnvase`
--
ALTER TABLE `PrecioEnvase`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `PrecioProducto`
--
ALTER TABLE `PrecioProducto`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `Presentacion`
--
ALTER TABLE `Presentacion`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `Producto`
--
ALTER TABLE `Producto`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `RubrosGasto`
--
ALTER TABLE `RubrosGasto`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `Telefonos`
--
ALTER TABLE `Telefonos`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `Usuarios`
--
ALTER TABLE `Usuarios`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `Venta`
--
ALTER TABLE `Venta`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ClientesProovedores`
--
ALTER TABLE `ClientesProovedores`
ADD CONSTRAINT `clientesproovedores_contacto_foreign` FOREIGN KEY (`contacto`) REFERENCES `DatosContacto` (`id`);

--
-- Filtros para la tabla `Compra`
--
ALTER TABLE `Compra`
ADD CONSTRAINT `compra_concepto_foreign` FOREIGN KEY (`concepto`) REFERENCES `Concepto` (`id`),
ADD CONSTRAINT `compra_comprador_foreign` FOREIGN KEY (`comprador`) REFERENCES `ClientesProovedores` (`id`),
ADD CONSTRAINT `compra_condicionpago_foreign` FOREIGN KEY (`condicionpago`) REFERENCES `CondicionPago` (`id`),
ADD CONSTRAINT `compra_formapago_foreign` FOREIGN KEY (`formapago`) REFERENCES `FormasPago` (`id`),
ADD CONSTRAINT `compra_proveedor_foreign` FOREIGN KEY (`proveedor`) REFERENCES `ClientesProovedores` (`id`);

--
-- Filtros para la tabla `Concepto`
--
ALTER TABLE `Concepto`
ADD CONSTRAINT `concepto_producto_foreign` FOREIGN KEY (`producto`) REFERENCES `Producto` (`id`);

--
-- Filtros para la tabla `CorteInventario`
--
ALTER TABLE `CorteInventario`
ADD CONSTRAINT `corteinventario_producto_foreign` FOREIGN KEY (`producto`) REFERENCES `Producto` (`id`);

--
-- Filtros para la tabla `DatosContacto`
--
ALTER TABLE `DatosContacto`
ADD CONSTRAINT `datoscontacto_telefonos_foreign` FOREIGN KEY (`telefonos`) REFERENCES `Telefonos` (`id`);

--
-- Filtros para la tabla `Gasto`
--
ALTER TABLE `Gasto`
ADD CONSTRAINT `gasto_usuario_foreign` FOREIGN KEY (`usuario`) REFERENCES `Usuarios` (`id`),
ADD CONSTRAINT `gasto_rubro_foreign` FOREIGN KEY (`rubro`) REFERENCES `RubrosGasto` (`id`);

--
-- Filtros para la tabla `Pendientes`
--
ALTER TABLE `Pendientes`
ADD CONSTRAINT `pendientes_responsable_foreign` FOREIGN KEY (`responsable`) REFERENCES `Usuarios` (`id`);

--
-- Filtros para la tabla `PrecioEnvase`
--
ALTER TABLE `PrecioEnvase`
ADD CONSTRAINT `precioenvase_presentacion_foreign` FOREIGN KEY (`presentacion`) REFERENCES `Presentacion` (`id`);

--
-- Filtros para la tabla `PrecioProducto`
--
ALTER TABLE `PrecioProducto`
ADD CONSTRAINT `precioproducto_producto_foreign` FOREIGN KEY (`producto`) REFERENCES `Producto` (`id`);

--
-- Filtros para la tabla `Producto`
--
ALTER TABLE `Producto`
ADD CONSTRAINT `producto_presentacion_foreign` FOREIGN KEY (`presentacion`) REFERENCES `Presentacion` (`id`);

--
-- Filtros para la tabla `Venta`
--
ALTER TABLE `Venta`
ADD CONSTRAINT `venta_vendedor_foreign` FOREIGN KEY (`vendedor`) REFERENCES `Usuarios` (`id`),
ADD CONSTRAINT `venta_cliente_foreign` FOREIGN KEY (`cliente`) REFERENCES `ClientesProovedores` (`id`),
ADD CONSTRAINT `venta_concepto_foreign` FOREIGN KEY (`concepto`) REFERENCES `Concepto` (`id`),
ADD CONSTRAINT `venta_condicion_pago_foreign` FOREIGN KEY (`condicion_pago`) REFERENCES `CondicionPago` (`id`),
ADD CONSTRAINT `venta_forma_pago_foreign` FOREIGN KEY (`forma_pago`) REFERENCES `FormasPago` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
