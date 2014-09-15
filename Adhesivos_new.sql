-- phpMyAdmin SQL Dump
-- version 4.2.7
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 11-09-2014 a las 19:56:31
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
(1, 'Adipisci.', 'Et quam nihil.', 'Nitzsche Harbors', 9, 7, 'mouth', 'Bosnia and Herzegovina', 'East Carolyne', 'Minnesota', 99719, 'In explicabo vitae.', 1, 'Cliente', '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(2, 'Eos repellat.', 'Rem praesentium.', 'Jeremy Mountain', 2, 6, 'stad', 'Liechtenstein', 'Osinskistad', 'Oklahoma', 9645, 'Hic corporis alias.', 2, 'Cliente', '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(3, 'Tenetur magnam.', 'Laudantium et.', 'Gibson Ports', 0, 1, 'shire', 'United Kingdom', 'Faybury', 'SouthDakota', 65611, 'Enim ex at libero.', 3, 'Proveedor', '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(4, 'Harum odio.', 'Voluptatem.', 'Kassulke Extension', 0, 6, 'shire', 'China', 'O''Connerberg', 'NorthDakota', 79091, 'Qui sed culpa.', 4, 'Proveedor', '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(5, 'Repudiandae.', 'Consequatur ut.', 'Edison Wall', 7, 5, 'mouth', 'Singapore', 'New Stanley', 'NorthDakota', 67473, 'Sed voluptates qui.', 5, 'Cliente', '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(6, 'Ut officiis.', 'Eos ad in sed.', 'Pollich Isle', 8, 9, 'burgh', 'Tonga', 'New Sebastianchester', 'Montana', 80612, 'Dolorem cumque.', 6, 'Cliente', '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(7, 'Officiis.', 'Placeat quo.', 'Abbott Dam', 3, 9, 'berg', 'Denmark', 'Schadenview', 'NorthDakota', 11129, 'Veritatis eum quam.', 7, 'Proveedor', '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(8, 'Qui non.', 'Quasi beatae.', 'Lambert Land', 2, 2, 'furt', 'Turks and Caicos Islands', 'West Hansfort', 'Vermont', 92924, 'Aut necessitatibus.', 8, 'Proveedor', '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(9, 'Ut illum cum.', 'Voluptatem.', 'Gutkowski Manor', 9, 1, 'fort', 'Thailand', 'Cronafort', 'Maine', 12250, 'Voluptate quis eius.', 9, 'Proveedor', '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(10, 'Dignissimos.', 'Autem dolorum.', 'Medhurst Circle', 3, 7, 'land', 'Panama', 'Lake Noemie', 'Arizona', 25565, 'Assumenda quia.', 10, 'Cliente', '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(11, 'Explicabo neque.', 'Possimus.', 'Beatty Vista', 4, 1, 'burgh', 'Christmas Island', 'New Princess', 'Georgia', 9494, 'Minima corrupti qui.', 11, 'Proveedor', '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(12, 'Et nisi soluta.', 'Praesentium.', 'Gislason Parkways', 7, 4, 'port', 'Oman', 'Hazleview', 'RhodeIsland', 97369, 'Est cumque.', 12, 'Proveedor', '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(13, 'Laudantium.', 'Libero.', 'Larkin Corner', 3, 0, 'port', 'Cape Verde', 'West Josiahton', 'Vermont', 51114, 'Inventore libero.', 13, 'Proveedor', '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(14, 'Iusto minus.', 'Aut fugit iste.', 'Emma Tunnel', 7, 7, 'burgh', 'Germany', 'West Nicholasberg', 'Oregon', 41061, 'Nesciunt quos.', 14, 'Proveedor', '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(15, 'Et voluptas.', 'Eum ab nulla.', 'Angelita Forest', 7, 3, 'shire', 'Iran', 'East Kendall', 'Oklahoma', 70896, 'Sit perferendis.', 15, 'Cliente', '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(16, 'Dolor cum quo.', 'Occaecati autem.', 'Vincenza Ramp', 6, 4, 'furt', 'Oman', 'South Rosalindafurt', 'Utah', 14317, 'Distinctio est.', 16, 'Proveedor', '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(17, 'Repellat ut.', 'Placeat est et.', 'Mayert Street', 3, 5, 'ville', 'Belize', 'Port Stevieland', 'Idaho', 51387, 'Id quibusdam et aut.', 17, 'Cliente', '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(18, 'Quidem ea.', 'Quaerat vel ut.', 'Wayne Points', 1, 6, 'berg', 'Lithuania', 'Lake Dessie', 'Florida', 71875, 'Voluptatum hic.', 18, 'Proveedor', '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(19, 'Dolore ratione.', 'Esse ut natus.', 'Kali Stream', 5, 2, 'side', 'Indonesia', 'Marquisberg', 'Ohio', 78796, 'Quas est et.', 19, 'Proveedor', '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(20, 'Sed perferendis.', 'Enim.', 'Caterina Center', 9, 9, 'ville', 'Spain', 'Port Jovany', 'Arizona', 6828, 'Possimus corporis.', 20, 'Cliente', '2014-09-11 20:21:46', '2014-09-11 20:21:46');

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
(1, 'Nota', 9, '1995-08-20', '05:13:04', 3.00, 1, 1, 16, 9, 4, 'Repellendus enim.', 1, 7892.00, 1000000.00, 0.00, 1, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(2, 'Nota', 8, '1992-02-27', '20:27:38', 2.00, 3, 2, 3, 3, 3, 'Doloribus tempore.', 2, 7.00, 7268.00, 166774.00, 0, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(3, 'Factura-e', 5, '1987-01-13', '07:05:44', 8.00, 1, 3, 16, 10, 1, 'Vel ad in maxime.', 3, 2300.00, 5440.00, 1000000.00, 1, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(4, 'Factura', 2, '1994-05-10', '18:41:13', 5.00, 1, 2, 19, 13, 8, 'Tempore ipsum ipsum.', 4, 86324.00, 1000000.00, 1000000.00, 0, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(5, 'Factura-e', 2, '1972-09-07', '05:30:25', 7.00, 3, 2, 7, 1, 9, 'Tenetur sunt.', 5, 2.00, 475040.00, 68.00, 1, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(6, 'Nota', 0, '1999-10-16', '12:39:40', 7.00, 2, 2, 20, 18, 3, 'Et est nisi velit.', 6, 6.00, 3.00, 327974.00, 0, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(7, 'Nota', 7, '1997-04-06', '04:38:53', 5.00, 1, 1, 12, 6, 9, 'Incidunt nulla.', 7, 49825.00, 5385.00, 1000000.00, 0, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(8, 'Nota', 0, '2000-01-18', '02:09:28', 9.00, 3, 1, 6, 20, 5, 'Itaque assumenda.', 8, 952807.00, 28.00, 6.00, 0, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(9, 'Nota', 8, '1990-05-29', '23:55:48', 8.00, 3, 1, 14, 5, 6, 'Sunt culpa et sit.', 9, 80.00, 137.00, 923.00, 1, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(10, 'Nota', 8, '2002-09-24', '01:52:26', 0.00, 2, 5, 12, 13, 7, 'Accusantium alias.', 10, 1000000.00, 58162.00, 8810.00, 0, '2014-09-11 20:21:46', '2014-09-11 20:21:46');

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
(1, 3, 3, 1, 5, 'Omnis sint illo.', 7.00, 55521.00, 1000000.00, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(2, 3, 5, 7, 4, 'Dolorem et sit enim.', 1000000.00, 257.00, 3924.00, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(3, 10, 4, 2, 6, 'Praesentium qui.', 26370.00, 162.00, 1000000.00, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(4, 3, 8, 3, 6, 'Qui ab et similique.', 1000000.00, 5.00, 1000000.00, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(5, 4, 1, 6, 8, 'Eos quia repellat.', 305.00, 0.00, 260872.00, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(6, 8, 7, 6, 1, 'Et non numquam.', 1000000.00, 85414.00, 1000000.00, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(7, 2, 1, 9, 9, 'Omnis et blanditiis.', 1.00, 7.00, 1000000.00, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(8, 2, 3, 8, 9, 'Nam cum consequatur.', 57.00, 1000000.00, 1000000.00, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(9, 6, 9, 6, 7, 'Est non mollitia.', 1000000.00, 0.00, 1000000.00, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(10, 5, 1, 0, 8, 'Quisquam sit aut.', 1000000.00, 9807.00, 1000000.00, '2014-09-11 20:21:46', '2014-09-11 20:21:46');

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
(1, 'crédito 10 días', 10, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(2, 'crédito 15 días', 15, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(3, 'crédito 20 días', 20, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(4, 'crédito 30 días', 30, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(5, 'crédito 40 días', 40, '2014-09-11 20:21:46', '2014-09-11 20:21:46');

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
(1, 'Ryan', 'Durgan', 'Harvey', 'femenino', 'connor67@gmail.com', 1, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(2, 'Imogene', 'Pfannerstill', 'Renner', 'masculino', 'vena.bernier@yahoo.com', 2, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(3, 'Lauriane', 'Russel', 'Harvey', 'masculino', 'eladio04@yahoo.com', 3, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(4, 'Madisen', 'Ankunding', 'Kiehn', 'femenino', 'toy.bogisich@yahoo.com', 4, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(5, 'Reginald', 'Howe', 'Kemmer', 'femenino', 'vilma59@gmail.com', 5, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(6, 'Charlie', 'Wisoky', 'Christiansen', 'femenino', 'kerluke.abdul@hotmail.com', 6, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(7, 'Dane', 'Lehner', 'Ortiz', 'masculino', 'amalia75@gmail.com', 7, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(8, 'Winifred', 'Block', 'Green', 'femenino', 'gregg.aufderhar@yahoo.com', 8, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(9, 'Hellen', 'Douglas', 'Wolf', 'femenino', 'ywill@hotmail.com', 9, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(10, 'Theodore', 'Runte', 'Orn', 'femenino', 'donna14@yahoo.com', 10, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(11, 'Lesley', 'Moen', 'Abshire', 'masculino', 'bogisich.justine@schaefer.com', 11, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(12, 'Kenneth', 'Vandervort', 'Zboncak', 'masculino', 'howe.danial@blick.com', 12, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(13, 'Vernice', 'Murphy', 'Hackett', 'femenino', 'juwan.ward@hotmail.com', 13, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(14, 'Doris', 'Johnston', 'Klein', 'femenino', 'sigurd.nader@reichertcrona.com', 14, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(15, 'Camron', 'Lindgren', 'Dietrich', 'masculino', 'kuhic.jesus@gmail.com', 15, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(16, 'Mercedes', 'O''Conner', 'Balistreri', 'femenino', 'hettinger.lexus@gmail.com', 16, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(17, 'Kailey', 'Jakubowski', 'Padberg', 'femenino', 'tyrell.langworth@yahoo.com', 17, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(18, 'Madyson', 'Steuber', 'Howe', 'femenino', 'cdach@shields.org', 18, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(19, 'Ahmed', 'Anderson', 'Braun', 'femenino', 'maeve46@yahoo.com', 19, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(20, 'Sheila', 'Stehr', 'Towne', 'masculino', 'aliza.schaefer@gmail.com', 20, '2014-09-11 20:21:46', '2014-09-11 20:21:46');

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
(1, 'Cheque', '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(2, 'Efectivo', '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(3, 'Dolares', '2014-09-11 20:21:46', '2014-09-11 20:21:46');

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
  `precio` float(8,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `Presentacion`
--

INSERT INTO `Presentacion` (`id`, `nombre`, `precio`, `created_at`, `updated_at`) VALUES
(1, 'costal', 200.00, '2014-09-11 20:21:42', '2014-09-11 20:21:42'),
(2, 'caja', 300.00, '2014-09-11 20:21:42', '2014-09-11 20:21:42'),
(3, 'tambor', 500.00, '2014-09-11 20:21:42', '2014-09-11 20:21:42');

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
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `Producto`
--

INSERT INTO `Producto` (`id`, `nombre`, `clave`, `descripcion`, `medida`, `presentacion`, `created_at`, `updated_at`) VALUES
(1, 'Patricia Wolf', 'Sit.', 'At nulla ex aperiam nihil. Eum repellat aperiam aut quod sed aut. Aperiam temporibus et vel. Possimus dolorem accusantium et officia deleniti quam voluptates.', 'Pieza', 3, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(2, 'Damian Erdman', 'Ut.', 'Itaque laudantium esse qui asperiores iusto. Tempora voluptate iure nihil libero ut ipsum. A autem quos beatae praesentium aut est.', 'Pieza', 2, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(3, 'Ramona Bosco', 'Eum.', 'Exercitationem error alias doloremque cupiditate. Dicta delectus illo ipsam quo dicta voluptatibus optio. Praesentium alias qui et esse molestiae.', 'Pieza', 2, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(4, 'Hipolito Pouros III', 'Non.', 'Ea voluptas minus eos rerum nulla. Veniam enim perspiciatis fuga similique aut non. Rerum sed voluptatem explicabo distinctio consectetur fugit et.', 'Peso', 1, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(5, 'Rhianna Renner', 'Ut.', 'Et autem ipsum qui ad est eius. Illum quae numquam nihil labore. Omnis at reiciendis quas a.', 'Peso', 1, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(6, 'Miss Krystel Lebsack', 'Quia.', 'Ratione et eum in quis sit sint. Ratione eos voluptatem voluptatem. Consequatur dicta et aliquid amet in. Autem non voluptas alias autem voluptatum.', 'Pieza', 2, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(7, 'Lavern Marvin', 'Vel.', 'Distinctio rerum sapiente quas vitae id cupiditate fuga. Eos ea rerum explicabo suscipit occaecati. Laboriosam ex et sequi aut deserunt est.', 'Pieza', 1, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(8, 'Jonatan Gottlieb', 'Ad.', 'Ut dicta eos maiores quis qui voluptatem. Numquam sed excepturi optio aut. Consectetur quis doloremque et consectetur voluptas. Quae nisi rerum ipsam quia.', 'Peso', 2, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(9, 'Allen Gutkowski', 'Ut.', 'Sint veniam praesentium ut voluptas nulla dicta ut. Incidunt perferendis nesciunt rerum velit corrupti voluptatibus laboriosam. Cupiditate odit beatae at corporis officiis.', 'Volumen', 3, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(10, 'Jaclyn Dickinson IV', 'Sit.', 'Est soluta porro omnis eligendi iusto nostrum. Inventore aspernatur molestias dolorum tempora magnam. Itaque aut voluptas dolor sed quaerat est. Dolorem vel et voluptatum.', 'Volumen', 1, '2014-09-11 20:21:46', '2014-09-11 20:21:46');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `RubrosGasto`
--

INSERT INTO `RubrosGasto` (`id`, `nombre`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'Agua', 'Pago de agua', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
(1, 2, 3, 7, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(2, 0, 5, 3, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(3, 5, 0, 4, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(4, 9, 6, 3, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(5, 8, 1, 8, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(6, 6, 9, 7, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(7, 1, 4, 6, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(8, 3, 3, 7, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(9, 5, 6, 5, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(10, 4, 4, 0, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(11, 9, 9, 4, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(12, 0, 7, 3, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(13, 1, 1, 1, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(14, 0, 4, 7, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(15, 3, 0, 5, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(16, 4, 7, 0, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(17, 3, 2, 0, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(18, 8, 2, 3, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(19, 0, 2, 8, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(20, 1, 3, 4, '2014-09-11 20:21:46', '2014-09-11 20:21:46');

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
(1, 'D''angelo Cassin', '115 Jeromy Brook Apt. 906', 9, 9, 'town', 'Mali', 'Lake Heathtown', 'NewJersey', 81518, 'Optio consequatur.', 0, 'user', 'Matilda', '$2y$10$mQBBnP1pvTv6MZQ3HCosFuLznAoZWzu.7v1WY6RnEo66NTpMyBLo2', NULL, '2014-09-11 20:21:43', '2014-09-11 20:21:43'),
(2, 'Jordi Paucek', '33457 Borer Rue', 2, 1, 'mouth', 'Guinea-Bissau', 'North Hollis', 'Nevada', 19908, 'Similique.', 473311, 'admin', 'Emerald', '$2y$10$MDaolqkpZbSDdwHzuKfwjuoicOQpE5zo9ri1K7FZtpmLcYvFO8uty', NULL, '2014-09-11 20:21:43', '2014-09-11 20:21:43'),
(3, 'Rebeca Marvin', '8421 Miguel Terrace', 6, 1, 'furt', 'Venezuela', 'Port Kris', 'SouthCarolina', 20042, 'Sint sint illo.', 1, 'user', 'Giovanna', '$2y$10$XhnMn47Bt04ZPBO4shIv.uHtL9cq14dJIL.2Yw9Gl4OaoSmXcQbMu', NULL, '2014-09-11 20:21:43', '2014-09-11 20:21:43'),
(4, 'Erna Hessel', '2032 Kuvalis Groves Suite 400', 4, 0, 'berg', 'Svalbard & Jan Mayen Islands', 'Abrahamview', 'NewYork', 17502, 'Illo sed nulla a.', 1, 'admin', 'Sadye', '$2y$10$BA4qYUIgsN1TQ9OKhOtdhuHQdRWZNPbttX3NslqqbYO95bdnfb5iy', NULL, '2014-09-11 20:21:44', '2014-09-11 20:21:44'),
(5, 'Marie Kertzmann', '06071 Lakin Prairie Suite 672', 0, 8, 'haven', 'Niger', 'New Maidahaven', 'Delaware', 14059, 'Ipsam non est illo.', 298205, 'user', 'Devin', '$2y$10$iLGEq/lNpMXVRB1KDR8bOu42ZQupNMCPWc3LMtfVjxcdCh1uOqA7C', NULL, '2014-09-11 20:21:44', '2014-09-11 20:21:44'),
(6, 'Audreanne Fahey Jr.', '94065 Hackett Lodge', 8, 5, 'mouth', 'Chile', 'Alisonborough', 'Alaska', 27319, 'Voluptatem earum.', 0, 'admin', 'Sydnie', '$2y$10$LVnhQpLMorgGM4MA7VjhfO58Ol2YY5ibszznk1Rs98H6L7zRHQJKa', NULL, '2014-09-11 20:21:44', '2014-09-11 20:21:44'),
(7, 'Brook Stehr', '89084 Schneider Pass', 2, 3, 'side', 'Bangladesh', 'Loratown', 'Virginia', 51254, 'Et placeat.', 1, 'user', 'Carmelo', '$2y$10$/3W6Rh.umqIl3o8I6DEJEOGR1Hvi0PMovLXO/QvJPn8.TBCDaLsVy', NULL, '2014-09-11 20:21:45', '2014-09-11 20:21:45'),
(8, 'Ms. Vincent Lueilwitz I', '80613 Purdy Branch Suite 675', 6, 3, 'burgh', 'Cook Islands', 'Deckowberg', 'Connecticut', 71804, 'Et iusto cum qui.', 2147483647, 'admin', 'Sofia', '$2y$10$jH1xy.9QlbH2j/Ccr.2re.lFwKEAIHrCR0rCuLARQM1hMGNm31qia', NULL, '2014-09-11 20:21:45', '2014-09-11 20:21:45'),
(9, 'Mrs. Johnathan Walsh', '25148 Ritchie Oval', 2, 5, 'stad', 'Benin', 'Jaquanport', 'Vermont', 10717, 'Nemo eum sit quo.', 342, 'user', 'Kaelyn', '$2y$10$LEI0mc3lcktmgvGtQlBggOPzp1CTrlLi/6pUufNp0XcO86nMXaKuu', NULL, '2014-09-11 20:21:45', '2014-09-11 20:21:45'),
(10, 'Keely Frami', '4238 Cronin Isle', 3, 9, 'side', 'Luxembourg', 'Rolandofort', 'Illinois', 79260, 'Numquam nesciunt.', 0, 'user', 'Sincere', '$2y$10$AVeJPcnWzdc3Ur5Utvddl.XBs7mPfhJ3BtXzKzLO.njFTss4JEgBm', NULL, '2014-09-11 20:21:46', '2014-09-11 20:21:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Venta`
--

CREATE TABLE IF NOT EXISTS `Venta` (
`id` int(10) unsigned NOT NULL,
  `tipo` enum('Factura-e','Factura','Nota') COLLATE utf8_unicode_ci NOT NULL,
  `folio` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `fechavencimiento` date NOT NULL,
  `fechaultimocobro` date NOT NULL,
  `hora` time NOT NULL,
  `descuentoglobal` float(8,2) NOT NULL,
  `cliente` int(10) unsigned NOT NULL,
  `cuentabancaria` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `formapago` int(10) unsigned NOT NULL,
  `condicionpago` int(10) unsigned NOT NULL,
  `vendedor` int(10) unsigned NOT NULL,
  `observacionesgenerales` text COLLATE utf8_unicode_ci NOT NULL,
  `nopedido` int(11) NOT NULL,
  `fechaembarque` date NOT NULL,
  `direccionembarque` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `observacionesembarque` text COLLATE utf8_unicode_ci NOT NULL,
  `subtotal` float(8,2) NOT NULL,
  `iva` float(8,2) NOT NULL,
  `total` float(8,2) NOT NULL,
  `totalcobrado` float(8,2) NOT NULL,
  `estatus` tinyint(1) NOT NULL,
  `cancelado` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `Venta`
--

INSERT INTO `Venta` (`id`, `tipo`, `folio`, `fecha`, `fechavencimiento`, `fechaultimocobro`, `hora`, `descuentoglobal`, `cliente`, `cuentabancaria`, `formapago`, `condicionpago`, `vendedor`, `observacionesgenerales`, `nopedido`, `fechaembarque`, `direccionembarque`, `observacionesembarque`, `subtotal`, `iva`, `total`, `totalcobrado`, `estatus`, `cancelado`, `created_at`, `updated_at`) VALUES
(1, 'Nota', 1, '1982-03-22', '1999-06-21', '1990-06-11', '10:55:43', 5.08, 11, '82', 1, 1, 1, 'Quo eveniet ipsum et delectus. Ut est ipsam inventore eos laboriosam. Qui et commodi quaerat enim. Et id dolorum vel alias sed ut aliquam.', 7, '1988-12-05', '729 Mosciski Parkways\nEast Haydenmouth, IA 00068', '', 0.00, 1000000.00, 259227.62, 1000000.00, 1, 0, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(2, 'Factura-e', 2, '1989-05-18', '1977-02-20', '1983-08-16', '09:55:50', 0.00, 17, '0', 3, 1, 1, 'Et illum sed nihil atque vero deleniti tempore unde. Voluptas nesciunt sint sint magni perferendis nihil. Ut maxime ipsa sunt est. Vel explicabo minus ipsam eos accusantium illum.', 8, '1977-07-25', '3180 Marquardt Prairie Apt. 980\nMadisynbury, GA 28638', '', 460.89, 1000000.00, 15.25, 1000000.00, 0, 1, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(3, 'Factura', 3, '1979-05-17', '1970-09-02', '1986-12-02', '15:26:22', 0.63, 3, '886', 3, 1, 2, 'Vitae et in minus consequatur aut. Ut recusandae ut fuga illo est qui. Sint doloremque eum aut eveniet laborum alias.', 4, '2012-12-31', '1118 Kozey Courts Apt. 928\nAdelineland, DC 71818', '', 1000000.00, 1000000.00, 354633.06, 0.00, 1, 1, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(4, 'Factura-e', 4, '2012-05-06', '2001-01-26', '1990-01-08', '06:43:58', 1102.39, 12, '3', 3, 5, 3, 'Totam magnam repellendus voluptas et odio autem. Repellat maxime fuga earum reprehenderit error ab quia. Accusamus quaerat occaecati tenetur dolorem.', 5, '2001-06-06', '7054 Amanda Summit\nLake Donnaborough, AP 08578-2879', '', 1000000.00, 0.00, 47356.86, 2.00, 1, 0, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(5, 'Factura', 5, '1996-07-17', '2002-03-10', '2011-01-14', '22:17:07', 1000000.00, 20, '322004', 2, 1, 1, 'Est voluptatibus quo modi rerum. Odit autem impedit minus qui. Perferendis quia iste voluptas consequuntur vel eveniet ut. Aut at ducimus totam ut dolorem minus praesentium.', 1, '2003-12-31', '857 Gislason Shoal Apt. 234\nSouth Javon, FM 73963-2186', '', 13.37, 238.55, 1000000.00, 87832.13, 1, 0, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(6, 'Factura', 6, '1977-10-14', '1992-11-15', '1979-10-29', '19:54:07', 1000000.00, 13, '1', 1, 4, 1, 'Voluptas et nesciunt sunt ipsum non placeat numquam. Autem laudantium qui dolore. Et tenetur itaque veritatis distinctio dolor nam ullam provident.', 1, '2009-12-21', '93815 McClure Prairie Apt. 221\nPort Jamaal, DC 89659-4552', '', 28.69, 183682.61, 1000000.00, 51.20, 0, 1, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(7, 'Factura', 7, '1992-11-01', '2006-02-13', '1994-12-01', '13:17:49', 1521.55, 14, '0', 1, 1, 3, 'Est voluptatibus est ut est molestiae voluptatibus aut. Mollitia esse sint aut non quis molestias eum. Sapiente natus assumenda omnis veniam. Non cupiditate est ratione quo voluptatem vero dolor.', 5, '2009-03-30', '6844 Haley Lane Suite 573\nMiaburgh, DE 64173', '', 1000000.00, 0.00, 0.00, 4.64, 0, 0, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(8, 'Factura', 8, '1970-10-25', '1986-05-17', '1982-12-18', '17:22:32', 247877.41, 20, '9643110', 3, 4, 2, 'Quia ea voluptatem vero veniam veniam. Voluptatem corporis dignissimos minus doloremque. Facere iste et fugit sunt eos.', 8, '2014-05-01', '57299 Weimann Rest Suite 529\nEast Kellie, MT 08510', '', 685.84, 0.00, 1000000.00, 1000000.00, 0, 0, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(9, 'Nota', 9, '1978-08-16', '1990-03-22', '1973-07-03', '13:57:13', 1000000.00, 8, '9', 3, 2, 1, 'Ipsum aut dolor aut odit quidem. Culpa sed labore tenetur quis eaque aliquid amet. Consequuntur accusantium magni ut quae nobis rem.', 6, '2010-11-12', '3695 Greenholt Light\nEast Sabrinaview, NH 86479', '', 79015.11, 0.00, 4527.05, 237564.88, 0, 0, '2014-09-11 20:21:46', '2014-09-11 20:21:46'),
(10, 'Factura-e', 10, '1982-12-07', '1981-05-28', '2012-02-10', '08:13:36', 1000000.00, 17, '14514', 2, 3, 1, 'Reprehenderit aut autem est eum aliquam eaque accusamus. Accusantium dolore dignissimos ipsa voluptate. Quia minus hic eos maiores. Qui quaerat molestiae consequatur sunt magni.', 6, '1986-06-17', '89847 Bayer Junctions\nFritschfort, KY 05192', '', 0.00, 61019.09, 340.74, 237.40, 0, 0, '2014-09-11 20:21:46', '2014-09-11 20:21:46');

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
 ADD PRIMARY KEY (`id`), ADD KEY `venta_cliente_foreign` (`cliente`), ADD KEY `venta_formapago_foreign` (`formapago`), ADD KEY `venta_condicionpago_foreign` (`condicionpago`), ADD KEY `venta_vendedor_foreign` (`vendedor`);

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
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `Producto`
--
ALTER TABLE `Producto`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `RubrosGasto`
--
ALTER TABLE `RubrosGasto`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
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
ADD CONSTRAINT `venta_condicionpago_foreign` FOREIGN KEY (`condicionpago`) REFERENCES `CondicionPago` (`id`),
ADD CONSTRAINT `venta_formapago_foreign` FOREIGN KEY (`formapago`) REFERENCES `FormasPago` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
