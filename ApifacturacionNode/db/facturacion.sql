-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-07-2023 a las 02:01:59
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
-- Base de datos: `facturacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`) VALUES
(1, 'Lacteos'),
(2, 'Carnes frias Zenu');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombres` varchar(25) NOT NULL,
  `apellidos` varchar(25) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `email` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombres`, `apellidos`, `direccion`, `telefono`, `email`) VALUES
(1, 'Reuben', 'Hurley', 'Ap #326-7441 Auctor, Street', '(+57)3722775564', 'pede@google.net'),
(2, 'Dorian', 'Robinson', 'Ap #245-4547 Vehicula St.', '(+57)3274084816', 'magna@yahoo.com'),
(3, 'Uriel Jesus', 'Boyle Avila', '472-1167 Fermentum St.', '(+57)3272819218', 'elit.dictum@yahoo.edu'),
(4, 'Bradley', 'Mcneil', '648-4184 Donec Street', '(+57)3253291608', 'lorem.semper@yahoo.couk'),
(5, 'Jada', 'Singleton', 'Ap #743-3633 Aliquet Avenue', '(+57)3661443684', 'lorem.vitae.odio@hotmail.edu'),
(6, 'Vernon', 'Vincent', '1536 Rutrum Street', '(+57)3506117271', 'tristique.ac@yahoo.net'),
(7, 'Benedict', 'Velazquez', 'Ap #718-3495 Lorem Av.', '(+57)3704098254', 'vel@icloud.net'),
(8, 'Caldwell', 'Abbott', '665-2606 Nibh. Rd.', '(+57)3771276580', 'adipiscing.non@icloud.org'),
(9, 'Roanna', 'Jenkins', 'P.O. Box 145, 9470 Odio Rd.', '(+57)3547718295', 'in.tempus@protonmail.couk'),
(10, 'Lucius', 'Mcconnell', '772-2623 Sem Rd.', '(+57)3908228672', 'augue.ut@yahoo.net'),
(11, 'Alika', 'Winters', '8677 Suspendisse Road', '(+57)3201269144', 'nulla.eget@aol.com'),
(12, 'Gretchen', 'Ramirez', '800-2764 Quis Av.', '(+57)3773102876', 'non.feugiat.nec@google.com'),
(13, 'Cameron', 'Barnes', 'P.O. Box 949, 9768 Sed Avenue', '(+57)3337651894', 'ornare.libero@aol.net'),
(14, 'Jacob', 'Bond', 'Ap #920-2989 Ante Rd.', '(+57)3406287814', 'ligula.donec.luctus@hotmail.com'),
(15, 'Zeph', 'Hubbard', 'Ap #425-6609 Parturient St.', '(+57)3121013741', 'tincidunt.nibh.phasellus@aol.net'),
(16, 'Iris', 'Johns', 'Ap #459-1903 Duis Road', '(+57)3756514443', 'mauris.erat.eget@google.couk'),
(17, 'Colby', 'Holden', 'P.O. Box 143, 6342 Nulla Street', '(+57)3985295453', 'dui.fusce.aliquam@hotmail.edu'),
(18, 'Colt', 'Diaz', '716-2365 Egestas Rd.', '(+57)3769616781', 'velit.pellentesque.ultricies@aol.ca'),
(19, 'Lee', 'English', '912-2583 Integer Rd.', '(+57)3617564234', 'odio.nam@google.ca'),
(20, 'Alfonso', 'Walters', '160-6071 Nisl. St.', '(+57)3471133374', 'non.lacinia@hotmail.ca'),
(21, 'Winter', 'Reeves', 'Ap #204-2455 Luctus Rd.', '(+57)3585496611', 'donec.vitae@aol.org'),
(22, 'Halla', 'Benjamin', '129-3382 Scelerisque Av.', '(+57)3874852286', 'pellentesque.eget.dictum@hotmail.net'),
(23, 'Felix', 'Solomon', 'Ap #579-7089 Vel, Avenue', '(+57)3451165681', 'risus.quis@icloud.org'),
(24, 'Hanna', 'Owen', '821-2439 Magna. Rd.', '(+57)3153635695', 'enim.mi.tempor@icloud.edu'),
(25, 'Maite', 'Howell', '172-4796 Aliquet St.', '(+57)3066927718', 'nisi.aenean@aol.ca'),
(26, 'Ilanys Maria', 'Lyons', '679-8685 Magna. St.', '(+57)3768352495', 'penatibus.et@hotmail.ca'),
(27, 'Davis', 'Park', 'Ap #177-9683 Dolor. St.', '(+57)3866166156', 'nam.consequat@aol.com'),
(28, 'Barrett', 'Osborne', '684-6844 Euismod St.', '(+57)3857654315', 'sed.orci@google.edu'),
(29, 'Anne', 'Pittman', 'P.O. Box 334, 1140 Faucibus Avenue', '(+57)3500895783', 'ipsum@protonmail.org'),
(30, 'Brynne', 'Gibson', 'Ap #620-8195 Sed Av.', '(+57)3748363683', 'mauris@icloud.org'),
(31, 'Leo', 'Walters', '2507 Dapibus Street', '(+57)3614491778', 'fermentum.fermentum@yahoo.ca'),
(32, 'Jennifer', 'Walter', 'Ap #584-5984 Ut St.', '(+57)3592333576', 'leo.elementum@outlook.com'),
(33, 'Dacey', 'Sellers', 'P.O. Box 955, 6767 Feugiat. Ave', '(+57)3973621795', 'vivamus.nibh@aol.org'),
(34, 'Ryan', 'Hooper', 'Ap #998-7066 Maecenas Rd.', '(+57)3593767245', 'velit.aliquam@google.couk'),
(35, 'Beau', 'Herring', '870-2496 Faucibus Ave', '(+57)3484066712', 'fermentum.risus@google.org'),
(36, 'Courtney', 'Terry', '123-8234 Varius St.', '(+57)3397362652', 'dui.cras.pellentesque@outlook.com'),
(37, 'Reese', 'Rollins', '9617 Ut Av.', '(+57)3767086554', 'nunc.risus@hotmail.net'),
(38, 'Laith', 'Hensley', 'P.O. Box 214, 8255 Lectus St.', '(+57)3228324773', 'mollis.duis@icloud.net'),
(39, 'Graham', 'Lynch', '3141 Eu Street', '(+57)3028932597', 'massa.mauris@yahoo.ca'),
(40, 'Stuart', 'Berg', 'Ap #896-4456 Ligula. Rd.', '(+57)3783085582', 'accumsan.sed@hotmail.org'),
(41, 'August', 'Mcmillan', '7435 Posuere Rd.', '(+57)3688152879', 'dolor@outlook.net'),
(42, 'Coby', 'Moran', '445-9886 Iaculis Street', '(+57)3405141573', 'lectus.rutrum@yahoo.edu'),
(43, 'Imelda', 'Leblanc', 'P.O. Box 880, 5961 Nam St.', '(+57)3858321308', 'ultrices.posuere.cubilia@aol.couk'),
(44, 'Alan', 'Blanchard', 'P.O. Box 680, 7468 Vulputate, Street', '(+57)3768626190', 'pellentesque.habitant@aol.couk'),
(45, 'Inez', 'Roy', 'Ap #308-1054 Vel, Rd.', '(+57)3767208916', 'velit.cras@icloud.ca'),
(46, 'Cooper', 'Knox', 'Ap #124-1604 Enim. Av.', '(+57)3522143609', 'ipsum.dolor@hotmail.ca'),
(47, 'Nissim', 'Dillon', '3248 Primis Rd.', '(+57)3635493748', 'sed@icloud.couk'),
(48, 'Colorado', 'Barker', 'Ap #945-8262 Donec Avenue', '(+57)3595468428', 'a@icloud.couk'),
(49, 'Ryder', 'Calhoun', 'Ap #156-3917 Lectus St.', '(+57)3221140738', 'dui.fusce@yahoo.com'),
(50, 'Wendy', 'Flores', 'Ap #436-1967 Ut Avenue', '(+57)3255462152', 'vestibulum.accumsan.neque@hotmail.ca'),
(51, 'Felicia', 'Mckenzie', '336-6254 Dolor Road', '(+57)3683749688', 'neque@protonmail.couk'),
(52, 'Basia', 'Foster', '775-1075 Maecenas Rd.', '(+57)3521718027', 'sociis.natoque@hotmail.couk'),
(53, 'Victoria', 'Grimes', 'Ap #601-1538 Tincidunt Street', '(+57)3476204747', 'bibendum.sed@yahoo.ca'),
(54, 'Odessa', 'Reeves', 'Ap #652-9633 Vestibulum, Av.', '(+57)3665677444', 'nullam@outlook.ca'),
(55, 'Ezekiel', 'Aguilar', 'Ap #725-4218 Metus. St.', '(+57)3781294661', 'mollis.vitae@aol.ca'),
(56, 'Fitzgerald', 'Barnett', '7569 Nunc St.', '(+57)3234875510', 'dis.parturient@hotmail.com'),
(57, 'Cain', 'Hood', '348-701 Sagittis. Rd.', '(+57)3394128561', 'nunc@aol.ca'),
(58, 'Piper', 'Curry', 'Ap #309-4042 Luctus Rd.', '(+57)3696892716', 'ut.mi@protonmail.couk'),
(59, 'Freya', 'Cote', 'Ap #821-2193 Nulla St.', '(+57)3565766527', 'urna.nec@icloud.edu'),
(60, 'TaShya', 'Mcconnell', '701-8578 Aliquam Rd.', '(+57)3142340673', 'eleifend.non@google.ca'),
(61, 'Dieter', 'Mayer', 'P.O. Box 433, 9224 Nascetur Avenue', '(+57)3230553555', 'ipsum.primis@icloud.net'),
(62, 'Adrian', 'Barker', 'P.O. Box 277, 9170 Auctor Avenue', '(+57)3481932470', 'faucibus.leo.in@icloud.ca'),
(63, 'Dieter', 'Hewitt', '448-6438 Hendrerit Street', '(+57)3371927454', 'vitae@aol.ca'),
(64, 'Hiram', 'Rodgers', 'Ap #558-3930 Malesuada Rd.', '(+57)3081051160', 'molestie.in@yahoo.edu'),
(65, 'Lane', 'Perry', 'Ap #933-5417 Maecenas Street', '(+57)3604721816', 'consectetuer.adipiscing@protonmail.com'),
(66, 'Molly', 'Hatfield', 'Ap #446-7838 Mauris Road', '(+57)3171587224', 'arcu.curabitur@yahoo.com'),
(67, 'Suki', 'Atkinson', 'Ap #708-6346 Nec, Rd.', '(+57)3453752273', 'convallis@hotmail.edu'),
(68, 'Fuller', 'Duncan', 'P.O. Box 614, 9967 Eros. Street', '(+57)3733115616', 'nascetur.ridiculus.mus@google.net'),
(69, 'Lawrence', 'Rowe', '940-8646 Turpis. St.', '(+57)3142448368', 'dui@yahoo.couk'),
(70, 'Joan', 'Jenkins', '950-4527 Class Av.', '(+57)3456507738', 'ut.aliquam.iaculis@yahoo.edu'),
(71, 'Sean', 'Wheeler', '1285 Natoque Rd.', '(+57)3817171956', 'ridiculus.mus.proin@icloud.com'),
(72, 'Bradley', 'Thornton', 'P.O. Box 586, 4527 Non, Rd.', '(+57)3242652483', 'in.faucibus@icloud.com'),
(73, 'Shellie', 'Kaufman', 'Ap #847-9367 Cum Rd.', '(+57)3808464595', 'mattis.cras@outlook.org'),
(74, 'Winifred', 'Humphrey', '3378 Sit St.', '(+57)3041368263', 'metus.sit@hotmail.org'),
(75, 'Orla', 'Mason', '597-1352 Molestie Rd.', '(+57)3415075772', 'imperdiet.non@hotmail.com'),
(76, 'Lillian', 'Spencer', '398-1998 Sed Avenue', '(+57)3357163464', 'dignissim.maecenas@icloud.ca'),
(77, 'Wynne', 'Jennings', '502-9320 Amet, Road', '(+57)3686467346', 'venenatis.vel@protonmail.ca'),
(78, 'Samson', 'Carr', '195-7219 Phasellus Road', '(+57)3737975612', 'enim.nisl.elementum@yahoo.org'),
(79, 'Wyoming', 'Robinson', '866-5581 Mauris. Rd.', '(+57)3887526432', 'blandit@icloud.couk'),
(80, 'Zephania', 'Joyner', 'P.O. Box 196, 3208 Adipiscing Ave', '(+57)3475144448', 'nullam.nisl@outlook.edu'),
(81, 'Eagan', 'Powell', '581-9915 Eu Rd.', '(+57)3596254849', 'magna@icloud.couk'),
(82, 'Audra', 'Wyatt', '9469 Imperdiet St.', '(+57)3608902128', 'curabitur.consequat@aol.couk'),
(83, 'Callum', 'Wiley', 'P.O. Box 768, 1935 Nisi Street', '(+57)3399447265', 'arcu.vestibulum@icloud.couk'),
(84, 'Hakeem', 'Bright', 'P.O. Box 573, 778 Donec St.', '(+57)3762668235', 'mauris@outlook.org'),
(85, 'Griffith', 'Lowery', '292-5372 Dignissim Ave', '(+57)3418527683', 'vitae@protonmail.ca'),
(86, 'Dieter', 'Walters', 'P.O. Box 338, 979 Hendrerit St.', '(+57)3980982451', 'nulla@icloud.com'),
(87, 'Arsenio', 'Reyes', '281-1193 Vitae St.', '(+57)3455102833', 'ipsum.dolor@protonmail.couk'),
(88, 'Lael', 'Rhodes', '3576 Sem Av.', '(+57)3513156606', 'sem.vitae@protonmail.net'),
(89, 'Rylee', 'Dejesus', 'P.O. Box 222, 3801 Maecenas Avenue', '(+57)3788498432', 'bibendum@hotmail.com'),
(90, 'Gareth', 'Flores', 'P.O. Box 630, 1621 Duis Street', '(+57)3824037346', 'egestas.fusce.aliquet@aol.net'),
(91, 'Iola', 'Winters', '919-1554 Velit Avenue', '(+57)3275533438', 'risus@google.org'),
(92, 'Malik', 'Hernandez', 'Ap #781-7773 Posuere St.', '(+57)3555273952', 'libero.nec.ligula@icloud.com'),
(93, 'Ivory', 'Lindsey', 'Ap #549-2279 Proin St.', '(+57)3157023231', 'nec.malesuada@protonmail.com'),
(94, 'Rigel', 'Stephenson', 'Ap #342-4323 Ipsum Street', '(+57)3164316222', 'adipiscing.ligula.aenean@outlook.ca'),
(95, 'Kylan', 'Combs', '661-4334 Natoque Street', '(+57)3083115099', 'lectus.quis@icloud.com'),
(96, 'Alice', 'Bryant', '465-9167 Auctor Road', '(+57)3921585224', 'semper.tellus@google.couk'),
(97, 'Halee', 'Booth', '145-3968 Auctor Ave', '(+57)3248121124', 'placerat.velit@hotmail.org'),
(98, 'Kasimir', 'Watts', 'Ap #522-2984 Hendrerit Road', '(+57)3351439761', 'nec@icloud.couk'),
(99, 'Blake', 'Cabrera', 'P.O. Box 244, 8364 Curae Ave', '(+57)3937042666', 'velit@yahoo.net'),
(100, 'Alden', 'Bruce', 'Ap #795-1124 Neque Avenue', '(+57)3768064670', 'netus.et@yahoo.com'),
(101, 'Libby', 'Ferguson', '813-7006 Vestibulum, Rd.', '(+57)3880856311', 'ipsum@outlook.couk'),
(102, 'Meghan', 'Dunlap', '877-1703 Vivamus Avenue', '(+57)3428208733', 'malesuada.fames.ac@google.ca'),
(103, 'Burke', 'Nicholson', '737-3792 In Rd.', '(+57)3563854628', 'amet.metus.aliquam@yahoo.org'),
(104, 'Preston', 'Shepherd', '2421 Consectetuer St.', '(+57)3386776743', 'ante@icloud.couk'),
(105, 'Porter', 'Mathis', 'P.O. Box 360, 6225 Vel Rd.', '(+57)3962576682', 'natoque@hotmail.com'),
(106, 'Walker', 'Manning', 'Ap #720-878 Consectetuer St.', '(+57)3312664881', 'imperdiet.erat@icloud.net'),
(107, 'Katelyn', 'Fry', 'Ap #851-4155 Sociosqu Street', '(+57)3868765556', 'dui.nec@icloud.org'),
(108, 'Burton', 'Wall', 'Ap #428-9539 Sem. Avenue', '(+57)3425552132', 'adipiscing.enim@yahoo.ca'),
(109, 'Ava', 'Barry', 'Ap #779-1177 Torquent Av.', '(+57)3241727772', 'tristique.neque@yahoo.ca'),
(110, 'Blossom', 'Collins', 'Ap #668-3164 Augue, Avenue', '(+57)3418392232', 'sed.est@outlook.edu'),
(111, 'Kadeem', 'Mullins', 'Ap #426-7874 Diam Avenue', '(+57)3266387213', 'ac@icloud.couk'),
(112, 'Wylie', 'Young', 'Ap #947-3476 Mi St.', '(+57)3732621271', 'purus.gravida@aol.org'),
(113, 'Vance', 'Rodgers', 'Ap #955-9508 Felis. Ave', '(+57)3580343720', 'tempor.lorem.eget@google.couk'),
(114, 'Bryar', 'Ball', '529-6899 Nonummy St.', '(+57)3399468158', 'eu.odio.phasellus@outlook.com'),
(115, 'Zachary', 'Cantu', 'Ap #426-8833 Elit, Street', '(+57)3586780453', 'lobortis.nisi@google.ca'),
(116, 'Dawn', 'Cooley', 'Ap #830-3633 Dignissim. Rd.', '(+57)3269561247', 'mauris.quis@hotmail.edu'),
(117, 'Galena', 'Avery', '771 Dui. St.', '(+57)3634655183', 'sociis.natoque@icloud.ca'),
(118, 'Kimberly', 'Atkins', 'Ap #353-950 Sit Street', '(+57)3454987612', 'sed@outlook.com'),
(119, 'Geoffrey', 'Rivera', '288-724 Ut St.', '(+57)3851534189', 'id.magna.et@icloud.net'),
(120, 'Dana', 'Andrews', '6850 Commodo Street', '(+57)3721996479', 'orci.quis.lectus@google.couk'),
(121, 'Uriel Jesus', 'Boyle Avila', '472-1167 Fermentum St.', '(+57)3272819218', 'elit.dictum@yahoo.edu');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalles`
--

CREATE TABLE `detalles` (
  `id` int(11) NOT NULL,
  `facturas_id` int(11) NOT NULL,
  `productos_id` int(11) NOT NULL,
  `precio` double NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detalles`
--

INSERT INTO `detalles` (`id`, `facturas_id`, `productos_id`, `precio`, `cantidad`) VALUES
(1, 1, 3, 49900, 1),
(2, 1, 2, 17900, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE `facturas` (
  `id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `clientes_id` int(11) NOT NULL,
  `vendedor_id` int(11) NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `facturas`
--

INSERT INTO `facturas` (`id`, `fecha`, `clientes_id`, `vendedor_id`, `total`) VALUES
(1, '2023-03-15', 11, 7, 67800);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` double NOT NULL,
  `categorias_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendedor`
--

CREATE TABLE `vendedor` (
  `id` int(11) NOT NULL,
  `nombres` varchar(25) NOT NULL,
  `apellidos` varchar(25) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `email` varchar(60) NOT NULL,
  `salario` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `vendedor`
--

INSERT INTO `vendedor` (`id`, `nombres`, `apellidos`, `direccion`, `telefono`, `email`, `salario`) VALUES
(1, 'William', 'Richardson', '168-3321 Natoque St.', '(+57)3802508716', 'laoreet.ipsum@hotmail.org', 49146170),
(2, 'Jorden', 'Sims', '894-3913 Lobortis Street', '(+57)3943673619', 'ac.nulla@hotmail.net', 22937900),
(3, 'Destiny', 'Pugh', '998-5010 Laoreet, St.', '(+57)3780385966', 'lorem.fringilla@hotmail.ca', 10324399),
(4, 'Zephr', 'Snyder', 'Ap #541-4807 Convallis Street', '(+57)3040599537', 'auctor.vitae@hotmail.ca', 22441292),
(5, 'Graiden', 'Blair', '468-6957 Sapien Avenue', '(+57)3453525821', 'nec.ante@aol.ca', 12856563),
(6, 'Iona', 'Walls', '6452 In Avenue', '(+57)3333108302', 'ac.urna@yahoo.net', 40691462),
(7, 'Dieter', 'Green', 'P.O. Box 491, 8957 Euismod Rd.', '(+57)3592120454', 'mauris.rhoncus@outlook.org', 21552371),
(8, 'Wyatt', 'Riggs', 'Ap #482-5153 Vivamus St.', '(+57)3683637343', 'magna.sed@hotmail.edu', 3193493),
(9, 'Noel', 'Robinson', 'Ap #266-4066 Sit Rd.', '(+57)3531437361', 'pede.malesuada@yahoo.couk', 8827508),
(10, 'Darius', 'Faulkner', 'P.O. Box 790, 7440 Ornare Av.', '(+57)3247851886', 'aliquam.erat@outlook.ca', 7735092);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalles`
--
ALTER TABLE `detalles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `vendedor`
--
ALTER TABLE `vendedor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT de la tabla `detalles`
--
ALTER TABLE `detalles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `facturas`
--
ALTER TABLE `facturas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `vendedor`
--
ALTER TABLE `vendedor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
