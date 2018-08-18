-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 208.97.163.95
-- Generation Time: Aug 05, 2018 at 01:59 PM
-- Server version: 5.6.34-log
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alch_sprack`
--

-- --------------------------------------------------------

--
-- Table structure for table `alcohol`
--

CREATE TABLE `alcohol` (
  `alcohol` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `alcohol`
--

INSERT INTO `alcohol` (`alcohol`, `name`, `type`) VALUES
(1, 'Amaro', 'Liquor'),
(2, 'Apertif', 'Liquor'),
(3, 'Bitter', 'Liquor'),
(4, 'Brandy', 'Liquor'),
(5, 'Digestif', 'Liquor'),
(6, 'Gin', 'Liquor'),
(7, 'Other', 'Liquor'),
(8, 'Rum', 'Liquor'),
(9, 'Tequila', 'Liquor'),
(10, 'Vermouth', 'Liquor'),
(11, 'Vodka', 'Liquor'),
(12, 'Whiskey', 'Liquor'),
(13, 'Zinfandel', 'Wine'),
(14, 'Ale', 'Beer'),
(15, 'Amber', 'Beer'),
(16, 'Brown Ale', 'Beer'),
(17, 'Cider', 'Beer'),
(18, 'Hard Lemonade', 'Beer'),
(19, 'Hefeweizen', 'Beer'),
(20, 'IPA', 'Beer'),
(21, 'Lager', 'Beer'),
(22, 'Malt Liquor', 'Beer'),
(23, 'Marzen', 'Beer'),
(24, 'Pilsner', 'Beer'),
(25, 'Porter', 'Beer'),
(26, 'Steam', 'Beer'),
(27, 'Stout', 'Beer');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `brand` int(11) NOT NULL,
  `alcohol` int(11) NOT NULL,
  `distributor` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`brand`, `alcohol`, `distributor`, `name`) VALUES
(1, 8, 9, '10 Cane'),
(2, 12, 12, '4 Roses'),
(3, 1, 11, 'Amaro Nonino'),
(4, 8, 12, 'Angostura'),
(5, 8, 11, 'Appleton'),
(6, 8, 13, 'Bacardi'),
(7, 8, 8, 'Banks'),
(8, 8, 8, 'Batavia Arrack Van Oosten'),
(9, 8, 12, 'Batiste'),
(10, 11, 9, 'Belvedere'),
(11, 8, 11, 'BlackwellOs'),
(12, 6, 13, 'Bombay'),
(13, 5, 8, 'Bonal'),
(14, 6, 3, 'Botanica'),
(15, 12, 13, 'Brekenridge'),
(16, 8, 13, 'Brugal'),
(17, 12, 9, 'Bullit'),
(18, 8, 13, 'Cana Brava'),
(19, 10, 13, 'Carpano'),
(20, 9, 11, 'Cazadores'),
(21, 8, 8, 'ChairmanOs'),
(22, 6, 8, 'City Of London'),
(23, 8, 13, 'Clement'),
(24, 2, 8, 'Cochi'),
(25, 5, 11, 'Cynar'),
(26, 9, 12, 'Del Maguey'),
(27, 8, 11, 'Denizen'),
(28, 8, 13, 'Depaz'),
(29, 8, 8, 'Dictador'),
(30, 8, 12, 'Diplomatico'),
(31, 10, 8, 'Dolin'),
(32, 8, 13, 'Dos Maderas'),
(33, 9, 8, 'Dos Manos'),
(34, 8, 6, 'El Dorado'),
(35, 8, 11, 'English Harbor'),
(36, 9, 11, 'Espolon'),
(38, 8, 11, 'Flor de Cana'),
(39, 9, 12, 'Fortaleza'),
(40, 4, 13, 'Germain-Robin'),
(41, 8, 11, 'Goslings'),
(42, 3, 12, 'Grand Classico'),
(43, 8, 3, 'Hamilton'),
(44, 11, 13, 'Hangar One'),
(46, 6, 13, 'Hendricks'),
(47, 12, 13, 'Highland'),
(48, 12, 11, 'Jameson'),
(49, 12, 9, 'Johnny Walker'),
(50, 11, 9, 'Kettle One'),
(51, 12, 11, 'Laphroig'),
(52, 8, 3, 'Lemon Hart'),
(53, 6, 8, 'Leopolds'),
(54, 4, 3, 'Marie Duffau'),
(55, 8, 13, 'Matusalem'),
(56, 12, 13, 'McCallan'),
(57, 8, 13, 'Mocambo'),
(58, 8, 13, 'Mount Gay'),
(59, 8, 11, 'Myers'),
(60, 8, 3, 'Neisson Rhum'),
(62, 8, 3, 'Papagayo'),
(63, 8, 3, 'Privateer'),
(64, 8, 11, 'Pussers'),
(65, 8, 11, 'Ron Abuelo'),
(67, 8, 3, 'Santa Teresa'),
(68, 8, 8, 'Scarlet Ibis'),
(69, 8, 12, 'Shellback'),
(71, 11, 11, 'Skyy'),
(72, 8, 8, 'Smith & Cross'),
(73, 6, 13, 'St. George'),
(74, 8, 13, 'St George Spirits'),
(75, 9, 4, 'Suerte'),
(76, 5, 11, 'Suze'),
(78, 7, 8, 'TaylorOs'),
(80, 12, 8, 'Willett'),
(81, 8, 13, 'Wray & Nephew'),
(82, 8, 9, 'Zacapa'),
(83, 8, 13, 'Zaya'),
(84, 20, 2, '21st Amendment'),
(85, 17, 2, 'Ace Apple Cider'),
(86, 15, 2, 'Alaska Brewing Co.'),
(87, 21, 2, 'Anchor Steam'),
(88, 17, 7, 'Angry Orchard'),
(89, 21, 7, 'Beck\'s'),
(90, 20, 2, 'Bison Brewing Co.'),
(91, 21, 7, 'Budweiser'),
(92, 13, 5, 'Burgess'),
(93, 14, 2, 'Cali Craft'),
(94, 21, 2, 'Cayman Jack'),
(95, 13, 18, 'Cedarville'),
(96, 13, 11, 'Cline'),
(97, 22, 2, 'Colt 45'),
(98, 21, 2, 'Coors'),
(99, 21, 7, 'Corona'),
(100, 17, 2, 'Crispen'),
(101, 21, 7, 'Czechvar'),
(102, 13, 5, 'Dasche'),
(103, 14, 2, 'Deschutes'),
(104, 14, 2, 'Dogfish Head'),
(105, 15, 2, 'Dos XX'),
(106, 13, 12, 'Dry Creek Vyd.'),
(107, 13, 15, 'Easton'),
(108, 15, 2, 'Eel River Brewing Co.'),
(109, 14, 7, 'Firestone Walker'),
(110, 13, 3, 'Five Vintners'),
(111, 13, 11, 'Folie a Deux'),
(112, 13, 18, 'Franus'),
(113, 20, 7, 'Goose Island'),
(114, 23, 2, 'Gordon Bierch'),
(115, 13, 5, 'Gravity Hills'),
(116, 14, 2, 'Green Flash'),
(117, 13, 18, 'Green & Red'),
(118, 21, 2, 'Guinness'),
(119, 13, 3, 'Handley'),
(120, 21, 2, 'Heineken'),
(121, 13, 12, 'Kangarilla Rd.'),
(122, 21, 7, 'Kirin Ichiban'),
(123, 14, 2, 'Lagunitas'),
(124, 13, 15, 'Lolonis'),
(125, 21, 7, 'Michelob'),
(126, 18, 2, 'Mike\'s'),
(127, 21, 2, 'Miller Brewing Co.'),
(128, 14, 2, 'Newcastle'),
(129, 20, 7, 'Ninkasi'),
(130, 14, 2, 'Ommegang'),
(131, 13, 18, 'Ottimino'),
(132, 21, 2, 'Pabst'),
(133, 13, 14, 'Preston'),
(134, 13, 15, 'Quivera'),
(135, 24, 2, 'Raderberger'),
(136, 13, 11, 'Ravenswood'),
(137, 14, 7, 'Redhook'),
(138, 21, 2, 'Red Stripe'),
(139, 13, 14, 'Ridge'),
(140, 14, 2, 'Rogue'),
(141, 21, 7, 'Rolling Rock'),
(142, 13, 1, 'Rosenblum'),
(143, 21, 7, 'Sam Adams'),
(144, 21, 2, 'Sapporo'),
(145, 13, 16, 'Sausal'),
(146, 13, 6, 'Seghesio'),
(147, 14, 7, 'Shiner'),
(148, 20, 7, 'Shock Top'),
(149, 14, 7, 'Speakeasy'),
(150, 13, 12, 'Steele'),
(151, 13, 5, 'St. Francis'),
(152, 13, 17, 'Storybook'),
(153, 21, 7, 'St. Pauli Girl'),
(154, 17, 2, 'Strongbow'),
(155, 21, 2, 'Tecate'),
(156, 13, 16, 'Trinitas'),
(157, 13, 18, 'Truchard'),
(158, 14, 7, 'Trumer Pilsner'),
(159, 19, 7, 'Widmer Bros.');

-- --------------------------------------------------------

--
-- Table structure for table `distributor`
--

CREATE TABLE `distributor` (
  `distributor` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(250) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `fax` varchar(100) NOT NULL,
  `website` varchar(250) NOT NULL,
  `email` varchar(100) NOT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `distributor`
--

INSERT INTO `distributor` (`distributor`, `name`, `address`, `phone`, `fax`, `website`, `email`, `updated`) VALUES
(1, 'American Wine & Spirits', '', '', '', 'http://www.southernwine.com/OfficesNationwide/California/CAHome.aspx', '', '2014-10-11 23:10:36'),
(2, 'Bay Area Beverages', '700 National Court, Richmond, CA 94804', '510-965-6120', '866-400-1175', 'http://www.BayAreaBev.com', '', '2014-10-11 23:10:36'),
(3, 'Bock Wines', 'Pier 26, San Francisco, CA 94105', '415-834-9675', '415-834-9676', 'http://www.bock-ws.com', 'info@bock-ws.com', '2014-10-11 23:10:36'),
(4, 'Direct (Summer)', '', '510-938-6792', '', '', '', '2014-10-11 23:10:36'),
(5, 'Estates Group', '', '', '', 'http://www.youngsmarket.com/index.php/locations/category/california', '', '2014-10-11 23:10:36'),
(6, 'Henry Wine Group', '4301 Industrial Way, San Francisco, CA 94105', '707.745.8500', '707-745-5806', 'http://www.henrywinegroup.com', '', '2014-10-11 23:10:36'),
(7, 'Horizon Beverage Company', '8380 Pardee Dr, Oakland, CA 94621', '(510) 465-2212', '', 'http://www.horizonbev.com/', '', '2014-10-11 23:10:36'),
(8, 'Pacific Edge Wine & Spirits', '5155 Clareton Dr., Ste 100, Agoura Hills, CA 91301', '818-879-0946', '818-879-0956', 'http://www.pacificedgeca.com/', '', '2014-10-11 23:10:36'),
(9, 'Pacific Wine & Spirits', '', '', '', 'http://www.southernwine.com/AboutSWS/CoastalPacificWineSpirits.aspx', '', '2014-10-11 23:10:36'),
(10, 'Regal Wine Company', '1190 Kittyhawk Blvd, Santa Rosa, CA 95403', '800-886-3425', '800-417-0266', 'http://regalwineco.com/', 'info@regalwineco.com', '2014-10-11 23:10:36'),
(11, 'Southern Wine & Spirits', '33321 Dowe Ave, Union City, CA 94587', '800-548-3332', '510-477-7773', 'http://www.southernwine.com/OfficesNationwide/California/CAHome.aspx', 'newaccounts@southernwine.com', '2014-10-11 23:10:36'),
(12, 'Wine Warehouse', '3463 Cullins Ave., Richmond, CA 94806', '510-236-2233', '510-236-4173', 'http://www.winewarehouse.com/', 'sales@winewarehouse.com', '2014-10-11 23:10:36'),
(13, 'Young\'s Market', '2164 N. Batavia St. Orange, CA 92865', '714-283-4933', '714-283-6175', 'http://www.YoungsMarket.com', '', '2014-10-11 23:10:36'),
(14, 'Alexia Moore Wine', '1755 E. Bayshore Road #8A, Redwood City, CA 94063', '(650) 851-7441', '', 'http://amwm.com/', '', '2014-10-21 02:30:00'),
(15, 'Chambers & Chambers', '2140 Palou Ave, San Francisco, CA 94124', '(415) 642-5500', '', 'http://www.chamberswines.com', 'norcalsales@chamberswines.com', '2014-10-21 02:30:00'),
(16, 'Epic Wines', '2160 41st Avenue, Suite B, Capitola, CA 95010', '831.219.9100', '', 'http://www.epic-winesandspirits.com', 'info@epic-winesandspirits.com', '2014-10-21 02:30:00'),
(17, 'Monteray Bay Wine Co.', '27 Palma Ave, La Selva Beach, CA 95076', '(831) 685-9463', '', 'http://www.mbwines.com/', 'halley@mbwines.com', '2014-10-21 02:30:00'),
(18, 'Vinifera', '1725 Jones St, San Francisco, CA 94109', '(415) 921-4737', '', 'http://viniferawines.com/', '', '2014-10-21 02:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `alcohol` int(11) NOT NULL,
  `brand` int(11) NOT NULL,
  `product` varchar(100) NOT NULL,
  `appelation` varchar(100) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `date` int(11) DEFAULT NULL,
  `net_price` decimal(10,2) DEFAULT NULL,
  `best_price` varchar(200) DEFAULT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`alcohol`, `brand`, `product`, `appelation`, `rating`, `size`, `qty`, `date`, `net_price`, `best_price`, `updated`) VALUES
(8, 1, '80 proof', 'Trinidad & Tobago', 3, 1000, NULL, NULL, '26.50', '', '2014-10-04 19:36:36'),
(12, 2, 'Whiskey', '', 2, 1000, NULL, NULL, '16.63', '14.50 on [12]', '2014-10-04 19:36:36'),
(1, 3, 'Amaro Nonino', '', 3, 750, NULL, NULL, '35.00', '', '2014-10-04 19:36:36'),
(8, 4, '7yr Grand Anejo', 'Trinidad & Tobago', 2, 750, NULL, NULL, '17.00', '15 on [6]', '2014-10-04 19:36:36'),
(8, 4, 'White', 'Trinidad & Tobago', 2, 750, NULL, NULL, '11.67', '11.67', '2014-10-04 19:36:36'),
(8, 5, 'Estate Res', 'Jamaica', 3, 750, NULL, NULL, '21.87', '', '2014-10-04 19:36:36'),
(8, 5, 'Special Gold', 'Trinidad & Tobago', 2, 1000, NULL, NULL, '14.03', '18.72-1.75L', '2014-10-04 19:36:36'),
(8, 5, '12yr Xtra', 'Jamaica', 3, 750, NULL, NULL, '26.50', '', '2014-10-04 19:36:36'),
(8, 6, 'Select', 'Puerto Rico', 2, 1000, NULL, NULL, '17.98', '18.54-1.75L', '2014-10-04 19:36:36'),
(8, 7, '5yr Silver', 'West Indies', 3, 1000, NULL, NULL, '24.00', '24', '2014-10-04 19:36:36'),
(8, 8, 'Batavia Arrack Van Oosten', 'Java', 3, 750, NULL, NULL, '24.00', '', '2014-10-04 19:36:36'),
(8, 9, 'Agricole', 'St. BarthOs', 3, 750, NULL, NULL, '30.00', '', '2014-10-04 19:36:36'),
(11, 10, 'Vodka', '', 4, 1000, NULL, NULL, '36.54', '', '2014-10-04 19:36:36'),
(8, 11, 'Black', 'Jamaica', 3, 750, NULL, NULL, '23.00', '', '2014-10-04 19:36:36'),
(8, 11, 'Black Rum', 'Jamaica', 3, 750, NULL, NULL, '23.00', '', '2014-10-04 19:36:36'),
(6, 12, 'Saphire', '', 3, 1000, NULL, NULL, '29.48', '', '2014-10-04 19:36:36'),
(5, 13, 'Gentiane-Quina', '', 3, 750, NULL, NULL, '19.83', '', '2014-10-04 19:36:36'),
(6, 14, 'Gin 90pf', 'Richmond, CA', 3, 750, NULL, NULL, '34.00', '30', '2014-10-04 19:36:36'),
(12, 15, 'Bourbon', 'Colorado', 4, 750, NULL, NULL, '33.00', '', '2014-10-04 19:36:36'),
(8, 16, 'Blanco Viejo', 'Dominican Republic', 3, 1000, NULL, NULL, '24.54', '', '2014-10-04 19:36:36'),
(12, 17, 'Bourbon', '', 3, 1000, NULL, NULL, '25.67', '', '2014-10-04 19:36:36'),
(12, 17, 'Rye', '', 3, 1000, NULL, NULL, '25.67', '', '2014-10-04 19:36:36'),
(8, 18, '3yr', 'Panama', 3, 1000, NULL, NULL, '21.89', '19 on [6]', '2014-10-04 19:36:36'),
(10, 19, 'Antica Vermouth Sweet', '', 3, 1000, NULL, NULL, '23.40', '22.4', '2014-10-04 19:36:36'),
(9, 20, 'Tequila Anejo', 'Mexico', 4, 1000, NULL, NULL, '38.23', '', '2014-10-04 19:36:36'),
(9, 20, 'Tequila Repasado', 'Mexico', 4, 1000, NULL, NULL, '32.48', '', '2014-10-04 19:36:36'),
(8, 21, 'Reserve', 'Saint Lucia', 3, 1000, NULL, NULL, '21.50', '20.24 on 2', '2014-10-04 19:36:36'),
(8, 21, 'Spiced Barrel Aged', 'Saint Lucia', 2, 1000, NULL, NULL, '17.50', '', '2014-10-04 19:36:36'),
(6, 22, 'Gin London', 'England', 2, 1000, NULL, NULL, '15.00', '$15 ON 2', '2014-10-04 19:36:36'),
(8, 23, '4yr VSOP', 'Martinique', 4, 750, NULL, NULL, '31.96', '29.36 on 6', '2014-10-04 19:36:36'),
(8, 23, 'Agricole', 'Martinique', 4, 750, NULL, NULL, '30.16', '26.56 on 6', '2014-10-04 19:36:36'),
(8, 23, 'XO', 'Martinique', 5, 750, NULL, NULL, '107.46', '101.86', '2014-10-04 19:36:36'),
(2, 24, 'Americano', '', 2, 750, NULL, NULL, '19.83', '', '2014-10-04 19:36:36'),
(5, 24, 'Barolo Chinato', '', 4, 1000, NULL, NULL, '57.33', '', '2014-10-04 19:36:36'),
(5, 25, 'Cynar', '', 2, 1000, NULL, NULL, '19.67', '', '2014-10-04 19:36:36'),
(9, 26, 'Vita Mezcal', '', 3, 750, NULL, NULL, '27.98', '', '2014-10-04 19:36:36'),
(8, 27, 'Aged White', 'Jamaica/Trinidad', 2, 750, NULL, NULL, '13.67', '', '2014-10-04 19:36:36'),
(8, 28, 'Agricole', 'Martinique', 4, 750, NULL, NULL, '38.52', '35.42', '2014-10-04 19:36:36'),
(8, 29, '20yr', 'Columbia', 5, 750, NULL, NULL, '49.67', '', '2014-10-04 19:36:36'),
(8, 30, '12yr Exclusiva', 'Venezuela', 4, 750, NULL, NULL, '31.50', '28.50 on [6]', '2014-10-04 19:36:36'),
(8, 30, '8yr Reserva', 'Venezuela', 3, 750, NULL, NULL, '21.00', '19.5', '2014-10-04 19:36:36'),
(10, 31, 'Vermouth Dry', '', 2, 750, NULL, NULL, '14.67', '', '2014-10-04 19:36:36'),
(10, 31, 'Vermouth Sweet', '', 2, 750, NULL, NULL, '14.67', '', '2014-10-04 19:36:36'),
(8, 32, 'PX 5+5', 'Spain', 4, 750, NULL, NULL, '35.50', '$34 [6]', '2014-10-04 19:36:36'),
(9, 33, 'Tequila Blanco', 'Mexico', 2, 1000, NULL, NULL, '10.08', '9.04', '2014-10-04 19:36:36'),
(8, 34, '15yr', 'Guyana', 4, 750, NULL, NULL, '35.50', '', '2014-10-04 19:36:36'),
(8, 35, '5yr', 'Antigua & Barbuda', 3, 750, NULL, NULL, '21.58', '', '2014-10-04 19:36:36'),
(9, 36, 'Tequila Blanco', 'Mexico', 3, 750, NULL, NULL, '25.00', '$17L', '2014-10-04 19:36:36'),
(9, 36, 'Tequila Repasado', 'Mexico', 3, 750, NULL, NULL, '25.00', '$17L', '2014-10-04 19:36:36'),
(8, 38, '4yr White', 'Nicaragua', 2, 750, NULL, NULL, '13.10', '', '2014-10-04 19:36:36'),
(8, 38, 'Black Label', 'Nicaragua', 2, 750, NULL, NULL, '14.69', '', '2014-10-04 19:36:36'),
(9, 39, 'Tequila Repasado', 'Mexico', 4, 750, NULL, NULL, '44.50', '', '2014-10-04 19:36:36'),
(4, 40, 'Craft Brandy', 'Ukiah, CA', 4, 750, NULL, NULL, '43.59', '', '2014-10-04 19:36:36'),
(8, 41, 'Black Seal', 'Bermuda', 2, 1000, NULL, NULL, '17.33', '', '2014-10-04 19:36:36'),
(3, 42, 'Bitter', '', 3, 750, NULL, NULL, '28.00', '25.2', '2014-10-04 19:36:36'),
(8, 43, '9yr Cask Strenth', 'Jamaica', 5, 750, NULL, NULL, '46.80', '', '2014-10-04 19:36:36'),
(8, 43, 'Jamaican Black', 'Jamaica', 2, 750, NULL, NULL, '18.90', '', '2014-10-04 19:36:36'),
(11, 44, 'Vodka', 'Alameda, Ca', 3, 750, NULL, NULL, '30.03', '27', '2014-10-04 19:36:36'),
(6, 46, 'Gin', '', 4, 1000, NULL, NULL, '37.25', '', '2014-10-04 19:36:36'),
(12, 47, '12yr Scotch', '', 4, 750, NULL, NULL, '37.00', '', '2014-10-04 19:36:36'),
(12, 48, 'Whiskey Irish', 'Ireland', 3, 1000, NULL, NULL, '25.75', '', '2014-10-04 19:36:36'),
(12, 49, 'Black Label Scotch', '', 3, 750, NULL, NULL, '28.75', '', '2014-10-04 19:36:36'),
(11, 50, 'Vodka', '', 3, 1000, NULL, NULL, '27.75', '', '2014-10-04 19:36:36'),
(12, 51, '10yr Scotch', '', 5, 750, NULL, NULL, '41.33', '', '2014-10-04 19:36:36'),
(8, 52, '151 proof Demerara', 'Guyana', 3, 750, NULL, NULL, '27.00', '24.3', '2014-10-04 19:36:36'),
(6, 53, 'Gin', '', 4, 750, NULL, NULL, '33.67', '', '2014-10-04 19:36:36'),
(4, 54, 'Bas Armagnac', 'France', 3, 750, NULL, NULL, '29.00', '26', '2014-10-04 19:36:36'),
(8, 55, 'Gran Reserva', 'Dominican Republic', 3, 750, NULL, NULL, '28.50', '27', '2014-10-04 19:36:36'),
(8, 55, 'Platino', 'Dominican Republic', 2, 750, NULL, NULL, '13.31', '$8-9 well?', '2014-10-04 19:36:36'),
(12, 56, '18yr Scotch', '', 5, 750, NULL, NULL, '165.58', '', '2014-10-04 19:36:36'),
(8, 57, '15yr', '', 3, 750, NULL, NULL, '27.50', '24.4', '2014-10-04 19:36:36'),
(8, 58, 'Black', 'Barbados', 3, 750, NULL, NULL, '23.35', '', '2014-10-04 19:36:36'),
(8, 58, 'Extra Old', 'Barbados', 3, 750, NULL, NULL, '32.21', '30.21', '2014-10-04 19:36:36'),
(8, 58, 'Old Cast 1703', 'Barbados', 5, 750, NULL, NULL, '67.63', '', '2014-10-04 19:36:36'),
(8, 58, 'Silver', 'Barbados', 2, 1000, NULL, NULL, '18.72', '', '2014-10-04 19:36:36'),
(8, 59, 'Dark', 'Jamaica', 2, 1000, NULL, NULL, '21.58', '', '2014-10-04 19:36:36'),
(8, 60, 'Agricole Reserve Speciale', 'Martinique', 3, 750, NULL, NULL, '31.00', '28', '2014-10-04 19:36:36'),
(8, 62, 'Silver', 'Paraguay', 3, 750, NULL, NULL, '26.00', '23', '2014-10-04 19:36:36'),
(8, 62, 'Spiced Rum', 'Paraguay', 3, 750, NULL, NULL, '26.00', '23', '2014-10-04 19:36:36'),
(8, 63, 'Silver Reserve', 'Boston', 3, 750, NULL, NULL, '26.00', '22.5', '2014-10-04 19:36:36'),
(8, 64, 'Navy Rum- 84pf', 'Trinidad & Tobago', 2, 750, NULL, NULL, '18.67', '23.77-1L', '2014-10-04 19:36:36'),
(8, 65, '12yr Anejo', 'Panama', 3, 750, NULL, NULL, '27.50', '', '2014-10-04 19:36:36'),
(8, 65, '7yr Anejo', 'Panama', 2, 750, NULL, NULL, '20.00', '', '2014-10-04 19:36:36'),
(8, 67, '1796 Solera', 'Venezuela', 3, 750, NULL, NULL, '36.00', '31.4', '2014-10-04 19:36:36'),
(8, 68, 'Scarlet Ibis', 'Trinidad & Tobago', 3, 750, NULL, NULL, '26.00', '', '2014-10-04 19:36:36'),
(8, 69, 'Spiced Rum', 'Barbados', 2, 1000, NULL, NULL, '15.75', '', '2014-10-04 19:36:36'),
(11, 71, 'Vodka', 'Sweden', 2, 1000, NULL, NULL, '12.00', '', '2014-10-04 19:36:36'),
(8, 72, 'Navy Strength', 'Jamaica', 3, 750, NULL, NULL, '24.50', '', '2014-10-04 19:36:36'),
(6, 73, 'Botanivore', 'Alameda, CA', 3, 750, NULL, NULL, '27.26', '', '2014-10-04 19:36:36'),
(6, 73, 'Dy Rye', 'Alameda, CA', 3, 750, NULL, NULL, '27.26', '', '2014-10-04 19:36:36'),
(6, 73, 'Terrior', 'Alameda, CA', 3, 750, NULL, NULL, '27.26', '', '2014-10-04 19:36:36'),
(8, 74, 'Aqua Libre', 'Alameda, CA', 4, 750, NULL, NULL, '36.00', '35', '2014-10-04 19:36:36'),
(9, 75, 'Tequila Blanco', '', 3, 750, NULL, NULL, '24.00', '', '2014-10-04 19:36:36'),
(5, 76, 'Saveur dOAutrefois', '', 2, 1000, NULL, NULL, '24.00', '', '2014-10-04 19:36:36'),
(7, 78, 'Velvet Falernum', 'Barbados', 2, 750, NULL, NULL, '14.33', '', '2014-10-04 19:36:36'),
(12, 80, 'Rye', '', 4, 750, NULL, NULL, '39.33', '', '2014-10-04 19:36:36'),
(8, 81, 'White Overproof', 'Jamaica', 3, 1000, NULL, NULL, '21.62', '', '2014-10-04 19:36:36'),
(8, 82, 'Centenario XO', 'Guatemala', 5, 750, NULL, NULL, '75.00', '', '2014-10-04 19:36:36'),
(8, 83, '12yr', 'Guatemala', 3, 750, NULL, NULL, '28.03', '21.03', '2014-10-04 19:36:36'),
(0, 0, 'Product', 'Appelation', 0, 0, 0, 0, '0.00', 'Best Price', '0000-00-00 00:00:00'),
(20, 84, 'Brew Free Or Die', 'CA, San Francisco', 3, 12, 18, 0, '26.70', '', '2014-10-21 03:23:00'),
(21, 84, 'Hell or High Watermelon', 'CA, San Francisco', 3, 12, 18, 0, '26.70', '', '2014-10-21 03:23:00'),
(17, 85, 'Apple Cider', 'CA, Sebastopol', 3, 12, 18, 0, '27.95', '', '2014-10-21 03:23:00'),
(15, 86, 'Amber', 'Alaska', 3, 12, 18, 0, '27.20', '', '2014-10-21 03:23:00'),
(20, 86, 'IPA', 'Alaska', 3, 12, 18, 0, '27.20', '', '2014-10-21 03:23:00'),
(21, 87, 'California Lager', 'CA, San Francisco', 3, 12, 18, 0, '38.30', '', '2014-10-21 03:23:00'),
(26, 87, 'Steam', 'CA, San Francisco', 3, 12, 18, 0, '30.40', '', '2014-10-21 03:23:00'),
(17, 88, 'Crisp Apple', '', 2, 12, 24, 0, '27.45', '', '2014-10-21 03:23:00'),
(21, 89, 'Lager', 'Germany', 2, 12, 24, 0, '20.55', '', '2014-10-21 03:23:00'),
(27, 90, 'Chocolate Stout', 'CA, Ukiah', 3, 22, 12, 0, '28.35', '', '2014-10-21 03:23:00'),
(20, 90, 'Organic IPA', 'CA, Ukiah', 3, 22, 12, 0, '29.70', '', '2014-10-21 03:23:00'),
(21, 91, 'Lager', 'WI,', 2, 12, 20, 0, '14.95', '', '2014-10-21 03:23:00'),
(21, 91, 'Light', 'WI,', 2, 12, 20, 0, '14.75', '', '2014-10-21 03:23:00'),
(13, 92, 'Zinfandel', 'CA, Napa Valley', 2, 750, 12, 2000, '10.00', '', '2014-10-21 03:23:00'),
(14, 93, 'Berzerkley Golden Ale', 'CA, ', 3, 25, 12, 0, '81.52', '', '2014-10-21 03:23:00'),
(16, 93, 'Oaktown Brown Ale', 'CA, ', 3, 22, 12, 0, '56.85', '', '2014-10-21 03:23:00'),
(21, 94, 'Lager', '', 3, 11, 24, 0, '29.40', '', '2014-10-21 03:23:00'),
(13, 95, 'Zinfandel', 'CA, El Durado', 3, 750, 12, 2001, '14.66', '10', '2014-10-21 03:23:00'),
(13, 96, 'Ancient Vine', 'CA, ', 2, 750, 12, 2002, '9.50', '', '2014-10-21 03:23:00'),
(22, 97, 'Malt Liquor', 'WI,', 1, 24, 12, 0, '15.10', '', '2014-10-21 03:23:00'),
(21, 98, 'Banquet', 'CO,', 2, 12, 20, 0, '21.45', '', '2014-10-21 03:23:00'),
(21, 98, 'Light', 'CO,', 2, 12, 18, 0, '13.60', '', '2014-10-21 03:23:00'),
(21, 99, 'Extra', 'Mexico', 2, 12, 24, 0, '26.25', '', '2014-10-21 03:23:00'),
(17, 100, 'Brut', '', 2, 12, 24, 0, '34.70', '', '2014-10-21 03:23:00'),
(17, 100, 'Original Cider', '', 2, 12, 24, 0, '34.70', '', '2014-10-21 03:23:00'),
(21, 101, 'Lager', 'Czech Republic', 2, 11, 24, 0, '28.10', '', '2014-10-21 03:23:00'),
(13, 102, 'Todd Brothers Ranch', 'CA, Alexander Valley', 3, 750, 12, 2001, '18.67', '13.33', '2014-10-21 03:23:00'),
(25, 103, 'Black Butte', 'OR,', 3, 12, 24, 0, '27.70', '', '2014-10-21 03:23:00'),
(14, 103, 'River Ale', 'OR,', 3, 12, 24, 0, '27.70', '', '2014-10-21 03:23:00'),
(20, 104, '90-Minute', 'Delaware', 3, 12, 24, 0, '49.70', '', '2014-10-21 03:23:00'),
(14, 104, 'Midas Touch', 'Delaware', 3, 12, 24, 0, '59.70', '', '2014-10-21 03:23:00'),
(15, 105, 'Amber', 'Mexico', 2, 12, 24, 0, '26.10', '', '2014-10-21 03:23:00'),
(21, 105, 'Lager', 'Mexico', 2, 12, 24, 0, '26.10', '', '2014-10-21 03:23:00'),
(13, 106, 'Sommers Vyd.', 'CA, Dry Creek', 2, 750, 12, 2001, '20.00', '', '2014-10-21 03:23:00'),
(13, 107, 'Zinfandel', 'Ca, Shenandoah Vly.', 2, 750, 12, 1999, '16.33', '10.17', '2014-10-21 03:23:00'),
(15, 108, 'Organic', 'CA, Fortuna', 3, 12, 24, 0, '29.45', '', '2014-10-21 03:23:00'),
(20, 108, 'Organic', 'CA, Fortuna', 3, 12, 24, 0, '29.45', '', '2014-10-21 03:23:00'),
(14, 109, 'Double-Barrel Ale', 'CA, Santa Maria', 3, 12, 24, 0, '25.20', '', '2014-10-21 03:23:00'),
(13, 110, 'Zinfandel', 'CA,', 2, 750, 12, 2002, '10.67', '9.6', '2014-10-21 03:23:00'),
(13, 111, 'Zinfandel', 'CA, Amador County', 2, 750, 12, 2000, '12.66', '', '2014-10-21 03:23:00'),
(13, 112, 'Rancho Chimiles', 'CA, Napa Valley', 2, 750, 12, 2000, '12.00', '7.33', '2014-10-21 03:23:00'),
(13, 112, 'Brandlin Vyd.', 'CA, Napa Valley', 2, 750, 12, 2001, '21.33', '16', '2014-10-21 03:23:00'),
(13, 112, 'Planchon Vyd.', 'CA, Contra Costa', 3, 750, 12, 2001, '12.00', '10', '2014-10-21 03:23:00'),
(20, 113, 'IPA', 'IL,', 3, 12, 24, 0, '29.55', '', '2014-10-21 03:23:00'),
(23, 114, 'Marzen', 'CA, San Francisco', 3, 12, 24, 0, '26.55', '', '2014-10-21 03:23:00'),
(24, 114, 'Pilsner', 'CA, San Francisco', 3, 12, 24, 0, '26.45', '', '2014-10-21 03:23:00'),
(13, 115, 'Tumbling Tractor', 'CA, Paso Robles', 2, 750, 12, 2002, '12.00', '8.5', '2014-10-21 03:23:00'),
(14, 116, 'Hop Head', 'CA, ', 4, 12, 24, 0, '37.20', '', '2014-10-21 03:23:00'),
(20, 116, 'West Coast', 'CA, ', 4, 12, 24, 0, '37.20', '', '2014-10-21 03:23:00'),
(13, 117, 'Zinfandel', 'CA, Chiles Vly.', 2, 750, 12, 2001, '15.33', '12', '2014-10-21 03:23:00'),
(21, 118, 'Black Lager', 'Ireland', 3, 12, 24, 0, '25.00', '', '2014-10-21 03:23:00'),
(27, 118, 'Stout', 'Ireland', 3, 12, 24, 0, '28.40', '', '2014-10-21 03:23:00'),
(13, 119, 'Zinfandel', 'CA, Redwood Valley', 2, 750, 12, 2002, '15.00', '9.83', '2014-10-21 03:23:00'),
(21, 120, 'Lager', 'Netherlands', 3, 12, 24, 0, '27.50', '', '2014-10-21 03:23:00'),
(21, 120, 'Light Lager', 'Netherlands', 3, 12, 24, 0, '27.50', '', '2014-10-21 03:23:00'),
(13, 121, 'Zinfandel', 'AUS, Langhorne Creek', 2, 750, 12, 2003, '10.50', '10', '2014-10-21 03:23:00'),
(21, 122, 'Lager', 'Japan', 2, 12, 24, 0, '25.10', '', '2014-10-21 03:23:00'),
(14, 123, 'Dogtown Pale Ale', 'CA, Sebastopol', 3, 12, 24, 0, '27.60', '', '2014-10-21 03:23:00'),
(20, 123, 'IPA', 'CA, Sebastopol', 3, 12, 24, 0, '27.60', '', '2014-10-21 03:23:00'),
(13, 124, 'Reserve', 'CA, Redwood Valley', 3, 750, 12, 1999, '13.50', '', '2014-10-21 03:23:00'),
(13, 124, 'Zinfandel', 'CA, Redwood Valley', 3, 750, 12, 2001, '10.00', '', '2014-10-21 03:23:00'),
(21, 125, 'Ultra', 'WI,', 2, 12, 24, 0, '20.30', '', '2014-10-21 03:23:00'),
(18, 126, 'Black Cherry', '', 3, 11, 24, 0, '28.00', '', '2014-10-21 03:23:00'),
(18, 126, 'Hard Lemonaide', '', 3, 11, 24, 0, '28.00', '', '2014-10-21 03:23:00'),
(21, 127, 'High Life', 'WI,', 2, 12, 30, 0, '15.90', '', '2014-10-21 03:23:00'),
(21, 127, 'MGD', 'WI,', 2, 12, 30, 0, '20.45', '', '2014-10-21 03:23:00'),
(14, 128, 'Brown Ale', 'England', 3, 12, 24, 0, '27.15', '', '2014-10-21 03:23:00'),
(14, 128, 'Founders', 'England', 3, 12, 24, 0, '27.15', '', '2014-10-21 03:23:00'),
(20, 129, 'Total Domination', '', 4, 11, 12, 0, '36.60', '', '2014-10-21 03:23:00'),
(14, 130, 'Abbey Ale', 'NY, Cooperstown', 4, 25, 12, 0, '76.20', '', '2014-10-21 03:23:00'),
(14, 130, 'Hennepin', 'NY, Cooperstown', 4, 25, 12, 0, '76.20', '', '2014-10-21 03:23:00'),
(13, 131, 'Rancho Bello Vyd.', 'CA, Russian River', 3, 750, 12, 2000, '16.67', '12', '2014-10-21 03:23:00'),
(13, 131, 'Rancho Bello Vyd.', 'CA, Russian River', 3, 750, 12, 2001, '16.00', '12.5', '2014-10-21 03:23:00'),
(21, 132, 'Blue Ribbon', 'WI,', 1, 12, 24, 0, '15.45', '', '2014-10-21 03:23:00'),
(13, 133, 'Zinfandel', 'CA, Dry Creek', 2, 750, 12, 2002, '16.00', '14', '2014-10-21 03:23:00'),
(13, 134, 'Zinfandel', 'CA, Dry Creek', 2, 750, 12, 2003, '15.00', '10.5', '2014-10-21 03:23:00'),
(13, 134, 'Anderson Ranch', 'CA, Dry Creek', 3, 750, 12, 2001, '20.00', '', '2014-10-21 03:23:00'),
(13, 134, 'Wine Creek Ranch', 'CA, Dry Creek', 3, 750, 12, 2001, '20.00', '', '2014-10-21 03:23:00'),
(24, 135, 'Pilsner', '', 2, 16, 12, 0, '20.70', '', '2014-10-21 03:23:00'),
(13, 136, 'Zinfandel', 'CA, Mendocino', 2, 750, 12, 2000, '8.75', '', '2014-10-21 03:23:00'),
(13, 136, 'Old Vine', 'CA, Sonoma', 2, 750, 12, 2001, '13.50', '9.5', '2014-10-21 03:23:00'),
(14, 137, 'ESB', '', 3, 12, 24, 0, '26.60', '', '2014-10-21 03:23:00'),
(21, 138, 'Lager', 'Jamaica', 2, 11, 24, 0, '24.95', '', '2014-10-21 03:23:00'),
(13, 139, 'Lyton Springs', 'CA, Sonoma', 3, 750, 12, 2002, '20.00', '', '2014-10-21 03:23:00'),
(14, 140, 'Daddy\'s Little Helper', 'OR,', 3, 12, 24, 0, '56.60', '', '2014-10-21 03:23:00'),
(14, 140, 'Dead Guy Ale', 'OR,', 3, 12, 24, 0, '34.20', '', '2014-10-21 03:23:00'),
(21, 141, 'Lager', 'CO,', 3, 12, 24, 0, '13.90', '', '2014-10-21 03:23:00'),
(13, 142, 'Alegria Vyd.', 'CA, Russian River', 2, 750, 12, 2001, '14.67', '13.33', '2014-10-21 03:23:00'),
(13, 142, 'Eagle Point', 'CA, Mendocino', 2, 750, 12, 2001, '18.00', '16.33', '2014-10-21 03:23:00'),
(13, 142, 'Oakley Vyd.', 'CA, SF Bay', 2, 750, 12, 2002, '9.33', '8', '2014-10-21 03:23:00'),
(13, 142, 'Zinfandel', 'CA, SF Bay', 2, 750, 12, 2002, '12.00', '', '2014-10-21 03:23:00'),
(13, 142, 'Rockpile Vyd.', 'CA, Rock Pile', 3, 750, 12, 2002, '17.33', '16.5', '2014-10-21 03:23:00'),
(13, 142, 'Zinfandel', 'CA, SF Bay', 3, 750, 12, 2004, '13.00', '10.83', '2014-10-21 03:23:00'),
(21, 143, 'Boston Lager', '', 3, 12, 24, 0, '27.20', '', '2014-10-21 03:23:00'),
(21, 144, 'Premium', 'Japan', 2, 12, 24, 0, '27.25', '', '2014-10-21 03:23:00'),
(21, 144, 'Reserve', 'Japan', 2, 22, 12, 0, '26.60', '', '2014-10-21 03:23:00'),
(13, 145, 'Private Reserve', 'CA, Alexander Valley', 2, 750, 12, 2001, '14.67', '', '2014-10-21 03:23:00'),
(13, 145, 'Zinfandel', 'CA, Alexander Valley', 2, 750, 12, 2001, '11.17', '9.33', '2014-10-21 03:23:00'),
(13, 145, 'Century Vine', 'CA, Alexander Valley', 3, 750, 12, 2001, '20.00', '', '2014-10-21 03:23:00'),
(13, 145, 'Private Reserve', 'CA, Alexander Valley', 3, 750, 12, 2001, '14.67', '', '2014-10-21 03:23:00'),
(13, 145, 'Century Vine', 'CA, Alexander Valley', 3, 750, 12, 2002, '20.00', '', '2014-10-21 03:23:00'),
(13, 145, 'Estate', 'CA, Alexander Valley', 3, 750, 12, 2002, '12.50', '10.67', '2014-10-21 03:23:00'),
(13, 145, 'Private Reserve', 'CA, Alexander Valley', 3, 750, 12, 2002, '15.50', '13.33', '2014-10-21 03:23:00'),
(13, 146, 'Old Vine', 'CA, Sonoma', 3, 750, 12, 2002, '21.00', '', '2014-10-21 03:23:00'),
(14, 147, 'Bock Ale', 'Texas', 2, 12, 24, 0, '23.20', '', '2014-10-21 03:23:00'),
(20, 148, 'Wheat IPA', '', 3, 12, 24, 0, '25.20', '', '2014-10-21 03:23:00'),
(20, 149, 'Big Daddy', 'CA, San Francisco', 3, 11, 12, 0, '34.60', '', '2014-10-21 03:23:00'),
(14, 149, 'Prohibition Ale', 'CA, San Francisco', 3, 12, 24, 0, '30.70', '', '2014-10-21 03:23:00'),
(13, 150, 'DuPratt Vyd.', 'CA, Mendocino', 3, 750, 12, 1999, '14.00', '8.5', '2014-10-21 03:23:00'),
(13, 150, 'Catfish', 'CA, Clear Lake', 3, 750, 12, 2001, '14.83', '', '2014-10-21 03:23:00'),
(13, 151, 'Old Vine', 'CA, Sonoma', 2, 750, 12, 2001, '14.00', '9.95', '2014-10-21 03:23:00'),
(13, 152, 'Atlas Peak', 'CA, Atlas Peak', 3, 750, 12, 2002, '16.67', '', '2014-10-21 03:23:00'),
(21, 153, 'Lager', 'Germany', 2, 12, 24, 0, '25.20', '', '2014-10-21 03:23:00'),
(17, 154, 'Apple Cider', 'England', 2, 12, 24, 0, '29.55', '', '2014-10-21 03:23:00'),
(21, 155, 'Lager', 'Mexico', 1, 12, 24, 0, '21.30', '', '2014-10-21 03:23:00'),
(21, 155, 'Lager', 'Mexico', 1, 12, 30, 0, '22.75', '', '2014-10-21 03:23:00'),
(13, 156, 'Old Vine', 'CA, Contra Costa', 2, 750, 12, 2002, '12.33', '', '2014-10-21 03:23:00'),
(13, 157, 'Zinfandel', 'CA, Carneros', 3, 750, 12, 2001, '16.00', '10.66', '2014-10-21 03:23:00'),
(14, 158, 'Pilsner Ale', 'CA, Berkeley', 3, 12, 24, 0, '24.20', '', '2014-10-21 03:23:00'),
(19, 159, 'Hefeweizen', '', 3, 12, 24, 0, '26.60', '', '2014-10-21 03:23:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alcohol`
--
ALTER TABLE `alcohol`
  ADD PRIMARY KEY (`alcohol`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brand`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `alcohol` (`alcohol`),
  ADD KEY `distributor` (`distributor`);

--
-- Indexes for table `distributor`
--
ALTER TABLE `distributor`
  ADD PRIMARY KEY (`distributor`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD KEY `alcohol` (`alcohol`),
  ADD KEY `brand` (`brand`),
  ADD KEY `product` (`product`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alcohol`
--
ALTER TABLE `alcohol`
  MODIFY `alcohol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `brand` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `distributor`
--
ALTER TABLE `distributor`
  MODIFY `distributor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
