-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-06-2022 a las 04:13:00
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `torneo_league_of_legends`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aplicaciones_equipo`
--

CREATE TABLE `aplicaciones_equipo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `region` varchar(5) NOT NULL,
  `partidas_ganadas` smallint(5) UNSIGNED NOT NULL CHECK (`partidas_ganadas` >= 0),
  `partidas_perdidas` smallint(5) UNSIGNED NOT NULL CHECK (`partidas_perdidas` >= 0),
  `imagen` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `aplicaciones_equipo`
--

INSERT INTO `aplicaciones_equipo` (`id`, `nombre`, `region`, `partidas_ganadas`, `partidas_perdidas`, `imagen`) VALUES
(2, 'TEAM VISION', 'EUW', 5, 4, 'imagenes/eq3.png'),
(3, 'Destierro TEAM', 'LAN', 3, 4, 'imagenes/eq2.png'),
(4, 'S4vitar', 'LAS', 5, 3, 'imagenes/eq1.png'),
(5, 'Relojeros', 'LAN', 3, 2, 'imagenes/zilean_JO4rWkh.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aplicaciones_integrantes`
--

CREATE TABLE `aplicaciones_integrantes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(15) NOT NULL,
  `posicion` varchar(10) NOT NULL,
  `pais` varchar(20) NOT NULL,
  `equipo` varchar(20) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `aplicaciones_integrantes`
--

INSERT INTO `aplicaciones_integrantes` (`id`, `nombre`, `posicion`, `pais`, `equipo`, `imagen`) VALUES
(1, 'kalipso', 'Mid', 'Korea', 'TEAM VISION', 'imagenes/invocador.png'),
(3, 'ZzTop', 'Top', 'EEUU', 'Destierro TEAM', 'imagenes/invocador_GpWDgKq.png'),
(4, 'Kalipso', 'Mid', 'korea', 'S4vitar', 'imagenes/invocador_eBoeSWH.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aplicaciones_partidas`
--

CREATE TABLE `aplicaciones_partidas` (
  `id` bigint(20) NOT NULL,
  `equipo1` varchar(20) NOT NULL,
  `equipo2` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add equipo', 7, 'add_equipo'),
(26, 'Can change equipo', 7, 'change_equipo'),
(27, 'Can delete equipo', 7, 'delete_equipo'),
(28, 'Can view equipo', 7, 'view_equipo'),
(29, 'Can add integrantes', 8, 'add_integrantes'),
(30, 'Can change integrantes', 8, 'change_integrantes'),
(31, 'Can delete integrantes', 8, 'delete_integrantes'),
(32, 'Can view integrantes', 8, 'view_integrantes'),
(33, 'Can add partidas', 9, 'add_partidas'),
(34, 'Can change partidas', 9, 'change_partidas'),
(35, 'Can delete partidas', 9, 'delete_partidas'),
(36, 'Can view partidas', 9, 'view_partidas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$320000$NFCiXEkO0DhvgZ7qcNrT7g$bKwFXTkVM8SrBNoWt8jpKleScmhdbiQKqFMFIA4g++U=', '2022-06-25 06:33:02.754688', 1, 'admin', '', '', 'f4cku23.n@gmail.com', 1, 1, '2022-06-25 06:31:41.610098');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-06-25 06:37:09.485784', '1', 'Equipo object (1)', 1, '[{\"added\": {}}]', 7, 1),
(2, '2022-06-25 06:38:45.516341', '2', 'Equipo object (2)', 1, '[{\"added\": {}}]', 7, 1),
(3, '2022-06-25 06:39:12.453087', '3', 'Equipo object (3)', 1, '[{\"added\": {}}]', 7, 1),
(4, '2022-06-25 07:13:20.255037', '1', 'Nombre: kalipso - Posicion: Mid - Pais: Korea - Equipo: TEAM VISION', 1, '[{\"added\": {}}]', 8, 1),
(5, '2022-06-25 07:13:52.963669', '2', 'Nombre: 0kill - Posicion: Supp - Pais: Japon - Equipo: Equipo ONE', 1, '[{\"added\": {}}]', 8, 1),
(6, '2022-06-25 07:14:43.551289', '3', 'Nombre: ZzTop - Posicion: Top - Pais: EEUU - Equipo: Destierro TEAM', 1, '[{\"added\": {}}]', 8, 1),
(7, '2022-06-25 07:27:50.860423', '1', 'Nombre: Equipo ONE - Region: LAS', 3, '', 7, 1),
(8, '2022-06-25 07:29:59.383087', '4', 'Nombre: S4vitar - Region: LAS', 1, '[{\"added\": {}}]', 7, 1),
(9, '2022-06-25 07:31:01.724690', '2', 'Nombre: 0kill - Posicion: Supp - Pais: Japon - Equipo: Equipo ONE', 3, '', 8, 1),
(10, '2022-06-25 07:31:35.463605', '4', 'Nombre: Kalipso - Posicion: Mid - Pais: korea - Equipo: S4vitar', 1, '[{\"added\": {}}]', 8, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(7, 'Aplicaciones', 'equipo'),
(8, 'Aplicaciones', 'integrantes'),
(9, 'Aplicaciones', 'partidas'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'Aplicaciones', '0001_initial', '2022-06-25 06:23:27.214807'),
(2, 'contenttypes', '0001_initial', '2022-06-25 06:23:29.001370'),
(3, 'auth', '0001_initial', '2022-06-25 06:23:43.165882'),
(4, 'admin', '0001_initial', '2022-06-25 06:23:46.357635'),
(5, 'admin', '0002_logentry_remove_auto_add', '2022-06-25 06:23:46.454934'),
(6, 'admin', '0003_logentry_add_action_flag_choices', '2022-06-25 06:23:46.601886'),
(7, 'contenttypes', '0002_remove_content_type_name', '2022-06-25 06:23:47.797518'),
(8, 'auth', '0002_alter_permission_name_max_length', '2022-06-25 06:23:49.707173'),
(9, 'auth', '0003_alter_user_email_max_length', '2022-06-25 06:23:50.056028'),
(10, 'auth', '0004_alter_user_username_opts', '2022-06-25 06:23:50.140737'),
(11, 'auth', '0005_alter_user_last_login_null', '2022-06-25 06:23:51.358616'),
(12, 'auth', '0006_require_contenttypes_0002', '2022-06-25 06:23:51.399320'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2022-06-25 06:23:51.476331'),
(14, 'auth', '0008_alter_user_username_max_length', '2022-06-25 06:23:51.714331'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2022-06-25 06:23:51.958302'),
(16, 'auth', '0010_alter_group_name_max_length', '2022-06-25 06:23:52.361454'),
(17, 'auth', '0011_update_proxy_permissions', '2022-06-25 06:23:52.423457'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2022-06-25 06:23:52.604457'),
(19, 'sessions', '0001_initial', '2022-06-25 06:23:53.532283');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('3so0yck0l0fqk5245jtzr5piu1h57p9f', '.eJxVjDsOwjAQBe_iGllZgn-U9JzB2vWucQDZUpxUiLtDpBTQvpl5LxVxXUpcu8xxYnVWoA6_G2F6SN0A37Hemk6tLvNEelP0Tru-NpbnZXf_Dgr28q2zeHtyngcgA4DMDkUwSQAOJMiUaMwZgkg4-sEbFyijG42ATUGcVe8PHEA5Og:1o4zLq:OyxkE8HZLdGNAval821oSgLmTOu87KdGEsP7VuY7EZo', '2022-07-09 06:33:02.840643');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aplicaciones_equipo`
--
ALTER TABLE `aplicaciones_equipo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `aplicaciones_integrantes`
--
ALTER TABLE `aplicaciones_integrantes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `aplicaciones_partidas`
--
ALTER TABLE `aplicaciones_partidas`
  ADD PRIMARY KEY (`id`);

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
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

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
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `aplicaciones_equipo`
--
ALTER TABLE `aplicaciones_equipo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `aplicaciones_integrantes`
--
ALTER TABLE `aplicaciones_integrantes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `aplicaciones_partidas`
--
ALTER TABLE `aplicaciones_partidas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

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
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
