-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2023 at 12:56 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `review`
--

-- --------------------------------------------------------

--
-- Table structure for table `preferences`
--

CREATE TABLE `preferences` (
  `pref_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `cuisine` varchar(100) NOT NULL,
  `price_range` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `dietary` varchar(100) NOT NULL,
  `flavor` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `preferences`
--

INSERT INTO `preferences` (`pref_id`, `user_id`, `cuisine`, `price_range`, `location`, `dietary`, `flavor`) VALUES
(1, 12, 'italian', '£', 'london', 'vegetarian', 'spicy'),
(2, 12, 'mexican', '£', 'london', 'gluten-free', 'sour'),
(3, 12, 'italian', '£', 'london', 'gluten-free', 'spicy'),
(4, 12, 'italian', '£', 'london', 'none', 'any'),
(5, 12, 'italian', '£', 'london', 'gluten-free', 'spicy');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `r_id` int(6) UNSIGNED NOT NULL,
  `r_name` varchar(100) NOT NULL,
  `r_address` varchar(100) NOT NULL,
  `r_by` int(50) DEFAULT NULL,
  `r_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`r_id`, `r_name`, `r_address`, `r_by`, `r_date`) VALUES
(23, 'PizzaExpress', 'Bristol', 12, '2023-04-25 12:47:39'),
(25, 'Gustto', 'Bristol', 12, '2023-05-03 14:41:00');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `re_id` int(6) UNSIGNED NOT NULL,
  `r_name` varchar(100) NOT NULL,
  `r_address` varchar(100) NOT NULL,
  `review` varchar(500) NOT NULL,
  `r_by` int(50) DEFAULT NULL,
  `re_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`re_id`, `r_name`, `r_address`, `review`, `r_by`, `re_date`) VALUES
(35, 'PizzaExpress', 'Bristol', '1) The vegan options were good.\r\n2) Good choice for parties next time.', 12, '2023-04-25 12:47:39'),
(36, 'Gustto', 'Bristol', 'There was no gluten free options in the menu although it recommended in the website', 12, '2023-05-03 14:41:00');

-- --------------------------------------------------------

--
-- Table structure for table `r_restaurant`
--

CREATE TABLE `r_restaurant` (
  `r_id` int(11) NOT NULL,
  `r_name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `price_range` varchar(10) NOT NULL,
  `cuisine` varchar(255) NOT NULL,
  `dietary` varchar(255) NOT NULL,
  `flavor` varchar(255) NOT NULL,
  `rating` decimal(1,0) NOT NULL,
  `website` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `r_restaurant`
--

INSERT INTO `r_restaurant` (`r_id`, `r_name`, `location`, `price_range`, `cuisine`, `dietary`, `flavor`, `rating`, `website`, `image`) VALUES
(1, 'Trullo', 'London', '£', 'Italian', 'Not Required', 'Any', 4, 'www.trullo.co.uk', 'italian.jpg'),
(2, 'Machetla', 'London', '£', 'Italian', 'Not Required', 'Any', 3, 'www.machetla.co.uk', 'italian.jpg'),
(3, 'Bella Ciao', 'London', '£', 'Italian', 'Vegetarian', 'Savory', 4, ' www.bellaciao.co.uk', 'italian.jpg'),
(4, 'Luca', 'London', '£', 'Italian', 'Vegetarian', 'Savory', 4, 'www.luca.co.uk', 'italian.jpg'),
(5, 'Artuisi', 'London', '£', 'Italian', 'Vegetarian', 'Spicy', 2, 'www.artuisi.co.uk', 'italian.jpg'),
(6, 'Lupo', 'Manchester', '£', 'Italian', 'Vegan', 'Any', 4, 'www.lupo.co.uk', 'italian.jpg'),
(7, 'Ristorante Italia', 'London', '£', 'Italian', 'Vegan', 'Sweet', 2, 'www.ristorante.co.u', 'italian.jpg'),
(8, 'The Italian Kitchen', 'Manchester', '£', 'Italian', 'Vegan', 'Sweet', 3, 'www.trullo.co.uk', 'italian.jpg'),
(9, 'Mama Mia', 'Manchester', '£', 'Italian', 'Vegan', 'Spicy', 3, 'www.mamamia.co.uk', 'italian.jpg'),
(10, 'Bella Napoli', 'Manchester', '£', 'Italian', 'Vegan', 'Savory', 4, 'www.bellanapoli.co.uk', 'italian.jpg'),
(11, 'Il Forno', 'Bristol', '£', 'Italian', 'Gluten-Free', 'Any', 4, 'www.ilforno.co.uk', 'italian.jpg'),
(12, 'Pizza Express', 'Bristol', '£', 'Italian', 'Gluten-Free', 'Any', 2, 'www.pizzaexpress.co.uk', 'italian.jpg'),
(13, 'Zizzi', 'Bristol', '£', 'Italian', 'Gluten-Free', 'Savory', 3, 'www.zizzi.co.uk', 'italian.jpg'),
(14, 'La Cucina', 'Bristol', '£', 'Italian', 'Gluten-Free', 'Spicy', 3, 'www.lacucina.co.uk', 'italian.jpg'),
(15, 'Gusto', 'Bristol', '£', 'Italian', 'Gluten-Free', 'Umami', 4, 'www.gusto.co.uk', 'italian.jpg'),
(16, 'El Mariachi', 'London', '£', 'Mexican', 'Not Required', 'Any', 3, 'www.elmariachi.co.uk/', 'mexican.jpg'),
(17, 'MexiCali', 'London', '£', 'Mexican', 'Vegetarian', 'Any', 4, 'www.mexicali.co.uk/', 'mexican.jpg'),
(18, 'Chilango', 'London', '£', 'Mexican', 'Vegetarian', 'Sweet', 4, 'www.chilango.co.uk/', 'mexican.jpg'),
(19, 'Breddos Tacos', 'London', '££', 'Mexican', 'Vegetarian', 'Savory', 4, 'www.breddostacos.com/', 'mexican.jpg'),
(20, 'Lupita', 'London', '££', 'Mexican', 'Vegetarian', 'Spicy', 3, 'www.lupita.co.uk', 'mexican.jpg'),
(21, 'Wahaca', 'London', '££', 'Mexican', 'Vegetarian', 'Umami', 4, 'www.wahaca.co.uk/', 'mexican.jpg'),
(22, 'Club Mexicana', 'London', '££', 'Mexican', 'Vegan', 'Any', 5, 'www.clubmexicana.com/', 'mexican.jpg'),
(23, 'Temple of Seitan', 'London', '££', 'Mexican', 'Vegan', 'Sweet', 3, 'www.templeofseitan.co.uk/', 'mexican.jpg'),
(24, 'Honest Burgers', 'London', '££', 'Mexican', 'Vegan', 'Savory', 4, 'www.honestburgers.co.uk/', 'mexican.jpg'),
(25, 'Mestizo', 'London', '££', 'Mexican', 'Vegan', 'Spicy', 4, 'www.mestizomx.com/', 'mexican.jpg'),
(26, 'El Nopal', 'London', '£££', 'Mexican', 'Gluten-free', 'Any', 4, 'www.elnopal.com', 'mexican.jpg'),
(27, 'Los Churros', 'London', '£££', 'Mexican', 'Gluten-free', 'Sweet', 3, 'www.loschurros.com', 'mexican.jpg'),
(28, 'La Cabaña', 'London', '£££', 'Mexican', 'Gluten-free', 'Savory', 5, 'www.lacabana.com', 'mexican.jpg'),
(29, 'El Sombrero', 'London', '£££', 'Mexican', 'Gluten-free', 'Spicy', 4, 'www.elsombrero.com', 'mexican.jpg'),
(30, 'Salsa y Tequila', 'London', '£££', 'Mexican', 'Gluten-free', 'Umami', 4, 'www.salsaytequila.com', 'mexican.jpg'),
(31, 'Bocca di Lupo', 'London', '££', 'Italian', 'Not Required', 'Any', 5, 'https://www.boccadilupo.com/', 'italian.jpg'),
(32, 'Padella', 'London', '£', 'Italian', 'Vegetarian', 'Any', 5, 'https://www.padella.co/', 'italian.jpg'),
(33, 'Osteria Francescana', 'London', '£££', 'Italian', 'Vegetarian', 'Umami', 5, 'https://www.osteriafrancescana.it/', 'italian.jpg'),
(34, 'Trullo', 'London', '££', 'Italian', 'Vegetarian', 'Savory', 4, 'https://www.trullorestaurant.com/', 'italian.jpg'),
(35, 'Cecconis', 'London', '£££', 'Italian', 'Vegetarian', 'Sweet', 4, 'https://www.cecconis.co.uk/', 'italian.jpg'),
(36, 'Pastaio', 'London', '£', 'Italian', 'Vegan', 'Any', 5, 'https://www.pastaio.co.uk/', 'italian.jpg'),
(37, 'Wildflower', 'London', '££', 'Italian', 'Vegan', 'Savory', 4, 'https://www.peckhamwildfood.com/wildflower', 'italian.jpg'),
(38, 'Zia Lucia', 'London', '£', 'Italian', 'Gluten-Free', 'Any', 4, 'https://zialucia.com/', 'italian.jpg'),
(39, 'Pizza Pilgrims', 'London', '£', 'Italian', 'Gluten-Free', 'Savory', 4, 'https://www.pizzapilgrims.co.uk/', 'italian.jpg'),
(40, 'Franco Manca', 'London', '£', 'Italian', 'Gluten-Free', 'Any', 4, 'https://www.francomanca.co.uk/', 'italian.jpg'),
(41, 'San Carlo', 'Manchester', '£££', 'Italian', 'Not Required', 'Any', 4, 'https://sancarlo.co.uk/', 'italian.jpg'),
(42, 'Rosso Restaurant', 'Manchester', '£££', 'Italian', 'Not Required', 'Any', 4, 'https://rossorestaurants.com/', 'italian.jpg'),
(43, 'Australasia', 'Manchester', '£££', 'Italian', 'Not Required', 'Sweet', 3, 'https://australasia.uk.com/', 'italian.jpg'),
(44, 'Piccolino', 'Manchester', '£££', 'Italian', 'Vegetarian', 'Savory', 3, 'https://individualrestaurants.com/piccolino/', 'italian.jpg'),
(45, 'San Rocco', 'Manchester', '££', 'Italian', 'Vegetarian', 'Any', 4, 'https://www.sanrocco.co.uk/', 'italian.jpg'),
(46, 'Gusto', 'Manchester', '££', 'Italian', 'Vegetarian', 'Spicy', 5, 'https://gustorestaurants.uk.com/', 'italian.jpg'),
(47, 'Pesto', 'Manchester', '££', 'Italian', 'Vegan', 'Any', 4, 'https://pestorestaurants.co.uk/', 'italian.jpg'),
(48, 'Zizzi', 'Manchester', '££', 'Italian', 'Vegan', 'Umami', 4, 'https://www.zizzi.co.uk/', 'italian.jpg'),
(49, 'Vapiano', 'Manchester', '££', 'Italian', 'Vegan', 'Sweet', 4, 'https://uk.vapiano.com/', 'italian.jpg'),
(50, 'Pizza Express', 'Manchester', '££', 'Italian', 'Vegan', 'Savory', 4, 'https://www.pizzaexpress.com/', 'italian.jpg'),
(51, 'Pesto', 'Manchester', '££', 'Italian', 'Gluten-free', 'Any', 4, 'https://pestorestaurants.co.uk/', 'italian.jpg'),
(52, 'Piccolino', 'Manchester', '£££', 'Italian', 'Not Required', 'Any', 5, 'https://piccolinorestaurants.com/', 'italian.jpg'),
(53, 'Zizzi', 'Manchester', '££', 'Italian', 'Vegetarian, Gluten-free', 'Savory', 4, 'https://www.zizzi.co.uk/', 'italian.jpg'),
(54, 'San Carlo', 'Manchester', '£££', 'Italian', 'Not Required', 'Umami', 5, 'https://sancarlo.co.uk/', 'italian.jpg'),
(55, 'Carluccio\'s', 'Manchester', '££', 'Italian', 'Vegetarian, Gluten-free', 'Any', 4, 'https://www.carluccios.com/', 'italian.jpg'),
(56, 'Fumo', 'Manchester', '£££', 'Italian', 'Gluten-free', 'Savory', 4, 'https://fumo.uk.com/', 'italian.jpg'),
(57, 'Gusto', 'Manchester', '££', 'Italian', 'Not Required', 'Any', 4, 'https://gustorestaurants.uk.com/', 'italian.jpg'),
(58, 'Pizza Express', 'Manchester', '££', 'Italian', 'Vegetarian, Gluten-free', 'Any', 4, 'https://www.pizzaexpress.com/', 'italian.jpg'),
(59, 'ASK Italian', 'Manchester', '££', 'Italian', 'Vegetarian, Gluten-free', 'Any', 4, 'https://www.askitalian.co.uk/', 'italian.jpg'),
(60, 'Croma', 'Manchester', '££', 'Italian', 'Gluten-free', 'Any', 4, 'https://www.cromapizza.co.uk/', 'italian.jpg'),
(61, 'Pasta Loco', 'London', '£', 'Italian', 'Not Required', 'Any', 5, 'https://pastaloco.co.uk/', 'italian.jpg'),
(62, 'Pasta Loco', 'Manchester', '£', 'Italian', 'Not Required', 'Any', 5, 'https://pastaloco.co.uk/', 'italian.jpg'),
(63, 'Pasta Loco', 'Bristol', '£', 'Italian', 'Not Required', 'Any', 5, 'https://pastaloco.co.uk/', 'italian.jpg'),
(64, 'Bosco Pizzeria', 'Bristol', '££', 'Italian', 'Not Required', 'Savory', 5, 'https://www.boscopizzeria.co.uk/', 'italian.jpg'),
(65, 'Aqua Italia', 'Bristol', '£££', 'Italian', 'Not Required', 'Sweet', 4, 'https://www.aqua-restaurant.com/italia-bristol', 'italian.jpg'),
(66, 'Zerodegrees', 'Bristol', '££', 'Italian', 'Vegetarian', 'Any', 4, 'https://www.zerodegrees.co.uk/', 'italian.jpg'),
(67, 'Al Bacio', 'Bristol', '££', 'Italian', 'Vegetarian', 'Savory', 4, 'https://www.albaciobristol.co.uk/', 'italian.jpg'),
(68, 'Pizzarova', 'Bristol', '££', 'Italian', 'Vegetarian', 'Spicy', 4, 'https://www.pizzarova.com/', 'italian.jpg'),
(69, 'No. 1 Harbourside', 'Bristol', '££', 'Italian', 'Vegan', 'Any', 4, 'https://www.no1harbourside.co.uk/', 'italian.jpg'),
(70, 'Pi Shop', 'Bristol', '£££', 'Italian', 'Vegan', 'Sweet', 4, 'https://www.pishop.co.uk/', 'italian.jpg'),
(71, 'Flow', 'Bristol', '£££', 'Italian', 'Vegan', 'Savory', 4, 'https://www.flowbristol.co.uk/', 'italian.jpg'),
(72, 'Bomboloni', 'Bristol', '£', 'Italian', 'Vegan', 'Umami', 4, 'https://www.bombolonibristol.com/', 'italian.jpg'),
(73, 'La Rocca', 'Bristol', '££', 'Italian', 'Not Required', 'Any', 5, 'https://www.larocca.co.uk/', 'italian.jpg'),
(74, 'Bianchi', 'Bristol', '££', 'Italian', 'Not Required', 'Savory', 4, 'https://www.bianchis.co.uk/', 'italian.jpg'),
(75, 'Prego', 'Bristol', '££', 'Italian', 'Vegetarian', 'Any', 4, 'https://prego-restaurant.co.uk/', 'italian.jpg'),
(76, 'Aqua', 'Bristol', '£££', 'Italian', 'Vegetarian', 'Sweet', 5, 'https://www.aqua-restaurant.com/', 'italian.jpg'),
(77, 'Bella Italia', 'Bristol', '££', 'Italian', 'Vegetarian', 'Savory', 4, 'https://www.bellaitalia.co.uk/', 'italian.jpg'),
(78, 'Carluccio\'s', 'Bristol', '££', 'Italian', 'Vegetarian', 'Umami', 4, 'https://www.carluccios.com/', 'italian.jpg'),
(79, 'Zizzi', 'Bristol', '£££', 'Italian', 'Gluten-Free', 'Any', 4, 'https://www.zizzi.co.uk/', 'italian.jpg'),
(80, 'Pizza Express', 'Bristol', '££', 'Italian', 'Gluten-Free', 'Sweet', 4, 'https://www.pizzaexpress.com/', 'italian.jpg'),
(81, 'ASK Italian', 'Bristol', '££', 'Italian', 'Gluten-Free', 'Savory', 4, 'https://www.askitalian.co.uk/', 'italian.jpg'),
(82, 'Prezzo', 'Bristol', '££', 'Italian', 'Gluten-Free', 'Spicy', 4, 'https://www.prezzorestaurants.co.uk/', 'italian.jpg'),
(83, 'El Mariachi', 'Manchester', '£', 'Mexican', 'Not Required', 'Any', 5, 'https://www.elmariachi.co.uk/', 'mexican.jpg'),
(84, 'MexiCali', 'Manchester', '£', 'Mexican', 'Vegetarian', 'Any', 4, 'https://www.mexicali.co.uk/', 'mexican.jpg'),
(85, 'Chilango', 'Manchester', '££', 'Mexican', 'Vegetarian', 'Sweet', 4, 'https://www.chilango.co.uk/', 'mexican.jpg'),
(86, 'Breddos Tacos', 'Manchester', '££', 'Mexican', 'Vegetarian', 'Savory', 5, 'https://breddostacos.com/', 'mexican.jpg'),
(87, 'Lupita', 'Manchester', '£££', 'Mexican', 'Vegetarian', 'Spicy', 4, 'https://www.lupita.co.uk/', 'mexican.jpg'),
(88, 'Wahaca', 'Manchester', '££', 'Mexican', 'Vegetarian', 'Umami', 4, 'https://www.wahaca.co.uk/', 'mexican.jpg'),
(89, 'Club Mexicana', 'Manchester', '££', 'Mexican', 'Vegan', 'Any', 5, 'https://www.clubmexicana.com/', 'mexican.jpg'),
(90, 'Temple of Seitan', 'Manchester', '£££', 'Mexican', 'Vegan', 'Sweet', 4, 'https://templeofseitan.co.uk/', 'mexican.jpg'),
(91, 'Honest Burgers', 'Manchester', '££', 'Mexican', 'Vegan', 'Savory', 4, 'https://www.honestburgers.co.uk/', 'mexican.jpg'),
(92, 'Mestizo', 'Manchester', '££', 'Mexican', 'Vegan', 'Spicy', 4, 'https://mestizomx.com/', 'mexican.jpg'),
(93, 'Crazy Pedro', 'Manchester', '£', 'Mexican', 'Gluten-Free', 'Any', 4, 'https://crazypedros.co.uk/manchester/', 'mexican.jpg'),
(94, 'Luck, Lust, Liquor & Burn', 'Manchester', '£', 'Mexican', 'Gluten-Free', 'Spicy', 4, 'https://www.lucklustliquorburn.com/manchester/', 'mexican.jpg'),
(95, 'Pancho Burritos', 'Manchester', '££', 'Mexican', 'Gluten-Free', 'Any', 4, 'https://www.panchosburritos.co.uk/', 'mexican.jpg'),
(96, 'Lucha Libre', 'Manchester', '££', 'Mexican', 'Gluten-Free', 'Umami', 5, 'https://www.lucha-libre.co.uk/', 'mexican.jpg'),
(97, 'Barburrito', 'Manchester', '£££', 'Mexican', 'Gluten-Free', 'Savory', 4, 'https://www.barburrito.co.uk/', 'mexican.jpg'),
(98, 'Taco Bell', 'Manchester', '£', 'Mexican', 'Gluten-Free', 'Any', 4, 'https://www.tacobell.co.uk/', 'mexican.jpg'),
(99, 'Tampopo', 'Manchester', '£££', 'Mexican', 'Gluten-Free', 'Sweet', 4, 'https://www.tampopo.co.uk/', 'mexican.jpg'),
(100, 'The Mexican', 'Bristol', '£', 'Mexican', 'Not Required', 'Any', 5, 'https://www.themexican.co.uk/', 'mexican.jpg'),
(101, 'El Rincon', 'Bristol', '££', 'Mexican', 'Vegetarian', 'Any', 4, 'https://www.elrincon.co.uk/', 'mexican.jpg'),
(102, 'Poco Tapas Bar', 'Bristol', '££', 'Mexican', 'Vegetarian', 'Sweet', 4, 'https://pocotapasbar.com/', 'mexican.jpg'),
(103, 'Woky Ko', 'Bristol', '££', 'Mexican', 'Vegetarian', 'Savory', 5, 'https://www.wokyko.com/', 'mexican.jpg'),
(104, 'Tortilla', 'Bristol', '££', 'Mexican', 'Vegetarian', 'Spicy', 4, 'https://www.tortilla.co.uk/', 'mexican.jpg'),
(105, 'Chilango', 'Bristol', '£££', 'Mexican', 'Vegetarian', 'Umami', 4, 'https://www.chilango.co.uk/', 'mexican.jpg'),
(106, 'Club Mexicana', 'Bristol', '££', 'Mexican', 'Vegan', 'Any', 5, 'https://www.clubmexicana.com/', 'mexican.jpg'),
(107, 'Pepenero', 'Bristol', '££', 'Mexican', 'Vegan', 'Sweet', 4, 'https://www.pepenero.co.uk/', 'mexican.jpg'),
(108, 'The Coconut Tree', 'Bristol', '£££', 'Mexican', 'Vegan', 'Savory', 4, 'https://www.thecoconut-tree.com/', 'mexican.jpg'),
(109, 'Masa + Mezcal', 'Bristol', '££', 'Mexican', 'Vegan', 'Spicy', 4, 'https://www.masamezcal.com/', 'mexican.jpg'),
(110, 'Poco Tapas Bar', 'Bristol', '££', 'Mexican', 'Gluten-Free', 'Any', 5, 'https://www.pocotapasbar.com/', 'mexican.jpg'),
(111, 'Masa + Mezcal', 'Bristol', '££', 'Mexican', 'Gluten-Free', 'Savory', 4, 'https://www.masaymezcal.co.uk/', 'mexican.jpg'),
(112, 'Masa', 'Bristol', '£££', 'Mexican', 'Gluten-Free', 'Savory', 4, 'https://www.masal.co.uk/', 'mexican.jpg'),
(113, 'Taco Barra', 'Bristol', '£', 'Mexican', 'Gluten-Free', 'Spicy', 4, 'https://www.tacobarra.co.uk/', 'mexican.jpg'),
(114, 'Tacos', 'Bristol', '£', 'Mexican', 'Gluten-Free', 'Spicy', 4, 'https://www.tacos.co.uk/', 'mexican.jpg'),
(115, 'Mission Burrito', 'Bristol', '£££', 'Mexican', 'Gluten-Free', 'Umami', 4, 'https://missionburrito.co.uk/', 'mexican.jpg'),
(116, 'Kanada-Ya', 'London', '£', 'Japanese', 'Not Required', 'Any', 5, 'https://www.kanada-ya.com/', 'japanese.jpg'),
(117, 'Shoryu Ramen', 'London', '£', 'Japanese', 'Vegetarian', 'Any', 4, 'https://www.shoryuramen.com/', 'japanese.jpg'),
(118, 'Bone Daddies', 'London', '£', 'Japanese', 'Vegetarian', 'Umami', 4, 'https://www.bonedaddies.com/', 'japanese.jpg'),
(119, 'Ippudo London', 'London', '££', 'Japanese', 'Vegetarian', 'Savory', 4, 'https://www.ippudo.co.uk/', 'japanese.jpg'),
(120, 'Tonkotsu', 'London', '££', 'Japanese', 'Vegetarian', 'Spicy', 4, 'https://www.tonkotsu.co.uk/', 'japanese.jpg'),
(121, 'Yashin Ocean House', 'London', '£££', 'Japanese', 'Vegetarian', 'Sweet', 5, 'https://www.yashinocean.com/', 'japanese.jpg'),
(122, 'Eat Tokyo', 'London', '££', 'Japanese', 'Vegan', 'Any', 4, 'https://www.eattokyo.co.uk/', 'japanese.jpg'),
(123, 'Itadaki Zen', 'London', '£££', 'Japanese', 'Vegan', 'Umami', 4, 'https://www.itadakizen-uk.com/', 'japanese.jpg'),
(124, 'Mildreds Camden', 'London', '££', 'Japanese', 'Vegan', 'Savory', 4, 'https://www.mildreds.co.uk/', 'japanese.jpg'),
(125, 'Yorica', 'London', '£££', 'Japanese', 'Vegan', 'Sweet', 4, 'https://www.yorica.com/', 'japanese.jpg'),
(126, 'Yum Bowl', 'London', '£', 'Japanese', 'Gluten-free', 'Any', 4, 'https://yumbowl.co.uk/', 'japanese.jpg'),
(127, 'Matsuba', 'London', '£', 'Japanese', 'Gluten-free', 'Umami', 4, 'https://www.matsubalondon.co.uk/', 'japanese.jpg'),
(128, 'Ichiryu', 'London', '££', 'Japanese', 'Gluten-free', 'Savory', 4, 'https://www.ichiryuudon.com/', 'japanese.jpg'),
(129, 'Engawa', 'London', '££', 'Japanese', 'Gluten-free', 'Any', 5, 'https://engawa.uk/', 'japanese.jpg'),
(130, 'Jidori', 'London', '£', 'Japanese', 'Gluten-free', 'Sweet', 4, 'https://www.jidori.co.uk/', 'japanese.jpg'),
(131, 'Sticks N Sushi', 'London', '£££', 'Japanese', 'Gluten-free', 'Umami', 5, 'https://www.sticksnsushi.co.uk/', 'japanese.jpg'),
(132, 'Kintan', 'London', '££', 'Japanese', 'Gluten-free', 'Savory', 4, 'https://www.kintan.uk/', 'japanese.jpg'),
(133, 'Itadaki Zen', 'London', '££', 'Japanese', 'Gluten-free', 'Any', 5, 'https://www.itadakizen-uk.com/', 'japanese.jpg'),
(134, 'Nobu', 'London', '£££', 'Japanese', 'Gluten-free', 'Umami', 5, 'https://nobuhotels.com/london/', 'japanese.jpg'),
(135, 'Freak Scene', 'London', '££', 'Japanese', 'Gluten-free', 'Spicy', 4, 'https://www.freakscene.london/', 'japanese.jpg'),
(136, 'Yuzu', 'Manchester', '£££', 'Japanese', 'Not Required', 'Any', 5, 'https://www.yuzumanchester.co.uk/', 'japanese.jpg'),
(137, 'Umezushi', 'Manchester', '££', 'Japanese', 'Vegetarian', 'Savory', 5, 'https://www.umezushi.co.uk/', 'japanese.jpg'),
(138, 'Shoryu Ramen', 'Manchester', '££', 'Japanese', 'Vegetarian', 'Umami', 4, 'https://www.shoryuramen.com/', 'japanese.jpg'),
(139, 'Wasabi', 'Manchester', '£', 'Japanese', 'Vegan', 'Any', 4, 'https://wasabi.uk.com/', 'japanese.jpg'),
(140, 'Sanskruti Restaurant', 'Manchester', '££', 'Japanese', 'Vegan', 'Spicy', 4, 'https://www.sanskrutirestaurant.co.uk/', 'japanese.jpg'),
(141, 'Sapporo Teppanyaki', 'Manchester', '£££', 'Japanese', 'Not Required', 'Any', 5, 'https://www.sapporo.co.uk/manchester/', 'japanese.jpg'),
(142, 'Yuzu Kitchen', 'Manchester', '££', 'Japanese', 'Vegetarian', 'Sweet', 4, 'https://yuzukitchen.com/', 'japanese.jpg'),
(143, 'Wagamama', 'Manchester', '£', 'Japanese', 'Vegan', 'Savory', 4, 'https://www.wagamama.com/restaurants/manchester', 'japanese.jpg'),
(144, 'Zumu Sushi', 'Manchester', '££', 'Japanese', 'Not Required', 'Any', 4, 'https://www.zumusushi.com/', 'japanese.jpg'),
(145, 'Yamato Noodle Bar', 'Manchester', '£', 'Japanese', 'Vegetarian', 'Savory', 4, 'https://yamatonoodlebar.co.uk/', 'japanese.jpg'),
(146, 'Shoryu Ramen', 'Manchester', '££', 'Japanese', 'Gluten-Free', 'Any', 5, 'https://www.shoryuramen.com/', 'japanese.jpg'),
(147, 'Tampopo', 'Manchester', '£££', 'Japanese', 'Gluten-Free', 'Savory', 4, 'https://www.tampopo.co.uk/', 'japanese.jpg'),
(148, 'Yuzu', 'Manchester', '££', 'Japanese', 'Gluten-Free', 'Umami', 4, 'https://yuzumanchester.co.uk/', 'japanese.jpg'),
(149, 'Wasabi', 'Manchester', '£', 'Japanese', 'Gluten-Free', 'Any', 5, 'https://wasabi.uk.com/', 'japanese.jpg'),
(150, 'Sapporo Teppanyaki', 'Manchester', '£££', 'Japanese', 'Gluten-Free', 'Savory', 4, 'https://www.sapporo.co.uk/', 'japanese.jpg'),
(151, 'Umezushi', 'Manchester', '£££', 'Japanese', 'Gluten-Free', 'Umami', 4, 'https://www.umezushi.co.uk/', 'japanese.jpg'),
(152, 'Sakana', 'Manchester', '£', 'Japanese', 'Gluten-Free', 'Any', 5, 'https://www.sakanapan-asian.co.uk/', 'japanese.jpg'),
(153, 'Yuzu Kitchen', 'Manchester', '££', 'Japanese', 'Gluten-Free', 'Savory', 4, 'https://www.yuzukitchen.com/', 'japanese.jpg'),
(154, 'Nudo Sushi Box', 'Manchester', '££', 'Japanese', 'Gluten-Free', 'Umami', 4, 'https://www.nudo-sushi.com/', 'japanese.jpg'),
(155, 'Yuzu Japanese Kitchen', 'Manchester', '£', 'Japanese', 'Gluten-Free', 'Any', 4, 'https://yuzujapanesekitchen.com/', 'japanese.jpg'),
(156, 'Yakinori', 'Bristol', '£', 'Japanese', 'Not Required', 'Any', 5, 'https://yakinori.co.uk/', 'japanese.jpg'),
(157, 'Bentoya', 'Bristol', '££', 'Japanese', 'Vegetarian', 'Savory', 4, 'https://bentoyabristol.com/', 'japanese.jpg'),
(158, 'Nomu', 'Bristol', '£', 'Japanese', 'Vegetarian', 'Umami', 4, 'https://www.nomu.uk.com/', 'japanese.jpg'),
(159, 'Wagamama', 'Bristol', '££', 'Japanese', 'Vegetarian', 'Any', 5, 'https://www.wagamama.com/', 'japanese.jpg'),
(160, 'Yo! Sushi', 'Bristol', '£££', 'Japanese', 'Gluten Free', 'Sweet', 4, 'https://yosushi.com/', 'japanese.jpg'),
(161, 'Sticks Sushi', 'Bristol', '£££', 'Japanese', 'Gluten Free', 'Spicy', 4, 'https://sticksnsushi.com/en/', 'japanese.jpg'),
(162, 'Koocha', 'Bristol', '££', 'Japanese', 'Gluten Free', 'Savory', 5, 'https://www.koochavegan.com/', 'japanese.jpg'),
(163, 'Suncraft', 'Bristol', '£', 'Japanese', 'Vegan', 'Umami', 4, 'https://www.suncraft.co.uk/', 'japanese.jpg'),
(164, 'Yatta Sushi', 'Bristol', '££', 'Japanese', 'Vegan', 'Any', 4, 'https://www.yattasushi.com/', 'japanese.jpg'),
(165, 'Wagamama', 'Bristol', '££', 'Japanese', 'Not Required', 'Any', 4, 'https://www.wagamama.com/', 'japanese.jpg'),
(166, 'Noa Japanese Restaurant', 'Bristol', '£££', 'Japanese', 'Vegan', 'Umami', 5, 'https://www.noajapanese.co.uk/', 'japanese.jpg'),
(167, 'Terre à Terre', 'Bristol', '£££', 'Japanese', 'Not Required', 'Any', 4, 'https://terreaterre.co.uk/', 'japanese.jpg'),
(168, 'Tayyabs', 'London', '££', 'Indian', 'Not Required', 'Any', 5, 'https://www.tayyabs.co.uk/', 'indian.jpg'),
(169, 'Brilliant Restaurant', 'London', '££', 'Indian', 'Vegetarian', 'Savory', 4, 'https://www.brilliantrestaurant.com/', 'indian.jpg'),
(170, 'Dishoom', 'London', '££', 'Indian', 'Vegetarian', 'Umami', 5, 'https://www.dishoom.com/', 'indian.jpg'),
(171, 'Rasa', 'London', '££', 'Indian', 'Vegetarian', 'Spicy', 4, 'https://www.rasarestaurants.com/', 'indian.jpg'),
(172, 'Woodlands', 'London', '££', 'Indian', 'Vegetarian', 'Sweet', 4, 'https://www.woodlandsrestaurant.co.uk/', 'indian.jpg'),
(173, 'Chutney Mary', 'London', '£££', 'Indian', 'Vegetarian', 'Any', 5, 'https://www.chutneymary.com/', 'indian.jpg'),
(174, 'Dosa World', 'London', '£', 'Indian', 'Vegan', 'Savory', 4, 'https://www.dosaworld.co.uk/', 'indian.jpg'),
(175, 'Mildreds Dalston', 'London', '££', 'Indian', 'Vegan', 'Umami', 4, 'https://www.mildreds.co.uk/dalston', 'indian.jpg'),
(176, 'Sagar', 'London', '£', 'Indian', 'Vegan', 'Spicy', 4, 'https://www.sagarveg.co.uk/', 'indian.jpg'),
(177, 'Vegan Yes', 'London', '£', 'Indian', 'Vegan', 'Any', 4, 'https://www.veganyes.co.uk/', 'indian.jpg'),
(178, 'Dishoom', 'London', '££', 'Indian', 'Gluten-Free', 'Any', 5, 'https://www.dishoom.com/', 'indian.jpg'),
(179, 'Gymkhana', 'London', '£££', 'Indian', 'Gluten-Free', 'Spicy', 5, 'https://gymkhanalondon.com/', 'indian.jpg'),
(180, 'Tayyabs', 'London', '£', 'Indian', 'Gluten-Free', 'Savory', 4, 'https://www.tayyabs.co.uk/', 'indian.jpg'),
(181, 'Hoppers', 'London', '££', 'Indian', 'Gluten-Free', 'Umami', 5, 'https://www.hopperslondon.com/', 'indian.jpg'),
(182, 'Masala Zone', 'London', '££', 'Indian', 'Gluten-Free', 'Any', 4, 'https://www.masalazone.com/', 'indian.jpg'),
(183, 'Lily’s Vegetarian Indian Cuisine', 'Manchester', '£', 'Indian', 'Vegetarian', 'Any', 5, 'https://www.lilysindianvegetarian.com/', 'indian.jpg'),
(184, 'Zouk Tea Bar & Grill', 'Manchester', '£££', 'Indian', 'Not Required', 'Umami', 5, 'https://www.zoukteabar.co.uk/', 'https://www.example.com/zouk_tea_bar_and_grill.jpg'),
(185, 'Mughli Charcoal Pit', 'Manchester', '£££', 'Indian', 'Not Required', 'Savory', 4, 'https://www.mughli.com/', 'https://www.example.com/mughli_charcoal_pit.jpg'),
(186, 'Indian Tiffin Room', 'Manchester', '££', 'Indian', 'Vegetarian', 'Spicy', 4, 'https://www.indiantiffinroom.com/', 'https://www.example.com/indian_tiffin_room.jpg'),
(187, 'Bundobust', 'Manchester', '£', 'Indian', 'Vegan', 'Umami', 4, 'https://bundobust.com/', 'https://www.example.com/bundobust.jpg'),
(188, 'Ziya Asian Grill', 'Manchester', '£££', 'Indian', 'Not Required', 'Any', 5, 'https://www.ziyarestaurant.co.uk/', 'https://www.example.com/ziya_asian_grill.jpg'),
(189, 'Mowgli Street Food', 'Manchester', '££', 'Indian', 'Vegan', 'Spicy', 4, 'https://www.mowglistreetfood.com/', 'https://www.example.com/mowgli_street_food.jpg'),
(190, 'EastZEast', 'Manchester', '£', 'Indian', 'Not Required', 'Any', 4, 'https://www.eastzeast.com/', 'https://www.example.com/eastzeast.jpg'),
(191, 'Lal Qila', 'Manchester', '££', 'Indian', 'Vegetarian', 'Savory', 4, 'https://www.lalqilarestaurant.co.uk/', 'https://www.example.com/lal_qila.jpg'),
(192, 'Akbar’s', 'Manchester', '££', 'Indian', 'Not Required', 'Any', 4, 'https://akbars.co.uk/manchester/', 'https://www.example.com/akbars.jpg'),
(193, 'Zouk Tea Bar & Grill', 'Manchester', '££', 'Indian', 'Gluten-Free', 'Any', 5, 'https://www.zoukteabar.co.uk/', 'https://www.example.com/zouk.jpg'),
(194, 'Mowgli Street Food', 'Manchester', '££', 'Indian', 'Gluten-Free', 'Savory', 5, 'https://mowglistreetfood.com/', 'https://www.example.com/mowgli.jpg'),
(195, 'Bundobust', 'Manchester', '£', 'Indian', 'Gluten-Free', 'Spicy', 4, 'https://bundobust.com/', 'https://www.example.com/bundobust.jpg'),
(196, 'Indique', 'Manchester', '££', 'Indian', 'Gluten-Free', 'Umami', 4, 'https://www.indiquerestaurant.co.uk/', 'https://www.example.com/indique.jpg'),
(197, 'Lily Indian Vegetarian Cuisine', 'Manchester', '£', 'Indian', 'Gluten-Free', 'Sweet', 4, 'https://www.lilysindian.co.uk/', 'https://www.example.com/lilys.jpg'),
(198, 'Mughli Charcoal Pit', 'Manchester', '££', 'Indian', 'Gluten-Free', 'Spicy', 4, 'https://mughli.com/', 'https://www.example.com/mughli.jpg'),
(199, 'Biryani Hut', 'Manchester', '£', 'Indian', 'Gluten-Free', 'Savory', 5, 'https://www.biryanihut.com/', 'https://www.example.com/biryani_hut.jpg'),
(200, 'Akbars', 'Manchester', '£££', 'Indian', 'Gluten-Free', 'Any', 4, 'https://www.akbars.co.uk/', 'https://www.example.com/akbars.jpg'),
(201, 'Ziya Asian Grill', 'Manchester', '££', 'Indian', 'Vegetarian', 'Spicy', 4, 'https://ziyaasiangrill.co.uk/', 'https://www.example.com/ziya.jpg'),
(202, 'Thali Cafe', 'Bristol', '£', 'Indian', 'Vegetarian', 'Spicy', 5, 'https://www.thethalicafe.co.uk/', 'https://www.example.com/thali_cafe.jpg'),
(203, 'Urban Tandoor', 'Bristol', '££', 'Indian', 'Vegetarian', 'Savory', 4, 'https://www.urbantandoor.com/', 'https://www.example.com/urban_tandoor.jpg'),
(204, 'The Mint Room', 'Bristol', '£££', 'Indian', 'Not Required', 'Any', 5, 'https://www.themintroom.co.uk/', 'https://www.example.com/the_mint_room.jpg'),
(205, 'The Indian Sizzler', 'Bristol', '£', 'Indian', 'Vegan', 'Spicy', 4, 'https://indiansizzler.co.uk/', 'https://www.example.com/indian_sizzler.jpg'),
(206, 'Myristica', 'Bristol', '££', 'Indian', 'Vegetarian', 'Sweet', 4, 'https://www.myristica.co.uk/', 'https://www.example.com/myristica.jpg'),
(207, 'Tuk Tuck', 'Bristol', '£', 'Indian', 'Vegan', 'Any', 4, 'https://tuktukonline.com/', 'https://www.example.com/tuk_tuk.jpg'),
(208, 'Raj Pavillion', 'Bristol', '£', 'Indian', 'Not Required', 'Savory', 4, 'https://www.rajpavilion.co.uk/', 'https://www.example.com/raj_pavillion.jpg'),
(209, 'Eastern Spice', 'Bristol', '££', 'Indian', 'Vegetarian', 'Spicy', 4, 'https://easternspicebristol.co.uk/', 'https://www.example.com/eastern_spice.jpg'),
(210, 'Spice Up Your Life', 'Bristol', '£', 'Indian', 'Vegetarian', 'Savory', 5, 'https://www.spiceupyourlifebristol.co.uk/', 'https://www.example.com/spice_up_your_life.jpg'),
(211, 'Urban Kohinoor', 'Bristol', '£££', 'Indian', 'Vegan', 'Any', 5, 'https://www.urbankohinoor.co.uk/', 'https://www.example.com/urban_kohinoor.jpg'),
(212, 'Urban Tandoor', 'Bristol', '£££', 'Indian', 'Vegetarian', 'Any', 5, 'https://www.urban-tandoor.com/', 'https://www.example.com/urban_tandoor.jpg'),
(213, 'Thali Cafe', 'Bristol', '£', 'Indian', 'Gluten-free', 'Savory', 4, 'https://www.thethalicafe.co.uk/', 'https://www.example.com/thali_cafe.jpg'),
(214, 'Ganesha Authentic Indian Cuisine', 'Bristol', '££', 'Indian', 'Vegan', 'Umami', 4, 'https://www.ganeshabristol.co.uk/', 'https://www.example.com/ganesha.jpg'),
(215, 'The Coconut Tree', 'Bristol', '££', 'Sri Lankan', 'Gluten-free', 'Spicy', 5, 'https://www.thecoconut-tree.com/', 'https://www.example.com/coconut_tree.jpg'),
(216, 'Myristica', 'Bristol', '££', 'Indian', 'Gluten-free', 'Sweet', 4, 'https://myristica.co.uk/', 'https://www.example.com/myristica.jpg'),
(217, 'Brunel Raj', 'Bristol', '£', 'Indian', 'Vegetarian', 'Any', 4, 'https://www.brunelraj.co.uk/', 'https://www.example.com/brunel_raj.jpg'),
(218, 'Rajpoot', 'Bristol', '££', 'Indian', 'Gluten-free', 'Savory', 5, 'https://www.rajpoot.com/', 'https://www.example.com/rajpoot.jpg'),
(219, 'Indian Rassasy', 'Bristol', '££', 'Indian', 'Gluten-free', 'Umami', 4, 'https://www.indianrassasy.com/', 'https://www.example.com/indian_rassasy.jpg'),
(220, 'Spice Up Your Life', 'Bristol', '£', 'Indian', 'Gluten-free', 'Spicy', 4, 'https://www.spiceupyourlifebristol.com/', 'https://www.example.com/spice_up_your_life.jpg'),
(221, 'The Mint Room', 'Bristol', '£££', 'Indian', 'Gluten-free', 'Any', 4, 'https://www.themintroom.co.uk/', 'https://www.example.com/mint_room.jpg'),
(222, 'Woodlands Buzz', 'London', '£', 'Indian', 'Vegetarian', 'Any', 4, 'https://www.woodlandsrestaurant.co.uk', 'indian.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(6) UNSIGNED NOT NULL,
  `u_name` varchar(100) NOT NULL,
  `u_password` varchar(32) NOT NULL,
  `u_email` varchar(50) DEFAULT NULL,
  `u_reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `u_name`, `u_password`, `u_email`, `u_reg_date`) VALUES
(12, 'Test', '1234', 'test@test.com', '2023-05-10 18:47:46'),
(16, 'Test2', '12345', 'test2@gmail.com', '2023-05-12 14:38:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `preferences`
--
ALTER TABLE `preferences`
  ADD PRIMARY KEY (`pref_id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`re_id`);

--
-- Indexes for table `r_restaurant`
--
ALTER TABLE `r_restaurant`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`),
  ADD UNIQUE KEY `u_email` (`u_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `preferences`
--
ALTER TABLE `preferences`
  MODIFY `pref_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `r_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `re_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `r_restaurant`
--
ALTER TABLE `r_restaurant`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
