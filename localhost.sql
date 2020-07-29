-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 29, 2020 at 07:23 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bsaswebcamp`
--
CREATE DATABASE IF NOT EXISTS `bsaswebcamp` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `bsaswebcamp`;

-- --------------------------------------------------------

--
-- Table structure for table `categoria_evento`
--

CREATE TABLE `categoria_evento` (
  `id_categoria` tinyint(10) NOT NULL,
  `cat_evento` varchar(50) NOT NULL,
  `icono` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categoria_evento`
--

INSERT INTO `categoria_evento` (`id_categoria`, `cat_evento`, `icono`) VALUES
(1, 'Seminario', 'fa-university'),
(2, 'Conferencias', 'fa-comment'),
(3, 'Talleres', 'fa-code');

-- --------------------------------------------------------

--
-- Table structure for table `eventos`
--

CREATE TABLE `eventos` (
  `evento_id` tinyint(10) NOT NULL,
  `nombre_evento` varchar(60) NOT NULL,
  `fecha_evento` date NOT NULL,
  `hora_evento` time NOT NULL,
  `id_cat_evento` tinyint(10) NOT NULL,
  `id_inv` tinyint(4) NOT NULL,
  `clave` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eventos`
--

INSERT INTO `eventos` (`evento_id`, `nombre_evento`, `fecha_evento`, `hora_evento`, `id_cat_evento`, `id_inv`, `clave`) VALUES
(92, 'Responsive Web Design', '2020-12-11', '10:00:00', 3, 1, 'taller_01'),
(93, 'Flexbox', '2020-12-11', '12:00:00', 3, 2, 'taller_02'),
(94, 'HTML5 y CSS3', '2020-12-11', '14:00:00', 3, 3, 'taller_03'),
(95, 'Drupal', '2020-12-11', '17:00:00', 3, 4, 'taller_04'),
(96, 'WordPress', '2020-12-11', '19:00:00', 3, 5, 'taller_05'),
(97, 'Como ser freelancer', '2020-12-11', '10:00:00', 2, 6, 'conf_01'),
(98, 'Tecnologías del Futuro', '2020-12-11', '17:00:00', 2, 1, 'conf_02'),
(99, 'Seguridad en la Web', '2020-12-11', '19:00:00', 2, 2, 'conf_03'),
(100, 'Diseño UI y UX para móviles', '2020-12-11', '10:00:00', 1, 6, 'sem_01'),
(101, 'AngularJS', '2020-12-12', '10:00:00', 3, 1, 'taller_06'),
(102, 'PHP y MySQL', '2020-12-12', '12:00:00', 3, 2, 'taller_07'),
(103, 'JavaScript Avanzado', '2020-12-12', '14:00:00', 3, 3, 'taller_08'),
(104, 'SEO en Google', '2020-12-12', '17:00:00', 3, 4, 'taller_09'),
(105, 'De Photoshop a HTML5 y CSS3', '2020-12-12', '19:00:00', 3, 5, 'taller_10'),
(106, 'PHP Intermedio y Avanzado', '2020-12-12', '21:00:00', 3, 6, 'taller_11'),
(107, 'Como crear una tienda online a medida', '2020-12-12', '10:00:00', 2, 6, 'conf_04'),
(108, 'Los mejores lugares para encontrar trabajo', '2020-12-12', '17:00:00', 2, 1, 'conf_05'),
(109, 'Pasos para crear un negocio rentable ', '2020-12-12', '19:00:00', 2, 2, 'conf_06'),
(110, 'Aprende a Programar en una mañana', '2020-12-12', '10:00:00', 1, 3, 'sem_02'),
(111, 'Diseño UI y UX para móviles', '2020-12-12', '17:00:00', 1, 5, 'sem_03'),
(112, 'Laravel', '2020-12-13', '10:00:00', 3, 1, 'taller_12'),
(113, 'Crea tu propia API', '2020-12-13', '12:00:00', 3, 2, 'taller_13'),
(114, 'JavaScript y jQuery', '2020-12-13', '14:00:00', 3, 3, 'taller_14'),
(115, 'Creando Plantillas para WordPress', '2020-12-13', '17:00:00', 3, 4, 'taller_15'),
(116, 'Tiendas Virtuales en Magento', '2020-12-13', '19:00:00', 3, 5, 'taller_16'),
(117, 'Como hacer Marketing en línea', '2020-12-13', '10:00:00', 2, 6, 'conf_07'),
(118, '¿Con que lenguaje debo empezar?', '2020-12-13', '17:00:00', 2, 2, 'conf_08'),
(119, 'Frameworks y librerias Open Source', '2020-12-13', '19:00:00', 2, 3, 'conf_09'),
(120, 'Creando una App en Android ', '2020-12-13', '10:00:00', 1, 4, 'sem_04'),
(121, 'Creando una App en iOS en una tarde', '2020-12-13', '17:00:00', 1, 1, 'sem_05');

-- --------------------------------------------------------

--
-- Table structure for table `invitados`
--

CREATE TABLE `invitados` (
  `invitado_id` tinyint(4) NOT NULL,
  `nombre_invitado` varchar(30) NOT NULL,
  `apellido_invitado` varchar(30) NOT NULL,
  `descripcion` text NOT NULL,
  `url_imagen` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invitados`
--

INSERT INTO `invitados` (`invitado_id`, `nombre_invitado`, `apellido_invitado`, `descripcion`, `url_imagen`) VALUES
(1, 'Gonzalo', 'Anderson', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Nesciunt commodi assumenda, dicta cumque laborum odio. Saepe velit similique quae, enim laborum commodi illo vitae deserunt sint sapiente ab, ullam sequi,ipsum dolor sit amet.', 'invitado1.jpg'),
(2, 'Luciana', 'Silver', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Nesciunt commodi assumenda, dicta cumque laborum odio. Saepe velit similique quae, enim laborum commodi illo vitae deserunt sint sapiente ab, ullam sequi,ipsum dolor sit amet.', 'invitado2.jpg'),
(3, 'Federico', 'Rios', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Nesciunt commodi assumenda, dicta cumque laborum odio. Saepe velit similique quae, enim laborum commodi illo vitae deserunt sint sapiente ab, ullam sequi,ipsum dolor sit amet.', 'invitado3.jpg'),
(4, 'Florencia', 'Torres', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Nesciunt commodi assumenda, dicta cumque laborum odio. Saepe velit similique quae, enim laborum commodi illo vitae deserunt sint sapiente ab, ullam sequi,ipsum dolor sit amet.', 'invitado4.jpg'),
(5, 'Rodrigo', 'Sanchez', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Nesciunt commodi assumenda, dicta cumque laborum odio. Saepe velit similique quae, enim laborum commodi illo vitae deserunt sint sapiente ab, ullam sequi,ipsum dolor sit amet.', 'invitado5.jpg'),
(6, 'Gustavo', 'Jezior', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Nesciunt commodi assumenda, dicta cumque laborum odio. Saepe velit similique quae, enim laborum commodi illo vitae deserunt sint sapiente ab, ullam sequi,ipsum dolor sit amet.', 'Gus450x300.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categoria_evento`
--
ALTER TABLE `categoria_evento`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indexes for table `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`evento_id`),
  ADD KEY `id_cat_evento` (`id_cat_evento`),
  ADD KEY `id_inv` (`id_inv`);

--
-- Indexes for table `invitados`
--
ALTER TABLE `invitados`
  ADD PRIMARY KEY (`invitado_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categoria_evento`
--
ALTER TABLE `categoria_evento`
  MODIFY `id_categoria` tinyint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `eventos`
--
ALTER TABLE `eventos`
  MODIFY `evento_id` tinyint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `invitados`
--
ALTER TABLE `invitados`
  MODIFY `invitado_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `eventos`
--
ALTER TABLE `eventos`
  ADD CONSTRAINT `eventos_ibfk_1` FOREIGN KEY (`id_cat_evento`) REFERENCES `categoria_evento` (`id_categoria`),
  ADD CONSTRAINT `eventos_ibfk_2` FOREIGN KEY (`id_inv`) REFERENCES `invitados` (`invitado_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
