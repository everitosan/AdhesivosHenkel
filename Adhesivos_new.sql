-- phpMyAdmin SQL Dump
-- version 4.2.7
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 15-10-2014 a las 01:37:48
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=21 ;

--
-- Volcado de datos para la tabla `ClientesProovedores`
--

INSERT INTO `ClientesProovedores` (`id`, `rfc`, `razonsocial`, `calle`, `noexterior`, `nointerior`, `colonia`, `delegacionmunicipio`, `ciudad`, `estado`, `cp`, `referenciasubicacion`, `contacto`, `tipo`, `created_at`, `updated_at`) VALUES
(1, 'Commodi at quas.', 'Dolore quod.', 'Alba View', 0, 5, 'stad', 'Nepal', 'New Amirport', 'California', 11848, 'Occaecati non.', 1, 'Proveedor', '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(2, 'Veniam numquam.', 'Autem qui qui.', 'Vandervort Garden', 3, 8, 'haven', 'Burundi', 'West Zackary', 'Montana', 27464, 'Quia ducimus omnis.', 2, 'Cliente', '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(3, 'Dolor rem ut et.', 'Dignissimos.', 'Mariah Motorway', 5, 3, 'town', 'Belize', 'West Bryce', 'NorthDakota', 63727, 'Et dolores odit sit.', 3, 'Proveedor', '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(4, 'Qui quibusdam.', 'Praesentium et.', 'Edmond Harbor', 5, 0, 'berg', 'Uruguay', 'Cordeliashire', 'Arizona', 16764, 'Velit itaque enim.', 4, 'Cliente', '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(5, 'Ipsa est est.', 'Fuga.', 'Harmony Shores', 8, 9, 'town', 'Northern Mariana Islands', 'New Maxwell', 'Nebraska', 32114, 'Ullam voluptas sed.', 5, 'Cliente', '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(6, 'Incidunt ipsam.', 'Et fugit et ut.', 'Donnell Glen', 2, 5, 'fort', 'Malaysia', 'Amelyfurt', 'SouthCarolina', 51496, 'Voluptas esse.', 6, 'Proveedor', '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(7, 'Maxime.', 'Eos nesciunt.', 'Alec Field', 5, 9, 'port', 'Argentina', 'West Marceloburgh', 'Florida', 40508, 'Debitis aspernatur.', 7, 'Cliente', '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(8, 'Totam iure ex.', 'Magni neque.', 'Heaney Bridge', 7, 1, 'side', 'Czech Republic', 'West Frankton', 'Florida', 47347, 'Nemo autem.', 8, 'Proveedor', '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(9, 'Eligendi ex non.', 'Alias aut.', 'Amalia Port', 5, 3, 'shire', 'Belgium', 'North Allyshire', 'Utah', 52166, 'Maxime temporibus.', 9, 'Proveedor', '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(10, 'Et molestias.', 'Neque voluptas.', 'Swaniawski Prairie', 2, 3, 'land', 'Syrian Arab Republic', 'East Maidatown', 'NewHampshire', 48980, 'Quis et unde.', 10, 'Cliente', '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(11, 'Unde magnam.', 'Delectus.', 'Grant Circle', 9, 2, 'borough', 'Nigeria', 'North Hudsonton', 'NewMexico', 79002, 'Sint dolorem.', 11, 'Proveedor', '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(12, 'Adipisci est.', 'Nam praesentium.', 'Champlin Flats', 8, 5, 'fort', 'French Polynesia', 'Port Bernitaland', 'Maine', 1448, 'Delectus dolorem.', 12, 'Cliente', '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(13, 'Aliquid.', 'Quia qui quas.', 'Mae Passage', 0, 3, 'ton', 'Antarctica (the territory South of 60 deg S)', 'Reillyton', 'Georgia', 90384, 'Et in nam.', 13, 'Proveedor', '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(14, 'Optio et et.', 'Doloribus culpa.', 'Kellie Pike', 6, 0, 'berg', 'Kuwait', 'Lake Thaddeusville', 'Illinois', 96308, 'Placeat ipsam.', 14, 'Proveedor', '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(15, 'Quibusdam ad.', 'Et reiciendis.', 'Pagac Ramp', 1, 5, 'view', 'Jamaica', 'North Joanie', 'Iowa', 92275, 'Animi consequuntur.', 15, 'Proveedor', '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(16, 'Qui amet.', 'Perferendis.', 'Leannon Valley', 1, 3, 'borough', 'Brunei Darussalam', 'West Jovani', 'WestVirginia', 72768, 'Quia quo alias.', 16, 'Cliente', '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(17, 'Nobis quaerat.', 'Non error dolor.', 'Edmond Hollow', 7, 7, 'ville', 'Macao', 'Rippinville', 'Alabama', 32475, 'Ipsum in ut.', 17, 'Proveedor', '2014-10-14 09:17:19', '2014-10-14 09:17:19'),
(18, 'Sequi repellat.', 'Sint non et aut.', 'Bradly Street', 4, 1, 'ville', 'Seychelles', 'New Elenoraton', 'Alabama', 3153, 'Provident incidunt.', 18, 'Cliente', '2014-10-14 09:17:19', '2014-10-14 09:17:19'),
(19, 'Voluptatem sit.', 'Velit amet.', 'Wehner Squares', 8, 0, 'furt', 'Tajikistan', 'East Nestor', 'Montana', 72586, 'Quos ut perferendis.', 19, 'Proveedor', '2014-10-14 09:17:19', '2014-10-14 09:17:19'),
(20, 'Quasi magnam.', 'Nihil aut.', 'Peyton Spurs', 3, 5, 'land', 'Iraq', 'Blancheberg', 'Georgia', 39354, 'Sint facere placeat.', 20, 'Proveedor', '2014-10-14 09:17:19', '2014-10-14 09:17:19');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `Compra`
--

INSERT INTO `Compra` (`id`, `tipo`, `foliofactura`, `fecha`, `hora`, `descuento`, `formapago`, `condicionpago`, `comprador`, `proveedor`, `nopedido`, `observacionesgenerales`, `concepto`, `subtotal`, `iva`, `total`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Nota', 0, '2013-06-26', '11:54:46', 0.00, 1, 4, 9, 5, 2, 'Doloribus eum quod.', 1, 1000000.00, 0.00, 1000000.00, 1, '2014-10-14 09:17:19', '2014-10-14 09:17:19'),
(2, 'Factura-e', 6, '1995-01-26', '00:09:51', 1.00, 3, 5, 8, 14, 4, 'Perferendis sunt.', 2, 90479.00, 72.00, 716145.00, 0, '2014-10-14 09:17:19', '2014-10-14 09:17:19'),
(3, 'Nota', 6, '1975-05-24', '05:10:49', 0.00, 1, 5, 6, 9, 6, 'Et nostrum et.', 3, 1000000.00, 9.00, 1000000.00, 1, '2014-10-14 09:17:19', '2014-10-14 09:17:19'),
(4, 'Factura', 0, '2002-02-24', '14:10:00', 8.00, 2, 1, 5, 3, 2, 'Corporis quo nemo.', 4, 269.00, 8256.00, 2186.00, 0, '2014-10-14 09:17:19', '2014-10-14 09:17:19'),
(5, 'Factura-e', 0, '2008-01-06', '17:40:43', 3.00, 1, 4, 20, 12, 0, 'Sed omnis neque.', 5, 7251.00, 0.00, 0.00, 0, '2014-10-14 09:17:19', '2014-10-14 09:17:19'),
(6, 'Nota', 1, '2010-11-25', '02:08:48', 5.00, 3, 4, 16, 16, 3, 'Quae cupiditate.', 6, 93656.00, 43953.00, 1000000.00, 0, '2014-10-14 09:17:19', '2014-10-14 09:17:19'),
(7, 'Nota', 3, '2001-11-23', '18:21:40', 6.00, 3, 2, 18, 17, 1, 'Dignissimos fugit.', 7, 1000000.00, 1000000.00, 1.00, 1, '2014-10-14 09:17:19', '2014-10-14 09:17:19'),
(8, 'Nota', 2, '2010-06-30', '12:19:34', 0.00, 2, 1, 1, 14, 9, 'Non quia dolores.', 8, 45836.00, 50513.00, 0.00, 1, '2014-10-14 09:17:19', '2014-10-14 09:17:19'),
(9, 'Factura-e', 9, '1987-11-11', '11:01:48', 9.00, 1, 4, 4, 5, 4, 'Veritatis.', 9, 9438.00, 1000000.00, 1000000.00, 0, '2014-10-14 09:17:19', '2014-10-14 09:17:19'),
(10, 'Factura', 6, '1972-05-01', '17:00:01', 3.00, 1, 2, 2, 13, 5, 'Sit commodi esse.', 10, 0.00, 1000000.00, 75.00, 1, '2014-10-14 09:17:19', '2014-10-14 09:17:19');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `Concepto`
--

INSERT INTO `Concepto` (`id`, `producto`, `cantidad`, `descuento`, `noenvases`, `facturapor`, `preciobase`, `preciounitario`, `subtotalconcepto`, `created_at`, `updated_at`) VALUES
(1, 7, 5, 7, 2, 'Distinctio.', 1000000.00, 111.00, 45.00, '2014-10-14 09:17:19', '2014-10-14 09:17:19'),
(2, 6, 7, 1, 6, 'Aliquam aliquam ut.', 935.00, 1000000.00, 1000000.00, '2014-10-14 09:17:19', '2014-10-14 09:17:19'),
(3, 5, 9, 7, 1, 'Maxime facilis non.', 0.00, 1000000.00, 1000000.00, '2014-10-14 09:17:19', '2014-10-14 09:17:19'),
(4, 10, 7, 5, 4, 'Laborum deserunt.', 189.00, 1000000.00, 9426.00, '2014-10-14 09:17:19', '2014-10-14 09:17:19'),
(5, 6, 6, 3, 2, 'Eius labore.', 38183.00, 246.00, 4.00, '2014-10-14 09:17:19', '2014-10-14 09:17:19'),
(6, 5, 7, 2, 5, 'Officiis excepturi.', 1000000.00, 628100.00, 1000000.00, '2014-10-14 09:17:19', '2014-10-14 09:17:19'),
(7, 5, 7, 4, 6, 'Voluptas fugiat.', 342189.00, 1000000.00, 911.00, '2014-10-14 09:17:19', '2014-10-14 09:17:19'),
(8, 10, 6, 9, 0, 'Occaecati eaque id.', 1000000.00, 1000000.00, 709.00, '2014-10-14 09:17:19', '2014-10-14 09:17:19'),
(9, 10, 1, 0, 9, 'Aut quae tempora.', 70.00, 189073.00, 8.00, '2014-10-14 09:17:19', '2014-10-14 09:17:19'),
(10, 2, 9, 5, 2, 'Quo accusantium.', 0.00, 1.00, 3396.00, '2014-10-14 09:17:19', '2014-10-14 09:17:19');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `CondicionPago`
--

INSERT INTO `CondicionPago` (`id`, `nombre`, `diascredito`, `created_at`, `updated_at`) VALUES
(1, 'crédito 10 días', 10, '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(2, 'crédito 15 días', 15, '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(3, 'crédito 20 días', 20, '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(4, 'crédito 30 días', 30, '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(5, 'crédito 40 días', 40, '2014-10-14 09:17:18', '2014-10-14 09:17:18');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=21 ;

--
-- Volcado de datos para la tabla `DatosContacto`
--

INSERT INTO `DatosContacto` (`id`, `nombre`, `apppaterno`, `appmaterno`, `genero`, `email`, `telefonos`, `created_at`, `updated_at`) VALUES
(1, 'Rashawn', 'Koelpin', 'Sipes', 'masculino', 'pskiles@bernhard.com', 1, '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(2, 'Rachel', 'Kunde', 'Little', 'masculino', 'madie.wintheiser@gmail.com', 2, '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(3, 'Lavina', 'Price', 'Strosin', 'femenino', 'lorenzo80@yahoo.com', 3, '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(4, 'Rusty', 'Robel', 'Hamill', 'masculino', 'pierre.beer@kreiger.net', 4, '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(5, 'Maia', 'Rempel', 'Windler', 'femenino', 'icie75@cormier.com', 5, '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(6, 'Wyman', 'Renner', 'Wolff', 'femenino', 'glover.jessika@yahoo.com', 6, '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(7, 'Otho', 'Cummings', 'Kreiger', 'femenino', 'vandervort.augustus@yahoo.com', 7, '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(8, 'Keegan', 'Price', 'Schowalter', 'femenino', 'theron.macejkovic@hotmail.com', 8, '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(9, 'Ransom', 'Hyatt', 'Nikolaus', 'femenino', 'macey.dickens@kertzmannbogisich.info', 9, '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(10, 'Linwood', 'Rowe', 'Jerde', 'masculino', 'bella60@block.com', 10, '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(11, 'Dayne', 'Denesik', 'O''Kon', 'femenino', 'wilfrid.o''kon@ryan.com', 11, '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(12, 'Effie', 'Reichel', 'Gutmann', 'femenino', 'gottlieb.lora@yahoo.com', 12, '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(13, 'April', 'Price', 'Miller', 'femenino', 'abbott.angel@yahoo.com', 13, '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(14, 'Neil', 'Turcotte', 'Ward', 'femenino', 'xbode@gmail.com', 14, '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(15, 'Darrick', 'Fritsch', 'McDermott', 'masculino', 'kautzer.joshuah@yahoo.com', 15, '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(16, 'Reba', 'Raynor', 'Pfannerstill', 'masculino', 'muriel.paucek@cronin.net', 16, '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(17, 'Deshaun', 'Abshire', 'Miller', 'femenino', 'marcelle.thiel@walker.com', 17, '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(18, 'Tatum', 'Dicki', 'Torp', 'masculino', 'rrutherford@yahoo.com', 18, '2014-10-14 09:17:19', '2014-10-14 09:17:19'),
(19, 'Gwen', 'Moen', 'Mohr', 'masculino', 'luella.herman@feeney.com', 19, '2014-10-14 09:17:19', '2014-10-14 09:17:19'),
(20, 'Buck', 'Reichert', 'Runte', 'masculino', 'hilll.louie@schaefer.biz', 20, '2014-10-14 09:17:19', '2014-10-14 09:17:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `FormasPago`
--

CREATE TABLE IF NOT EXISTS `FormasPago` (
`id` int(10) unsigned NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `FormasPago`
--

INSERT INTO `FormasPago` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Cheque', '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(2, 'Efectivo', '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(3, 'Dolares', '2014-10-14 09:17:18', '2014-10-14 09:17:18');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `Pendientes`
--

INSERT INTO `Pendientes` (`id`, `fecha_limite`, `descripcion`, `estado`, `respuesta`, `responsable`, `created_at`, `updated_at`) VALUES
(1, '2014-10-14', 'Asunto 1', 'Finalizado', 'no hay', 1, '2014-10-14 10:09:05', '2014-10-14 10:09:05');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `PrecioEnvase`
--

INSERT INTO `PrecioEnvase` (`id`, `presentacion`, `fecha`, `divisa`, `preciocompra`, `precioventa`, `created_at`, `updated_at`) VALUES
(1, 1, '2014-10-14', 'pesos', 200.00, 500.00, '2014-10-14 10:55:37', '2014-10-14 10:55:37');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `PrecioProducto`
--

INSERT INTO `PrecioProducto` (`id`, `producto`, `fecha`, `divisa`, `preciocompra`, `precioventa`, `created_at`, `updated_at`) VALUES
(1, 1, '2014-10-09', 'pesos', 200.00, 135.00, '2014-10-14 10:04:55', '2014-10-14 10:04:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Presentacion`
--

CREATE TABLE IF NOT EXISTS `Presentacion` (
`id` int(10) unsigned NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `Presentacion`
--

INSERT INTO `Presentacion` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'costal', '2014-10-14 09:17:15', '2014-10-14 09:17:15'),
(2, 'caja', '2014-10-14 09:17:15', '2014-10-14 09:17:15'),
(3, 'tambor', '2014-10-14 09:17:15', '2014-10-14 09:17:15'),
(4, 'bolsita', '2014-10-14 09:45:38', '2014-10-14 09:45:38');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `Producto`
--

INSERT INTO `Producto` (`id`, `nombre`, `clave`, `descripcion`, `medida`, `presentacion`, `cantidad`, `created_at`, `updated_at`) VALUES
(1, 'Isabelle Morar', 'Quas.', 'Dolores asperiores non magnam sit necessitatibus architecto velit. Aut aut vel mollitia id. Voluptas reiciendis odit quas sint rerum. Amet labore et provident sit consequatur minima.', 'Peso', 2, 20, '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(2, 'Tito Daugherty IV', 'Quia.', 'Et corporis unde possimus dicta. Vel quam sint cum enim assumenda. Sed quam aut ea quibusdam.', 'Pieza', 1, 300, '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(3, 'Kendall O''Hara', 'Et.', 'At ut non sapiente. Sed quia rerum at assumenda. Dolores earum iste eum totam qui.', 'Pieza', 2, 300, '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(4, 'Ms. Gillian Nader III', 'Vero.', 'Hic rerum et architecto voluptatem odit consectetur. Et dolorum voluptates dicta dolores dolores necessitatibus illum est.', 'Pieza', 3, 300, '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(5, 'Bria White', 'Illo.', 'Doloribus qui aut sit aut dignissimos. Provident et inventore fugiat aliquid non. A asperiores eum sit omnis. Vitae esse id earum hic nemo.', 'Peso', 3, 20, '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(6, 'Larry Vandervort MD', 'Quis.', 'Quam modi aut quia. Quia est beatae sit et recusandae. Earum fuga dolores sed rerum ab magnam.\nQuo ratione nihil neque molestias. Quia ut optio facere eligendi et quisquam praesentium illum.', 'Volumen', 3, 500, '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(7, 'Orville Reichert I', 'Ab.', 'Laborum tempora expedita qui odit quis ut qui amet. Omnis sed et est vel. Doloribus accusamus ut pariatur.', 'Peso', 1, 20, '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(8, 'Lisandro Lesch', 'Ut.', 'Nihil quia maiores et pariatur. Et et aut qui delectus. Aut doloribus in saepe consequatur nihil nam.', 'Pieza', 1, 20, '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(9, 'Della Prosacco', 'Est.', 'Fugit commodi occaecati ut. Quaerat qui omnis aut. Omnis nemo voluptatum quaerat est odit necessitatibus quia. Facere quia et ut illum odit.', 'Volumen', 3, 500, '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(10, 'Marques Feil', 'Amet.', 'Impedit nemo minus in repellendus repudiandae et consectetur atque. Porro laboriosam impedit eum aut dignissimos et aut. Rerum quis deserunt pariatur doloremque.', 'Pieza', 1, 300, '2014-10-14 09:17:18', '2014-10-14 09:17:18');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=21 ;

--
-- Volcado de datos para la tabla `Telefonos`
--

INSERT INTO `Telefonos` (`id`, `telefono`, `celular`, `nextel`, `created_at`, `updated_at`) VALUES
(1, 7, 1, 9, '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(2, 7, 8, 6, '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(3, 5, 6, 0, '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(4, 1, 1, 0, '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(5, 6, 2, 0, '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(6, 8, 5, 0, '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(7, 9, 1, 9, '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(8, 8, 0, 9, '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(9, 9, 3, 4, '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(10, 9, 3, 7, '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(11, 3, 8, 4, '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(12, 5, 8, 7, '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(13, 0, 2, 6, '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(14, 5, 2, 5, '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(15, 8, 6, 7, '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(16, 9, 9, 8, '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(17, 7, 3, 8, '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(18, 7, 0, 4, '2014-10-14 09:17:19', '2014-10-14 09:17:19'),
(19, 6, 0, 4, '2014-10-14 09:17:19', '2014-10-14 09:17:19'),
(20, 8, 0, 0, '2014-10-14 09:17:19', '2014-10-14 09:17:19');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `Usuarios`
--

INSERT INTO `Usuarios` (`id`, `nombre`, `direccion`, `noexterior`, `nointerior`, `colonia`, `delegacionmunicipio`, `ciudad`, `estado`, `cp`, `refereniasubicacion`, `telefono`, `tipousuario`, `nombreusuario`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Marisol Lebsack', '0991 Ethan Course', 3, 0, 'mouth', 'Congo', 'South Tyshawnport', 'Kansas', 96847, 'Illum quasi.', 891, 'user', 'Daryl', '$2y$10$/etY/l6rla5Dm0qj0fDD.eW6RPAhgIrhovKfQbKe3w3NlFzmFCE4S', NULL, '2014-10-14 09:17:15', '2014-10-14 09:17:15'),
(2, 'Andrew Rohan', '558 Stracke Circles', 6, 0, 'haven', 'Antarctica (the territory South of 60 deg S)', 'Dominiqueton', 'Oregon', 76011, 'Nesciunt voluptatem.', 0, 'user', 'Toney', '$2y$10$7tpZvLmjdSmxLzzkaDcMX.QGwfXCI18LeMa755PbfgUhLBP7pasH.', NULL, '2014-10-14 09:17:16', '2014-10-14 09:17:16'),
(3, 'Greta Volkman', '504 Andy Estate', 3, 3, 'berg', 'Liberia', 'Olsonbury', 'Massachusetts', 93703, 'Enim voluptates.', 51, 'admin', 'Orion', '$2y$10$iGN2fGw5os5BFETo1GIGp.yRRq47.5zloPSLLXFdfi1valhMIneEi', NULL, '2014-10-14 09:17:16', '2014-10-14 09:17:16'),
(4, 'Shanel Raynor', '21961 Van Mountains', 1, 1, 'chester', 'San Marino', 'North Helenachester', 'Tennessee', 20869, 'Ea consequatur ut.', 0, 'admin', 'Watson', '$2y$10$/TiwX.ITE0YIlXjEKt7kE.E0qmZKEp60lylauYEjCSZAppM4b7ARC', NULL, '2014-10-14 09:17:16', '2014-10-14 09:17:16'),
(5, 'Addison Osinski', '59078 Jayden Squares', 0, 6, 'burgh', 'Turks and Caicos Islands', 'Jamelstad', 'Florida', 15352, 'Consequuntur.', 806736, 'admin', 'Darrel', '$2y$10$.b9vwj/ijy3ZALUoZyw0EOJf7NxEhLzr7VUJcu8XW8QjUM8/fvcNW', NULL, '2014-10-14 09:17:17', '2014-10-14 09:17:17'),
(6, 'Devon Morissette IV', '6892 Otis Villages Suite 788', 5, 6, 'mouth', 'Sweden', 'North Piper', 'Maryland', 9233, 'Aut id maxime.', 562, 'admin', 'Kevon', '$2y$10$rDHhZdM7BCG/slxe14TZSegja4hE02lfx/rCChAiVfGPSg9nwWn62', NULL, '2014-10-14 09:17:17', '2014-10-14 09:17:17'),
(7, 'Fabiola Satterfield', '31671 Jennifer Port Suite 447', 7, 4, 'ton', 'Philippines', 'Vernieberg', 'Missouri', 54548, 'Qui numquam autem.', 0, 'user', 'Anastacio', '$2y$10$Hjc4o.K0ls1V5fTcT8kah.7rP25Gh5cZHQ1KQSimEW1vwC3e9UH1S', NULL, '2014-10-14 09:17:17', '2014-10-14 09:17:17'),
(8, 'Raphaelle Bednar', '283 Morar Terrace', 2, 3, 'town', 'Mauritania', 'West Billiefurt', 'Virginia', 11413, 'Culpa enim et.', 605, 'user', 'Mathias', '$2y$10$2NDiaD4rdeMGevtdR6xuPu7vy4ELIO4R0qqUHRl2nkkw6qYc7B/ry', NULL, '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(9, 'Kelvin Walter', '2609 Hermann Ridge Suite 616', 4, 4, 'shire', 'Mozambique', 'Port Grayce', 'Maryland', 96051, 'Voluptatem.', 689, 'user', 'Edwina', '$2y$10$SuMeIcvIerO3WkLUUXv/aeLirVaw4djeJuWP31zHID2OdS8SrrvFW', NULL, '2014-10-14 09:17:18', '2014-10-14 09:17:18'),
(10, 'Kirsten Abernathy', '551 Angelica Lane Suite 996', 0, 8, 'mouth', 'Malawi', 'South Waltonchester', 'Wisconsin', 40086, 'Iste animi aut.', 373, 'admin', 'Buddy', '$2y$10$hUHA3u5pGhYD/CDW796TWO2ap08XmDDge1m2yNR7RkR5Euu14MF.e', NULL, '2014-10-14 09:17:18', '2014-10-14 09:17:18');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `Venta`
--

INSERT INTO `Venta` (`id`, `tipo`, `folio`, `fecha`, `fecha_vencimiento`, `fecha_ultimo_cobro`, `hora`, `descuento_global`, `cliente`, `cuenta_bancaria`, `forma_pago`, `condicion_pago`, `vendedor`, `observaciones_generales`, `concepto`, `no_pedido`, `fecha_embarque`, `direccion_embarque`, `observaciones_embarque`, `subtotal`, `iva`, `total`, `total_cobrado`, `estatus`, `cancelado`, `created_at`, `updated_at`) VALUES
(1, 'Factura-e', 1, '1972-03-08', '1979-12-02', '1973-10-30', '19:35:15', 209305.30, 11, '4', 2, 1, 2, 'Eius iusto inventore et optio. Qui omnis culpa tempora eius sapiente. Voluptas aut velit quis unde iste consequuntur. Laboriosam similique totam voluptatem fugiat.', 4, 0, '1984-06-09', '075 Velva Cliffs Apt. 225\nElroyview, NV 58686', '', 310.51, 174973.41, 0.00, 183.90, 1, 0, '2014-10-14 09:17:19', '2014-10-14 09:17:19'),
(2, 'Factura-e', 2, '2007-12-30', '2002-07-07', '2013-11-23', '19:15:49', 1000000.00, 18, '9805', 1, 1, 1, 'Totam ipsa provident delectus autem iure nemo nihil voluptatem. Facilis aut quis porro ut expedita. Sed voluptates ea repudiandae dicta voluptatem excepturi.', 2, 0, '1999-01-27', '931 Clare Ramp\nWisokyville, AP 34739', '', 1000000.00, 1.61, 137525.89, 332431.62, 0, 0, '2014-10-14 09:17:19', '2014-10-14 09:17:19'),
(3, 'Factura', 3, '1977-03-23', '1970-04-04', '1975-12-23', '15:39:01', 445855.97, 1, '641511766', 2, 1, 2, 'Ratione at in odio et perspiciatis nihil qui. Harum sit quidem molestiae deleniti perspiciatis veritatis distinctio aut. Culpa delectus laudantium voluptas est.', 3, 0, '1989-04-04', '21655 Gage Branch\nJohnsville, RI 88747-1645', '', 1000000.00, 1000000.00, 0.00, 0.00, 1, 0, '2014-10-14 09:17:19', '2014-10-14 09:17:19'),
(4, 'Factura-e', 4, '1974-08-20', '1996-01-01', '1996-04-26', '15:59:03', 1000000.00, 8, '7362955', 3, 3, 2, 'Et aut ad alias ut deserunt. Corrupti voluptas ut nihil quas. Sed voluptate laboriosam qui sunt quo reprehenderit ipsam vero. Laudantium explicabo est tenetur similique.', 3, 0, '2012-01-23', '92901 Wilford Oval\nLake Kamronchester, NH 47481', '', 1000000.00, 4.40, 1000000.00, 1000000.00, 0, 0, '2014-10-14 09:17:19', '2014-10-14 09:17:19'),
(5, 'Factura-e', 5, '2004-09-19', '1981-12-13', '2000-05-20', '05:12:08', 1000000.00, 3, '4041', 1, 5, 2, 'Quod enim saepe et ut. Eum voluptas qui non animi omnis possimus eaque. Commodi est dolor perferendis asperiores consequatur asperiores et. Suscipit in corrupti assumenda voluptas.', 1, 0, '1987-08-26', '505 Alf Drive\nNew Sandrineview, GU 08694-5832', '', 0.40, 7441.94, 1.70, 0.00, 1, 0, '2014-10-14 09:17:19', '2014-10-14 09:17:19'),
(6, 'Factura-e', 6, '2009-11-11', '1983-03-29', '2011-03-26', '10:03:14', 0.00, 5, '763', 3, 4, 3, 'Dolores odio in optio veniam dolores mollitia maiores et. Consequatur vel aliquam nemo dicta. Quos molestiae mollitia voluptatibus magni qui est.', 4, 0, '1974-01-20', '9435 Okuneva Crossroad Apt. 889\nLake Jaydaview, FM 23781', '', 16808.00, 40.68, 16.30, 8622.68, 0, 0, '2014-10-14 09:17:19', '2014-10-14 09:17:19'),
(7, 'Nota', 7, '2001-03-25', '1992-03-06', '1975-03-26', '17:43:52', 1000000.00, 16, '61485906', 1, 1, 2, 'Ut assumenda voluptates facilis culpa ab. Est rem incidunt sit officia nesciunt. Est odio voluptas eligendi natus neque.', 4, 0, '1990-03-28', '134 Grover Cove\nOzellamouth, CT 22137-7595', '', 0.00, 70.60, 13.91, 0.00, 0, 0, '2014-10-14 09:17:19', '2014-10-14 09:17:19'),
(8, 'Factura', 8, '1996-01-13', '2012-07-31', '2001-04-08', '17:32:43', 32.33, 3, '91883521', 1, 3, 3, 'Autem at non iusto quas. Accusantium et in doloremque dolorum et aut ipsum. Officiis cumque et quidem non consequatur amet fuga. Ut quae id consequatur hic mollitia corrupti.', 2, 0, '2009-12-06', '615 Noble Shoals\nSchmelerland, WI 32634', '', 4.57, 0.00, 259616.83, 1000000.00, 1, 1, '2014-10-14 09:17:19', '2014-10-14 09:17:19'),
(9, 'Factura', 9, '1974-07-12', '1995-04-24', '1998-11-15', '08:40:03', 1000000.00, 14, '0', 2, 3, 1, 'Voluptatem aliquam non ea omnis sed qui enim. Eaque tenetur quo sunt aspernatur excepturi. Occaecati voluptatem optio tempora.', 2, 0, '2011-06-22', '524 Johnston Ports Apt. 901\nBenedictview, TX 96962', '', 639.95, 0.00, 0.00, 1000000.00, 1, 0, '2014-10-14 09:17:19', '2014-10-14 09:17:19'),
(10, 'Factura-e', 10, '1985-12-09', '1997-01-09', '1991-07-24', '14:55:07', 78.87, 9, '231', 3, 2, 2, 'Totam a quo quia assumenda inventore. Aspernatur eius porro et. Blanditiis corrupti qui qui qui. Voluptas sed dolores consequatur sit non sit. Quod dolore odio nihil vitae est.', 5, 0, '1992-12-24', '1868 Quigley Inlet\nWest Retta, TX 94888-2512', '', 17.84, 0.88, 11.82, 77.92, 1, 1, '2014-10-14 09:17:19', '2014-10-14 09:17:19');

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
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `CobroPendientes`
--
ALTER TABLE `CobroPendientes`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `Compra`
--
ALTER TABLE `Compra`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `Concepto`
--
ALTER TABLE `Concepto`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `CondicionPago`
--
ALTER TABLE `CondicionPago`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `CorteInventario`
--
ALTER TABLE `CorteInventario`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `DatosContacto`
--
ALTER TABLE `DatosContacto`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `FormasPago`
--
ALTER TABLE `FormasPago`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
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
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `PrecioEnvase`
--
ALTER TABLE `PrecioEnvase`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `PrecioProducto`
--
ALTER TABLE `PrecioProducto`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `Presentacion`
--
ALTER TABLE `Presentacion`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `Producto`
--
ALTER TABLE `Producto`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `RubrosGasto`
--
ALTER TABLE `RubrosGasto`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `Telefonos`
--
ALTER TABLE `Telefonos`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `Usuarios`
--
ALTER TABLE `Usuarios`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `Venta`
--
ALTER TABLE `Venta`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
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
ADD CONSTRAINT `compra_comprador_foreign` FOREIGN KEY (`comprador`) REFERENCES `ClientesProovedores` (`id`),
ADD CONSTRAINT `compra_concepto_foreign` FOREIGN KEY (`concepto`) REFERENCES `Concepto` (`id`),
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
ADD CONSTRAINT `gasto_rubro_foreign` FOREIGN KEY (`rubro`) REFERENCES `RubrosGasto` (`id`),
ADD CONSTRAINT `gasto_usuario_foreign` FOREIGN KEY (`usuario`) REFERENCES `Usuarios` (`id`);

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
ADD CONSTRAINT `venta_cliente_foreign` FOREIGN KEY (`cliente`) REFERENCES `ClientesProovedores` (`id`),
ADD CONSTRAINT `venta_concepto_foreign` FOREIGN KEY (`concepto`) REFERENCES `Concepto` (`id`),
ADD CONSTRAINT `venta_condicion_pago_foreign` FOREIGN KEY (`condicion_pago`) REFERENCES `CondicionPago` (`id`),
ADD CONSTRAINT `venta_forma_pago_foreign` FOREIGN KEY (`forma_pago`) REFERENCES `FormasPago` (`id`),
ADD CONSTRAINT `venta_vendedor_foreign` FOREIGN KEY (`vendedor`) REFERENCES `Usuarios` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
