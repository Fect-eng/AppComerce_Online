-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-10-2021 a las 04:49:45
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `virtual_comerce`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `titulo`) VALUES
(4, 'COMPUTACIÓN'),
(5, 'CÁMARAS'),
(6, 'ELECTRÓNICA'),
(8, 'CÁMARAS'),
(9, 'ACCESORIOS'),
(16, 'CONSOLA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(300) COLLATE utf8_spanish_ci NOT NULL,
  `contenido` varchar(800) COLLATE utf8_spanish_ci NOT NULL,
  `imagen` varchar(80) CHARACTER SET latin1 NOT NULL,
  `precio` decimal(12,2) NOT NULL,
  `calificacion` decimal(2,1) NOT NULL,
  `categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `titulo`, `descripcion`, `contenido`, `imagen`, `precio`, `calificacion`, `categoria`) VALUES
(12, 'Apple Iphone X', 'Por fin, un dispositivo de pantalla completa, que te adentra en su interfaz amigable para presentarte la vida desde otra perspectiva.', 'Un dispositivo que es Pura Pantalla. Tiene tecnología de Super Retina en un tamaño de 5.8 pulgadas, adicionada con tecnologías que permiten que la pantalla siga un diseño curvo con precisión, y termine hasta las elegantes esquinas redondeadas. Además de colores precisos y deslumbrantes, negros intensos, un alto brillo y una relación de contraste de 1,000,000:1. \r\n\r\nResistencia jamás vista en un smartphone. El vidrio más resistente usado en un iPhone hasta ahora, tanto en la parte frontal como en la trasera. Acero inoxidable de calidad quirúrgica. Con tecnologías de carga inalámbrica y un diseño resistente al agua y al polvo.', 'views/images/articulos/articulo373.jpg', '9999.99', '0.0', 5),
(13, 'Celular Samsung Galaxy S7 Edge', 'PROMOCION POR TIEMPO LIMITADO RECIBE UN CARGADOR INALAMBRICO SAMSUNG GRATIS CON TU COMPRA', 'Éste es un equipo nuevo que se utilizó como demo o exhibición en tienda, puede tener algunas imperfecciones estéticas, funciona perfectamente\r\nEquipo liberado para cualquier compañía, aprobados por control de calidad antes de ser enviados, no han sido reparados o abiertos, están garantizados contra defectos de fabricación por 3 meses\r\nEsta clase de artículos van en empaque genérico e incluyen sus accesorios originales o genéricos de primera calidad', 'views/images/articulos/articulo607.jpg', '22999.00', '0.0', 5),
(14, 'Pc Gamer Intel I5 7400 ', 'Computadora Gamer Nueva Era Intel ¡Disfruta una nueva era gráfica !', '-Disponible la opción: También se puede Retirar en Persona.\r\n-Los productos armados toman un día más en prepararse y probarse.\r\n-Facturamos sin costo adicional.\r\n-Para recoger tu pedido en nuestra tienda debe acudir el titular de la cuenta de Mercado libre con Identificación Oficial. \r\n-Cuenta con póliza de 1 año de garantía.', 'views/images/articulos/articulo463.jpg', '15995.00', '0.0', 4),
(15, 'Pluma 3d', '¡¡Todo lo que necesitas para comenzar a trabajar!! ¡¡Pluma y paquete de filamentos!!', 'Características Principales:\r\n- Incluye: ¡¡Filamentos de 20 colores!! (20 rollos de 5 metros cada uno)\r\n- Muy ligera y delgada, fácil de sostener y de usar\r\n- Favorece la imaginación y la creatividad\r\n- Adaptador USB que permite utilizar baterías móviles para utilizarla en cualquier lugar\r\n- Conexiones que facilitan el mantenimiento y reemplazo de filamento\r\n- Sensor inteligente de temperatura, reduce el riesgo de quemaduras\r\n.\r\nEspecificaciones:\r\n- Voltaje de entrada: 100 - 240V 50 / 60Hz\r\n- Voltaje de salida: 12V 2A\r\n- Filamentos: 1.75mm PLA\r\n- Rango de edad: 8 años en adelante\r\n- Material: Plastico\r\n- Tipo: 3D Print Pen 0.320\r\n.\r\nContenido del paquete: 1 Pluma 3D, 1 Adaptador, 1 Cable USB, 1 Manual, paquete de 20 rollos', 'views/images/articulos/articulo791.jpg', '1500.00', '0.0', 9),
(16, 'Laptop Hp Intel Inside', 'Laptop Hp 14 Intel Inside 1TB DD 4GB Ram Windows 10', 'Características Generales\r\nSistema operativo: Windows 10\r\nProcesador: Intel Celeron\r\nModelo: N3060\r\nVelocidad: 1.6GHz hasta 2.48GHz\r\nTipo de gráficos: Intel HD 400\r\n\r\nAlmacenamiento\r\nDisco duro: 1TB 5400 RPM\r\nMemoria RAM: 4GB DDR3\r\n\r\nPantalla\r\nTamaño de pantalla: 14 Pulgadas\r\nTipo de pantalla: LED\r\nResolución de la pantalla: HD 1366 x 768\r\n\r\nUnidad óptica\r\nCD/DVD RW +/- : No\r\nConectividad\r\nHDMI: 1\r\nUSB 3.0: 1\r\nUSB 2.0: 2\r\nRJ-45: SI\r\nLector de tarjetas: SI\r\nSalida para audio: SI\r\nVGA SI\r\nTeclado: Español\r\n', 'views/images/articulos/articulo401.jpg', '13000.00', '0.0', 4),
(17, 'Adata Cable Usb', 'Adata Cable Tipo C Datos Sincronizacion Usb 3.0 alta velocidad 1m Plata', 'Adata Cable Tipo C Datos Sincronizacion Usb 3.0 alta velocidad 1m Plata\r\nCable de 1 metro\r\nSolo en color plata \r\nCable usb a C\r\nCarga y sincronización', 'views/images/articulos/articulo342.jpg', '130.00', '0.0', 9),
(18, 'Audifono Manos Libres', 'MANOS LIBRES UNIVERSAL 3.5 CIERRE', 'Eres de las personas que les gusta llevar su música a cualquier parte? es el articulo ideal y lo mejor de todo a un excelente precio, Audifonos Universal compatible con cualquier dispositivo con 3.5. ', 'views/images/articulos/articulo803.jpg', '33.00', '0.0', 9),
(19, 'Tripie Flexible', 'Tripie Flexible Gorilapod para Camara y Celular', 'Mini tamaño, peso ligero y portátil Hecho del plástico durable Con cubierta de silicona antideslizante Cada pierna tiene diez articulaciones de bola giratoria Se puede fijar en cualquier lugar que desee Viene con un soporte de teléfono Excelente accesorio para Cámara y Teléfono Móvil Especificaciones: Tamaño: 28x3.5x3.5cm Carga Máxima: 300g Tamaño del tornillo: 1/4 \" Tornillo Estándar Peso neto: 50g Longitud Del Clip de Telefono: 5.8-8.8 cm Contenido del Paquete: 1 x Trípode Flexible 1 x Titular de Teléfono Universal \r\nTenemos disponibilidad para Entrega Inmediata', 'views/images/articulos/articulo650.jpg', '199.00', '0.0', 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `ruta` text NOT NULL,
  `titulo` text NOT NULL,
  `descripcion` text NOT NULL,
  `orden` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `slide`
--

INSERT INTO `slide` (`id`, `ruta`, `titulo`, `descripcion`, `orden`) VALUES
(74, '../../views/images/slide/slide416.jpg', 'descubre que tenemos para ti', 'ya estamos en linea', 0),
(75, '../../views/images/slide/slide795.jpg', 'descubre las increÃ­bles ofertas', 'que tenemos para ti', 0),
(76, '../../views/images/slide/slide539.jpg', 'aprovecha los descuentos', 'de la temporada', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `role` varchar(15) NOT NULL,
  `mail` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`, `role`, `mail`) VALUES
(1, 'giusseppe', '1234', 'administrador', 'tienda@curso.com'),
(2, 'samara', '1234', 'cliente', 'comprador@curso.com'),
(9, 'aritza', '1234', 'cliente', 'aritza@cursos.com'),
(10, 'kevin', '1234', 'cliente', 'kevin@curso.com'),
(11, 'Edward', '4321', 'administrador', 'cultura@gmail.com'),
(12, 'erika', '4321', 'administrador', 'erika@gmail.com'),
(13, 'barbara', '21345rty', 'cliente', 'barbara@gmail.com'),
(14, 'barbara', '21345rty', 'cliente', 'barbara@gmail.com'),
(15, 'barbara', '21345rty', 'cliente', 'barbara@gmail.com'),
(16, 'barbara', '21345rty', 'cliente', 'barbara@gmail.com'),
(17, 'barbara', '21345rty', 'cliente', 'barbara@gmail.com'),
(18, 'barbara', '21345rty', 'cliente', 'barbara@gmail.com'),
(19, 'barbara', '21345rty', 'cliente', 'barbara@gmail.com'),
(20, 'barbara', '21345rty', 'cliente', 'barbara@gmail.com'),
(21, 'barbara', '21345rty', 'cliente', 'barbara@gmail.com'),
(22, 'barbara', '21345rty', 'cliente', 'barbara@gmail.com'),
(23, 'barbara', '21345rty', 'cliente', 'barbara@gmail.com'),
(24, 'liker', '9888', 'cliente', 'iker@gmail.com'),
(25, 'skywoker', '9888', 'cliente', 'iker@gmail.com'),
(26, 'tumerFrio', '9888', 'cliente', 'iker@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `producto` varchar(30) NOT NULL,
  `imagen` varchar(80) NOT NULL,
  `costo` decimal(12,2) NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `usuario`, `producto`, `imagen`, `costo`, `fecha`) VALUES
(10, 2, 'Tripie Flexible', 'views/images/articulos/articulo650.jpg', '199.00', '2018-05-18 22:09:15'),
(11, 2, 'Pluma 3d', 'views/images/articulos/articulo791.jpg', '1500.00', '2018-05-18 22:10:36'),
(12, 2, 'Apple Iphone X', 'views/images/articulos/articulo373.jpg', '9999.00', '2018-05-18 22:10:36'),
(13, 2, 'Mica Cristal Templado ', 'views/images/articulos/articulo967.jpg', '165.00', '2018-05-18 22:26:44'),
(20, 10, 'Tripie Flexible', 'views/images/articulos/articulo650.jpg', '199.00', '2018-05-19 00:22:01'),
(21, 10, 'Mica Cristal Templado ', 'views/images/articulos/articulo590.jpg', '165.00', '2018-05-19 00:22:01'),
(22, 10, 'Luz Audioritmico ', 'views/images/articulos/articulo781.jpg', '300.00', '2018-05-19 00:22:01'),
(23, 10, 'cambio Total', 'imagen.jpg', '125689.00', '2018-05-19 00:22:01');

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoria` (`categoria`);

--
-- Indices de la tabla `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario` (`usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`categoria`) REFERENCES `categorias` (`id`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`usuario`) REFERENCES `usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
