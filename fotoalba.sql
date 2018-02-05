-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Pon 05. úno 2018, 10:10
-- Verze serveru: 5.7.14
-- Verze PHP: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `fotobalba`
--
CREATE DATABASE IF NOT EXISTS `fotobalba` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_czech_ci;
USE `fotobalba`;

-- --------------------------------------------------------

--
-- Struktura tabulky `alba`
--

CREATE TABLE `alba` (
  `id` int(11) NOT NULL,
  `nazev` varchar(250) COLLATE utf8mb4_czech_ci NOT NULL,
  `rok` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;

--
-- Vypisuji data pro tabulku `alba`
--

INSERT INTO `alba` (`id`, `nazev`, `rok`) VALUES
(1, 'Dovolená Egypt', 2016),
(2, 'Vykutálené fotečky', 2015),
(3, 'Když jsem byla malá', 2000),
(4, 'Auta co chci!', 2017);

-- --------------------------------------------------------

--
-- Struktura tabulky `fotky`
--

CREATE TABLE `fotky` (
  `id` int(11) NOT NULL,
  `titulek` varchar(250) COLLATE utf8mb4_czech_ci NOT NULL,
  `popisek` text COLLATE utf8mb4_czech_ci NOT NULL,
  `url` varchar(300) COLLATE utf8mb4_czech_ci NOT NULL,
  `datum_porizeni` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `alba_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;

--
-- Vypisuji data pro tabulku `fotky`
--

INSERT INTO `fotky` (`id`, `titulek`, `popisek`, `url`, `datum_porizeni`, `alba_id`) VALUES
(1, 'Super dovolená v Káhiře', 'Koukej na toho velmblouda!', 'obrazek1.jpg', '2018-02-05 11:03:37', 1),
(2, 'Ten Nil je prostě boží!', 'Málem mě sežral krokodýl :((', 'obrazek2.jpg', '2018-02-05 11:04:00', 1),
(3, 'Čekuj tu pýramídu', 'Prej nějaká Gíza, v televizi vypadala větší!', 'obrazek3.jpg', '2018-02-05 11:04:52', 1),
(4, 'Koulovačka', 'Hahaha, žeru sníh!', 'obrazek4.jpg', '2018-02-05 11:04:52', 2),
(5, 'Prej ten skokánek nedám!', 'Ale jo, jenom zlomená ruka!', 'obrazek5.jpg', '2018-02-05 11:06:01', 2),
(6, 'První dort!', 'Sice ještě nemám zuby, ale snad všem ostatním chutnal :(', 'obrazek6.jpg', '2000-09-09 00:00:00', 3),
(7, 'Joo Renault, to je stroj', 'Na nic :(', 'obrazek7.jpg', '2018-02-05 11:06:47', 4),
(8, 'Zlatá oktávka, to je český zlato', 'A vůbec nevadí, že ji mají všichni.', 'obrazek8.jpg', '2018-02-05 11:06:47', 4),
(9, 'Moje první kolo', 'To je teprve frajeřina, zlomená pouze jedna ruka!', 'obrazek9.jpg', '2018-02-05 11:07:48', 3),
(10, 'Můj první zub!', 'Klika u dveří jistí extrakci:)', 'obrazek10.jpg', '2001-02-13 00:00:00', 3);

--
-- Klíče pro exportované tabulky
--

--
-- Klíče pro tabulku `alba`
--
ALTER TABLE `alba`
  ADD PRIMARY KEY (`id`);

--
-- Klíče pro tabulku `fotky`
--
ALTER TABLE `fotky`
  ADD PRIMARY KEY (`id`),
  ADD KEY `album_id` (`alba_id`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `alba`
--
ALTER TABLE `alba`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pro tabulku `fotky`
--
ALTER TABLE `fotky`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Omezení pro exportované tabulky
--

--
-- Omezení pro tabulku `fotky`
--
ALTER TABLE `fotky`
  ADD CONSTRAINT `fotky_ibfk_1` FOREIGN KEY (`alba_id`) REFERENCES `alba` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
