-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-12-2021 a las 22:34:38
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tiendaoblekas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(10) NOT NULL,
  `nombre_categoria` varchar(200) NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre_categoria`, `descripcion`) VALUES
(1, 'Muñecas', 'Mirá nuestra amplia variedad de muñecas con sus diferentes looks y vestidos'),
(2, 'Animales', 'No te pierdas todos los animales que tenemos para ofrecerte'),
(3, 'Personajes', 'Encontra acá a todos tus personajes favoritos'),
(4, 'Plantas', 'Mirá todas las plantas y flores que tenemos para decorar tu casa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(10) NOT NULL,
  `producto` varchar(200) NOT NULL,
  `categoria` varchar(200) NOT NULL,
  `imagen` varchar(200) NOT NULL,
  `descripcion` text NOT NULL,
  `precio` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `producto`, `categoria`, `imagen`, `descripcion`, `precio`) VALUES
(1, 'Muñeca Paulina', 'Muñecas', '/img/main/producto1.jpg', 'Muñeca de tela con vestido rosa y floreado, pintada a mano, de 50cm de alto', 2000),
(2, 'Pato PocoYo', 'Personajes', '/img/main/producto2.jpg', 'Pato PocoYo, hecho con tela de polar, de 60 cm de alto', 1800),
(3, 'Muñeca Celeste', 'Muñecas', '/img/main/producto3.jpg', 'Muñeca de tela con vestido floreado azul, pintada a mano, de 40 cm de alto', 1500),
(4, 'Muñeco Oso Cariñoso', 'Animales', '/img/main/producto4.jpg', 'Muñeco Oso Cariñoso en color rosa o azul, de 30 cm de alto', 1200),
(5, 'Muñeca Luna', 'Muñecas', '/img/main/producto5.jpg', 'Muñeca de tela con vestido con lunares celeste o violeta, de 30 cm de alto', 1200),
(6, 'Maceta Cactus', 'Plantas', '/img/main/producto6.jpg', 'Cactus de tela en maceta, varios colores disponibles, de 50 cm de alto', 1500),
(7, 'Muñeca Ruly', 'Muñecas', '/img/main/producto7.jpg', 'Muñeca de tela con vestido floreado, pintada a mano, de 30 cm de alto', 1000),
(8, 'Muñeca Globo Aerostatico', 'Muñecas', '/img/main/producto8.jpg', 'Muñeca de tela colgante en globo aerostatico, pintada a mano, de 30 cm de alto', 1000);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
