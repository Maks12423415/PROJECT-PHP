-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2024 at 03:56 PM
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
('123', 'user', 'Kurs języka angielskiego'),
('1234', 'user', 'Kurs języka rosyjskiego'),
('admin', 'admin', 'Kurs języka angielskiego'),
('admin1', 'user', 'Kurs języka angielskiego'),
('admin123', 'user', 'Kurs języka niemieckiego'),
('ktos', 'user', NULL),
('maks', 'user', NULL),
('szymon', 'user', 'Kurs języka niemieckiego'),
('test', 'user', '2'),
('test1', 'user', 'Kurs języka hiszpańskiego');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `lekcje`
--

CREATE TABLE `lekcje` (
  `tytul` varchar(30) NOT NULL,
  `tresc` text NOT NULL,
  `ID` int(11) NOT NULL,
  `ID_lekcji` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lekcje`
--

INSERT INTO `lekcje` (`tytul`, `tresc`, `ID`, `ID_lekcji`) VALUES
('Kurs języka angielskiego', '<p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p>Lekcja 1: Podstawowe zwroty</p><div>\"Hi\" - \"Cześć\"</div><div><br></div><div>Hello word</div><div><br></div><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p>', 1, 1),
('Kurs języka angielskiego', '<p></p><p></p><p>Lekcja 2: Liczebniki i Pytania o Liczbę\r\nLiczebniki kardynalne:&nbsp;</p><p>One - jeden</p><p>&nbsp;Two - dwa&nbsp;</p><p>Three - trzy</p><p>&nbsp;Four - cztery</p><p>&nbsp;Five - pięć&nbsp;</p><p>Six - sześć&nbsp;</p><p>Seven - siedem&nbsp;</p><p>Eight - osiem&nbsp;</p><p>Nine - dziewięć&nbsp;</p><p>Ten - dziesięć&nbsp;</p><p>Pytania o liczbę:</p><p>&nbsp;\"How many [objects] are there?\" - Ile jest [obiektów]?</p><p><br></p><p><br></p><p></p><p></p>', 2, 2),
('Kurs języka angielskiego', 'Lekcja 3: Kolory i Opisywanie Rzeczy\r\nPodstawowe kolory:\r\nRed - czerwony\r\nBlue - niebieski\r\nGreen - zielony\r\nYellow - żółty\r\nBlack - czarny\r\nWhite - biały\r\nOrange - pomarańczowy\r\nPurple - fioletowy\r\nOpisywanie rzeczy:\r\n\"The car is red.\" - Samochód jest czerwony.\r\n\"The sky is blue.\" - Niebo jest niebieskie.', 3, 3),
('Kurs języka angielskiego', 'Lekcja 4: Rodzina i Opisywanie Relacji Rodzinnych\r\nRodzina:\r\nFather - ojciec\r\nMother - matka\r\nBrother - brat\r\nSister - siostra\r\nSon - syn\r\nDaughter - córka\r\nOpisywanie relacji rodzinnych:\r\n\"He is my father.\" - On jest moim ojcem.\r\n\"She is my sister.\" - Ona jest moją siostrą.', 4, 4),
('Kurs języka angielskiego', 'Lekcja 5: Opisywanie Członków Rodziny i Ich Zainteresowań\r\nOpisywanie członków rodziny:\r\n\"My father is tall.\" - Mój ojciec jest wysoki.\r\n\"My sister is young.\" - Moja siostra jest młoda.\r\nZainteresowania:\r\n\"I like [activity].\" - Lubię [aktywność].\r\n\"He likes [activity].\" - On lubi [aktywność].', 5, 5),
('Kurs języka angielskiego', 'Lekcja 6: Opisywanie Codziennych Czynności\r\nOpisywanie codziennych czynności:\r\n\"I wake up at 7 o\'clock.\" - Budzę się o 7:00.\r\n\"I brush my teeth.\" - Myję zęby.\r\nUżycie czasowników w czasie Present Simple:\r\n\"He eats breakfast every morning.\" - On je śniadanie każdego ranka.', 6, 6),
('Kurs języka angielskiego', 'Lekcja 7: Opisywanie Miejsca Zamieszkania i Podstawowe Kierunki\r\nOpisywanie miejsca zamieszkania:\r\n\"I live in [city/town].\" - Mieszkam w [mieście/miejscowości].\r\n\"I have a house.\" - Mam dom.\r\nPodstawowe kierunki:\r\n\"Go straight.\" - Idź prosto.\r\n\"Turn left.\" - Skręć w lewo.\r\n\"Turn right.\" - Skręć w prawo.', 7, 7),
('Kurs języka angielskiego', 'Lekcja 8: Opisywanie Pogody i Ubieranie Się Adekwatnie\r\nOpisywanie pogody:\r\n\"It\'s sunny.\" - Jest słonecznie.\r\n\"It\'s rainy.\" - Pada deszcz.\r\n\"It\'s windy.\" - Jest wietrznie.\r\nUbieranie się adekwatnie do pogody:\r\n\"Wear a coat.\" - Załóż płaszcz.\r\n\"Take an umbrella.\" - Weź parasol.', 8, 8),
('Kurs języka angielskiego', 'Lekcja 9: Zakupy i Wskazywanie na Rzeczy\r\nZakupy:\r\n\"I would like to buy [item].\" - Chciałbym kupić [rzecz].\r\n\"I need to buy groceries.\" - Muszę zrobić zakupy spożywcze.\r\nWskazywanie na rzeczy:\r\n\"The pen is on the table.\" - Długopis jest na stole.\r\n\"The book is under the bed.\" - Książka jest pod łóżkiem.', 9, 9),
('Kurs języka angielskiego', 'Lekcja 10: Planowanie Przyszłych Wydarzeń i Używanie Form Czasowników\r\nPlanowanie przyszłych wydarzeń:\r\n\"I will go to the party tomorrow.\" - Pójdę na imprezę jutro.\r\n\"I\'m going to visit my grandparents next week.\" - Zamierzam odwiedzić dziadków w przyszłym tygodniu.\r\nUżywanie form czasowników:\r\n\"I am studying English.\" - Uczę się angielskiego.\r\n\"He is eating breakfast.\" - On je śniadanie.', 10, 10),
('Kurs języka niemieckiego', '<p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p>Lekcja 1: Podstawowe zwroty</p><div>\"Hi\" - \"Cześć\"</div><div><br></div><div><br></div><div>elo elo sigma skibidi ohio nigger</div><div><br></div><div>\"KOCHAM POLSKĄ POLICJĘ &lt;3 &lt;3 &lt;3\" ~ Franek Gałązka</div><div><br></div><div><br></div><div>\' skibidhaofhofkhsgs</div><div><br></div><div><br></div><div><br></div><div><br></div><div><br></div><div><br></div><div><br></div><div>aha</div><div><br></div><div>/n</div><div>\' null \'</div><div><br></div><div><br></div><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p>', 11, 1),
('Kurs języka niemieckiego', '<p></p><p></p><p></p><p>Lekcja 2: Liczebniki i Pytania o Liczbę\r\nLiczebniki kardynalne:&nbsp;</p><p>One - jeden</p><p>&nbsp;Two - dwa&nbsp;</p><p>Three - trzy</p><p>&nbsp;Four - cztery</p><p>&nbsp;Five - pięć&nbsp;</p><p>Six - sześć&nbsp;</p><p>Seven - siedem&nbsp;</p><p>Eight - osiem&nbsp;</p><p>Nine - dziewięć&nbsp;</p><p>Ten - dziesięć&nbsp;</p><p>Pytania o liczbę:</p><p>&nbsp;\"How many [objects] are there?\" - Ile jest [obiektów]?</p><p><br></p><p><br></p><p></p><p></p><p></p>', 12, 2),
('Kurs języka niemieckiego', 'Kurs Języka Niemieckiego: Lekcja 3\r\n\r\nTemat: Rodzina i opis osób\r\n\r\nWstęp: W tej lekcji nauczysz się słów związanych z rodziną oraz opisywaniem osób.\r\n\r\nRodzina:\r\n\r\ndie Familie – rodzina\r\nder Vater – ojciec\r\ndie Mutter – matka\r\nder Bruder – brat\r\ndie Schwester – siostra\r\nder Sohn – syn\r\ndie Tochter – córka\r\nOpisywanie osób:\r\n\r\nMein Vater ist groß und freundlich. – Mój ojciec jest wysoki i przyjazny.\r\nMeine Schwester hat blonde Haare. – Moja siostra ma blond włosy.\r\nMein Bruder trägt eine Brille. – Mój brat nosi okulary.\r\nĆwiczenia:\r\n\r\nOpisz swoją rodzinę, używając słów z tej lekcji.\r\nPoproś kolegę/koleżankę, aby opisał/a swoich rodziców.\r\nTłumaczenia:\r\n\r\ndie Familie – rodzina\r\nder Vater – ojciec\r\ndie Mutter – matka\r\nder Bruder – brat\r\ndie Schwester – siostra\r\nder Sohn – syn\r\ndie Tochter – córka\r\nMein Vater ist groß und freundlich. – Mój ojciec jest wysoki i przyjazny.\r\nMeine Schwester hat blonde Haare. – Moja siostra ma blond włosy.\r\nMein Bruder trägt eine Brille. – Mój brat nosi okulary.', 13, 3),
('Kurs języka niemieckiego', 'Kurs Języka Niemieckiego: Lekcja 4\r\n\r\nTemat: Jedzenie i restauracja\r\n\r\nWstęp: W tej lekcji poznamy słownictwo związane z jedzeniem oraz wyrażeniami używanymi w restauracji.\r\n\r\nJedzenie:\r\n\r\ndas Essen – jedzenie\r\ndas Frühstück – śniadanie\r\ndas Mittagessen – obiad\r\ndas Abendessen – kolacja\r\ndie Suppe – zupa\r\nder Salat – sałatka\r\ndas Fleisch – mięso\r\nder Fisch – ryba\r\ndas Gemüse – warzywa\r\ndie Früchte – owoce\r\nW restauracji:\r\n\r\nIch hätte gerne eine Pizza. – Chciałbym/chciałabym pizzę.\r\nHaben Sie vegetarische Gerichte? – Czy mają Państwo dania wegetariańskie?\r\nDie Rechnung, bitte. – Rachunek, proszę.\r\nDanke für das Essen! – Dziękuję za jedzenie!\r\nĆwiczenia:\r\n\r\nPrzećwicz wymawianie nazw potraw.\r\nSymuluj zamawianie jedzenia w restauracji, stosując wyrażenia z tej lekcji.\r\nTłumaczenia:\r\n\r\ndas Essen – jedzenie\r\ndas Frühstück – śniadanie\r\ndas Mittagessen – obiad\r\ndas Abendessen – kolacja\r\ndie Suppe – zupa\r\nder Salat – sałatka\r\ndas Fleisch – mięso\r\nder Fisch – ryba\r\ndas Gemüse – warzywa\r\ndie Früchte – owoce\r\nIch hätte gerne eine Pizza. – Chciałbym/chciałabym pizzę.\r\nHaben Sie vegetarische Gerichte? – Czy mają Państwo dania wegetariańskie?\r\nDie Rechnung, bitte. – Rachunek, proszę.\r\nDanke für das Essen! – Dziękuję za jedzenie!', 14, 4),
('Kurs języka niemieckiego', '\nKurs Języka Niemieckiego: Lekcja 5\n\nTemat: Czas wolny i hobby\n\nWstęp: W tej lekcji omówimy słownictwo związane z czasem wolnym oraz hobby.\n\nCzas wolny:\n\ndie Freizeit – czas wolny\ndas Hobby – hobby\nlesen – czytać\nmalen – malować\nmusizieren – muzykować\nfotografieren – fotografować\nreisen – podróżować\nSport treiben – uprawiać sport\nPytania o hobby:\n\nWas machst du gern in deiner Freizeit? – Co lubisz robić w czasie wolnym?\nSpielst du ein Instrument? – Grasz na jakimś instrumencie?\nĆwiczenia:\n\nOpowiedz o swoich zainteresowaniach i hobby.\nZapytaj kolegę/koleżankę o to, co lubi robić w czasie wolnym.\nTłumaczenia:\n\ndie Freizeit – czas wolny\ndas Hobby – hobby\nlesen – czytać\nmalen – malować\nmusizieren – muzykować\nfotografieren – fotografować\nreisen – podróżować\nSport treiben – uprawiać sport\nWas machst du gern in deiner Freizeit? – Co lubisz robić w czasie wolnym?\nSpielst du ein Instrument? – Grasz na jakimś instrumencie?', 15, 5),
('Kurs języka niemieckiego', 'Kurs Języka Niemieckiego: Lekcja 6\r\n\r\nTemat: Szkoła i edukacja\r\n\r\nWstęp: W tej lekcji omówimy słownictwo związane ze szkołą i edukacją.\r\n\r\nSzkoła:\r\n\r\ndie Schule – szkoła\r\nder Lehrer / die Lehrerin – nauczyciel / nauczycielka\r\ndas Klassenzimmer – sala lekcyjna\r\ndas Fach – przedmiot\r\ndie Hausaufgaben – zadanie domowe\r\ndie Prüfung – egzamin\r\ndas Zeugnis – świadectwo\r\nPytania o szkołę:\r\n\r\nWas ist dein Lieblingsfach? – Jaki jest twój ulubiony przedmiot?\r\nWie findest du deine Lehrer? – Co sądzisz o swoich nauczycielach?\r\nĆwiczenia:\r\n\r\nOpowiedz o swojej szkole i ulubionych przedmiotach.\r\nZapytaj kolegę/koleżankę o ich doświadczenia ze szkołą.\r\nTłumaczenia:\r\n\r\ndie Schule – szkoła\r\nder Lehrer / die Lehrerin – nauczyciel / nauczycielka\r\ndas Klassenzimmer – sala lekcyjna\r\ndas Fach – przedmiot\r\ndie Hausaufgaben – zadanie domowe\r\ndie Prüfung – egzamin\r\ndas Zeugnis – świadectwo\r\nWas ist dein Lieblingsfach? – Jaki jest twój ulubiony przedmiot?\r\nWie findest du deine Lehrer? – Co sądzisz o swoich nauczycielach?', 16, 6),
('Kurs języka niemieckiego', 'Kurs Języka Niemieckiego: Lekcja 7\r\n\r\nTemat: Podróże i transport\r\n\r\nWstęp: W tej lekcji omówimy słownictwo związane z podróżami i transportem.\r\n\r\nPodróże:\r\n\r\ndie Reise – podróż\r\nder Zug – pociąg\r\ndas Flugzeug – samolot\r\ndas Auto – samochód\r\nder Bus – autobus\r\nder Bahnhof – dworzec kolejowy\r\nder Flughafen – lotnisko\r\nPytania o podróże:\r\n\r\nWarst du schon einmal im Ausland? – Czy byłeś/łaś już kiedyś za granicą?\r\nWie bist du zur Schule gefahren? – Jak dojeżdżasz do szkoły?\r\nĆwiczenia:\r\n\r\nOpowiedz o swojej ostatniej podróży.\r\nZapytaj kolegę/koleżankę o ich preferowany środek transportu.\r\nTłumaczenia:\r\n\r\ndie Reise – podróż\r\nder Zug – pociąg\r\ndas Flugzeug – samolot\r\ndas Auto – samochód\r\nder Bus – autobus\r\nder Bahnhof – dworzec kolejowy\r\nder Flughafen – lotnisko\r\nWarst du schon einmal im Ausland? – Czy byłeś/łaś już kiedyś za granicą?\r\nWie bist du zur Schule gefahren? – Jak dojeżdżasz do szkoły?', 17, 7),
('Kurs języka niemieckiego', 'Kurs Języka Niemieckiego: Lekcja 8\r\n\r\nTemat: Praca i zawody\r\n\r\nWstęp: W tej lekcji omówimy słownictwo związane z pracą i różnymi zawodami.\r\n\r\nPraca:\r\n\r\ndie Arbeit – praca\r\nder Beruf – zawód\r\nder Arzt / die Ärztin – lekarz / lekarka\r\nder Lehrer / die Lehrerin – nauczyciel / nauczycielka\r\nder Ingenieur / die Ingenieurin – inżynier / inżynierka\r\nder Koch / die Köchin – kucharz / kucharka\r\nder Polizist / die Polizistin – policjant / policjantka\r\nPytania o pracę:\r\n\r\nWas möchtest du später werden? – Kim chciałbyś/chciałabyś zostać w przyszłości?\r\nWie lange arbeitest du jeden Tag? – Jak długo pracujesz codziennie?\r\nĆwiczenia:\r\n\r\nOpowiedz o swoich planach zawodowych.\r\nZapytaj kolegę/koleżankę o ich aktualną pracę lub zawód, który chcą wykonywać w przyszłości.\r\nTłumaczenia:\r\n\r\ndie Arbeit – praca\r\nder Beruf – zawód\r\nder Arzt / die Ärztin – lekarz / lekarka\r\nder Lehrer / die Lehrerin – nauczyciel / nauczycielka\r\nder Ingenieur / die Ingenieurin – inżynier / inżynierka\r\nder Koch / die Köchin – kucharz / kucharka\r\nder Polizist / die Polizistin – policjant / policjantka\r\nWas möchtest du später werden? – Kim chciałbyś/chciałabyś zostać w przyszłości?\r\nWie lange arbeitest du jeden Tag? – Jak długo pracujesz codziennie?', 18, 8),
('Kurs języka niemieckiego', 'Kurs Języka Niemieckiego: Lekcja 9\r\n\r\nTemat: Zdrowie i ciało\r\n\r\nWstęp: W tej lekcji omówimy słownictwo związane ze zdrowiem i opisem ciała.\r\n\r\nZdrowie:\r\n\r\ndie Gesundheit – zdrowie\r\nder Arzt / die Ärztin – lekarz / lekarka\r\ndie Krankheit – choroba\r\ndie Medizin – medycyna\r\nder Kopf – głowa\r\nder Bauch – brzuch\r\nder Arm – ramię\r\ndas Bein – noga\r\nPytania o zdrowie:\r\n\r\nFühlst du dich gut? – Czujesz się dobrze?\r\nHast du oft Kopfschmerzen? – Czy często masz bóle głowy?\r\nĆwiczenia:\r\n\r\nOpowiedz o swoim zdrowiu i ewentualnych dolegliwościach.\r\nZapytaj kolegę/koleżankę, jak się czują i czy mieli ostatnio jakieś problemy zdrowotne.\r\nTłumaczenia:\r\n\r\ndie Gesundheit – zdrowie\r\nder Arzt / die Ärztin – lekarz / lekarka\r\ndie Krankheit – choroba\r\ndie Medizin – medycyna\r\nder Kopf – głowa\r\nder Bauch – brzuch\r\nder Arm – ramię\r\ndas Bein – noga\r\nFühlst du dich gut? – Czujesz się dobrze?\r\nHast du oft Kopfschmerzen? – Czy często masz bóle głowy?', 19, 9),
('Kurs języka niemieckiego', 'Kurs Języka Niemieckiego: Lekcja 10\r\n\r\nTemat: Święta i tradycje\r\n\r\nWstęp: W tej lekcji omówimy słownictwo związane ze świętami i tradycjami.\r\n\r\nŚwięta:\r\n\r\ndas Fest – święto\r\nWeihnachten – Boże Narodzenie\r\nOstern – Wielkanoc\r\nSilvester – Sylwester\r\nGeburtstag – urodziny\r\ndas Geschenk – prezent\r\ndie Tradition – tradycja\r\nOpisywanie świąt i tradycji:\r\n\r\nAn Weihnachten schmücken wir den Weihnachtsbaum. – Na Boże Narodzenie dekorujemy choinkę.\r\nZu Ostern suchen wir Ostereier. – W Wielkanoc szukamy jajek.\r\nĆwiczenia:\r\n\r\nOpowiedz o swoich ulubionych świętach i tradycjach z nimi związanych.\r\nZapytaj kolegę/koleżankę, jakie są ich plany na najbliższe święta.\r\nTłumaczenia:\r\n\r\ndas Fest – święto\r\nWeihnachten – Boże Narodzenie\r\nOstern – Wielkanoc\r\nSilvester – Sylwester\r\nGeburtstag – urodziny\r\ndas Geschenk – prezent\r\ndie Tradition – tradycja\r\nAn Weihnachten schmücken wir den Weihnachtsbaum. – Na Boże Narodzenie dekorujemy choinkę.\r\nZu Ostern suchen wir Ostereier. – W Wielkanoc szukamy jajek.', 20, 10),
('Kurs języka arabskiego', '<p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p>Lekcja 1: Podstawowe zwroty</p><div>\"Hi\" - \"Cześć\"</div><div><br></div><div><br></div><div><br></div><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p>', 21, 1),
('Kurs języka arabskiego', '<p></p><p></p><p>Lekcja 2: Liczebniki i Pytania o Liczbę\r\nLiczebniki kardynalne:&nbsp;</p><p>One - jeden</p><p>&nbsp;Two - dwa&nbsp;</p><p>Three - trzy</p><p>&nbsp;Four - cztery</p><p>&nbsp;Five - pięć&nbsp;</p><p>Six - sześć&nbsp;</p><p>Seven - siedem&nbsp;</p><p>Eight - osiem&nbsp;</p><p>Nine - dziewięć&nbsp;</p><p>Ten - dziesięć&nbsp;</p><p>Pytania o liczbę:</p><p>&nbsp;\"How many [objects] are there?\" - Ile jest [obiektów]?</p><p><br></p><p><br></p><p></p><p></p>', 22, 2),
('Kurs języka arabskiego', 'Kurs Języka Arabskiego: Lekcja 3\r\n\r\nTemat: Rodzina i opisywanie ludzi\r\n\r\nWstęp: W tej lekcji nauczysz się słownictwa związanego z rodziną i opisywania ludzi.\r\n\r\nRodzina:\r\n\r\nالعائلة (al-ʿāʾilah) – rodzina\r\nالأب (al-ab) – ojciec\r\nالأم (al-umm) – matka\r\nالأخ (al-akh) – brat\r\nالأخت (al-ukht) – siostra\r\nالابن (al-ibn) – syn\r\nالابنة (al-ibnah) – córka\r\nOpisywanie ludzi:\r\n\r\nأنا طويل وسمين (anā ṭawīl wa-sumīn) – Jestem wysoki i gruby.\r\nهي قصيرة ونحيفة (hiya qaṣīrah wa-naḥīfah) – Ona jest niska i chuda.\r\nĆwiczenia:\r\n\r\nOpowiedz o swojej rodzinie, używając słów z tej lekcji.\r\nZapytaj kolegę/koleżankę o rodzeństwo i opisz ich wygląd.\r\nTłumaczenia:\r\n\r\nالعائلة (al-ʿāʾilah) – rodzina\r\nالأب (al-ab) – ojciec\r\nالأم (al-umm) – matka\r\nالأخ (al-akh) – brat\r\nالأخت (al-ukht) – siostra\r\nالابن (al-ibn) – syn\r\nالابنة (al-ibnah) – córka\r\nأنا طويل وسمين (anā ṭawīl wa-sumīn) – Jestem wysoki i gruby.\r\nهي قصيرة ونحيفة (hiya qaṣīrah wa-naḥīfah) – Ona jest niska i chuda.', 23, 3),
('Kurs języka arabskiego', 'Kurs Języka Arabskiego: Lekcja 4\r\n\r\nTemat: Jedzenie i kuchnia arabska\r\n\r\nWstęp: W tej lekcji poznamy słownictwo związane z jedzeniem i potrawami arabskimi.\r\n\r\nJedzenie:\r\n\r\nالطعام (al-ṭaʿām) – jedzenie\r\nالفطور (al-fuṭūr) – śniadanie\r\nالغداء (al-ghadāʾ) – obiad\r\nالعشاء (al-ʿishāʾ) – kolacja\r\nالخبز (al-khubz) – chleb\r\nاللحم (al-lahm) – mięso\r\nالأرز (al-ʾurz) – ryż\r\nالخضروات (al-khuḍurāt) – warzywa\r\nالفواكه (al-fawākih) – owoce\r\nPotrawy arabskie:\r\n\r\nالمجدرة (al-mujadarah) – mujaddara\r\nالحمص (al-ḥummuṣ) – hummus\r\nالملوخية (al-mulūkhiyah) – molokhia\r\nالكبسة (al-kabsah) – kabsa\r\nĆwiczenia:\r\n\r\nOpowiedz o swoich ulubionych potrawach.\r\nZapytaj kolegę/koleżankę, czy próbowali kiedyś kuchni arabskiej i co myślą na ten temat.\r\nTłumaczenia:\r\n\r\nالطعام (al-ṭaʿām) – jedzenie\r\nالفطور (al-fuṭūr) – śniadanie\r\nالغداء (al-ghadāʾ) – obiad\r\nالعشاء (al-ʿishāʾ) – kolacja\r\nالخبز (al-khubz) – chleb\r\nاللحم (al-lahm) – mięso\r\nالأرز (al-ʾurz) – ryż\r\nالخضروات (al-khuḍurāt) – warzywa\r\nالفواكه (al-fawākih) – owoce\r\nالمجدرة (al-mujadarah) – mujaddara\r\nالحمص (al-ḥummuṣ) – hummus\r\nالملوخية (al-mulūkhiyah) – molokhia\r\nالكبسة (al-kabsah) – kabsa', 24, 4),
('Kurs języka arabskiego', 'Kurs Języka Arabskiego: Lekcja 5\r\n\r\nTemat: Czas wolny i hobby\r\n\r\nWstęp: W tej lekcji omówimy słownictwo związane z czasem wolnym i zainteresowaniami.\r\n\r\nCzas wolny:\r\n\r\nالوقت الفراغ (al-waqt al-faragh) – czas wolny\r\nالهواية (al-hawāyah) – hobby\r\nالقراءة (al-qirāʾah) – czytanie\r\nالرسم (ar-ruṣṣam) – rysowanie\r\nالسفر (as-safar) – podróżowanie\r\nالموسيقى (al-mūsīqā) – muzyka\r\nالرياضة (ar-riyāḍah) – sport\r\nPytania o zainteresowania:\r\n\r\nما هو هوايتك المفضلة؟ (mā huwa hawiyatuka al-mufaḍḍalah?) – Jaki jest twój ulubiony hobby?\r\nهل تحب السفر؟ (hal tuḥibb as-safar?) – Czy lubisz podróżować?\r\nĆwiczenia:\r\n\r\nOpowiedz o swoich zainteresowaniach i hobby.\r\nZapytaj kolegę/koleżankę, co lubią robić w swoim czasie wolnym.\r\nTłumaczenia:\r\n\r\nالوقت الفراغ (al-waqt al-faragh) – czas wolny\r\nالهواية (al-hawāyah) – hobby\r\nالقراءة (al-qirāʾah) – czytanie\r\nالرسم (ar-ruṣṣam) – rysowanie\r\nالسفر (as-safar) – podróżowanie\r\nالموسيقى (al-mūsīqā) – muzyka\r\nالرياضة (ar-riyāḍah) – sport\r\nما هو هوايتك المفضلة؟ (mā huwa hawiyatuka al-mufaḍḍalah?) – Jaki jest twój ulubiony hobby?\r\nهل تحب السفر؟ (hal tuḥibb as-safar?) – Czy lubisz podróżować?', 25, 5),
('Kurs języka arabskiego', 'Kurs Języka Arabskiego: Lekcja 6\r\n\r\nTemat: Edukacja i szkoła\r\n\r\nWstęp: W tej lekcji omówimy słownictwo związane z edukacją i życiem szkolnym.\r\n\r\nEdukacja:\r\n\r\nالتعليم (at-taʿlīm) – edukacja\r\nالمدرسة (al-madrasah) – szkoła\r\nالطالب (at-ṭālib) – uczeń\r\nالطالبة (at-ṭālibah) – uczennica\r\nالدرس (ad-dars) – lekcja\r\nالامتحان (al-imtiḥān) – egzamin\r\nالدرجات (ad-darajāt) – oceny\r\nPytania o szkołę:\r\n\r\nما هو موضوعك المفضل؟ (mā huwa mawḍūʿuka al-mufaḍḍal?) – Jaki jest twój ulubiony przedmiot?\r\nكيف كان الامتحان؟ (kayfa kān al-imtiḥān?) – Jak poszedł egzamin?\r\nĆwiczenia:\r\n\r\nOpowiedz o swoich doświadczeniach ze szkołą.\r\nZapytaj kolegę/koleżankę, jaki jest ich ulubiony przedmiot i jakie mieli oceny.\r\nTłumaczenia:\r\n\r\nالتعليم (at-taʿlīm) – edukacja\r\nالمدرسة (al-madrasah) – szkoła\r\nالطالب (at-ṭālib) – uczeń\r\nالطالبة (at-ṭālibah) – uczennica\r\nالدرس (ad-dars) – lekcja\r\nالامتحان (al-imtiḥān) – egzamin\r\nالدرجات (ad-darajāt) – oceny\r\nما هو موضوعك المفضل؟ (mā huwa mawḍūʿuka al-mufaḍḍal?) – Jaki jest twój ulubiony przedmiot?\r\nكيف كان الامتحان؟ (kayfa kān al-imtiḥān?) – Jak poszedł egzamin?', 26, 6),
('Kurs języka arabskiego', 'Kurs Języka Arabskiego: Lekcja 7\r\n\r\nTemat: Podróże i transport\r\n\r\nWstęp: W tej lekcji omówimy słownictwo związane z podróżami i różnymi środkami transportu.\r\n\r\nPodróże:\r\n\r\nالسفر (as-safar) – podróż\r\nالطائرة (aṭ-ṭā\'irah) – samolot\r\nالقطار (al-qiṭār) – pociąg\r\nالحافلة (al-ḥāfilah) – autobus\r\nالسيارة (as-sayyārah) – samochód\r\nالمطار (al-maṭār) – lotnisko\r\nالمحطة (al-maḥaṭṭah) – dworzec\r\nPytania o podróże:\r\n\r\nأين تريد الذهاب في العطلة؟ (ayna turīd adhhab fi al-ʿatlah?) – Gdzie chcesz pojechać na wakacje?\r\nكم من الوقت ستستغرق الرحلة؟ (kam min al-waqt sastaghriq al-riḥlah?) – Ile czasu zajmie podróż?\r\nĆwiczenia:\r\n\r\nOpowiedz o swojej ostatniej podróży.\r\nZapytaj kolegę/koleżankę, jakimi środkami transportu podróżowali ostatnio i gdzie pojechali.\r\nTłumaczenia:\r\n\r\nالسفر (as-safar) – podróż\r\nالطائرة (aṭ-ṭā\'irah) – samolot\r\nالقطار (al-qiṭār) – pociąg\r\nالحافلة (al-ḥāfilah) – autobus\r\nالسيارة (as-sayyārah) – samochód\r\nالمطار (al-maṭār) – lotnisko\r\nالمحطة (al-maḥaṭṭah) – dworzec\r\nأين تريد الذهاب في العطلة؟ (ayna turīd adhhab fi al-ʿatlah?) – Gdzie chcesz pojechać na wakacje?\r\nكم من الوقت ستستغرق الرحلة؟ (kam min al-waqt sastaghriq al-riḥlah?) – Ile czasu zajmie podróż?', 27, 7),
('Kurs języka arabskiego', 'Kurs Języka Arabskiego: Lekcja 8\r\n\r\nTemat: Praca i zawody\r\n\r\nWstęp: W tej lekcji omówimy słownictwo związane z pracą i różnymi zawodami.\r\n\r\nPraca:\r\n\r\nالعمل (al-ʿamal) – praca\r\nالمهنة (al-mihnāh) – zawód\r\nالطبيب (aṭ-ṭabīb) – lekarz\r\nالمحامي (al-muḥāmi) – prawnik\r\nالمهندس (al-muhandis) – inżynier\r\nالشيف (ash-shayf) – szef kuchni\r\nالشرطي (ash-shurṭa) – policjant\r\nPytania o pracę:\r\n\r\nما هو عملك؟ (ma huwa ʿamaluk?) – Jaka jest twoja praca?\r\nهل تحب عملك؟ (hal tuḥibb ʿamaluk?) – Czy lubisz swoją pracę?\r\nĆwiczenia:\r\n\r\nOpowiedz o swoim zawodzie i dlaczego go wybrałeś/wybrałaś.\r\nZapytaj kolegę/koleżankę, czym się zajmują zawodowo i czy są zadowoleni ze swojej pracy.\r\nTłumaczenia:\r\n\r\nالعمل (al-ʿamal) – praca\r\nالمهنة (al-mihnāh) – zawód\r\nالطبيب (aṭ-ṭabīb) – lekarz\r\nالمحامي (al-muḥāmi) – prawnik\r\nالمهندس (al-muhandis) – inżynier\r\nالشيف (ash-shayf) – szef kuchni\r\nالشرطي (ash-shurṭa) – policjant\r\nما هو عملك؟ (ma huwa ʿamaluk?) – Jaka jest twoja praca?\r\nهل تحب عملك؟ (hal tuḥibb ʿamaluk?) – Czy lubisz swoją pracę?', 28, 8),
('Kurs języka arabskiego', 'Kurs Języka Arabskiego: Lekcja 9\r\n\r\nTemat: Zdrowie i medycyna\r\n\r\nWstęp: W tej lekcji omówimy słownictwo związane ze zdrowiem i opieką medyczną.\r\n\r\nZdrowie:\r\n\r\nالصحة (aṣ-ṣiḥḥah) – zdrowie\r\nالطبيب (aṭ-ṭabīb) – lekarz\r\nالعيادة (al-ʿiyādah) – przychodnia lekarska\r\nالدواء (ad-dawā\') – lekarstwo\r\nالألم (al-alim) – ból\r\nالحمى (al-ḥumma) – gorączka\r\nالسعال (as-sa\'al) – kaszel\r\nالصداع (aṣ-ṣudā\') – ból głowy\r\nOpieka zdrowotna:\r\n\r\nأنا بحاجة إلى طبيب. (anā biḥājah \'ilá ṭabīb) – Potrzebuję lekarza.\r\nيجب عليك أخذ دواء. (yajib \'alaika \'akhadh dawa\') – Musisz wziąć lekarstwo.\r\nĆwiczenia:\r\n\r\nOpowiedz o swoim zdrowiu i ewentualnych dolegliwościach.\r\nZapytaj kolegę/koleżankę, jak się czują i czy mieli ostatnio jakieś problemy zdrowotne.\r\nTłumaczenia:\r\n\r\nالصحة (aṣ-ṣiḥḥah) – zdrowie\r\nالطبيب (aṭ-ṭabīb) – lekarz\r\nالعيادة (al-ʿiyādah) – przychodnia lekarska\r\nالدواء (ad-dawā\') – lekarstwo\r\nالألم (al-alim) – ból\r\nالحمى (al-ḥumma) – gorączka\r\nالسعال (as-sa\'al) – kaszel\r\nالصداع (aṣ-ṣudā\') – ból głowy\r\nأنا بحاجة إلى طبيب. (anā biḥājah \'ilá ṭabīb) – Potrzebuję lekarza.\r\nيجب عليك أخذ دواء. (yajib \'alaika \'akhadh dawa\') – Musisz wziąć lekarstwo.', 29, 9),
('Kurs języka arabskiego', 'Kurs Języka Arabskiego: Lekcja 10\r\n\r\nTemat: Święta i tradycje\r\n\r\nWstęp: W tej lekcji omówimy słownictwo związane ze świętami i tradycjami.\r\n\r\nŚwięta:\r\n\r\nالعيد (al-ʿīd) – święto\r\nعيد الفطر (ʿīd al-fiṭr) – Eid al-Fitr (Święto Zakończenia Postu Ramadanu)\r\nعيد الأضحى (ʿīd al-aḍḥā) – Eid al-Adha (Święto Ofiary)\r\nعيد الميلاد (ʿīd al-mīlād) – Boże Narodzenie\r\nرأس السنة (ra\'s as-sanah) – Nowy Rok\r\nعيد الميلاد المجيد (ʿīd al-mīlād al-majīd) – Boże Narodzenie (dosł. Wspaniałe Święto Narodzenia)\r\nTradycje:\r\n\r\nنحت اليقطين (nahṭ al-yuqṭīn) – wycinanie dyni\r\nزيارة الأقارب (ziyārat al-aqrab) – odwiedzanie krewnych\r\nتبادل الهدايا (tabādul al-hadāyā) – wymiana prezentów\r\nĆwiczenia:\r\n\r\nOpowiedz o swoich ulubionych świętach i tradycjach z nimi związanych.\r\nZapytaj kolegę/koleżankę, jakie są ich plany na najbliższe święta.\r\nTłumaczenia:\r\n\r\nالعيد (al-ʿīd) – święto\r\nعيد الفطر (ʿīd al-fiṭr) – Eid al-Fitr (Święto Zakończenia Postu Ramadanu)\r\nعيد الأضحى (ʿīd al-aḍḥā) – Eid al-Adha (Święto Ofiary)\r\nعيد الميلاد (ʿīd al-mīlād) – Boże Narodzenie\r\nرأس السنة (ra\'s as-sanah) – Nowy Rok\r\nعيد الميلاد المجيد (ʿīd al-mīlād al-majīd) – Boże Narodzenie (dosł. Wspaniałe Święto Narodzenia)\r\nنحت اليقطين (nahṭ al-yuqṭīn) – wycinanie dyni\r\nزيارة الأقارب (ziyārat al-aqrab) – odwiedzanie krewnych\r\nتبادل الهدايا (tabādul al-hadāyā) – wymiana prezentów', 30, 10),
('Kurs języka hiszpańskiego', '<p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p>Lekcja 1: Podstawowe zwroty</p><div>\"Hi\" - \"Cześć\"</div><div><br></div><div><br></div><div><br></div><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p>', 31, 1),
('Kurs języka hiszpańskiego', '<p></p><p></p><p>Lekcja 2: Liczebniki i Pytania o Liczbę\r\nLiczebniki kardynalne:&nbsp;</p><p>One - jeden</p><p>&nbsp;Two - dwa&nbsp;</p><p>Three - trzy</p><p>&nbsp;Four - cztery</p><p>&nbsp;Five - pięć&nbsp;</p><p>Six - sześć&nbsp;</p><p>Seven - siedem&nbsp;</p><p>Eight - osiem&nbsp;</p><p>Nine - dziewięć&nbsp;</p><p>Ten - dziesięć&nbsp;</p><p>Pytania o liczbę:</p><p>&nbsp;\"How many [objects] are there?\" - Ile jest [obiektów]?</p><p><br></p><p><br></p><p></p><p></p>', 32, 2),
('Kurs języka hiszpańskiego', 'Kurs Języka Hiszpańskiego: Lekcja 3\r\n\r\nTemat: Opis osób i przedmiotów\r\n\r\nWstęp: W tej lekcji nauczysz się słownictwa używanego do opisu osób i przedmiotów.\r\n\r\nOpis osób:\r\n\r\nalto/alta – wysoki/wysoka\r\nbajo/baja – niski/niska\r\nguapo/guapa – przystojny/piękna\r\nfeo/fea – brzydki/brzydka\r\njoven – młody/młoda\r\nviejo/vieja – stary/stara\r\nOpis przedmiotów:\r\n\r\ngrande – duży\r\npequeño/pequeña – mały/mała\r\nnuevo/nueva – nowy/nowa\r\nviejo/vieja – stary/stara\r\nútil – użyteczny\r\ninútil – bezużyteczny\r\nĆwiczenia:\r\n\r\nOpisz swojego przyjaciela/przyjaciółkę używając słownictwa z tej lekcji.\r\nOpowiedz o swoim ulubionym przedmiocie, używając opisujących go słów.\r\nTłumaczenia:\r\n\r\nalto/alta – wysoki/wysoka\r\nbajo/baja – niski/niska\r\nguapo/guapa – przystojny/piękna\r\nfeo/fea – brzydki/brzydka\r\njoven – młody/młoda\r\nviejo/vieja – stary/stara\r\ngrande – duży\r\npequeño/pequeña – mały/mała\r\nnuevo/nueva – nowy/nowa\r\nviejo/vieja – stary/stara\r\nútil – użyteczny\r\ninútil – bezużyteczny', 33, 3),
('Kurs języka hiszpańskiego', 'Kurs Języka Hiszpańskiego: Lekcja 4\r\n\r\nTemat: Jedzenie i restauracja\r\n\r\nWstęp: W tej lekcji poznamy słownictwo związane z jedzeniem i wizytą w restauracji.\r\n\r\nJedzenie:\r\n\r\ncomida – jedzenie\r\ndesayuno – śniadanie\r\nalmuerzo – obiad\r\ncena – kolacja\r\ncarne – mięso\r\npescado – ryba\r\nverduras – warzywa\r\nfrutas – owoce\r\nRestauracja:\r\n\r\ncamarero/camarera – kelner/kelnerka\r\nmenú – menu\r\nplato del día – danie dnia\r\ncuenta – rachunek\r\nĆwiczenia:\r\n\r\nZamów swoje ulubione danie w restauracji, używając hiszpańskiego.\r\nZaproponuj koleżance/kolegom wyjście do restauracji, opisując, co chciałbyś/chciałabyś zamówić.\r\nTłumaczenia:\r\n\r\ncomida – jedzenie\r\ndesayuno – śniadanie\r\nalmuerzo – obiad\r\ncena – kolacja\r\ncarne – mięso\r\npescado – ryba\r\nverduras – warzywa\r\nfrutas – owoce\r\ncamarero/camarera – kelner/kelnerka\r\nmenú – menu\r\nplato del día – danie dnia\r\ncuenta – rachunek', 34, 4),
('Kurs języka hiszpańskiego', 'Kurs Języka Hiszpańskiego: Lekcja 5\r\n\r\nTemat: Czas wolny i hobby\r\n\r\nWstęp: W tej lekcji omówimy słownictwo związane z czasem wolnym i zainteresowaniami.\r\n\r\nCzas wolny:\r\n\r\ntiempo libre - czas wolny\r\nhobby - hobby\r\nleer - czytać\r\ndibujar - rysować\r\nviajar - podróżować\r\nmúsica - muzyka\r\ndeporte - sport\r\nPytania o zainteresowania:\r\n\r\n¿Cuál es tu hobby favorito? - Jakie jest twoje ulubione hobby?\r\n¿Te gusta viajar? - Czy lubisz podróżować?\r\nĆwiczenia:\r\n\r\nOpowiedz o swoich zainteresowaniach i hobby.\r\nZapytaj kolegę/koleżankę, co lubią robić w swoim czasie wolnym.\r\nTłumaczenia:\r\n\r\ntiempo libre - czas wolny\r\nhobby - hobby\r\nleer - czytać\r\ndibujar - rysować\r\nviajar - podróżować\r\nmúsica - muzyka\r\ndeporte - sport\r\n¿Cuál es tu hobby favorito? - Jakie jest twoje ulubione hobby?\r\n¿Te gusta viajar? - Czy lubisz podróżować?', 35, 5),
('Kurs języka hiszpańskiego', 'Kurs Języka Hiszpańskiego: Lekcja 6\r\n\r\nTemat: Edukacja i szkoła\r\n\r\nWstęp: W tej lekcji omówimy słownictwo związane z edukacją i życiem szkolnym.\r\n\r\nEdukacja:\r\n\r\neducación - edukacja\r\nescuela - szkoła\r\nestudiante - uczeń/uczennica\r\nlección - lekcja\r\nexamen - egzamin\r\ncalificaciones - oceny\r\nPytania o szkołę:\r\n\r\n¿Cuál es tu materia favorita? - Jaki jest twój ulubiony przedmiot?\r\n¿Qué tal fue el examen? - Jak poszedł egzamin?\r\nĆwiczenia:\r\n\r\nOpowiedz o swoich doświadczeniach ze szkołą.\r\nZapytaj kolegę/koleżankę, jaki jest ich ulubiony przedmiot i jakie mieli oceny.\r\nTłumaczenia:\r\n\r\neducación - edukacja\r\nescuela - szkoła\r\nestudiante - uczeń/uczennica\r\nlección - lekcja\r\nexamen - egzamin\r\ncalificaciones - oceny\r\n¿Cuál es tu materia favorita? - Jaki jest twój ulubiony przedmiot?\r\n¿Qué tal fue el examen? - Jak poszedł egzamin?', 36, 6),
('Kurs języka hiszpańskiego', 'Kurs Języka Hiszpańskiego: Lekcja 7\r\n\r\nTemat: Podróże i transport\r\n\r\nWstęp: W tej lekcji omówimy słownictwo związane z podróżami i różnymi środkami transportu.\r\n\r\nPodróże:\r\n\r\nviaje - podróż\r\navión - samolot\r\ntren - pociąg\r\nautobús - autobus\r\ncoche/auto - samochód\r\naeropuerto - lotnisko\r\nestación - dworzec\r\nPytania o podróże:\r\n\r\n¿A dónde te gustaría ir de vacaciones? - Gdzie chciałbyś pojechać na wakacje?\r\n¿Cuánto tiempo durará el viaje? - Jak długo będzie trwać podróż?\r\nĆwiczenia:\r\n\r\nOpowiedz o swojej ostatniej podróży.\r\nZapytaj kolegę/koleżankę, jakimi środkami transportu podróżowali ostatnio i gdzie pojechali.\r\nTłumaczenia:\r\n\r\nviaje - podróż\r\navión - samolot\r\ntren - pociąg\r\nautobús - autobus\r\ncoche/auto - samochód\r\naeropuerto - lotnisko\r\nestación - dworzec\r\n¿A dónde te gustaría ir de vacaciones? - Gdzie chciałbyś pojechać na wakacje?\r\n¿Cuánto tiempo durará el viaje? - Jak długo będzie trwać podróż?', 37, 7),
('Kurs języka hiszpańskiego', 'Kurs Języka Hiszpańskiego: Lekcja 8\r\n\r\nTemat: Praca i zawody\r\n\r\nWstęp: W tej lekcji omówimy słownictwo związane z pracą i różnymi zawodami.\r\n\r\nPraca:\r\n\r\ntrabajo - praca\r\nprofesión - zawód\r\nmédico/médica - lekarz/lekarka\r\nabogado/abogada - prawnik/prawniczka\r\ningeniero/ingeniera - inżynier/inżynierka\r\nchef/cocinero/cocinera - szef kuchni/kucharz/kucharka\r\npolicía - policjant/policjantka\r\nPytania o pracę:\r\n\r\n¿Cuál es tu trabajo? - Jaka jest twoja praca?\r\n¿Te gusta tu trabajo? - Czy lubisz swoją pracę?\r\nĆwiczenia:\r\n\r\nOpowiedz o swoim zawodzie i dlaczego go wybrałeś/wybrałaś.\r\nZapytaj kolegę/koleżankę, czym się zajmują zawodowo i czy są zadowoleni ze swojej pracy.\r\nTłumaczenia:\r\n\r\ntrabajo - praca\r\nprofesión - zawód\r\nmédico/médica - lekarz/lekarka\r\nabogado/abogada - prawnik/prawniczka\r\ningeniero/ingeniera - inżynier/inżynierka\r\nchef/cocinero/cocinera - szef kuchni/kucharz/kucharka\r\npolicía - policjant/policjantka\r\n¿Cuál es tu trabajo? - Jaka jest twoja praca?\r\n¿Te gusta tu trabajo? - Czy lubisz swoją pracę?', 38, 8),
('Kurs języka hiszpańskiego', 'Kurs Języka Hiszpańskiego: Lekcja 9\r\n\r\nTemat: Zdrowie i medycyna\r\n\r\nWstęp: W tej lekcji omówimy słownictwo związane ze zdrowiem i opieką medyczną.\r\n\r\nZdrowie:\r\n\r\nsalud - zdrowie\r\nmédico/médica - lekarz/lekarka\r\nhospital - szpital\r\nmedicina - medycyna\r\ndolor - ból\r\nfiebre - gorączka\r\ntos - kaszel\r\ndolor de cabeza - ból głowy\r\nOpieka zdrowotna:\r\n\r\nNecesito ver a un médico. - Potrzebuję zobaczyć lekarza.\r\nDebes tomar medicina. - Powinieneś brać lekarstwo.\r\nĆwiczenia:\r\n\r\nOpowiedz o swoim zdrowiu i ewentualnych dolegliwościach.\r\nZapytaj kolegę/koleżankę, jak się czują i czy mieli ostatnio jakieś problemy zdrowotne.\r\nTłumaczenia:\r\n\r\nsalud - zdrowie\r\nmédico/médica - lekarz/lekarka\r\nhospital - szpital\r\nmedicina - medycyna\r\ndolor - ból\r\nfiebre - gorączka\r\ntos - kaszel\r\ndolor de cabeza - ból głowy\r\nNecesito ver a un médico. - Potrzebuję zobaczyć lekarza.\r\nDebes tomar medicina. - Powinieneś brać lekarstwo.', 39, 9),
('Kurs języka hiszpańskiego', 'Kurs Języka Hiszpańskiego: Lekcja 10\r\n\r\nTemat: Święta i tradycje\r\n\r\nWstęp: W tej lekcji omówimy słownictwo związane ze świętami i tradycjami.\r\n\r\nŚwięta:\r\n\r\nfiesta - święto/impreza\r\nNavidad - Boże Narodzenie\r\nAño Nuevo - Nowy Rok\r\nSemana Santa - Wielki Tydzień\r\ncumpleaños - urodziny\r\nDía de Acción de Gracias - Dzień Dziękczynienia\r\nTradycje:\r\n\r\nregalos - prezenty\r\ndecoraciones - dekoracje\r\ncelebración - celebracja\r\nreunión familiar - spotkanie rodzinne\r\ncomida especial - specjalne dania\r\nĆwiczenia:\r\n\r\nOpowiedz o swoich ulubionych świętach i tradycjach z nimi związanych.\r\nZapytaj kolegę/koleżankę, jakie mają plany na najbliższe święta i jakie są ich ulubione tradycje.\r\nTłumaczenia:\r\n\r\nfiesta - święto/impreza\r\nNavidad - Boże Narodzenie\r\nAño Nuevo - Nowy Rok\r\nSemana Santa - Wielki Tydzień\r\ncumpleaños - urodziny\r\nDía de Acción de Gracias - Dzień Dziękczynienia\r\nregalos - prezenty\r\ndecoraciones - dekoracje\r\ncelebración - celebracja\r\nreunión familiar - spotkanie rodzinne\r\ncomida especial - specjalne dania\r\n', 40, 10),
('Kurs języka francuskiego', '<p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p>Lekcja 1: Podstawowe zwroty</p><div>\"Hi\" - \"Cześć\"</div><div><br></div><div><br></div><div><br></div><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p>', 41, 1),
('Kurs języka francuskiego', '<p></p><p></p><p>Lekcja 2: Liczebniki i Pytania o Liczbę\r\nLiczebniki kardynalne:&nbsp;</p><p>One - jeden</p><p>&nbsp;Two - dwa&nbsp;</p><p>Three - trzy</p><p>&nbsp;Four - cztery</p><p>&nbsp;Five - pięć&nbsp;</p><p>Six - sześć&nbsp;</p><p>Seven - siedem&nbsp;</p><p>Eight - osiem&nbsp;</p><p>Nine - dziewięć&nbsp;</p><p>Ten - dziesięć&nbsp;</p><p>Pytania o liczbę:</p><p>&nbsp;\"How many [objects] are there?\" - Ile jest [obiektów]?</p><p><br></p><p><br></p><p></p><p></p>', 42, 2),
('Kurs języka francuskiego', 'Kurs Języka Francuskiego: Lekcja 3\r\n\r\nTemat: Opis osób i przedmiotów\r\n\r\nWstęp: W tej lekcji omówimy słownictwo związane z opisem osób i przedmiotów.\r\n\r\nOpis osób:\r\n\r\ngrand/grande - wysoki/wysoka\r\npetit/petite - mały/mała\r\nbeau/belle - piękny/piękna\r\nlaid/laide - brzydki/brzydka\r\njeune - młody/młoda\r\nvieux/vieille - stary/stara\r\nOpis przedmiotów:\r\n\r\ngrand/grande - duży/duża\r\npetit/petite - mały/mała\r\nnouveau/nouvelle - nowy/nowa\r\nvieux/vieille - stary/stara\r\nutile - użyteczny/użyteczna\r\ninutile - bezużyteczny/bezużyteczna\r\nĆwiczenia:\r\n\r\nOpisz swojego przyjaciela/przyjaciółkę używając słownictwa z tej lekcji.\r\nOpowiedz o swoim ulubionym przedmiocie, używając opisujących go słów.\r\nTłumaczenia:\r\n\r\ngrand/grande - wysoki/wysoka\r\npetit/petite - mały/mała\r\nbeau/belle - piękny/piękna\r\nlaid/laide - brzydki/brzydka\r\njeune - młody/młoda\r\nvieux/vieille - stary/stara\r\ngrand/grande - duży/duża\r\npetit/petite - mały/mała\r\nnouveau/nouvelle - nowy/nowa\r\nvieux/vieille - stary/stara\r\nutile - użyteczny/użyteczna\r\ninutile - bezużyteczny/bezużyteczna', 43, 3),
('Kurs języka francuskiego', 'Kurs Języka Francuskiego: Lekcja 4\r\n\r\nTemat: Jedzenie i restauracja\r\n\r\nWstęp: W tej lekcji omówimy słownictwo związane z jedzeniem i wizytą w restauracji.\r\n\r\nJedzenie:\r\n\r\nnourriture - jedzenie\r\npetit-déjeuner - śniadanie\r\ndéjeuner - obiad\r\ndîner - kolacja\r\nviande - mięso\r\npoisson - ryba\r\nlégumes - warzywa\r\nfruits - owoce\r\nRestauracja:\r\n\r\nserveur/serveuse - kelner/kelnerka\r\nmenu - menu\r\nplat du jour - danie dnia\r\naddition - rachunek\r\nĆwiczenia:\r\n\r\nZamów swoje ulubione danie w restauracji, używając języka francuskiego.\r\nZaproponuj koleżance/kolegom wyjście do restauracji, opisując, co chciałbyś/chciałabyś zamówić.\r\nTłumaczenia:\r\n\r\nnourriture - jedzenie\r\npetit-déjeuner - śniadanie\r\ndéjeuner - obiad\r\ndîner - kolacja\r\nviande - mięso\r\npoisson - ryba\r\nlégumes - warzywa\r\nfruits - owoce\r\nserveur/serveuse - kelner/kelnerka\r\nmenu - menu\r\nplat du jour - danie dnia\r\naddition - rachunek', 44, 4),
('Kurs języka francuskiego', 'Kurs Języka Francuskiego: Lekcja 5\r\n\r\nTemat: Czas wolny i hobby\r\n\r\nWstęp: W tej lekcji omówimy słownictwo związane z czasem wolnym i zainteresowaniami.\r\n\r\nCzas wolny:\r\n\r\ntemps libre - czas wolny\r\nhobby - hobby\r\nlire - czytać\r\ndessiner - rysować\r\nvoyager - podróżować\r\nmusique - muzyka\r\nsport - sport\r\nPytania o zainteresowania:\r\n\r\nQuel est ton hobby préféré ? - Jakie jest twoje ulubione hobby?\r\nEst-ce que tu aimes voyager ? - Czy lubisz podróżować?\r\nĆwiczenia:\r\n\r\nOpowiedz o swoich zainteresowaniach i hobby.\r\nZapytaj kolegę/koleżankę, co lubią robić w swoim czasie wolnym.\r\nTłumaczenia:\r\n\r\ntemps libre - czas wolny\r\nhobby - hobby\r\nlire - czytać\r\ndessiner - rysować\r\nvoyager - podróżować\r\nmusique - muzyka\r\nsport - sport\r\nQuel est ton hobby préféré ? - Jakie jest twoje ulubione hobby?\r\nEst-ce que tu aimes voyager ? - Czy lubisz podróżować?', 45, 5),
('Kurs języka francuskiego', 'Kurs Języka Francuskiego: Lekcja 6\r\n\r\nTemat: Edukacja i szkoła\r\n\r\nWstęp: W tej lekcji omówimy słownictwo związane z edukacją i życiem szkolnym.\r\n\r\nEdukacja:\r\n\r\néducation - edukacja\r\nécole - szkoła\r\nétudiant/étudiante - uczeń/uczennica\r\nleçon - lekcja\r\nexamen - egzamin\r\nnotes - oceny\r\nPytania o szkołę:\r\n\r\nQuelle est ta matière préférée ? - Jaki jest twój ulubiony przedmiot?\r\nComment s\'est passé l\'examen ? - Jak poszedł egzamin?\r\nĆwiczenia:\r\n\r\nOpowiedz o swoich doświadczeniach ze szkołą.\r\nZapytaj kolegę/koleżankę, jaki jest ich ulubiony przedmiot i jakie mieli oceny.\r\nTłumaczenia:\r\n\r\néducation - edukacja\r\nécole - szkoła\r\nétudiant/étudiante - uczeń/uczennica\r\nleçon - lekcja\r\nexamen - egzamin\r\nnotes - oceny\r\nQuelle est ta matière préférée ? - Jaki jest twój ulubiony przedmiot?\r\nComment s\'est passé l\'examen ? - Jak poszedł egzamin?', 46, 6),
('Kurs języka francuskiego', 'Kurs Języka Francuskiego: Lekcja 7\r\n\r\nTemat: Podróże i transport\r\n\r\nWstęp: W tej lekcji omówimy słownictwo związane z podróżami i różnymi środkami transportu.\r\n\r\nPodróże:\r\n\r\nvoyage - podróż\r\navion - samolot\r\ntrain - pociąg\r\nbus - autobus\r\nvoiture - samochód\r\naéroport - lotnisko\r\ngare - dworzec\r\nPytania o podróże:\r\n\r\nOù aimerais-tu partir en vacances ? - Gdzie chciałbyś/chciałabyś pojechać na wakacje?\r\nCombien de temps durera le voyage ? - Jak długo będzie trwać podróż?\r\nĆwiczenia:\r\n\r\nOpowiedz o swojej ostatniej podróży.\r\nZapytaj kolegę/koleżankę, jakimi środkami transportu podróżowali ostatnio i gdzie pojechali.\r\nTłumaczenia:\r\n\r\nvoyage - podróż\r\navion - samolot\r\ntrain - pociąg\r\nbus - autobus\r\nvoiture - samochód\r\naéroport - lotnisko\r\ngare - dworzec\r\nOù aimerais-tu partir en vacances ? - Gdzie chciałbyś/chciałabyś pojechać na wakacje?\r\nCombien de temps durera le voyage ? - Jak długo będzie trwać podróż?', 47, 7),
('Kurs języka francuskiego', 'Kurs Języka Francuskiego: Lekcja 8\r\n\r\nTemat: Praca i zawody\r\n\r\nWstęp: W tej lekcji omówimy słownictwo związane z pracą i różnymi zawodami.\r\n\r\nPraca:\r\n\r\ntravail - praca\r\nprofession - zawód\r\nmédecin/médecine - lekarz/lekarka\r\navocat/avocate - prawnik/prawniczka\r\ningénieur/ingénieure - inżynier/inżynierka\r\nchef/cuisinier/cuisinière - szef kuchni/kucharz/kucharka\r\npolicier/policère - policjant/policjantka\r\nPytania o pracę:\r\n\r\nQuel est ton travail ? - Jaka jest twoja praca?\r\nEst-ce que tu aimes ton travail ? - Czy lubisz swoją pracę?\r\nĆwiczenia:\r\n\r\nOpowiedz o swoim zawodzie i dlaczego go wybrałeś/wybrałaś.\r\nZapytaj kolegę/koleżankę, czym się zajmują zawodowo i czy są zadowoleni ze swojej pracy.\r\nTłumaczenia:\r\n\r\ntravail - praca\r\nprofession - zawód\r\nmédecin/médecine - lekarz/lekarka\r\navocat/avocate - prawnik/prawniczka\r\ningénieur/ingénieure - inżynier/inżynierka\r\nchef/cuisinier/cuisinière - szef kuchni/kucharz/kucharka\r\npolicier/policère - policjant/policjantka\r\nQuel est ton travail ? - Jaka jest twoja praca?\r\nEst-ce que tu aimes ton travail ? - Czy lubisz swoją pracę?', 48, 8),
('Kurs języka francuskiego', 'Kurs Języka Francuskiego: Lekcja 9\r\n\r\nTemat: Zdrowie i medycyna\r\n\r\nWstęp: W tej lekcji omówimy słownictwo związane ze zdrowiem i opieką medyczną.\r\n\r\nZdrowie:\r\n\r\nsanté - zdrowie\r\nmédecin/médecine - lekarz/lekarka\r\nhôpital - szpital\r\nmédicament - lekarstwo\r\ndouleur - ból\r\nfièvre - gorączka\r\ntoux - kaszel\r\nmal de tête - ból głowy\r\nOpieka zdrowotna:\r\n\r\nJ\'ai besoin de voir un médecin. - Potrzebuję zobaczyć lekarza.\r\nTu dois prendre des médicaments. - Musisz brać lekarstwa.\r\nĆwiczenia:\r\n\r\nOpowiedz o swoim zdrowiu i ewentualnych dolegliwościach.\r\nZapytaj kolegę/koleżankę, jak się czują i czy mieli ostatnio jakieś problemy zdrowotne.\r\nTłumaczenia:\r\n\r\nsanté - zdrowie\r\nmédecin/médecine - lekarz/lekarka\r\nhôpital - szpital\r\nmédicament - lekarstwo\r\ndouleur - ból\r\nfièvre - gorączka\r\ntoux - kaszel\r\nmal de tête - ból głowy\r\nJ\'ai besoin de voir un médecin. - Potrzebuję zobaczyć lekarza.\r\nTu dois prendre des médicaments. - Musisz brać lekarstwa.', 49, 9),
('Kurs języka francuskiego', 'Kurs Języka Francuskiego: Lekcja 10\r\n\r\nTemat: Święta i tradycje\r\n\r\nWstęp: W tej lekcji omówimy słownictwo związane ze świętami i tradycjami.\r\n\r\nŚwięta:\r\n\r\nfête - święto/impreza\r\nNoël - Boże Narodzenie\r\nNouvel An - Nowy Rok\r\nPâques - Wielkanoc\r\nanniversaire - urodziny\r\nfête des mères - Dzień Matki\r\nTradycje:\r\n\r\ncadeaux - prezenty\r\ndécoration - dekoracje\r\ncélébration - obchody\r\nréunion familiale - spotkanie rodzinne\r\nrepas spécial - specjalny posiłek\r\nĆwiczenia:\r\n\r\nOpowiedz o swoich ulubionych świętach i tradycjach z nimi związanych.\r\nZaproponuj koleżance/kolegom wyjście na jakieś święto i opisz, jakie są twoje tradycje w tym czasie.\r\nTłumaczenia:\r\n\r\nfête - święto/impreza\r\nNoël - Boże Narodzenie\r\nNouvel An - Nowy Rok\r\nPâques - Wielkanoc\r\nanniversaire - urodziny\r\nfête des mères - Dzień Matki\r\ncadeaux - prezenty\r\ndécoration - dekoracje\r\ncélébration - obchody\r\nréunion familiale - spotkanie rodzinne\r\nrepas spécial - specjalny posiłek', 50, 10),
('Kurs języka rosyjskiego', '<p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p>Lekcja 1: Podstawowe zwroty</p><div>\"Hi\" - \"Cześć\"</div><div><br></div><div><br></div><div><br></div><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p>', 51, 1),
('Kurs języka rosyjskiego', '<p></p><p></p><p>Lekcja 2: Liczebniki i Pytania o Liczbę\r\nLiczebniki kardynalne:&nbsp;</p><p>One - jeden</p><p>&nbsp;Two - dwa&nbsp;</p><p>Three - trzy</p><p>&nbsp;Four - cztery</p><p>&nbsp;Five - pięć&nbsp;</p><p>Six - sześć&nbsp;</p><p>Seven - siedem&nbsp;</p><p>Eight - osiem&nbsp;</p><p>Nine - dziewięć&nbsp;</p><p>Ten - dziesięć&nbsp;</p><p>Pytania o liczbę:</p><p>&nbsp;\"How many [objects] are there?\" - Ile jest [obiektów]?</p><p><br></p><p><br></p><p></p><p></p>', 52, 2),
('Kurs języka rosyjskiego', 'Kurs Języka Rosyjskiego: Lekcja 3\r\n\r\nTemat: Opis osób i przedmiotów\r\n\r\nWstęp: W tej lekcji omówimy słownictwo związane z opisem osób i przedmiotów.\r\n\r\nOpis osób:\r\n\r\nвысокий/высокая - wysoki/wysoka\r\nмаленький/маленькая - mały/mała\r\nкрасивый/красивая - piękny/piękna\r\nуродливый/уродливая - brzydki/brzydka\r\nмолодой/молодая - młody/młoda\r\nстарый/старая - stary/stara\r\nOpis przedmiotów:\r\n\r\nбольшой/большая - duży/duża\r\nмаленький/маленькая - mały/mała\r\nновый/новая - nowy/nowa\r\nстарый/старая - stary/stara\r\nполезный/полезная - użyteczny/użyteczna\r\nбесполезный/бесполезная - bezużyteczny/bezużyteczna\r\nĆwiczenia:\r\n\r\nOpisz swojego przyjaciela/przyjaciółkę używając słownictwa z tej lekcji.\r\nOpowiedz o swoim ulubionym przedmiocie, używając opisujących go słów.\r\nTłumaczenia:\r\n\r\nвысокий/высокая - wysoki/wysoka\r\nмаленький/маленькая - mały/mała\r\nкрасивый/красивая - piękny/piękna\r\nуродливый/уродливая - brzydki/brzydka\r\nмолодой/молодая - młody/młoda\r\nстарый/старая - stary/stara\r\nбольшой/большая - duży/duża\r\nмаленький/маленькая - mały/mała\r\nновый/новая - nowy/nowa\r\nстарый/старая - stary/stara\r\nполезный/полезная - użyteczny/użyteczna\r\nбесполезный/бесполезная - bezużyteczny/bezużyteczna', 53, 3),
('Kurs języka rosyjskiego', 'Kurs Języka Rosyjskiego: Lekcja 4\r\n\r\nTemat: Jedzenie и ресторан\r\n\r\nWstęp: В этом уроке мы рассмотрим словарь, связанный с едой и посещением ресторана.\r\n\r\nЕда:\r\n\r\nеда - jedzenie\r\nзавтрак - śniadanie\r\nобед - lunch\r\nужин - kolacja\r\nмясо - mięso\r\nрыба - ryba\r\nовощи - warzywa\r\nфрукты - owoce\r\nРесторан:\r\n\r\nофициант/официантка - kelner/kelnerka\r\nменю - menu\r\nдневное блюдо - danie dnia\r\nсчёт - rachunek\r\nУпражнения:\r\n\r\nЗакажите свое любимое блюдо в ресторане, используя русский язык.\r\nПредложите другу/подруге посетить ресторан и опишите, что бы вы хотели заказать.\r\nПеревод:\r\n\r\nеда - jedzenie\r\nзавтрак - śniadanie\r\nобед - lunch\r\nужин - kolacja\r\nмясо - mięso\r\nрыба - ryba\r\nовощи - warzywa\r\nфрукты - owoce\r\nофициант/официантка - kelner/kelnerka\r\nменю - menu\r\nдневное блюдо - danie dnia\r\nсчёт - rachunek', 54, 4),
('Kurs języka rosyjskiego', 'Kurs Języka Rosyjskiego: Lekcja 5\r\n\r\nTemat: Czas wolny и хобби\r\n\r\nВведение: В этом уроке мы поговорим о словаре, связанном с досугом и хобби.\r\n\r\nДосуг:\r\n\r\nсвободное время - czas wolny\r\nхобби - hobby\r\nчитать - czytać\r\nрисовать - rysować\r\nпутешествовать - podróżować\r\nмузыка - muzyka\r\nспорт - sport\r\nВопросы о хобби:\r\n\r\nКакое у тебя любимое хобби? - Jakie jest twoje ulubione hobby?\r\nТы любишь путешествовать? - Czy lubisz podróżować?\r\nУпражнения:\r\n\r\nРасскажи о своих интересах и хобби.\r\nСпроси у друга/подруги, что они любят делать в свободное время.\r\nПеревод:\r\n\r\nсвободное время - czas wolny\r\nхобби - hobby\r\nчитать - czytać\r\nрисовать - rysować\r\nпутешествовать - podróżować\r\nмузыка - muzyka\r\nспорт - sport\r\nКакое у тебя любимое хобби? - Jakie jest twoje ulubione hobby?\r\nТы любишь путешествовать? - Czy lubisz podróżować?', 55, 5),
('Kurs języka rosyjskiego', 'Kurs Języka Rosyjskiego: Lekcja 6\r\n\r\nTemat: Образование и школа\r\n\r\nВведение: В этом уроке мы рассмотрим словарь, связанный с образованием и школьной жизнью.\r\n\r\nОбразование:\r\n\r\nобразование - edukacja\r\nшкола - szkoła\r\nученик/ученица - uczeń/uczennica\r\nурок - lekcja\r\nэкзамен - egzamin\r\nоценки - oceny\r\nВопросы о школе:\r\n\r\nКакой у тебя любимый предмет? - Jaki jest twój ulubiony przedmiot?\r\nКак прошёл экзамен? - Jak poszedł egzamin?\r\nУпражнения:\r\n\r\nРасскажи о своем опыте в школе.\r\nСпроси у друга/подруги, какие у них любимые предметы и какие они получили оценки.\r\nПеревод:\r\n\r\nобразование - edukacja\r\nшкола - szkoła\r\nученик/ученица - uczeń/uczennica\r\nурок - lekcja\r\nэкзамен - egzamin\r\nоценки - oceny\r\nКакой у тебя любимый предмет? - Jaki jest twój ulubiony przedmiot?\r\nКак прошёл экзамен? - Jak poszedł egzamin?', 56, 6);
INSERT INTO `lekcje` (`tytul`, `tresc`, `ID`, `ID_lekcji`) VALUES
('Kurs języka rosyjskiego', 'Kurs Języka Rosyjskiego: Lekcja 7\r\n\r\nTemat: Путешествия и транспорт\r\n\r\nВведение: В этом уроке мы рассмотрим словарь, связанный с путешествиями и различными видами транспорта.\r\n\r\nПутешествия:\r\n\r\nпутешествие - podróż\r\nсамолёт - samolot\r\nпоезд - pociąg\r\nавтобус - autobus\r\nавтомобиль - samochód\r\nаэропорт - lotnisko\r\nвокзал - dworzec\r\nВопросы о путешествиях:\r\n\r\nКуда бы ты хотел поехать в отпуск? - Gdzie chciałbyś/chciałabyś pojechać na wakacje?\r\nСколько времени будет длиться путешествие? - Jak długo będzie trwać podróż?\r\nУпражнения:\r\n\r\nРасскажите о вашем последнем путешествии.\r\nСпросите друга/подругу, какими видами транспорта они путешествовали в последний раз и куда поехали.\r\nПеревод:\r\n\r\nпутешествие - podróż\r\nсамолёт - samolot\r\nпоезд - pociąg\r\nавтобус - autobus\r\nавтомобиль - samochód\r\nаэропорт - lotnisko\r\nвокзал - dworzec\r\nКуда бы ты хотел поехать в отпуск? - Gdzie chciałbyś/chciałabyś pojechać na wakacje?\r\nСколько времени будет длиться путешествие? - Jak długo będzie trwać podróż?', 57, 7),
('Kurs języka rosyjskiego', 'Kurs Języka Rosyjskiego: Lekcja 8\r\n\r\nTemat: Работа и профессии\r\n\r\nВведение: В этом уроке мы рассмотрим словарь, связанный с работой и различными профессиями.\r\n\r\nРабота:\r\n\r\nработа - praca\r\nпрофессия - zawód\r\nврач - lekarz\r\nадвокат - adwokat\r\nинженер - inżynier\r\nповар - kucharz\r\nполицейский - policjant\r\nВопросы о работе:\r\n\r\nКакая у тебя работа? - Jaka jest twoja praca?\r\nТебе нравится твоя работа? - Czy lubisz swoją pracę?\r\nУпражнения:\r\n\r\nРасскажи о своей профессии и почему ты её выбрал/выбрала.\r\nСпроси друга/подругу, чем они занимаются по профессии и нравится ли им их работа.\r\nПеревод:\r\n\r\nработа - praca\r\nпрофессия - zawód\r\nврач - lekarz\r\nадвокат - adwokat\r\nинженер - inżynier\r\nповар - kucharz\r\nполицейский - policjant\r\nКакая у тебя работа? - Jaka jest twoja praca?\r\nТебе нравится твоя работа? - Czy lubisz swoją pracę?', 58, 8),
('Kurs języka rosyjskiego', 'Kurs Języka Rosyjskiego: Lekcja 9\r\n\r\nTemat: Здоровье и медицина\r\n\r\nВведение: В этом уроке мы рассмотрим словарь, связанный со здоровьем и медицинским уходом.\r\n\r\nЗдоровье:\r\n\r\nздоровье - zdrowie\r\nврач - lekarz\r\nбольница - szpital\r\nлекарство - lekarstwo\r\nболь - ból\r\nтемпература - temperatura\r\nкашель - kaszel\r\nголовная боль - ból głowy\r\nМедицинские вопросы:\r\n\r\nЧто у тебя болит? - Co cię boli?\r\nТы чувствуешь себя лучше? - Czujesz się lepiej?\r\nУпражнения:\r\n\r\nРасскажи о своем здоровье и возможных проблемах.\r\nСпроси друга/подругу, как он/она себя чувствует, и есть ли у него/нее последние проблемы со здоровьем.\r\nПеревод:\r\n\r\nздоровье - zdrowie\r\nврач - lekarz\r\nбольница - szpital\r\nлекарство - lekarstwo\r\nболь - ból\r\nтемпература - temperatura\r\nкашель - kaszel\r\nголовная боль - ból głowy\r\nЧто у тебя болит? - Co cię boli?\r\nТы чувствуешь себя лучше? - Czujesz się lepiej?', 59, 9),
('Kurs języka rosyjskiego', 'Kurs Języka Rosyjskiego: Lekcja 10\r\n\r\nТема: Праздники и традиции\r\n\r\nВведение: В этом уроке мы рассмотрим словарь, связанный с праздниками и традициями.\r\n\r\nПраздники:\r\n\r\nпраздник - święto\r\nРождество - Boże Narodzenie\r\nНовый год - Nowy Rok\r\nПасха - Wielkanoc\r\nдень рождения - urodziny\r\nДень матери - Dzień Matki\r\nТрадиции:\r\n\r\nподарки - prezenty\r\nукрашения - dekoracje\r\nпразднование - obchody\r\nсемейное собрание - spotkanie rodzinne\r\nособый обед - specjalny obiad\r\nУпражнения:\r\n\r\nРасскажите о своих любимых праздниках и связанных с ними традициях.\r\nПредложите другу/подруге выйти на какое-то праздничное мероприятие и опишите, какие у вас традиции в это время.\r\nПеревод:\r\n\r\nпраздник - święto\r\nРождество - Boże Narodzenie\r\nНовый год - Nowy Rok\r\nПасха - Wielkanoc\r\nдень рождения - urodziny\r\nДень матери - Dzień Matki\r\nподарки - prezenty\r\nукрашения - dekoracje\r\nпразднование - obchody\r\nсемейное собрание - spotkanie rodzinne\r\nособый обед - specjalny obiad', 60, 10);

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
-- Struktura tabeli dla tabeli `status`
--

CREATE TABLE `status` (
  `status_lekcji` text NOT NULL,
  `tytul` text NOT NULL,
  `lekcja` int(11) NOT NULL,
  `login` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`status_lekcji`, `tytul`, `lekcja`, `login`) VALUES
('1', 'Kurs języka niemieckiego', 1, 'szymon'),
('0', 'Kurs języka niemieckiego', 2, 'szymon'),
('0', 'Kurs języka niemieckiego', 3, 'szymon'),
('0', 'Kurs języka niemieckiego', 4, 'szymon'),
('0', 'Kurs języka niemieckiego', 5, 'szymon'),
('0', 'Kurs języka niemieckiego', 6, 'szymon'),
('0', 'Kurs języka niemieckiego', 7, 'szymon'),
('0', 'Kurs języka niemieckiego', 8, 'szymon'),
('0', 'Kurs języka niemieckiego', 9, 'szymon'),
('0', 'Kurs języka niemieckiego', 10, 'szymon'),
('1', 'Kurs języka angielskiego', 1, 'szymon'),
('0', 'Kurs języka angielskiego', 2, 'szymon'),
('1', 'Kurs języka angielskiego', 3, 'szymon'),
('1', 'Kurs języka angielskiego', 4, 'szymon'),
('0', 'Kurs języka angielskiego', 5, 'szymon'),
('0', 'Kurs języka angielskiego', 6, 'szymon'),
('0', 'Kurs języka angielskiego', 7, 'szymon'),
('0', 'Kurs języka angielskiego', 8, 'szymon'),
('0', 'Kurs języka angielskiego', 9, 'szymon'),
('0', 'Kurs języka angielskiego', 10, 'szymon'),
('0', 'Kurs języka arabskiego', 1, 'szymon'),
('0', 'Kurs języka arabskiego', 2, 'szymon'),
('0', 'Kurs języka arabskiego', 3, 'szymon'),
('0', 'Kurs języka arabskiego', 4, 'szymon'),
('0', 'Kurs języka arabskiego', 5, 'szymon'),
('0', 'Kurs języka arabskiego', 6, 'szymon'),
('0', 'Kurs języka arabskiego', 7, 'szymon'),
('0', 'Kurs języka arabskiego', 8, 'szymon'),
('0', 'Kurs języka arabskiego', 9, 'szymon'),
('0', 'Kurs języka arabskiego', 10, 'szymon'),
('1', 'Kurs języka francuskiego', 1, 'szymon'),
('1', 'Kurs języka francuskiego', 2, 'szymon'),
('0', 'Kurs języka francuskiego', 3, 'szymon'),
('0', 'Kurs języka francuskiego', 4, 'szymon'),
('0', 'Kurs języka francuskiego', 5, 'szymon'),
('0', 'Kurs języka francuskiego', 6, 'szymon'),
('0', 'Kurs języka francuskiego', 7, 'szymon'),
('0', 'Kurs języka francuskiego', 8, 'szymon'),
('0', 'Kurs języka francuskiego', 9, 'szymon'),
('0', 'Kurs języka francuskiego', 10, 'szymon'),
('0', 'Kurs języka rosyjskiego', 1, 'szymon'),
('1', 'Kurs języka rosyjskiego', 2, 'szymon'),
('0', 'Kurs języka rosyjskiego', 3, 'szymon'),
('0', 'Kurs języka rosyjskiego', 4, 'szymon'),
('0', 'Kurs języka rosyjskiego', 5, 'szymon'),
('0', 'Kurs języka rosyjskiego', 6, 'szymon'),
('0', 'Kurs języka rosyjskiego', 7, 'szymon'),
('0', 'Kurs języka rosyjskiego', 8, 'szymon'),
('0', 'Kurs języka rosyjskiego', 9, 'szymon'),
('0', 'Kurs języka rosyjskiego', 10, 'szymon'),
('0', 'Kurs języka chińskiego', 1, 'szymon'),
('0', 'Kurs języka chińskiego', 2, 'szymon'),
('0', 'Kurs języka chińskiego', 3, 'szymon'),
('0', 'Kurs języka chińskiego', 4, 'szymon'),
('0', 'Kurs języka chińskiego', 5, 'szymon'),
('0', 'Kurs języka chińskiego', 6, 'szymon'),
('0', 'Kurs języka chińskiego', 7, 'szymon'),
('0', 'Kurs języka chińskiego', 8, 'szymon'),
('0', 'Kurs języka chińskiego', 9, 'szymon'),
('0', 'Kurs języka chińskiego', 10, 'szymon'),
('0', '', 1, '123'),
('0', '', 2, '123'),
('0', '', 3, '123'),
('0', '', 4, '123'),
('0', '', 5, '123'),
('0', '', 6, '123'),
('0', '', 7, '123'),
('0', '', 8, '123'),
('0', '', 9, '123'),
('0', '', 10, '123'),
('0', 'Kurs języka angielskiego', 1, '123'),
('0', 'Kurs języka angielskiego', 2, '123'),
('0', 'Kurs języka angielskiego', 3, '123'),
('0', 'Kurs języka angielskiego', 4, '123'),
('0', 'Kurs języka angielskiego', 5, '123'),
('0', 'Kurs języka angielskiego', 6, '123'),
('0', 'Kurs języka angielskiego', 7, '123'),
('0', 'Kurs języka angielskiego', 8, '123'),
('0', 'Kurs języka angielskiego', 9, '123'),
('0', 'Kurs języka angielskiego', 10, '123');

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
('123', '202cb962ac59075b964b07152d234b70', 'user'),
('1234', '202cb962ac59075b964b07152d234b70', 'user'),
('admin', '202cb962ac59075b964b07152d234b70', 'user'),
('admin1', '202cb962ac59075b964b07152d234b70', 'admin'),
('admin123', '202cb962ac59075b964b07152d234b70', 'user'),
('ktos', '202cb962ac59075b964b07152d234b70', 'user'),
('maks', '202cb962ac59075b964b07152d234b70', 'user'),
('szymon', '202cb962ac59075b964b07152d234b70', 'admin'),
('ten_debil', '202cb962ac59075b964b07152d234b70', 'admin'),
('test1', '202cb962ac59075b964b07152d234b70', 'user'),
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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `rodzaje`
--
ALTER TABLE `rodzaje`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
