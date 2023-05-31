-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 21 May 2023, 22:47:24
-- Sunucu sürümü: 10.4.28-MariaDB
-- PHP Sürümü: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `veritabanı_proje`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cinsiyet`
--

CREATE TABLE `cinsiyet` (
  `gender_id` int(11) NOT NULL,
  `gender_name` varchar(25) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `cinsiyet`
--

INSERT INTO `cinsiyet` (`gender_id`, `gender_name`) VALUES
(1, 'Erkek'),
(2, 'Kadın'),
(3, 'Diğer');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `diller`
--

CREATE TABLE `diller` (
  `language_id` int(11) NOT NULL,
  `language_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `diller`
--

INSERT INTO `diller` (`language_id`, `language_name`) VALUES
(1, 'İngilizce'),
(2, 'İspanyolca'),
(3, 'Hintçe'),
(4, 'İtalyanca'),
(5, 'Norveççe'),
(6, 'İsveççe'),
(7, 'Portekizce'),
(8, 'Japonca'),
(9, 'Fransızca'),
(10, 'Çekçe'),
(11, 'Almanca'),
(12, 'Rusça'),
(13, 'Lehçe'),
(14, 'Danca'),
(15, 'Gürcece'),
(16, 'Korece'),
(17, 'Afrikanca'),
(18, 'Endonezce');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `filmler`
--

CREATE TABLE `filmler` (
  `film_id` int(11) NOT NULL,
  `film_name` varchar(100) NOT NULL,
  `film_rating` float NOT NULL,
  `film_metascore` int(11) NOT NULL,
  `film_runtime` int(11) NOT NULL,
  `film_year` int(11) NOT NULL,
  `film_certificate` varchar(11) NOT NULL,
  `film_describe` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `filmler`
--

INSERT INTO `filmler` (`film_id`, `film_name`, `film_rating`, `film_metascore`, `film_runtime`, `film_year`, `film_certificate`, `film_describe`) VALUES
(1, 'The Shawshank Redemption', 9.3, 82, 142, 1994, '15', 'Over the course of several years, two convicts form a friendship, seeking consolation and, eventually, redemption through basic compassion.'),
(2, 'The Godfather', 9.2, 100, 175, 1972, 'X', 'Don Vito Corleone, head of a mafia family, decides to hand over his empire to his youngest son Michael. However, his decision unintentionally puts the lives of his loved ones in grave danger.'),
(3, 'The Dark Knight', 9, 84, 152, 2008, '12A', 'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.'),
(4, 'The Lord of the Rings: The Return of the King', 9, 94, 201, 2003, '12A', 'Gandalf and Aragorn lead the World of Men against Sauron\'s army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.'),
(5, 'Schindler\'s List', 9, 95, 195, 1993, '15', 'In German-occupied Poland during World War II, industrialist Oskar Schindler gradually becomes concerned for his Jewish workforce after witnessing their persecution by the Nazis.'),
(6, 'The Godfather Part II', 9, 90, 202, 1974, 'X', 'The early life and career of Vito Corleone in 1920s New York City is portrayed, while his son, Michael, expands and tightens his grip on the family crime syndicate.'),
(7, '12 Angry Men', 9, 97, 96, 1957, 'U', 'The jury in a New York City murder trial is frustrated by a single member whose skeptical caution forces them to more carefully consider the evidence before jumping to a hasty verdict.'),
(8, 'Jai Bhim', 8.8, 0, 164, 2021, 'All', 'When a tribal man is arrested for a case of alleged theft, his wife turns to a human-rights lawyer to help bring justice.'),
(9, 'Pulp Fiction', 8.9, 94, 154, 1994, '18', 'The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.'),
(10, 'Inception', 8.8, 74, 148, 2010, '12A', 'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O., but his tragic past may doom the project and his team to disaster.'),
(11, 'The Lord of the Rings: The Two Towers', 8.8, 87, 179, 2002, '12A', 'While Frodo and Sam edge closer to Mordor with the help of the shifty Gollum, the divided fellowship makes a stand against Sauron\'s new ally, Saruman, and his hordes of Isengard.'),
(12, 'Fight Club', 8.8, 66, 139, 1999, '18', 'An insomniac office worker and a devil-may-care soap maker form an underground fight club that evolves into much more.'),
(13, 'The Lord of the Rings: The Fellowship of the Ring', 8.8, 92, 178, 2001, 'PG', 'A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron.'),
(14, 'Forrest Gump', 8.8, 82, 142, 1994, '12', 'The presidencies of Kennedy and Johnson, the Vietnam War, the Watergate scandal and other historical events unfold from the perspective of an Alabama man with an IQ of 75, whose only desire is to be reunited with his childhood sweetheart.'),
(15, 'The Good, the Bad and the Ugly', 8.8, 90, 148, 1966, 'X', 'A bounty hunting scam joins two men in an uneasy alliance against a third in a race to find a fortune in gold buried in a remote cemetery.'),
(16, 'Soorarai Pottru', 8.7, 0, 153, 2020, '15', 'Nedumaaran Rajangam \"Maara\" sets out to make the common man fly and in the process takes on the world\'s most capital intensive industry and several enemies who stand in his way.'),
(17, 'The Matrix', 8.7, 73, 136, 1999, '15', 'When a beautiful stranger leads computer hacker Neo to a forbidding underworld, he discovers the shocking truth--the life he knows is the elaborate deception of an evil cyber-intelligence.'),
(18, 'Goodfellas', 8.7, 90, 145, 1990, '18', 'The story of Henry Hill and his life in the mafia, covering his relationship with his wife Karen and his mob partners Jimmy Conway and Tommy DeVito.'),
(19, 'Star Wars: Episode V - The Empire Strikes Back', 8.7, 82, 124, 1980, 'U', 'After the Rebels are overpowered by the Empire, Luke Skywalker begins his Jedi training with Yoda, while his friends are pursued across the galaxy by Darth Vader and bounty hunter Boba Fett.'),
(20, 'One Flew Over the Cuckoo\'s Nest', 8.7, 84, 133, 1975, '15', 'In the Fall of 1963, a Korean War veteran and criminal pleads insanity and is admitted to a mental institution, where he rallies up the scared patients against the tyrannical nurse.'),
(21, 'Top Gun: Maverick', 8.3, 78, 130, 2022, '12A', 'After thirty years, Maverick is still pushing the envelope as a top naval aviator, but must confront ghosts of his past when he leads TOP GUN\'s elite graduates on a mission that demands the ultimate sacrifice from those chosen to fly it.'),
(22, 'Interstellar', 8.6, 74, 169, 2014, '12A', 'When Earth becomes uninhabitable in the future, a farmer and ex-NASA pilot, Joseph Cooper, is tasked to pilot a spacecraft, along with a team of researchers, to find a new planet for humans.'),
(23, 'City of God', 8.6, 79, 130, 2002, '18', 'In the slums of Rio, two kids\' paths diverge as one struggles to become a photographer and the other a kingpin.'),
(24, 'Spirited Away', 8.6, 96, 125, 2001, 'PG', 'During her family\'s move to the suburbs, a sullen 10-year-old girl wanders into a world ruled by gods, witches and spirits, a world where humans are changed into beasts.'),
(25, 'Saving Private Ryan', 8, 91, 169, 1998, '15', 'Following the Normandy Landings, a group of U.S. soldiers go behind enemy lines to retrieve a paratrooper whose brothers have been killed in action.'),
(26, 'The Green Mile', 8.6, 61, 189, 1999, '18', 'The lives of guards on Death Row are affected by one of their charges: a black man accused of child murder and rape, yet who has a mysterious gift.'),
(27, 'Life Is Beautiful', 8.6, 59, 116, 1997, 'PG', 'When an open-minded Jewish waiter and his son become victims of the Holocaust, he uses a perfect mixture of will, humor and imagination to protect his son from the dangers around their camp.'),
(28, 'Seven', 8.6, 65, 127, 1995, '18', 'Two detectives, a rookie and a veteran, hunt a serial killer who uses the seven deadly sins as his motives.'),
(29, 'Terminator 2: Judgment Day', 8.6, 75, 137, 1991, '15', 'A cyborg, identical to the one who failed to kill Sarah Connor, must now protect her 10-year old son John from an even more advanced and powerful cyborg.'),
(30, 'The Silence of the Lambs', 8.6, 85, 118, 1991, '18', 'A young F.B.I. cadet must receive the help of an incarcerated and manipulative cannibal killer to help catch another serial killer, a madman who skins his victims.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `film_kategori`
--

CREATE TABLE `film_kategori` (
  `film_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `film_kategori`
--

INSERT INTO `film_kategori` (`film_id`, `type_id`) VALUES
(1, 3),
(2, 14),
(2, 3),
(3, 10),
(3, 14),
(3, 3),
(4, 10),
(4, 7),
(4, 3),
(5, 4),
(5, 3),
(5, 1),
(6, 14),
(6, 3),
(7, 14),
(7, 3),
(8, 14),
(8, 3),
(8, 9),
(9, 14),
(9, 3),
(10, 10),
(10, 7),
(10, 8),
(11, 10),
(11, 7),
(11, 3),
(12, 3),
(13, 10),
(13, 7),
(13, 3),
(14, 3),
(14, 16),
(15, 7),
(15, 12),
(16, 3),
(17, 10),
(17, 8),
(18, 14),
(18, 4),
(18, 3),
(19, 10),
(19, 17),
(19, 7),
(20, 3),
(21, 10),
(21, 3),
(22, 8),
(22, 7),
(22, 3),
(23, 14),
(23, 3),
(24, 11),
(24, 7),
(24, 5),
(25, 3),
(25, 21),
(26, 14),
(26, 3),
(26, 17),
(27, 18),
(27, 16),
(27, 3),
(28, 14),
(28, 9),
(28, 3),
(29, 10),
(29, 8),
(30, 14),
(30, 13),
(30, 3);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `film_oyuncu`
--

CREATE TABLE `film_oyuncu` (
  `film_id` int(11) NOT NULL,
  `oyuncu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `film_oyuncu`
--

INSERT INTO `film_oyuncu` (`film_id`, `oyuncu_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(3, 9),
(3, 1),
(3, 11),
(3, 12),
(4, 13),
(4, 14),
(4, 15),
(4, 16),
(5, 17),
(5, 18),
(5, 19),
(5, 2),
(6, 6),
(6, 21),
(6, 22),
(6, 8),
(7, 23),
(7, 24),
(7, 25),
(7, 26),
(8, 27),
(8, 28),
(8, 29),
(8, 3),
(9, 31),
(9, 32),
(9, 33),
(9, 34),
(10, 35),
(10, 36),
(10, 37),
(10, 38),
(11, 13),
(11, 15),
(11, 14),
(11, 16),
(12, 39),
(12, 4),
(12, 41),
(12, 42),
(13, 13),
(13, 15),
(13, 16),
(13, 43),
(14, 44),
(14, 45),
(14, 46),
(14, 47),
(15, 48),
(15, 49),
(15, 5),
(15, 51),
(16, 27),
(16, 52),
(16, 53),
(16, 54),
(17, 55),
(17, 56),
(17, 57),
(17, 58),
(18, 21),
(18, 59),
(18, 6),
(18, 61),
(19, 62),
(19, 63),
(19, 64),
(19, 65),
(20, 66),
(20, 67),
(20, 68),
(20, 69),
(21, 7),
(21, 71),
(21, 72),
(21, 73),
(22, 74),
(22, 75),
(22, 76),
(22, 77),
(23, 78),
(23, 79),
(23, 8),
(23, 81),
(24, 82),
(24, 83),
(24, 84),
(24, 85),
(25, 44),
(25, 86),
(25, 87),
(25, 88),
(26, 44),
(26, 89),
(26, 9),
(26, 91),
(27, 92),
(27, 93),
(27, 94),
(27, 95),
(28, 2),
(28, 39),
(28, 96),
(28, 97),
(29, 98),
(29, 99),
(29, 1),
(29, 101),
(30, 102),
(30, 103),
(30, 104),
(30, 105);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `film_ulke`
--

CREATE TABLE `film_ulke` (
  `film_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `film_ulke`
--

INSERT INTO `film_ulke` (`film_id`, `country_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(4, 2),
(5, 1),
(6, 1),
(7, 1),
(8, 4),
(9, 1),
(10, 1),
(11, 1),
(11, 2),
(12, 1),
(13, 1),
(13, 2),
(14, 1),
(15, 5),
(15, 3),
(16, 4),
(17, 1),
(18, 1),
(19, 1),
(19, 7),
(19, 6),
(20, 1),
(21, 1),
(22, 1),
(23, 9),
(24, 10),
(25, 6),
(25, 1),
(26, 1),
(27, 5),
(28, 1),
(29, 1),
(30, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `film_yonetmen`
--

CREATE TABLE `film_yonetmen` (
  `film_id` int(11) NOT NULL,
  `director_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `film_yonetmen`
--

INSERT INTO `film_yonetmen` (`film_id`, `director_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 2),
(8, 7),
(9, 8),
(10, 3),
(11, 9),
(12, 10),
(13, 9),
(14, 11),
(15, 12),
(16, 13),
(17, 14),
(18, 15),
(19, 16),
(20, 17),
(21, 18),
(22, 3),
(23, 19),
(24, 20),
(25, 5),
(26, 1),
(27, 21),
(28, 10),
(29, 22),
(30, 23);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategoriler`
--

CREATE TABLE `kategoriler` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `kategoriler`
--

INSERT INTO `kategoriler` (`type_id`, `type_name`) VALUES
(1, 'History'),
(2, 'Horror'),
(3, 'Drama'),
(4, 'Biography'),
(5, 'Family'),
(6, 'Sport'),
(7, 'Adventure'),
(8, 'Sci-Fi'),
(9, 'Mystery'),
(10, 'Action'),
(11, 'Animation'),
(12, 'Western'),
(13, 'Thriller'),
(14, 'Crime'),
(15, 'Film-Noir'),
(16, 'Romance'),
(17, 'Fantasy'),
(18, 'Comedy'),
(19, 'Music'),
(20, 'Musical'),
(21, 'War');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `oyuncular`
--

CREATE TABLE `oyuncular` (
  `actor_id` int(11) NOT NULL,
  `actor_name` varchar(100) NOT NULL,
  `actor_year` int(11) NOT NULL,
  `actor_country` int(11) NOT NULL,
  `actor_gender` int(11) NOT NULL,
  `actor_language` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `oyuncular`
--

INSERT INTO `oyuncular` (`actor_id`, `actor_name`, `actor_year`, `actor_country`, `actor_gender`, `actor_language`) VALUES
(1, ' Vladislav Dvorzhetskiy', 1939, 16, 1, 12),
(2, ' Anthony Gonzalez', 2004, 1, 1, 2),
(3, ' Dick York', 1928, 1, 1, 1),
(4, ' Loveleen Tandan', 1973, 4, 2, 3),
(5, ' Billy Bob Thornton', 1955, 1, 1, 1),
(6, ' Andrew Adote', 1986, 1, 1, 1),
(7, ' Michael Strong', 1918, 1, 1, 1),
(8, ' Gregory Dayton', 1960, 3, 1, 1),
(9, ' Gert Fröbe', 1913, 15, 1, 11),
(10, ' Alan Alda', 1936, 1, 1, 1),
(11, ' Veronica Cartwright', 1949, 6, 2, 1),
(12, ' Cary-Hiroyuki Tagawa', 1950, 10, 1, 1),
(13, ' Noriko Hidaka', 1962, 10, 2, 8),
(14, ' Efrem Zimbalist Jr.', 1918, 1, 1, 1),
(15, ' Lucie Mannheim', 1899, 15, 2, 11),
(16, ' Gustav Fröhlich', 1902, 15, 1, 11),
(17, ' Aleksey Kravchenko', 1969, 16, 1, 12),
(18, ' Ingrid Thulin', 1926, 8, 2, 6),
(19, ' Ananda George', 1977, 23, 1, 1),
(20, ' Harriet Andersson', 1932, 8, 2, 6),
(21, ' Anna Faris', 1976, 1, 2, 1),
(22, ' Mathieu Kassovitz', 1967, 12, 1, 9),
(23, ' Karen Black', 1939, 1, 2, 1),
(24, ' Liv Ullmann', 1938, 7, 2, 5),
(25, ' Paresh Rawal', 1950, 4, 1, 3),
(26, ' Julia Stiles', 1981, 1, 2, 1),
(27, ' Hans Olav Brenner', 1972, 7, 1, 5),
(28, ' Sean Young', 1959, 1, 2, 1),
(29, ' Jean-Paul Belmondo', 1933, 16, 1, 9),
(30, ' Lloyd Bridges', 1913, 1, 1, 1),
(31, ' Joanna Cassidy', 1945, 1, 2, 1),
(32, ' Jong-ho Kim', 1971, 20, 1, 16),
(33, ' Anne Bancroft', 1931, 1, 2, 1),
(34, ' James Garner', 1928, 1, 1, 1),
(35, ' Helmut Griem', 1932, 15, 1, 11),
(36, ' Freida Pinto', 1984, 4, 2, 1),
(37, ' Salman Khan', 1965, 4, 1, 3),
(38, ' Anouk Aimée', 1932, 16, 2, 9),
(39, ' Antonella Attili', 1960, 5, 2, 4),
(40, ' Martin Landau', 1928, 1, 1, 1),
(41, ' Trey Parker', 1969, 1, 1, 1),
(42, ' James Caan', 1940, 1, 1, 1),
(43, ' Eva Marie Saint', 1924, 1, 2, 1),
(44, ' Jason Cope', 1972, 21, 1, 1),
(45, ' John McGiver', 1913, 1, 1, 1),
(46, ' Frank Morgan', 1890, 1, 1, 1),
(47, ' Guy Decomble', 1910, 16, 2, 9),
(48, ' Takashi Tachibana', 1950, 10, 2, 8),
(49, ' Sam Shepard', 1943, 1, 1, 1),
(50, ' Katharine Houghton', 1945, 1, 2, 1),
(51, ' Sakura Ando', 1986, 10, 2, 8),
(52, ' Mone Kamishiraishi', 1998, 10, 2, 8),
(53, ' Hubertus Bengsch', 1952, 15, 1, 11),
(54, ' Burt Lancaster', 1913, 1, 1, 1),
(55, ' Carlos Martínez López', 1986, 3, 1, 2),
(56, ' Dominique Pinon', 1955, 12, 1, 9),
(57, ' Klaus Kinski', 1926, 17, 1, 11),
(58, ' Lorella Cravotta', 1957, 5, 2, 4),
(59, ' Benno Fürmann', 1972, 15, 1, 11),
(60, ' Michael Stuhlbarg', 1968, 1, 1, 1),
(61, ' Annika Wedderkopp', 2003, 1, 2, 14),
(62, ' Thelma Ritter', 1902, 1, 2, 13),
(63, ' Gerry Robert Byrne', 1939, 11, 1, 1),
(64, ' Halvar Björk', 1974, 8, 1, 6),
(65, ' Viggo Mortensen', 1969, 1, 1, 1),
(66, ' Meg Ryan', 1936, 1, 2, 1),
(67, ' Danny McBride', 1976, 1, 1, 1),
(68, ' Mithun Chakraborty', 1950, 4, 1, 1),
(69, ' Hailee Steinfeld', 1996, 1, 2, 1),
(70, ' René Clément', 1913, 12, 1, 9),
(71, ' Drew Barrymore', 1975, 1, 2, 1),
(72, ' Nicole Kidman', 1967, 1, 2, 1),
(73, ' Suriya', 1975, 4, 1, 3),
(74, ' Max von Sydow', 1929, 8, 1, 6),
(75, ' Paprika Steen', 1964, 18, 2, 14),
(76, ' Zoë Kravitz', 1988, 1, 2, 1),
(77, ' Christopher Reeve', 1952, 1, 1, 1),
(78, ' Ulrich Thomsen', 1963, 18, 1, 14),
(79, ' Laurence Fishburne', 1961, 19, 1, 1),
(80, ' Miles Teller', 1987, 1, 1, 1),
(81, ' Azhy Robertson', 2008, 1, 1, 1),
(82, ' Geoffrey Rush', 1951, 22, 1, 1),
(83, ' John Gavin', 1931, 1, 1, 1),
(84, ' Paul Stewart', 1908, 1, 1, 1),
(85, ' Taron Egerton', 1989, 6, 1, 1),
(86, ' Callan McAuliffe', 1995, 22, 1, 1),
(87, ' Grigoriy Aleksandrov', 1908, 16, 1, 12),
(88, ' Alain Delon', 1935, 12, 1, 9),
(89, ' Ezra Miller', 1992, 1, 1, 1),
(90, ' Brigitte Helm', 1906, 15, 2, 11),
(91, ' Arthur O\'Connell', 1908, 1, 1, 1),
(92, ' Amira Casar', 1971, 6, 2, 1),
(93, ' Vinícius de Oliveira', 1983, 9, 1, 7),
(94, ' Sô Yamamura', 1912, 10, 1, 8),
(95, ' Sacha Baron Cohen', 1971, 6, 1, 1),
(96, ' John Boles', 1895, 6, 1, 1),
(97, ' Rosario Dawson', 1979, 1, 2, 1),
(98, ' Cuba Gooding Jr.', 1968, 1, 1, 1),
(99, ' Ian McKellen', 1939, 6, 1, 1),
(100, ' Dee Wallace', 1948, 1, 2, 1),
(101, ' Thomas Turgoose', 1992, 6, 1, 1),
(102, ' Jack Hawkins', 1910, 6, 1, 1),
(103, ' Shriya Saran', 1982, 4, 2, 3),
(104, ' Kátia Lund', 1975, 9, 2, 7),
(105, ' Birgitta Valberg', 1924, 8, 2, 6),
(106, ' Robert Mitchum', 1917, 1, 1, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ulkeler`
--

CREATE TABLE `ulkeler` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(75) NOT NULL,
  `country_population` int(25) NOT NULL,
  `country_language` int(11) NOT NULL,
  `country_capitalcity` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `ulkeler`
--

INSERT INTO `ulkeler` (`country_id`, `country_name`, `country_population`, `country_language`, `country_capitalcity`) VALUES
(1, 'Amerika Birleşik Devletleri', 331000000, 1, 'Washington'),
(2, 'Yeni Zelanda', 5000000, 1, 'Wellington'),
(3, 'İspanya', 47000000, 2, 'Madrid'),
(4, 'Hindistan', 1400000000, 3, 'Yeni Delhi'),
(5, 'İtalya', 6000000, 4, 'Roma'),
(6, 'İngiltere', 56000000, 1, 'Londra'),
(7, 'Norveç', 5000000, 5, 'Oslo'),
(8, 'İsveç', 10000000, 6, 'Stockholm'),
(9, 'Brezilya', 213000000, 7, 'Brasilia'),
(10, 'Japonya', 126000000, 8, 'Tokyo'),
(11, 'İrlanda', 5000000, 1, 'Dublin'),
(12, 'Fransa', 67000000, 9, 'Paris'),
(13, 'Çek Cumhuriyeti', 10700000, 10, 'Prag'),
(14, 'Kanada', 38000000, 1, 'Ottowa'),
(15, 'Almanya', 83000000, 11, 'Berlin'),
(16, 'Rusya', 146000000, 12, 'Moskova'),
(17, 'Polonya', 38000000, 13, 'Var?ova'),
(18, 'Danimarka', 5800000, 14, 'Kopenhag'),
(19, 'Gürcistan', 3700000, 15, 'Tiflis'),
(20, 'Güney Kore', 51000000, 16, 'Seul'),
(21, 'Güney Afrika', 59000000, 17, 'Pretorya'),
(22, 'Avustralya', 25000000, 1, 'Canberra'),
(23, 'Endonezya', 270000000, 18, 'Cakarta');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yapımsirketi_film`
--

CREATE TABLE `yapımsirketi_film` (
  `cast_id` int(11) NOT NULL,
  `film_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `yapımsirketi_film`
--

INSERT INTO `yapımsirketi_film` (`cast_id`, `film_id`) VALUES
(1, 1),
(2, 2),
(2, 6),
(2, 14),
(2, 21),
(2, 22),
(2, 25),
(3, 3),
(3, 10),
(3, 17),
(3, 18),
(3, 22),
(3, 26),
(4, 4),
(4, 11),
(4, 13),
(4, 28),
(5, 5),
(6, 7),
(6, 15),
(6, 20),
(7, 8),
(8, 9),
(9, 12),
(10, 16),
(11, 16),
(12, 19),
(13, 19),
(14, 23),
(15, 24),
(16, 25),
(17, 27),
(18, 29),
(19, 29),
(20, 30),
(21, 15);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yapım_sirketleri`
--

CREATE TABLE `yapım_sirketleri` (
  `cast_id` int(11) NOT NULL,
  `cast_name` varchar(100) NOT NULL,
  `cast_year` int(11) NOT NULL,
  `cast_country` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `yapım_sirketleri`
--

INSERT INTO `yapım_sirketleri` (`cast_id`, `cast_name`, `cast_year`, `cast_country`) VALUES
(1, 'Columbia Pictures', 1924, 1),
(2, 'Paramount Pictures', 1912, 1),
(3, 'Warner Bros. Pictures', 1923, 1),
(4, 'New Line Cinema', 1967, 1),
(5, 'Universal Pictures', 1912, 1),
(6, 'United Artists', 1919, 1),
(7, 'Adhikari Brothers Pictures', 1985, 4),
(8, 'Miramax Films', 1979, 1),
(9, '20th Century Fox', 1935, 1),
(10, '2D Entertainment', 2013, 4),
(11, 'Sikhya Entertainment', 2008, 4),
(12, 'LucasFilm', 1971, 1),
(13, ' 20th Century Studios', 1935, 1),
(14, 'O2 Filmes', 1992, 9),
(15, 'Studio Ghibli', 1985, 10),
(16, 'DreamWorks Pictures', 1994, 1),
(17, 'Melampo Cinematografica', 1991, 5),
(18, 'TriStar Pictures', 1982, 1),
(19, 'Carolco Pictures', 1976, 1),
(20, 'Orion Pictures', 1978, 1),
(21, 'Produzioni Europee Associati', 1962, 5);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yonetmenler`
--

CREATE TABLE `yonetmenler` (
  `director_id` int(11) NOT NULL,
  `director_name` varchar(75) NOT NULL,
  `director_year` int(11) NOT NULL,
  `director_country` int(11) NOT NULL,
  `director_gender` int(11) NOT NULL,
  `director_language` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `yonetmenler`
--

INSERT INTO `yonetmenler` (`director_id`, `director_name`, `director_year`, `director_country`, `director_gender`, `director_language`) VALUES
(1, 'Frank Darabont', 1959, 12, 1, 9),
(2, 'Francis Ford Coppola', 1939, 1, 1, 1),
(3, 'Christopher Nolan', 1970, 6, 1, 1),
(4, 'Peter Jackson', 1961, 2, 1, 1),
(5, 'Steven Spielberg', 1946, 1, 1, 1),
(7, 'Sidney Lumet', 1975, 1, 1, 1),
(8, 'T.J. Gnanavel', 1918, 4, 1, 3),
(9, 'Quentin Tarantino', 1964, 1, 1, 1),
(10, 'Peter Jackson', 1988, 2, 1, 1),
(11, 'David Fincher', 1952, 1, 1, 1),
(12, 'Robert Zemeckis', 1963, 1, 1, 1),
(13, 'Sergio Leone', 1961, 5, 1, 4),
(14, 'Sudha Kongara', 1987, 4, 2, 3),
(15, 'Lana Wachowski', 2008, 1, 2, 1),
(16, 'Martin Scorsese', 1951, 1, 1, 1),
(17, 'Irvin Kershner', 1931, 1, 1, 1),
(18, 'Milos Forman', 1908, 13, 1, 10),
(19, ' Joseph Kosinski', 1989, 1, 1, 1),
(20, 'Fernando Meirelles', 1995, 9, 1, 7),
(21, 'Hayao Miyazaki', 1908, 10, 1, 8),
(22, 'Roberto Benigni', 1935, 5, 1, 4),
(23, 'James Cameron', 1992, 14, 1, 1),
(24, 'Jonathan Demme', 1906, 1, 1, 1);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `cinsiyet`
--
ALTER TABLE `cinsiyet`
  ADD PRIMARY KEY (`gender_id`);

--
-- Tablo için indeksler `diller`
--
ALTER TABLE `diller`
  ADD PRIMARY KEY (`language_id`);

--
-- Tablo için indeksler `filmler`
--
ALTER TABLE `filmler`
  ADD PRIMARY KEY (`film_id`);

--
-- Tablo için indeksler `film_kategori`
--
ALTER TABLE `film_kategori`
  ADD KEY `film_id` (`film_id`),
  ADD KEY `tur_id` (`type_id`);

--
-- Tablo için indeksler `film_oyuncu`
--
ALTER TABLE `film_oyuncu`
  ADD KEY `film_id` (`film_id`),
  ADD KEY `oyuncu_id` (`oyuncu_id`);

--
-- Tablo için indeksler `film_ulke`
--
ALTER TABLE `film_ulke`
  ADD KEY `film_id` (`film_id`),
  ADD KEY `country_id` (`country_id`);

--
-- Tablo için indeksler `film_yonetmen`
--
ALTER TABLE `film_yonetmen`
  ADD KEY `film_id` (`film_id`),
  ADD KEY `director_id` (`director_id`);

--
-- Tablo için indeksler `kategoriler`
--
ALTER TABLE `kategoriler`
  ADD PRIMARY KEY (`type_id`);

--
-- Tablo için indeksler `oyuncular`
--
ALTER TABLE `oyuncular`
  ADD PRIMARY KEY (`actor_id`),
  ADD KEY `oyuncu_language` (`actor_language`),
  ADD KEY `oyuncu_gender` (`actor_gender`),
  ADD KEY `oyuncu_country` (`actor_country`),
  ADD KEY `actor_language` (`actor_language`);

--
-- Tablo için indeksler `ulkeler`
--
ALTER TABLE `ulkeler`
  ADD PRIMARY KEY (`country_id`),
  ADD KEY `country_language` (`country_language`);

--
-- Tablo için indeksler `yapımsirketi_film`
--
ALTER TABLE `yapımsirketi_film`
  ADD KEY `film_id` (`film_id`),
  ADD KEY `cast_id` (`cast_id`);

--
-- Tablo için indeksler `yapım_sirketleri`
--
ALTER TABLE `yapım_sirketleri`
  ADD PRIMARY KEY (`cast_id`),
  ADD KEY `cast_country` (`cast_country`);

--
-- Tablo için indeksler `yonetmenler`
--
ALTER TABLE `yonetmenler`
  ADD PRIMARY KEY (`director_id`),
  ADD KEY `director_country` (`director_country`,`director_gender`,`director_language`),
  ADD KEY `director_language` (`director_language`),
  ADD KEY `director_gender` (`director_gender`);

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `film_kategori`
--
ALTER TABLE `film_kategori`
  ADD CONSTRAINT `film_kategori_ibfk_1` FOREIGN KEY (`film_id`) REFERENCES `filmler` (`film_id`),
  ADD CONSTRAINT `film_kategori_ibfk_2` FOREIGN KEY (`type_id`) REFERENCES `kategoriler` (`type_id`);

--
-- Tablo kısıtlamaları `film_oyuncu`
--
ALTER TABLE `film_oyuncu`
  ADD CONSTRAINT `film_oyuncu_ibfk_1` FOREIGN KEY (`film_id`) REFERENCES `filmler` (`film_id`),
  ADD CONSTRAINT `film_oyuncu_ibfk_2` FOREIGN KEY (`oyuncu_id`) REFERENCES `oyuncular` (`actor_id`);

--
-- Tablo kısıtlamaları `film_ulke`
--
ALTER TABLE `film_ulke`
  ADD CONSTRAINT `film_ulke_ibfk_1` FOREIGN KEY (`film_id`) REFERENCES `filmler` (`film_id`),
  ADD CONSTRAINT `film_ulke_ibfk_2` FOREIGN KEY (`country_id`) REFERENCES `ulkeler` (`country_id`);

--
-- Tablo kısıtlamaları `film_yonetmen`
--
ALTER TABLE `film_yonetmen`
  ADD CONSTRAINT `film_yonetmen_ibfk_1` FOREIGN KEY (`film_id`) REFERENCES `filmler` (`film_id`),
  ADD CONSTRAINT `film_yonetmen_ibfk_2` FOREIGN KEY (`director_id`) REFERENCES `yonetmenler` (`director_id`);

--
-- Tablo kısıtlamaları `oyuncular`
--
ALTER TABLE `oyuncular`
  ADD CONSTRAINT `oyuncular_ibfk_1` FOREIGN KEY (`actor_language`) REFERENCES `diller` (`language_id`),
  ADD CONSTRAINT `oyuncular_ibfk_2` FOREIGN KEY (`actor_gender`) REFERENCES `cinsiyet` (`gender_id`),
  ADD CONSTRAINT `oyuncular_ibfk_3` FOREIGN KEY (`actor_country`) REFERENCES `ulkeler` (`country_id`);

--
-- Tablo kısıtlamaları `ulkeler`
--
ALTER TABLE `ulkeler`
  ADD CONSTRAINT `ulkeler_ibfk_1` FOREIGN KEY (`country_language`) REFERENCES `diller` (`language_id`);

--
-- Tablo kısıtlamaları `yapımsirketi_film`
--
ALTER TABLE `yapımsirketi_film`
  ADD CONSTRAINT `yapımsirketi_film_ibfk_1` FOREIGN KEY (`film_id`) REFERENCES `filmler` (`film_id`),
  ADD CONSTRAINT `yapımsirketi_film_ibfk_2` FOREIGN KEY (`cast_id`) REFERENCES `yapım_sirketleri` (`cast_id`);

--
-- Tablo kısıtlamaları `yapım_sirketleri`
--
ALTER TABLE `yapım_sirketleri`
  ADD CONSTRAINT `yapım_sirketleri_ibfk_1` FOREIGN KEY (`cast_country`) REFERENCES `ulkeler` (`country_id`);

--
-- Tablo kısıtlamaları `yonetmenler`
--
ALTER TABLE `yonetmenler`
  ADD CONSTRAINT `yonetmenler_ibfk_1` FOREIGN KEY (`director_language`) REFERENCES `diller` (`language_id`),
  ADD CONSTRAINT `yonetmenler_ibfk_2` FOREIGN KEY (`director_gender`) REFERENCES `cinsiyet` (`gender_id`),
  ADD CONSTRAINT `yonetmenler_ibfk_3` FOREIGN KEY (`director_country`) REFERENCES `ulkeler` (`country_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
