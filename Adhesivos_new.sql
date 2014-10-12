-- phpMyAdmin SQL Dump
-- version 4.2.7
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 15-09-2014 a las 19:33:04
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=24 ;

--
-- Volcado de datos para la tabla `ClientesProovedores`
--

INSERT INTO `ClientesProovedores` (`id`, `rfc`, `razonsocial`, `calle`, `noexterior`, `nointerior`, `colonia`, `delegacionmunicipio`, `ciudad`, `estado`, `cp`, `referenciasubicacion`, `contacto`, `tipo`, `created_at`, `updated_at`) VALUES
(1, 'Et consequatur.', 'Quam illo eum.', 'D''angelo Street', 1, 1, 'mouth', 'Papua New Guinea', 'Yvonnehaven', 'Vermont', 77341, 'Qui soluta quaerat.', 1, 'Proveedor', '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(2, 'Quia.', 'Qui repudiandae.', 'Jaiden Crest', 0, 2, 'view', 'Croatia', 'Port Leannamouth', 'WestVirginia', 60878, 'Ducimus mollitia.', 2, 'Cliente', '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(3, 'Aut eius quam.', 'Et nihil illum.', 'Labadie Locks', 4, 4, 'haven', 'Fiji', 'Johnsonstad', 'Alabama', 70426, 'Ea doloremque dicta.', 3, 'Cliente', '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(4, 'Doloribus.', 'Sunt temporibus.', 'Ilene Knolls', 1, 0, 'town', 'Dominica', 'Odessaborough', 'Indiana', 94037, 'Doloremque qui.', 4, 'Proveedor', '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(5, 'Et in.', 'At dolorum est.', 'Jaren Trafficway', 1, 1, 'stad', 'Comoros', 'Websterside', 'Colorado', 10848, 'Ut quibusdam et.', 5, 'Cliente', '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(6, 'Qui beatae unde.', 'Aut id quis.', 'Adrien Stravenue', 1, 1, 'mouth', 'Belarus', 'Diegoside', 'Hawaii', 37033, 'Itaque quo ab.', 6, 'Proveedor', '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(7, 'Consequatur.', 'Neque.', 'Gutmann Camp', 3, 7, 'chester', 'Angola', 'East Dedrickburgh', 'Wyoming', 36942, 'Facilis aliquid.', 7, 'Proveedor', '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(8, 'Modi vero in.', 'Rerum in.', 'Ryder Brooks', 1, 0, 'haven', 'Bangladesh', 'East Velma', 'Maine', 87520, 'Culpa laboriosam.', 8, 'Proveedor', '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(9, 'Temporibus.', 'Ea impedit.', 'General Port', 6, 6, 'view', 'Svalbard & Jan Mayen Islands', 'Wolffburgh', 'Alabama', 89341, 'Quisquam illum.', 9, 'Cliente', '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(10, 'Molestias ipsum.', 'Perspiciatis.', 'Alfonzo Village', 1, 9, 'bury', 'Yemen', 'South Antonioville', 'Michigan', 67065, 'Eum quasi officiis.', 10, 'Proveedor', '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(11, 'Excepturi.', 'Et pariatur.', 'Yost Ville', 7, 0, 'chester', 'France', 'New Daren', 'Michigan', 29314, 'At quo repellendus.', 11, 'Proveedor', '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(12, 'Velit a.', 'Accusantium.', 'Rolfson Tunnel', 5, 6, 'borough', 'Lebanon', 'O''Keefechester', 'Indiana', 28768, 'Tenetur enim.', 12, 'Proveedor', '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(13, 'Voluptatum nemo.', 'Voluptatem.', 'Schimmel Dam', 9, 4, 'borough', 'Iceland', 'Adamsbury', 'Alabama', 55755, 'Omnis provident.', 13, 'Proveedor', '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(14, 'Ullam.', 'Officia vel.', 'Domingo Mission', 7, 5, 'berg', 'Macedonia', 'Port Kellychester', 'Hawaii', 57057, 'Ut est expedita qui.', 14, 'Proveedor', '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(15, 'Aliquam quis.', 'Tenetur eaque.', 'Jaclyn Gardens', 0, 0, 'shire', 'Vanuatu', 'Port Calebbury', 'Alabama', 75867, 'Est commodi id sed.', 15, 'Proveedor', '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(16, 'Nesciunt itaque.', 'Officiis maxime.', 'Maurice Shores', 7, 6, 'burgh', 'Lao People''s Democratic Republic', 'VonRuedenville', 'Ohio', 64685, 'Iste sit dolorum.', 16, 'Cliente', '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(17, 'Esse est.', 'Adipisci.', 'Leonora Inlet', 6, 7, 'mouth', 'Syrian Arab Republic', 'East Jarrodhaven', 'Connecticut', 33496, 'Voluptatem sunt.', 17, 'Proveedor', '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(18, 'Aliquid sint.', 'Exercitationem.', 'Kautzer Camp', 5, 5, 'ton', 'Samoa', 'Joshuahburgh', 'NewHampshire', 89404, 'Cumque sunt nostrum.', 18, 'Cliente', '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(19, 'Omnis aliquam.', 'Iusto in quia.', 'Rohan Glens', 3, 0, 'borough', 'Tunisia', 'North Mercedes', 'Oklahoma', 14012, 'Similique.', 19, 'Cliente', '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(20, 'Autem pariatur.', 'Beatae.', 'Okuneva Freeway', 7, 2, 'side', 'Uruguay', 'East Margarete', 'Vermont', 84452, 'Id doloremque aut.', 20, 'Cliente', '2014-09-15 02:05:28', '2014-09-15 02:05:28');

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
(1, 'Factura-e', 2, '1978-10-06', '22:38:53', 2.00, 1, 4, 9, 8, 9, 'Ea consequatur.', 1, 185.00, 1000000.00, 976947.00, 0, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(2, 'Factura', 3, '1998-05-02', '14:34:54', 7.00, 2, 2, 19, 16, 7, 'Ex excepturi autem.', 2, 523.00, 1000000.00, 1000000.00, 0, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(3, 'Nota', 0, '1977-06-08', '00:02:27', 9.00, 2, 3, 5, 3, 5, 'Aut doloribus.', 3, 255614.00, 323375.00, 1000000.00, 1, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(4, 'Nota', 4, '1979-01-19', '17:27:13', 8.00, 1, 3, 1, 5, 0, 'Iure debitis.', 4, 1000000.00, 4982.00, 1000000.00, 1, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(5, 'Nota', 4, '2006-04-30', '05:03:39', 3.00, 3, 4, 16, 5, 7, 'Maxime iste ad.', 5, 162.00, 1528.00, 8408.00, 0, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(6, 'Factura', 6, '1977-03-24', '03:20:23', 2.00, 2, 3, 9, 5, 6, 'Distinctio.', 6, 6526.00, 4.00, 1000000.00, 1, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(7, 'Nota', 9, '2009-02-19', '00:58:12', 8.00, 3, 4, 5, 8, 1, 'Hic voluptas iste.', 7, 32.00, 0.00, 3.00, 0, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(8, 'Factura-e', 0, '1979-02-21', '02:28:48', 0.00, 1, 2, 3, 18, 6, 'Ut rerum recusandae.', 8, 0.00, 0.00, 593.00, 1, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(9, 'Factura', 9, '2001-05-03', '03:45:41', 5.00, 2, 5, 18, 10, 1, 'Dicta dolorem alias.', 9, 173.00, 286.00, 3.00, 1, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(10, 'Nota', 9, '1985-01-07', '23:41:44', 3.00, 2, 4, 10, 18, 5, 'Cumque earum.', 10, 31424.00, 1000000.00, 229911.00, 0, '2014-09-15 02:05:28', '2014-09-15 02:05:28');

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
(1, 5, 3, 4, 8, 'Et ad doloribus ut.', 873076.00, 14732.00, 0.00, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(2, 1, 3, 1, 6, 'Cumque aspernatur.', 3.00, 0.00, 9.00, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(3, 6, 2, 7, 0, 'Quia suscipit non.', 6703.00, 45594.00, 864017.00, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(4, 7, 6, 4, 4, 'Eligendi et ratione.', 25.00, 4.00, 1000000.00, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(5, 1, 2, 3, 9, 'Facilis minus optio.', 1000000.00, 1000000.00, 29211.00, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(6, 7, 1, 6, 9, 'Aperiam neque.', 0.00, 407.00, 64.00, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(7, 8, 0, 5, 1, 'Omnis voluptas qui.', 1000000.00, 1000000.00, 52.00, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(8, 10, 3, 5, 8, 'Delectus impedit.', 0.00, 454713.00, 296590.00, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(9, 2, 8, 7, 6, 'Quaerat et a.', 0.00, 1000000.00, 82.00, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(10, 5, 4, 9, 4, 'Quis earum omnis.', 5.00, 44461.00, 34.00, '2014-09-15 02:05:28', '2014-09-15 02:05:28');

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
(1, 'crédito 10 días', 10, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(2, 'crédito 15 días', 15, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(3, 'crédito 20 días', 20, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(4, 'crédito 30 días', 30, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(5, 'crédito 40 días', 40, '2014-09-15 02:05:28', '2014-09-15 02:05:28');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=28 ;

--
-- Volcado de datos para la tabla `DatosContacto`
--

INSERT INTO `DatosContacto` (`id`, `nombre`, `apppaterno`, `appmaterno`, `genero`, `email`, `telefonos`, `created_at`, `updated_at`) VALUES
(1, 'Samanta', 'Leannon', 'Nolan', 'masculino', 'heidi.morar@gmail.com', 1, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(2, 'Nyah', 'Hartmann', 'Schiller', 'masculino', 'rdicki@stehr.info', 2, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(3, 'Madonna', 'Huel', 'Barton', 'femenino', 'amclaughlin@von.com', 3, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(4, 'Hellen', 'Padberg', 'Heidenreich', 'masculino', 'fhills@ernserlebsack.net', 4, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(5, 'Laverne', 'O''Kon', 'Sipes', 'masculino', 'cdach@hotmail.com', 5, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(6, 'Chyna', 'Mohr', 'Gusikowski', 'masculino', 'judy.walsh@turcotte.net', 6, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(7, 'Barney', 'Kutch', 'Kub', 'masculino', 'xwiza@gmail.com', 7, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(8, 'Karolann', 'Ryan', 'Hackett', 'masculino', 'fblock@gmail.com', 8, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(9, 'Lina', 'Heaney', 'Wisoky', 'femenino', 'edythe54@hintz.net', 9, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(10, 'Amari', 'Stroman', 'Smith', 'femenino', 'dimitri.hirthe@gmail.com', 10, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(11, 'Tiana', 'Cassin', 'Cummings', 'femenino', 'janet.cummings@lednerhamill.info', 11, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(12, 'Kacie', 'Willms', 'Halvorson', 'masculino', 'volkman.urban@hotmail.com', 12, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(13, 'Danika', 'Welch', 'Douglas', 'femenino', 'mkeebler@gmail.com', 13, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(14, 'Ryley', 'Prohaska', 'Howell', 'femenino', 'hector54@zieme.com', 14, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(15, 'Orlando', 'Jones', 'Schaefer', 'masculino', 'so''kon@gmail.com', 15, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(16, 'Dorian', 'Boehm', 'Kirlin', 'masculino', 'towne.zane@kuhickessler.info', 16, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(17, 'Stacey', 'Wilkinson', 'Mayer', 'masculino', 'kathryn31@gmail.com', 17, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(18, 'Delphia', 'Lindgren', 'Yundt', 'masculino', 'doyle.rhoda@oconner.com', 18, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(19, 'Nellie', 'Koepp', 'Monahan', 'femenino', 'roslyn58@yahoo.com', 19, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(20, 'Destini', 'Boehm', 'Windler', 'femenino', 'jordane15@russeldaugherty.com', 20, '2014-09-15 02:05:28', '2014-09-15 02:05:28');

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
(1, 'Cheque', '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(2, 'Efectivo', '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(3, 'Dolares', '2014-09-15 02:05:28', '2014-09-15 02:05:28');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `PrecioEnvase`
--

INSERT INTO `PrecioEnvase` (`id`, `presentacion`, `fecha`, `divisa`, `preciocompra`, `precioventa`, `created_at`, `updated_at`) VALUES
(1, 1, '2014-09-14', 'dlls', 102.00, 200.00, '2014-09-15 09:37:18', '2014-09-15 09:38:48');

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
(1, 4, '2014-09-14', 'dlls', 23.00, 33.00, '2014-09-15 09:10:29', '2014-09-15 09:15:26');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `Presentacion`
--

INSERT INTO `Presentacion` (`id`, `nombre`, `precio`, `created_at`, `updated_at`) VALUES
(1, 'costal', 200.00, '2014-09-15 02:05:25', '2014-09-15 02:05:25'),
(2, 'caja', 300.00, '2014-09-15 02:05:25', '2014-09-15 02:05:25'),
(3, 'tambor', 500.00, '2014-09-15 02:05:25', '2014-09-15 02:05:25'),
(4, 'Bote metálico', 0.00, '2014-09-15 03:45:51', '2014-09-15 03:45:51');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Volcado de datos para la tabla `Producto`
--

INSERT INTO `Producto` (`id`, `nombre`, `clave`, `descripcion`, `medida`, `presentacion`, `created_at`, `updated_at`) VALUES
(1, 'Clovis Konopelski', 'Ad.', 'Qui blanditiis nobis in vero in. In placeat sed iste et. Excepturi odio qui dolor voluptates.', 'Volumen', 1, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(2, 'Jailyn Orn MD', 'Et.', 'Accusamus id aut libero voluptatem sit odio. Rerum sit quidem vitae et veritatis. Quae corrupti praesentium quia rerum excepturi.', 'Peso', 1, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(3, 'Cecelia Davis', 'Non.', 'Eveniet debitis nesciunt similique. Est earum fuga impedit recusandae eveniet non. Accusantium aut at facilis nostrum soluta nostrum commodi.', 'Volumen', 1, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(4, 'Kiara Roberts', 'Et.', 'Provident nobis facere libero blanditiis velit. Eos repellat sit possimus temporibus est aliquam pariatur. Vitae laudantium dicta doloribus quo.', 'Volumen', 1, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(5, 'Ms. Rosalind Klocko', 'Et.', 'Et soluta praesentium iure corrupti autem provident. Deleniti dicta velit non optio doloremque ut. Consequuntur fuga officiis repellat soluta.', 'Pieza', 3, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(6, 'Miss Rigoberto Hudson IV', 'Quia.', 'Soluta id et mollitia quaerat aliquid. Reiciendis officia consequatur voluptatibus cum eos itaque dolorem. Ab aliquid nesciunt porro molestiae. Et quas nihil qui rerum quos.', 'Peso', 3, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(7, 'Jena Renner', 'Aut.', 'Ipsam dignissimos qui voluptate non. Eaque aperiam nesciunt excepturi mollitia incidunt autem cumque. Doloribus dolore similique accusamus et dolores. Ut eligendi id exercitationem voluptas et.', 'Volumen', 3, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(8, 'Litzy Powlowski', 'Sit.', 'Quia non animi repellat labore. Occaecati reiciendis dolores suscipit ut velit ea odit quisquam. Accusamus aut fugit est. Eos modi sint dolorem velit officiis vel quo.', 'Peso', 3, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(9, 'Anne Jakubowski', 'Qui.', 'Et optio officiis possimus sed aliquam. Blanditiis totam dolores quasi. Id deserunt autem est eum.', 'Pieza', 3, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(10, 'Velma O''Hara', 'Sunt.', 'Vel dolorum molestiae cum placeat voluptas voluptas qui. Mollitia consequatur voluptas soluta aspernatur porro. Similique occaecati sed quo.', 'Peso', 1, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(11, 'labanda', '23labanda', 'adhesivo con olor a labanda', 'Volumen', 2, '2014-09-15 08:20:30', '2014-09-15 08:20:30');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=36 ;

--
-- Volcado de datos para la tabla `Telefonos`
--

INSERT INTO `Telefonos` (`id`, `telefono`, `celular`, `nextel`, `created_at`, `updated_at`) VALUES
(1, 7, 2, 7, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(2, 2, 4, 8, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(3, 2, 6, 2, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(4, 6, 5, 2, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(5, 2, 3, 3, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(6, 9, 0, 1, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(7, 1, 1, 5, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(8, 7, 9, 4, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(9, 7, 1, 6, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(10, 1, 7, 4, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(11, 7, 3, 1, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(12, 4, 1, 0, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(13, 4, 4, 6, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(14, 5, 3, 5, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(15, 2, 7, 6, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(16, 9, 4, 5, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(17, 1, 0, 9, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(18, 9, 9, 3, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(19, 4, 5, 3, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(20, 2, 8, 8, '2014-09-15 02:05:28', '2014-09-15 02:05:28');

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
(1, 'Erica Buckridge', '46376 Johnson Knoll Suite 364', 3, 3, 'land', 'Greece', 'East Wilfredport', 'Alabama', 98277, 'Facere facilis enim.', 84870, 'user', 'Marge', '$2y$10$SOZG9Mxhf5pebcfZEKtix.hLfSl7TysLZp3tPI6a/BQ8T2H7MOvuO', NULL, '2014-09-15 02:05:25', '2014-09-15 02:05:25'),
(2, 'Thalia Jast I', '1323 Jerde Fork', 7, 2, 'mouth', 'Seychelles', 'Sporerborough', 'Massachusetts', 49024, 'Est corrupti eos.', 0, 'user', 'Susanna', '$2y$10$KD4/fi2hHIc9Sw9/DYysheJWL/57znQbIHwHEMiJwyF/JfgHE/k8m', NULL, '2014-09-15 02:05:26', '2014-09-15 02:05:26'),
(3, 'Torrey Waelchi', '2256 Wisoky Overpass', 2, 7, 'furt', 'Faroe Islands', 'Ritaview', 'Arizona', 9456, 'Quia earum quia.', 32, 'user', 'Rubie', '$2y$10$P3coTrEkhC1ddO/s2hbbOuap7Bgu65mwtDZN8EKBdoGwvwVd/Bf0W', NULL, '2014-09-15 02:05:26', '2014-09-15 02:05:26'),
(4, 'Hipolito Jast', '639 Imelda Parkways Suite 969', 0, 7, 'burgh', 'Gabon', 'New Leifport', 'Missouri', 18844, 'Quas eius explicabo.', 4, 'admin', 'Sammy', '$2y$10$eWW76r6QXy6/9ane6xRFvugqHg6UTt9VarJK1Nzn8D2KHLZwJVYju', NULL, '2014-09-15 02:05:26', '2014-09-15 02:05:26'),
(5, 'Armand Gulgowski MD', '12074 Sean Centers Apt. 865', 9, 7, 'side', 'Uganda', 'Glendaborough', 'Idaho', 17549, 'Magni et aperiam.', 0, 'user', 'Derrick', '$2y$10$cSx5tt1OLfDSV31WWPR.vupZrFj9sg4gYbyumwOef2.27IstgBT8y', NULL, '2014-09-15 02:05:27', '2014-09-15 02:05:27'),
(6, 'Mr. Paige Dickinson Jr.', '58418 Roob Stream', 7, 7, 'land', 'Philippines', 'Lake Jacquelynborough', 'Kentucky', 25105, 'Doloremque laborum.', 0, 'admin', 'Imogene', '$2y$10$zDAoXM7trpHN.V3YIMFWp./q5xdMIAZUZA2H5s1/YvS8fcweWM8xq', NULL, '2014-09-15 02:05:27', '2014-09-15 02:05:27'),
(7, 'Napoleon Greenholt IV', '936 Neal Inlet', 8, 5, 'town', 'Panama', 'Padbergview', 'Connecticut', 89145, 'Voluptas.', 914, 'admin', 'Maribel', '$2y$10$oQeS7cDyJMXkKoX7v0wK9usOI9YrSpIZDnxkcMNz24xlUMNq6PR5y', NULL, '2014-09-15 02:05:27', '2014-09-15 02:05:27'),
(8, 'Mr. Wiley Turner V', '93644 Mabel Park Apt. 516', 3, 0, 'haven', 'Mali', 'Danaland', 'Wyoming', 96683, 'Sapiente in quia.', 85, 'user', 'Derrick', '$2y$10$8ZwZ8zdQRmZLMfIwVWcgkuVXlnDtDLT/T9LBK5Uu9z/qnZR9UTSs2', NULL, '2014-09-15 02:05:27', '2014-09-15 02:05:27'),
(9, 'Kody Littel', '223 Manley Track', 6, 3, 'chester', 'Falkland Islands (Malvinas)', 'South Alyssonport', 'Illinois', 50875, 'Expedita ipsa eum.', 0, 'admin', 'Cicero', '$2y$10$BLEnO4m6hkXFF/gqI4sBmesxtEF2vXVd3aNRWMvKpD0YaifUSiGmG', NULL, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(10, 'Tiana Keebler', '02039 Loyce Run Suite 559', 7, 8, 'borough', 'Mozambique', 'Josianestad', 'Wyoming', 925, 'Facilis deleniti.', 317, 'user', 'Benton', '$2y$10$94UdzhB8I2A8B2VD39sCW.DEw97qKV9FOMaWh2oo1cQE5f35AKUMu', NULL, '2014-09-15 02:05:28', '2014-09-15 02:05:28');

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

INSERT INTO `Venta` (`id`, `tipo`, `folio`, `fecha`, `fecha_vencimiento`, `fecha_ultimo_cobro`, `hora`, `descuento_global`, `cliente`, `cuenta_bancaria`, `forma_pago`, `condicion_pago`, `vendedor`, `observaciones_generales`, `concepto`, `fecha_embarque`, `direccion_embarque`, `observaciones_embarque`, `subtotal`, `iva`, `total`, `total_cobrado`, `estatus`, `cancelado`, `created_at`, `updated_at`) VALUES
(1, 'Factura', 1, '2011-11-26', '1978-03-07', '1971-11-04', '08:37:30', 723840.00, 9, '56', 1, 5, 1, 'Quae minima doloremque velit quos molestias. Libero voluptatem inventore rerum pariatur pariatur quidem. Est officia et non est dolores numquam.', 3, '1979-03-21', '9485 Virgil Rapid\nPort Tyree, GA 95745-4206', '', 1000000.00, 1000000.00, 0.00, 3298.83, 1, 1, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(2, 'Nota', 2, '2007-11-09', '1998-01-16', '1992-08-05', '20:00:29', 1000000.00, 10, '987991', 3, 4, 1, 'Saepe sit accusantium quod dolores. Alias explicabo excepturi et quas. Commodi et rerum nisi voluptatem voluptas.', 3, '1984-11-02', '52933 Wilkinson Village\nNorth Emmaleeborough, AK 70282', '', 1000000.00, 353.89, 105.00, 0.00, 0, 0, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(3, 'Factura-e', 3, '2006-05-23', '2005-10-29', '1972-12-23', '19:44:34', 1000000.00, 3, '4904', 2, 5, 3, 'Minima sit quod et quos ipsam aliquid. Vel quia aliquam sapiente ea autem aut rem. Ut totam optio quibusdam qui. Repellat modi quod et commodi numquam.', 5, '1990-07-08', '21931 Edwardo Isle Suite 008\nHilbertfort, OR 84354-3041', '', 1671.95, 0.00, 1000000.00, 1000000.00, 1, 1, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(4, 'Nota', 4, '1985-10-20', '1970-12-18', '2013-05-13', '06:07:39', 0.00, 1, '290793822', 2, 2, 2, 'Autem laborum ut eum consequatur. Nam nemo quisquam excepturi facere quam ut quisquam.', 5, '2006-12-07', '2574 Spinka Via\nRhodaborough, AR 68305', '', 47.72, 292.07, 5.72, 0.00, 1, 1, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(5, 'Factura-e', 5, '2004-07-23', '1976-11-25', '1990-04-15', '03:34:32', 1000000.00, 18, '332383', 3, 5, 2, 'Nihil maxime ducimus suscipit aspernatur et tempora repellendus. Quam vel est repellendus commodi commodi ut. Ut id officiis quo modi.', 5, '2000-09-08', '64166 Erich Causeway Suite 728\nLangoshport, LA 14227-9536', '', 0.60, 70609.28, 339495.50, 4667.00, 1, 1, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(6, 'Factura', 6, '1975-06-08', '1983-12-04', '2003-07-08', '11:36:29', 561.69, 17, '673557378', 2, 5, 1, 'Et illo excepturi laudantium quos. Expedita qui doloribus facere provident fugiat. Quasi cumque repudiandae nulla sint quia. Vel repudiandae quia velit earum ut fugiat.', 4, '1976-08-19', '50453 Rosalinda Port\nEast Vernerhaven, CA 13112-2778', '', 0.00, 324.78, 576973.00, 1.09, 0, 1, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(7, 'Factura-e', 7, '2010-06-13', '2011-03-26', '1980-04-05', '12:50:12', 0.00, 6, '2512785', 3, 5, 3, 'Quia itaque officiis neque laborum molestias. At voluptatem recusandae ipsam sit quo. Velit nulla provident iste voluptatem consequatur.', 1, '1978-11-10', '6606 Altenwerth Dam\nPadbergshire, SC 67963-0400', '', 27810.91, 233371.92, 340.34, 73.88, 1, 1, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(8, 'Factura', 8, '1972-09-16', '2010-08-20', '1979-03-15', '20:05:37', 1000000.00, 8, '208111', 2, 2, 1, 'Et vitae ut omnis maxime placeat mollitia. Adipisci ex hic mollitia dicta et cum quibusdam. Dolorem temporibus est fugiat nulla. Vel et expedita laboriosam occaecati.', 4, '1972-04-24', '12903 Kane Meadow Suite 968\nDamonport, AZ 99125-4003', '', 1000000.00, 196563.80, 0.24, 258348.00, 1, 1, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(9, 'Factura', 9, '1978-01-12', '1992-03-14', '1983-05-21', '19:48:15', 69.00, 10, '925653', 3, 4, 2, 'Et est dolore dolores voluptates et. Molestiae et consequatur consequatur saepe aut. Pariatur modi natus natus voluptatum.', 3, '2001-03-27', '06015 Shany Spurs Apt. 171\nSouth Caylatown, PR 26902-9534', '', 8.12, 19468.49, 534.30, 16424.28, 0, 0, '2014-09-15 02:05:28', '2014-09-15 02:05:28'),
(10, 'Nota', 10, '1988-08-14', '1974-06-13', '1983-12-05', '03:34:08', 6.78, 4, '44', 1, 2, 3, 'Natus ratione dolorem quia a eligendi sit est. Tempore excepturi quo numquam. Molestiae quis labore eum aut.', 1, '1975-06-10', '692 Luettgen Centers Suite 320\nWest Orionberg, AP 28239-8610', '', 107.00, 0.00, 1000000.00, 6009.58, 0, 0, '2014-09-15 02:05:28', '2014-09-15 02:05:28');

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
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
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
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
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
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `RubrosGasto`
--
ALTER TABLE `RubrosGasto`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `Telefonos`
--
ALTER TABLE `Telefonos`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
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
ADD CONSTRAINT `venta_concepto_foreign` FOREIGN KEY (`concepto`) REFERENCES `Concepto` (`id`),
ADD CONSTRAINT `venta_condicion_pago_foreign` FOREIGN KEY (`condicion_pago`) REFERENCES `CondicionPago` (`id`),
ADD CONSTRAINT `venta_forma_pago_foreign` FOREIGN KEY (`forma_pago`) REFERENCES `FormasPago` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
