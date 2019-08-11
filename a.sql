-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Aug 11, 2019 at 07:33 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `RestaurantID` int(8) DEFAULT NULL,
  `RestaurantName` varchar(54) DEFAULT NULL,
  `City` varchar(123) DEFAULT NULL,
  `Address` varchar(132) DEFAULT NULL,
  `Cuisines` varchar(93) DEFAULT NULL,
  `AverageCost` varchar(18) DEFAULT NULL,
  `Currency` varchar(22) DEFAULT NULL,
  `HasTableBooking` varchar(3) DEFAULT NULL,
  `HasOnlineDelivery` varchar(3) DEFAULT NULL,
  `isDeliveringNow` varchar(3) DEFAULT NULL,
  `SwitchOrderMenu` varchar(2) DEFAULT NULL,
  `PriceRange` decimal(2,1) DEFAULT NULL,
  `AggregateRating` varchar(10) DEFAULT NULL,
  `RatingColor` varchar(10) DEFAULT NULL,
  `RatingText` varchar(9) DEFAULT NULL,
  `Votes` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`RestaurantID`, `RestaurantName`, `City`, `Address`, `Cuisines`, `AverageCost`, `Currency`, `HasTableBooking`, `HasOnlineDelivery`, `isDeliveringNow`, `SwitchOrderMenu`, `PriceRange`, `AggregateRating`, `RatingColor`, `RatingText`, `Votes`) VALUES
(6304287, 'Izakaya Kikufuji', 'Makati City', 'Little Tokyo, 2277 Chino Roces Avenue, Legaspi Village, Makati City', 'Japanese', '1200', 'Botswana Pula(P)', 'Yes', 'No', 'No', 'No', '3.0', '4.5', 'Dark Green', 'Excellent', 591),
(6300002, 'Heat - Edsa Shangri-La', 'Mandaluyong City', 'Edsa Shangri-La, 1 Garden Way, Ortigas, Mandaluyong City', 'Seafood, Asian, Filipino, Indian', '4000', 'Botswana Pula(P)', 'Yes', 'No', 'No', 'No', '4.0', '4.4', 'Green', 'Very Good', 270),
(6318506, 'Ooma', 'Mandaluyong City', 'Third Floor, Mega Fashion Hall, SM Megamall, Ortigas, Mandaluyong City', 'Japanese, Sushi', '1500', 'Botswana Pula(P)', 'No', 'No', 'No', 'No', '4.0', '4.9', 'Dark Green', 'Excellent', 365),
(6314302, 'Sambo Kojin', 'Mandaluyong City', 'Third Floor, Mega Atrium, SM Megamall, Ortigas, Mandaluyong City', 'Japanese, Korean', '1500', 'Botswana Pula(P)', 'Yes', 'No', 'No', 'No', '4.0', '4.8', 'Dark Green', 'Excellent', 229),
(18189371, 'Din Tai Fung', 'Mandaluyong City', 'Ground Floor, Mega Fashion Hall, SM Megamall, Ortigas, Mandaluyong City', 'Chinese', '1000', 'Botswana Pula(P)', 'No', 'No', 'No', 'No', '3.0', '4.4', 'Green', 'Very Good', 336),
(6300781, 'Buffet 101', 'Pasay City', 'Building K, SM By The Bay, Sunset Boulevard, Mall of Asia Complex (MOA), Pasay City', 'Asian, European', '2000', 'Botswana Pula(P)', 'Yes', 'No', 'No', 'No', '4.0', '4', 'Green', 'Very Good', 520),
(6301290, 'Vikings', 'Pasay City', 'Building B, By The Bay, Seaside Boulevard, Mall of Asia Complex (MOA), Pasay City', 'Seafood, Filipino, Asian, European', '2000', 'Botswana Pula(P)', 'Yes', 'No', 'No', 'No', '4.0', '4.2', 'Green', 'Very Good', 677),
(6300010, 'Spiral - Sofitel Philippine Plaza Manila', 'Pasay City', 'Plaza Level, Sofitel Philippine Plaza Manila, CCP Complex, Pasay City', 'European, Asian, Indian', '6000', 'Botswana Pula(P)', 'Yes', 'No', 'No', 'No', '4.0', '4.9', 'Dark Green', 'Excellent', 621),
(6314987, 'Locavore', 'Pasig City', 'Brixton Technology Center, 10 Brixton Street, Kapitolyo, Pasig City', 'Filipino', '1100', 'Botswana Pula(P)', 'Yes', 'No', 'No', 'No', '3.0', '4.8', 'Dark Green', 'Excellent', 532),
(6309903, 'Silantro Fil-Mex', 'Pasig City', '75 East Capitol Drive, Kapitolyo, Pasig City', 'Filipino, Mexican', '800', 'Botswana Pula(P)', 'No', 'No', 'No', 'No', '3.0', '4.9', 'Dark Green', 'Excellent', 1070),
(6309455, 'Mad Mark\'s Creamery & Good Eats', 'Pasig City', '23 East Capitol Drive, Kapitolyo, Pasig City', 'American, Ice Cream, Desserts', '900', 'Botswana Pula(P)', 'Yes', 'No', 'No', 'No', '3.0', '4.2', 'Green', 'Very Good', 488),
(6318433, 'Silantro Fil-Mex', 'Quezon City', 'Second Floor, UP Town Center, Katipunan Avenue, Diliman, Quezon City', 'Filipino, Mexican', '800', 'Botswana Pula(P)', 'No', 'No', 'No', 'No', '3.0', '4.8', 'Dark Green', 'Excellent', 294),
(6310470, 'Guevarra\'s', 'San Juan City', '387 P. Guevarra Corner Argonne Street, Addition Hills, San Juan City', 'Filipino', '1000', 'Botswana Pula(P)', 'Yes', 'No', 'No', 'No', '3.0', '4.2', 'Green', 'Very Good', 458),
(6314605, 'Sodam Korean Restaurant', 'San Juan City', '17 J. Abad Santos Drive, Little Baguio, San Juan City', 'Korean', '700', 'Botswana Pula(P)', 'No', 'No', 'No', 'No', '3.0', '4.3', 'Green', 'Very Good', 223),
(18185059, 'Cafe Arabelle', 'Santa Rosa', 'Ayala Mall, Solenad, Nuvali, Santa Rosa - Tagaytay Road, Don Jose, Santa Rosa', 'Cafe, American, Italian, Filipino', '800', 'Botswana Pula(P)', 'No', 'No', 'No', 'No', '3.0', '3.6', 'Yellow', 'Good', 29),
(18182702, 'Nonna\'s Pasta & Pizzeria', 'Santa Rosa', 'Ground Floor, Building G, Solenad 3, Nuvali, Don Jose, Santa Rosa', 'Italian, Pizza', '850', 'Botswana Pula(P)', 'No', 'No', 'No', 'No', '3.0', '4', 'Green', 'Very Good', 72),
(6318213, 'Balay Dako', 'Tagaytay City', 'Aguinaldo Highway, Tagaytay City', 'Filipino', '1200', 'Botswana Pula(P)', 'Yes', 'No', 'No', 'No', '3.0', '4.5', 'Dark Green', 'Excellent', 211),
(18255654, 'Hobing Korean Dessert Cafe', 'Taguig City', 'Third Floor, BGC Stopover Pavillion, Rizal Drive Corner 31st Street, Bonifacio Global City, Taguig City', 'Cafe, Korean, Desserts', '600', 'Botswana Pula(P)', 'No', 'No', 'No', 'No', '2.0', '4.5', 'Dark Green', 'Excellent', 118),
(6308205, 'Wildflour Cafe + Bakery', 'Taguig City', 'Ground Floor, Netlima Building, 4th Avenue Corner 26th Street, Bonifacio Global City, Taguig City', 'Cafe, Bakery, American, Italian', '1500', 'Botswana Pula(P)', 'Yes', 'No', 'No', 'No', '4.0', '4.4', 'Green', 'Very Good', 392),
(6315438, 'NIU by Vikings', 'Taguig City', 'Sixth Floor, SM Aura Premier, C5 Road Corner 26th Street, Bonifacio Global City, Taguig City', 'Seafood, American, Mediterranean, Japanese', '3000', 'Botswana Pula(P)', 'Yes', 'No', 'No', 'No', '4.0', '4.7', 'Dark Green', 'Excellent', 535),
(6310406, 'The Food Hall by Todd English', 'Taguig City', 'Fifth Floor, SM Aura Premier, C5 Corner 26th Street, Bonifacio Global City, Taguig City', 'American, Asian, Italian, Seafood', '1800', 'Botswana Pula(P)', 'Yes', 'No', 'No', 'No', '4.0', '4.5', 'Dark Green', 'Excellent', 618),
(6600681, 'Chez Michou', 'Bras?_lia', 'SCLN, 208, Bloco A, Loja 30, Asa Norte, Bras?_lia', 'Fast Food, French', '55', 'Brazilian Real(R$)', 'No', 'No', 'No', 'No', '2.0', '3', 'Orange', 'Average', 6),
(6601005, 'Caf?? Daniel Briand', 'Bras?_lia', 'SCLN 104, Bloco A, Loja 26, Asa Norte, Bras?_lia', 'Cafe', '30', 'Brazilian Real(R$)', 'No', 'No', 'No', 'No', '1.0', '3.8', 'Yellow', 'Good', 9),
(6600292, 'Casa do Biscoito Mineiro', 'Bras?_lia', 'SCLN 210, Bloco D, Loja 36/48, Asa Norte, Bras?_lia', 'Bakery', '45', 'Brazilian Real(R$)', 'No', 'No', 'No', 'No', '2.0', '3.7', 'Yellow', 'Good', 11),
(6600441, 'Maori', 'Bras?_lia', 'CLN 110, Bloco D, Loja 28, Asa Norte, Bras?_lia', 'Brazilian', '60', 'Brazilian Real(R$)', 'No', 'No', 'No', 'No', '3.0', '3.8', 'Yellow', 'Good', 11),
(6600970, 'Pizza ?? Bessa', 'Bras?_lia', 'SCS 214, Bloco C, Loja 40, Asa Sul, Bras?_lia', 'Pizza', '50', 'Brazilian Real(R$)', 'No', 'No', 'No', 'No', '2.0', '3.2', 'Orange', 'Average', 11),
(6600379, 'Sushi Loko', 'Bras?_lia', 'SCS 213, Bloco C, Loja 35, Asa Sul, Bras?_lia', 'Japanese', '80', 'Brazilian Real(R$)', 'No', 'No', 'No', 'No', '3.0', '3.1', 'Orange', 'Average', 10),
(6600214, 'Beirute', 'Bras?_lia', 'CLS 109, Bloco A, Loja 2/6, Asa Sul, Bras?_lia', 'Arabian', '90', 'Brazilian Real(R$)', 'No', 'No', 'No', 'No', '3.0', '3.7', 'Yellow', 'Good', 8),
(6601218, 'New Koto', 'Bras?_lia', 'SCS 212, Bloco B, Loja 26, Asa Sul, Bras?_lia', 'Japanese', '200', 'Brazilian Real(R$)', 'No', 'No', 'No', 'No', '4.0', '3.7', 'Yellow', 'Good', 5),
(6600083, 'Villa Tevere', 'Bras?_lia', 'CLS 115, Bloco A, Loja 2, Asa Sul, Bras?_lia', 'Italian', '150', 'Brazilian Real(R$)', 'No', 'No', 'No', 'No', '4.0', '4.1', 'Green', 'Very Good', 12),
(6601515, 'Rovereto', 'Bras?_lia', 'Rua 13 Norte, Lote 4, ??guas Claras, Bras?_lia', 'Pizza', '100', 'Brazilian Real(R$)', 'No', 'No', 'No', 'No', '4.0', '3.1', 'Orange', 'Average', 9),
(6601361, 'Buena Carne', 'Bras?_lia', 'Avenida Arauc??rias, 1325, Loja 19, ??guas Claras, Bras?_lia', 'Bar Food, Brazilian', '60', 'Brazilian Real(R$)', 'No', 'No', 'No', 'No', '3.0', '3.6', 'Yellow', 'Good', 9),
(6601602, 'Taco Pep', 'Bras?_lia', 'Vila Malls, Avenida das Castanheiras, Lote 1060, ??guas Claras, Bras?_lia', 'Mexican, Grill', '100', 'Brazilian Real(R$)', 'No', 'No', 'No', 'No', '4.0', '4.3', 'Green', 'Very Good', 29),
(6601589, 'Coco Bambu', 'Bras?_lia', 'Bras?_lia Shopping - Piso 2, SCN 5, Bloco A, Asa Norte, Bras?_lia', 'International', '230', 'Brazilian Real(R$)', 'No', 'No', 'No', 'No', '4.0', '4.2', 'Green', 'Very Good', 17);
