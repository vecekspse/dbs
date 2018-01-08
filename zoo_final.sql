-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Stř 25. led 2017, 10:36
-- Verze serveru: 5.6.17
-- Verze PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databáze: `zoo`
--
CREATE DATABASE IF NOT EXISTS `zoo` DEFAULT CHARACTER SET utf8 COLLATE utf8_czech_ci;
USE `zoo`;

-- --------------------------------------------------------

--
-- Struktura tabulky `druh`
--

CREATE TABLE IF NOT EXISTS `druh` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `druh` varchar(50) COLLATE utf8_czech_ci NOT NULL,
  `popis` text COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci AUTO_INCREMENT=9 ;

--
-- Vypisuji data pro tabulku `druh`
--

INSERT INTO `druh` (`id`, `druh`, `popis`) VALUES
(1, 'Plazi', 'Plazi jsou obratlovci, jejichž tělo je pokryté tuhými šupinami nebo štíty, a kladou vejce. Patří ke studenokrevným (poikilotermním) živočichům (přebírají teplotu od okolního prostředí). Mláďata se líhnou plně vyvinutá. Lebka plazů je s páteří spojena kloubně a jsou to živočichové s plně vyvinutým amnionem.'),
(2, 'Promykovitá šelma', 'Surikata (také hrabačka surikata, promyka surikata, Suricata suricatta) je denní pospolitě žijící promykovitá šelma.'),
(3, 'Psovité šelmy', 'Psovití (Canidae) jsou většinou masožravci, případně všežravci z řádu šelem. Do této čeledi patří psi, vlci, lišky, kojoti a šakalové. Stejně jako některé kočky jsou všichni psovití prstochodci. Psovité šelmy jsou vytrvalé a velmi přizpůsobivé. Charakteristické je pro ně štíhlé tělo s dlouhýma nohama a dlouhým chlupatým ocasem. Psi jsou rozšířeni po celém světě, až na pár izolovaných oblastí jako je Nový Zéland, ovšem i tam člověk zatáhl domácí plemena psů.'),
(4, 'Kočkovité šelmy', 'Kočkovití (Felidae) jsou čeledí řádu šelem. Z celého řádu se právě oni nejvíce drží masožravého způsobu života. Za nejbližší příbuzné koček se považují asijští linsangové rodu Prionodon dříve řazení k cibetkám (Viverrinae). První kočky se objevily během eocénu, tedy přibližně před 40 miliony let. Mezi nejznámější kočky patří bezpochyby kočka domácí, jejíž soužití s člověkem je známé již 4 000 až 7 000 let. Divocí příbuzní kočky domácí stále žijí v Africe a západní Asii, ale poničené životní prostředí značně omezilo plochy jejich výskytu.'),
(5, 'Chobotnatci', 'Chobotnatci (Proboscidea) jsou řádem velkých býložravých savců, pro které je charakteristický pohyblivý chobot a řezáky, které jsou prodloužené v kly. Zlatým věkem chobotnatců byly třetihory, recentní (žijící) jsou pouze tři druhy: slon africký, slon pralesní a slon indický.'),
(6, 'Vyšší primáti', 'Vyšší primáti (Haplorrhini) je jeden ze dvou podřádů primátů. Pojmenování podřádu znamená "suchý nos", což je také jeden z charakteristických rysů odlišující vyšší primáty od druhého podřádu, poloopic (Strepsirrhini). Mezi vyšší primáty patří i lidé.'),
(7, 'Ryby', 'Ryby (Osteichthyes), česky též kostnaté ryby, je parafyletická skupina primárně vodních obratlovců vyznačujících se osifikovanou kostrou (v některých případech je však kostra druhotně chrupavčitá) a skřelemi kryjícími žábry. V tradičních taxonomických systémech měly ryby postavení třídy, dnes jsou buď považovány za nadtřídu nebo pro svůj parafyletismus nejsou jako taxon užívány vůbec. Pokud by ryby obsahovaly všechny potomky posledního společného předka, zahrnovaly by i čtyřnožce včetně člověka (takto definovaná holofyletická skupina se nazývá Euteleostomi).'),
(8, 'Impala', 'Impala (Aepyceros melampus - z řeckého αιπος, aipos = vysoký a κερος, ceros = roh + melas = černá a pous = noha) je středně velká africká antilopa. Jde o jediný druh podčeledi Aepycerotinae a rodu Aepyceros.');

-- --------------------------------------------------------

--
-- Struktura tabulky `nase_zvirata`
--

CREATE TABLE IF NOT EXISTS `nase_zvirata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jmeno` varchar(60) COLLATE utf8_czech_ci NOT NULL,
  `pohlavi` varchar(10) COLLATE utf8_czech_ci NOT NULL,
  `datum_narozeni` date NOT NULL,
  `nase_zvirata_id` int(11) DEFAULT NULL,
  `zvire_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `nase_zvirata_nase_zvirata` (`nase_zvirata_id`),
  KEY `nase_zvirata_zvire` (`zvire_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci AUTO_INCREMENT=12 ;

--
-- Vypisuji data pro tabulku `nase_zvirata`
--

INSERT INTO `nase_zvirata` (`id`, `jmeno`, `pohlavi`, `datum_narozeni`, `nase_zvirata_id`, `zvire_id`) VALUES
(1, 'Julča', 'Samice', '2015-11-10', NULL, 9),
(2, 'Pepík', 'Samec', '2015-09-21', NULL, 9),
(3, 'Júlinka', 'Samice', '2016-02-09', 1, 9),
(4, 'Ničitel', 'Samec', '2016-02-09', 1, 9),
(8, 'Leontýnka', 'Samice', '2016-02-09', 1, 9),
(9, 'Frkule', 'Samice', '2016-02-09', 1, 9),
(10, 'Karel', 'Samec', '2015-11-10', NULL, 9),
(11, 'Otík', 'Samec', '2016-02-19', 3, 9);

-- --------------------------------------------------------

--
-- Struktura tabulky `nase_zvirata_vybeh`
--

CREATE TABLE IF NOT EXISTS `nase_zvirata_vybeh` (
  `nase_zvirata_id` int(11) NOT NULL,
  `vybeh_id` int(11) NOT NULL,
  KEY `nase_zvirata_vybeh_nase_zvirata` (`nase_zvirata_id`),
  KEY `nase_zvirata_vybeh_vybeh` (`vybeh_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `nase_zvirata_vybeh`
--

INSERT INTO `nase_zvirata_vybeh` (`nase_zvirata_id`, `vybeh_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1);

-- --------------------------------------------------------

--
-- Struktura tabulky `typ_vybehu`
--

CREATE TABLE IF NOT EXISTS `typ_vybehu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typ` varchar(60) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci AUTO_INCREMENT=11 ;

--
-- Vypisuji data pro tabulku `typ_vybehu`
--

INSERT INTO `typ_vybehu` (`id`, `typ`) VALUES
(1, 'Pavilón'),
(2, 'Voliéra'),
(3, 'Sladkovodní akvárium'),
(4, 'Mořské akvárium'),
(5, 'Safari'),
(6, 'Výběh'),
(7, 'Doupě'),
(8, 'Lapidárium'),
(9, 'Terasa'),
(10, 'Dětský koutek');

-- --------------------------------------------------------

--
-- Struktura tabulky `vybeh`
--

CREATE TABLE IF NOT EXISTS `vybeh` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nazev` varchar(60) COLLATE utf8_czech_ci NOT NULL,
  `kapacita` int(11) NOT NULL,
  `typ_vybehu_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `vybeh_typ_vybehu` (`typ_vybehu_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci AUTO_INCREMENT=11 ;

--
-- Vypisuji data pro tabulku `vybeh`
--

INSERT INTO `vybeh` (`id`, `nazev`, `kapacita`, `typ_vybehu_id`) VALUES
(1, 'Surikatí doupě', 15, 7),
(2, 'Parádní safari', 35, 5),
(3, 'Indický oceán', 50, 4),
(4, 'Pavilón opic', 6, 1),
(5, 'Kozí koutek', 8, 10),
(6, 'Orlí hnízdo', 10, 2),
(7, 'Soví věž', 8, 2),
(8, 'Ovčín', 22, 10),
(9, 'Pavilón plazů', 15, 1),
(10, 'Zebří výběh', 22, 6);

-- --------------------------------------------------------

--
-- Struktura tabulky `zeme_puvodu`
--

CREATE TABLE IF NOT EXISTS `zeme_puvodu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zeme` varchar(60) COLLATE utf8_czech_ci NOT NULL,
  `kontinent` varchar(30) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci AUTO_INCREMENT=16 ;

--
-- Vypisuji data pro tabulku `zeme_puvodu`
--

INSERT INTO `zeme_puvodu` (`id`, `zeme`, `kontinent`) VALUES
(1, 'Česká Republika', 'Evropa'),
(2, 'Angola', 'Afrika'),
(3, 'Itálie', 'Evropa'),
(4, 'Mongolsko', 'Asie'),
(5, 'Indie', 'Asie'),
(6, 'Bhután', 'Asie'),
(7, 'Kongo', 'Afrika'),
(8, 'Egypt', 'Afrika'),
(9, 'Brazílie', 'Jižní Amerika'),
(10, 'Honduras', 'Jižní Amerika'),
(11, 'Rusko', 'Asie'),
(12, 'Francie', 'Evropa'),
(13, 'Uganda', 'Afrika'),
(14, 'Indonésie', 'Asie'),
(15, 'USA', 'Severní Amerika');

-- --------------------------------------------------------

--
-- Struktura tabulky `zvire`
--

CREATE TABLE IF NOT EXISTS `zvire` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nazev_zvirete` varchar(100) COLLATE utf8_czech_ci NOT NULL,
  `latinsky_nazev` varchar(100) COLLATE utf8_czech_ci NOT NULL,
  `popis` text COLLATE utf8_czech_ci NOT NULL,
  `mladat` int(11) NOT NULL,
  `druh_id` int(11) NOT NULL,
  `zeme_puvodu_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `zvire_druh` (`druh_id`),
  KEY `zvire_zeme_puvodu` (`zeme_puvodu_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci AUTO_INCREMENT=10 ;

--
-- Vypisuji data pro tabulku `zvire`
--

INSERT INTO `zvire` (`id`, `nazev_zvirete`, `latinsky_nazev`, `popis`, `mladat`, `druh_id`, `zeme_puvodu_id`) VALUES
(3, 'Aligátor Americký', 'Alligator mississippiensis', 'Aligátoři jsou společně s krokodýli, kajmany a gaviály považováni za nejmohutnější sladkovodní predátory. Všichni jsou výborně přizpůsobeni k lovu a životu ve vodním prostředí. Mají vřetenovitý tvar těla s protáhlou hlavou vybíhající v dlouhé čelisti. ', 50, 1, 15),
(4, 'Antilopa Jelení', 'Antilope cervicapra', 'Antilopa jelení je jednou z mála antilop s výraznou pohlavní dvojtvárností ve zbarvení – zatímco samice a mladí samci jsou žlutavohnědaví se světlejší spodinou těla, u dospělých samců tmavohnědý až černý hřbet i boky ostře přecházejí v bílé břicho. Delší, 50 – 60 cm dlouhé, spirálově stočené a výrazně vrubované rohy vyrůstají jen samcům. Antilopa jelení je obdařena vynikajícím zrakem, sluchem i čichem, takže okamžitě rozezná hrozící nebezpečí. ', 5, 8, 8),
(5, 'Hyena Skvrnitá', 'Crocuta crocuta\r\n', 'Hyena skvrnitá má světlehnědou až pískovou barvu a na tomto podkladu jsou nepravidelně rozmístěny tmavě hnědé skvrny téměř po celém těle. Tyto skvrny jsou nejtmavší u mladých zvířat a s přibývajícím věkěm postupně mizí. Hlava a končetiny jsou tmavší. Srst je hrubá, dlouhá 3-4 cm a délka podsady je 1.5-2 cm. Tělo je silné a zavalité se silným krkem. Přední nohy jsou delší než zadní a to vytváří charakteristickou stavbu těla s klesající zádí. Velká hlava s širokým čenichem a mohutnými a velice silnými čelistmi. Uši jsou velké a kulaté. Stisk je podle různých zdrojů až 500kg a hyena skvrnitá tak má nejsilnější stisk čelistí ze všech afrických masožravých savců. Také zuby jsou mohutné a slouží hyeně k drcení kostí. Samice jsou zhruba o 10-20% větší než samci a je obtížné u nich rozeznat pohlaví. Hyeny mají pouze 4 prsty. Hyení jazyk je hrubý a je tak více podobný kočičímu než psímu. ', 6, 3, 8),
(6, 'Tygr Ussurijský', 'Panthera tigris altaica', 'Tygr ussurijský je (spolu s tygrem indickým) největší a nejmohutnější kočkovitá šelma, samci mohou vážit přes 300 kg. Samci jsou výrazně větší než samice: hmotnost těla u samic kolísá asi mezi 100 až 180 kg, kdežto hmotnost samců dosahuje asi od 170 do 306 kg. Největší v zajetí chovaný tygr byl dlouhý 3,7 m a vážil přes 423 kg. Průměrná historická hmotnost samců získaná porovnáním všech dostupných dat je 215 kg, samic 137 kg. Současná divoce žijící populace je menšího vzrůstu (189 kg, 128 kg). Tento úbytek na váze je patrně zapříčiněn zejména poklesem stavů zvěře, která je kořistí tygrů. Samci ussurijských tygrů chovaní v zajetí však dosahují průměrné váhy kolem 220 kg.', 5, 4, 5),
(7, 'Slon Indický', 'Elephas maximus', 'Slon indický (Elephas maximus) je jiho- a jihovýchodoasijský slon dlouhý 3,5 metrů, jeden ze tří žijících druhů slona a jediný nevymřelý druh z rodu Elephas. Jde o největšího suchozemského živočicha žijícího v Asii. Vyskytuje se v Bangladéši, Indii, na Srí Lance, v Indočíně a v částech Nepálu, Indonésie a Thajska. Je považován za ohrožený druh, ve volné přírodě žije odhadem 40-50 tisíc jedinců.', 3, 5, 5),
(8, 'Gorila', 'Gorilla', 'Gorila (Gorilla) je rod největších žijících primátů. Žijí na zemi a jsou převážně býložravé. Obývají lesy střední Afriky. Gorily se dělí na dva druhy a čtyři poddruhy (podle některých biologů pět poddruhů). DNA gorily je z 98 až 99 % shodné s DNA člověka [1] a po šimpanzích jsou gorily nejbližší příbuzní člověka.\r\n\r\nGorily obývají tropické a subtropické lesy. Ačkoliv se jejich výskyt omezuje jen na několik procent rozlohy Afriky, jejich biotopy pokrývají velký rozsah nadmořských výšek. Gorila východní (horská) žije v pohoří Virunga ve výškách 2225 až 4267 m nad mořem. Gorila západní (nížinná) žije v hustých lesích a mokřinách i v úrovni mořské hladiny.', 3, 6, 7),
(9, 'Surikata', 'Suricata Suricatta', 'Surikata (také hrabačka surikata, promyka surikata, Suricata suricatta) je denní pospolitě žijící promykovitá šelma.', 10, 2, 2);

--
-- Omezení pro exportované tabulky
--

--
-- Omezení pro tabulku `nase_zvirata`
--
ALTER TABLE `nase_zvirata`
  ADD CONSTRAINT `nase_zvirata_nase_zvirata` FOREIGN KEY (`nase_zvirata_id`) REFERENCES `nase_zvirata` (`id`),
  ADD CONSTRAINT `nase_zvirata_zvire` FOREIGN KEY (`zvire_id`) REFERENCES `zvire` (`id`);

--
-- Omezení pro tabulku `nase_zvirata_vybeh`
--
ALTER TABLE `nase_zvirata_vybeh`
  ADD CONSTRAINT `nase_zvirata_vybeh_vybeh` FOREIGN KEY (`vybeh_id`) REFERENCES `vybeh` (`id`),
  ADD CONSTRAINT `nase_zvirata_vybeh_nase_zvirata` FOREIGN KEY (`nase_zvirata_id`) REFERENCES `nase_zvirata` (`id`);

--
-- Omezení pro tabulku `vybeh`
--
ALTER TABLE `vybeh`
  ADD CONSTRAINT `vybeh_typ_vybehu` FOREIGN KEY (`typ_vybehu_id`) REFERENCES `typ_vybehu` (`id`);

--
-- Omezení pro tabulku `zvire`
--
ALTER TABLE `zvire`
  ADD CONSTRAINT `zvire_druh` FOREIGN KEY (`druh_id`) REFERENCES `druh` (`id`),
  ADD CONSTRAINT `zvire_zeme_puvodu` FOREIGN KEY (`zeme_puvodu_id`) REFERENCES `zeme_puvodu` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
