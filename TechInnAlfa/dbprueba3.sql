-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-03-2024 a las 00:45:47
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
-- Base de datos: `dbprueba3`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add usuarios', 6, 'add_usuarios'),
(22, 'Can change usuarios', 6, 'change_usuarios'),
(23, 'Can delete usuarios', 6, 'delete_usuarios'),
(24, 'Can view usuarios', 6, 'view_usuarios'),
(25, 'Can add habitacion', 7, 'add_habitacion'),
(26, 'Can change habitacion', 7, 'change_habitacion'),
(27, 'Can delete habitacion', 7, 'delete_habitacion'),
(28, 'Can view habitacion', 7, 'view_habitacion'),
(29, 'Can add tipo habitacion', 8, 'add_tipohabitacion'),
(30, 'Can change tipo habitacion', 8, 'change_tipohabitacion'),
(31, 'Can delete tipo habitacion', 8, 'delete_tipohabitacion'),
(32, 'Can view tipo habitacion', 8, 'view_tipohabitacion'),
(33, 'Can add tipo producto', 9, 'add_tipoproducto'),
(34, 'Can change tipo producto', 9, 'change_tipoproducto'),
(35, 'Can delete tipo producto', 9, 'delete_tipoproducto'),
(36, 'Can view tipo producto', 9, 'view_tipoproducto'),
(37, 'Can add tipo usuario', 10, 'add_tipousuario'),
(38, 'Can change tipo usuario', 10, 'change_tipousuario'),
(39, 'Can delete tipo usuario', 10, 'delete_tipousuario'),
(40, 'Can view tipo usuario', 10, 'view_tipousuario'),
(41, 'Can add reserva', 11, 'add_reserva'),
(42, 'Can change reserva', 11, 'change_reserva'),
(43, 'Can delete reserva', 11, 'delete_reserva'),
(44, 'Can view reserva', 11, 'view_reserva'),
(45, 'Can add producto', 12, 'add_producto'),
(46, 'Can change producto', 12, 'change_producto'),
(47, 'Can delete producto', 12, 'delete_producto'),
(48, 'Can view producto', 12, 'view_producto'),
(49, 'Can add tipo servicio', 13, 'add_tiposervicio'),
(50, 'Can change tipo servicio', 13, 'change_tiposervicio'),
(51, 'Can delete tipo servicio', 13, 'delete_tiposervicio'),
(52, 'Can view tipo servicio', 13, 'view_tiposervicio'),
(53, 'Can add servicio', 14, 'add_servicio'),
(54, 'Can change servicio', 14, 'change_servicio'),
(55, 'Can delete servicio', 14, 'delete_servicio'),
(56, 'Can view servicio', 14, 'view_servicio'),
(57, 'Can add consumos', 15, 'add_consumos'),
(58, 'Can change consumos', 15, 'change_consumos'),
(59, 'Can delete consumos', 15, 'delete_consumos'),
(60, 'Can view consumos', 15, 'view_consumos'),
(61, 'Can add factura_ respaldo', 16, 'add_factura_respaldo'),
(62, 'Can change factura_ respaldo', 16, 'change_factura_respaldo'),
(63, 'Can delete factura_ respaldo', 16, 'delete_factura_respaldo'),
(64, 'Can view factura_ respaldo', 16, 'view_factura_respaldo'),
(65, 'Can add reserva_ respaldo', 17, 'add_reserva_respaldo'),
(66, 'Can change reserva_ respaldo', 17, 'change_reserva_respaldo'),
(67, 'Can delete reserva_ respaldo', 17, 'delete_reserva_respaldo'),
(68, 'Can view reserva_ respaldo', 17, 'view_reserva_respaldo'),
(69, 'Can add usuarios_ respaldo', 18, 'add_usuarios_respaldo'),
(70, 'Can change usuarios_ respaldo', 18, 'change_usuarios_respaldo'),
(71, 'Can delete usuarios_ respaldo', 18, 'delete_usuarios_respaldo'),
(72, 'Can view usuarios_ respaldo', 18, 'view_usuarios_respaldo'),
(73, 'Can add factura', 19, 'add_factura'),
(74, 'Can change factura', 19, 'change_factura'),
(75, 'Can delete factura', 19, 'delete_factura'),
(76, 'Can view factura', 19, 'view_factura');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(15, 'boards', 'consumos'),
(19, 'boards', 'factura'),
(16, 'boards', 'factura_respaldo'),
(7, 'boards', 'habitacion'),
(12, 'boards', 'producto'),
(11, 'boards', 'reserva'),
(17, 'boards', 'reserva_respaldo'),
(14, 'boards', 'servicio'),
(8, 'boards', 'tipohabitacion'),
(9, 'boards', 'tipoproducto'),
(13, 'boards', 'tiposervicio'),
(10, 'boards', 'tipousuario'),
(6, 'boards', 'usuarios'),
(18, 'boards', 'usuarios_respaldo'),
(4, 'contenttypes', 'contenttype'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-03-17 23:14:09.292071'),
(2, 'contenttypes', '0002_remove_content_type_name', '2024-03-17 23:14:09.340460'),
(3, 'auth', '0001_initial', '2024-03-17 23:14:09.536239'),
(4, 'auth', '0002_alter_permission_name_max_length', '2024-03-17 23:14:09.580018'),
(5, 'auth', '0003_alter_user_email_max_length', '2024-03-17 23:14:09.597001'),
(6, 'auth', '0004_alter_user_username_opts', '2024-03-17 23:14:09.601987'),
(7, 'auth', '0005_alter_user_last_login_null', '2024-03-17 23:14:09.607944'),
(8, 'auth', '0006_require_contenttypes_0002', '2024-03-17 23:14:09.611046'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2024-03-17 23:14:09.616032'),
(10, 'auth', '0008_alter_user_username_max_length', '2024-03-17 23:14:09.621018'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2024-03-17 23:14:09.626006'),
(12, 'auth', '0010_alter_group_name_max_length', '2024-03-17 23:14:09.635604'),
(13, 'auth', '0011_update_proxy_permissions', '2024-03-17 23:14:09.641588'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2024-03-17 23:14:09.647523'),
(15, 'boards', '0001_initial', '2024-03-17 23:14:10.143460'),
(16, 'admin', '0001_initial', '2024-03-17 23:14:10.299463'),
(17, 'admin', '0002_logentry_remove_auto_add', '2024-03-17 23:14:10.309183'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2024-03-17 23:14:10.318161'),
(19, 'boards', '0002_tiposervicio_servicio', '2024-03-17 23:14:10.386430'),
(20, 'boards', '0003_consumos', '2024-03-17 23:14:10.525329'),
(21, 'boards', '0004_alter_consumos_table_alter_habitacion_table_and_more', '2024-03-17 23:14:10.647260'),
(22, 'boards', '0005_factura_respaldo_reserva_respaldo_usuarios_respaldo_and_more', '2024-03-17 23:14:10.738207'),
(23, 'boards', '0006_rename_usuapellidos_usuarios_apellidos_and_more', '2024-03-17 23:14:10.772284'),
(24, 'boards', '0007_rename_apellidos_usuarios_apellido_and_more', '2024-03-17 23:14:10.795115'),
(25, 'boards', '0008_rename_id_tipo_usuarios_tipo', '2024-03-17 23:14:11.827592'),
(26, 'boards', '0009_rename_cantidad_consumos_cantidad_and_more', '2024-03-17 23:14:12.411464'),
(27, 'boards', '0010_rename_cantidad_consumos_cantidad_p_and_more', '2024-03-17 23:14:12.440347'),
(28, 'boards', '0011_remove_factura_id_consumo_factura_id_reserva', '2024-03-17 23:14:12.649151'),
(29, 'sessions', '0001_initial', '2024-03-17 23:14:12.677502');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('kiskxknusc32g8toku2rovl1uhy7j8eh', '.eJxVjDsOwjAQBe_iGln-e0NJnzNEG-8aB5AjxUmFuDuJlALaN_PmLQbc1jJsjZdhInEV2lgnLr_ziOnJ9WD0wHqfZZrrukyjPBR50ib7mfh1O92_QMFW9jf7iAmyjTqRyXFkRY4AVebMFlOyXYyeSO_F4K0NvlMExinIwQADiM8Xgrw5Dg:1rmF1H:3oz355KN1ipVqTImr-H-SoxWUAIjGryzlewetmDCHGw', '2024-04-01 15:35:23.128976'),
('ydlumdp3ypsz3inb9gwdo61q2kjoduia', '.eJxVjDsOwjAQBe_iGln-e0NJnzNEG-8aB5AjxUmFuDuJlALaN_PmLQbc1jJsjZdhInEV2lgnLr_ziOnJ9WD0wHqfZZrrukyjPBR50ib7mfh1O92_QMFW9jf7iAmyjTqRyXFkRY4AVebMFlOyXYyeSO_F4K0NvlMExinIwQADiM8Xgrw5Dg:1rmF0Q:06vsnURQdPLr-wE978dqXcnkPBQaT1-NGEcdqS7sTDQ', '2024-04-01 15:34:30.052013'),
('z0xwdydslm5wus5yhrnc9p0eorlwhlic', '.eJxVjDsOgzAMQO-SuYpCnMSmY3fOgEzsFNoKJD5T1bsXJIZ2fp-3aXlb-3ZbdG4HMVdTOfAJMUAwl1_YcX7qeBjy4PE-2TyN6zx09lDsSRfbTKKv2-n-DXpe-r3WiJypAFZZfMFOnQQhdkWLAucMNWIUqfZjigAp1k7IB0cleVIi8_kCbaI6SQ:1rmEBJ:VTQcg0Nm_7k4nV708odmB4EyKcH8NVdvYqW4vDNOQ44', '2024-04-01 14:41:41.933478');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbconsumos`
--

CREATE TABLE `tbconsumos` (
  `id` int(11) NOT NULL,
  `cantidad_p` int(11) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `facturado` tinyint(1) NOT NULL,
  `id_Producto_id` int(11) DEFAULT NULL,
  `id_Reserva_id` int(11) DEFAULT NULL,
  `id_Servicio_id` bigint(20) DEFAULT NULL,
  `cantidad_s` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbconsumos`
--

INSERT INTO `tbconsumos` (`id`, `cantidad_p`, `total`, `facturado`, `id_Producto_id`, `id_Reserva_id`, `id_Servicio_id`, `cantidad_s`) VALUES
(9, 1, 20.00, 1, 101, 8, 101, 1),
(10, 1, 35.00, 0, 101, 9, 101, 2);

--
-- Disparadores `tbconsumos`
--
DELIMITER $$
CREATE TRIGGER `agregar_consumo_factura` AFTER INSERT ON `tbconsumos` FOR EACH ROW BEGIN
    -- Verifica si el consumo no ha sido facturado
    IF NEW.facturado = FALSE THEN
        -- Actualiza el total de la factura correspondiente a la reserva
        UPDATE tbfactura
        SET Total = Total + NEW.total
        WHERE id_Reserva_id = NEW.id_Reserva_id;
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `quitar_consumo_factura` AFTER DELETE ON `tbconsumos` FOR EACH ROW BEGIN
    UPDATE tbfactura
    SET Total = Total - OLD.total
    WHERE id_Reserva_id = OLD.id_Reserva_id;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `restar_consumo_factura` AFTER UPDATE ON `tbconsumos` FOR EACH ROW BEGIN
    IF OLD.facturado = FALSE AND NEW.facturado = TRUE THEN
        UPDATE tbfactura
        SET Total = Total - NEW.total
        WHERE id_Reserva_id = NEW.id_Reserva_id;
    ELSEIF OLD.facturado = TRUE AND NEW.facturado = FALSE THEN
        UPDATE tbfactura
        SET Total = Total + OLD.total
        WHERE id_Reserva_id = OLD.id_Reserva_id;
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tr_actualizar_total` BEFORE INSERT ON `tbconsumos` FOR EACH ROW BEGIN
    DECLARE costo_servicio DECIMAL(10, 2);
    DECLARE costo_producto DECIMAL(10, 2);

    IF NEW.id_Servicio_id IS NOT NULL THEN
        SELECT costo INTO costo_servicio FROM tbServicio WHERE id = NEW.id_Servicio_id;
        SET NEW.total = NEW.cantidad_s * costo_servicio;
    END IF;

    IF NEW.id_Producto_id IS NOT NULL THEN
        SELECT costo INTO costo_producto FROM tbProducto WHERE id = NEW.id_Producto_id;
        SET NEW.total = NEW.total + (NEW.cantidad_p * costo_producto);
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tr_actualizar_total_consumo` BEFORE UPDATE ON `tbconsumos` FOR EACH ROW BEGIN
    DECLARE costo_servicio DECIMAL(10, 2);
    DECLARE costo_producto DECIMAL(10, 2);

    IF NEW.id_Servicio_id IS NOT NULL THEN
        SELECT costo INTO costo_servicio FROM tbServicio WHERE id = NEW.id_Servicio_id;
        SET NEW.total = NEW.cantidad_s * costo_servicio;
    END IF;

    IF NEW.id_Producto_id IS NOT NULL THEN
        SELECT costo INTO costo_producto FROM tbProducto WHERE id = NEW.id_Producto_id;
        SET NEW.total = NEW.total + (NEW.cantidad_p * costo_producto);
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbfactura`
--

CREATE TABLE `tbfactura` (
  `Id` int(11) NOT NULL,
  `Fecha` date DEFAULT NULL,
  `Total` decimal(10,2) DEFAULT NULL,
  `id_Reserva_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbfactura`
--

INSERT INTO `tbfactura` (`Id`, `Fecha`, `Total`, `id_Reserva_id`) VALUES
(1, '2024-03-17', 159.00, 6),
(3, '2024-03-17', 150.00, 8),
(4, '2024-03-18', 185.00, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbfactura_respaldo`
--

CREATE TABLE `tbfactura_respaldo` (
  `Id` int(11) NOT NULL,
  `Fecha` date DEFAULT NULL,
  `Total` decimal(10,2) DEFAULT NULL,
  `ID_Consumo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbhabitacion`
--

CREATE TABLE `tbhabitacion` (
  `numero` int(11) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `caracteristicas` varchar(300) DEFAULT NULL,
  `costo_base` decimal(10,2) DEFAULT NULL,
  `capacidad` int(11) DEFAULT NULL,
  `nro_cama_sencilla` int(11) DEFAULT NULL,
  `nro_cama_doble` int(11) DEFAULT NULL,
  `nro_camarotes` int(11) DEFAULT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `tipo_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbhabitacion`
--

INSERT INTO `tbhabitacion` (`numero`, `estado`, `caracteristicas`, `costo_base`, `capacidad`, `nro_cama_sencilla`, `nro_cama_doble`, `nro_camarotes`, `imagen`, `tipo_id`) VALUES
(101, 'Disponible', 'Vista a la ciudad', 150.00, 2, 1, 0, 0, 'habitacion_imagenes/sencilla.jpg', 101),
(201, 'Ocupado', 'Con Jacuzzi', 250.00, 2, 0, 1, 0, 'habitacion_imagenes/suite_YT5jTjx.jpg', 102),
(301, 'Disponible', 'Terraza privada', 350.00, 4, 0, 2, 1, 'habitacion_imagenes/vip.jpg', 103);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbproducto`
--

CREATE TABLE `tbproducto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `costo` decimal(10,2) DEFAULT NULL,
  `stock_disponible` int(11) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `id_tipo_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbproducto`
--

INSERT INTO `tbproducto` (`id`, `nombre`, `costo`, `stock_disponible`, `descripcion`, `id_tipo_id`) VALUES
(101, 'Agua Mineral', 5.00, 100, 'Botella de agua 500ml', 102),
(102, 'Shampoo', 8.00, 50, 'Botella de shampoo 250ml', 103),
(103, 'Cena para dos', 40.00, 20, 'Incluye plato principal y postre', 101);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbreserva`
--

CREATE TABLE `tbreserva` (
  `id` int(11) NOT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `cantidad_adultos` int(11) DEFAULT NULL,
  `cantidad_niños` int(11) DEFAULT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  `fecha_salida` date DEFAULT NULL,
  `comentarios` varchar(300) DEFAULT NULL,
  `documento_id` int(11) NOT NULL,
  `nro_habitacion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbreserva`
--

INSERT INTO `tbreserva` (`id`, `estado`, `cantidad_adultos`, `cantidad_niños`, `fecha_ingreso`, `fecha_salida`, `comentarios`, `documento_id`, `nro_habitacion_id`) VALUES
(6, 'Pendiente', 2, 1, '2024-03-02', '2024-03-05', '\"La reserva en este hotel fue fácil y rápida. Personal amable, habitación impecable. ¡Muy recomendado!\"', 1234, 101),
(8, 'Pendiente', 2, 0, '2024-03-24', '2024-03-25', '\"Excelente servicio desde la reserva hasta el check-out. Instalaciones limpias y cómodas. ¡Volveré!\"', 1234, 101),
(9, 'Pendiente', 2, 0, '2024-03-25', '2024-03-26', '\"Mi reserva en este hotel fue perfecta. Personal atento, habitación confortable. ¡Una gran experiencia!\"', 123456, 101);

--
-- Disparadores `tbreserva`
--
DELIMITER $$
CREATE TRIGGER `generar_factura` AFTER INSERT ON `tbreserva` FOR EACH ROW BEGIN
    -- Declaración de variables
    DECLARE total_habitacion DECIMAL(10, 2);
    DECLARE total_servicios DECIMAL(10, 2);
    DECLARE total_productos DECIMAL(10, 2);
    DECLARE total_factura DECIMAL(10, 2);

    -- Calcula el total de la habitación
    SELECT costo_base INTO total_habitacion FROM tbhabitacion WHERE numero = NEW.nro_habitacion_id;

    -- Calcula el total de los servicios
    SELECT COALESCE(SUM(s.costo * c.cantidad_s), 0)
    INTO total_servicios
    FROM tbconsumos c
    INNER JOIN tbservicio s ON c.id_Servicio_id = s.id
    WHERE c.id_Reserva_id = NEW.id AND c.facturado = FALSE;

    -- Calcula el total de los productos
    SELECT COALESCE(SUM(p.costo * c.cantidad_p), 0)
    INTO total_productos
    FROM tbconsumos c
    INNER JOIN tbproducto p ON c.id_Producto_id = p.id
    WHERE c.id_Reserva_id = NEW.id AND c.facturado = FALSE;

    -- Calcula el total de la factura
    SET total_factura = total_habitacion + total_servicios + total_productos;

    -- Inserta la nueva factura
    INSERT INTO tbfactura (Fecha, Total, id_Reserva_id)
    VALUES (NOW(), total_factura, NEW.id);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbreserva_respaldo`
--

CREATE TABLE `tbreserva_respaldo` (
  `Id` int(11) NOT NULL,
  `Documento` int(11) DEFAULT NULL,
  `Estado` varchar(20) DEFAULT NULL,
  `CantidadAdultos` int(11) DEFAULT NULL,
  `CantidadNiños` int(11) DEFAULT NULL,
  `FechaIngreso` date DEFAULT NULL,
  `FechaSalida` date DEFAULT NULL,
  `Nro_habitacion` int(11) DEFAULT NULL,
  `Comentarios` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbservicio`
--

CREATE TABLE `tbservicio` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `costo` decimal(10,2) NOT NULL,
  `id_tipo_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbservicio`
--

INSERT INTO `tbservicio` (`id`, `nombre`, `descripcion`, `costo`, `id_tipo_id`) VALUES
(101, 'Desayuno Buffet', 'Variedad de opciones para empezar el día', 15.00, 101),
(102, 'Masaje Relajante', 'Sesión de masaje de 1 hora', 50.00, 102),
(103, 'Acceso al Gimnasio', 'Uso libre del gimnasio durante la estadía', 20.00, 103),
(104, 'NombreServicio3', 'Descripción del Servicio3', 40.00, 102);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbtipohabitacion`
--

CREATE TABLE `tbtipohabitacion` (
  `id` bigint(20) NOT NULL,
  `tipo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbtipohabitacion`
--

INSERT INTO `tbtipohabitacion` (`id`, `tipo`) VALUES
(101, 'Sencilla'),
(102, 'Suite'),
(103, 'VIP'),
(104, 'Doble');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbtipoproducto`
--

CREATE TABLE `tbtipoproducto` (
  `id` int(11) NOT NULL,
  `categoria` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbtipoproducto`
--

INSERT INTO `tbtipoproducto` (`id`, `categoria`) VALUES
(101, 'Alimentos'),
(102, 'Bebidas'),
(103, 'Artículos de Tocador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbtiposervicio`
--

CREATE TABLE `tbtiposervicio` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbtiposervicio`
--

INSERT INTO `tbtiposervicio` (`id`, `nombre`) VALUES
(101, 'Restaurante'),
(102, 'Spa'),
(103, 'Gimnasio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbtipousuario`
--

CREATE TABLE `tbtipousuario` (
  `id` int(11) NOT NULL,
  `rol` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbtipousuario`
--

INSERT INTO `tbtipousuario` (`id`, `rol`) VALUES
(101, 'Administrador'),
(102, 'Recepcionista'),
(103, 'Limpieza'),
(104, 'Mesero'),
(105, 'Huésped');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbusuarios`
--

CREATE TABLE `tbusuarios` (
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `documento` int(11) NOT NULL,
  `Nombre` varchar(200) NOT NULL,
  `Apellido` varchar(200) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `genero` varchar(20) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `Contraseña` varchar(200) NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `tipo_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbusuarios`
--

INSERT INTO `tbusuarios` (`password`, `last_login`, `is_superuser`, `documento`, `Nombre`, `Apellido`, `email`, `telefono`, `genero`, `estado`, `Contraseña`, `foto`, `tipo_id`) VALUES
('', '2024-03-18 16:07:09.084937', 0, 1234, 'james', 'james', 'james@hotmail.com', '123', 'james', 'james', 'pbkdf2_sha256$600000$piuaLi7zp85IxaUhLinDYY$fHdlktj8LztCRRrRcIrmYqMx88o6EZOkRDYuw0T7Hmw=', 'usuario_imagenes/foto.webp', 101),
('', '2024-03-18 13:59:00.880478', 1, 123456, 'jjames', 'james', 'james@hotmail.com', '3052829469', 'masculino', 'Activo', 'pbkdf2_sha256$600000$nFSFuIhSLZ3qxBoUBJDzR8$CCw8w8feMci+qzRcbFK2kjlJeP9LG2Ev6eKs0ivbDZw=', 'usuario_imagenes/foto_i3diwp4.webp', 102),
('', '2024-03-18 23:41:21.788988', 1, 8100516, 'Diego', 'Salamanca', 'Diego@hotmail.com', '305281981', 'Masculino', 'Activo', 'pbkdf2_sha256$600000$vPqoSA97IAXO2ktTxGOH1h$yiZ6dJRB3qSPxoopHOg2jI9yEvp+D258K/dNo7Ms72Y=', 'usuario_imagenes/foto_4YzRK2I.webp', 105),
('', '2024-03-18 23:37:11.383850', 1, 1032677434, 'Alejandro', 'Melendez', 'jamesalejandromelendez@hotmail.com', '3052829469', 'Masculino', 'Activo', 'pbkdf2_sha256$600000$JkXSiWpE91X8xKBOGllfJ9$PtJJOVLAqVxEZXHLH2+upyWBMMkZMhl/iM6JTXe9POA=', 'usuario_imagenes/foto_B9dUA15.webp', 105);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbusuarios_groups`
--

CREATE TABLE `tbusuarios_groups` (
  `id` int(11) NOT NULL,
  `usuarios_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbusuarios_respaldo`
--

CREATE TABLE `tbusuarios_respaldo` (
  `Id` int(11) NOT NULL,
  `Documento` int(11) NOT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Apellido` varchar(50) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Telefono` varchar(15) DEFAULT NULL,
  `Genero` varchar(20) DEFAULT NULL,
  `Estado` varchar(20) DEFAULT NULL,
  `Contraseña` varchar(255) DEFAULT NULL,
  `Id_tipo` int(11) DEFAULT NULL,
  `Fecha_Respaldo` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbusuarios_user_permissions`
--

CREATE TABLE `tbusuarios_user_permissions` (
  `id` int(11) NOT NULL,
  `usuarios_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_boards_usuarios_documento` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `tbconsumos`
--
ALTER TABLE `tbconsumos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbConsumos_id_Producto_id_20a209a1_fk_tbProducto_id` (`id_Producto_id`),
  ADD KEY `tbConsumos_id_Reserva_id_86a94693_fk_tbReserva_id` (`id_Reserva_id`),
  ADD KEY `tbConsumos_id_Servicio_id_dfe0d2de_fk_tbServicio_id` (`id_Servicio_id`);

--
-- Indices de la tabla `tbfactura`
--
ALTER TABLE `tbfactura`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `tbFactura_id_Reserva_id_367f12ac_fk_tbReserva_id` (`id_Reserva_id`);

--
-- Indices de la tabla `tbfactura_respaldo`
--
ALTER TABLE `tbfactura_respaldo`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `tbhabitacion`
--
ALTER TABLE `tbhabitacion`
  ADD PRIMARY KEY (`numero`),
  ADD KEY `boards_habitacion_tipo_id_dbf12ee4_fk_boards_tipohabitacion_id` (`tipo_id`);

--
-- Indices de la tabla `tbproducto`
--
ALTER TABLE `tbproducto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `boards_producto_id_tipo_id_103a76ad_fk_boards_tipoproducto_id` (`id_tipo_id`);

--
-- Indices de la tabla `tbreserva`
--
ALTER TABLE `tbreserva`
  ADD PRIMARY KEY (`id`),
  ADD KEY `boards_reserva_documento_id_9af1d711_fk_boards_us` (`documento_id`),
  ADD KEY `boards_reserva_nro_habitacion_id_083b074e_fk_boards_ha` (`nro_habitacion_id`);

--
-- Indices de la tabla `tbreserva_respaldo`
--
ALTER TABLE `tbreserva_respaldo`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `tbservicio`
--
ALTER TABLE `tbservicio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `boards_servicio_id_tipo_id_cdf79b7d_fk_boards_tiposervicio_id` (`id_tipo_id`);

--
-- Indices de la tabla `tbtipohabitacion`
--
ALTER TABLE `tbtipohabitacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbtipoproducto`
--
ALTER TABLE `tbtipoproducto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbtiposervicio`
--
ALTER TABLE `tbtiposervicio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbtipousuario`
--
ALTER TABLE `tbtipousuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbusuarios`
--
ALTER TABLE `tbusuarios`
  ADD PRIMARY KEY (`documento`),
  ADD UNIQUE KEY `usuNombres` (`Nombre`),
  ADD KEY `tbUsuarios_tipo_id_bec18f14_fk_tbTipoUsuario_id` (`tipo_id`);

--
-- Indices de la tabla `tbusuarios_groups`
--
ALTER TABLE `tbusuarios_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `boards_usuarios_groups_usuarios_id_group_id_d726f0b3_uniq` (`usuarios_id`,`group_id`),
  ADD KEY `boards_usuarios_groups_group_id_a6a70007_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `tbusuarios_respaldo`
--
ALTER TABLE `tbusuarios_respaldo`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Documento` (`Documento`);

--
-- Indices de la tabla `tbusuarios_user_permissions`
--
ALTER TABLE `tbusuarios_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `boards_usuarios_user_per_usuarios_id_permission_i_40132cc5_uniq` (`usuarios_id`,`permission_id`),
  ADD KEY `boards_usuarios_user_permission_id_ea52d3a8_fk_auth_perm` (`permission_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `tbconsumos`
--
ALTER TABLE `tbconsumos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tbfactura`
--
ALTER TABLE `tbfactura`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tbfactura_respaldo`
--
ALTER TABLE `tbfactura_respaldo`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbhabitacion`
--
ALTER TABLE `tbhabitacion`
  MODIFY `numero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=302;

--
-- AUTO_INCREMENT de la tabla `tbproducto`
--
ALTER TABLE `tbproducto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT de la tabla `tbreserva`
--
ALTER TABLE `tbreserva`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `tbreserva_respaldo`
--
ALTER TABLE `tbreserva_respaldo`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbservicio`
--
ALTER TABLE `tbservicio`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT de la tabla `tbtipohabitacion`
--
ALTER TABLE `tbtipohabitacion`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT de la tabla `tbtipoproducto`
--
ALTER TABLE `tbtipoproducto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT de la tabla `tbtiposervicio`
--
ALTER TABLE `tbtiposervicio`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT de la tabla `tbtipousuario`
--
ALTER TABLE `tbtipousuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT de la tabla `tbusuarios_groups`
--
ALTER TABLE `tbusuarios_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbusuarios_respaldo`
--
ALTER TABLE `tbusuarios_respaldo`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbusuarios_user_permissions`
--
ALTER TABLE `tbusuarios_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_boards_usuarios_documento` FOREIGN KEY (`user_id`) REFERENCES `tbusuarios` (`documento`);

--
-- Filtros para la tabla `tbconsumos`
--
ALTER TABLE `tbconsumos`
  ADD CONSTRAINT `tbConsumos_id_Producto_id_20a209a1_fk_tbProducto_id` FOREIGN KEY (`id_Producto_id`) REFERENCES `tbproducto` (`id`),
  ADD CONSTRAINT `tbConsumos_id_Reserva_id_86a94693_fk_tbReserva_id` FOREIGN KEY (`id_Reserva_id`) REFERENCES `tbreserva` (`id`),
  ADD CONSTRAINT `tbConsumos_id_Servicio_id_dfe0d2de_fk_tbServicio_id` FOREIGN KEY (`id_Servicio_id`) REFERENCES `tbservicio` (`id`);

--
-- Filtros para la tabla `tbfactura`
--
ALTER TABLE `tbfactura`
  ADD CONSTRAINT `tbFactura_id_Reserva_id_367f12ac_fk_tbReserva_id` FOREIGN KEY (`id_Reserva_id`) REFERENCES `tbreserva` (`id`);

--
-- Filtros para la tabla `tbhabitacion`
--
ALTER TABLE `tbhabitacion`
  ADD CONSTRAINT `boards_habitacion_tipo_id_dbf12ee4_fk_boards_tipohabitacion_id` FOREIGN KEY (`tipo_id`) REFERENCES `tbtipohabitacion` (`id`);

--
-- Filtros para la tabla `tbproducto`
--
ALTER TABLE `tbproducto`
  ADD CONSTRAINT `boards_producto_id_tipo_id_103a76ad_fk_boards_tipoproducto_id` FOREIGN KEY (`id_tipo_id`) REFERENCES `tbtipoproducto` (`id`);

--
-- Filtros para la tabla `tbreserva`
--
ALTER TABLE `tbreserva`
  ADD CONSTRAINT `boards_reserva_documento_id_9af1d711_fk_boards_us` FOREIGN KEY (`documento_id`) REFERENCES `tbusuarios` (`documento`),
  ADD CONSTRAINT `boards_reserva_nro_habitacion_id_083b074e_fk_boards_ha` FOREIGN KEY (`nro_habitacion_id`) REFERENCES `tbhabitacion` (`numero`);

--
-- Filtros para la tabla `tbservicio`
--
ALTER TABLE `tbservicio`
  ADD CONSTRAINT `boards_servicio_id_tipo_id_cdf79b7d_fk_boards_tiposervicio_id` FOREIGN KEY (`id_tipo_id`) REFERENCES `tbtiposervicio` (`id`);

--
-- Filtros para la tabla `tbusuarios`
--
ALTER TABLE `tbusuarios`
  ADD CONSTRAINT `tbUsuarios_tipo_id_bec18f14_fk_tbTipoUsuario_id` FOREIGN KEY (`tipo_id`) REFERENCES `tbtipousuario` (`id`);

--
-- Filtros para la tabla `tbusuarios_groups`
--
ALTER TABLE `tbusuarios_groups`
  ADD CONSTRAINT `boards_usuarios_grou_usuarios_id_e6a29cff_fk_boards_us` FOREIGN KEY (`usuarios_id`) REFERENCES `tbusuarios` (`documento`),
  ADD CONSTRAINT `boards_usuarios_groups_group_id_a6a70007_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `tbusuarios_user_permissions`
--
ALTER TABLE `tbusuarios_user_permissions`
  ADD CONSTRAINT `boards_usuarios_user_permission_id_ea52d3a8_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `boards_usuarios_user_usuarios_id_350de237_fk_boards_us` FOREIGN KEY (`usuarios_id`) REFERENCES `tbusuarios` (`documento`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
