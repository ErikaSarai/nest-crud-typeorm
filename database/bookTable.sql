-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 18-07-2020 a las 17:11:20
-- Versión del servidor: 10.1.44-MariaDB-0ubuntu0.18.04.1
-- Versión de PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `book`
--
CREATE DATABASE IF NOT EXISTS `bookTable` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `bookTable`;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bookTable`
--

CREATE TABLE `bookTable` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `author` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `bookTable`
--

INSERT INTO `bookTable` (`id`, `title`, `author`, `description`) VALUES
(1, 'Sol Naciente', 'Garcia Marquez', 'Hola Mundo'),
(2, 'Vida Lunar', 'Sarai', 'Hola funciona el put');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bookTable`
--
ALTER TABLE `bookTable`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bookTable`
--
ALTER TABLE `bookTable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
