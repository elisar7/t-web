-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Creato il: Feb 07, 2019 alle 08:53
-- Versione del server: 5.7.23
-- Versione PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `MUSICWIZ`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `ALBUMS`
--

CREATE TABLE `ALBUMS` (
  `ALBUMID` int(11) NOT NULL,
  `ALBUMTITLE` varchar(255) DEFAULT NULL,
  `ARTISTID` int(11) DEFAULT NULL,
  `ALBUMYEAR` year(4) DEFAULT NULL,
  `GENREID` int(11) DEFAULT NULL,
  `ALBUMCOVER` varchar(255) DEFAULT NULL,
  `PRICE` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `ALBUMS`
--

INSERT INTO `ALBUMS` (`ALBUMID`, `ALBUMTITLE`, `ARTISTID`, `ALBUMYEAR`, `GENREID`, `ALBUMCOVER`, `PRICE`) VALUES
(1, 'Aerosmith', 1, 1973, 1, 'Aerosmith-Aerosmith', 5.99),
(2, 'Get Your Wings', 1, 1974, 1, 'Aerosmith-GetYourWings', 5.99),
(3, 'Toys In The Attic', 1, 1975, 1, 'Aerosmith-ToysInTheAttic', 5.99),
(4, 'Rocks', 1, 1976, 1, 'Aerosmith-Rocks', 5.99),
(5, 'Draw The Line', 1, 1977, 1, 'Aerosmith-DrawTheLine', 5.99),
(6, 'Angels Cry', 2, 1993, 4, 'Angra-AngelsCry', 5.99),
(7, 'Holy Land', 2, 1996, 4, 'Angra-HolyLand', 5.99),
(8, 'Fireworks', 2, 1998, 4, 'Angra-Fireworks', 5.99),
(9, 'Rebirth', 2, 2001, 4, 'Angra-Rebirth', 5.99),
(10, 'Temple Of Shadows', 2, 2004, 4, 'Angra-TempleOfShadows', 5.99),
(11, 'The Metal Opera', 3, 2001, 3, 'Avantasia-TheMetalOpera', 5.99),
(12, 'The Scarecrow', 3, 2001, 3, 'Avantasia-TheScarecrow', 5.99),
(13, 'The Wicked Symphony', 3, 2001, 3, 'Avantasia-TheWickedSymphony', 5.99),
(14, 'Angel Of Babylon', 3, 2001, 3, 'Avantasia-AngelOfBabylon', 5.99),
(15, 'The Mystery Of Time', 3, 2001, 3, 'Avantasia-TheMysteryOfTime', 5.99),
(16, 'Black Sabbath', 4, 1970, 1, 'BlackSabbath-BlackSabbath', 5.99),
(17, 'Paranoid', 4, 1970, 1, 'BlackSabbath-Paranoid', 5.99),
(18, 'Master Of Reality', 4, 1971, 1, 'BlackSabbath-MasterOfReality', 5.99),
(19, 'Black Sabbath Vol 4', 4, 2001, 1, 'BlackSabbath-BlackSabbathVol4', 5.99),
(20, 'Sabbath Bloody Sabbath', 4, 2001, 1, 'BlackSabbath-SabbathBloodySabbath', 5.99),
(21, 'Battalions Of Fear', 5, 1988, 3, 'BlindGuardian-BattalionsOfFear', 5.99),
(22, 'Follow The Blind', 5, 1989, 3, 'BlindGuardian-FollowTheBlind', 5.99),
(23, 'Somewhere Far Beyond', 5, 1992, 3, 'BlindGuardian-SomewhereFarBeyond', 5.99),
(24, 'A Night At The Opera', 5, 2002, 3, 'BlindGuardian-ANightAtTheOpera', 5.99),
(25, 'Beyond The Red Mirror', 5, 2015, 3, 'BlindGuardian-BeyondTheRedMirror', 5.99),
(26, 'Awake', 6, 1994, 4, 'DreamTheater-Awake', 5.99),
(27, 'Falling Into Infinity', 6, 1997, 4, 'DreamTheater-FallingIntoInfinity', 5.99),
(28, 'Octavarium', 6, 2005, 4, 'DreamTheater-Octavarium', 5.99),
(29, 'Systematic Chaos', 6, 2007, 4, 'DreamTheater-SystematicChaos', 5.99),
(30, 'Dream Theater', 6, 2013, 4, 'DreamTheater-DreamTheater', 5.99),
(31, 'In A Reverie', 7, 1999, 2, 'LacunaCoil-InAReverie', 5.99),
(32, 'Unleashed Memories', 7, 2001, 2, 'LacunaCoil-UnleashedMemories', 5.99),
(33, 'Comalies', 7, 2002, 2, 'LacunaCoil-Comalies', 5.99),
(34, 'Karmacode', 7, 2006, 2, 'LacunaCoil-Karmacode', 5.99),
(35, 'Shallow Life', 7, 2009, 2, 'LacunaCoil-ShallowLife', 5.99),
(36, 'Led Zeppelin', 8, 1969, 1, 'LedZeppelin-LedZeppelin', 5.99),
(37, 'Led Zeppelin II', 8, 1969, 1, 'LedZeppelin-LedZeppelinII', 5.99),
(38, 'Led Zeppelin III', 8, 1969, 1, 'LedZeppelin-LedZeppelinIII', 5.99),
(39, 'Led Zeppelin IV', 8, 1969, 1, 'LedZeppelin-LedZeppelinIV', 5.99),
(40, 'Houses Of The Holy', 8, 1969, 1, 'LedZeppelin-HousesOfTheHoly', 5.99),
(41, 'Ride The Lightning', 9, 1983, 5, 'Metallica-RideTheLightning', 5.99),
(42, 'Master of Puppets', 9, 1986, 5, 'Metallica-MasterOfPuppets', 5.99),
(43, 'Metallica', 9, 1991, 5, 'Metallica-Metallica', 5.99),
(44, 'Load', 9, 1996, 5, 'Metallica-Load', 5.99),
(45, 'Reload', 9, 1997, 5, 'Metallica-Reload', 5.99),
(46, 'RustInPeace', 10, 1990, 2, 'Megadeth-RustInPeace', 5.99),
(47, 'Countdown To Extinction', 10, 1992, 2, 'Megadeth-CountdownToExtinction', 5.99),
(48, 'Youthanasia', 10, 1994, 2, 'Megadeth-Youthanasia', 5.99),
(49, 'Cryptic Writings', 10, 1997, 2, 'Megadeth-CrypticWritings', 5.99),
(50, 'Risk', 10, 1999, 2, 'Megadeth-Risk', 5.99),
(51, 'Contradictions Collapse', 11, 1991, 4, 'Meshuggah-ContraddictionsCollapse', 5.99),
(52, 'Chaosphere', 11, 1998, 4, 'Meshuggah-Chaosphere', 5.99),
(53, 'Nothing', 11, 2002, 4, 'Meshuggah-Nothing', 5.99),
(54, 'Koloss', 11, 2012, 4, 'Meshuggah-Koloss', 5.99),
(55, 'The Violent Sleep Of Reason', 11, 2016, 4, 'Meshuggah-TheViolentSleepOfReason', 5.99),
(56, 'Angels Fall First', 12, 1997, 2, 'Nightwish-AngelsFallFirst', 5.99),
(57, 'Oceanborn', 12, 1998, 2, 'Nightwish-Oceanborn', 5.99),
(58, 'Wishmaster', 12, 2000, 2, 'Nightwish-Wishmaster', 5.99),
(59, 'Once', 12, 2004, 2, 'Nightwish-Once', 5.99),
(60, 'Imaginaerum', 12, 1997, 2, 'Nightwish-Imaginaerum', 5.99),
(61, 'Orchid', 13, 1995, 4, 'Opeth-Orchid', 5.99),
(62, 'Morningrise', 13, 1996, 4, 'Opeth-Morningrise', 5.99),
(63, 'Deliverance', 13, 2002, 4, 'Opeth-Deliverance', 5.99),
(64, 'Damnation', 13, 2003, 4, 'Opeth-Damnation', 5.99),
(65, 'Watershed', 13, 2008, 4, 'Opeth-Watershed', 5.99),
(66, 'Metal Magic', 14, 1983, 5, 'Pantera-MetalMagic', 5.99),
(67, 'I Am The Night', 14, 1985, 5, 'Pantera-IAmTheNight', 5.99),
(68, 'Power Metal', 14, 1983, 5, 'Pantera-PowerMetal', 5.99),
(69, 'Cowboys From Hell', 14, 1990, 5, 'Pantera-CowboysFromHell', 5.99),
(70, 'Vulgar Display Of Power', 14, 1992, 5, 'Pantera-VulgarDisplayOfPower', 5.99),
(71, 'Legendary Tales', 15, 1997, 3, 'RhapsodyOfFire-LegendaryTales', 5.99),
(72, 'Dawn Of Victory', 15, 2000, 3, 'RhapsodyOfFire-DawnOfVictory', 5.99),
(73, 'Power Of The Dragonflame', 15, 2002, 3, 'RhapsodyOfFire-PowerOfTheDragonFlame', 5.99),
(74, 'Triumph Or Agony', 15, 2006, 3, 'RhapsodyOfFire-TriumphOrAgony', 5.99),
(75, 'The Eight Mountain', 15, 2019, 3, 'RhapsodyOfFire-TheEightMountain', 5.99),
(76, 'Lonesome Crow', 16, 1972, 1, 'Scorpions-LonesomeCrew', 5.99),
(77, 'In Trance', 16, 1975, 1, 'Scorpions-InTrance', 5.99),
(78, 'Virgin Killer', 16, 1976, 1, 'Scorpions-VirginKiller', 5.99),
(79, 'Lovedrive', 16, 1979, 1, 'Scorpions-Lovedrive', 5.99),
(80, 'Blackout', 16, 1982, 1, 'Scorpions-Blackout', 5.99),
(81, 'Symphony X', 17, 1994, 4, 'SymphonyX-SymphonyX', 5.99),
(82, 'The Damnation Game', 17, 1995, 4, 'SymphonyX-TheDamnationGame', 5.99),
(83, 'The Odyssey', 17, 2002, 4, 'SymphonyX-TheOdyssey', 5.99),
(84, 'Iconoclast', 17, 2011, 4, 'SymphonyX-Iconoclast', 5.99),
(85, 'Underworld', 17, 1997, 4, 'SymphonyX-Underworld', 5.99),
(86, 'Beyond Sanctorum', 18, 1992, 2, 'Therion-BeyondSanctorum', 5.99),
(87, 'Theli', 18, 1996, 2, 'Therion-Theli', 5.99),
(88, 'Vovin', 18, 1998, 2, 'Therion-Vovin', 5.99),
(89, 'Deggial', 18, 2000, 2, 'Therion-Deggial', 5.99),
(90, 'Lemuria', 18, 2004, 2, 'Therion-Lemuria', 5.99);

-- --------------------------------------------------------

--
-- Struttura della tabella `ARTISTS`
--

CREATE TABLE `ARTISTS` (
  `ARTISTID` int(11) NOT NULL,
  `ARTISTNAME` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `ARTISTS`
--

INSERT INTO `ARTISTS` (`ARTISTID`, `ARTISTNAME`) VALUES
(1, 'Aerosmith'),
(2, 'Angra'),
(3, 'Avantasia'),
(4, 'Black Sabbath'),
(5, 'Blind Guardian'),
(6, 'Dream Theater'),
(7, 'Lacuna Coil'),
(8, 'Led Zeppelin'),
(9, 'Metallica'),
(10, 'Megadeth'),
(11, 'Meshuggah'),
(12, 'Nightwish'),
(13, 'Opeth'),
(14, 'Pantera'),
(15, 'Rhapsody Of Fire'),
(16, 'Scorpions'),
(17, 'Symphony X'),
(18, 'Therion'),
(19, 'Tristania'),
(20, 'Within Temptation');

-- --------------------------------------------------------

--
-- Struttura della tabella `CARTS`
--

CREATE TABLE `CARTS` (
  `USER` varchar(255) DEFAULT NULL,
  `PRODUCT` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `GENRES`
--

CREATE TABLE `GENRES` (
  `GENREID` int(11) NOT NULL,
  `GENRENAME` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `GENRES`
--

INSERT INTO `GENRES` (`GENREID`, `GENRENAME`) VALUES
(1, 'Hard Rock'),
(2, 'Gothic Metal'),
(3, 'Power Metal'),
(4, 'Progressive Metal'),
(5, 'Thrash Metal');

-- --------------------------------------------------------

--
-- Struttura della tabella `PURCHASED`
--

CREATE TABLE `PURCHASED` (
  `USER` varchar(255) NOT NULL,
  `PRODUCT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `PURCHASED`
--

INSERT INTO `PURCHASED` (`USER`, `PRODUCT`) VALUES
('mail1@mail.com', 1),
('mail1@mail.com', 14),
('mail1@mail.com', 33);

-- --------------------------------------------------------

--
-- Struttura della tabella `USERS`
--

CREATE TABLE `USERS` (
  `EMAIL` varchar(255) NOT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `USERS`
--

INSERT INTO `USERS` (`EMAIL`, `PASSWORD`) VALUES
('mail1@mail.com', 'password1'),
('mail2@mail.com', 'password2'),
('mail3@mail.com', 'password3');

-- --------------------------------------------------------

--
-- Struttura della tabella `WISHLISTS`
--

CREATE TABLE `WISHLISTS` (
  `USER` varchar(255) NOT NULL,
  `PRODUCT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `ALBUMS`
--
ALTER TABLE `ALBUMS`
  ADD PRIMARY KEY (`ALBUMID`),
  ADD KEY `ARTISTID` (`ARTISTID`),
  ADD KEY `GENREID` (`GENREID`);

--
-- Indici per le tabelle `ARTISTS`
--
ALTER TABLE `ARTISTS`
  ADD PRIMARY KEY (`ARTISTID`);

--
-- Indici per le tabelle `CARTS`
--
ALTER TABLE `CARTS`
  ADD KEY `USER` (`USER`),
  ADD KEY `PRODUCT` (`PRODUCT`);

--
-- Indici per le tabelle `GENRES`
--
ALTER TABLE `GENRES`
  ADD PRIMARY KEY (`GENREID`);

--
-- Indici per le tabelle `PURCHASED`
--
ALTER TABLE `PURCHASED`
  ADD PRIMARY KEY (`USER`,`PRODUCT`),
  ADD UNIQUE KEY `USER` (`USER`,`PRODUCT`),
  ADD KEY `PRODUCT` (`PRODUCT`);

--
-- Indici per le tabelle `USERS`
--
ALTER TABLE `USERS`
  ADD PRIMARY KEY (`EMAIL`);

--
-- Indici per le tabelle `WISHLISTS`
--
ALTER TABLE `WISHLISTS`
  ADD PRIMARY KEY (`USER`,`PRODUCT`),
  ADD KEY `PRODUCT` (`PRODUCT`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `ALBUMS`
--
ALTER TABLE `ALBUMS`
  MODIFY `ALBUMID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT per la tabella `ARTISTS`
--
ALTER TABLE `ARTISTS`
  MODIFY `ARTISTID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT per la tabella `GENRES`
--
ALTER TABLE `GENRES`
  MODIFY `GENREID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `ALBUMS`
--
ALTER TABLE `ALBUMS`
  ADD CONSTRAINT `albums_ibfk_1` FOREIGN KEY (`ARTISTID`) REFERENCES `ARTISTS` (`ARTISTID`),
  ADD CONSTRAINT `albums_ibfk_2` FOREIGN KEY (`GENREID`) REFERENCES `GENRES` (`GENREID`);

--
-- Limiti per la tabella `CARTS`
--
ALTER TABLE `CARTS`
  ADD CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`USER`) REFERENCES `USERS` (`EMAIL`),
  ADD CONSTRAINT `carts_ibfk_2` FOREIGN KEY (`PRODUCT`) REFERENCES `ALBUMS` (`ALBUMID`);

--
-- Limiti per la tabella `PURCHASED`
--
ALTER TABLE `PURCHASED`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`USER`) REFERENCES `USERS` (`EMAIL`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`PRODUCT`) REFERENCES `ALBUMS` (`ALBUMID`);

--
-- Limiti per la tabella `WISHLISTS`
--
ALTER TABLE `WISHLISTS`
  ADD CONSTRAINT `wishlists_ibfk_1` FOREIGN KEY (`USER`) REFERENCES `USERS` (`EMAIL`),
  ADD CONSTRAINT `wishlists_ibfk_2` FOREIGN KEY (`PRODUCT`) REFERENCES `ALBUMS` (`ALBUMID`);
