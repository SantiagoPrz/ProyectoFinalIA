-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-06-2023 a las 02:04:09
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `datosamigos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `amigos`
--

CREATE TABLE `amigos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `edad` varchar(10) NOT NULL,
  `telefono` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `amigos`
--

INSERT INTO `amigos` (`id`, `nombre`, `usuario`, `edad`, `telefono`) VALUES
(14, 'Yaiza Guevara', 'YaiGuevara', '22', '4427536091'),
(11, 'Gisela Mohamed', 'GiMO98', '20', '4429781719'),
(21, 'Aurora Fuentes', 'AURORA', '16', '4424952727');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluar`
--

CREATE TABLE `evaluar` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `edad` varchar(255) NOT NULL,
  `telefono` varchar(255) NOT NULL,
  `valor1` float DEFAULT NULL,
  `valor2` float DEFAULT NULL,
  `valor3` float DEFAULT NULL,
  `valor4` float DEFAULT NULL,
  `valor5` float DEFAULT NULL,
  `valor6` float DEFAULT NULL,
  `valor7` float DEFAULT NULL,
  `valor8` float DEFAULT NULL,
  `valor9` float DEFAULT NULL,
  `valor10` float DEFAULT NULL,
  `valor11` float DEFAULT NULL,
  `valor12` float DEFAULT NULL,
  `valor13` float DEFAULT NULL,
  `valor14` float DEFAULT NULL,
  `valor15` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `evaluar`
--

INSERT INTO `evaluar` (`id`, `nombre`, `usuario`, `edad`, `telefono`, `valor1`, `valor2`, `valor3`, `valor4`, `valor5`, `valor6`, `valor7`, `valor8`, `valor9`, `valor10`, `valor11`, `valor12`, `valor13`, `valor14`, `valor15`) VALUES
(20, 'Raul Martinez', 'Raul11', '15', '4422013232', 0, 0.1, 1, 0.9, 1, 0.4, 0.4, 0.2, 0.6, 0.4, 0.7, 0.5, 0.6, 0.8, 0.7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfiles`
--

CREATE TABLE `perfiles` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `edad` varchar(255) NOT NULL,
  `telefono` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `perfiles`
--

INSERT INTO `perfiles` (`id`, `nombre`, `usuario`, `edad`, `telefono`, `pass`) VALUES
(23, 'Raul Martinez', 'Raul11', '15', '4422013232', 'Raulito123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `edad` varchar(2) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `valor1` float NOT NULL,
  `valor2` float NOT NULL,
  `valor3` float NOT NULL,
  `valor4` float NOT NULL,
  `valor5` float NOT NULL,
  `valor6` float NOT NULL,
  `valor7` float NOT NULL,
  `valor8` float NOT NULL,
  `valor9` float NOT NULL,
  `valor10` float NOT NULL,
  `valor11` float NOT NULL,
  `valor12` float NOT NULL,
  `valor13` float NOT NULL,
  `valor14` float NOT NULL,
  `valor15` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `edad`, `telefono`, `valor1`, `valor2`, `valor3`, `valor4`, `valor5`, `valor6`, `valor7`, `valor8`, `valor9`, `valor10`, `valor11`, `valor12`, `valor13`, `valor14`, `valor15`) VALUES
(1, 'Bridiga Ribera', 'BriRib', '34', '4429298580', 0, 0.1, 0.9, 0.5, 0.1, 0.5, 0.6, 0.6, 0.9, 0.1, 1, 0, 0.3, 0.1, 0.4),
(2, 'Suzu Lyra', 'SuzuLyUwU', '26', '4427633149', 0, 0.1, 0.9, 0.5, 1, 0.5, 0.9, 1, 0.1, 0, 0.1, 0.6, 0.8, 0.4, 0.7),
(3, 'Emilio Barrio', 'EmilioB', '16', '4428638047', 0, 0.3, 0.2, 1, 0.4, 0, 0.7, 0.6, 0.4, 0.8, 0.7, 0.1, 1, 0.1, 1),
(4, 'June Saenz', 'SaenzJ69', '16', '4422236733', 0, 0.6, 0.3, 0.6, 0.2, 0.8, 0.4, 0.1, 0, 0.1, 0.5, 0.8, 0.4, 0.7, 0.5),
(5, 'Cecilio Feijoo', 'CecilioF', '36', '4429998268', 0, 0.3, 0.1, 0.4, 0.5, 0.8, 0.8, 0, 0.6, 0.7, 0.6, 0.1, 0.5, 0.1, 0.1),
(6, 'Luisa Olivares', 'LuOlivares', '32', '4422966074', 0, 0.3, 0.6, 0.8, 0.2, 0.8, 0.2, 0.4, 0.8, 0.4, 0.1, 1, 0.3, 0.1, 0.2),
(7, 'Carla Hinojosa', 'MasterHinojosa', '34', '4422057029', 0, 0.6, 0.3, 1, 0.2, 0.6, 0.5, 0.5, 0.1, 0.7, 0.6, 0.8, 0.3, 0.6, 1),
(8, 'Mario Valenzuela', 'MarioVal', '32', '4429213561', 0, 0.1, 0.7, 0.5, 0.7, 0.7, 0.3, 0.9, 0.2, 0.8, 0.3, 0.9, 0.8, 0.3, 0.5),
(9, 'Angela Barreiro', 'AngieBarreiro', '37', '4425871550', 0, 0.5, 1, 0.1, 0.6, 0.8, 0.9, 0.8, 0.3, 0.7, 0.4, 0.1, 0.3, 0.3, 0.7),
(10, 'Josep Borja', 'JosBorja', '28', '4423484118', 0, 0.9, 0.4, 0.6, 0, 0.3, 0.7, 0.9, 0.2, 0.2, 0.7, 0.5, 0.7, 0.2, 0.1),
(11, 'Gisela Mohamed', 'GiMO98', '20', '4429781719', 0, 0.7, 0.5, 0.4, 0.8, 0.7, 0.4, 0.8, 0.2, 0.9, 1, 0.9, 0.3, 0.9, 1),
(12, 'Consuelo Morales', 'ConsueloMoxita', '24', '4429960883', 0, 0.6, 0.4, 0.9, 0.1, 0.2, 0.6, 0.9, 0.8, 0.4, 0.1, 0.1, 0.9, 0.3, 0.8),
(13, 'Ingrid Batista', 'IngridRKO', '19', '4428700777', 0, 0.6, 0, 1, 0.1, 0.5, 0.7, 0.1, 0.3, 0.4, 0.7, 0.5, 0, 0.9, 0.8),
(14, 'Yaiza Guevara', 'YaiGuevara', '22', '4427536091', 0, 0.7, 0.8, 0.8, 0.4, 0.3, 0, 0.5, 0.5, 0.2, 0.7, 0.9, 0.9, 0.9, 0.9),
(15, 'Alexandra Roman', 'AleRoman', '16', '4422102100', 0, 0.2, 0.9, 0.4, 0.3, 1, 0.1, 0.4, 0.7, 0.1, 0.4, 0.1, 0.5, 0, 1),
(16, 'Rut Tellez', 'RutTellez', '18', '4421889611', 0, 0.1, 0.1, 0.6, 0.5, 0.4, 0.2, 1, 0.7, 0.1, 0.7, 0.2, 0.7, 0.6, 0.7),
(17, 'Veronica Barrios', 'VeroBarrios', '35', '4426460620', 0, 0.5, 0.4, 0.5, 0.7, 0.9, 0.1, 0.7, 0.9, 0.2, 0.8, 0.7, 0, 0.2, 0.4),
(18, 'Eloi Oviedo', 'EloiOviedo88', '34', '4423647419', 0, 1, 0.6, 0.9, 0.5, 0.4, 0.3, 0.6, 0.4, 0.4, 1, 0.4, 0.4, 0.1, 0.3),
(19, 'Emma Mansilla', 'EmmiMansilla', '32', '4425967245', 0, 0.7, 0.9, 0.8, 0, 0.7, 0.1, 0.2, 0.3, 0.5, 0.4, 0.8, 0.4, 0.1, 0.6),
(20, 'Raul Martinez', 'Raul11', '15', '4422013232', 0, 0.1, 1, 0.9, 1, 0.4, 0.4, 0.2, 0.6, 0.4, 0.7, 0.5, 0.6, 0.8, 0.7),
(21, 'Aurora Fuentes', 'AURORA', '16', '4424952727', 0, 0.1, 1, 1, 0.6, 0.8, 0.4, 0.8, 0.7, 0.1, 0.8, 0.1, 0, 0.9, 0.4),
(22, 'Valentina Nuñez', 'valentina_nunez', '28', '4425729348', 0, 0.4, 0.6, 0.7, 0.9, 0.3, 0.2, 0.5, 0.6, 0.1, 0.9, 0.8, 0.4, 0.7, 0.2),
(23, 'Fernando Vargas', 'fernando_vargas', '40', '4426598123', 0, 0.2, 0.4, 0.8, 0.3, 0.7, 0.9, 0.1, 0.5, 0.8, 0.6, 0.3, 0.2, 0.6, 0.5),
(24, 'Camila Rojas', 'camila_rojas', '19', '4427789645', 0, 0.9, 0.7, 0.2, 0.6, 0.1, 0.8, 0.4, 0.7, 0.3, 0.5, 0.9, 0.1, 0.4, 0.8),
(25, 'Ricardo Morales', 'ricardo_morales', '45', '4424972610', 0, 0.6, 0.8, 0.3, 0.1, 0.9, 0.4, 0.7, 0.6, 0.2, 0.4, 0.1, 0.7, 0.5, 0.9),
(26, 'Sabrina Aguilar', 'sabrina_aguilar', '31', '4426308792', 0, 0.3, 0.5, 0.9, 0.4, 0.2, 0.6, 0.8, 0.9, 0.1, 0.7, 0.2, 0.5, 0.3, 0.6),
(27, 'Javier Soto', 'javier_soto', '37', '4428349102', 0, 0.7, 0.1, 0.6, 0.5, 0.8, 0.3, 0.2, 0.4, 0.9, 0.6, 0.3, 0.7, 0.1, 0.8),
(28, 'Mariana Castro', 'mariana_castro', '23', '4427150498', 0, 0.5, 0.9, 0.4, 0.7, 0.6, 0.1, 0.8, 0.3, 0.4, 0.2, 0.9, 0.5, 0.8, 0.7),
(29, 'Daniela Paredes', 'DanieP', '25', '4429650178', 0, 0.6, 0.7, 0.3, 0.8, 0.2, 0.5, 0.9, 0.1, 0.7, 0.5, 0.6, 0.4, 0.2, 0.9),
(30, 'Hugo Ríos', 'HugoR', '42', '4425298734', 0, 0.3, 0.8, 0.6, 0.4, 0.7, 0.6, 0.3, 0.2, 0.5, 0.4, 0.9, 0.7, 0.8, 0.3),
(31, 'Carolina Guzmán', 'CarolG', '33', '4426420987', 0, 0.2, 0.6, 0.4, 0.9, 0.5, 0.8, 0.2, 0.7, 0.1, 0.6, 0.3, 0.5, 0.4, 0.8),
(32, 'Gabriel Salcedo', 'GaboSalcedo', '35', '4427734289', 0, 0.7, 0.3, 0.9, 0.5, 0.8, 0.1, 0.6, 0.3, 0.4, 0.7, 0.5, 0.8, 0.9, 0.2),
(33, 'Alejandra Mendoza', 'AleMendoza', '27', '4429817304', 0, 0.1, 0.6, 0.8, 0.3, 0.4, 0.7, 0.2, 0.5, 0.9, 0.6, 0.3, 0.1, 0.8, 0.4),
(34, 'Luis Montoya', 'LuisitoMontoya', '39', '4426468912', 0, 0.8, 0.2, 0.5, 0.6, 0.9, 0.3, 0.7, 0.8, 0.2, 0.5, 0.4, 0.6, 0.9, 0.1),
(35, 'Ana Morales', 'Anita', '30', '4428884563', 0, 0.3, 0.7, 0.1, 0.8, 0.4, 0.6, 0.9, 0.2, 0.7, 0.5, 0.3, 0.6, 0.1, 0.8),
(36, 'Sebastián Ortega', 'SebasOrtega', '22', '4427293410', 0, 0.1, 0.9, 0.7, 0.2, 0.6, 0.3, 0.8, 0.5, 0.1, 0.6, 0.9, 0.3, 0.4, 0.7),
(37, 'Valeria Cortez', 'ValeCortez', '32', '4423987561', 0, 0.5, 0.4, 0.8, 0.7, 0.2, 0.9, 0.6, 0.4, 0.7, 0.3, 0.5, 0.8, 0.1, 0.6),
(38, 'Roberto Torres', 'RoberTorrez', '43', '4426130974', 0, 0.4, 0.2, 0.6, 0.9, 0.1, 0.5, 0.7, 0.3, 0.8, 0.6, 0.4, 0.7, 0.9, 0.2),
(39, 'Sofía Jiménez', 'ChofitaEmoxita', '24', '4427459810', 0, 0.9, 0.1, 0.7, 0.4, 0.8, 0.2, 0.5, 0.9, 0.3, 0.6, 0.1, 0.4, 0.7, 0.5),
(40, 'Jorge Peralta', 'JP', '38', '4428712345', 0, 0.7, 0.5, 0.8, 0.3, 0.6, 0.4, 0.9, 0.7, 0.2, 0.5, 0.8, 0.3, 0.6, 0.1),
(41, 'Isabella Romero', 'IsaRomero', '26', '4425248790', 0, 0.5, 0.8, 0.2, 0.6, 0.3, 0.9, 0.1, 0.4, 0.7, 0.2, 0.5, 0.8, 0.6, 0.3),
(42, 'Miguel Sánchez', 'MaikSanchez', '36', '4426397102', 0, 0.8, 0.7, 0.3, 0.1, 0.6, 0.4, 0.7, 0.2, 0.5, 0.9, 0.6, 0.3, 0.8, 0.4),
(43, 'Paula González', 'PauGonz', '21', '4427789246', 0, 0.2, 0.6, 0.9, 0.5, 0.8, 0.4, 0.7, 0.9, 0.1, 0.6, 0.3, 0.2, 0.5, 0.8),
(44, 'Diego Fernández', 'DiegoInsano', '34', '4429637804', 0, 0.6, 0.1, 0.5, 0.8, 0.3, 0.7, 0.4, 0.2, 0.9, 0.6, 0.3, 0.5, 0.7, 0.1),
(45, 'Valentina Herrera', 'ValeH', '29', '4426432198', 0, 0.4, 0.9, 0.7, 0.5, 0.8, 0.3, 0.6, 0.1, 0.7, 0.5, 0.8, 0.9, 0.2, 0.4),
(46, 'Francisco Morales', 'PanchoMorales', '41', '4428876123', 0, 0.7, 0.3, 0.8, 0.6, 0.1, 0.4, 0.9, 0.8, 0.3, 0.6, 0.2, 0.5, 0.9, 0.7),
(47, 'María Torres', 'MariTorres', '33', '4425208765', 0, 0.3, 0.6, 0.1, 0.7, 0.5, 0.9, 0.4, 0.6, 0.2, 0.5, 0.9, 0.7, 0.3, 0.8),
(48, 'Juanita Ríos', 'JuniR', '20', '4427310945', 0, 0.9, 0.4, 0.7, 0.3, 0.8, 0.5, 0.2, 0.9, 0.1, 0.4, 0.6, 0.8, 0.7, 0.3),
(49, 'Felipe Castro', 'FeliCas', '28', '4428863475', 0, 0.6, 0.8, 0.5, 0.7, 0.9, 0.2, 0.4, 0.5, 0.8, 0.6, 0.7, 0.1, 0.3, 0.9),
(50, 'Lucía Paredes', 'LuciMuros', '27', '4427412089', 0, 0.5, 0.3, 0.9, 0.6, 0.1, 0.8, 0.5, 0.4, 0.6, 0.9, 0.2, 0.3, 0.7, 0.8);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
