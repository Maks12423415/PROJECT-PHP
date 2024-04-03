-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2024 at 03:52 PM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `szkola`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kursy`
--

CREATE TABLE `kursy` (
  `login` varchar(30) NOT NULL,
  `upr` text NOT NULL,
  `tytul` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kursy`
--

INSERT INTO `kursy` (`login`, `upr`, `tytul`) VALUES
('admin', 'admin', 'Kurs języka angielskiego'),
('admin1', 'user', 'Kurs języka niemieckiego'),
('test', 'user', '2');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `lekcje`
--

CREATE TABLE `lekcje` (
  `tytul` varchar(30) NOT NULL,
  `tresc` text NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lekcje`
--

INSERT INTO `lekcje` (`tytul`, `tresc`, `ID`) VALUES
('Kurs języka angielskiego', 'Lekcja 1: Pozdrowienia i Przedstawianie Się\r\nStandardowe pozdrowienia:\r\n\"Hello\" - Ogólne powitanie.\r\n\"Hi\" - Powszechne powitanie.\r\n\"Good morning\" - Dobre rano, stosowane od rana do około południa.\r\n\"Good afternoon\" - Dzień dobry, stosowane po południu do wieczora.\r\n\"Good evening\" - Dobry wieczór, stosowane wieczorem po zmroku.\r\nPrzedstawianie się:\r\n\"Hello, my name is [name].\" - Witaj, nazywam się [imię].\r\n\"What\'s your name?\" - Jak masz na imię?', 1),
('Kurs języka angielskiego', 'Lekcja 2: Liczebniki i Pytania o Liczbę\r\nLiczebniki kardynalne:\r\nOne - jeden\r\nTwo - dwa\r\nThree - trzy\r\nFour - cztery\r\nFive - pięć\r\nSix - sześć\r\nSeven - siedem\r\nEight - osiem\r\nNine - dziewięć\r\nTen - dziesięć\r\nPytania o liczbę:\r\n\"How many [objects] are there?\" - Ile jest [obiektów]?', 2),
('Kurs języka angielskiego', 'Lekcja 3: Kolory i Opisywanie Rzeczy\r\nPodstawowe kolory:\r\nRed - czerwony\r\nBlue - niebieski\r\nGreen - zielony\r\nYellow - żółty\r\nBlack - czarny\r\nWhite - biały\r\nOrange - pomarańczowy\r\nPurple - fioletowy\r\nOpisywanie rzeczy:\r\n\"The car is red.\" - Samochód jest czerwony.\r\n\"The sky is blue.\" - Niebo jest niebieskie.', 3),
('Kurs języka angielskiego', 'Lekcja 4: Rodzina i Opisywanie Relacji Rodzinnych\r\nRodzina:\r\nFather - ojciec\r\nMother - matka\r\nBrother - brat\r\nSister - siostra\r\nSon - syn\r\nDaughter - córka\r\nOpisywanie relacji rodzinnych:\r\n\"He is my father.\" - On jest moim ojcem.\r\n\"She is my sister.\" - Ona jest moją siostrą.', 4),
('Kurs języka angielskiego', 'Lekcja 5: Opisywanie Członków Rodziny i Ich Zainteresowań\r\nOpisywanie członków rodziny:\r\n\"My father is tall.\" - Mój ojciec jest wysoki.\r\n\"My sister is young.\" - Moja siostra jest młoda.\r\nZainteresowania:\r\n\"I like [activity].\" - Lubię [aktywność].\r\n\"He likes [activity].\" - On lubi [aktywność].', 5),
('Kurs języka angielskiego', 'Lekcja 6: Opisywanie Codziennych Czynności\r\nOpisywanie codziennych czynności:\r\n\"I wake up at 7 o\'clock.\" - Budzę się o 7:00.\r\n\"I brush my teeth.\" - Myję zęby.\r\nUżycie czasowników w czasie Present Simple:\r\n\"He eats breakfast every morning.\" - On je śniadanie każdego ranka.', 6),
('Kurs języka angielskiego', 'Lekcja 7: Opisywanie Miejsca Zamieszkania i Podstawowe Kierunki\r\nOpisywanie miejsca zamieszkania:\r\n\"I live in [city/town].\" - Mieszkam w [mieście/miejscowości].\r\n\"I have a house.\" - Mam dom.\r\nPodstawowe kierunki:\r\n\"Go straight.\" - Idź prosto.\r\n\"Turn left.\" - Skręć w lewo.\r\n\"Turn right.\" - Skręć w prawo.', 7),
('Kurs języka angielskiego', 'Lekcja 8: Opisywanie Pogody i Ubieranie Się Adekwatnie\r\nOpisywanie pogody:\r\n\"It\'s sunny.\" - Jest słonecznie.\r\n\"It\'s rainy.\" - Pada deszcz.\r\n\"It\'s windy.\" - Jest wietrznie.\r\nUbieranie się adekwatnie do pogody:\r\n\"Wear a coat.\" - Załóż płaszcz.\r\n\"Take an umbrella.\" - Weź parasol.', 8),
('Kurs języka angielskiego', 'Lekcja 9: Zakupy i Wskazywanie na Rzeczy\r\nZakupy:\r\n\"I would like to buy [item].\" - Chciałbym kupić [rzecz].\r\n\"I need to buy groceries.\" - Muszę zrobić zakupy spożywcze.\r\nWskazywanie na rzeczy:\r\n\"The pen is on the table.\" - Długopis jest na stole.\r\n\"The book is under the bed.\" - Książka jest pod łóżkiem.', 9),
('Kurs języka angielskiego', 'Lekcja 10: Planowanie Przyszłych Wydarzeń i Używanie Form Czasowników\r\nPlanowanie przyszłych wydarzeń:\r\n\"I will go to the party tomorrow.\" - Pójdę na imprezę jutro.\r\n\"I\'m going to visit my grandparents next week.\" - Zamierzam odwiedzić dziadków w przyszłym tygodniu.\r\nUżywanie form czasowników:\r\n\"I am studying English.\" - Uczę się angielskiego.\r\n\"He is eating breakfast.\" - On je śniadanie.', 10);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rodzaje`
--

CREATE TABLE `rodzaje` (
  `ID` int(11) NOT NULL,
  `tytul_kursy` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rodzaje`
--

INSERT INTO `rodzaje` (`ID`, `tytul_kursy`) VALUES
(1, 'Kurs języka angielskiego'),
(2, 'Kurs języka niemieckiego'),
(3, 'Kurs języka arabskiego'),
(4, 'Kurs języka hiszpańskiego'),
(5, 'Kurs języka francuskiego'),
(6, 'Kurs języka rosyjskiego');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `login` varchar(30) NOT NULL,
  `pass` varchar(32) NOT NULL,
  `upr` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`login`, `pass`, `upr`) VALUES
('admin', '202cb962ac59075b964b07152d234b70', 'user'),
('admin1', '202cb962ac59075b964b07152d234b70', 'admin'),
('ten_debil', '202cb962ac59075b964b07152d234b70', 'admin'),
('user', '202cb962ac59075b964b07152d234b70', 'admin');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `kursy`
--
ALTER TABLE `kursy`
  ADD PRIMARY KEY (`login`);

--
-- Indeksy dla tabeli `lekcje`
--
ALTER TABLE `lekcje`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `rodzaje`
--
ALTER TABLE `rodzaje`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`login`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lekcje`
--
ALTER TABLE `lekcje`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `rodzaje`
--
ALTER TABLE `rodzaje`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
