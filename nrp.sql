-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Erstellungszeit: 21. Feb 2022 um 11:43
-- Server-Version: 10.3.29-MariaDB-0+deb10u1
-- PHP-Version: 7.3.29-1~deb10u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `nemesus_db5`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `accesindex`
--

CREATE TABLE `accesindex` (
  `id` int(11) NOT NULL,
  `modelid` int(11) DEFAULT NULL,
  `name` varchar(55) DEFAULT 'n/A',
  `kategorie` int(2) DEFAULT 4
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `accesindex`
--

INSERT INTO `accesindex` (`id`, `modelid`, `name`, `kategorie`) VALUES
(1, 0, 'Freier Slot', -1),
(3, 19319, 'E-Gitarre A', 0),
(4, 19318, 'E-Gitarre B', 0),
(5, 3070, 'VR-Brille', 1),
(6, 11712, 'Kreuz', 4),
(7, 3065, 'Basketball', 0),
(8, -2132, 'Dallas Maske', 1),
(9, -2133, 'Mundschutz', 1),
(10, -2116, 'Hasenohren', 3),
(11, -2032, 'Akustik Gitarre', 0),
(12, 19581, 'Pfanne', 0),
(13, 2880, 'Burger', 0),
(14, 19346, 'Hotdog', 0),
(15, 19822, 'Wein', 0),
(16, 19555, 'Boxhandschuh A', 4),
(18, 19556, 'Boxhandschuh B', 4),
(19, 19621, 'ÖL-Kanne', 0),
(20, 1650, 'Benzin-Kanister', 0),
(21, 19623, 'Kamera', 0),
(22, 18635, 'Hammer', 0),
(23, 2663, 'BSN Tüte', 4),
(24, 19624, 'Reisekoffer', 0),
(25, 19079, 'Papagei', 2),
(26, 19921, 'W-Koffer', 0),
(27, 18644, 'Schraubendreher', 0),
(28, 19586, 'Spatel', 0),
(29, 3044, 'Zigarre', 0),
(30, 11704, 'Teufelsmaske', 1),
(31, 2712, 'Wischmopp', 0),
(32, 19896, 'Zigaretten', 4),
(33, 1274, 'Geldstanstecker', 4),
(34, 1240, 'Herzanstecker', 4),
(35, 19622, 'Besen', 0),
(36, 19627, 'Schraubenschlüssel', 0),
(37, 3072, 'Hantel', 0),
(38, 2711, 'Tätowiernadel', 0),
(39, 2406, 'Surfboard', 4),
(40, 19085, 'Augenklappe', 1),
(41, 1550, 'Geldrucksack', 4),
(42, 19558, 'Pizzakappe', 1),
(43, 2060, 'Beutel', 4),
(44, 19592, 'Korb', 4),
(45, 1254, 'Totenkopf', 4),
(46, 1582, 'Pizzabox', 4),
(47, -2139, 'Kürbismaske', 3),
(48, -2140, 'Umhängetasche', 4),
(49, -2162, 'Energy Drink', 0),
(50, -2165, 'Lieferrucksack', 4),
(51, 19610, 'Mikrofon', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `name` varchar(24) DEFAULT 'KeinName',
  `passwort` varchar(129) DEFAULT NULL,
  `adminlevel` int(2) DEFAULT 0,
  `geld` int(11) DEFAULT NULL,
  `level` int(2) DEFAULT NULL,
  `alt` int(2) DEFAULT NULL,
  `job` int(2) DEFAULT NULL,
  `tutorial` int(2) DEFAULT NULL,
  `skin` int(11) DEFAULT NULL,
  `geschlecht` int(2) DEFAULT NULL,
  `gameintro` int(2) DEFAULT NULL,
  `krankheit` int(2) DEFAULT NULL,
  `nc2` int(11) DEFAULT NULL,
  `handy` int(2) DEFAULT NULL,
  `handynummer` int(6) DEFAULT NULL,
  `handystatus` int(2) DEFAULT NULL,
  `guthaben` int(11) DEFAULT NULL,
  `vertrag` int(2) DEFAULT NULL,
  `akku` int(2) DEFAULT NULL,
  `wa` int(2) DEFAULT NULL,
  `personalausweis` int(2) DEFAULT NULL,
  `quest` int(2) DEFAULT NULL,
  `klingelton` int(2) DEFAULT NULL,
  `jailed` int(11) DEFAULT -1,
  `telefonbuch` int(2) DEFAULT NULL,
  `autoschein` int(11) DEFAULT NULL,
  `algeld` int(2) DEFAULT NULL,
  `fraktion` int(2) DEFAULT NULL,
  `kondom` int(2) DEFAULT NULL,
  `einweiser` int(2) DEFAULT NULL,
  `ban` int(11) DEFAULT NULL,
  `maske` int(5) DEFAULT NULL,
  `karte` int(2) DEFAULT NULL,
  `pin` int(4) DEFAULT NULL,
  `konto` int(11) DEFAULT NULL,
  `mob` int(2) DEFAULT NULL,
  `c4` int(2) DEFAULT NULL,
  `btuch` int(2) DEFAULT NULL,
  `wanteds` int(2) DEFAULT NULL,
  `praemie` int(11) DEFAULT NULL,
  `premium` int(2) DEFAULT NULL,
  `premiumzeit` int(11) DEFAULT NULL,
  `hotel` int(2) DEFAULT 255,
  `spawnchange` int(2) DEFAULT NULL,
  `frakskin` int(11) DEFAULT NULL,
  `tod` int(2) DEFAULT NULL,
  `krankenver` int(2) DEFAULT NULL,
  `factionrank` int(2) DEFAULT NULL,
  `leiter` int(2) DEFAULT NULL,
  `mitglied` int(2) DEFAULT NULL,
  `aschein` int(11) DEFAULT NULL,
  `angel` int(2) DEFAULT NULL,
  `koeder` int(3) DEFAULT NULL,
  `fisch` int(3) DEFAULT NULL,
  `ahut` int(2) DEFAULT -1,
  `askill` int(3) DEFAULT NULL,
  `pfand` int(3) DEFAULT NULL,
  `bootsschein` int(11) DEFAULT NULL,
  `ghettob` int(2) DEFAULT NULL,
  `mp3` int(2) DEFAULT NULL,
  `schaufel` int(2) DEFAULT NULL,
  `ziga` int(2) DEFAULT NULL,
  `bier` int(2) DEFAULT NULL,
  `feuerz` int(11) DEFAULT NULL,
  `rauchsucht` int(11) DEFAULT NULL,
  `alkoholsucht` int(2) DEFAULT NULL,
  `jobskin` int(11) DEFAULT NULL,
  `waffenschein` int(11) DEFAULT NULL,
  `laservisier` int(2) DEFAULT NULL,
  `lastaussehen` int(11) DEFAULT -1,
  `helm` int(2) DEFAULT -1,
  `helmstatus` int(2) DEFAULT NULL,
  `sonnenbrille` int(11) DEFAULT NULL,
  `hut` int(2) DEFAULT -1,
  `atmrob` int(2) DEFAULT NULL,
  `hackwerkzeug` int(2) DEFAULT NULL,
  `haus` int(11) DEFAULT -1,
  `wohnwagen` int(2) DEFAULT NULL,
  `coins` int(4) DEFAULT NULL,
  `arch` int(2) DEFAULT NULL,
  `archz` int(11) DEFAULT NULL,
  `ticket` int(2) DEFAULT NULL,
  `warns` int(2) DEFAULT NULL,
  `damage` double DEFAULT NULL,
  `flugschein` int(11) DEFAULT NULL,
  `pilotenskill` int(2) DEFAULT NULL,
  `gebanntvon` varchar(26) DEFAULT NULL,
  `gebanntgrund` varchar(55) DEFAULT NULL,
  `pbkill` int(3) DEFAULT NULL,
  `pbtode` int(3) DEFAULT NULL,
  `ksscore` int(3) DEFAULT NULL,
  `driftzeit` int(11) DEFAULT NULL,
  `mgk` int(3) DEFAULT NULL,
  `miniguntode` int(3) DEFAULT NULL,
  `hausboot` int(2) DEFAULT NULL,
  `faq` int(2) DEFAULT NULL,
  `spunkte` int(11) DEFAULT NULL,
  `roleplayname` varchar(26) DEFAULT 'Vorname_Nachname',
  `mschein` int(11) DEFAULT NULL,
  `tschein` int(11) DEFAULT NULL,
  `prison` int(2) DEFAULT -1,
  `prisoncp` int(6) DEFAULT NULL,
  `supsperre` int(11) DEFAULT NULL,
  `jobtime` int(11) DEFAULT NULL,
  `bizz` int(2) DEFAULT -1,
  `kabelbinder` int(2) DEFAULT NULL,
  `augenbinde` int(2) DEFAULT NULL,
  `diet` int(2) DEFAULT NULL,
  `drogen` int(11) DEFAULT NULL,
  `drogensamen` int(3) DEFAULT NULL,
  `duenger` int(2) DEFAULT NULL,
  `mats` int(11) DEFAULT NULL,
  `lohn` int(11) DEFAULT 850,
  `eisen` int(3) DEFAULT NULL,
  `lastonline` int(11) DEFAULT NULL,
  `lastip` varchar(20) DEFAULT NULL,
  `erf` int(3) DEFAULT NULL,
  `paypoints` int(2) DEFAULT NULL,
  `cuffed` int(2) DEFAULT NULL,
  `mieter` int(3) DEFAULT NULL,
  `reisepass` int(2) DEFAULT NULL,
  `visum` int(2) DEFAULT NULL,
  `lastcrime` varchar(40) DEFAULT 'N/A',
  `enforcer` int(2) DEFAULT NULL,
  `bombe` int(2) DEFAULT NULL,
  `jailed2` int(11) DEFAULT -1,
  `tickets` int(3) DEFAULT NULL,
  `jailc` int(3) DEFAULT NULL,
  `wantedc` int(3) DEFAULT NULL,
  `akte` int(3) DEFAULT NULL,
  `note` int(2) DEFAULT NULL,
  `geworbenvon` varchar(26) DEFAULT 'Keinem',
  `fightstyle` int(2) DEFAULT NULL,
  `loginb` int(4) DEFAULT 0,
  `loginbc` int(11) DEFAULT -1,
  `ofrak` int(2) DEFAULT NULL,
  `bandana` int(3) DEFAULT -1,
  `funmodus` int(2) DEFAULT NULL,
  `login` int(2) DEFAULT NULL,
  `premiumpd` int(3) DEFAULT NULL,
  `bombenmats` int(2) DEFAULT NULL,
  `namechanges` int(3) DEFAULT NULL,
  `verheiratet` int(2) DEFAULT NULL,
  `verheiratetmit` varchar(26) DEFAULT 'Keinem',
  `audiostream` int(2) DEFAULT NULL,
  `questa` int(2) DEFAULT NULL,
  `network` int(2) DEFAULT 1,
  `rd` int(11) DEFAULT NULL,
  `tode` int(3) DEFAULT NULL,
  `kills` int(3) DEFAULT NULL,
  `spielstunden` int(3) DEFAULT NULL,
  `event` int(2) DEFAULT NULL,
  `praemie2` int(11) DEFAULT NULL,
  `countdown` int(2) DEFAULT NULL,
  `tazer` int(2) DEFAULT NULL,
  `al` int(2) DEFAULT NULL,
  `eventm` int(2) DEFAULT NULL,
  `lotto1` int(2) DEFAULT -1,
  `lotto2` int(2) DEFAULT -1,
  `lotto3` int(2) DEFAULT -1,
  `lotto4` int(2) DEFAULT -1,
  `lotto5` int(2) DEFAULT -1,
  `lotto6` int(2) DEFAULT -1,
  `pilot` int(2) DEFAULT 0,
  `neuling` int(2) DEFAULT NULL,
  `hits` int(2) DEFAULT NULL,
  `lnach` int(2) DEFAULT NULL,
  `ageber` varchar(24) DEFAULT 'N/A',
  `apreis` int(4) DEFAULT -1,
  `aziel` int(3) DEFAULT -1,
  `fsperre` int(11) DEFAULT -1,
  `raketen` int(2) DEFAULT NULL,
  `blitzer` int(2) DEFAULT NULL,
  `email` varchar(35) DEFAULT 'n/A',
  `emaile` int(2) DEFAULT NULL,
  `warning1` varchar(50) DEFAULT NULL,
  `warning2` varchar(50) DEFAULT NULL,
  `warning3` varchar(50) DEFAULT NULL,
  `kanister` int(2) DEFAULT NULL,
  `gasmaske` int(2) DEFAULT NULL,
  `ladenrob` int(3) DEFAULT NULL,
  `radio` int(2) DEFAULT NULL,
  `cool` int(2) DEFAULT NULL,
  `mute` int(11) DEFAULT NULL,
  `rusi` float DEFAULT NULL,
  `leben` float DEFAULT NULL,
  `punkte0` int(2) DEFAULT NULL,
  `punkte1` int(2) DEFAULT NULL,
  `punkte2` int(2) DEFAULT NULL,
  `punkte3` int(2) DEFAULT NULL,
  `punkte4` int(2) DEFAULT NULL,
  `punkte5` int(2) DEFAULT NULL,
  `auftrage` int(2) DEFAULT -1,
  `hbank` int(2) DEFAULT NULL,
  `sniper` int(2) DEFAULT NULL,
  `nagel` int(2) DEFAULT NULL,
  `warning4` varchar(50) DEFAULT NULL,
  `warning5` varchar(50) DEFAULT NULL,
  `ausland` int(2) DEFAULT NULL,
  `bullet` int(2) DEFAULT NULL,
  `whitelist` int(11) DEFAULT 0,
  `info` int(2) DEFAULT NULL,
  `handya` int(2) DEFAULT NULL,
  `flappy` float DEFAULT NULL,
  `lastspawn` int(2) DEFAULT NULL,
  `lastpos0` float DEFAULT NULL,
  `lastpos1` float DEFAULT NULL,
  `lastpos2` float DEFAULT NULL,
  `lastpos3` float DEFAULT NULL,
  `lastworld` int(2) DEFAULT NULL,
  `lastinterior` int(2) DEFAULT NULL,
  `waffenme` int(11) DEFAULT 0,
  `pdspawn` int(11) DEFAULT 0,
  `hatmail` int(11) DEFAULT 0,
  `abombe` int(2) DEFAULT NULL,
  `alogin` int(2) DEFAULT NULL,
  `sarmor` int(2) DEFAULT NULL,
  `jagtskill` int(2) DEFAULT NULL,
  `lwarn` int(11) DEFAULT NULL,
  `djskill` int(3) DEFAULT NULL,
  `dsucht` int(11) DEFAULT NULL,
  `fskill` int(2) DEFAULT NULL,
  `neon` int(2) DEFAULT NULL,
  `osterp` int(2) DEFAULT NULL,
  `premiumc` int(2) DEFAULT NULL,
  `fname` varchar(26) DEFAULT NULL,
  `gfahrzeug` int(2) DEFAULT NULL,
  `boost` int(11) DEFAULT NULL,
  `bskill` int(3) DEFAULT NULL,
  `allowb` int(2) DEFAULT NULL,
  `swat` int(2) DEFAULT NULL,
  `swatl` int(2) DEFAULT NULL,
  `aslots` int(2) DEFAULT NULL,
  `akzent` varchar(55) DEFAULT 'n/A',
  `elotto` int(2) DEFAULT NULL,
  `azeit` int(2) DEFAULT NULL,
  `wtext` varchar(50) DEFAULT NULL,
  `tlampe` int(2) DEFAULT NULL,
  `inaktiv` int(3) DEFAULT NULL,
  `steam` varchar(25) DEFAULT NULL,
  `pmember` int(3) DEFAULT -1,
  `pleader` int(3) DEFAULT -1,
  `wahlen` int(2) DEFAULT NULL,
  `prank` int(2) DEFAULT NULL,
  `truckererf` int(11) DEFAULT NULL,
  `spedition` int(2) DEFAULT NULL,
  `fleader` int(5) DEFAULT -1,
  `fmember` int(5) DEFAULT -1,
  `frank` int(2) DEFAULT NULL,
  `parla` int(2) DEFAULT NULL,
  `helfer` int(2) DEFAULT NULL,
  `sudl` float DEFAULT NULL,
  `haus2` int(3) DEFAULT -1,
  `haus3` int(3) DEFAULT -1,
  `lhaus` int(3) DEFAULT -1,
  `hauskey` int(2) DEFAULT NULL,
  `knacken` int(3) DEFAULT NULL,
  `parku` int(2) DEFAULT NULL,
  `pIdent` varchar(15) DEFAULT '0',
  `handbremse` int(2) DEFAULT NULL,
  `sync` int(2) DEFAULT NULL,
  `blinker` int(2) DEFAULT NULL,
  `haus1` int(2) DEFAULT -1,
  `pods` int(2) DEFAULT NULL,
  `ucp` int(2) DEFAULT NULL,
  `awerk` int(2) DEFAULT NULL,
  `gsch` int(3) DEFAULT NULL,
  `nnummer` int(2) DEFAULT NULL,
  `tcash` int(4) DEFAULT NULL,
  `ttime` int(11) DEFAULT NULL,
  `bonusa` int(2) DEFAULT NULL,
  `drogen2` int(3) DEFAULT NULL,
  `loginstate` int(2) DEFAULT NULL,
  `reden` int(2) DEFAULT NULL,
  `mspawn` int(2) DEFAULT NULL,
  `zeug` int(2) DEFAULT NULL,
  `besch` int(2) DEFAULT NULL,
  `lg` int(2) DEFAULT NULL,
  `wab` int(2) DEFAULT NULL,
  `mdc_akzent` varchar(50) DEFAULT 'Unbekannt',
  `mdc_besonder` varchar(126) DEFAULT 'Keine',
  `mdc_comment` varchar(126) DEFAULT 'Kein Eintrag',
  `ds2` int(3) DEFAULT NULL,
  `dro3` int(3) DEFAULT NULL,
  `auft` varchar(120) DEFAULT 'n/A',
  `newsc` int(4) DEFAULT NULL,
  `minij` int(2) DEFAULT NULL,
  `oldpw` int(2) DEFAULT 2,
  `forum` int(2) DEFAULT NULL,
  `persoa` int(11) DEFAULT NULL,
  `augenf` varchar(15) DEFAULT 'n/A',
  `wohnort` varchar(25) DEFAULT NULL,
  `national` varchar(20) DEFAULT NULL,
  `gross` varchar(15) DEFAULT NULL,
  `grill` int(2) DEFAULT NULL,
  `kspawn` int(2) DEFAULT NULL,
  `lauf` int(2) DEFAULT NULL,
  `energy` int(2) DEFAULT NULL,
  `eventsperre` int(2) DEFAULT NULL,
  `hbar` int(2) DEFAULT NULL,
  `walkie` int(2) DEFAULT NULL,
  `lastduty` int(11) DEFAULT NULL,
  `haus4` int(3) DEFAULT -1,
  `hauskeys` int(2) DEFAULT NULL,
  `restarta` int(2) DEFAULT NULL,
  `gang` int(3) DEFAULT 100,
  `skateb` int(2) DEFAULT NULL,
  `AC` int(2) DEFAULT NULL,
  `wskill` int(3) DEFAULT NULL,
  `lhouse` int(4) DEFAULT -1,
  `uhr` int(5) DEFAULT NULL,
  `look` varchar(128) DEFAULT 'n/A',
  `pm` int(2) DEFAULT NULL,
  `freq` int(2) DEFAULT NULL,
  `hdd` varchar(45) DEFAULT NULL,
  `pieper` int(2) DEFAULT NULL,
  `under` int(2) DEFAULT NULL,
  `wetter` int(2) DEFAULT NULL,
  `blitzerm` int(2) DEFAULT NULL,
  `cointime` int(11) DEFAULT NULL,
  `hallo` int(2) DEFAULT NULL,
  `pram` int(2) DEFAULT 1,
  `hitl` int(2) DEFAULT NULL,
  `schall` int(2) DEFAULT NULL,
  `grob` int(2) DEFAULT NULL,
  `alvl` int(2) DEFAULT NULL,
  `fgeld` int(6) DEFAULT NULL,
  `fpd` int(3) DEFAULT NULL,
  `invitetime` int(11) DEFAULT NULL,
  `fpdd` int(3) DEFAULT NULL,
  `msg` int(2) DEFAULT NULL,
  `chip` int(2) DEFAULT NULL,
  `furni` varchar(100) DEFAULT 'n/A',
  `hols` int(2) DEFAULT NULL,
  `weas` int(2) DEFAULT NULL,
  `tl` int(2) DEFAULT NULL,
  `remember_token` varchar(80) DEFAULT NULL,
  `updated_at` varchar(25) DEFAULT NULL,
  `rp` int(2) DEFAULT NULL,
  `verl` varchar(15) DEFAULT NULL,
  `ucn` varchar(25) DEFAULT NULL,
  `fipreis` int(4) DEFAULT NULL,
  `tcd` int(2) DEFAULT NULL,
  `fdienst` int(2) DEFAULT NULL,
  `speicher` int(2) DEFAULT NULL,
  `kopf` int(6) DEFAULT NULL,
  `canim` int(2) DEFAULT NULL,
  `garage` int(3) DEFAULT -1,
  `garagenmiete` int(6) DEFAULT NULL,
  `lastgarage` int(4) DEFAULT 0,
  `forumacc` int(11) DEFAULT -1,
  `koffer` int(3) DEFAULT -1,
  `lf` int(2) DEFAULT NULL,
  `wrob` int(2) DEFAULT NULL,
  `bolzen` int(2) DEFAULT NULL,
  `look2` varchar(128) DEFAULT NULL,
  `b` int(2) DEFAULT NULL,
  `hrt` int(11) DEFAULT NULL,
  `hst` int(11) DEFAULT NULL,
  `browser` int(2) DEFAULT NULL,
  `jspawn` int(3) DEFAULT -1,
  `stand` varchar(25) DEFAULT NULL,
  `haus5` int(5) DEFAULT -1,
  `kgeld` int(11) DEFAULT NULL,
  `access` varchar(45) DEFAULT '0|0|0|0|0|0|0|0|0|0|0|0|0|0',
  `warnw` int(2) DEFAULT NULL,
  `tauch` int(2) DEFAULT NULL,
  `muschel` int(2) DEFAULT NULL,
  `pspedi` int(5) DEFAULT NULL,
  `sgeld` int(5) DEFAULT NULL,
  `weti` int(3) DEFAULT NULL,
  `lco` int(11) DEFAULT NULL,
  `llo` int(11) DEFAULT -1,
  `hss` int(2) DEFAULT NULL,
  `tsr` int(2) DEFAULT NULL,
  `anxt` int(3) DEFAULT NULL,
  `wap` int(2) DEFAULT NULL,
  `fd` int(3) DEFAULT NULL,
  `speedo` int(2) DEFAULT 0,
  `mco` int(2) DEFAULT 0,
  `hud` int(2) DEFAULT 0,
  `bon` int(2) DEFAULT 0,
  `flei` int(3) DEFAULT 0,
  `tvo` int(2) DEFAULT 12,
  `hude` int(2) DEFAULT 0,
  `dmins` int(2) DEFAULT 1,
  `drogen4` int(3) DEFAULT NULL,
  `kpulver` int(2) DEFAULT NULL,
  `lastck` int(11) DEFAULT 0,
  `auth` int(2) DEFAULT NULL,
  `gym` int(3) DEFAULT NULL,
  `muscle` int(3) DEFAULT NULL,
  `ame` int(2) DEFAULT NULL,
  `ucnlevel` int(2) DEFAULT 0,
  `drohnek` int(2) DEFAULT NULL,
  `drohne` int(3) DEFAULT NULL,
  `look3` varchar(128) DEFAULT 'n/A',
  `mcid` int(11) DEFAULT -1,
  `mega` int(2) DEFAULT 0,
  `payd` int(2) DEFAULT 0,
  `self` int(2) DEFAULT NULL,
  `esperre` int(2) DEFAULT 0,
  `gun` int(2) DEFAULT NULL,
  `cdrob` int(11) DEFAULT NULL,
  `loginold` int(2) DEFAULT -1,
  `ts3id` varchar(50) DEFAULT NULL,
  `freig` int(2) DEFAULT NULL,
  `tanke` int(2) DEFAULT NULL,
  `userakte` int(11) DEFAULT NULL,
  `drogenskill` int(3) DEFAULT NULL,
  `wblock` int(11) DEFAULT NULL,
  `proxy` int(2) DEFAULT NULL,
  `rpcounter` int(4) DEFAULT NULL,
  `pIdent2` varchar(25) DEFAULT 'n/A',
  `charstory` int(22) DEFAULT NULL,
  `oockonto` int(8) DEFAULT NULL,
  `givemoney` int(7) DEFAULT NULL,
  `wstime` int(11) DEFAULT NULL,
  `hbv` int(2) DEFAULT 0,
  `ptime` int(2) DEFAULT 0,
  `sc` int(2) DEFAULT NULL,
  `back` int(2) DEFAULT NULL,
  `pskin` int(11) DEFAULT -1,
  `firmenverwalter` int(2) DEFAULT 0,
  `maxaccs` int(2) DEFAULT 2,
  `maid` int(5) DEFAULT -1,
  `fgk` int(11) DEFAULT 0,
  `fgkt` int(11) DEFAULT NULL,
  `dmkills` int(3) DEFAULT 0,
  `kau` int(5) DEFAULT NULL,
  `jailedonline` int(2) DEFAULT NULL,
  `aduty` int(3) DEFAULT NULL,
  `fduty` int(3) DEFAULT NULL,
  `srl` varchar(15) DEFAULT 'n/A',
  `klingela` varchar(64) DEFAULT 'n/A',
  `haus6` int(4) DEFAULT -1,
  `firma2` varchar(60) DEFAULT 'n/A',
  `firma2id` int(5) DEFAULT -1,
  `eaccess` varchar(45) DEFAULT '-1|-1|-1|-1|-1|0|0|0|0|0',
  `werbung` int(2) DEFAULT NULL,
  `gpunkte` int(2) DEFAULT 0,
  `weste` int(2) DEFAULT NULL,
  `tier` int(6) DEFAULT NULL,
  `tname` varchar(15) DEFAULT 'Tier',
  `UCP_einweisungen` int(1) UNSIGNED ZEROFILL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `accounts`
--

INSERT INTO `accounts` (`id`, `name`, `passwort`, `adminlevel`, `geld`, `level`, `alt`, `job`, `tutorial`, `skin`, `geschlecht`, `gameintro`, `krankheit`, `nc2`, `handy`, `handynummer`, `handystatus`, `guthaben`, `vertrag`, `akku`, `wa`, `personalausweis`, `quest`, `klingelton`, `jailed`, `telefonbuch`, `autoschein`, `algeld`, `fraktion`, `kondom`, `einweiser`, `ban`, `maske`, `karte`, `pin`, `konto`, `mob`, `c4`, `btuch`, `wanteds`, `praemie`, `premium`, `premiumzeit`, `hotel`, `spawnchange`, `frakskin`, `tod`, `krankenver`, `factionrank`, `leiter`, `mitglied`, `aschein`, `angel`, `koeder`, `fisch`, `ahut`, `askill`, `pfand`, `bootsschein`, `ghettob`, `mp3`, `schaufel`, `ziga`, `bier`, `feuerz`, `rauchsucht`, `alkoholsucht`, `jobskin`, `waffenschein`, `laservisier`, `lastaussehen`, `helm`, `helmstatus`, `sonnenbrille`, `hut`, `atmrob`, `hackwerkzeug`, `haus`, `wohnwagen`, `coins`, `arch`, `archz`, `ticket`, `warns`, `damage`, `flugschein`, `pilotenskill`, `gebanntvon`, `gebanntgrund`, `pbkill`, `pbtode`, `ksscore`, `driftzeit`, `mgk`, `miniguntode`, `hausboot`, `faq`, `spunkte`, `roleplayname`, `mschein`, `tschein`, `prison`, `prisoncp`, `supsperre`, `jobtime`, `bizz`, `kabelbinder`, `augenbinde`, `diet`, `drogen`, `drogensamen`, `duenger`, `mats`, `lohn`, `eisen`, `lastonline`, `lastip`, `erf`, `paypoints`, `cuffed`, `mieter`, `reisepass`, `visum`, `lastcrime`, `enforcer`, `bombe`, `jailed2`, `tickets`, `jailc`, `wantedc`, `akte`, `note`, `geworbenvon`, `fightstyle`, `loginb`, `loginbc`, `ofrak`, `bandana`, `funmodus`, `login`, `premiumpd`, `bombenmats`, `namechanges`, `verheiratet`, `verheiratetmit`, `audiostream`, `questa`, `network`, `rd`, `tode`, `kills`, `spielstunden`, `event`, `praemie2`, `countdown`, `tazer`, `al`, `eventm`, `lotto1`, `lotto2`, `lotto3`, `lotto4`, `lotto5`, `lotto6`, `pilot`, `neuling`, `hits`, `lnach`, `ageber`, `apreis`, `aziel`, `fsperre`, `raketen`, `blitzer`, `email`, `emaile`, `warning1`, `warning2`, `warning3`, `kanister`, `gasmaske`, `ladenrob`, `radio`, `cool`, `mute`, `rusi`, `leben`, `punkte0`, `punkte1`, `punkte2`, `punkte3`, `punkte4`, `punkte5`, `auftrage`, `hbank`, `sniper`, `nagel`, `warning4`, `warning5`, `ausland`, `bullet`, `whitelist`, `info`, `handya`, `flappy`, `lastspawn`, `lastpos0`, `lastpos1`, `lastpos2`, `lastpos3`, `lastworld`, `lastinterior`, `waffenme`, `pdspawn`, `hatmail`, `abombe`, `alogin`, `sarmor`, `jagtskill`, `lwarn`, `djskill`, `dsucht`, `fskill`, `neon`, `osterp`, `premiumc`, `fname`, `gfahrzeug`, `boost`, `bskill`, `allowb`, `swat`, `swatl`, `aslots`, `akzent`, `elotto`, `azeit`, `wtext`, `tlampe`, `inaktiv`, `steam`, `pmember`, `pleader`, `wahlen`, `prank`, `truckererf`, `spedition`, `fleader`, `fmember`, `frank`, `parla`, `helfer`, `sudl`, `haus2`, `haus3`, `lhaus`, `hauskey`, `knacken`, `parku`, `pIdent`, `handbremse`, `sync`, `blinker`, `haus1`, `pods`, `ucp`, `awerk`, `gsch`, `nnummer`, `tcash`, `ttime`, `bonusa`, `drogen2`, `loginstate`, `reden`, `mspawn`, `zeug`, `besch`, `lg`, `wab`, `mdc_akzent`, `mdc_besonder`, `mdc_comment`, `ds2`, `dro3`, `auft`, `newsc`, `minij`, `oldpw`, `forum`, `persoa`, `augenf`, `wohnort`, `national`, `gross`, `grill`, `kspawn`, `lauf`, `energy`, `eventsperre`, `hbar`, `walkie`, `lastduty`, `haus4`, `hauskeys`, `restarta`, `gang`, `skateb`, `AC`, `wskill`, `lhouse`, `uhr`, `look`, `pm`, `freq`, `hdd`, `pieper`, `under`, `wetter`, `blitzerm`, `cointime`, `hallo`, `pram`, `hitl`, `schall`, `grob`, `alvl`, `fgeld`, `fpd`, `invitetime`, `fpdd`, `msg`, `chip`, `furni`, `hols`, `weas`, `tl`, `remember_token`, `updated_at`, `rp`, `verl`, `ucn`, `fipreis`, `tcd`, `fdienst`, `speicher`, `kopf`, `canim`, `garage`, `garagenmiete`, `lastgarage`, `forumacc`, `koffer`, `lf`, `wrob`, `bolzen`, `look2`, `b`, `hrt`, `hst`, `browser`, `jspawn`, `stand`, `haus5`, `kgeld`, `access`, `warnw`, `tauch`, `muschel`, `pspedi`, `sgeld`, `weti`, `lco`, `llo`, `hss`, `tsr`, `anxt`, `wap`, `fd`, `speedo`, `mco`, `hud`, `bon`, `flei`, `tvo`, `hude`, `dmins`, `drogen4`, `kpulver`, `lastck`, `auth`, `gym`, `muscle`, `ame`, `ucnlevel`, `drohnek`, `drohne`, `look3`, `mcid`, `mega`, `payd`, `self`, `esperre`, `gun`, `cdrob`, `loginold`, `ts3id`, `freig`, `tanke`, `userakte`, `drogenskill`, `wblock`, `proxy`, `rpcounter`, `pIdent2`, `charstory`, `oockonto`, `givemoney`, `wstime`, `hbv`, `ptime`, `sc`, `back`, `pskin`, `firmenverwalter`, `maxaccs`, `maid`, `fgk`, `fgkt`, `dmkills`, `kau`, `jailedonline`, `aduty`, `fduty`, `srl`, `klingela`, `haus6`, `firma2`, `firma2id`, `eaccess`, `werbung`, `gpunkte`, `weste`, `tier`, `tname`, `UCP_einweisungen`) VALUES
(1, 'Testaccount', '02B433E9270ABCD628805C523113CD79806FC1266705404F1E12405497243942AD4A86B57253D4561197C41AABBE165EC1BCD16BC2319D539DD50034A55D2B1E', 6, 0, 1, 0, 0, 1, 170, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, -1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 0, -1, 0, 7, 0, 2, 0, 0, 6.233618, 0, 0, 'n/A', 'n/A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Test_Account', 1, 0, -1, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 850, 0, 1645394337, '87.122.215.154', 0, 11, 0, 0, 0, 0, 'N/A', 0, 0, -1, 0, 0, 0, 0, 0, 'Keinem', 4, 1, 20, 1887, -1, 0, 1, 0, 0, 0, 0, 'Keinem', 0, 0, 1, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 'N/A', -1, -1, -1, 0, 0, 'n/A', 0, '', '', '', 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 1, 1370.25, -1159.28, 23.8287, 124.224, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Test Account', 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, '', 0, 0, '', -1, -1, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 'TA-8573628-866', 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Unbekannt', 'Keine', 'Kein Eintrag', 0, 0, 'n/A', 0, 0, 2, 0, 1645896133, 'Unbekannt', 'Unbekannt', 'Unbekannt', 'Unbekannt', 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 100, 0, 0, 0, -1, 0, 'n/A', 0, 0, '50895C59FDD848D88E8C5F8455C94C894F9FCE8E', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, 0, '', '', 0, '0|0', 'n/A', 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, -1, 0, 0, 0, '', 0, 0, 0, 0, -1, 'n/A', -1, 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 12, 0, 1, 0, 0, 0, 0, 5, 1, 0, 0, 0, 0, 'n/A', -1, 0, 0, 0, 0, 0, 0, 20, '', 0, 0, 1647969733, 0, 0, 0, 0, '149-9573533-610', 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 2, -1, 0, 0, 0, 0, 0, 0, 0, 'n/A', 'n/A', -1, 'n/A', -1, '-1|-1|-1|-1|-1|0|0|0|0|0', 0, 0, 0, 0, 'Tier', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `accountsfirmenfahrzeuge`
--

CREATE TABLE `accountsfirmenfahrzeuge` (
  `fid` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `aid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `achievements`
--

CREATE TABLE `achievements` (
  `id` int(11) NOT NULL,
  `name` varchar(24) DEFAULT 'Errungenschaften',
  `firstspawn` int(2) DEFAULT NULL,
  `firstpayday` int(2) DEFAULT NULL,
  `krankenhaus` int(2) DEFAULT NULL,
  `helm` int(2) DEFAULT NULL,
  `konto` int(2) DEFAULT NULL,
  `ww` int(2) DEFAULT NULL,
  `bus` int(2) DEFAULT NULL,
  `laden` int(2) DEFAULT NULL,
  `foto` int(2) DEFAULT NULL,
  `damage1` int(2) DEFAULT NULL,
  `damage2` int(2) DEFAULT NULL,
  `damage3` int(2) DEFAULT NULL,
  `damage4` int(2) DEFAULT NULL,
  `damage5` int(2) DEFAULT NULL,
  `ehausboot` int(2) DEFAULT NULL,
  `edance` int(2) DEFAULT NULL,
  `ejob` int(2) DEFAULT NULL,
  `ebizz` int(2) DEFAULT NULL,
  `emord` int(2) DEFAULT NULL,
  `epaintball` int(2) DEFAULT NULL,
  `eminigun` int(2) DEFAULT NULL,
  `ederby` int(2) DEFAULT NULL,
  `ekart` int(2) DEFAULT NULL,
  `eauftrag` int(2) DEFAULT NULL,
  `eliebe` int(2) DEFAULT NULL,
  `echicken` int(2) DEFAULT NULL,
  `eessen` int(2) DEFAULT NULL,
  `ehaus` int(2) DEFAULT NULL,
  `etuning` int(2) DEFAULT NULL,
  `ebandana` int(2) DEFAULT NULL,
  `efahrzeug` int(2) DEFAULT NULL,
  `ekirche` int(2) DEFAULT NULL,
  `edrogen` int(2) DEFAULT NULL,
  `elegende` int(2) DEFAULT NULL,
  `esupport` int(2) DEFAULT NULL,
  `ebrand` int(2) DEFAULT NULL,
  `emp` int(2) DEFAULT NULL,
  `ehai` int(2) DEFAULT NULL,
  `eal` int(2) DEFAULT NULL,
  `ejoke` int(2) DEFAULT NULL,
  `eangeln` int(2) DEFAULT NULL,
  `erett` int(2) DEFAULT NULL,
  `equest2` int(2) DEFAULT NULL,
  `equest3` int(2) DEFAULT NULL,
  `equest4` int(2) DEFAULT NULL,
  `equest5` int(2) DEFAULT NULL,
  `equest6` int(2) DEFAULT NULL,
  `epenner` int(2) DEFAULT NULL,
  `ejail` int(2) DEFAULT NULL,
  `eblitz` int(2) DEFAULT NULL,
  `esteck` int(2) DEFAULT NULL,
  `equest7` int(2) DEFAULT NULL,
  `equest8` int(2) DEFAULT NULL,
  `equest9` int(2) DEFAULT NULL,
  `equest10` int(2) DEFAULT NULL,
  `enescar` int(2) DEFAULT NULL,
  `pid` int(11) DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `achievements`
--

INSERT INTO `achievements` (`id`, `name`, `firstspawn`, `firstpayday`, `krankenhaus`, `helm`, `konto`, `ww`, `bus`, `laden`, `foto`, `damage1`, `damage2`, `damage3`, `damage4`, `damage5`, `ehausboot`, `edance`, `ejob`, `ebizz`, `emord`, `epaintball`, `eminigun`, `ederby`, `ekart`, `eauftrag`, `eliebe`, `echicken`, `eessen`, `ehaus`, `etuning`, `ebandana`, `efahrzeug`, `ekirche`, `edrogen`, `elegende`, `esupport`, `ebrand`, `emp`, `ehai`, `eal`, `ejoke`, `eangeln`, `erett`, `equest2`, `equest3`, `equest4`, `equest5`, `equest6`, `epenner`, `ejail`, `eblitz`, `esteck`, `equest7`, `equest8`, `equest9`, `equest10`, `enescar`, `pid`) VALUES
(1, 'Errungenschaften', 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `actors`
--

CREATE TABLE `actors` (
  `id` int(11) NOT NULL,
  `aid` int(3) DEFAULT NULL,
  `skin` int(6) DEFAULT NULL,
  `x` double DEFAULT NULL,
  `y` double DEFAULT NULL,
  `z` double DEFAULT NULL,
  `a` double DEFAULT NULL,
  `animation1` varchar(30) DEFAULT NULL,
  `animation2` varchar(30) DEFAULT NULL,
  `vw` int(2) DEFAULT NULL,
  `event` int(2) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `actors`
--

INSERT INTO `actors` (`id`, `aid`, `skin`, `x`, `y`, `z`, `a`, `animation1`, `animation2`, `vw`, `event`) VALUES
(231, 185, 40, 1821.569091, -1399.693359, 13.485937, 178.715942, 'COP_AMBIENT', 'Coplook_loop', 5, 0),
(230, 184, 60, 1868.058959, -1368.557495, 13.510056, 198.284591, 'COP_AMBIENT', 'Coplook_loop', 0, 0),
(229, 184, 71, -1617.175781, 686.073547, 7.1875, 90.32624, 'COP_AMBIENT', 'Coplook_loop', 0, 0),
(12, 16, 21, 3314.702392, -618.733032, 6.861999, 46.35857, 'ped', 'SEAT_idle', 0, 0),
(13, 17, 85, 3292.416259, -603.100524, 6.861999, 182.973297, 'ped', 'SEAT_idle', 0, 0),
(14, 18, 105, 3263.689697, -591.309692, 6.895936, 96.22602, 'ped', 'SEAT_idle', 0, 0),
(15, 19, 2, 3256.390136, -599.979797, 6.895936, 4.731764, 'ped', 'SEAT_idle', 0, 0),
(16, 20, 5, 3290.950683, -568.326599, 6.893937, 359.742065, 'ped', 'SEAT_idle', 0, 0),
(17, 21, 33, 3328.487548, -575.049072, 6.893937, 267.017913, 'ped', 'SEAT_idle', 0, 0),
(18, 22, 95, 3331.455078, -586.349548, 6.893937, 271.4281, 'ped', 'SEAT_idle', 0, 0),
(19, 23, 131, 3337.305664, -571.33081, 6.893937, 270.151275, 'ped', 'SEAT_idle', 0, 0),
(21, 24, 66, 1030.055, -1963.4729, 12.986, 229.922, 'COP_AMBIENT', 'Coplook_loop', 0, 0),
(22, 25, 7, 1154.489257, -1460.602783, 15.798126, 89.508407, 'SMOKING', 'M_smklean_loop', 0, 0),
(170, 137, 69, 1162.081542, -1509.723022, 15.797996, 193.03366, 'INVALID', 'INVALID', 0, 0),
(169, 137, 247, 1170.595825, -1505.433837, 15.801111, 247.867431, 'COP_AMBIENT', 'Coplook_loop', 0, 0),
(168, 137, 147, 1094.910644, -1501.135009, 15.7981, 146.996215, 'PED', 'SEAT_idle', 0, 0),
(163, 137, 93, 1159.582763, -1468.796752, 15.801037, 287.806091, 'INVALID', 'INVALID', 0, 0),
(165, 137, 54, 1139.337524, -1435.586791, 15.796825, 292.42218, 'PED', 'IDLE_CHAT', 0, 0),
(195, 165, 59, 1168.380249, -1503.759277, 15.796825, 160.817092, 'INVALID', 'INVALID', 0, 0),
(196, 165, 219, 1163.764648, -1502.099731, 15.796825, 157.683349, 'INVALID', 'INVALID', 0, 0),
(171, 137, 234, 1147.209106, -1527.280517, 15.796825, 97.779365, 'COP_AMBIENT', 'Coplook_loop', 0, 0),
(172, 137, 240, 1148.872314, -1531.078857, 15.796825, 247.554092, 'INVALID', 'INVALID', 0, 0),
(33, 36, 103, 1096.395385, -1440.250244, 15.801124, 91.328056, 'COP_AMBIENT', 'Coplook_look', 0, 0),
(174, 137, 40, 1116.718872, -1529.106201, 15.8042, 68.928962, 'INVALID', 'INVALID', 0, 0),
(35, 38, 19, 487.4476, -2.259, 1002.3897, 180, 'SCRATCHING', 'scdldlp', 5, 0),
(164, 137, 88, 1140.439575, -1435.132202, 15.796825, 134.485977, 'PED', 'IDLE_CHAT', 0, 0),
(38, 41, 240, 501.7948, -20.1569, 1000.6717, 90, 'COP_AMBIENT', 'Coplook_loop', 5, 0),
(39, 42, 164, 490.4149, -23.8022, 1000.6255, -90, 'DEALER', 'DEALER_IDLE', 5, 0),
(41, 44, 217, 503.5911, -15.117, 1000.6717, 90, 'DEALER', 'DEALER_IDLE', 5, 0),
(42, 45, 211, 496.8829, -6.8123, 1000.6717, 180, 'DEALER', 'DEALER_IDLE', 5, 0),
(43, 46, 211, 480.009, -18.9045, 1000.6717, 0, 'DEALER', 'DEALER_IDLE_03', 5, 0),
(44, 47, 159, -375.729034, 2265.557861, 42.484375, 7.271382, 'SMOKING', 'M_smklean_loop', 0, 0),
(45, 49, 158, 56.987678, 775.232727, 31.060306, 305.156097, 'COP_AMBIENT', 'Coplook_loop', 0, 0),
(285, 222, 213, 1485.228759, -1724.462646, 6.740859, 167.747619, 'ped', 'SEAT_idle', 0, 0),
(49, 52, 2, -2621.494384, 2275.123291, 8.273714, 267.568023, 'DEALER', 'DEALER_IDLE', 0, 0),
(50, 53, 170, -2368.7854, -1960.059082, 302.409576, 250.988449, 'COP_AMBIENT', 'Coplook_loop', 0, 0),
(197, 166, 178, 1089.508178, -1456.361816, 15.806737, 268.04251, 'INVALID', 'INVALID', 0, 0),
(200, 166, 206, 1357.960327, -1706.748291, 1090.352539, 271.788208, 'ped', 'SEAT_idle', 1, 0),
(268, 210, 9, -1165.485473, 531.11267, 974.321228, 357.629425, 'PED', 'IDLE_CHAT', 1, 0),
(269, 210, 266, -1166.510742, 551.671875, 974.321228, 217.591415, 'COP_AMBIENT', 'Coplook_loop', 1, 0),
(448, 334, 264, 2282.982666, -77.100906, 26.494598, 82.487319, 'INVALID', 'INVALID', 0, 2),
(173, 137, 98, 1144.473022, -1532.329223, 15.796825, 359.07846, 'INVALID', 'INVALID', 0, 0),
(199, 166, 194, 1341.087036, -1710.591308, 1090.324462, 0, 'INVALID', 'INVALID', 1, 0),
(60, 63, 6, 236.974914, 623.855651, 2006.418457, 216.474334, 'COP_AMBIENT', 'Coplook_loop', 2, 0),
(61, 64, 264, 3293.975585, -642.924438, 6.893937, 180.511291, 'COP_AMBIENT', 'Coplook_loop', 0, 0),
(62, 65, 13, 3252.359375, -592.273376, 6.944873, 269.274017, 'DANCING', 'dance_loop', 0, 0),
(66, 67, 168, 1507.639, -1746.242, 13.545, 315.798, 'COP_AMBIENT', 'Coplook_loop', 0, 0),
(67, 68, 168, 770.819702, -1599.832763, 13.535507, 179.707916, 'COP_AMBIENT', 'Coplook_loop', 0, 0),
(68, 69, 168, 3281.505615, -580.295837, 7.171992, 178.821807, 'COP_AMBIENT', 'Coplook_loop', 0, 0),
(69, 70, 10, 3321.591064, -606.147399, 6.861999, 179.424942, 'COP_AMBIENT', 'Coplook_loop', 0, 0),
(70, 71, 26, 3249.262939, -602.038635, 6.861999, 358.676635, 'COP_AMBIENT', 'Coplook_loop', 0, 0),
(72, 72, 141, 2498.312988, 912.86499, 10.683536, 268.630767, 'COP_AMBIENT', 'Coplook_loop', 0, 0),
(243, 193, 50, 1002.306945, -1082.919067, 23.828125, 161.395034, 'COP_AMBIENT', 'Coplook_loop', 0, 0),
(74, 74, 76, 1564.251098, -1684.558227, 1723.116333, 95.228576, 'ped', 'SEAT_idle', 2, 0),
(75, 75, 132, 529, -1805.558, 6.5781, 359.3279, 'COP_AMBIENT', 'Coplook_loop', 0, 0),
(76, 76, 12, 577.395141, 1678.727172, 2007.057861, 265.655578, 'ped', 'SEAT_idle', 0, 0),
(77, 77, 85, 587.777526, 1678.783813, 2007.057861, 88.933982, 'ped', 'SEAT_idle', 0, 0),
(78, 78, 22, 579.363037, 1678.762695, 2007.057861, 86.787368, 'ped', 'SEAT_idle', 0, 0),
(79, 79, 259, 365.3997, -1546.9858, 32.9989, 288.1115, 'COP_AMBIENT', 'Coplook_loop', 0, 0),
(80, 80, 22, 1483.326782, -999.54663, 27.585937, 89.258331, 'ped', 'SEAT_idle', 2, 0),
(81, 81, 95, 1459.185302, -1003.182922, 26.841999, 266.269897, 'ped', 'SEAT_idle', 2, 0),
(82, 82, 105, 1466.835937, -1002.448303, 26.841999, 87.691619, 'ped', 'SEAT_idle', 2, 0),
(83, 83, 305, 1455.472167, -1003.45697, 27.585937, 2.357088, 'ped', 'SEAT_idle', 2, 0),
(84, 84, 295, 1484.488159, -993.052307, 27.606838, 55.91434, 'ped', 'SEAT_idle', 2, 0),
(85, 85, 150, 1482.65979, -992.643249, 27.606838, 271.466491, 'ped', 'SEAT_idle', 2, 0),
(86, 86, 300, 1470.229125, -1001.81372, 27.585937, 266.284698, 'ped', 'SEAT_idle', 2, 0),
(87, 87, 11, 1480.195312, -1007.423767, 27.596837, 315.544891, 'ped', 'SEAT_idle', 2, 0),
(88, 88, 71, 1435.667968, -995.932189, 27.599884, 176.866043, 'ped', 'SEAT_idle', 2, 0),
(89, 89, 280, 789.643615, -1574.303466, 1224.772094, 86.589096, 'COP_AMBIENT', 'Coplook_loop', 6, 0),
(90, 90, 307, 790.861877, -1559.772583, 1224.772094, 359.505828, 'COP_AMBIENT', 'Coplook_loop', 6, 0),
(91, 91, 305, 777.028747, -1564.293212, 1224.772094, 119.223068, 'ped', 'SEAT_idle', 6, 0),
(92, 92, 304, 784.774169, -1565.89978, 1258.111694, 354.201934, 'ped', 'SEAT_idle', 5, 0),
(352, 274, 205, 1864.939575, -1744.487304, 1709.686035, 89.735832, 'INVALID', 'INVALID', 2, 0),
(94, 94, 259, 1295.678588, -1251.070434, 13.184375, 137.61267, 'ped', 'SEAT_idle', 0, 0),
(95, 95, 231, 1272.431762, -1241.354248, 13.184375, 310.406097, 'ped', 'SEAT_idle', 0, 0),
(353, 274, 307, 1857.310668, -1701.662597, 1702.595703, 137.003143, 'COP_AMBIENT', 'Coplook_loop', 2, 0),
(98, 98, 22, 1858.79663, -1709.717041, 1702.585937, 267.589447, 'ped', 'SEAT_idle', 2, 0),
(102, 99, 33, 1784.799, -1596.846, 13.511, 284.203, 'COP_AMBIENT', 'Coplook_loop', 0, 0),
(103, 100, 97, 154.042, -1957.212, 3.773, 180.734, 'COP_AMBIENT', 'Coplook_loop', 0, 0),
(104, 100, 12, 1333.263916, -1047.383911, 3359.895996, 177.198501, 'ped', 'SEAT_idle', 0, 0),
(105, 100, 35, 1329.116821, -1049.93872, 3359.895996, 84.787757, 'ped', 'SEAT_idle', 0, 0),
(106, 100, 53, 1333.877685, -1061.1427, 3359.788984, 272.476257, 'COP_AMBIENT', 'Coplook_loop', 0, 0),
(107, 104, 25, 851.992065, -1756.11206, 22.067287, 87.621162, 'ped', 'SEAT_idle', 0, 0),
(247, 190, 1, 1673.69812, -1735.453247, 13.382812, 355.377624, 'SWORD', 'sword_block', 1, 0),
(248, 194, 308, -961.787414, 1893.533447, 1152.363403, 178.802368, 'GANGS', 'prtial_gngtlkA', 1, 0),
(111, 104, 55, 871.658081, -1761.495239, 13.546875, 181.042297, 'COP_AMBIENT', 'Coplook_loop', 0, 0),
(112, 104, 81, 850.162109, -1759.016723, 22.067287, 178.872375, 'COP_AMBIENT', 'Coplook_loop', 0, 0),
(113, 110, 240, 773.163208, -1613.660888, 13.483037, 228.404586, 'PED', 'SEAT_idle', 0, 0),
(114, 110, 91, 2507.452636, 905.083068, 10.674136, 357.402557, 'PED', 'SEAT_idle', 0, 0),
(115, 110, 221, 2517.0625, 907.016662, 10.674136, 171.327667, 'COP_AMBIENT', 'Coplook_loop', 0, 0),
(116, 113, 270, 2521.644287, -1478.645263, 23.992088, 269.211517, 'GRAFFITI', 'spraycan_fire', 0, 0),
(117, 113, 271, 2518.891113, -1492.325439, 23.986635, 178.344009, 'GRAFFITI', 'graffiti_Chkout', 0, 0),
(118, 115, 94, 1438.00061, -1042.804931, 23.828125, 359.810241, 'COP_AMBIENT', 'Coplook_loop', 0, 0),
(356, 269, 21, -1843.101196, -2029.922485, 938.505065, 25.0748, 'INVALID', 'INVALID', 6, 0),
(374, 285, 198, 562.501037, -1809.921752, 6.148437, 358.006591, 'INVALID', 'INVALID', 0, 0),
(355, 269, 8, 2730.144531, -2453.193847, 17.593746, 300.039306, 'INVALID', 'INVALID', 0, 0),
(354, 274, 153, 1478.231933, -1757.662719, 13.541337, 267.616455, '596', 'LEANOUT', 0, 4),
(124, 115, 184, 2829.475585, -1067.092773, 23.459129, 267.374755, 'COP_AMBIENT', 'Coplook_loop', 0, 0),
(126, 123, 41, -376.806304, 1631.20581, 999.296875, 0.28393, 'ped', 'SEAT_idle', 2, 0),
(127, 123, 73, -375.90332, 1637.119995, 999.296875, 0.115349, 'COP_AMBIENT', 'Coplook_loop', 2, 0),
(311, 247, 51, 1808.858764, -1908.812622, 13.571674, 90.198768, 'COP_AMBIENT', 'Coplook_loop', 0, 0),
(313, 247, 75, 1791.841796, -1917.92749, 13.536537, 245.590255, 'PED', 'IDLE_CHAT', 0, 0),
(312, 247, 33, 1793.571044, -1918.691284, 13.536537, 65.421813, 'PED', 'IDLE_CHAT', 0, 0),
(131, 125, 22, 1751.783569, -1898.408081, 13.557577, 266.091583, 'SMOKING', 'M_smklean_loop', 0, 0),
(167, 137, 96, 1134.532592, -1506.716796, 15.792852, 183.946395, 'PED', 'SEAT_idle', 0, 0),
(133, 130, 309, 1732.877441, 543.749694, 26.872814, 251.127487, 'COP_AMBIENT', 'Coplook_loop', 0, 0),
(134, 130, 302, 1743.020751, 498.178985, 29.095367, 68.475769, 'COP_AMBIENT', 'Coplook_loop', 0, 0),
(135, 130, 187, 2655.807128, 1273.902221, 10.843937, 0.471883, 'Invalid', 'Invalid', 0, 0),
(136, 130, 12, 2657.686523, 1280.581787, 10.843934, 48.099006, 'COP_AMBIENT', 'Coplook_loop', 0, 0),
(137, 130, 22, 2652.306152, 1291.082275, 14.503943, 183.726776, 'PED', 'SEAT_idle', 0, 0),
(138, 130, 20, 2651.606933, 1289.282348, 14.503945, 273.340911, 'PED', 'SEAT_idle', 0, 0),
(141, 137, 55, -2093.023925, 91.33583, 35.320312, 353.28897, 'PED', 'SEAT_idle', 0, 0),
(140, 136, 148, 2314.510986, -16.662239, 26.749565, 178.357757, 'COP_AMBIENT', 'Coplook_loop', 1, 0),
(142, 137, 93, -2083.413818, 74.161422, 35.799266, 269.964782, 'invalid', 'invalid', 0, 0),
(143, 137, 147, -2089.13208, 82.994338, 35.799266, 253.044616, 'PED', 'SEAT_idle', 0, 0),
(144, 137, 169, -2089.405029, 75.597595, 39.640037, 181.604019, 'PED', 'SEAT_idle', 0, 0),
(145, 137, 170, -2093.268798, 89.879264, 39.640037, 2.71231, 'COP_AMBIENT', 'Coplook_loop', 0, 0),
(146, 142, 240, -392.096191, 1473.88269, 2079.410644, 359.089141, 'INVALID', 'INVALID', 2, 0),
(147, 143, 194, 2328.75708, 8.124359, 26.52548, 180.794754, 'Invalid', 'Invalid', 0, 0),
(244, 190, 1, 2377.866943, -1311.283935, 24, 47.868587, 'PYTHON', 'python_reload', 1, 0),
(245, 190, 1, 2377.396972, -1310.102539, 24, 317.86856, 'MUSCULAR', 'MUSCLEIDLE_ARMED', 1, 0),
(246, 190, 1, 2375.284179, -1310.73291, 23.829767, 166.213745, 'POLICE', 'Cop_move_FWD', 1, 0),
(151, 146, 24, 1607.128051, 707.613037, 10.820312, 48.137454, 'COP_AMBIENT', 'Coplook_loop', 0, 0),
(181, 137, 252, 1174.600708, -1422.323364, 15.221847, 229.54039, 'PAULNMAC', 'wank_loop', 0, 0),
(180, 137, 249, 1092.305541, -1459.073242, 15.806737, 179.819763, 'DEALER', 'DEALER_IDLE', 0, 0),
(179, 137, 243, 1094.604248, -1450.190429, 15.804637, 1.49174, 'INVALID', 'INVALID', 0, 0),
(178, 137, 135, 1096.650146, -1456.871948, 15.806737, 1.851711, 'COP_AMBIENT', 'Coplook_loop', 0, 0),
(177, 137, 127, 1089.933715, -1505.39685, 15.7981, 137.526229, 'DEALER', 'DEALER_IDLE', 0, 0),
(176, 137, 193, 1089.335937, -1505.908569, 15.7981, 126.559425, 'INVALID', 'INVALID', 0, 0),
(175, 137, 93, 1111.003295, -1524.632324, 15.8042, 214.630355, 'INVALID', 'INVALID', 0, 0),
(162, 148, 91, 204.248428, -157.830047, 1000.523437, 179.148651, 'INVALID', 'INVALID', 1, 0),
(182, 137, 97, 1102.62622, -1448.915527, 15.796825, 255.883789, 'GANGS', 'leanIDLE', 0, 0),
(183, 137, 59, 1095.329956, -1487.66101, 15.796825, 142.769363, 'PED', 'IDLE_CHAT', 0, 0),
(184, 137, 56, 1094.586669, -1488.600219, 15.773916, 321.371093, 'PED', 'IDLE_CHAT', 0, 0),
(185, 137, 101, 1166.792236, -1478.341674, 15.801037, 162.172897, 'INVALID', 'INVALID', 0, 0),
(186, 137, 192, 1166.316772, -1467.922607, 15.801037, 18.351564, 'COP_AMBIENT', 'Coplook_loop', 0, 0),
(187, 137, 221, 1138.604248, -1494.918212, 22.757762, 0.055952, 'PED', 'SEAT_idle', 0, 0),
(188, 137, 241, 1120.32727, -1483.843627, 22.762229, 181.478042, 'PED', 'SEAT_idle', 0, 0),
(189, 137, 250, 1101.386962, -1512.121093, 22.761466, 286.759033, 'COP_AMBIENT', 'Coplook_loop', 0, 0),
(190, 137, 215, 1166.484985, -1527.888305, 22.745019, 49.495796, 'INVALID', 'INVALID', 0, 0),
(191, 137, 186, 1135.207763, -1549.810791, 22.760414, 90.229537, 'PED', 'SEAT_idle', 0, 0),
(192, 137, 205, 1101.022827, -1446.431518, 22.7618, 88.686187, 'SMOKING', 'M_smklean_loop', 0, 0),
(193, 137, 188, 1117.368896, -1424.002441, 22.757762, 329.955169, 'INVALID', 'INVALID', 0, 0),
(194, 137, 170, 1118.141235, -1424.151855, 22.757762, 359.095397, 'DEALER', 'DEALER_IDLE', 0, 0),
(198, 166, 178, 1175.125976, -1422.808471, 15.212606, 47.276786, 'BEACH', 'bather', 0, 0),
(201, 166, 224, 1340.551391, -1705.801025, 1090.324462, 141.585311, 'COP_AMBIENT', 'Coplook_loop', 1, 0),
(202, 166, 240, 1335.816772, -1700.4552, 1090.324462, 226.546173, 'COP_AMBIENT', 'Coplook_loop', 1, 0),
(203, 166, 259, 1338.076782, -1700.665405, 803.235961, 89.403213, 'ped', 'SEAT_idle', 1, 0),
(204, 166, 188, 1345.348876, -1707.587524, 804.11444, 94.898185, 'ped', 'SEAT_idle', 1, 0),
(205, 166, 191, 1345.313842, -1708.910522, 804.11444, 88.486465, 'ped', 'SEAT_idle', 1, 0),
(206, 166, 211, 1345.346801, -1710.315673, 804.11444, 88.944732, 'ped', 'SEAT_idle', 1, 0),
(207, 166, 270, 1333.004516, -1704.767944, 802.635253, 88.14952, 'ped', 'SEAT_idle', 1, 0),
(208, 166, 298, 1350.734619, -1697.827148, 804.766662, 94.294639, 'ped', 'SEAT_idle', 1, 0),
(209, 176, 80, 768.281127, -78.216789, 1000.65625, 358.396972, 'ped', 'SEAT_idle', 5, 0),
(213, 176, 293, 762.295288, -62.756271, 1000.65625, 307.131378, 'COP_AMBIENT', 'Coplook_loop', 5, 0),
(214, 179, 67, 1373.496093, -1753.316894, 13.607237, 89.580635, 'ped', 'SEAT_idle', 0, 0),
(212, 176, 81, 773.939147, -63.270881, 1000.718383, 22.982109, 'FIGHT_B', 'FightB_1', 5, 0),
(215, 179, 122, 1375.953857, -1809.823486, 13.568231, 54.68283, 'COP_AMBIENT', 'Coplook_loop', 0, 0),
(216, 179, 24, 1349.059326, -1814.057495, 13.669439, 264.665344, 'SMOKING', 'M_smklean_loop', 0, 0),
(233, 187, 112, 1015.028808, -1299.160278, 13.546875, 84.826667, 'SMOKING', 'M_smklean_loop', 0, 0),
(232, 186, 168, 1829.5979, -1402.534667, 13.429687, 354.687011, 'SMOKING', 'M_smklean_loop', 0, 0),
(228, 182, 23, 652.316711, 2.085355, 2004.998168, 89.906127, 'PAULNMAC', 'Piss_loop', 2, 0),
(227, 182, 286, 660.972839, -6.411769, 2004.817016, 67.996047, 'COP_AMBIENT', 'Coplook_loop', 2, 0),
(226, 182, 225, 660.887939, -9.067365, 2004.817016, 269.27951, 'ped', 'SEAT_idle', 2, 0),
(225, 182, 78, 670.138122, -6.240999, 2004.857055, 85.687866, 'ped', 'SEAT_idle', 2, 0),
(224, 182, 17, 666.69049, 11.833184, 2004.857055, 177.327026, 'PED', 'IDLE_CHAT', 2, 0),
(234, 187, 240, 1541.403076, 1337.637084, 2366.81665, 90.733406, 'PED', 'IDLE_CHAT', 1, 0),
(235, 187, 240, 1529.676635, 1335.357543, 2366.81665, 262.731781, 'INVALID', 'INVALID', 0, 0),
(236, 187, 175, 1539.013793, 1339.124389, 2366.81665, 268.575195, 'ped', 'SEAT_idle', 1, 0),
(237, 191, 3, 1191.080688, -1815.840332, 13.580921, 88.512939, 'INVALIV', 'INVALID', 0, 0),
(238, 192, 307, 884.2768, 17.3835, 2420.4358, 358.1703, 'PED', 'IDLE_CHAT', 5, 0),
(418, 323, 45, 310.43811, -1889.764526, 1.77569, 176.787399, 'BEACH', 'SitnWait_loop_W', 3, 0),
(419, 323, 138, 308.891113, -1889.7135, 1.771829, 176.474075, 'BEACH', 'SitnWait_loop_W', 3, 0),
(241, 195, 93, 841.748901, -1748.791137, 22.100669, 265.271087, 'COP_AMBIENT', 'Coplook_loop', 0, 0),
(242, 195, 45, 840.859191, -1754.981689, 22.100669, 0.768467, 'ped', 'SEAT_idle', 0, 0),
(249, 194, 12, -959.089416, 1880.573364, 1152.384887, 355.813995, 'ped', 'SEAT_idle', 1, 0),
(250, 194, 44, 1763.244506, -1132.101318, 24.110837, 85.862991, 'ped', 'SEAT_idle', 0, 0),
(387, 296, 133, -78.380088, -1547.272827, 2.61072, 224.008453, 'INVALID', 'INVALID', 0, 0),
(252, 194, 208, 1759.007812, -1098.814941, 24.108938, 328.530212, 'ped', 'SEAT_idle', 0, 0),
(253, 194, 20, 1704.628295, -1117.544677, 24.09535, 238.120895, 'SMOKING', 'M_smklean_loop', 0, 0),
(254, 200, 187, 1536.955932, -2315.046386, 13.548937, 177.281494, 'ped', 'SEAT_idle', 0, 0),
(255, 201, 308, 2672.182861, -1944.08435, 13.558837, 182.395477, 'ped', 'SEAT_idle', 0, 0),
(256, 201, 195, 2729.593261, -1978.168457, 13.549722, 54.409317, 'SMOKING', 'M_smklean_loop', 0, 0),
(257, 203, 251, 1767.628051, -2790.262695, 1.825637, 269.341766, 'INVALID', 'INVALID', 2, 0),
(258, 203, 240, 1819.491699, -2782.687255, 1.823737, 177.870986, 'INVALID', 'INVALID', 2, 0),
(265, 209, 71, 1719.49768, 2280.535644, 10.820312, 218.722793, 'COP_AMBIENT', 'Coplook_loop', 0, 0),
(260, 203, 252, 1837.720581, -2808.727539, 12.211237, 251.261779, 'COP_AMBIENT', 'Coplook_loop', 2, 0),
(264, 208, 217, 2825.877, 2016.482, 2175.314, 180, 'INVALID', 'INVALID', 609, 0),
(262, 203, 71, 1497.661865, -2437.97705, 1909.857788, 227.401519, 'COP_AMBIENT', 'Coplook_loop', 2, 0),
(263, 203, 240, 1499.037719, -2455.714599, 1909.857788, 108.333763, 'COP_AMBIENT', 'Coplook_loop', 2, 0),
(266, 209, 71, 1573.990722, 2341.255371, 10.820312, 126.253082, 'COP_AMBIENT', 'Coplook_loop', 0, 0),
(267, 209, 71, 1598.964233, 2279.736572, 10.820312, 217.747375, 'COP_AMBIENT', 'Coplook_loop', 0, 0),
(270, 210, 40, -1173.961303, 539.373291, 974.321228, 267.24353, 'ped', 'SEAT_idle', 1, 0),
(271, 210, 186, -1160.561035, 541.026245, 974.321228, 179.364486, 'ped', 'SEAT_idle', 1, 0),
(272, 210, 5, -1154.213378, 536.325805, 974.321228, 88.978652, 'ped', 'SEAT_idle', 1, 0),
(273, 210, 31, -1161.4281, 514.099853, 974.321228, 0.351102, 'ped', 'SEAT_idle', 1, 0),
(274, 216, 308, -1043.604003, 1882.950195, 2000.186889, 359.800201, 'PED', 'IDLE_CHAT', 1, 0),
(357, 271, 150, 2846.547851, 2885.877197, 320.161987, 180.958801, 'PED', 'IDLE_CHAT', 1, 0),
(276, 218, 50, 777.460571, -1026.937133, 0.478037, 179.476974, 'INVALID', 'INVALID', 662, 0),
(277, 219, 150, 1790.822875, -1375.01184, 15.736437, 267.069, 'PED', 'IDLE_CHAT', 9, 0),
(278, 219, 155, 1801.215209, -1360.692871, 15.756137, 85.067268, 'INVALID', 'INVALID', 9, 0),
(279, 219, 190, 1801.495849, -1386.2229, 20.201038, 86.77922, 'ped', 'SEAT_idle', 9, 0),
(280, 219, 7, 1804.264038, -1398.939453, 20.181037, 94.636039, 'ped', 'SEAT_idle', 9, 0),
(284, 224, 196, -919.3906, 762.27, 1277.6757, 2.5898, 'COP_AMBIENT', 'Coplook_loop', 2, 0),
(283, 223, 66, -2403.249511, -2206.295166, 33.289062, 292.545013, 'INVALID', 'INVALID', 0, 0),
(439, 323, 260, 2194.166503, 87.243598, 24.15401, 95.262519, 'COP_AMBIENT', 'Coplook_loop', 0, 0),
(438, 323, 100, 2332.285644, 12.784043, 26.476568, 175.308517, 'SMOKING', 'M_smklean_loop', 0, 0),
(437, 323, 78, 2283.995361, -50.309429, 26.484375, 265.596069, 'BEACH', 'ParkSit_M_loop', 0, 0),
(436, 323, 115, 2300.353, 48.4414, 26.4844, 303.102, 'COP_AMBIENT', 'Coplook_loop', 0, 0),
(435, 323, 85, 2203.17041, 51.058925, 26.484375, 174.63031, 'SMOKING', 'M_smklean_loop', 0, 0),
(434, 323, 20, 2311.101074, 84.336784, 26.480024, 245.15422, 'PED', 'IDLE_CHAT', 0, 0),
(433, 323, 22, 2313.480712, 83.392745, 26.480606, 69.395965, 'PED', 'IDLE_CHAT', 0, 0),
(432, 317, 170, 1140.981, -1439.26, 15.79, 85.602, 'INVALID', 'INVALID', 0, 1),
(431, 331, 136, 1141.005981, -1450.381713, 15.796825, 89.408996, 'INVALID', 'INVALID', 0, 1),
(430, 331, 122, 1140.975952, -1462.075439, 15.796825, 89.095672, 'INVALID', 'INVALID', 0, 1),
(429, 331, 53, 1116.838989, -1462.139526, 15.796825, 269.890686, 'INVALID', 'INVALID', 0, 1),
(428, 331, 34, 1116.837402, -1451.673095, 15.796825, 269.890716, 'COP_AMBIENT', 'Coplook_loop', 0, 1),
(427, 331, 9, 1116.839355, -1439.373779, 15.796825, 264.877227, 'COP_AMBIENT', 'Coplook_loop', 0, 1),
(301, 237, 205, 797.144, -1633.808, 13.655, 359.259, 'INVALID', 'INVALID', 0, 0),
(302, 237, 201, 1192.485595, -881.096618, 42.932838, 96.011947, 'COP_AMBIENT', 'Coplook_loop', 6, 0),
(303, 237, 209, 1197.771362, -877.461242, 42.932838, 6.10769, 'PED', 'IDLE_CHAT', 6, 0),
(304, 237, 4, 1199.6604, -879.300476, 42.932838, 277.746917, 'COP_AMBIENT', 'Coplook_loop', 6, 0),
(305, 241, 5, 1191.47937, -890.020751, 42.876007, 188.082839, 'ped', 'SEAT_idle', 0, 0),
(306, 243, 24, 282.337097, -1821.770141, 4.057591, 254.961853, 'SMOKING', 'M_smklean_loop', 2, 0),
(308, 244, 151, 183.9561, 2492.604248, 16.53865, 180.506301, 'INVALID', 'INVALID', 5, 0),
(309, 244, 33, 185.343017, 2486.531005, 16.53865, 269.854034, 'ped', 'SEAT_idle', 5, 0),
(310, 246, 24, 216.100112, 21.201229, 2.578125, 300.165252, 'COP_AMBIENT', 'Coplook_loop', 0, 0),
(314, 247, 131, 1772.318847, -1928.796752, 13.553097, 292.254119, 'COP_AMBIENT', 'Coplook_loop', 0, 0),
(358, 271, 29, 1707.162963, -1461.339843, 13.546875, 91.948295, 'GRAFFITI', 'spraycan_fire', 2, 0),
(351, 271, 138, 661.062805, -1869.593994, 5.553671, 87.691154, 'MUSCULAR', 'MuscleIdle_Csaw', 0, 0),
(350, 271, 15, 662.421081, -1874.631103, 5.460937, 220.522384, 'MUSCULAR', 'MuscleIdle', 0, 0),
(319, 252, 141, 596.163208, -1544.382934, 16.155448, 269.825775, 'INVALID', 'INVALID', 4, 0),
(320, 252, 55, 603.235839, -1547.43811, 16.155448, 208.893554, 'ped', 'SEAT_idle', 4, 0),
(321, 252, 33, 609.669555, -1549.230224, 16.155448, 213.448608, 'COP_AMBIENT', 'Coplook_loop', 4, 0),
(322, 255, 260, 2271.895507, -2896.722656, 13.876837, 357.331787, 'ped', 'SEAT_idle', 0, 0),
(323, 255, 133, 2261.802246, -2895.65625, 13.876037, 55.490692, 'ped', 'SEAT_idle', 0, 0),
(324, 255, 41, 2257.998291, -2886.248046, 13.866037, 88.536018, 'COP_AMBIENT', 'Coplook_loop', 0, 0),
(325, 258, 91, 1724.393798, -1918.929931, 1432.26538, 266.33551, 'COP_AMBIENT', 'Coplook_loop', 5, 0),
(326, 258, 93, 1724.356445, -1901.681274, 1432.26538, 268.215576, 'COP_AMBIENT', 'Coplook_loop', 5, 0),
(327, 258, 21, 1731.458984, -1913.781005, 1432.279296, 87.58876, 'ped', 'SEAT_idle', 5, 0),
(328, 258, 121, 1711.904052, -1902.842407, 1432.279296, 268.673706, 'ped', 'SEAT_idle', 5, 0),
(329, 258, 201, 1729.486083, -1929.756958, 1432.26538, 140.687515, 'COP_AMBIENT', 'Coplook_loop', 5, 0),
(330, 258, 168, 1711.478149, -1892.994506, 1432.279296, 246.258361, 'COP_AMBIENT', 'Coplook_loop', 5, 0),
(336, 265, 3, 391.13, -1755.06, 8.22, 177.73, 'INVALID', 'INVALID', 0, 0),
(337, 266, 20, 731.652648, -1803.03186, 19.419837, 303.799316, 'COP_AMBIENT', 'Coplook_loop', 100, 0),
(335, 265, 113, 1000.211853, -1858.36267, 12.814621, 304.375, 'INVALID', 'INVALID', 0, 3),
(340, 268, 189, 1321.473022, -1049.050659, 3359.710937, 178.092163, 'INVALID', 'INVALID', 0, 0),
(339, 264, 240, 1790.125, -1297.282592, 103.898437, 157.032913, 'INVALID', 'INVALID', 0, 0),
(341, 269, 240, 2588.158935, -1323.738525, 1613.275146, 270.963348, 'INVALID', 'INVALID', 5, 0),
(342, 269, 38, 2610.217773, -1318.149658, 1614.689208, 91.735031, 'INVALID', 'INVALID', 5, 0),
(343, 269, 33, 2602.333984, -1332.643432, 1614.689208, 16.534351, 'INVALID', 'INVALID', 5, 0),
(344, 271, 21080, 1139.721, -1466.319, 15.767, 26.9696, 'ON_LOOKERS', 'wave_loop', 0, 4),
(345, 272, 21095, 2803.266357, -2360.944335, 13.629883, 128.38504, 'INVALID', 'INVALID', 0, 0),
(348, 270, 21022, 2157.661621, -1984.31018, 13.686099, 37.718006, 'INVALID', 'INVALID', 0, 0),
(349, 271, 18, 668.873901, -1867.21643, 5.45372, 91.404411, 'MUSCULAR', 'MuscleIdle', 0, 0),
(367, 280, 311, -1698.093139, 2609.250244, 1235.631958, 266.566528, 'PED', 'IDLE_CHAT', 2, 0),
(368, 280, 308, -1706.592041, 2600.926513, 1228.589843, 266.874084, 'INVALID', 'INVALID', 2, 0),
(361, 271, 4, 209.64183, -1433.365112, 21.2, 77.497833, 'HEIST9', 'swt_wllshoot_in_R', 0, 0),
(362, 271, 193, 769.3656, -1617.976196, 13.382812, 338.193786, 'INVALID', 'INVALID', 0, 0),
(363, 272, 203, 1457.589, -1781.494, 13.543, 342.478, 'PARK', 'Tai_Chi_Loop', 3, 0),
(364, 273, 204, 1458.614, -1779.343, 13.543, 153.873, 'PARK', 'Tai_Chi_Loop', 3, 0),
(365, 279, 9, 1024.885131, 222.197921, 1151.564941, 357.056365, 'INVALID', 'INVALID', 5, 0),
(366, 280, 309, -1718.153686, 2609.994384, 1235.631958, 126.57518, 'COP_AMBIENT', 'Coplook_loop', 2, 0),
(369, 281, 23, 397.503417, -1755.067626, 8.22442, 177.13507, 'INVALID', 'INVALID', 0, 0),
(370, 281, 264, 358.243347, -2032.071655, 7.835937, 271.135925, 'INVALID', 'INVALID', 0, 0),
(371, 281, 264, 577.295104, -1822.996826, 6.0625, 177.425109, 'INVALID', 'INVALID', 0, 0),
(372, 281, 168, 562.980346, -1822.48767, 6.0625, 180.871337, 'INVALID', 'INVALID', 0, 0),
(373, 281, 168, 388.759399, -2070.651367, 7.835937, 179.618453, 'INVALID', 'INVALID', 0, 0),
(375, 285, 97, 498.32199, -1875.650634, 4.67697, 181.729293, 'DEALER', 'DEALER_IDLE', 0, 0),
(376, 285, 251, 609.314331, -1875.65039, 5.77072, 182.074249, 'invalid', 'invalid', 0, 0),
(377, 288, 44, 115.990493, 1110.721679, 13.609375, 205.220199, 'INVALID', 'INVALID', 0, 0),
(378, 288, 71, 148.34346, 1104.893798, 14.021786, 178.586669, 'COP_AMBIENT', 'Coplook_loop', 0, 0),
(384, 294, 50, 1333.745483, -1182.984008, 6.315937, 57.393634, 'COP_AMBIENT', 'Coplook_loop', 1, 0),
(450, 331, 1, 2203.004882, 41.601688, 2205.589111, 177.791488, 'INVALID', 'INVALID', 5, 0),
(452, 332, 50, 1474.342407, -1874.910888, 4.63705, 30.960809, 'INVALID', 'INVALID', 0, 0),
(383, 294, 185, -23.530387, -57.318077, 1003.546875, 355.520385, 'INVALID', 'INVALID', 185, 0),
(385, 295, 21037, 1111.114746, -1411.77539, 13.592111, 130.604858, 'PED', 'IDLE_CHAT', 0, 0),
(386, 295, 269, 1109.902099, -1412.902954, 13.582484, 311.399963, 'PED', 'IDLE_CHAT', 0, 0),
(388, 297, 150, 1462.752807, -982.249572, 27.585937, 178.582382, 'INVALID', 'INVALID', 2, 0),
(389, 297, 178, 2392.019287, -1251.105712, 23.89125, 150.985336, 'INVALID', 'INVALID', 0, 0),
(390, 297, 75, 2430.722656, -1251.110839, 23.921249, 159.421951, 'INVALID', 'INVALID', 0, 0),
(391, 300, 113, 2372.636718, -1122.41687, 1050.875, 174.986709, 'COP_AMBIENT', 'Coplook_loop', 1, 0),
(392, 300, 133, -114.077026, -1572.795043, 2.617187, 83.492515, 'PAULNMAC', 'Piss_loop', 1, 0),
(393, 300, 133, -90.388191, -1592.973754, 3.004307, 28.658601, 'PED', 'IDLE_chat', 2, 0),
(394, 300, 113, 2372.636718, -1122.41687, 1050.875, 174.986709, 'COP_AMBIENT', 'Coplook_loop', 2, 0),
(395, 300, 33, 543.214355, -2437.660644, 1198.240966, 357.301666, 'PED', 'IDLE_TIRED', 0, 0),
(396, 300, 33, -1827.029052, 18.316478, 1061.143554, 180.094863, 'INVALID', 'INVALID', 0, 0),
(397, 306, 302, -1311.558105, 931.703247, 45.942222, 226.745819, 'Invalid', 'Invalid', 0, 0),
(398, 306, 309, -1320.812011, 897.079833, 46.411231, 47.284038, 'Invalid', 'Invalid', 0, 0),
(399, 306, 309, -2251.040283, 2677.319091, 54.95507, 183.016433, 'Invalid', 'Invalid', 0, 0),
(400, 306, 302, -2283.604492, 2639.786376, 55.429687, 3.498159, 'Invalid', 'Invalid', 0, 0),
(401, 310, 219, 1162.062622, -1476.457275, 15.801037, 288.701782, 'INVALID', 'INVALID', 0, 0),
(402, 310, 72, 1470.495361, -1787.123779, 14.6126, 334.448913, 'PED', 'IDLE_chat', 0, 0),
(403, 310, 72, 1121.882934, -1485.603027, 16.375528, 53.409637, 'PED', 'IDLE_chat', 0, 0),
(404, 310, 72, 2263.07, -78.894, 26.783, 188.739, 'PED', 'IDLE_chat', 0, 0),
(405, 310, 152, 734.450683, -1298.866699, 1231.046875, 0.118694, 'STRIP', 'strip_A', 0, 0),
(406, 310, 5, 753.616027, -1279.044555, 1226.070312, 129.190063, 'STRIP', 'strip_C', 0, 0),
(407, 310, 237, 763.881835, -1298.502075, 1231.046875, 358.842407, 'STRIP', 'strip_B', 0, 0),
(408, 310, 42, 748.617858, -1299.135253, 1228.199951, 359.782379, 'SCRATCHING', 'scdrdlp', 0, 1337),
(409, 310, 85, -2670.069091, 1410.411132, 907.570312, 268.142791, 'STRIP', 'strip_G', 0, 0),
(410, 310, 245, 1208.445922, -6.062753, 1001.328125, 140.156768, 'STRIP', 'strip_G', 0, 0),
(411, 310, 152, 1219.409667, -6.679968, 1001.328125, 89.709594, 'STRIP', 'strip_D', 0, 0),
(412, 310, 240, -1990.448852, -691.572082, -9.797062, 89.68634, 'INVALID', 'INVALID', 10, 0),
(413, 310, 29, -2491.994384, 155.747497, 8.646488, 104.36647, 'INVALID', 'INVALID', 0, 0),
(414, 310, 272, -1589.216186, 34.733428, 17.328125, 313.651885, 'INVALID', 'INVALID', 0, 0),
(415, 310, 28, -255.490814, 1443.53955, 120.542503, 42.768787, 'INVALID', 'INVALID', 1, 0),
(416, 310, 240, 497.062347, -77.561241, 998.765075, 358.612091, 'INVALID', 'INVALID', 0, 0),
(420, 323, 20, 2533.839843, -1666.543212, 15.164104, 85.022682, 'SMOKING', 'M_smklean_loop', 3, 0),
(421, 323, 21, 2509.64624, -1678.999145, 13.546875, 60.292694, 'ped', 'SEAT_idle', 3, 0),
(422, 323, 122, 2509.940917, -1676.428344, 13.546875, 154.438705, 'ped', 'SEAT_idle', 3, 0),
(423, 271, 29, 1707.162963, -1461.339843, 13.546875, 91.948295, 'GRAFFITI', 'spraycan_fire', 3, 0),
(424, 137, 54, 1139.337524, -1435.586791, 15.796825, 292.42218, 'PED', 'IDLE_CHAT', 3, 0),
(425, 137, 88, 1140.439575, -1435.132202, 15.796825, 134.485977, 'PED', 'IDLE_CHAT', 3, 0),
(426, 331, 54, 154.159652, -1946.621093, 5.389253, 2.561472, 'ON_LOOKERS', 'wave_loop', 3, 0),
(451, 331, 66, 1410.509277, 293.885345, 2126.330078, 87.433143, 'INVALID', 'INVALID', 7, 0),
(447, 336, 35, 2163.44165, -70.333457, 6.449957, 100.156707, 'INVALID', 'INVALID', 0, 0),
(442, 332, 122, 206.982635, -127.806739, 1003.507812, 179.256362, 'INVALID', 'INVALID', 1, 0),
(443, 333, 40, 428.300384, 143.756591, 1003.085937, 270.027435, 'PED', 'IDLE_CHAT', 6, 0),
(444, 333, 67, 431.463562, 158.202102, 1003.085937, 185.548278, 'ped', 'SEAT_idle', 6, 0),
(445, 335, 20, 2247.240478, -86.841178, 26.490129, 268.755554, 'INVALID', 'INVALID', 0, 0),
(446, 336, 3, 2311.458251, 73.654708, 4023.967041, 180.227279, 'INVALID', 'INVALID', 1, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `adminakte`
--

CREATE TABLE `adminakte` (
  `id` int(11) NOT NULL,
  `useridname` varchar(26) DEFAULT NULL,
  `note` int(2) DEFAULT NULL,
  `grund` varchar(128) DEFAULT NULL,
  `adminid` int(11) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `adminlogs_ucp`
--

CREATE TABLE `adminlogs_ucp` (
  `id` int(11) UNSIGNED NOT NULL,
  `adminid` int(11) DEFAULT NULL,
  `aktion` varchar(150) DEFAULT NULL,
  `time` varchar(11) DEFAULT NULL,
  `spielerid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `adminobjekte`
--

CREATE TABLE `adminobjekte` (
  `aid` int(11) NOT NULL,
  `object` int(11) DEFAULT NULL,
  `x` float DEFAULT NULL,
  `y` float DEFAULT NULL,
  `z` float DEFAULT NULL,
  `rz` float DEFAULT NULL,
  `vw` int(2) DEFAULT NULL,
  `int` int(2) DEFAULT NULL,
  `objid` int(2) DEFAULT NULL,
  `gruppe` int(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `adventskalender`
--

CREATE TABLE `adventskalender` (
  `id` int(11) NOT NULL,
  `pid` int(11) DEFAULT NULL,
  `advent` varchar(55) DEFAULT '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `antrag`
--

CREATE TABLE `antrag` (
  `id` int(11) NOT NULL,
  `idd` int(11) DEFAULT NULL,
  `name` varchar(26) DEFAULT NULL,
  `klasse` int(3) DEFAULT NULL,
  `akte` int(5) DEFAULT NULL,
  `warum` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `asservatenkammer`
--

CREATE TABLE `asservatenkammer` (
  `id` int(11) NOT NULL,
  `drogen` int(3) DEFAULT NULL,
  `mats` int(11) DEFAULT NULL,
  `bomben` int(11) DEFAULT NULL,
  `bombenmaterialen` int(11) DEFAULT NULL,
  `maksen` int(11) DEFAULT NULL,
  `schuss` int(11) DEFAULT NULL,
  `waffen` int(11) DEFAULT NULL,
  `drogen2` int(3) DEFAULT NULL,
  `drogen3` int(3) DEFAULT NULL,
  `drogen4` int(3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `bancheck`
--

CREATE TABLE `bancheck` (
  `id` int(11) NOT NULL,
  `forumacc` int(11) DEFAULT NULL,
  `grund` varchar(128) DEFAULT NULL,
  `bantime` int(11) DEFAULT NULL,
  `helfer` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `bans`
--

CREATE TABLE `bans` (
  `id` int(11) NOT NULL,
  `IP` varchar(20) DEFAULT NULL,
  `name` varchar(24) DEFAULT NULL,
  `grund` varchar(128) DEFAULT NULL,
  `von` varchar(26) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `beschwerden`
--

CREATE TABLE `beschwerden` (
  `id` int(11) UNSIGNED NOT NULL,
  `against` int(11) DEFAULT 1,
  `ersteller_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `beschwerde` text DEFAULT NULL,
  `erstellt_am` timestamp NULL DEFAULT current_timestamp(),
  `categorie` text DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `archiviert` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `beschwerden_archiv_27_03_2019`
--

CREATE TABLE `beschwerden_archiv_27_03_2019` (
  `id` int(11) UNSIGNED NOT NULL,
  `against` int(11) DEFAULT 1,
  `ersteller_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `beschwerde` text DEFAULT NULL,
  `erstellt_am` timestamp NULL DEFAULT current_timestamp(),
  `categorie` text DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `archiviert` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `beschwerde_antworten`
--

CREATE TABLE `beschwerde_antworten` (
  `id` int(11) UNSIGNED NOT NULL,
  `ersteller_id` int(11) DEFAULT NULL,
  `kommentar` text DEFAULT NULL,
  `erstellt_am` timestamp NULL DEFAULT current_timestamp(),
  `admin` int(11) DEFAULT 0,
  `beschwerde_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `beschwerde_user`
--

CREATE TABLE `beschwerde_user` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `beschwerde_id` int(11) DEFAULT NULL,
  `mcid` int(11) DEFAULT -2
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `beschwerde_user_27_03_2019`
--

CREATE TABLE `beschwerde_user_27_03_2019` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `beschwerde_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `beschwerde_vorlage`
--

CREATE TABLE `beschwerde_vorlage` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `bizz`
--

CREATE TABLE `bizz` (
  `bid` int(11) DEFAULT NULL,
  `bowned` int(2) DEFAULT NULL,
  `bname` varchar(64) DEFAULT NULL,
  `bowner` varchar(36) DEFAULT NULL,
  `bbx` double DEFAULT NULL,
  `bby` double DEFAULT NULL,
  `bbz` double DEFAULT NULL,
  `blevel` int(11) DEFAULT 0,
  `bpreis` int(11) DEFAULT NULL,
  `btill` int(11) DEFAULT NULL,
  `bproducts` int(11) DEFAULT NULL,
  `bmaxproducts` int(11) DEFAULT NULL,
  `bpriceprod` int(11) DEFAULT NULL,
  `bkasse` int(11) DEFAULT NULL,
  `bprods` int(2) DEFAULT NULL,
  `bowner2` varchar(26) DEFAULT 'Frei',
  `berd` int(2) DEFAULT NULL,
  `bert` int(11) DEFAULT NULL,
  `bschutz` int(3) DEFAULT NULL,
  `blink` varchar(65) DEFAULT 'n/A',
  `block` int(2) DEFAULT NULL,
  `bsteuern` int(6) DEFAULT NULL,
  `bstrom` int(2) DEFAULT 21,
  `bgeh` int(11) DEFAULT NULL,
  `bgvon` int(11) DEFAULT NULL,
  `bgewinnpd` int(6) DEFAULT NULL,
  `bbeliefert` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `bizz`
--

INSERT INTO `bizz` (`bid`, `bowned`, `bname`, `bowner`, `bbx`, `bby`, `bbz`, `blevel`, `bpreis`, `btill`, `bproducts`, `bmaxproducts`, `bpriceprod`, `bkasse`, `bprods`, `bowner2`, `berd`, `bert`, `bschutz`, `blink`, `block`, `bsteuern`, `bstrom`, `bgeh`, `bgvon`, `bgewinnpd`, `bbeliefert`) VALUES
(0, 0, 'Ammunation - Stadthalle', 'Frei', 1380.473, -1791.255, 13.545, 0, 100000, 50, 2000, 2000, 42, 0, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 25000, 0, 0, 1645719392),
(1, 0, 'Buy, Load and Shoot | Best Ammunation', 'Frei', 1785.973, -1164.404, 23.826, 0, 152250, 3000, 2000, 2000, 42, 88445, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 38062, 0, 0, 1645719392),
(2, 0, 'Firearms - Palomino Creek', 'Frei', 2335.187, 65.5, 26.482, 0, 577500, 25000, 2000, 2000, 42, 0, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 144375, 0, 0, 1645719392),
(3, 0, 'Market Ammu-Nation', 'Frei', 1366.505, -1275.941, 13.545, 0, 336000, 0, 2000, 2000, 42, 0, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 84000, 0, 0, 1645719392),
(4, 0, 'Gun & Fun Arena', 'Frei', 1313.8, -1369.661, 13.571, 0, 130000, 300, 2000, 2000, 42, 300, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 32500, 0, 0, 1645719392),
(5, 0, 'Sprunk Incorporated\r\n', 'Frei', 1321.832, 244.207, 19.554, 0, 5455584, 75, 2000, 2000, 42, 3750, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 1363896, 0, 1050, 1645719392),
(6, 0, 'Kendricks PigPen', 'Frei', 2424.714, -1220.822, 25.447, 0, 27600, 0, 2000, 2000, 42, -15, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 6900, 0, 0, 1645719392),
(7, 0, 'San Andreas Telekom - Handyladen', 'Frei', 1186.541, -1464.468, 13.545, 0, 2400000, 0, 2000, 2000, 42, -11957, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 600000, 0, -2500, 1645719392),
(8, 0, 'McCain - Gas Station', 'Frei', 1930.098, -1770.473, 13.545, 0, 300000, 13, 2000, 2000, 42, 0, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 75000, 0, 0, 1645719392),
(9, 0, 'DC Tank - Feel good, Fill good', 'Frei', 998.754, -915.945, 42.179, 0, 60000, 0, 2000, 2000, 42, 0, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 15000, 0, 0, 1645719392),
(10, 0, 'Flint Country Tankstelle - Gute Qualität für einen guten Preis!', 'Frei', -81.763, -1175.291, 2.075, 0, 30000000, 4, 2000, 2000, 42, -684, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 7500000, 0, 0, 1645719392),
(11, 0, 'Howards Tankstelle', 'Frei', 1349.9, -1546.524, 13.55, 0, 500000, 0, 2000, 2000, 42, 0, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 125000, 0, 0, 1645719392),
(12, 0, 'Verona Mall', 'Frei', 1107.088, -1413.307, 13.59, 0, 1000000, 99999999, 2000, 2000, 42, 29099, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 250000, 0, 2500, 1645719392),
(13, 0, 'Rustys King Ring', 'Frei', 1043.218, -1337.609, 13.729, 0, 99999999, 300, 1953, 2000, 42, 23533, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 24999999, 0, 2598, 1645719392),
(14, 0, 'Coffee & Cake Shop!', 'Frei', 756.58, -1807.628, 13.022, 0, 250000, 0, 2000, 2000, 42, 18474, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 62500, 0, 0, 1645719392),
(15, 0, 'VICITIM - TO DIE FOR', 'Frei', 459.101, -1495.401, 31.093, 0, 30000, 0, 2000, 2000, 42, 17000, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 7500, 0, 0, 1645719392),
(16, 0, 'Björn´s Klänning', 'Frei', 505.48, -1373.774, 16.125, 0, 200000, 550, 2000, 2000, 42, 4750, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 50000, 0, 0, 1645719392),
(17, 0, 'Royal Diamonds ', 'Frei', 1801.692, -1291.114, 13.531, 0, 900000, 300, 2000, 2000, 42, 906760, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 225000, 0, 0, 1645719392),
(18, 0, 'Alhambra - Nightclub - Diskothek', 'Frei', 1828.614, -1673.336, 13.545, 0, 350000, 0, 2000, 2000, 42, 0, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 87500, 0, 0, 1645719392),
(19, 0, 'Street & Businesswear MC', 'Frei', 2233.757, -1667.838, 15.22, 0, 22000, 0, 2000, 2000, 42, 5135, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 5500, 0, 0, 1645719392),
(20, 0, 'Nightclub Idlewood', 'Frei', 2032.536, -1804.104, 13.545, 0, 99999999, 0, 2000, 2000, 42, 0, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 24999999, 0, 0, 1645719392),
(21, 0, 'Staatsregierung SA - Energieunternehmen', 'Frei', -2521.131, -624.952, 132.783, 0, 99999999, 279, 2000, 2000, 42, 27861, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 24999999, 0, 0, 1645719392),
(22, 0, 'Inside Track', 'Frei', 1629.197, -1171.561, 24.076, 0, 91875, 0, 2000, 2000, 42, 75475, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 22968, 0, 0, 1645719392),
(23, 0, 'Glückspiel - Lotto - Zane Corp.', 'Frei', 861.418, -1577.904, 13.543, 0, 16000, 250, 2000, 2000, 42, 19350, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 4000, 0, 1750, 1645719392),
(24, 0, 'Beach Bar', 'Frei', 533.388, -1805.031, 6.578, 0, 50000, 0, 1999, 2000, 42, 2340, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 12500, 0, 60, 1645719392),
(25, 0, 'PNS Santa Maria Beach', 'Frei', 605.596, -1695.677, 16.253, 0, 350000, 250, 2000, 2000, 42, 443879, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 87500, 0, 0, 1645719392),
(26, 0, 'Bavarian Store', 'Frei', 1971.838, -2036.529, 13.545, 0, 48000000, 0, 2000, 2000, 42, -38136, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 12000000, 0, 0, 1645719392),
(27, 0, 'Centrum Warenhaus', 'Frei', 1351.411, -1759.567, 13.548, 0, 200000, 500, 2000, 2000, 42, 32740, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 50000, 0, 0, 1645719392),
(28, 0, 'Human Identity Sozialmarkt Los Santos', 'Frei', 1831.717, -1847.337, 13.578, 0, 750000, 21, 2000, 2000, 42, 58027, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 187500, 0, 0, 1645719392),
(29, 0, 'Konsum \"Roter Stern\"', 'Frei', 2350.197, -1405.041, 23.989, 0, 700000, 500, 2000, 2000, 42, 21376, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 175000, 0, 0, 1645719392),
(30, 0, 'Ryan Jones Holding Inc. | 24/7 Mulholland', 'Frei', 1287.526, -888.809, 42.875, 0, 183750, 0, 2000, 2000, 42, 883, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 45937, 0, 0, 1645719392),
(31, 0, 'Eternals Life | - Communication centre - ', 'Frei', -2235, -180.647, 35.319, 0, 525000, 135, 2000, 2000, 42, 38145, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 131250, 0, 0, 1645719392),
(32, 0, 'Burger Shot SF', 'Frei', -2331.291, -165.046, 35.554, 0, 25000, 0, 2000, 2000, 42, 62091, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 6250, 0, 350, 1645719392),
(33, 0, 'Burgershot South', 'Frei', 811.572, -1623.078, 13.553, 0, 250000, 100, 2000, 2000, 42, 17812, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 62500, 0, 0, 1645719392),
(34, 0, 'The Smokin Beef Grill!', 'Frei', 1193.583, -930.268, 42.958, 0, 500000, 0, 2000, 2000, 42, 29949, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 125000, 0, 95, 1645719392),
(35, 0, 'Flying Chicken', 'Frei', 926.38, -1342.687, 13.475, 0, 250000, 0, 2000, 2000, 42, 13993, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 62500, 0, 0, 1645719392),
(36, 0, 'Juicy Chicks by Mr.Blanc !', 'Frei', 2420.312, -1501.541, 24, 0, 36750, 0, 2000, 2000, 42, 26327, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 9187, 0, 0, 1645719392),
(37, 0, 'WHAMMY', 'Frei', 2391.652, -1898.612, 13.545, 0, 250000, 500, 2000, 2000, 42, 56317, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 62500, 0, 0, 1645719392),
(38, 0, 'The Well Stacked Pizza Co.', 'Frei', 2099.704, -1803.302, 13.553, 0, 850000, 0, 2000, 2000, 42, 19108, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 212500, 0, 140, 1645719392),
(39, 0, 'Hotel des Glücks', 'Frei', 1083.192, -1688.156, 13.538, 0, 19000, 0, 2000, 2000, 42, 171146, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 4750, 0, -50, 1645719392),
(40, 0, 'Burger King am Police Department', 'Frei', 1243.931, -1176.255, 24.231, 0, 3000000, 200, 2000, 2000, 42, 2020834, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 750000, 0, 0, 1645719392),
(41, 0, 'Tuning Gesellschaft', 'Frei', 2105.155, -1884.802, 13.545, 0, 750000, 1100, 2000, 2000, 42, 5000, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 187500, 0, 0, 1645719392),
(42, 0, 'Spenser Store - Kleidung und Bandana Shop', 'Frei', 1454.875, -1140.489, 24.002, 0, 100000, 0, 2000, 2000, 42, 500, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 25000, 0, 0, 1645719392),
(43, 0, 'PLATINUM FAHRZEUGHANDEL- Smirnow Corperation', 'Frei', 2126.114, -1153.572, 23.999, 0, 1900000, 1100, 2000, 2000, 42, 124130, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 475000, 0, 0, 1645719392),
(44, 0, 'Dillimore Gas Station ', 'Frei', 661.033, -569.783, 16.333, 0, 950000, 22, 2000, 2000, 42, 22593, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 237500, 0, 0, 1645719392),
(45, 0, 'av.dealership', 'Frei', 1348.202, 1258.864, 10.819, 0, 12000000, 0, 2000, 2000, 42, 6648165, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 3000000, 0, 0, 1645719392),
(46, 0, 'Whitebeard Gas Station', 'Frei', -1679.91, 426.98, 7.17, 0, 250000, 35, 2000, 2000, 42, 7365, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 62500, 0, 0, 1645719392),
(47, 0, 'Dillimore Bar', 'Frei', 678.952, -473.596, 16.534, 0, 250000, 0, 2000, 2000, 42, -37600, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 62500, 0, 0, 1645719392),
(48, 0, 'Internetcafé ', 'Frei', 852.07, -1761.687, 13.538, 0, 1000000, 50, 2000, 2000, 42, 86150, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 250000, 0, 50, 1645719392),
(49, 0, 'E-Mobilität durch die Regierung', 'Frei', 2418.968, 1485.291, 10.819, 0, 1500000, 0, 2000, 2000, 42, -15000, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 375000, 0, 0, 1645719392),
(50, 0, '*Ritter´s Motorcycle Store*', 'Frei', 2497.947, -1940.187, 13.545, 0, 500000, 10000, 2000, 2000, 42, 101590, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 125000, 0, 0, 1645719392),
(51, 0, 'Diniczi`s Fahrräder', 'Frei', 1186.609, -1444.055, 13.51, 0, 450000, 0, 2000, 2000, 42, 212351, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 112500, 0, 0, 1645719392),
(52, 0, 'Galanté.Group - Luxury Sportscars', 'Frei', -141.281, -1386.5, 3.039, 0, 12500000, 10000, 2000, 2000, 42, 1503750, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 3125000, 0, 0, 1645719392),
(53, 0, 'AUTOHAUS PAC - Mehr als nur Mittelklasse', 'Frei', 2698.592, -1094.52, 69.361, 0, 2700000, 0, 2000, 2000, 42, 1188819, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 675000, 0, 0, 1645719392),
(54, 0, '>> Zwetkow´s Offroad-Autohaus <<', 'Frei', 523.661, -1278.77, 16.236, 0, 2400000, 1569325056, 2000, 2000, 42, -62200, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 600000, 0, 0, 1645719392),
(55, 0, 'Galanté.Group - Super Cars', 'Frei', 616.981, -1560.312, 15.755, 0, 5700000, 1000, 2000, 2000, 42, 11154939, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 1425000, 0, 0, 1645719392),
(56, 0, 'Shephard Automobilhändler GmbH', 'Frei', 2421.833, -1744.072, 13.545, 0, 630000, 0, 2000, 2000, 42, 134683, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 157500, 0, 0, 1645719392),
(57, 0, 'SeaShark Bootshandel', 'Frei', -2255.187, 2382.197, 4.774, 0, 144375, 0, 2000, 2000, 42, 250500, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 36093, 0, 0, 1645719392),
(58, 0, 'Galanté.Group - Trucks & More', 'Frei', -76.861, -1136.832, 1.077, 0, 5400000, 0, 2000, 2000, 42, 718800, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 1350000, 0, 0, 1645719392),
(59, 0, 'PNS || TEMPLE - Kaufangebote an 2518', 'Frei', 1212.453, -1057.76, 31.929, 0, 1300000, 0, 2000, 2000, 42, 77933, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 325000, 0, 0, 1645719392),
(60, 0, 'Pay & Spray Willowfield', 'Frei', 2111.156, -1902.276, 13.545, 0, 1300000, 1000, 2000, 2000, 42, 1319880, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 325000, 0, 0, 1645719392),
(61, 0, 'PCN - PNS Ocean Docks', 'Frei', 2293.478, -2321.072, 13.541, 0, 111111, 0, 2000, 2000, 42, 26464, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 27777, 0, 0, 1645719392),
(62, 0, 'Diner Road', 'Frei', 2335.135, 4.302, 26.482, 0, 250000, 0, 2000, 2000, 42, 65383, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 62500, 0, 245, 1645719392),
(63, 0, 'Freizeitpark San Andreas', 'Frei', 3288.239, -643.82, 6.893, 0, 500000, 850, 2000, 2000, 42, 52921, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 125000, 0, 0, 1645719392),
(64, 0, 'Mitchell´s Repairstation', 'Frei', -2385.582, -63.034, 35.319, 0, 1100000, 0, 2000, 2000, 42, 365473, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 275000, 0, 0, 1645719392),
(65, 0, 'Gaydar Nightlife Station', 'Frei', -2552.364, 189.576, 5.952, 0, 600000, 0, 2000, 2000, 42, 0, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 150000, 0, 0, 1645719392),
(66, 0, 'McKenzies 2 Go', 'Frei', 2323.437, -89.361, 26.482, 0, 800000, 21, 2000, 2000, 42, 254951, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 200000, 0, 0, 1645719392),
(67, 0, 'Pershing Square Restaurant', 'Frei', 1495.269, -1584.222, 13.543, 0, 6300, 0, 2000, 2000, 42, 1972, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 1575, 0, 0, 1645719392),
(68, 0, 'Fosters Möbelwelt', 'Frei', 2510.039, 922.419, 10.673, 0, 3675000, 0, 2000, 2500, 42, 687892, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 918750, 0, 0, 1645719392),
(69, 0, 'Howards Tankstelle', 'Frei', 2188.613, 2466.758, 11.241, 0, 131250, 10, 2000, 2000, 42, 10294, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 32812, 0, 0, 1645719392),
(70, 0, 'PenBar - #ThirstyThursday!', 'Frei', 211.768, -1448.79, 13.119, 0, 500000, 100000000, 2000, 2000, 42, 70977, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 125000, 0, 0, 1645719392),
(71, 0, 'Energieunternehmen', 'Frei', 2572.166, -1458.244, 35.02, 0, 8300000, 270, 2000, 2000, 42, 26265, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 2075000, 0, 0, 1645719392),
(72, 0, 'T.Sanchez Stromkasten', 'Frei', -777.401, 2092.031, 60.381, 0, 2178750, 150, 2000, 2000, 42, 27500, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 544687, 0, 0, 1645719392),
(73, 0, 'Henklers Angelshop', 'Frei', 411.976, -1729.331, 9.371, 0, 250000, 0, 2000, 2000, 42, 278543, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 62500, 0, 0, 1645719392),
(74, 0, '# VARIETYVILLE IRON #', 'Frei', 804.528, 833.226, 8.637, 0, 6000000, 350, 2000, 2000, 42, 151062, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 1500000, 0, 0, 1645719392),
(75, 0, 'Damage Defence San Andreas - Parkanlage Las Venturas', 'Frei', 1594.082, 708.202, 10.819, 0, 118125, 45, 2000, 2000, 42, 1845, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 29531, 0, 0, 1645719392),
(76, 0, '55er Hotdogs', 'Frei', 1333.405, -1864.369, 13.545, 0, 4500000, 0, 2000, 2000, 42, 0, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 1125000, 0, 0, 1645719392),
(77, 0, 'L E G A L | Das beste und einzige Kino in San Andreas!', 'Frei', 1320.677, -1715.687, 13.545, 0, 26250, 0, 2000, 2000, 42, 0, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 6562, 0, 0, 1645719392),
(78, 0, 'EASYFITNESS', 'Frei', 2335.208, -71.263, 26.482, 0, 452000, 0, 2000, 2000, 42, -37800, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 113000, 0, 0, 1645719392),
(79, 0, 'Downtown Cars by Benny`s', 'Frei', 1377.609, -1821.343, 13.581, 0, 50000, 1337, 2000, 2000, 42, 123490, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 12500, 0, 0, 1645719392),
(80, 0, 'Steiners Fahrschule | Crash-Kurs Angebote', 'Frei', 1011.929, -1296.604, 13.545, 0, 2350000, 0, 2000, 2000, 42, 201905, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 587500, 0, 0, 1645719392),
(81, 0, 'Colerbox', 'Frei', 1987.64, 2102.125, 10.819, 0, 300000, 0, 2000, 2000, 42, 36204, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 75000, 0, 0, 1645719392),
(82, 0, 'Winchester Tower - High Society Appartments', 'Frei', 297.127, -1617.713, 33.173, 0, 2350000, 450, 2000, 2000, 42, 9846, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 587500, 0, 0, 1645719392),
(83, 0, 'Garazh 83', 'Frei', 1475.276, 405.247, 19.881, 0, 2100000, 0, 2000, 2000, 42, 294694, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 525000, 0, 0, 1645719392),
(84, 0, 'Möbelhaus Palomino Creek', 'Frei', 2301.756, 62.562, 26.482, 0, 9000000, 0, 1500, 1500, 42, 882767, 0, 'Keiner', 0, 0, 0, '', 0, 0, 21, 2250000, 0, 0, 1645719392);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `blitzer`
--

CREATE TABLE `blitzer` (
  `id` int(11) NOT NULL,
  `sperreX` double DEFAULT NULL,
  `sperreY` double DEFAULT NULL,
  `sperreZ` double DEFAULT NULL,
  `sperreA` double DEFAULT NULL,
  `BlitzerGeschwindigkeit` int(11) DEFAULT NULL,
  `BlitzerOrt` varchar(128) DEFAULT NULL,
  `erstelltvon` varchar(26) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `blocked`
--

CREATE TABLE `blocked` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT -1,
  `blockedid` int(11) DEFAULT -1,
  `name` varchar(30) DEFAULT 'n/A'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `carsell`
--

CREATE TABLE `carsell` (
  `id` int(11) NOT NULL,
  `vehid` int(3) DEFAULT NULL,
  `name` varchar(25) DEFAULT NULL,
  `preis` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `cks`
--

CREATE TABLE `cks` (
  `id` int(111) NOT NULL,
  `pid` int(11) DEFAULT -1,
  `timestamp` int(11) DEFAULT NULL,
  `version` int(2) DEFAULT 0,
  `givemoney` int(7) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `dienstleistung`
--

CREATE TABLE `dienstleistung` (
  `id` int(11) NOT NULL,
  `firma` int(6) DEFAULT NULL,
  `nummer` int(6) DEFAULT NULL,
  `eingetragenvon` int(11) DEFAULT NULL,
  `lastonline` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `drogenpflanzen`
--

CREATE TABLE `drogenpflanzen` (
  `pflanze` int(11) NOT NULL,
  `drgfraktid` int(2) DEFAULT 0,
  `drgArt` int(2) DEFAULT 0,
  `drgXpos` float(10,4) DEFAULT 0.0000,
  `drgYpos` float(10,4) DEFAULT 0.0000,
  `drgZpos` float(10,4) DEFAULT 0.0000,
  `drgProduceDrugs` int(4) DEFAULT 0,
  `drgNextDrugsIn` int(4) DEFAULT 0,
  `drgWasserzustand` int(3) DEFAULT 100,
  `drgOwner` varchar(185) DEFAULT 'n/A',
  `drgVW` int(2) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `einstellungen`
--

CREATE TABLE `einstellungen` (
  `id` int(2) NOT NULL,
  `bombenkasse` int(2) DEFAULT NULL,
  `staatskasse` int(11) DEFAULT NULL,
  `cnnkasse` int(11) DEFAULT NULL,
  `zeitung` int(2) DEFAULT NULL,
  `eisenlager` int(11) DEFAULT NULL,
  `drogenlager` int(11) DEFAULT NULL,
  `abombenkasse` int(11) DEFAULT NULL,
  `adminpw` varchar(129) DEFAULT NULL,
  `codupgrade` int(2) DEFAULT NULL,
  `codwaffen` int(11) DEFAULT NULL,
  `codkasse` int(11) DEFAULT NULL,
  `coddrogenkasse` int(11) DEFAULT NULL,
  `codmatkasse` int(11) DEFAULT NULL,
  `esbupgrade` int(2) DEFAULT NULL,
  `esbwaffen` int(11) DEFAULT NULL,
  `esbkasse` int(11) DEFAULT NULL,
  `esbdrogenkasse` int(11) DEFAULT NULL,
  `esbmatkasse` int(11) DEFAULT NULL,
  `hmkasse` int(11) DEFAULT NULL,
  `hmeisenkasse` int(11) DEFAULT NULL,
  `msupgrade` int(2) DEFAULT NULL,
  `mswaffen` int(11) DEFAULT NULL,
  `mskasse` int(11) DEFAULT NULL,
  `msdrogenkasse` int(11) DEFAULT NULL,
  `msmatkasse` int(11) DEFAULT NULL,
  `terrorkasse` int(11) DEFAULT NULL,
  `eventhut` int(5) DEFAULT NULL,
  `terrorwaffen` int(5) DEFAULT NULL,
  `terrorupgrade` int(2) DEFAULT NULL,
  `Terrordrogen` int(3) DEFAULT NULL,
  `Terrormats` int(3) DEFAULT NULL,
  `Terrorrpg` int(3) DEFAULT NULL,
  `wstatus0` int(2) DEFAULT NULL,
  `wstatus1` int(2) DEFAULT NULL,
  `wstatus2` int(2) DEFAULT NULL,
  `wstatus3` int(2) DEFAULT NULL,
  `doppelexp` int(1) DEFAULT NULL,
  `AlexRang` varchar(15) DEFAULT NULL,
  `fleischlager` int(11) DEFAULT NULL,
  `jackpot` int(6) DEFAULT NULL,
  `terrorhaus` int(2) DEFAULT NULL,
  `terrortime` int(11) DEFAULT NULL,
  `bombenmats` int(3) DEFAULT NULL,
  `wmtore` int(11) DEFAULT NULL,
  `tickets` int(11) DEFAULT NULL,
  `wahlaktiviert` int(2) DEFAULT NULL,
  `wahlende` int(2) DEFAULT NULL,
  `gewinnerpartei` varchar(128) DEFAULT 'n/A',
  `eksteuer` int(4) DEFAULT NULL,
  `lksteuer` int(4) DEFAULT NULL,
  `osteuer` int(4) DEFAULT NULL,
  `rsteuer` int(4) DEFAULT NULL,
  `gwsteuer` int(4) DEFAULT NULL,
  `kfzsteuer` int(4) DEFAULT NULL,
  `ageld` int(5) DEFAULT NULL,
  `kversicherung` int(5) DEFAULT NULL,
  `pkosten` int(5) DEFAULT NULL,
  `fkosten` int(5) DEFAULT NULL,
  `spedikosten` int(5) DEFAULT NULL,
  `reisepass` int(5) DEFAULT NULL,
  `lohn1` int(5) DEFAULT NULL,
  `lohn2` int(5) DEFAULT NULL,
  `lohn3` int(5) DEFAULT NULL,
  `lohn4` int(5) DEFAULT NULL,
  `lohn5` int(5) DEFAULT NULL,
  `lohn6` int(6) DEFAULT NULL,
  `nday` int(2) DEFAULT NULL,
  `sanaz` int(4) DEFAULT NULL,
  `holzlager` int(4) DEFAULT NULL,
  `hhaus` int(3) DEFAULT -1,
  `htime` int(11) DEFAULT NULL,
  `skp` int(11) DEFAULT NULL,
  `skm` int(11) DEFAULT NULL,
  `globaltime` int(5) DEFAULT NULL,
  `sarcarmor` int(2) DEFAULT 35,
  `ffeuer` int(5) DEFAULT NULL,
  `rpge` int(2) DEFAULT NULL,
  `dlo` int(4) DEFAULT NULL,
  `plic` int(6) DEFAULT NULL,
  `mlic` int(5) DEFAULT NULL,
  `terstellt` int(4) DEFAULT NULL,
  `tdelete` int(4) DEFAULT NULL,
  `ttime` int(4) DEFAULT 1,
  `brobmoney` int(5) DEFAULT 60000,
  `slock` int(2) DEFAULT 0,
  `zellenuse` int(3) DEFAULT NULL,
  `kgeld` int(4) DEFAULT NULL,
  `asatz` int(3) DEFAULT 40,
  `tlock` int(2) DEFAULT NULL,
  `mulohn` int(4) DEFAULT 300,
  `gmt` int(2) DEFAULT 1,
  `hlock` int(2) DEFAULT NULL,
  `tulic` int(6) DEFAULT 125000,
  `atlic` int(5) DEFAULT 105000,
  `vlock` int(2) DEFAULT 0,
  `highmoney` int(4) DEFAULT 250,
  `seclic` int(6) DEFAULT 215000,
  `fslic` int(11) DEFAULT 250000,
  `wartung` int(2) DEFAULT 0,
  `elic` int(2) DEFAULT 75000,
  `multis` int(5) DEFAULT -1,
  `podarmor` int(2) DEFAULT 25,
  `players` int(3) DEFAULT 0,
  `binfernus` int(2) DEFAULT NULL,
  `eleklic` int(6) DEFAULT 55000,
  `mdcpw` varchar(20) DEFAULT 'n/A',
  `mdcpw1` varchar(20) DEFAULT 'n/A'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `einstellungen`
--

INSERT INTO `einstellungen` (`id`, `bombenkasse`, `staatskasse`, `cnnkasse`, `zeitung`, `eisenlager`, `drogenlager`, `abombenkasse`, `adminpw`, `codupgrade`, `codwaffen`, `codkasse`, `coddrogenkasse`, `codmatkasse`, `esbupgrade`, `esbwaffen`, `esbkasse`, `esbdrogenkasse`, `esbmatkasse`, `hmkasse`, `hmeisenkasse`, `msupgrade`, `mswaffen`, `mskasse`, `msdrogenkasse`, `msmatkasse`, `terrorkasse`, `eventhut`, `terrorwaffen`, `terrorupgrade`, `Terrordrogen`, `Terrormats`, `Terrorrpg`, `wstatus0`, `wstatus1`, `wstatus2`, `wstatus3`, `doppelexp`, `AlexRang`, `fleischlager`, `jackpot`, `terrorhaus`, `terrortime`, `bombenmats`, `wmtore`, `tickets`, `wahlaktiviert`, `wahlende`, `gewinnerpartei`, `eksteuer`, `lksteuer`, `osteuer`, `rsteuer`, `gwsteuer`, `kfzsteuer`, `ageld`, `kversicherung`, `pkosten`, `fkosten`, `spedikosten`, `reisepass`, `lohn1`, `lohn2`, `lohn3`, `lohn4`, `lohn5`, `lohn6`, `nday`, `sanaz`, `holzlager`, `hhaus`, `htime`, `skp`, `skm`, `globaltime`, `sarcarmor`, `ffeuer`, `rpge`, `dlo`, `plic`, `mlic`, `terstellt`, `tdelete`, `ttime`, `brobmoney`, `slock`, `zellenuse`, `kgeld`, `asatz`, `tlock`, `mulohn`, `gmt`, `hlock`, `tulic`, `atlic`, `vlock`, `highmoney`, `seclic`, `fslic`, `wartung`, `elic`, `multis`, `podarmor`, `players`, `binfernus`, `eleklic`, `mdcpw`, `mdcpw1`) VALUES
(0, 0, 206128, 10000, 0, 50, 50, 0, '02B433E9270ABCD628805C523113CD79806FC1266705404F1E12405497243942AD4A86B57253D4561197C41AABBE165EC1BCD16BC2319D539DD50034A55D2B1E', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 10000, 0, 1, 0, 0, 0, 0, 0, -1, 0, 5, 0, 0, 0, 1, 0, 1, 0, 0, 'User', 50, 15000, -1, -1, 1, 0, 0, 0, 0, 'n/A', 55, 125, 500, 390, 5, 100, 1500, 175, 40000, 60000, 80000, 10500, 72000, 43750, 70000, 70000, 55000, 0, 0, 3500, 0, -1, -1, 106127, -1, 60, 5, 7500, 0, 150, 75000, 75500, 0, 0, 0, 150000, 1, 0, 5, 55, 1, 147, 1, 1, 100000, 115000, 0, 0, 85000, 90000, 0, 82500, 0, 30, 1, 1, 55000, 'n/A', 'n/A');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `emailaccoutns`
--

CREATE TABLE `emailaccoutns` (
  `id` int(11) NOT NULL,
  `owner` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `lastused` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `emails`
--

CREATE TABLE `emails` (
  `id` int(11) NOT NULL,
  `target` text DEFAULT NULL,
  `sender` text DEFAULT NULL,
  `betreff` text DEFAULT NULL,
  `text` text DEFAULT NULL,
  `read` int(11) DEFAULT 0,
  `time` int(11) DEFAULT NULL,
  `timestampcreate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `factionraenge`
--

CREATE TABLE `factionraenge` (
  `id` int(11) DEFAULT NULL,
  `factionrang1` varchar(64) DEFAULT NULL,
  `factionrang2` varchar(64) DEFAULT NULL,
  `factionrang3` varchar(64) DEFAULT NULL,
  `factionrang4` varchar(64) DEFAULT NULL,
  `factionrang5` varchar(64) DEFAULT NULL,
  `factionrang6` varchar(64) DEFAULT NULL,
  `factionrang7` varchar(64) DEFAULT NULL,
  `factionrang8` varchar(64) DEFAULT NULL,
  `factionrang9` varchar(64) DEFAULT NULL,
  `factionrang10` varchar(64) DEFAULT NULL,
  `factionrang11` varchar(64) DEFAULT NULL,
  `factionrang12` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `factionraenge`
--

INSERT INTO `factionraenge` (`id`, `factionrang1`, `factionrang2`, `factionrang3`, `factionrang4`, `factionrang5`, `factionrang6`, `factionrang7`, `factionrang8`, `factionrang9`, `factionrang10`, `factionrang11`, `factionrang12`) VALUES
(0, 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei'),
(1, 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei'),
(2, 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei'),
(3, 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei'),
(4, 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei'),
(5, 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei'),
(6, 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei'),
(7, 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei'),
(8, 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei'),
(9, 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei'),
(10, 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei'),
(11, 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei'),
(12, 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei'),
(13, 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei', 'Frei');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `fahndung`
--

CREATE TABLE `fahndung` (
  `fdid` int(11) NOT NULL,
  `fdtime` int(11) DEFAULT 0,
  `fdersteller` varchar(25) DEFAULT 'n/A',
  `fdtext` varchar(128) DEFAULT 'n/A',
  `fdextra` varchar(24) DEFAULT 'n/A'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `fahrzeuge`
--

CREATE TABLE `fahrzeuge` (
  `id` int(15) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `slot` int(3) DEFAULT NULL,
  `modelid` int(4) DEFAULT NULL,
  `x` float(10,4) DEFAULT NULL,
  `y` float(10,4) DEFAULT NULL,
  `z` float(10,4) DEFAULT NULL,
  `a` float(10,4) DEFAULT NULL,
  `cc1` int(4) DEFAULT 0,
  `cc2` int(4) DEFAULT 0,
  `paintjob` int(6) DEFAULT NULL,
  `vehhp` float(10,4) DEFAULT NULL,
  `abgeschlossen` int(2) DEFAULT NULL,
  `t1` int(6) DEFAULT NULL,
  `t2` int(6) DEFAULT NULL,
  `t3` int(6) DEFAULT NULL,
  `t4` int(6) DEFAULT NULL,
  `t5` int(6) DEFAULT NULL,
  `t6` int(6) DEFAULT NULL,
  `t7` int(6) DEFAULT NULL,
  `t8` int(6) DEFAULT NULL,
  `t9` int(6) DEFAULT NULL,
  `t10` int(6) DEFAULT NULL,
  `t11` int(6) DEFAULT NULL,
  `t12` int(6) DEFAULT NULL,
  `t13` int(6) DEFAULT NULL,
  `t14` int(6) DEFAULT NULL,
  `preis` int(11) DEFAULT NULL,
  `tuev` int(2) DEFAULT NULL,
  `tank` int(3) DEFAULT NULL,
  `towed` int(11) DEFAULT NULL,
  `towedfreeprice` int(10) DEFAULT NULL,
  `towedreason` varchar(80) DEFAULT NULL,
  `neon` int(6) DEFAULT NULL,
  `mats` int(4) DEFAULT NULL,
  `drogen` int(4) DEFAULT NULL,
  `eisen` int(4) DEFAULT NULL,
  `waffe` int(2) DEFAULT NULL,
  `ammo` int(3) DEFAULT NULL,
  `waffe2` int(2) DEFAULT NULL,
  `ammo2` int(3) DEFAULT NULL,
  `waffe3` int(2) DEFAULT NULL,
  `ammo3` int(3) DEFAULT NULL,
  `batt` int(3) DEFAULT NULL,
  `reifenk` int(2) DEFAULT NULL,
  `reifene` int(2) DEFAULT NULL,
  `motork` int(2) DEFAULT NULL,
  `drossel` int(2) DEFAULT NULL,
  `auspuff` int(2) DEFAULT NULL,
  `besitzer2` varchar(32) DEFAULT NULL,
  `kralle` varchar(50) DEFAULT NULL,
  `kilometer` int(5) DEFAULT NULL,
  `meter` int(5) DEFAULT NULL,
  `ausg` int(2) DEFAULT NULL,
  `alarm` int(2) DEFAULT NULL,
  `failtank` int(2) DEFAULT NULL,
  `nosupgrade` int(2) DEFAULT NULL,
  `arm` int(3) DEFAULT NULL,
  `d2` int(3) DEFAULT NULL,
  `d3` int(3) DEFAULT NULL,
  `damage` varchar(150) DEFAULT 'n/A',
  `chip` int(2) DEFAULT NULL,
  `defi` varchar(200) DEFAULT 'n/A',
  `schild` varchar(24) DEFAULT 'n/A',
  `m1` int(2) DEFAULT NULL,
  `m2` int(5) DEFAULT NULL,
  `schloss` int(2) DEFAULT NULL,
  `koffer` int(6) DEFAULT -1,
  `bremse` int(5) DEFAULT NULL,
  `oel` int(3) DEFAULT 100,
  `drogen4` int(3) DEFAULT NULL,
  `ingarage` int(4) DEFAULT 0,
  `freeze` int(2) DEFAULT 0,
  `nitrom` int(3) DEFAULT NULL,
  `akopplung` int(2) DEFAULT NULL,
  `strafzettel` varchar(85) DEFAULT 'n/A'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `fahrzeugobjekte`
--

CREATE TABLE `fahrzeugobjekte` (
  `id` int(11) DEFAULT NULL,
  `modelid` int(6) DEFAULT NULL,
  `preis` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `firma`
--

CREATE TABLE `firma` (
  `id` int(11) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `mitglieder` int(3) DEFAULT NULL,
  `erstellt` int(11) DEFAULT NULL,
  `ersteller` int(11) DEFAULT NULL,
  `slizens` int(2) DEFAULT NULL,
  `kasse` int(11) DEFAULT NULL,
  `channel` int(2) DEFAULT NULL,
  `buero` int(3) DEFAULT -1,
  `status` int(2) DEFAULT NULL,
  `fahrzeuge` int(2) DEFAULT NULL,
  `abschlepp` int(2) DEFAULT NULL,
  `lager` int(5) DEFAULT 0,
  `tuning` int(2) DEFAULT NULL,
  `krank` int(2) DEFAULT 11,
  `srespekt` int(2) DEFAULT 0,
  `auto` int(2) DEFAULT 0,
  `fahr` int(2) DEFAULT 0,
  `aktiv` int(11) DEFAULT -1,
  `fchat` int(2) DEFAULT NULL,
  `secruity` int(2) DEFAULT 0,
  `mc` int(2) DEFAULT NULL,
  `gang` int(2) DEFAULT NULL,
  `event` int(2) DEFAULT NULL,
  `news` int(2) DEFAULT 0,
  `ange` int(2) DEFAULT 0,
  `mafia` int(2) DEFAULT NULL,
  `elektro` int(2) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `firmenfahrzeuge`
--

CREATE TABLE `firmenfahrzeuge` (
  `id` int(11) NOT NULL,
  `model` int(3) DEFAULT NULL,
  `firma` int(5) DEFAULT -1,
  `posx` float DEFAULT NULL,
  `posy` float DEFAULT NULL,
  `posz` float DEFAULT NULL,
  `posa` float DEFAULT NULL,
  `farbe1` int(3) DEFAULT NULL,
  `farbe2` int(3) DEFAULT NULL,
  `tuev` int(11) DEFAULT NULL,
  `tank` int(3) DEFAULT NULL,
  `towed` int(11) DEFAULT NULL,
  `towedprice` int(4) DEFAULT NULL,
  `towedgrund` varchar(64) DEFAULT NULL,
  `bremse` int(5) DEFAULT NULL,
  `mats` int(3) DEFAULT NULL,
  `drogen` int(3) DEFAULT NULL,
  `eisen` int(3) DEFAULT NULL,
  `waffe` int(2) DEFAULT NULL,
  `ammo` int(3) DEFAULT NULL,
  `waffe2` int(2) DEFAULT NULL,
  `ammo2` int(3) DEFAULT NULL,
  `waffe3` int(2) DEFAULT NULL,
  `ammo3` int(3) DEFAULT NULL,
  `batt` int(3) DEFAULT NULL,
  `reifenk` int(2) DEFAULT NULL,
  `reifene` int(2) DEFAULT NULL,
  `motork` int(2) DEFAULT NULL,
  `auspuff` int(2) DEFAULT NULL,
  `drossel` int(2) DEFAULT NULL,
  `akralle` varchar(64) DEFAULT NULL,
  `leben` float DEFAULT NULL,
  `lockstatus` int(2) DEFAULT NULL,
  `preis` int(6) DEFAULT NULL,
  `kmeter` int(5) DEFAULT NULL,
  `meter` int(5) DEFAULT NULL,
  `ausg` int(2) DEFAULT NULL,
  `alarm` int(2) DEFAULT NULL,
  `failtank` int(2) DEFAULT NULL,
  `nosupgrade` int(2) DEFAULT NULL,
  `arm` int(3) DEFAULT NULL,
  `d2` int(3) DEFAULT NULL,
  `d3` int(3) DEFAULT NULL,
  `chip` int(2) DEFAULT NULL,
  `schild` varchar(24) DEFAULT 'n/A',
  `m1` int(2) DEFAULT NULL,
  `m2` int(5) DEFAULT NULL,
  `rank` int(2) DEFAULT NULL,
  `schloss` int(2) DEFAULT NULL,
  `defi` varchar(200) DEFAULT 'n/A',
  `t0` int(5) DEFAULT NULL,
  `t1` int(5) DEFAULT NULL,
  `t2` int(5) DEFAULT NULL,
  `t3` int(5) DEFAULT NULL,
  `t4` int(5) DEFAULT NULL,
  `t5` int(5) DEFAULT NULL,
  `t6` int(5) DEFAULT NULL,
  `t7` int(5) DEFAULT NULL,
  `t8` int(5) DEFAULT NULL,
  `t9` int(5) DEFAULT NULL,
  `t10` int(5) DEFAULT NULL,
  `t11` int(5) DEFAULT NULL,
  `t12` int(5) DEFAULT NULL,
  `t13` int(5) DEFAULT NULL,
  `paintjob` int(2) DEFAULT NULL,
  `neon` int(6) DEFAULT NULL,
  `koffer` int(6) DEFAULT -1,
  `dmg` varchar(150) DEFAULT 'n/A',
  `oel` int(3) DEFAULT 100,
  `drogen4` int(3) DEFAULT NULL,
  `sell` int(6) DEFAULT 0,
  `nitrom` int(3) DEFAULT NULL,
  `used` int(2) DEFAULT 0,
  `time` int(11) DEFAULT NULL,
  `akopplung` int(2) DEFAULT NULL,
  `ingarage` int(5) DEFAULT 0,
  `strafzettel` varchar(85) DEFAULT 'n/A'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `firmenlogs`
--

CREATE TABLE `firmenlogs` (
  `id` int(11) NOT NULL,
  `firma` int(5) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `aktion` varchar(45) DEFAULT NULL,
  `geld` int(7) DEFAULT NULL,
  `time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `firmenranks`
--

CREATE TABLE `firmenranks` (
  `realid` int(11) NOT NULL,
  `id` int(6) DEFAULT NULL,
  `rang1` varchar(30) DEFAULT 'n/A',
  `rang2` varchar(30) DEFAULT 'n/A',
  `rang3` varchar(30) DEFAULT 'n/A',
  `rang4` varchar(30) DEFAULT 'n/A',
  `rang5` varchar(30) DEFAULT 'n/A',
  `rang6` varchar(30) DEFAULT 'n/A',
  `rang7` varchar(30) DEFAULT 'n/A',
  `rang8` varchar(30) DEFAULT 'n/A',
  `rang9` varchar(30) DEFAULT 'n/A',
  `rang10` varchar(30) DEFAULT 'n/A',
  `rang11` varchar(30) DEFAULT 'n/A',
  `rang12` varchar(30) DEFAULT 'n/A'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `fraktionsfahrzeuge`
--

CREATE TABLE `fraktionsfahrzeuge` (
  `id` int(11) NOT NULL,
  `model` int(3) DEFAULT NULL,
  `fraktion` int(3) DEFAULT -1,
  `x` float DEFAULT NULL,
  `y` float DEFAULT NULL,
  `z` float DEFAULT NULL,
  `a` float DEFAULT NULL,
  `farbe1` int(3) DEFAULT NULL,
  `farbe2` int(3) DEFAULT NULL,
  `tuev` int(11) DEFAULT NULL,
  `tank` int(3) DEFAULT NULL,
  `towed` int(11) DEFAULT NULL,
  `towedprice` int(4) DEFAULT NULL,
  `towedgrund` varchar(64) DEFAULT NULL,
  `bremse` int(5) DEFAULT NULL,
  `mats` int(3) DEFAULT NULL,
  `drogen` int(3) DEFAULT NULL,
  `eisen` int(3) DEFAULT NULL,
  `waffe` int(2) DEFAULT NULL,
  `ammo` int(3) DEFAULT NULL,
  `waffe2` int(2) DEFAULT NULL,
  `ammo2` int(3) DEFAULT NULL,
  `waffe3` int(2) DEFAULT NULL,
  `ammo3` int(3) DEFAULT NULL,
  `batt` int(3) DEFAULT NULL,
  `reifenk` int(2) DEFAULT NULL,
  `reifene` int(2) DEFAULT NULL,
  `motork` int(2) DEFAULT NULL,
  `auspuff` int(2) DEFAULT NULL,
  `drossel` int(2) DEFAULT NULL,
  `akralle` varchar(64) DEFAULT NULL,
  `leben` float DEFAULT NULL,
  `lockstatus` int(2) DEFAULT NULL,
  `preis` int(6) DEFAULT NULL,
  `kmeter` int(5) DEFAULT NULL,
  `meter` int(5) DEFAULT NULL,
  `ausg` int(2) DEFAULT NULL,
  `alarm` int(2) DEFAULT NULL,
  `failtank` int(2) DEFAULT NULL,
  `nosupgrade` int(2) DEFAULT NULL,
  `arm` int(3) DEFAULT NULL,
  `d2` int(3) DEFAULT NULL,
  `d3` int(3) DEFAULT NULL,
  `chip` int(2) DEFAULT NULL,
  `m1` int(2) DEFAULT NULL,
  `m2` int(5) DEFAULT NULL,
  `schloss` int(2) DEFAULT NULL,
  `koffer` int(6) DEFAULT -1,
  `dmg` varchar(150) DEFAULT 'n/A',
  `oel` int(3) DEFAULT 100,
  `drogen4` int(3) DEFAULT NULL,
  `vw` int(2) DEFAULT 0,
  `akopplung` int(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `furniture`
--

CREATE TABLE `furniture` (
  `id` int(11) NOT NULL,
  `slot` int(2) DEFAULT NULL,
  `hausid` int(3) DEFAULT NULL,
  `model` int(11) DEFAULT NULL,
  `mx` double DEFAULT 0,
  `my` double DEFAULT 0,
  `mz` double DEFAULT 0,
  `mxx` double DEFAULT 0,
  `myy` double DEFAULT 0,
  `mzz` double DEFAULT 0,
  `akt` int(2) DEFAULT 1,
  `vw` int(2) DEFAULT 0,
  `fmuni` int(5) DEFAULT NULL,
  `fweapon` int(5) DEFAULT NULL,
  `schild` varchar(55) DEFAULT 'n/A'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `geschenke`
--

CREATE TABLE `geschenke` (
  `id` int(11) NOT NULL,
  `pid` int(11) DEFAULT NULL,
  `geschenke` varchar(305) DEFAULT '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `geschenkepos`
--

CREATE TABLE `geschenkepos` (
  `id` int(11) NOT NULL,
  `sperreX` double DEFAULT NULL,
  `sperreY` double DEFAULT NULL,
  `sperreZ` double DEFAULT NULL,
  `sperreA` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `gutscheine`
--

CREATE TABLE `gutscheine` (
  `id` int(2) NOT NULL,
  `code` varchar(10) DEFAULT NULL,
  `gutschein` int(2) DEFAULT NULL,
  `pid` int(11) DEFAULT 999
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `handymasten`
--

CREATE TABLE `handymasten` (
  `id` int(11) NOT NULL,
  `PosX` float NOT NULL,
  `PosY` float NOT NULL,
  `PosZ` float NOT NULL,
  `Betreiber` int(2) NOT NULL,
  `Groesse` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `handymasten`
--

INSERT INTO `handymasten` (`id`, `PosX`, `PosY`, `PosZ`, `Betreiber`, `Groesse`) VALUES
(0, 1743.96, -1376.6, 31.939, 1, 0),
(68, 2650.07, 1211.37, 26.9233, 0, 0),
(67, 1062.93, 1235.21, 27.595, 0, 0),
(66, -771.347, 1475.88, 28.6515, 0, 0),
(1, -2528.01, 2346.27, 13.2361, 0, 0),
(2, 1029.39, -714.403, 119.345, 1, 1),
(3, 1047.05, -697.631, 121.254, 2, 1),
(4, 1057.96, -726.615, 116.833, 3, 1),
(13, 27.9086, -1194.81, 8.60304, 1, 1),
(14, 592.783, -1274.05, 64.1875, 0, 0),
(15, 1172.38, -1179.48, 91.4111, 0, 0),
(17, 2699.38, -1372.24, 70.9922, 0, 0),
(18, 2259.64, -1078.45, 56.2031, 0, 0),
(20, 1097.82, -2036.76, 82.1058, 0, 0),
(21, 1247.08, -1679.93, 34.8047, 0, 0),
(22, 1816.53, -1302.19, 131.734, 0, 0),
(23, 1739.89, -334.159, 82.7184, 1, 1),
(24, 1288.37, 283.597, 27.5555, 0, 0),
(25, 1732.33, 955.256, 17.6145, 1, 1),
(26, -130.615, -299.836, 31.2208, 2, 1),
(27, -2248.41, 477.329, 73.7747, 1, 0),
(28, 1609.54, 1769.09, 37.3125, 1, 2),
(30, 1633.43, 1449.48, 31.4824, 0, 1),
(31, 1043, 1014.03, 55.3047, 1, 1),
(32, 240.831, 2400.68, 16.4844, 1, 1),
(33, -220.319, 2718.36, 66.827, 2, 1),
(34, -324.725, 2789.64, 92.0419, 1, 1),
(35, -794.296, 2753.51, 50.7551, 1, 1),
(36, 1222.69, -1448.66, 45.2224, 1, 0),
(37, -2587.29, 120.226, 17.6406, 1, 0),
(38, -1834.04, 1064.03, 145.133, 1, 1),
(39, 2073.01, -1424.18, 48.3315, 1, 0),
(40, 249.352, -133.392, 1008.21, 1, 0),
(41, 1400.1, -1686.65, 39.5469, 1, 0),
(42, 2018.06, -1794.45, 26.135, 1, 0),
(43, 2657.9, -1529.73, 47.0547, 1, 0),
(44, -83.1232, -245.721, 53.2173, 1, 0),
(45, 2274.15, 77.4692, 34.9834, 1, 0),
(46, 288.87, -1611.29, 114.416, 1, 0),
(47, 1076.22, -1549.43, 29.9143, 1, 0),
(48, 1766.38, -2215.56, 23.6551, 1, 0),
(49, 2740.25, -2365.89, 28.9158, 1, 0),
(50, 2759.52, -1641.82, 32.119, 1, 0),
(52, 2676.14, -1297.56, 72.9453, 1, 0),
(53, 2279.11, 1020.98, 79.5547, 1, 1),
(54, 2225.81, 1148.56, 79.5547, 2, 1),
(55, 2464.93, 2266.67, 91.63, 1, 1),
(56, 1889.27, 655.75, 19.3469, 1, 0),
(57, -330.093, 1541.41, 80.5127, 1, 1),
(58, -1212.35, 2000.87, 134.324, 1, 1),
(59, -2495.66, 2817.6, 166.731, 1, 1),
(60, -2875.18, 2609.78, 271.177, 2, 1),
(9, -2354.98, 912.4, 93.6308, 1, 1),
(8, -1942.21, 532.746, 208.202, 1, 0),
(7, -2529.65, -671.861, 149.008, 1, 1),
(6, -2529.52, -680.726, 149.008, 2, 1),
(5, -2374.32, -1585.38, 499.625, 1, 1),
(61, -1714.37, 2643.6, 1242.59, 1, 0),
(62, -1687.7, 2602.6, 1222.91, 1, 0),
(63, -1943.75, 758.828, 107.697, 1, 0),
(64, 1317, 158.668, 20.4008, 1, 1),
(12, -1719.36, 2569.98, 1227.78, 1, 1),
(11, -1707.56, 2566.87, 1219.44, 2, 1),
(10, -1690.21, 2547.13, 1211.63, 3, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `hausboot`
--

CREATE TABLE `hausboot` (
  `id` int(11) NOT NULL,
  `inhaber` varchar(24) DEFAULT NULL,
  `posx` double DEFAULT NULL,
  `posy` double DEFAULT NULL,
  `posz` double DEFAULT NULL,
  `posa` double DEFAULT NULL,
  `tank` int(3) DEFAULT NULL,
  `leben` int(5) DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  `farbe1` int(3) DEFAULT NULL,
  `farbe2` int(3) DEFAULT NULL,
  `kilometer` int(5) DEFAULT NULL,
  `meter` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `hausinteriors`
--

CREATE TABLE `hausinteriors` (
  `id` int(11) NOT NULL,
  `interior` int(2) NOT NULL,
  `preis` int(7) NOT NULL,
  `kaufbar` int(2) NOT NULL,
  `was` int(2) NOT NULL,
  `einzig` int(2) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `hausinteriors`
--

INSERT INTO `hausinteriors` (`id`, `interior`, `preis`, `kaufbar`, `was`, `einzig`, `x`, `y`, `z`) VALUES
(1, 3, 50000, 1, 0, 0, 2496, -1692.08, 1014.74),
(2, 2, 10000, 1, 0, 0, 267.373, 304.925, 999.148),
(3, 5, 175000, 1, 0, 0, 1260.74, -785.394, 1091.91),
(4, 3, 65000, 1, 0, 0, 235.318, 1186.77, 1080.26),
(5, 2, 60000, 1, 0, 0, 225.757, 1240, 1082.15),
(6, 1, 55000, 1, 0, 0, 223.079, 1287.47, 1082.14),
(7, 7, 100000, 1, 0, 0, 225.631, 1022.48, 1084.07),
(8, 15, 60000, 1, 0, 0, 295.155, 1472.42, 1080.26),
(9, 15, 60000, 1, 0, 0, 328.022, 1477.84, 1084.44),
(10, 15, 60000, 1, 0, 0, 387.226, 1471.8, 1080.19),
(11, 9, 15000, 1, 0, 0, 2254.97, -1139.98, 1050.63),
(12, 10, 45000, 1, 0, 0, 2270.42, -1210.48, 1047.56),
(13, 10, 20000, 1, 0, 0, 2259.38, -1135.88, 1050.64),
(14, 2, 45000, 1, 0, 0, 2468.84, -1698.24, 1013.51),
(15, 3, 50000, 1, 0, 0, 2495.96, -1692.08, 1014.74),
(16, 4, 25000, 1, 0, 0, 302.181, 300.723, 999.148),
(17, 6, 10000, 1, 0, 0, 344.013, 305.021, 999.148),
(18, 1, 15000, 1, 0, 0, 244.412, 305.033, 999.148),
(19, 5, 75000, 1, 0, 0, 226.495, 1114.29, 1080.99),
(20, 12, 85000, 1, 0, 0, 2324.51, -1149.15, 1050.71),
(21, 11, 100000, 1, 0, 0, 501.948, -67.5629, 998.758),
(22, 1, 150000, 1, 0, 0, -794.966, 489.971, 1376.2),
(23, 18, 75000, 1, 0, 0, -229.29, 1401.25, 27.765),
(24, 0, 125000, 0, 0, 0, 584.384, -876.831, 87.0449),
(25, 10, 0, 0, 0, 1, -672.909, 940.757, 12.7659),
(26, 7, 95000, 0, 0, 1, 1522.64, -1267.3, 917.296),
(27, 15, 175000, 1, 0, 0, 2214.9, -1150.53, 1025.8),
(28, 10, 110000, 1, 0, 0, 837.295, -604.716, 799.986),
(29, 0, 0, 0, 0, 0, 287.568, -1611.93, 47.0014),
(30, 0, 0, 0, 0, 0, 287.553, -1611.93, 51.5025),
(31, 0, 0, 0, 0, 0, 287.544, -1612.03, 56.0036),
(32, 0, 0, 0, 0, 0, 287.544, -1612.03, 60.5047),
(33, 0, 0, 0, 0, 0, 287.544, -1612.03, 65.0058),
(34, 0, 0, 0, 0, 0, 287.544, -1612.03, 69.5069),
(35, 0, 0, 0, 0, 0, 287.544, -1612.03, 73.9923),
(36, 0, 0, 0, 0, 0, 287.544, -1612.03, 78.4934),
(37, 0, 0, 0, 0, 0, 287.544, -1612.03, 82.9945),
(38, 0, 0, 0, 0, 0, 287.544, -1612.03, 87.4956),
(39, 0, 0, 0, 0, 0, 287.544, -1612.03, 91.9967),
(40, 0, 0, 0, 0, 0, 287.544, -1612.03, 96.4978),
(41, 10, 255000, 0, 0, 1, 2786.45, 2009.86, 2175.3),
(42, 10, 85000, 0, 0, 0, 2269.6, -1805.94, 1301.7),
(43, 1, 250000, 0, 0, 0, 2233.92, 1714.31, 1012.38),
(44, 10, 35000, 0, 0, 0, 769.085, 705.008, 993.063),
(45, 0, 115000, 0, 0, 1, 1699.46, -1172.25, 23.8643),
(46, 10, 50000, 0, 0, 0, -452.726, -517.045, 2031.74),
(47, 10, 35000, 1, 0, 0, 1465.95, -680.505, 2094.82),
(48, 10, 8500, 1, 0, 0, 705.279, 2125.69, 1084.78),
(49, 11, 8500, 1, 0, 0, 705.279, 2125.69, 1084.78),
(50, 12, 95000, 1, 0, 0, 88.5948, 1702.81, 100001),
(51, 12, 175, 1, 1, 0, -1821.8, 801.028, 128.204),
(52, 12, 85000, 0, 0, 0, 113.472, 1710.74, 193.128),
(53, 3, 65000, 0, 0, 0, 418.582, -84.3669, 1001.8),
(54, 12, 65000, 0, 0, 0, 1454.1, -791.339, 1080.47),
(55, 14, 30000, 1, 0, 0, 2763.92, -1449.19, 1039.29),
(56, 12, 55000, 1, 0, 0, 2499.49, -2140.37, 1443.8),
(57, 9, 85000, 0, 0, 0, 364.897, -11.7435, 1001.85),
(58, 1, 67500, 0, 0, 0, -2158.62, 643.142, 1052.38),
(59, 1, 62500, 0, 0, 0, 681.522, -451.269, -25.6172),
(60, 12, 55000, 0, 0, 0, 2074.81, -1564.79, 2120.77),
(61, 12, 55000, 1, 0, 0, -1317.36, 55.1278, 2014.22),
(62, 11, 42500, 0, 0, 0, 263.229, 1412.79, 1082.44),
(63, 14, 45000, 0, 0, 0, 2263.64, -1795.44, 1348.45),
(64, 13, 45000, 0, 0, 0, 2073.62, -1585.71, 1117.54),
(65, 14, 55000, 0, 0, 0, 2375.3, -1962.76, 3513.99),
(66, 12, 65000, 1, 0, 0, -1435.8, -1086.51, 2287.07),
(67, 1, 100000, 1, 0, 0, 965.378, 2107.83, 1011.03),
(68, 2, 100000, 1, 0, 0, 2541.62, -1304, 1025.07),
(69, 0, 95000, 1, 0, 0, 1062.15, 2077.08, 10.8203),
(70, 1, 45000, 1, 0, 0, 2264.4, 1675.77, 1090.45),
(71, 1, 95000, 1, 0, 0, 455.169, -22.5424, 999.734),
(72, 11, 65000, 0, 0, 0, 854.35, 493.452, 1639.51),
(73, 1, 87500, 0, 0, 0, 1567.98, -1881.35, 2119.11),
(74, 12, 125000, 1, 0, 0, -1427.67, -967.615, 2005.36),
(75, 12, 35000, 0, 0, 0, 2248.61, -1285.6, 1049.02),
(76, 10, 45000, 0, 0, 0, 2859.88, -1859.84, 873.414),
(77, 17, 50000, 0, 0, 0, -204.46, -9.0817, 1002.27),
(78, 11, 125000, 1, 0, 0, 776.915, -1036.27, 0.467812),
(79, 9, 115000, 1, 0, 0, 2317.8, -1026.76, 1050.22),
(80, 2, 80000, 1, 0, 0, 447.031, 1397.06, 1084.3),
(81, 4, 30000, 1, 0, 0, 260.987, 1284.3, 1080.26),
(82, 10, 85000, 1, 0, 0, 24.0007, 1340.16, 1084.38),
(83, 5, 105000, 1, 0, 0, 140.252, 1365.93, 1083.86),
(84, 9, 80000, 1, 0, 0, 83.0637, 1322.28, 1083.87),
(85, 11, 25000, 1, 0, 0, 2282.95, -1140.29, 1050.9),
(86, 0, 75000, 0, 0, 1, 631.268, -1539.76, 396.704),
(87, 12, 25000, 0, 0, 0, -1945.95, 1359.53, 1000.09),
(88, 11, 55000, 0, 0, 1, -480.952, -17.4505, 1200.31),
(89, 6, 150000, 1, 0, 0, 1370.99, -758.814, 1091.91),
(90, 1, 95000, 0, 0, 1, -326.258, -466.05, 1457.72),
(91, 6, 42500, 0, 0, 0, 132.146, -118.466, 651.773),
(92, 6, 30500, 1, 0, 0, -567.437, -1255.57, 1432.08),
(93, 2, 35000, 1, 0, 0, 411.639, -23.1651, 1001.8),
(94, 3, 35000, 1, 0, 0, 418.616, -84.3674, 1001.8),
(95, 12, 35000, 1, 0, 0, 411.982, -54.4451, 1001.9),
(96, 11, 41500, 0, 0, 1, 427.339, -865.879, 1485.4),
(97, 7, 81750, 1, 0, 0, 1032.72, -962.806, 1339.34),
(98, 5, 31500, 0, 0, 1, 2187.86, -1244.85, 1529.26),
(99, 10, 25500, 1, 0, 0, -380.131, 548.796, 2016.52),
(100, 1, 90500, 1, 0, 0, 2020.43, -1770.12, 25.5299),
(101, 9, 25500, 0, 0, 0, 585.413, 1120.78, 1083.97),
(102, 7, 35500, 0, 0, 0, 483.224, 973.461, 1083.88),
(103, 13, 75500, 0, 0, 1, 1628.07, 2709.38, 1501.09),
(104, 1, 85500, 0, 0, 0, 1210.91, -916.51, 2919.87),
(105, 11, 55500, 1, 0, 0, 1048.31, -337.414, 687.088),
(106, 1, 65500, 0, 0, 1, 1210.5, -537.245, 2158.44),
(107, 0, 315000, 0, 0, 1, 1502.89, -2437.52, 1909.86),
(108, 1, 105000, 0, 0, 0, 523.752, 249.146, 2001.09),
(109, 13, 45000, 0, 0, 0, 1181.35, -945.356, 6588.56),
(110, 6, 25000, 0, 0, 1, 343.442, 1152.23, 704.552),
(111, 6, 30000, 1, 0, 0, 224.549, 1490.84, 1051.49),
(112, 6, 25000, 1, 0, 0, 828.194, -27.1819, 1002.32),
(113, 9, 27500, 0, 0, 0, -1314.73, -79.5029, 1582.15),
(114, 13, 25000, 0, 0, 0, 1024.5, -4103, 3242.15),
(115, 13, 25000, 0, 0, 0, 4979.52, -2603.98, 3995.38),
(116, 3, 45000, 1, 0, 0, 2155.05, -1222.44, 1053.09),
(117, 1, 175000, 1, 0, 0, 1753.65, 194.625, 2002.08),
(118, 11, 35000, 0, 0, 0, -64.2595, 195.955, 1000.09),
(119, 11, 45000, 0, 0, 0, 1452.55, -942.269, 1000.09),
(120, 11, 55000, 1, 0, 0, 1065.68, -1381.99, 1269.75),
(121, 14, 35000, 0, 0, 0, 775.375, 94.4912, 749.85),
(122, 1, 65000, 0, 0, 1, 223.044, 1289.26, 1082.2),
(123, 6, 55000, 1, 0, 0, 774.141, -50.4773, 1000.59),
(124, 14, 28500, 0, 0, 0, 2169.3, -1651.89, 7014.73),
(125, 13, 65000, 1, 0, 1, 1773.89, -1859.75, 606.636),
(126, 15, 45000, 0, 0, 0, 1011.09, -1392.71, 1611.56),
(127, 14, 38500, 1, 0, 0, 245.177, 535.666, 1002.38),
(128, 15, 275000, 0, 0, 1, -1044.35, 1894.89, 2000.19),
(129, 13, 110000, 1, 0, 0, 2504.24, 5990.83, 5001.09),
(130, 11, 85000, 0, 0, 0, 2634.42, 1821.42, -1.5938),
(131, 0, 195000, 0, 0, 0, 1790.13, -1384.35, 15.7364),
(132, 12, 90000, 1, 0, 0, 1053.26, -1412.49, 201.032),
(133, 9, 50000, 0, 0, 1, 2345.59, -1462.45, -18.9141),
(134, 9, 65000, 1, 0, 0, 1368.37, -1796.86, 501.086),
(135, 12, 25000, 1, 0, 0, 2513.07, -1729.06, 778.637),
(136, 6, 35000, 1, 0, 0, -1344.91, -1081.72, 3725.15),
(137, 10, 185000, 0, 0, 1, 200.862, 2488.75, 16.5387),
(138, 3, 210000, 1, 0, 0, 390.126, 173.83, 1008.38),
(139, 18, 165000, 1, 0, 0, 1726.95, -1637.96, 20.223),
(140, 6, 65000, 1, 0, 0, -27.3645, -58.2692, 1003.55),
(141, 10, 75000, 0, 0, 0, -2037.21, -691.587, -10.3141),
(142, 11, 45000, 0, 0, 1, 1053.14, -1128.95, 332.39),
(143, 15, 76500, 0, 0, 0, -549.578, -3184.37, 5472.83),
(144, 11, 155000, 0, 0, 0, 2857.37, -1401.55, 311.728),
(145, 11, 66250, 0, 0, 0, 749.702, -396.447, 995.659),
(146, 11, 95250, 0, 0, 1, 2596.15, -1311.22, 1613.28),
(147, 12, 165000, 0, 0, 0, 1303.26, -1045.22, 1149.36),
(148, 0, 250000, 0, 0, 0, 1433.33, -2769.03, 3.2849),
(149, 11, 75000, 0, 0, 1, -1757.09, -1393.08, 1757.58),
(150, 12, 80000, 0, 0, 1, -2485.54, -2600.84, 201.612),
(151, 12, 40000, 1, 0, 0, 2683.61, 2144.81, 1002.41),
(152, 12, 10000, 1, 0, 0, 2710.81, 2144.86, 1004.86),
(153, 12, 35000, 1, 0, 0, 2733.72, 2155.85, 1001.15),
(154, 12, 30000, 1, 0, 0, 2721.05, 2168.46, 998.935),
(155, 12, 35000, 1, 0, 0, 2683.48, 2144.8, 1002.41),
(156, 12, 20000, 1, 0, 0, 2674.71, 2121.33, 1003.61),
(157, 12, 20000, 1, 0, 0, 2648.26, 2132.43, 1002.86),
(158, 12, 30000, 1, 0, 0, 2654.62, 2144.51, 1002.72),
(159, 12, 45000, 1, 0, 0, 2624.93, 2142.24, 1001.28),
(160, 12, 40000, 1, 0, 0, 2616.69, 2131.48, 1002.86),
(161, 12, 15000, 1, 0, 0, 2591.77, 2124.56, 1004.49),
(162, 12, 50000, 1, 0, 0, 2572.28, 2139.63, 999.898),
(163, 12, 20000, 1, 0, 0, 2571.59, 2115.52, 1002.75),
(164, 12, 20000, 1, 0, 0, 2541.48, 2113.41, 1002.68),
(165, 12, 15000, 1, 0, 0, 2533.02, 2138.92, 1003.01),
(166, 12, 20000, 1, 0, 0, 2525.11, 2144.83, 1002.97),
(167, 12, 15000, 1, 0, 0, 2516.71, 2113.45, 1002.68),
(168, 12, 25000, 1, 0, 0, 2494.52, 2110.57, 1002.91),
(169, 12, 25000, 1, 0, 0, 2498.27, 2155.32, 1002.88),
(170, 12, 55000, 1, 0, 0, 2711.81, 2117.43, 1001.29),
(171, 12, 500000, 0, 0, 0, 2515.15, -1529.5, 1828.47),
(172, 12, 55000, 1, 0, 0, -2361.86, -236.034, 677.752),
(173, 12, 75000, 0, 0, 1, -515.6, -817.684, 1755.22),
(174, 8, 67000, 1, 0, 0, 2807.56, -1174.46, 1025.57),
(175, 12, 35000, 1, 0, 0, 2432, -2239.72, 7025.16),
(176, 12, 90000, 1, 0, 0, 1865.87, -1064, 1820.77),
(177, 3, 45000, 1, 0, 0, -100.362, -24.7749, 1000.72),
(178, 10, 18500, 1, 0, 0, 422.532, 2536.54, 10),
(179, 1, 35000, 1, 0, 0, 2218.15, -1076.35, 1050.48),
(180, 2, 60000, 1, 0, 0, 2237.57, -1081.61, 1049.02),
(181, 5, 23000, 1, 0, 0, 2233.68, -1115.13, 1050.88),
(182, 6, 20000, 1, 0, 0, 2308.79, -1212.82, 1049.02),
(183, 6, 55000, 1, 0, 0, 2196.79, -1204.35, 1049.02),
(184, 12, 70000, 0, 0, 1, 1412.38, -792.221, 2064.3),
(185, 12, 30000, 0, 0, 0, 2181.6, -1185.92, 1634.83),
(186, 0, 150000, 0, 0, 1, 1790.94, -1297.96, 22.2109),
(187, 0, 150000, 0, 0, 1, 1790.94, -1297.96, 27.6719),
(188, 0, 150000, 0, 0, 1, 1790.95, -1297.96, 33.125),
(189, 0, 150000, 0, 0, 1, 1790.95, -1297.96, 38.5781),
(190, 0, 150000, 0, 0, 1, 1790.95, -1297.96, 44.0391),
(191, 0, 150000, 0, 0, 1, 1790.95, -1297.96, 49.4453),
(192, 0, 150000, 0, 0, 1, 1790.95, -1297.96, 54.9062),
(193, 0, 150000, 0, 0, 1, 1790.95, -1297.96, 60.3594),
(194, 0, 150000, 0, 0, 1, 1790.95, -1297.96, 65.8125),
(195, 0, 150000, 0, 0, 1, 1790.95, -1297.96, 71.2734),
(196, 0, 150000, 0, 0, 1, 1791.19, -1298, 76.6719),
(197, 0, 150000, 0, 0, 1, 1791.19, -1298, 82.1328),
(198, 0, 150000, 0, 0, 1, 1790.93, -1297.95, 87.5859),
(199, 0, 150000, 0, 0, 1, 1790.93, -1297.95, 93.0391),
(200, 0, 150000, 0, 0, 1, 1790.93, -1297.95, 98.5),
(201, 0, 150000, 0, 0, 1, 1790.94, -1297.98, 109.359),
(202, 0, 150000, 0, 0, 1, 1790.94, -1297.93, 114.812),
(203, 0, 150000, 0, 0, 1, 1790.94, -1297.96, 120.266),
(204, 5, 70000, 1, 0, 0, 318.573, 1114.9, 1083.88),
(205, 12, 25000, 1, 0, 0, 1131.06, 2074.29, 1509.62),
(206, 12, 55000, 1, 0, 0, 1066.34, 2050.76, 1503.17),
(207, 5, 175000, 1, 0, 0, 1298.92, -796.711, 1084.01),
(208, 6, 150000, 1, 0, 0, 1409.01, -770.129, 1084.01),
(209, 12, 25000, 0, 0, 1, 9.66597, -76.0917, 1004.69),
(210, 12, 300000, 0, 0, 1, -2600.39, 1000.15, 2745.54),
(211, 12, 210000, 0, 0, 1, -685.156, 954.283, 3501.09),
(212, 13, 750000, 0, 0, 1, 1609.2, 736.752, 2038.25),
(213, 13, 750000, 0, 0, 1, 637.029, 842.707, 2022.42),
(214, 12, 95000, 1, 0, 0, 963.32, 395.542, 2269.65),
(215, 12, 185000, 1, 0, 0, 481.016, 169.531, 1008.38),
(216, 12, 75, 1, 1, 0, 1592.39, 1622.14, 1612.87),
(217, 14, 65000, 0, 0, 1, 2127.91, -77.4876, 1852.33),
(218, 12, 95000, 0, 0, 1, 2758.47, 430.793, 1578.69),
(219, 12, 90000, 0, 0, 1, 2168.89, 966.015, 611.925),
(220, 12, 75000, 0, 0, 1, 2066.23, 183.826, 1944.68),
(221, 12, 89000, 0, 0, 1, 1074.43, 1741.25, 869.087),
(222, 13, 85250, 0, 0, 1, 1267.8, 750.959, 1084.56),
(223, 12, 35000, 0, 0, 1, 1472.16, 1822.7, 60.665),
(224, 12, 89000, 0, 0, 1, 2324.47, 50.0847, 917.863),
(225, 12, 63500, 0, 0, 1, 1703.22, -130.744, 2355.43),
(226, 12, 72500, 0, 0, 0, 1944.37, 62.9065, 1081.97),
(227, 12, 95500, 0, 0, 1, 1020.47, -1594.82, 1921.32),
(228, 14, 215000, 1, 0, 0, 616.493, -1683.51, 2699.3),
(229, 14, 95000, 0, 0, 1, 1286.07, -1690.93, 2855.78),
(230, 14, 215000, 0, 0, 1, 1918.73, -1682.96, 1639.72),
(231, 12, 123000, 0, 0, 1, 1232.48, 495.811, 728.798),
(232, 14, 105000, 0, 0, 1, 2248.5, 1917.03, 947.351),
(233, 16, 95000, 0, 0, 1, 2338.66, 533.336, 2487.97),
(234, 15, 85000, 0, 0, 1, 2287.21, 1029.59, 1084.32),
(235, 17, 85000, 0, 0, 1, 2305.26, 1026.46, 1089.13),
(236, 5, 115000, 0, 0, 1, 1530.39, 1148.84, 832.972),
(237, 11, 55000, 0, 0, 1, 1424.78, -342.383, 1143.27),
(238, 8, 115000, 0, 0, 1, 1370.98, 384.878, 2545.75);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `hddbans`
--

CREATE TABLE `hddbans` (
  `id` int(11) NOT NULL,
  `IP` varchar(20) DEFAULT NULL,
  `GPCI` varchar(45) DEFAULT NULL,
  `name` varchar(24) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `hotelzimmer`
--

CREATE TABLE `hotelzimmer` (
  `id` int(11) NOT NULL,
  `h1` int(11) DEFAULT NULL,
  `h2` int(11) DEFAULT NULL,
  `h3` int(11) DEFAULT NULL,
  `h4` int(11) DEFAULT NULL,
  `h5` int(11) DEFAULT NULL,
  `h6` int(11) DEFAULT NULL,
  `h7` int(11) DEFAULT NULL,
  `h8` int(11) DEFAULT NULL,
  `h9` int(11) DEFAULT NULL,
  `h10` int(11) DEFAULT NULL,
  `h11` int(11) DEFAULT NULL,
  `h12` int(11) DEFAULT NULL,
  `h13` int(11) DEFAULT NULL,
  `h14` int(11) DEFAULT NULL,
  `h15` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `houses`
--

CREATE TABLE `houses` (
  `hID` int(11) DEFAULT NULL,
  `hPreis` int(11) DEFAULT NULL,
  `hLevel` int(2) DEFAULT NULL,
  `hBesitzer` varchar(26) DEFAULT NULL,
  `hInterior` int(2) DEFAULT NULL,
  `hMieter` int(2) DEFAULT NULL,
  `hMaxMieter` int(2) DEFAULT NULL,
  `hLock` int(2) DEFAULT NULL,
  `hRent` int(11) DEFAULT NULL,
  `hDrogen` int(11) DEFAULT NULL,
  `hMats` int(11) DEFAULT NULL,
  `hWaffenschrank` int(2) DEFAULT NULL,
  `hGun0` int(11) DEFAULT NULL,
  `hGun1` int(11) DEFAULT NULL,
  `hGun2` int(2) DEFAULT NULL,
  `hGun3` int(2) DEFAULT NULL,
  `hGun4` int(2) DEFAULT NULL,
  `hAmmo0` int(11) DEFAULT NULL,
  `hAmmo1` int(11) DEFAULT NULL,
  `hAmmo2` int(3) DEFAULT NULL,
  `hAmmo3` int(3) DEFAULT NULL,
  `hAmmo4` int(3) DEFAULT NULL,
  `hKasse` int(11) DEFAULT NULL,
  `hHeal` int(2) DEFAULT NULL,
  `hOwned` int(2) DEFAULT NULL,
  `hVersteck` int(2) DEFAULT NULL,
  `hX` float DEFAULT NULL,
  `hY` float DEFAULT NULL,
  `hZ` float DEFAULT NULL,
  `hbuero` int(2) DEFAULT NULL,
  `hBueroName` varchar(64) DEFAULT 'n/A',
  `hSchild` int(4) DEFAULT -1,
  `hSchildName` varchar(64) DEFAULT 'n/A',
  `hsx` float DEFAULT NULL,
  `hsy` float DEFAULT NULL,
  `hsz` float DEFAULT NULL,
  `hsa` float DEFAULT NULL,
  `hkay` int(5) DEFAULT -1,
  `heintritt` int(4) DEFAULT NULL,
  `hDrogen2` int(3) DEFAULT NULL,
  `hDrogen3` int(3) DEFAULT NULL,
  `hSkin0` int(3) DEFAULT NULL,
  `hSkin1` int(3) DEFAULT NULL,
  `hSkin2` int(3) DEFAULT NULL,
  `hSkin3` int(3) DEFAULT NULL,
  `hSkin4` int(3) DEFAULT NULL,
  `hStrom` int(2) DEFAULT 21,
  `hspawnworld` int(4) DEFAULT NULL,
  `hspawninterior` int(4) DEFAULT NULL,
  `hlicht` int(2) DEFAULT NULL,
  `hwpin` int(4) DEFAULT NULL,
  `hwdog` int(2) DEFAULT NULL,
  `hapart` int(2) DEFAULT NULL,
  `hlauts` int(2) DEFAULT 0,
  `hsong` varchar(128) DEFAULT 'n/A',
  `harmor` int(3) DEFAULT 0,
  `hdrogen4` int(3) DEFAULT NULL,
  `hrucksack` int(6) DEFAULT -1,
  `hwatche` int(2) DEFAULT 0,
  `hklingels` int(2) DEFAULT NULL,
  `hdefi` varchar(128) DEFAULT 'n/A',
  `hgates` int(2) DEFAULT NULL,
  `hgarage` int(2) DEFAULT 0,
  `hsc` int(2) DEFAULT NULL,
  `hdiebesgut` int(2) DEFAULT 0,
  `hversteigert` int(2) DEFAULT 0,
  `heisen` int(3) DEFAULT NULL,
  `hfirma` int(2) DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `houses`
--

INSERT INTO `houses` (`hID`, `hPreis`, `hLevel`, `hBesitzer`, `hInterior`, `hMieter`, `hMaxMieter`, `hLock`, `hRent`, `hDrogen`, `hMats`, `hWaffenschrank`, `hGun0`, `hGun1`, `hGun2`, `hGun3`, `hGun4`, `hAmmo0`, `hAmmo1`, `hAmmo2`, `hAmmo3`, `hAmmo4`, `hKasse`, `hHeal`, `hOwned`, `hVersteck`, `hX`, `hY`, `hZ`, `hbuero`, `hBueroName`, `hSchild`, `hSchildName`, `hsx`, `hsy`, `hsz`, `hsa`, `hkay`, `heintritt`, `hDrogen2`, `hDrogen3`, `hSkin0`, `hSkin1`, `hSkin2`, `hSkin3`, `hSkin4`, `hStrom`, `hspawnworld`, `hspawninterior`, `hlicht`, `hwpin`, `hwdog`, `hapart`, `hlauts`, `hsong`, `harmor`, `hdrogen4`, `hrucksack`, `hwatche`, `hklingels`, `hdefi`, `hgates`, `hgarage`, `hsc`, `hdiebesgut`, `hversteigert`, `heisen`, `hfirma`) VALUES
(0, 5000, 0, 'Frei', 65, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 216.113, -252.61, 2.026, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(1, 1200000, 0, 'Frei', 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -2719.29, -319.091, 7.842, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 140, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(2, 4000000, 0, 'Frei', 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1122.71, -2037.04, 69.888, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(3, 1750000, 0, 'Frei', 127, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1788.79, -1118.87, 24.083, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(4, 2000000, 0, 'Frei', 137, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1726.99, -1636.62, 20.215, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(5, 45000, 0, 'Frei', 27, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2277.74, 51.34, 26.482, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(6, 50000, 0, 'Frei', 160, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2364, 116.125, 28.44, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(7, 30000, 0, 'Frei', 91, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2480.88, -1536.4, 24.18, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(8, 12, 0, 'Frei', 20, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1311, 227.944, 19.562, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(9, 5000, 0, 'Frei', 215, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 1596.07, 1610.86, 1616.29, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 474, 12, 0, 8879, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(10, 150000, 0, 'Frei', 169, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 854.356, 368.023, 21.885, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(11, 5000, 0, 'Frei', 65, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2242.52, -1170.78, 1029.8, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 712, 15, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(12, 85000, 0, 'Frei', 215, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2323.85, 136.453, 28.44, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 140, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(13, 70000, 0, 'Frei', 50, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 47, 0, 0, 0, 0, 0, 0, 0, 0, -2710.72, 967.471, 54.458, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1323, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(14, 150000, 0, 'Frei', 215, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 213.218, -183.485, 1.577, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(15, 30000, 0, 'Frei', 161, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -360.846, 1141.78, 20.937, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(16, 5000, 0, 'Frei', 60, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 166.214, -118.234, 4.894, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(17, 5000, 0, 'Frei', 69, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 336.903, -1334.82, 14.505, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(18, 1, 0, 'Frei', 208, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2327.68, -124.579, 27.482, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(19, 27000, 0, 'Frei', 50, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 933.619, -1805.2, 13.843, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(20, 25000, 0, 'Frei', 225, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2063.93, 179.673, 1948.73, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 12, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(21, 28000, 0, 'Frei', 153, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 992.611, -1817.63, 13.894, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 140, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(22, 2500, 0, 'Frei', 3, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 160.632, -102.664, 4.894, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(23, 500001, 0, 'Frei', 138, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1329.16, -984.705, 33.895, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(24, 45000, 0, 'Frei', 96, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 561.934, -1506.88, 14.548, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(25, 65000, 0, 'Frei', 96, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1438.67, -1544.84, 102.257, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(26, 125000, 0, 'Frei', 116, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1285.26, -1067.32, 31.677, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(27, 60500, 0, 'Frei', 116, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1132.53, -873.476, 43.388, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(28, 7500, 0, 'Frei', 134, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2590.49, 101.022, 27.177, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(29, 48462, 0, 'Frei', 96, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1604.48, -2177.55, 13.553, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(30, 5000, 0, 'Frei', 17, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2467.89, -1424.4, 23.75, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(31, 1500000, 0, 'Frei', 213, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1095.01, -647.914, 113.648, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 1122, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(32, 265000, 0, 'Frei', 136, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 543.533, -1298.06, 16.482, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(33, 55000, 0, 'Frei', 11, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2551.22, -5.497, 27.673, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(34, 500000, 0, 'Frei', 130, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1789.22, -1385.29, 15.755, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(35, 1, 0, 'Frei', 170, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2518.11, -1536.83, 24.377, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(36, 15000, 0, 'Frei', 161, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2508.25, -1998.37, 13.902, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(37, 10000, 0, 'Frei', 134, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 751.728, 375.203, 23.374, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(38, 55000, 0, 'Frei', 50, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 202.24, 1871.84, 13.14, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(39, 25000, 0, 'Frei', 41, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2757.74, -1572.57, 18.913, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(40, 5000, 0, 'Frei', 65, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2239.98, -1170.73, 1029.8, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 712, 15, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(41, 5000, 0, 'Frei', 65, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 160.632, -112.541, 4.894, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(42, 850000, 0, 'Frei', 175, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1923.63, 596.919, 10.847, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 61, 0, 0, 0, 0, 0, 0, 1234, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(43, 30000, 0, 'Frei', 158, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 827.731, -858.012, 70.33, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(44, 55000, 0, 'Frei', 131, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1374.91, 469.269, 20.18, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(45, 65000, 0, 'Frei', 131, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2251.86, 80.041, 26.701, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1199, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(46, 300000, 0, 'Frei', 78, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 432.122, -1253.93, 51.58, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(47, 61000, 0, 'Frei', 73, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1421.73, -886.231, 50.686, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(48, 5000, 0, 'Frei', 65, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1596.23, 1621.34, 1612.89, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 695, 12, 0, 3157, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(49, 5000, 0, 'Frei', 205, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1373.05, -1489.98, 13.55, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(50, 50000, 0, 'Frei', 6, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1540.47, -851.372, 64.333, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1901, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(51, 5000, 0, 'Frei', 100, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 2439.14, -2258.08, 7028.57, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 739, 12, 0, 7896, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(52, 7500, 0, 'Frei', 10, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1311.82, 169.548, 20.631, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(53, 1000000, 0, 'Frei', 116, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1497.01, -687.89, 95.563, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 140, 0, 0, 0, 0, 0, 0, 2012, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(54, 350000, 0, 'Frei', 215, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1332.31, -633.434, 109.134, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 21030, 0, 0, 0, 0, 0, 0, 1793, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(55, 5000000, 0, 'Frei', 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1259.33, -785.421, 92.027, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(56, 150000, 0, 'Frei', 116, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1034.79, -813.192, 101.847, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(57, 50000, 0, 'Frei', 235, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 162.292, -169.843, 1.582, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(58, 1352500, 0, 'Frei', 215, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2322.35, -124.958, 28.152, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(59, 5000, 0, 'Frei', 65, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2225.58, -1189.96, 1029.8, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 712, 15, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(60, 50000, 0, 'Frei', 179, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2413.62, 61.763, 28.44, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(61, 5000, 0, 'Frei', 65, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1596.24, 1617.46, 1612.9, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 695, 12, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(62, 175000, 0, 'Frei', 116, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 946.424, -710.632, 122.619, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 21023, 0, 0, 0, 0, 0, 0, 1111, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(63, 1500000, 0, 'Frei', 73, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 980.455, -677.283, 121.972, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3077, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(64, 1200, 0, 'Frei', 175, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2490.57, -1700.01, 1014.74, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 331, 3, 0, 0, 0, 1, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(65, 1804149, 0, 'Frei', 169, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1045.2, -642.932, 120.111, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 21059, 0, 0, 0, 0, 0, 0, 1122, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(66, 1, 0, 'Frei', 50, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1732.82, -1582.02, 14.154, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(67, 30000, 0, 'Frei', 50, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 648.856, -1536.76, 14.932, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(68, 30500, 0, 'Frei', 137, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1738.27, -1268.47, 13.541, -1, 'n/A', 75205, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(69, 165000, 0, 'Frei', 96, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1675.41, -1636.71, 14.225, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(70, 15000, 0, 'Frei', 134, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2593.96, 71.833, 27.069, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(71, 5000, 0, 'Frei', 215, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2438.83, -2253.63, 7028.56, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 739, 12, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(72, 60000, 0, 'Frei', 215, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1344.82, 213.994, 19.545, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(73, 150000, 0, 'Frei', 76, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2068.58, -1779.89, 13.559, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(74, 5000, 0, 'Frei', 123, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 178.264, -120.233, 1.549, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(75, 450000, 0, 'Frei', 2, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2885.91, 2220.79, 10.894, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2918, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(76, 1, 0, 'Frei', 215, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 919.268, -1266.02, 15.17, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(77, 175000, 0, 'Frei', 145, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2420.39, -1456.38, 23.996, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(78, 500000, 0, 'Frei', 106, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1209.46, -1752.43, 13.614, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(79, 65000, 0, 'Frei', 215, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2333.02, -17.281, 26.482, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2607, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(80, 25250, 0, 'Frei', 6, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2260.4, 51.34, 26.482, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 3088, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(81, 500000, 0, 'Frei', 147, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1477.4, -2480.7, 1909.87, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(82, 5000, 0, 'Frei', 65, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1587.52, 1617.24, 1612.9, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 695, 12, 0, 2711, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(83, 2500, 0, 'Frei', 215, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 233, 0, 0, 0, 0, 0, 0, 0, 0, 2316.28, -70.272, 26.482, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 2433, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(84, 450000, 0, 'Frei', 116, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1093.91, -807.138, 107.416, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(85, 35000, 0, 'Frei', 215, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2293.81, -124.969, 28.152, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(86, 5000, 0, 'Frei', 47, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2758.01, -2232.67, 13.545, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7777, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(87, 28000, 0, 'Frei', 5, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2454.18, -965, 80.069, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(88, 50000, 0, 'Frei', 15, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 2065.1, -1703.53, 14.147, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 21120, 0, 0, 0, 0, 0, 0, 8855, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(89, 35000, 0, 'Frei', 73, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2245.5, -122.291, 28.152, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(90, 2500, 0, 'Frei', 119, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2390.02, -1548.68, 24.163, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(91, 17500, 0, 'Frei', 134, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 316.519, 18.256, 4.513, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(92, 999999999, 0, 'Frei', 98, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1462.82, -791.27, 1084.14, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 483, 12, 0, 0, 0, 1, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(93, 50000, 0, 'Frei', 228, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 273.169, -195.475, 1.57, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(94, 130111, 0, 'Frei', 77, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2494.04, -1464.71, 24.024, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(95, 25000, 0, 'Frei', 11, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2368.25, -1675.34, 14.168, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(96, 26000, 0, 'Frei', 12, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2384.52, -1675.83, 15.244, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(97, 750000, 0, 'Frei', 213, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 619.543, -1628.76, 16.697, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(98, 40000, 0, 'Frei', 4, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2207.91, -1280.82, 25.12, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(99, 5000, 0, 'Frei', 219, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1938.43, 165.473, 37.277, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(100, 52000, 0, 'Frei', 163, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2518.4, 128.985, 27.673, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(101, 30000, 0, 'Frei', 122, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1814.66, -1118.98, 24.076, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(102, 60000, 0, 'Frei', 115, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2333.28, 18.854, 26.475, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 120, 0, 0, 0, 0, 0, 0, 2170, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(103, 5000, 0, 'Frei', 99, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1596.03, 1616.7, 1619.37, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 140, 0, 0, 0, 474, 12, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(104, 75000, 0, 'Frei', 205, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2414.67, -1426.09, 23.985, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(105, 5000, 0, 'Frei', 134, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -144.634, -49.902, 3.117, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(106, 100000, 0, 'Frei', 20, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 2310.05, -1643.5, 14.826, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1987, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(107, 35000, 0, 'Frei', 79, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1163.62, -1694.33, 14.17, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1447, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(108, 65000, 0, 'Frei', 80, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -347.88, -1045.66, 59.812, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(109, 1, 0, 'Frei', 65, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1596.05, 1611.35, 1619.43, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 474, 12, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(110, 26000, 0, 'Frei', 4, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2385.43, -1711.66, 14.241, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(111, 167228, 0, 'Frei', 88, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1221.91, -1811.7, 16.597, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(112, 5000, 0, 'Frei', 100, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1269.77, 748.523, 1087.63, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 746, 13, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(113, 350000, 0, 'Frei', 116, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 867.736, -717.367, 105.679, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(114, 95000, 0, 'Frei', 135, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2313.66, -1362.92, 24.033, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(115, 70000, 0, 'Frei', 18, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1913.47, -1911.9, 15.255, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(116, 325000, 0, 'Frei', 210, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -683.932, 939.565, 13.635, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(117, 125000, 0, 'Frei', 137, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 854.497, -605.192, 18.42, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(118, 100000, 0, 'Frei', 73, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -310.756, 1303.48, 53.664, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 233, 0, 0, 0, 0, 0, 0, 2107, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(119, 95500, 0, 'Frei', 94, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1971.18, -2074.81, 13.545, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(120, 28000, 0, 'Frei', 80, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2552.03, -958.335, 82.611, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1917, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(121, 10000, 0, 'Frei', 65, 0, 1337, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1081.97, 1723.81, 872.625, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 376, 12, 0, 0, 0, 1, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(122, 125000, 0, 'Frei', 96, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2589.02, -2219.34, 13.545, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(123, 5000, 0, 'Frei', 177, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1489.25, -1719.43, 8.241, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(124, 100000, 0, 'Frei', 169, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 648.666, -1489.57, 14.833, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(125, 126000, 0, 'Frei', 175, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 724.835, -999.455, 52.734, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 3825, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(126, 58000, 0, 'Frei', 50, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 700.273, -1060.3, 49.421, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(127, 1, 0, 'Frei', 116, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 371.39, -1637.22, 32.888, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4056, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(128, 25000, 0, 'Frei', 108, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2163.72, -1661.24, 15.085, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4387, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(129, 92500, 0, 'Frei', 161, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 849.585, -1520, 14.347, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1991, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(130, 1000000, 0, 'Frei', 73, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1033.31, -1893.79, 16.304, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(131, 850000, 0, 'Frei', 215, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 254.423, -1367.19, 53.109, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 186, 0, 0, 0, 0, 0, 0, 6471, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(132, 90000, 0, 'Frei', 91, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 1359.6, 205.1, 19.753, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(133, 5000, 0, 'Frei', 215, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2670.28, -1238.02, 55.729, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(134, 3500000, 0, 'Frei', 116, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 189.636, -1308.13, 70.249, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 70, 0, 0, 0, 0, 0, 0, 1234, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(135, 9999999, 0, 'Frei', 65, 0, 1337, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 202.901, 1867.27, 13.14, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(136, 250000, 0, 'Frei', 6, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 253.231, -1269.98, 74.43, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 21107, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(137, 2000000, 0, 'Frei', 6, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 251.475, -1220.18, 76.097, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 6328, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(138, 3000000, 0, 'Frei', 116, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300.269, -1154.48, 81.388, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 1717, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(139, 7500, 0, 'Frei', 134, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2577.05, 97.291, 27.062, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(140, 1200000, 0, 'Frei', 227, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 470.721, -1163.57, 67.217, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 21089, 0, 0, 0, 0, 0, 0, 2012, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(141, 65000, 0, 'Frei', 139, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2242.61, 52.701, 26.666, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(142, 150000, 0, 'Frei', 175, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 559.161, -1076.38, 72.916, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(143, 5000, 0, 'Frei', 151, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1273.02, 748.523, 1084.55, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 746, 13, 0, 2004, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(144, 250000, 0, 'Frei', 50, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 154.285, -1946.62, 5.388, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 140, 0, 0, 0, 0, 0, 0, 2408, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(145, 80000, 0, 'Frei', 18, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2191.5, -1275.6, 25.156, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(146, 750000, 0, 'Frei', 211, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 630.901, 853.52, 2022.42, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 280, 13, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(147, 50000, 0, 'Frei', 215, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 512.421, -1464.73, 14.977, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(148, 1, 0, 'Frei', 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -657.505, 1022.09, 12.126, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(149, 120000, 0, 'Frei', 175, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 969.091, -1367.23, 13.343, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 140, 0, 0, 0, 0, 0, 0, 8121, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(150, 100000, 0, 'Frei', 73, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 878.031, -1514.65, 14.35, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(151, 100000, 0, 'Frei', 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2431.65, -2467.91, 13.63, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(152, 70000, 0, 'Frei', 116, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 822.439, -1505.52, 14.397, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(153, 61000, 0, 'Frei', 6, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 841.338, -1471.36, 14.314, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2104, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(154, 25000, 0, 'Frei', 68, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 852.463, -1059.92, 25.106, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(155, 25000, 0, 'Frei', 5, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -585.661, -1113.94, 23.656, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(156, 350000, 0, 'Frei', 116, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 977.401, -771.713, 112.202, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(157, 150000, 0, 'Frei', 201, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1790.09, -1298.06, 114.805, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 140, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(158, 1, 0, 'Frei', 15, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2359.29, -1312.54, 24.006, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(159, 4500000, 0, 'Frei', 2, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 690.89, -1276.04, 13.56, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 140, 0, 0, 0, 0, 0, 0, 4844, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(160, 75000, 0, 'Frei', 116, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 903.627, -1512.96, 14.366, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 140, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(161, 90000, 0, 'Frei', 128, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1748.15, -1460.92, 13.524, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(162, 50000, 0, 'Frei', 6, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 738.96, -1418.51, 13.522, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(163, 35000, 0, 'Frei', 231, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1139.71, -1131.45, 23.826, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(164, 100000, 0, 'Frei', 215, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 297.523, -169.604, 1.577, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(165, 2000, 0, 'Frei', 150, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2481.22, 64.416, 27.683, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 240, 0, 0, 0, 0, 0, 0, 9889, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(166, 1000, 0, 'Frei', 134, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -940.223, -536.648, 26.763, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1994, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(167, 250000, 0, 'Frei', 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2855.31, -313.888, 8.545, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(168, 7500, 0, 'Frei', 215, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2606.99, 70.802, 27.037, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(169, 78500, 0, 'Frei', 96, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1419.17, -1623.8, 13.545, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2408, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(170, 5000, 0, 'Frei', 65, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2054, 182.035, 1944.68, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 12, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(171, 130000, 0, 'Frei', 73, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 937.846, -848.723, 93.577, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(172, 5000, 0, 'Frei', 225, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 0, 0, 2056.06, 182.057, 1948.73, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 12, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(173, 150000, 0, 'Frei', 185, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 0, 0, 1790.08, -1297.96, 22.208, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(174, 26000, 0, 'Frei', 101, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 2257.11, -1643.94, 15.807, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9925, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(175, 65000, 0, 'Frei', 175, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1286.8, -1308.38, 13.55, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(176, 200000, 0, 'Frei', 91, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -2026.56, -102.065, 35.164, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(177, 90000, 0, 'Frei', 131, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2001.8, -1761.96, 13.538, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(178, 200000, 0, 'Frei', 23, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 583.953, -877.562, 87.041, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(179, 400000, 0, 'Frei', 73, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 725.661, -1440.45, 13.531, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(180, 9500, 0, 'Frei', 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2168.98, -1815.23, 13.545, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(181, 2500000, 0, 'Frei', 227, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 952.46, -909.114, 45.763, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(182, 5000, 0, 'Frei', 65, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1596.24, 1621.27, 1616.98, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 695, 12, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(183, 27000, 0, 'Frei', 6, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2148.51, -1320.08, 26.072, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(184, 80000, 0, 'Frei', 232, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 312.721, -121.291, 3.535, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(185, 120000, 0, 'Frei', 139, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2481.51, -1494.7, 24, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(186, 20000, 0, 'Frei', 10, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2263.86, -1469.34, 24.37, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(187, 1000, 0, 'Frei', 47, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 226.485, -302.811, 1.924, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2397, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(188, 5000, 0, 'Frei', 151, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1276.39, 748.619, 1084.55, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 746, 13, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(189, 300000, 0, 'Frei', 236, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1352.12, 348.463, 20.5, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(190, 15000, 0, 'Frei', 65, 0, 1337, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1595.99, 1621.29, 1612.9, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 474, 12, 0, 0, 0, 1, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(191, 27000, 0, 'Frei', 137, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2143.05, -1604.69, 14.35, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1);
INSERT INTO `houses` (`hID`, `hPreis`, `hLevel`, `hBesitzer`, `hInterior`, `hMieter`, `hMaxMieter`, `hLock`, `hRent`, `hDrogen`, `hMats`, `hWaffenschrank`, `hGun0`, `hGun1`, `hGun2`, `hGun3`, `hGun4`, `hAmmo0`, `hAmmo1`, `hAmmo2`, `hAmmo3`, `hAmmo4`, `hKasse`, `hHeal`, `hOwned`, `hVersteck`, `hX`, `hY`, `hZ`, `hbuero`, `hBueroName`, `hSchild`, `hSchildName`, `hsx`, `hsy`, `hsz`, `hsa`, `hkay`, `heintritt`, `hDrogen2`, `hDrogen3`, `hSkin0`, `hSkin1`, `hSkin2`, `hSkin3`, `hSkin4`, `hStrom`, `hspawnworld`, `hspawninterior`, `hlicht`, `hwpin`, `hwdog`, `hapart`, `hlauts`, `hsong`, `harmor`, `hdrogen4`, `hrucksack`, `hwatche`, `hklingels`, `hdefi`, `hgates`, `hgarage`, `hsc`, `hdiebesgut`, `hversteigert`, `heisen`, `hfirma`) VALUES
(192, 99999999, 0, 'Frei', 67, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 206.625, 1872.53, 13.145, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(193, 5000, 0, 'Frei', 159, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1587.55, 1621.23, 1616.98, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 695, 12, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(194, 58000, 0, 'Frei', 7, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 795.171, -506.148, 18.01, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(195, 80000, 0, 'Frei', 50, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 818.281, -509.319, 18.01, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(196, 125000, 0, 'Frei', 73, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1112.63, -742.164, 100.132, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(197, 57000, 0, 'Frei', 7, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 768.281, -503.5, 18.01, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 2809, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(198, 60000, 0, 'Frei', 116, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 743.296, -509.32, 18.01, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 140, 0, 0, 0, 0, 0, 0, 6677, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(199, 1, 0, 'Frei', 213, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -96.972, 1044.56, 20.231, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3006, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(200, 5000, 0, 'Frei', 112, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 309.368, 312.489, 1003.3, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 175, 4, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(201, 61000, 0, 'Frei', 11, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 766.572, -556.783, 18.01, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(202, 5000, 0, 'Frei', 123, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 178.19, -118.232, 4.894, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(203, 300000, 0, 'Frei', 214, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 914.177, -1004.63, 37.979, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3689, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(204, 65000, 0, 'Frei', 175, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 120, 0, 0, 0, 0, 0, 0, 0, 0, 1566.82, 23.474, 24.163, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1339, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(205, 35000, 0, 'Frei', 11, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 709.908, 1194.74, 13.395, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(206, 65000, 0, 'Frei', 111, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 719.064, 300.635, 20.375, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2404, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(207, 7500, 0, 'Frei', 134, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -509.2, -475.553, 25.628, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(208, 80000, 0, 'Frei', 119, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1284.74, 385.596, 19.554, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(209, 5000, 0, 'Frei', 12, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1273.04, 748.523, 1087.63, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 746, 13, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(210, 50000, 0, 'Frei', 15, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2750.92, -1413.8, 33.699, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 4644, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(211, 35000, 0, 'Frei', 11, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 267.743, -54.541, 2.776, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(212, 25000, 0, 'Frei', 75, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1242.43, 211.492, 19.554, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(213, 99999999, 0, 'Frei', 96, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 207.367, 1866.52, 13.14, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(214, 500000, 0, 'Frei', 73, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2212.47, 609.513, 10.838, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(215, 999999999, 0, 'Frei', 60, 0, 1337, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 204.151, 1873.97, 13.145, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(216, 650000, 0, 'Frei', 50, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1030.98, -2001.06, 16.304, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(217, 5000, 0, 'Frei', 17, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2440.07, -2243.2, 7028.56, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 594, 12, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(218, 26000, 0, 'Frei', 68, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1717.94, 2354.44, 10.885, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(219, 60000, 0, 'Frei', 91, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1064.43, -1131.2, 23.826, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(220, 75000, 0, 'Frei', 79, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -2239.3, -2423.76, 32.707, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(221, 250000, 0, 'Frei', 205, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 161.871, -25.75, 1.577, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(222, 5000, 0, 'Frei', 65, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2242.47, -1159.7, 1029.8, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 712, 15, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(223, 5000, 0, 'Frei', 101, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1985.51, -1779.78, 13.548, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(224, 25000, 0, 'Frei', 225, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2059.14, 179.673, 1948.73, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 140, 0, 0, 0, 99, 12, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(225, 10000, 0, 'Frei', 4, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2155.86, -1815.23, 13.545, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6728, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(226, 5000, 0, 'Frei', 215, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -60.304, 83.508, 3.117, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(227, 900000, 0, 'Frei', 169, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1296.08, -1424.81, 14.953, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(228, 999999999, 0, 'Frei', 181, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 208.796, 1870.49, 13.145, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(229, 26000, 0, 'Frei', 12, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2696.38, -1990.36, 14.222, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(230, 100000, 0, 'Frei', 91, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2219.56, -2666.27, 14.17, -1, 'n/A', 75206, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 140, 0, 0, 0, 0, 0, 0, 6793, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(231, 15000, 0, 'Frei', 65, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2672.84, -1989.47, 14.324, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(232, 30000, 0, 'Frei', 204, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -2176.11, 713.812, 53.888, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(233, 117000, 0, 'Frei', 111, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 701.848, 358.488, 20.614, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(234, 125000, 0, 'Frei', 159, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2245.42, -1.659, 28.159, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 21089, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(235, 35000, 0, 'Frei', 95, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2171.98, -1505.9, 23.943, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(236, 5000, 0, 'Frei', 160, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1587.5, 1617.89, 1616.98, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 45, 0, 0, 0, 695, 12, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(237, 35000, 0, 'Frei', 3, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2551.22, 91.763, 27.673, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 140, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(238, 25000, 0, 'Frei', 10, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2479.66, -1063.97, 66.998, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2104, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(239, 99999999, 0, 'Frei', 59, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 204.47, 1862.64, 13.14, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(240, 85000, 0, 'Frei', 50, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1995.05, -1283.33, 23.965, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(241, 99999999, 0, 'Frei', 69, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 206.8, 1860.34, 13.14, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(242, 27000, 0, 'Frei', 54, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2067.7, -1628.81, 14.206, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 140, 0, 0, 0, 0, 0, 0, 2244, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(243, 25000, 0, 'Frei', 215, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -86.151, 2.598, 3.117, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(244, 135000, 0, 'Frei', 183, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 120, 0, 0, 0, 0, 0, 0, 0, 0, 35.208, -1157.39, 10.772, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5858, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(245, 27000, 0, 'Frei', 98, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 2067.56, -1643.71, 14.135, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2104, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(246, 60000, 0, 'Frei', 116, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 685.458, -1421.91, 14.774, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(247, 1, 0, 'Frei', 225, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2054, 185.63, 1944.68, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 12, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(248, 1, 0, 'Frei', 98, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1276.33, 748.523, 1087.63, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 746, 13, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(249, 92272, 0, 'Frei', 73, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1242.26, -1099.35, 27.975, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(250, 60000, 0, 'Frei', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2797.92, -1245.56, 47.298, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 21015, 0, 0, 0, 0, 0, 0, 8280, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(251, 7500, 0, 'Frei', 215, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2575.89, 79.93, 26.92, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 140, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(252, 25000, 0, 'Frei', 65, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2056.06, 185.595, 1948.73, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 12, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(253, 10000, 0, 'Frei', 65, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1434.94, 334.919, 18.944, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(254, 400000, 0, 'Frei', 116, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 298.6, -1338.23, 53.441, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 2402, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(255, 28000, 0, 'Frei', 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2526.74, -1033.53, 69.579, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(256, 7500, 0, 'Frei', 160, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 340.058, 33.611, 6.407, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(257, 18500, 0, 'Frei', 153, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2526.09, -1060.69, 69.97, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(258, 5000, 0, 'Frei', 4, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1976.64, -2018.57, 13.545, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(259, 25000, 0, 'Frei', 79, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1103.4, -1068.25, 31.888, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(260, 95000, 0, 'Frei', 91, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 936.815, -1612.71, 14.937, -1, 'n/A', 75207, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(261, 1, 0, 'Frei', 215, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -47.393, -11.696, 3.618, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(262, 1, 0, 'Frei', 6, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1241.95, -1075.31, 31.554, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(263, 50000, 0, 'Frei', 49, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2322.54, -37.957, 26.482, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(264, 15000, 0, 'Frei', 227, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 374.584, -77.152, 1.381, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(265, 90000, 0, 'Frei', 50, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 769.228, -1745.93, 13.076, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(266, 999999999, 0, 'Frei', 54, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 209.354, 1873.72, 13.145, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(267, 9999999, 0, 'Frei', 215, 0, 1337, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 205.164, 1868.63, 13.14, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(268, 65000, 0, 'Frei', 215, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2236.48, 168.302, 28.152, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2205, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(269, 88888, 0, 'Frei', 215, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2518.62, 58.388, 27.683, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(270, 25000, 0, 'Frei', 3, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2285.87, 161.766, 28.44, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(271, 65000, 0, 'Frei', 11, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2549.23, 25.093, 27.673, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(272, 95000, 0, 'Frei', 79, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2373.85, 42.187, 28.44, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(273, 60000, 0, 'Frei', 223, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2250.25, 52.659, 26.666, -1, 'n/A', 75208, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 21094, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(274, 7500, 0, 'Frei', 134, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2620.89, 104.161, 27.756, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(275, 65000, 0, 'Frei', 11, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2132.27, -1280.05, 25.888, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1999, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(276, 600000, 0, 'Frei', 116, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1627.13, 2710.77, 10.819, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(277, 28000, 0, 'Frei', 152, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2364, 187.212, 28.44, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5213, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(278, 352500, 0, 'Frei', 79, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2364, 166.001, 28.44, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(279, 2500, 0, 'Frei', 134, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -449.316, -72.722, 59.534, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(280, 750000, 0, 'Frei', 212, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1322.65, -1167.21, 23.819, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(281, 224999, 0, 'Frei', 6, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 824.52, -1424.2, 14.498, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(282, 50000, 0, 'Frei', 80, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2446.82, 18.958, 27.683, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(283, 7500, 0, 'Frei', 100, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1898.44, -1998.02, 13.545, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(284, 25000, 0, 'Frei', 152, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2479.44, 94.402, 27.683, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 216, 0, 0, 0, 0, 0, 0, 2591, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(285, 2500, 0, 'Frei', 126, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 178.332, -96.971, 4.894, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(286, 28000, 0, 'Frei', 213, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 2514.04, 94.388, 27.683, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1001, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(287, 500000, 0, 'Frei', 146, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1260.34, -1652.4, 13.545, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1944, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(288, 1, 0, 'Frei', 27, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 648.846, -519.265, 16.552, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(289, 999999999, 0, 'Frei', 11, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 209.279, 1871.69, 13.145, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(290, 35000, 0, 'Frei', 50, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1535.03, -800.176, 72.847, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(291, 5000, 0, 'Frei', 100, 0, 1337, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2283.34, -1805.67, 1301, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39, 10, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(292, 1, 0, 'Frei', 96, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2442.24, 131.296, 26.502, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(293, 7500, 0, 'Frei', 134, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2633.26, 93.749, 27.524, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(294, 400000, 0, 'Frei', 47, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2800.33, 2677.29, 10.967, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(295, 230000, 0, 'Frei', 227, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 835.966, -894.864, 68.763, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(296, 1, 0, 'Frei', 55, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2326.74, 63.268, 26.492, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(297, 10000, 0, 'Frei', 11, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2066.74, -1656.5, 14.13, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7106, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(298, 450000, 0, 'Frei', 116, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1442.65, -628.83, 95.718, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6467, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(299, 55000, 0, 'Frei', 46, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1985.77, -1999.33, 13.545, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(300, 70000, 0, 'Frei', 215, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2199.95, -37.297, 28.152, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 2397, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(301, 2500, 0, 'Frei', 11, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1895.5, -2019.56, 13.545, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5381, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(302, 55000, 0, 'Frei', 81, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2270.56, -7.498, 28.152, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 140, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(303, 225000, 0, 'Frei', 96, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1310.91, 330.01, 19.913, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 2610, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(304, 55000, 0, 'Frei', 50, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2415.43, -52.283, 28.152, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 233, 0, 0, 0, 0, 0, 0, 9977, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(305, 70000, 0, 'Frei', 175, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2480.6, 126.986, 27.673, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 140, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(306, 80000, 0, 'Frei', 79, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2484.42, -28.402, 28.44, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(307, 5000, 0, 'Frei', 100, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2274.94, -1805.67, 1301, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39, 10, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(308, 75000, 0, 'Frei', 5, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2459.51, -1691.66, 13.543, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(309, 61000, 0, 'Frei', 116, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1141.81, -1069.98, 31.763, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(310, 27000, 0, 'Frei', 62, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2523.27, -1679.39, 15.496, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(311, 5000, 0, 'Frei', 166, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1596.26, 1617.77, 1616.98, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 695, 12, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(312, 5000, 0, 'Frei', 8, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1587.54, 1621.32, 1612.89, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 140, 0, 0, 0, 695, 12, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(313, 26000, 0, 'Frei', 50, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2498.48, -1642.26, 14.112, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(314, 50000, 0, 'Frei', 230, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -539.919, -506.454, 25.569, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 140, 0, 0, 0, 0, 0, 0, 8888, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(315, 5000, 0, 'Frei', 47, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 308.157, -191.332, 1.577, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(316, 1, 0, 'Frei', 54, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 811.062, -564.395, 16.333, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6763, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(317, 15000, 0, 'Frei', 65, 0, 1337, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1596.05, 1616.2, 1612.9, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 474, 12, 0, 0, 0, 1, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(318, 1, 0, 'Frei', 120, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2368.35, -1953.13, 3517, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 417, 14, 0, 0, 0, 1, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(319, 5000, 0, 'Frei', 111, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2386.2, -1953.13, 3517, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 398, 14, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(320, 7500, 0, 'Frei', 91, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1689.56, -1530.43, 13.545, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(321, 28000, 0, 'Frei', 108, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2165.97, -1671.16, 15.071, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(322, 20000, 0, 'Frei', 47, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 84.111, -149.281, 2.584, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(323, 102231, 0, 'Frei', 91, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 331.264, -40.152, 2.223, -1, 'n/A', 75209, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5473, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(324, 1, 0, 'Frei', 128, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1720.14, -1741.17, 13.545, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(325, 15000, 0, 'Frei', 76, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1689.57, -1506.46, 13.545, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(326, 230000, 0, 'Frei', 160, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2438.85, -54.962, 28.152, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(327, 70000, 0, 'Frei', 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1594.96, 2071.15, 11.319, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(328, 40000, 0, 'Frei', 11, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2016.54, -1641.61, 14.112, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(329, 210000, 0, 'Frei', 111, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 672.062, -627.812, 16.333, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(330, 7500, 0, 'Frei', 134, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2613.02, 82.593, 27.377, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(331, 15000, 0, 'Frei', 180, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1596.03, 1616.68, 1616.29, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 140, 0, 0, 0, 474, 12, 0, 4523, 0, 1, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(332, 1200000, 0, 'Frei', 111, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1106.55, -299.765, 74.539, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(333, 35000, 0, 'Frei', 12, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 783.994, 352.605, 19.593, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(334, 1000000, 0, 'Frei', 107, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2034.07, -1402.33, 17.291, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 276, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(335, 125000, 0, 'Frei', 175, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 263.471, 22.006, 3.433, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 1001, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(336, 30000, 0, 'Frei', 11, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2695.4, -2020.55, 14.022, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(337, 80000, 0, 'Frei', 73, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 900.197, -1471.04, 14.343, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1234, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(338, 14666, 0, 'Frei', 79, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2249.83, -1238.91, 25.898, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(339, 58000, 0, 'Frei', 73, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42, 0, 0, 0, 0, 0, 0, 0, 0, 900.216, -1447.38, 14.369, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 21109, 0, 0, 0, 0, 0, 0, 1998, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(340, 58000, 0, 'Frei', 50, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 771.129, -1510.74, 13.545, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 240, 0, 0, 0, 0, 0, 0, 1593, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(341, 850000, 0, 'Frei', 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1653.78, -1654.93, 22.513, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(342, 15000, 0, 'Frei', 150, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2249.28, 111.763, 28.44, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(343, 125000, 0, 'Frei', 116, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 993.739, -1059.03, 33.699, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(344, 50000, 0, 'Frei', 15, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2112.87, -1211.45, 23.961, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(345, 5000, 0, 'Frei', 47, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2754.69, -2222.78, 13.545, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(346, 15000, 0, 'Frei', 160, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2066.24, -1717.13, 14.135, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2205, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(347, 5000, 0, 'Frei', 160, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2431.72, -2242.28, 7028.56, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 739, 12, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(348, 1, 0, 'Frei', 21, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1791.63, -1635.28, 14.491, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(349, 5000, 0, 'Frei', 17, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 349.186, -127.401, 2.088, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(350, 999999999, 0, 'Frei', 111, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 207.332, 1863.11, 13.14, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(351, 1000, 0, 'Frei', 160, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -938.89, -517.908, 26.093, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(352, 125000, 0, 'Frei', 8, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 848.143, -745.681, 94.969, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(353, 7500, 0, 'Frei', 134, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2603.53, 104.553, 27.42, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(354, 5000, 0, 'Frei', 21, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2641.04, 1816.31, -1.593, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 718, 11, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(355, 55187, 0, 'Frei', 144, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 293.341, -195.445, 1.776, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(356, 125000, 0, 'Frei', 175, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 648.413, -1058.6, 52.576, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(357, 5000, 0, 'Frei', 117, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2434.72, -2253.63, 7028.56, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 594, 12, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(358, 40000, 0, 'Frei', 65, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1735.08, -1654.25, 23.731, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 337, 18, 0, 0, 0, 1, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(359, 650000, 0, 'Frei', 116, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1033.9, 1297.88, 10.854, -1, 'n/A', 75210, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 180, 0, 0, 0, 0, 0, 0, 2012, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(360, 750000, 0, 'Frei', 6, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1778.24, -1661.66, 14.435, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(361, 200000, 0, 'Frei', 102, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1142.12, -1092.96, 28.187, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(362, 10000, 0, 'Frei', 79, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2488.48, 11.762, 28.44, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 2004, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(363, 200000, 0, 'Frei', 217, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -16.152, -1235.65, 9.274, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6660, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(364, 5000, 0, 'Frei', 4, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2431.72, -2252.17, 7028.57, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 739, 12, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(365, 99999999, 0, 'Frei', 73, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 202.268, 1860.67, 13.14, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(366, 75000, 0, 'Frei', 78, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 0, 0, 0, 0, 0, 0, 0, 0, 2520.62, -1209.48, 50.291, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 5122, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(367, 65000, 0, 'Frei', 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 115.953, -194.591, 1.485, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2397, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(368, 45000, 0, 'Frei', 54, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 80, 0, 0, 0, 0, 0, 0, 0, 0, 2751.49, -1962.81, 13.545, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2402, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(369, 10000, 0, 'Frei', 151, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2140.93, -1801.92, 16.145, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(370, 500, 0, 'Frei', 169, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -217.397, 1402.67, 27.773, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 479, 18, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(371, 20000, 0, 'Frei', 161, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2271.34, 1633.55, 1084.23, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 454, 1, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(372, 5000, 0, 'Frei', 160, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 189.466, -96.972, 4.894, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(373, 150000, 0, 'Frei', 186, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1790.09, -1298, 27.67, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 1994, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(374, 5000, 0, 'Frei', 215, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1976.64, -2014.05, 13.545, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(375, 500, 0, 'Frei', 215, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2266.05, 1662.52, 1084.23, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 241, 1, 0, 0, 0, 1, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(376, 60000, 0, 'Frei', 220, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2334.3, 42.986, 26.482, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(377, 125000, 0, 'Frei', 78, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2373.85, -8.647, 28.44, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7435, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(378, 5000, 0, 'Frei', 65, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1595.97, 1621.17, 1619.36, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 474, 12, 0, 0, 0, 1, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(379, 100000, 0, 'Frei', 172, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -512.403, -992.591, 25.086, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4644, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(380, 30000, 0, 'Frei', 234, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2333.55, 51.791, 26.649, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(381, 10000, 0, 'Frei', 74, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1468.55, -795.981, 1087.79, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 686, 12, 0, 2244, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(382, 28000, 0, 'Frei', 50, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -258.247, 1043.89, 20.937, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(383, 27000, 0, 'Frei', 18, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -18.25, 1115.67, 20.937, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1);
INSERT INTO `houses` (`hID`, `hPreis`, `hLevel`, `hBesitzer`, `hInterior`, `hMieter`, `hMaxMieter`, `hLock`, `hRent`, `hDrogen`, `hMats`, `hWaffenschrank`, `hGun0`, `hGun1`, `hGun2`, `hGun3`, `hGun4`, `hAmmo0`, `hAmmo1`, `hAmmo2`, `hAmmo3`, `hAmmo4`, `hKasse`, `hHeal`, `hOwned`, `hVersteck`, `hX`, `hY`, `hZ`, `hbuero`, `hBueroName`, `hSchild`, `hSchildName`, `hsx`, `hsy`, `hsz`, `hsa`, `hkay`, `heintritt`, `hDrogen2`, `hDrogen3`, `hSkin0`, `hSkin1`, `hSkin2`, `hSkin3`, `hSkin4`, `hStrom`, `hspawnworld`, `hspawninterior`, `hlicht`, `hwpin`, `hwdog`, `hapart`, `hlauts`, `hsong`, `harmor`, `hdrogen4`, `hrucksack`, `hwatche`, `hklingels`, `hdefi`, `hgates`, `hgarage`, `hsc`, `hdiebesgut`, `hversteigert`, `heisen`, `hfirma`) VALUES
(384, 80000, 0, 'Frei', 6, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2808.11, -1175.92, 25.378, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(385, 27000, 0, 'Frei', 3, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -207.882, 1119.23, 20.429, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(386, 40000, 0, 'Frei', 7, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 870.299, -25.319, 63.957, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6825, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(387, 5000, 0, 'Frei', 100, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2434.68, -2253.63, 7028.56, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 739, 12, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(388, 150000, 0, 'Frei', 50, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1562.58, -2733, 48.743, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(389, 25000, 0, 'Frei', 96, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1739.27, -1582.02, 14.152, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(390, 40000, 0, 'Frei', 157, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2492.14, -1239.01, 37.902, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(391, 10000, 0, 'Frei', 84, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -418.993, -1759.28, 6.217, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(392, 45000, 0, 'Frei', 160, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2524.06, -1658.54, 15.493, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(393, 100000, 0, 'Frei', 6, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2267.97, -1671.32, 15.359, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(394, 2500, 0, 'Frei', 175, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2265.25, 82.041, 26.482, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2007, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(395, 120000, 0, 'Frei', 19, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 858.656, -828.676, 89.5, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(396, 999999999, 0, 'Frei', 12, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 207.434, 1873.88, 13.145, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(397, 5000, 0, 'Frei', 65, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1675.5, -1462.31, 13.67, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1504, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(398, 50000, 0, 'Frei', 64, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1909.87, -1597.41, 14.305, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(399, 500, 0, 'Frei', 65, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2271.33, 1662.5, 1084.23, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 241, 1, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(400, 1000000, 0, 'Frei', 18, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 0, 0, -1081.1, -1654.89, 76.847, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 8665, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(401, 999999999, 0, 'Frei', 100, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 205.175, 1871.28, 13.14, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(402, 1, 0, 'Frei', 96, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1442.43, 2359.56, 10.819, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(403, 7500, 0, 'Frei', 4, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -438.368, -65.623, 58.894, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 1111, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(404, 28000, 0, 'Frei', 126, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2007.13, -1777.46, 17.357, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(405, 200000, 0, 'Frei', 66, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2379.75, -2265.76, 13.545, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(406, 50000, 0, 'Frei', 131, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 0, 0, 0, 0, 0, 0, 0, 0, 832.997, -1014.33, 27.767, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 4597, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(407, 90000, 0, 'Frei', 14, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2495.4, -1691.14, 14.765, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6825, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(408, 25000, 0, 'Frei', 11, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1761.21, -2125.45, 14.055, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2899, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(409, 50000, 0, 'Frei', 11, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2196.21, -1404.1, 25.947, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 250, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(410, 45000, 0, 'Frei', 215, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2197.27, -60.756, 28.152, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 140, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(411, 10000, 0, 'Frei', 4, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2172.34, -1819.69, 16.138, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(412, 1, 0, 'Frei', 65, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1708.7, -1670.16, 23.704, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 314, 18, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(413, 7500, 0, 'Frei', 73, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2266.04, 1662.58, 1084.23, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 90, 0, 0, 0, 454, 1, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(414, 15000, 0, 'Frei', 160, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2491.35, -1012.34, 65.398, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(415, 60000, 0, 'Frei', 134, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 805.413, 358.359, 19.76, -1, 'n/A', 75211, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(416, 150000, 0, 'Frei', 189, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1790.09, -1297.98, 44.039, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 140, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(417, 75000, 0, 'Frei', 64, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2508.71, -1493.6, 23.996, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(418, 1, 0, 'Frei', 5, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2378.71, -1953.14, 3517, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 417, 14, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(419, 65000, 0, 'Frei', 18, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2045.54, -1116.65, 26.361, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(420, 35000, 0, 'Frei', 215, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2311.66, 71.638, 26.482, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(421, 15000, 0, 'Frei', 55, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1967.44, -1633.71, 18.568, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(422, 200000, 0, 'Frei', 205, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1227.73, 181.604, 20.409, -1, 'n/A', 75212, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(423, 26000, 0, 'Frei', 73, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1939.07, -1114.48, 27.451, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1901, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(424, 165000, 0, 'Frei', 77, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 699.405, -1165.82, 15.517, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(425, 1999999, 0, 'Frei', 214, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1547.8, -1269.83, 17.43, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(426, 5000, 0, 'Frei', 5, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2209.58, -1190.06, 1029.8, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 712, 15, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(427, 15000, 0, 'Frei', 61, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1967.43, -1633.71, 15.968, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(428, 100000, 0, 'Frei', 169, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1934.83, -2086.44, 13.571, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(429, 85000, 0, 'Frei', 91, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1285.47, -1861.62, 13.538, -1, 'n/A', 75213, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(430, 299117, 0, 'Frei', 68, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 303.157, -242.576, 1.577, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(431, 5000, 0, 'Frei', 60, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1455.67, -795.981, 1087.85, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 686, 12, 0, 2596, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(432, 1000, 0, 'Frei', 4, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1471.75, -795.825, 1080.46, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 686, 12, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(433, 770000, 0, 'Frei', 138, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 326.901, -1513.24, 36.032, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(434, 450000, 0, 'Frei', 227, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2886.3, 2168.27, 10.894, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2409, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(435, 150000, 0, 'Frei', 188, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1790.09, -1297.99, 38.576, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(436, 27000, 0, 'Frei', 215, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2331.28, -37.951, 26.482, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7208, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(437, 26000, 0, 'Frei', 160, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2394.81, -1133.54, 30.718, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(438, 5000, 0, 'Frei', 123, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1462.46, -803.039, 1084.14, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 686, 12, 0, 2341, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(439, 110127, 0, 'Frei', 5, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1616.22, -1897.58, 13.548, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(440, 85000, 0, 'Frei', 13, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1341.32, -1675.23, 17.715, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(441, 225000, 0, 'Frei', 50, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 682.945, -1570.66, 14.241, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(442, 150000, 0, 'Frei', 190, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1790.08, -1297.99, 49.444, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(443, 63000, 0, 'Frei', 18, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 142.619, -1470.36, 25.208, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(444, 500000, 0, 'Frei', 50, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2721.21, -2380.04, 17.34, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(445, 250000, 0, 'Frei', 142, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 1396.91, -1569.72, 14.27, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 140, 0, 0, 0, 0, 0, 0, 3056, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(446, 10000, 0, 'Frei', 5, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1782.47, -1855.95, 618.239, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 608, 13, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(447, 5000, 0, 'Frei', 126, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2431.72, -2242.24, 7028.56, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 594, 12, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(448, 70000, 0, 'Frei', 50, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2323.85, 191.194, 28.44, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(449, 280000, 0, 'Frei', 79, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2373.85, 71.125, 28.44, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(450, 50000, 0, 'Frei', 15, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2747.51, -1638.35, 13.067, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1587, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(451, 50000, 0, 'Frei', 215, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2373.85, 21.996, 28.44, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(452, 1, 0, 'Frei', 160, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2440.18, -2255.77, 7028.56, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 739, 12, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(453, 40000, 0, 'Frei', 153, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2411.22, -5.643, 27.683, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(454, 1, 0, 'Frei', 69, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 893.682, -1635.7, 14.928, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(455, 85000, 0, 'Frei', 50, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 48, 0, 0, 0, 0, 0, 0, 0, 0, 2443.42, 61.75, 28.44, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1337, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(456, 25000, 0, 'Frei', 79, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2443.85, 92.11, 28.44, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 140, 0, 0, 0, 0, 0, 0, 9998, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(457, 150000, 0, 'Frei', 175, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1440.72, -926.145, 39.645, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1234, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(458, 25000, 0, 'Frei', 100, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2156.15, -1651.77, 15.078, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(459, 80000, 0, 'Frei', 5, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -99.222, 1083.23, 19.749, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(460, 450000, 0, 'Frei', 50, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 387.118, -1817.88, 7.84, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(461, 2000000, 0, 'Frei', 206, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1455.91, 751.236, 11.022, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(462, 25000, 0, 'Frei', 149, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1978.79, -1761.96, 13.545, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(463, 55000, 0, 'Frei', 7, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2513.41, -28.402, 28.44, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(464, 15000, 0, 'Frei', 116, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2203.85, 62.256, 28.44, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2911, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(465, 18000, 0, 'Frei', 5, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2534.47, -1063.38, 69.565, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(466, 75000, 0, 'Frei', 73, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2095.36, -1145.16, 26.59, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1721, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(467, 35000, 0, 'Frei', 213, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2448.33, -11.02, 27.683, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1994, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(468, 50000, 0, 'Frei', 54, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 396, 0, 0, 0, 0, 0, 0, 0, 0, 2148.94, -1484.89, 26.624, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1214, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(469, 26000, 0, 'Frei', 73, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2203.11, -89.263, 28.152, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 4597, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(470, 26000, 0, 'Frei', 116, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2398.43, 111.763, 28.44, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 97, 0, 0, 0, 0, 0, 0, 2409, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(471, 999999999, 0, 'Frei', 60, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1604.36, 1603.89, 1616.4, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 83, 12, 0, 0, 0, 1, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(472, 55000, 0, 'Frei', 5, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300.234, 1141.21, 9.137, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 2809, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(473, 20000, 0, 'Frei', 81, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1735.05, -1642.41, 23.756, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23, 18, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(474, 85000, 0, 'Frei', 215, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2273.58, 82.041, 26.482, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(475, 1000000, 0, 'Frei', 213, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -172.117, -240.044, 1.429, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(476, 25000, 0, 'Frei', 8, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2469.18, -1278.41, 30.364, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(477, 1250000, 0, 'Frei', 91, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1768.69, -2019.74, 14.135, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(478, 5000, 0, 'Frei', 4, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2434.64, -2258.08, 7028.56, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 739, 12, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(479, 45000, 0, 'Frei', 215, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1277.07, -1028.94, 32.158, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1997, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(480, 10000, 0, 'Frei', 50, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1866.94, -1985.45, 13.545, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(481, 75000, 0, 'Frei', 148, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2165.54, 614.801, 10.829, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 193, 0, 0, 0, 0, 0, 0, 2351, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(482, 55000, 0, 'Frei', 12, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 772.921, 348.247, 20.152, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(483, 10000, 0, 'Frei', 50, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2582.94, -952.921, 81.388, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(484, 2500, 0, 'Frei', 204, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 413.117, 2536.77, 10, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 697, 10, 0, 2607, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(485, 90000, 0, 'Frei', 111, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1458.31, -202.684, 10.696, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(486, 140000, 0, 'Frei', 116, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 940.893, -1717.92, 13.954, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(487, 7500, 0, 'Frei', 79, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2271.34, 1662.57, 1084.23, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 454, 1, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(488, 500000, 0, 'Frei', 137, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1382.14, -1088.89, 28.204, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6496, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(489, 15000, 0, 'Frei', 12, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1735.08, -1654.25, 23.731, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 590, 18, 0, 0, 0, 1, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(490, 10000, 0, 'Frei', 111, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -2659.63, -981.994, 3.069, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(491, 100000, 0, 'Frei', 73, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 697.289, -1627.06, 3.749, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(492, 150000, 0, 'Frei', 191, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1790.09, -1297.98, 54.902, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(493, 250000, 0, 'Frei', 229, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1247.98, -1559.94, 13.562, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(494, 125000, 0, 'Frei', 96, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1416.85, 261.144, 19.544, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 1442, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(495, 5000, 0, 'Frei', 134, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1451.65, 375.76, 19.399, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(496, 1, 0, 'Frei', 204, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 696.979, -1179.72, 15.541, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(497, 125000, 0, 'Frei', 50, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 761.059, -1564.13, 13.928, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(498, 80000, 0, 'Frei', 226, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 207.75, -61.691, 1.975, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(499, 650000, 0, 'Frei', 50, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 895.676, 403.463, 21.166, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4565, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(500, 55850, 0, 'Frei', 19, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2323.86, 13.064, 26.482, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(501, 60000, 0, 'Frei', 3, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -2534.5, 1143.77, 55.726, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(502, 5000, 0, 'Frei', 54, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2322.75, 54.812, 26.642, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(503, 50000, 0, 'Frei', 111, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, -558.622, -1017.28, 24.576, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 8970, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(504, 2500000, 0, 'Frei', 96, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -516.153, -539.231, 25.523, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(505, 55000, 0, 'Frei', 50, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1932.58, -1865.93, 13.56, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(506, 90000, 0, 'Frei', 73, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -2523.98, 2238.86, 5.394, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9637, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(507, 80000, 0, 'Frei', 119, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 250, 0, 0, 0, 0, 0, 0, 0, 0, 1302.58, 361.217, 19.687, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(508, 200, 0, 'Frei', 65, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1090.25, 1724.97, 872.625, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 376, 12, 0, 0, 0, 1, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(509, 15000, 0, 'Frei', 5, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2274.91, -1805.93, 1301, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 658, 10, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(510, 10000, 0, 'Frei', 65, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1428.48, 356.497, 18.875, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1312, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(511, 8000, 0, 'Frei', 65, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1413.12, 363.083, 19.197, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(512, 10000, 0, 'Frei', 5, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2158.41, -1819.7, 16.138, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(513, 15000, 0, 'Frei', 5, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2273.35, -1812.63, 1301, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 658, 10, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(514, 125000, 0, 'Die Organisation', 2, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, -2159.96, 300.885, 35.311, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5454, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(515, 325000, 0, 'Frei', 11, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 852.33, -1423.27, 14.135, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(516, 40000, 0, 'Frei', 18, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 2092.24, -1166.49, 26.583, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4873, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(517, 25000, 0, 'Frei', 4, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2202.75, -1363.67, 26.19, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(518, 999999999, 0, 'Frei', 5, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -564.119, -1026.82, 24.607, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(519, 80000, 0, 'Frei', 22, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2444.58, -2548.14, 17.909, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6825, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(520, 80000, 0, 'Frei', 54, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 693.544, -1705.78, 3.819, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(521, 5000, 0, 'Frei', 27, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 687.181, -445.644, 16.333, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1907, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(522, 325000, 0, 'Frei', 116, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 398.118, -1271.39, 50.019, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2610, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(523, 95000, 0, 'Frei', 8, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2392.35, -54.962, 28.152, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(524, 99999999, 0, 'Frei', 79, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 201.496, 1874.38, 13.14, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(525, 20000, 0, 'Frei', 101, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 748.129, 257.454, 27.083, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1326, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(526, 175025, 0, 'Frei', 79, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1472.26, -1263.81, 14.562, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(527, 5000, 0, 'Frei', 54, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2140.55, -1708.31, 15.085, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3627, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(528, 150000, 0, 'Frei', 192, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1790.08, -1297.97, 60.359, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(529, 90000, 0, 'Frei', 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2448.7, -2620.45, 13.656, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6641, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(530, 75000, 0, 'Frei', 50, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -2220.39, -2399.89, 32.582, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(531, 25000, 0, 'Frei', 55, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2507.91, -2021.05, 14.21, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(532, 1, 0, 'Frei', 96, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2143.38, -2162.42, 13.545, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(533, 5000, 0, 'Frei', 62, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1469.45, -791.273, 1084.14, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 686, 12, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(534, 50000, 0, 'Frei', 73, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2257.89, 168.339, 28.152, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(535, 28000, 0, 'Frei', 73, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 652.664, -1693.97, 14.548, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(536, 1, 0, 'Frei', 91, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 919.466, -1252.18, 16.208, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(537, 25000, 0, 'Frei', 153, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2230.41, -1397.24, 24.572, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(538, 30119, 0, 'Frei', 181, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 0, 0, 1302.08, 216.957, 19.554, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 140, 0, 0, 0, 0, 0, 0, 5675, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(539, 10000, 0, 'Frei', 5, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2146.52, -1808.49, 16.138, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(540, 800000, 0, 'Frei', 137, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1411.55, -1699.53, 13.538, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(541, 150000, 0, 'Frei', 68, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1607.28, -1842.43, 13.512, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1224, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(542, 20000, 0, 'Frei', 108, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1735.08, -1654.17, 23.731, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 18, 0, 0, 0, 1, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(543, 25000, 0, 'Frei', 50, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 110.5, 1106.67, 13.609, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(544, 999999999, 0, 'Frei', 111, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1665.64, -1940.9, 101.299, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(545, 125000, 0, 'Frei', 66, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1222.02, 244.143, 19.545, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 57, 0, 0, 0, 0, 0, 0, 6969, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(546, 40000, 0, 'Frei', 54, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018.24, -1703.36, 14.234, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(547, 450000, 0, 'Frei', 215, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 785.908, -828.591, 70.289, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(548, 28000, 0, 'Frei', 108, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2303.58, -53.902, 26.482, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(549, 5000, 0, 'Frei', 47, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2393.41, -2497.6, 13.647, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2003, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(550, 30128, 0, 'Frei', 91, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 639.465, -513.83, 16.343, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(551, 999999999, 0, 'Frei', 50, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -589.023, -1104.86, 23.885, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(552, 55000, 0, 'Frei', 11, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -2657.32, 848.609, 64.007, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 140, 0, 0, 0, 0, 0, 0, 5473, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(553, 150000, 0, 'Frei', 202, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1790.06, -1297.98, 120.263, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 140, 0, 0, 0, 0, 0, 0, 2712, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(554, 125000, 0, 'Frei', 11, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1846.53, -2019.65, 13.545, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(555, 30000, 0, 'Frei', 177, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2514.3, -1691.62, 14.045, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5793, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(556, 1, 0, 'Frei', 28, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 170.195, -1314.65, 70.347, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(557, 1, 0, 'Frei', 29, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 287.549, -1611.93, 32.958, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(558, 1, 0, 'Frei', 30, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 287.549, -1611.93, 32.958, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(559, 1, 0, 'Frei', 31, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 287.549, -1611.93, 32.958, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(560, 1, 0, 'Frei', 32, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 287.526, -1611.92, 32.957, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 140, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(561, 1, 0, 'Frei', 33, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 287.549, -1611.93, 32.958, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(562, 1, 0, 'Frei', 34, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 170.093, -1313.43, 70.347, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(563, 1, 0, 'Frei', 35, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 287.549, -1611.93, 32.958, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(564, 1, 0, 'Frei', 36, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 287.549, -1611.93, 32.958, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(565, 1, 0, 'Frei', 37, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 169.291, -1319.99, 70.347, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(566, 1, 0, 'Frei', 38, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 170.227, -1320.92, 70.347, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(567, 1, 0, 'Frei', 39, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 287.526, -1611.92, 32.957, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(568, 45000, 0, 'Frei', 50, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 168.328, -1768.4, 4.486, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(569, 12693, 0, 'Frei', 100, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2387.86, -1328.46, 25.124, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(570, 1, 0, 'Frei', 116, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 193.796, -230.658, 1.797, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(571, 24000, 0, 'Frei', 74, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2016.2, -1717.06, 14.125, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(572, 7500, 0, 'Frei', 79, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2266.04, 1633.61, 1084.23, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 454, 1, 0, 4420, 0, 1, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(573, 1500000, 0, 'Frei', 96, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 1774.91, -1706.32, 13.522, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 287, 0, 0, 0, 0, 0, 0, 1307, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(574, 100000, 0, 'Frei', 116, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2266.04, 1642.2, 1084.23, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 726, 1, 0, 0, 0, 1, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(575, 7500, 0, 'Frei', 79, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2266.05, 1642.18, 1084.23, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 454, 1, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1);
INSERT INTO `houses` (`hID`, `hPreis`, `hLevel`, `hBesitzer`, `hInterior`, `hMieter`, `hMaxMieter`, `hLock`, `hRent`, `hDrogen`, `hMats`, `hWaffenschrank`, `hGun0`, `hGun1`, `hGun2`, `hGun3`, `hGun4`, `hAmmo0`, `hAmmo1`, `hAmmo2`, `hAmmo3`, `hAmmo4`, `hKasse`, `hHeal`, `hOwned`, `hVersteck`, `hX`, `hY`, `hZ`, `hbuero`, `hBueroName`, `hSchild`, `hSchildName`, `hsx`, `hsy`, `hsz`, `hsa`, `hkay`, `heintritt`, `hDrogen2`, `hDrogen3`, `hSkin0`, `hSkin1`, `hSkin2`, `hSkin3`, `hSkin4`, `hStrom`, `hspawnworld`, `hspawninterior`, `hlicht`, `hwpin`, `hwdog`, `hapart`, `hlauts`, `hsong`, `harmor`, `hdrogen4`, `hrucksack`, `hwatche`, `hklingels`, `hdefi`, `hgates`, `hgarage`, `hsc`, `hdiebesgut`, `hversteigert`, `heisen`, `hfirma`) VALUES
(576, 999999999, 0, 'Frei', 47, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 203.229, 1865.07, 13.14, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(577, 125000, 0, 'Frei', 73, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2417.01, 17.937, 27.683, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(578, 15000, 0, 'Frei', 134, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 747.127, 278.19, 27.218, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(579, 25000, 0, 'Frei', 11, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1980.99, -1682.79, 17.052, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2276, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(580, 150000, 0, 'Frei', 199, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1790.09, -1297.97, 98.5, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(581, 2500, 0, 'Frei', 233, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2259.28, 63.198, 26.482, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 140, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(582, 1000, 0, 'Frei', 134, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 264.514, -283.76, 1.725, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(583, 45000, 0, 'Frei', 100, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2067.05, -1731.59, 14.206, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(584, 10000, 0, 'Frei', 180, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1596.08, 1610.8, 1612.9, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 474, 12, 0, 0, 0, 1, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(585, 170000, 0, 'Frei', 73, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1468.65, -906.184, 54.833, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(586, 55000, 0, 'Frei', 213, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2551.22, 57.243, 27.673, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8520, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(587, 99999999, 0, 'Frei', 4, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2271.08, 1662.6, 1084.23, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 686, 1, 0, 0, 0, 1, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(588, 5000, 0, 'Frei', 79, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2203.85, 106.162, 28.44, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1149, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(589, 5000, 0, 'Frei', 12, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2378.59, -1953.14, 3517, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 398, 14, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(590, 202062, 0, 'Frei', 96, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 511.756, -1511, 14.567, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(591, 19999, 0, 'Frei', 5, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2146.79, -1470.48, 26.041, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(592, 130000, 0, 'Frei', 175, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2269.52, 111.76, 28.44, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(593, 75000, 0, 'Frei', 96, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -49.965, -269.359, 6.631, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(594, 50000, 0, 'Frei', 174, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1863.81, -1597.28, 14.305, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(595, 20000, 0, 'Frei', 111, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 700.538, 298.316, 20.472, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1993, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(596, 50000, 0, 'Frei', 68, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1884.9, -1791.87, 13.545, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 21120, 0, 0, 0, 0, 0, 0, 8975, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(597, 150000, 0, 'Frei', 22, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1287.86, -1601.14, 13.545, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(598, 150000, 0, 'Frei', 116, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 416.778, -1154.13, 76.68, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2692, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(599, 35500, 0, 'Frei', 18, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2303.58, -61.352, 26.482, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(600, 225000, 0, 'Frei', 73, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 1025.59, -1770.79, 13.545, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 140, 0, 0, 0, 0, 0, 0, 6461, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(601, 200000, 0, 'Frei', 19, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 989.757, -828.668, 95.468, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(602, 800000, 0, 'Frei', 224, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 1925.55, 170.037, 37.277, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1504, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(603, 75000, 0, 'Frei', 3, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 295.19, -54.541, 2.776, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(604, 9999999, 0, 'Frei', 84, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 202.218, 1869.03, 13.14, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(605, 150000, 0, 'Frei', 193, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1790.08, -1297.98, 65.805, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(606, 99999999, 0, 'Frei', 215, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 201.854, 1862.71, 13.14, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(607, 2000000, 0, 'Frei', 215, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1823.91, 34.326, 35.826, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(608, 999999999, 0, 'Frei', 124, 0, 1337, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1961.05, -1575.61, 13.59, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(609, 150000, 0, 'Frei', 40, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 900, 0, 0, 0, 0, 0, 0, 0, 0, 1122.95, -1127.57, 23.818, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7904, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(610, 275000, 0, 'Frei', 218, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42, 0, 0, 0, 0, 0, 0, 0, 0, 1294.81, 235.429, 19.554, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 140, 0, 0, 0, 0, 0, 0, 1877, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(611, 50000, 0, 'Frei', 3, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2110.88, -1244.4, 25.85, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(612, 5000, 0, 'Frei', 17, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -566.14, -180.158, 78.402, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(613, 75000, 0, 'Frei', 7, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 768.078, -1655.72, 5.609, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 140, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(614, 5000, 0, 'Frei', 47, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2728.35, -2243.89, 13.545, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4466, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(615, 100000, 0, 'Frei', 150, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2323.85, 162.272, 28.44, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(616, 150000, 0, 'Frei', 116, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 152.942, -1449.44, 32.844, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 21033, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(617, 320000, 0, 'Frei', 116, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 913.19, -917.632, 42.601, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8222, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(618, 80000, 0, 'Frei', 215, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2458.92, 128.985, 27.673, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(619, 350000, 0, 'Frei', 91, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1154.03, -1772.68, 16.599, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(620, 1200000, 0, 'Frei', 96, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1471.35, -1178.1, 23.92, -1, 'n/A', 75214, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 21081, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(621, 85000, 0, 'Frei', 78, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 745.218, -556.783, 18.01, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(622, 150000, 0, 'Frei', 194, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1790.08, -1297.94, 71.273, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(623, 5000, 0, 'Frei', 134, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 260.596, -302.988, 1.917, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1001, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(624, 15000, 0, 'Frei', 11, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1187.35, -1233.52, 22.138, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(625, 100000, 0, 'Frei', 175, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 136.214, -1497.7, 18.763, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(626, 50000, 0, 'Frei', 213, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2536.21, 128.988, 27.683, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 21107, 0, 0, 0, 0, 0, 0, 1111, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(627, 200500, 0, 'Frei', 214, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 1658.61, -1272.34, 14.812, -1, 'n/A', 75215, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 4758, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(628, 6000, 0, 'Frei', 60, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1900.22, -1985.39, 13.545, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(629, 250000, 0, 'Frei', 169, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -910.979, 2685.9, 42.368, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(630, 266000, 0, 'Frei', 138, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 606.601, -1459.08, 14.39, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(631, 57000, 0, 'Frei', 22, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2348.52, -1372.68, 24.398, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(632, 25000, 0, 'Frei', 5, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1475.36, 372.734, 19.656, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(633, 80000, 0, 'Frei', 65, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2090.97, -1277.83, 26.179, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(634, 10000, 0, 'Frei', 50, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2151.2, -1598.27, 14.345, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6705, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(635, 70000, 0, 'Frei', 184, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 758.874, 375.165, 23.392, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4596, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(636, 1, 0, 'Frei', 204, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2510.09, 88.605, 27.683, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(637, 50000, 0, 'Frei', 116, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 915.677, -1816.85, 13.307, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(638, 15000, 0, 'Frei', 59, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1471.78, -798.346, 1080.46, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 686, 12, 0, 2901, 0, 1, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(639, 80000, 0, 'Frei', 50, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2186.61, -997.348, 66.468, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(640, 17500, 0, 'Frei', 80, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2150.34, -1285.04, 24.524, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(641, 21000, 0, 'Frei', 77, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2070.1, -1785.33, 13.553, -1, 'n/A', 75216, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(642, 90000, 0, 'Frei', 157, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 252.888, -121.319, 3.535, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(643, 150000, 0, 'Frei', 133, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2332.78, 31.01, 26.673, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(644, 10000, 0, 'Frei', 79, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2146.47, -1814.98, 16.138, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(645, 10000, 0, 'Frei', 100, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1462.07, -795.981, 1087.79, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 686, 12, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(646, 40000, 0, 'Frei', 160, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 787.455, 375.871, 21.295, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(647, 3000, 0, 'Frei', 215, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2509.49, 11.762, 28.44, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 21101, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(648, 30000, 0, 'Frei', 216, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2153.88, -91.662, 2.686, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 21555, 0, 0, 0, 0, 0, 0, 2012, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(649, 125000, 0, 'Frei', 73, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1292.06, -1131.36, 23.826, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(650, 7500, 0, 'Frei', 204, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2396.9, -2572.94, 13.663, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2588, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(651, 95000, 0, 'Frei', 116, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 745.671, -591.02, 18.01, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(652, 10000, 0, 'Frei', 144, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -87.26, -1202.31, 2.89, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(653, 1, 0, 'Frei', 44, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1699.99, -1171.28, 23.847, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(654, 150000, 0, 'Frei', 187, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1790.05, -1297.97, 33.125, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(655, 80000, 0, 'Frei', 3, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 2288.19, -1104.65, 38.59, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(656, 5000, 0, 'Frei', 47, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 62, 0, 0, 0, 0, 0, 0, 0, 0, 2265.06, -2611.9, 8.357, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(657, 7500, 0, 'Frei', 80, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2271.33, 1642.18, 1084.23, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 454, 1, 0, 0, 0, 1, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(658, 125000, 0, 'Frei', 41, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2334.61, -1234.66, 27.975, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(659, 150000, 0, 'Frei', 198, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1790.09, -1297.98, 93.039, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(660, 60000, 0, 'Frei', 73, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2000.12, -1114.06, 27.125, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9494, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(661, 75000, 0, 'Frei', 80, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1073.27, -1384.9, 13.869, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(662, 80000, 0, 'Frei', 77, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 776.491, -1036.16, 24.277, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(663, 30155, 0, 'Frei', 111, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 120, 0, 0, 0, 0, 0, 0, 0, 0, -2111.29, -1796.31, 210.442, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1339, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(664, 50000, 0, 'Frei', 162, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2068.66, -1773.89, 13.56, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(665, 1, 0, 'Frei', 47, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1267.7, -1701.16, 2856.19, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 93, 14, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(666, 20000, 0, 'Frei', 152, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 110, 0, 0, 0, 0, 0, 0, 0, 0, 2229.6, -1241.61, 25.656, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 140, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(667, 150000, 0, 'Frei', 200, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1790.04, -1297.98, 109.359, -1, 'n/A', 75217, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(668, 5000, 0, 'Frei', 4, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 447, 0, 0, 0, 0, 0, 0, 0, 0, 2431.72, -2257.24, 7028.56, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 739, 12, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(669, 475000, 0, 'Frei', 116, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1031.65, -1942.67, 16.304, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 21061, 0, 0, 0, 0, 0, 0, 1234, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(670, 350000, 0, 'Frei', 137, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1475.55, -1415.42, 13.76, -1, 'n/A', 75218, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(671, 7500, 0, 'Frei', 79, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2266.04, 1652.47, 1084.23, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 454, 1, 0, 0, 0, 1, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(672, 150000, 0, 'Frei', 197, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1790.09, -1297.93, 87.583, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(673, 25000, 0, 'Frei', 209, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2178.3, -1660.23, 14.977, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6467, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(674, 135000, 0, 'Frei', 27, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1940, -2116.04, 13.694, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(675, 150000, 0, 'Frei', 195, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1790.08, -1297.96, 76.666, -1, 'n/A', 75219, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(676, 150000, 0, 'Frei', 196, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1790.08, -1297.95, 82.132, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(677, 65000, 0, 'Frei', 50, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 37, 0, 0, 0, 0, 0, 0, 0, 0, 1684.72, -2098.16, 13.833, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 140, 0, 0, 0, 0, 0, 0, 4232, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(678, 82111, 0, 'Frei', 73, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1183.48, -1098.94, 28.256, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(679, 100000, 0, 'Frei', 91, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2501.13, -1759.88, 13.545, -1, 'n/A', 75220, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(680, 80000, 0, 'Frei', 7, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2111.32, -1278.98, 25.833, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(681, 5000, 0, 'Frei', 204, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 761.385, -585.447, 17.333, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(682, 1, 0, 'Frei', 67, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -2172.65, 680.015, 55.159, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(683, 10000, 0, 'Frei', 205, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, -2107.38, -2397.11, 31.42, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4644, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(684, 20000, 0, 'Frei', 108, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1734.97, -1660.24, 23.718, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 18, 0, 0, 0, 1, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(685, 600000, 0, 'Frei', 89, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1380.03, 16.658, 33.458, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(686, 45000, 0, 'Frei', 53, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2022.77, -1761.94, 13.545, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(687, 85000, 0, 'Frei', 158, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 228.134, -1405.07, 51.609, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 140, 0, 0, 0, 0, 0, 0, 2503, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(688, 70000, 0, 'Frei', 215, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2331.81, 75.021, 26.62, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 155, 0, 0, 0, 0, 0, 0, 7208, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(689, 1, 0, 'Frei', 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 412.032, -48.178, 1001.89, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 664, 12, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(690, 5000, 0, 'Frei', 12, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -547.203, -193.837, 78.402, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 6728, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(691, 5000, 0, 'Frei', 47, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2224.88, -2163.19, 13.545, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2607, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(692, 25000, 0, 'Frei', 80, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2451.88, -1641.41, 14.064, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(693, 10000, 0, 'Frei', 48, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2091.36, -2044.03, 16.075, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(694, 1, 0, 'Frei', 47, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2665.76, -2240.15, 16.208, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1701, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(695, 75000, 0, 'Frei', 215, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2303.58, -68.708, 26.482, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(696, 35000, 0, 'Frei', 163, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2393.25, -1646.03, 13.904, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(697, 55000, 0, 'Frei', 177, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1051.79, 1549.93, 33.437, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(698, 20000, 0, 'Frei', 65, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1708.7, -1659.82, 23.701, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 337, 18, 0, 0, 0, 1, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(699, 250000, 0, 'Frei', 96, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -97.105, 1038, 20.231, -1, 'n/A', 75221, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 5473, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(700, 5000, 0, 'Frei', 100, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2481.77, -1332, 28.301, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(701, 15000, 0, 'Frei', 65, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1595.98, 1621.55, 1616.26, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 474, 12, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(702, 7500, 0, 'Frei', 158, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1291.89, 281.493, 19.561, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 140, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(703, 30000, 0, 'Frei', 7, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2486.43, -2021.55, 13.998, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5544, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(704, 23000, 0, 'Frei', 11, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2250.22, -1280.05, 25.475, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(705, 30000, 0, 'Frei', 11, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1872.25, -1912.09, 15.255, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(706, 150000, 0, 'Frei', 116, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 497.463, -1095.07, 82.359, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(707, 180000, 0, 'Frei', 135, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1102.43, -1131.78, 23.826, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(708, 115000, 0, 'Frei', 116, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 880.138, -1424.82, 14.484, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3077, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(709, 325000, 0, 'Frei', 73, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 646.085, -1117.32, 44.207, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(710, 30000, 0, 'Frei', 41, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 2022.66, -1774.27, 13.553, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(711, 10000, 0, 'Frei', 27, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2244.57, -1637.66, 16.236, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(712, 400000, 0, 'Frei', 26, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2233.29, -1159.8, 25.888, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(713, 65000, 0, 'Frei', 116, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 813.682, -1456.8, 14.229, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 1977, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(714, 650000, 0, 'Frei', 215, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1434.52, 313.716, 19.322, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6161, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(715, 80000, 0, 'Frei', 175, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2808.03, -1190.89, 25.34, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(716, 15000, 0, 'Frei', 79, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2323.85, 116.111, 28.44, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(717, 125000, 0, 'Frei', 11, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2303.58, -42.381, 26.482, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1423, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(718, 115000, 0, 'Frei', 116, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1315.47, -897.681, 39.588, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(719, 1, 0, 'Frei', 205, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 556.814, -1428.84, 16.131, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(720, 180000, 0, 'Frei', 237, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1374.14, 404.997, 19.954, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(721, 10000, 0, 'Frei', 73, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -566.447, 293.695, 3.289, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(722, 1, 0, 'Frei', 116, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1789.89, -1857.21, 618.242, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 168, 13, 0, 0, 0, 1, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(723, 5000, 0, 'Frei', 65, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 746.382, 305.079, 20.232, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1877, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(724, 159999, 0, 'Frei', 91, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2377.09, -2072.99, 15.25, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(725, 539000, 0, 'Frei', 73, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 120, 0, 0, 0, 0, 0, 0, 0, 0, -2879.01, -1977.24, 37.84, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8520, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(726, 800000, 0, 'Frei', 69, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1154.96, -1180.94, 32.818, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(727, 28000, 0, 'Frei', 78, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 969.614, -1812.02, 13.883, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(728, 50000, 0, 'Frei', 16, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -2810.9, -1524.04, 140.843, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(729, 5000, 0, 'Frei', 60, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1468.46, -799.473, 1087.79, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 686, 12, 0, 0, 0, 1, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(730, 125000, 0, 'Frei', 116, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2272.37, -119.135, 28.152, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1298, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(731, 25000, 0, 'Frei', 10, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2492.1, -965.723, 82.541, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(732, 2500, 0, 'Frei', 4, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 201.442, -96.972, 4.894, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(733, 65000, 0, 'Frei', 92, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2070.63, -1793.86, 13.545, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(734, 180000, 0, 'Frei', 158, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -2348.4, 2423.62, 7.328, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(735, 12117, 0, 'Frei', 100, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 220, 0, 0, 0, 0, 0, 0, 0, 0, 2637.1, -1991.67, 14.324, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 6601, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(736, 32000, 0, 'Frei', 101, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2296.55, -1882.55, 14.234, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(737, 1500000, 0, 'Frei', 3, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1024.11, -593.687, 32.207, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(738, 120111, 0, 'Frei', 205, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 800.989, -613.778, 16.333, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1234, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(739, 1, 0, 'Frei', 174, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2670.28, -1229.31, 58.347, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(740, 80000, 0, 'Frei', 215, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2364, 142.018, 28.44, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(741, 5000, 0, 'Frei', 17, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2755.59, -2004.54, 13.553, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1994, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(742, 1500000, 0, 'Frei', 82, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2649.96, 1277.35, 10.826, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(743, 125000, 0, 'Frei', 73, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2367.4, -49.125, 28.152, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(744, 999999999, 0, 'Frei', 91, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 206.753, 1868.92, 13.14, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(745, 7500, 0, 'Frei', 73, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2271.34, 1652.49, 1084.23, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 45, 0, 0, 0, 454, 1, 0, 4565, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(746, 60000, 0, 'Frei', 221, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1323.89, 375.592, 19.562, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(747, 907883, 0, 'Frei', 116, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 218.985, -1249.98, 78.333, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1),
(748, 75000, 0, 'Frei', 79, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 252.83, -92.402, 3.535, -1, 'n/A', -1, 'n/A', 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'n/A', 0, 0, -1, 0, 0, 'n/A', 0, 0, 0, 0, 0, 0, -1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `identifikation`
--

CREATE TABLE `identifikation` (
  `id` int(11) NOT NULL,
  `pid` int(11) DEFAULT NULL,
  `ident` varchar(25) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `identifikation`
--

INSERT INTO `identifikation` (`id`, `pid`, `ident`, `timestamp`) VALUES
(1, 1, '144-9573503-349', 1645291333),
(2, 1, '149-9573533-610', 1645394337);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `inactive_ucp`
--

CREATE TABLE `inactive_ucp` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `von` varchar(100) DEFAULT NULL,
  `bis` varchar(100) DEFAULT NULL,
  `date_today` varchar(100) DEFAULT NULL,
  `grund` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `kennzeichen`
--

CREATE TABLE `kennzeichen` (
  `id` int(11) NOT NULL,
  `name` varchar(24) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `koffer`
--

CREATE TABLE `koffer` (
  `id` int(11) NOT NULL,
  `sid` int(11) DEFAULT -1,
  `koffermodel` int(6) DEFAULT 0,
  `kofferdropped` int(2) DEFAULT NULL,
  `kofferx` double DEFAULT NULL,
  `koffery` double DEFAULT NULL,
  `kofferz` double DEFAULT NULL,
  `koffergeld` int(6) DEFAULT NULL,
  `kofferdrogen` int(6) DEFAULT NULL,
  `kofferdrogen2` int(6) DEFAULT NULL,
  `kofferdrogen3` int(6) DEFAULT NULL,
  `koffermats` int(6) DEFAULT NULL,
  `kofferwaffe` int(6) DEFAULT NULL,
  `kofferammo` int(6) DEFAULT NULL,
  `koffertime` int(11) DEFAULT NULL,
  `kofferarmor` int(6) DEFAULT NULL,
  `kofferlastonline` int(11) DEFAULT NULL,
  `kofferpid` int(11) DEFAULT -1,
  `kofferlastset` int(2) DEFAULT NULL,
  `kofferdrogen4` int(6) DEFAULT NULL,
  `kofferkleidung` int(5) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `kontakte`
--

CREATE TABLE `kontakte` (
  `id` int(11) NOT NULL,
  `name` varchar(26) DEFAULT NULL,
  `nummer` int(6) DEFAULT NULL,
  `inh` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `leitern`
--

CREATE TABLE `leitern` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `x1` float DEFAULT NULL,
  `y1` float DEFAULT NULL,
  `z1` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `lohnsystem`
--

CREATE TABLE `lohnsystem` (
  `id` int(2) NOT NULL,
  `lohn1` int(12) DEFAULT 1000,
  `lohn2` int(12) DEFAULT 1000,
  `lohn3` int(12) DEFAULT 1000,
  `lohn4` int(12) DEFAULT 1000,
  `lohn5` int(12) DEFAULT 1000,
  `lohn6` int(12) DEFAULT 1000,
  `lohn7` int(12) DEFAULT 1000,
  `lohn8` int(12) DEFAULT 1000,
  `lohn9` int(12) DEFAULT 1000,
  `lohn10` int(12) DEFAULT 1000,
  `lohn11` int(12) DEFAULT 1000,
  `lohn12` int(12) DEFAULT 1000
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `lohnsystem`
--

INSERT INTO `lohnsystem` (`id`, `lohn1`, `lohn2`, `lohn3`, `lohn4`, `lohn5`, `lohn6`, `lohn7`, `lohn8`, `lohn9`, `lohn10`, `lohn11`, `lohn12`) VALUES
(1, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250),
(2, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250),
(3, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250),
(4, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250),
(5, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250),
(6, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250),
(7, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250),
(8, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250),
(9, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250),
(10, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250),
(11, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250),
(12, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250),
(13, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `marktplatz_categories`
--

CREATE TABLE `marktplatz_categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `marktplatz_gebote`
--

CREATE TABLE `marktplatz_gebote` (
  `id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `gebot` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `marktplatz_images`
--

CREATE TABLE `marktplatz_images` (
  `id` int(11) UNSIGNED NOT NULL,
  `image_id` varchar(250) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `marktplatz_inserate`
--

CREATE TABLE `marktplatz_inserate` (
  `id` int(11) UNSIGNED NOT NULL,
  `categorie` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `startpreis` int(11) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `plz` int(11) DEFAULT NULL,
  `strasse` varchar(250) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `ersteller_id` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `freigegeben` int(11) DEFAULT 0,
  `abgelaufen` int(11) DEFAULT 0,
  `time` int(11) DEFAULT NULL,
  `bisWann` int(11) DEFAULT NULL,
  `image1` varchar(120) DEFAULT NULL,
  `image2` varchar(120) DEFAULT NULL,
  `image3` varchar(120) DEFAULT NULL,
  `image4` varchar(120) DEFAULT NULL,
  `image5` varchar(120) DEFAULT NULL,
  `gebuehr` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `marktschreier`
--

CREATE TABLE `marktschreier` (
  `id` int(2) DEFAULT NULL,
  `werbung1` varchar(90) DEFAULT 'Hier könnte Ihre Werbung stehen, /call 180!',
  `werbung2` varchar(90) DEFAULT 'Hier könnte Ihre Werbung stehen, /call 180!',
  `werbung3` varchar(90) DEFAULT 'Hier könnte Ihre Werbung stehen, /call 180!',
  `werbung4` varchar(90) DEFAULT 'Hier könnte Ihre Werbung stehen, /call 180!',
  `werbung5` varchar(90) DEFAULT 'Hier könnte Ihre Werbung stehen, /call 180!',
  `t1` int(11) DEFAULT 0,
  `t2` int(11) DEFAULT 0,
  `t3` int(11) DEFAULT 0,
  `t4` int(11) DEFAULT 0,
  `t5` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `marktschreier`
--

INSERT INTO `marktschreier` (`id`, `werbung1`, `werbung2`, `werbung3`, `werbung4`, `werbung5`, `t1`, `t2`, `t3`, `t4`, `t5`) VALUES
(0, 'Schau doch mal auf Nemesus.de vorbei', 'Schau doch mal auf Nemesus.de vorbei!', 'Schau doch mal auf Nemesus.de vorbei!', 'WÄHLT RHODES DEN KORRUPTEN DRECKSACK AB', 'WÄHLT RHODES DEN KORRUPTEN DRECKSACK AB', 0, 0, 0, 0, 0),
(1, 'Schau doch mal auf Nemesus.de vorbei', 'Schau doch mal auf Nemesus.de vorbei!', 'Schau doch mal auf Nemesus.de vorbei!', 'WÄHLT RHODES DEN KORRUPTEN DRECKSACK AB', 'WÄHLT RHODES DEN KORRUPTEN DRECKSACK AB', 0, 0, 0, 0, 0),
(2, 'Schau doch mal auf Nemesus.de vorbei', 'Schau doch mal auf Nemesus.de vorbei!', 'Schau doch mal auf Nemesus.de vorbei!', 'WÄHLT RHODES DEN KORRUPTEN DRECKSACK AB', 'WÄHLT RHODES DEN KORRUPTEN DRECKSACK AB', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `moebelindex`
--

CREATE TABLE `moebelindex` (
  `id` int(11) NOT NULL,
  `objid` int(6) DEFAULT NULL,
  `preis` int(6) DEFAULT NULL,
  `name` varchar(55) DEFAULT 'n/A',
  `kategorie` int(2) DEFAULT NULL,
  `versteck` int(2) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `moebelindex`
--

INSERT INTO `moebelindex` (`id`, `objid`, `preis`, `name`, `kategorie`, `versteck`) VALUES
(1, 0, 0, 'INVALID_FURNITURE_ID', -1, 0),
(2, 1337, 0, '-- Wohnzimmer --', -1, 0),
(3, 1762, 1700, 'Sessel A', 15, 0),
(4, 1765, 1800, 'Sessel B', 15, 0),
(5, 1761, 2100, 'Sofa A', 15, 0),
(6, 1764, 2250, 'Sofa B', 15, 0),
(7, 2312, 1500, 'Fernseher Röhre A', 4, 0),
(8, 2316, 1750, 'Fernseher Röhre B', 4, 0),
(9, 2322, 1900, 'Fernseher Röhre C', 4, 0),
(10, 2313, 740, 'Fernsehtisch mit DVD Spieler', 13, 0),
(11, 2165, 5500, 'PC mit Tisch', 4, 0),
(12, 2356, 750, 'PC Stuhl', 15, 0),
(13, 2030, 950, 'Runder Marmortisch', 13, 0),
(14, 2086, 1300, 'Glass Tisch', 13, 0),
(15, 2112, 700, 'Holz Tisch', 13, 0),
(16, 2115, 850, 'Großer Holz Tisch', 13, 0),
(17, 2079, 500, 'Stuhl A', 15, 0),
(18, 2120, 750, 'Stuhl B', 15, 0),
(19, 2121, 425, 'Klappstuhl', 15, 0),
(20, 2096, 700, 'Schaukelstuhl B', 15, 0),
(21, 2069, 700, 'Lampe A', 7, 0),
(22, 2103, 4500, 'Hausradio', 4, 0),
(23, 2182, 550, 'Büro Ecktisch A', 13, 0),
(24, 2298, 1500, 'Blaues Bett', 18, 0),
(25, 2299, 1900, 'Braunes Bett', 18, 0),
(26, 2300, 1750, 'Gelbes Bett', 18, 0),
(27, 2301, 1500, 'Blau/Grünes Bett', 18, 0),
(28, 2167, 3250, 'Kleiderschrank', 13, 0),
(29, 1337, 0, '-- Badezimmer --', -1, 0),
(30, 2526, 1550, 'Badewanne', 14, 0),
(31, 2527, 1350, 'Dusche', 14, 0),
(32, 2518, 500, 'Waschbecken', 14, 0),
(33, 2525, 520, 'Toillete', 14, 0),
(34, 1208, 1360, 'Waschmaschine', 2, 0),
(35, 1337, 0, '-- Küche --', -1, 0),
(36, 2128, 1500, 'Roter Kühlschrank', 2, 0),
(37, 2141, 1000, 'Weißer Kühlschrank', 2, 1),
(38, 2134, 800, 'Weiße Küche T1', 2, 1),
(39, 2133, 800, 'Weiße Küche T2', 2, 1),
(40, 2131, 800, 'Weiße Küche T3', 2, 0),
(41, 2127, 900, 'Rote Küche T1', 2, 0),
(42, 2129, 900, 'Rote Küche T2', 2, 1),
(43, 2294, 900, 'Rote Küche T3', 2, 0),
(44, 2132, 500, 'Weiße Küche Waschbecken', 2, 0),
(45, 2130, 600, 'Rotes Waschbecken', 2, 0),
(46, 1343, 500, 'Mülltonne A', 10, 1),
(47, 2149, 800, 'Microwelle', 2, 1),
(48, 1337, 0, '-- Sonstiges --', -1, 0),
(49, 19174, 550, 'San Andreas Bild', 5, 0),
(50, 19172, 550, 'Santa Maria Beach Bild', 5, 0),
(51, 19173, 280, 'San Fierro Bild', 5, 0),
(52, 2627, 7850, 'Laufband', 19, 0),
(53, 2630, 8250, 'Laufrad', 19, 0),
(54, 2964, 1600, 'Billiardtisch', 4, 0),
(55, 19317, 690, 'Gitarre', 1, 0),
(56, 2202, 1850, 'Kopierer', 4, 0),
(57, 2028, 2150, 'Konsole', 4, 0),
(58, 2779, 3620, 'Arcade Maschine', 4, 0),
(59, 1337, 0, '-- Wände/Türen --', -1, 0),
(60, 1502, 950, 'Tür A', 17, 0),
(61, 2192, 350, 'Ventilator', 4, 0),
(62, 19450, 2500, 'Wand A (Lang)', 16, 0),
(63, 19431, 1750, 'Wand A (Kurz)', 16, 0),
(64, 1337, 0, '-- Büro --', -1, 0),
(65, 2207, 1000, 'Runder Tisch', 13, 0),
(66, 2164, 1000, 'Büroregal A', 13, 0),
(67, 2162, 800, 'Büroregal B', 13, 0),
(68, 2166, 1000, 'Büro Ecktisch B', 13, 0),
(69, 2169, 2500, 'Weißer Bürotisch', 13, 0),
(71, 1722, 500, 'Bürostuhl', 15, 0),
(72, 1776, 2000, 'Snackautomat', 4, 0),
(73, 1808, 500, 'Wasserspender', 4, 0),
(74, 2163, 1250, 'Zweitüriges Regal', 13, 1),
(75, 2239, 950, 'Lampe B', 7, 0),
(76, 2161, 1000, '3x3 Regal', 13, 0),
(77, 2196, 250, 'Bürolampe', 7, 0),
(78, 1504, 950, 'Tür B', 17, 0),
(79, 1505, 950, 'Tür C', 17, 0),
(80, 1506, 950, 'Tür D', 17, 0),
(81, 1507, 950, 'Tür E', 17, 0),
(82, 1537, 950, 'Tür F', 17, 0),
(83, 1557, 950, 'Tür G', 17, 0),
(84, 1567, 950, 'Tür H', 17, 0),
(85, 1569, 950, 'Tür I', 17, 0),
(86, 19622, 350, 'Besen', 3, 0),
(87, 1985, 650, 'Boxsack', 19, 0),
(88, 19825, 300, 'Uhr', 3, 0),
(89, 11738, 500, 'Erste-Hilfe Koffer', 3, 0),
(90, 11712, 450, 'Kreuz', 5, 0),
(91, 2195, 400, 'Pflanze A', 9, 0),
(92, 2253, 400, 'Pflanze B', 9, 0),
(93, 2011, 400, 'Pflanze C', 9, 0),
(94, 2240, 400, 'Pflanze D', 9, 0),
(95, 19806, 500, 'Deckenlampe', 7, 0),
(96, 11706, 100, 'Mülleimer A', 3, 0),
(97, 1753, 2350, 'Sofa C', 15, 0),
(98, 1766, 2380, 'Sofa D', 15, 0),
(99, 19787, 2000, 'Fernseher Flat A', 4, 0),
(100, 19786, 2500, 'Fernseher Flat B', 4, 0),
(101, 11705, 650, 'Haustelefon A', 4, 0),
(102, 11728, 750, 'Haustelefon B', 4, 0),
(103, 19807, 550, 'Haustelefon C', 4, 0),
(104, 330, 450, 'Haustelefon D', 4, 0),
(105, 19893, 4000, 'Laptop', 4, 0),
(106, 11704, 250, 'Halloween Maske', 8, 0),
(107, 19320, 300, 'Kürbis', 8, 0),
(108, 19527, 350, 'Kessel', 8, 0),
(109, 19528, 250, 'Hexenhut', 8, 0),
(110, 19121, 450, 'Bollard Light W', 7, 0),
(111, 19122, 450, 'Bollard Light B', 7, 0),
(112, 19123, 450, 'Bollard Light Gr', 7, 0),
(113, 19124, 450, 'Bollard Light R', 7, 0),
(114, 19125, 450, 'Bollard Light Ge', 7, 0),
(115, 19126, 450, 'Bollard Light T', 7, 0),
(116, 19127, 450, 'Bollard Light L', 7, 0),
(117, 19076, 650, 'Weihnachtsbaum', 8, 0),
(118, 19916, 1000, 'Silberner Kühlschrank', 2, 1),
(119, 11715, 250, 'Gabel', 2, 0),
(120, 11716, 250, 'Messer', 2, 0),
(121, 11718, 550, 'Kochtopf A', 2, 0),
(122, 11719, 550, 'Kochtopf B', 2, 0),
(123, 11744, 290, 'Teller', 2, 0),
(124, 11686, 4250, 'Bar', 15, 0),
(125, 11689, 1050, 'Bareckbank', 15, 0),
(126, 11687, 255, 'Barhocker', 15, 0),
(127, 19878, 750, 'Skateboard', 19, 0),
(128, 1575, 350, 'Drogenpaket (Grau)', 3, 1),
(129, 1576, 350, 'Drogenpaket (Orange)', 3, 1),
(130, 1577, 350, 'Drogenpaket (Gelb)', 3, 1),
(131, 1578, 350, 'Drogenpaket (Grün)', 3, 1),
(132, 1579, 350, 'Drogenpaket (Blau)', 3, 1),
(133, 1580, 350, 'Drogenpaket (Rot)', 3, 1),
(134, 2359, 350, 'Munitionskiste A (Offen)', 3, 0),
(135, 2358, 350, 'Munitionskiste A (Zu)', 3, 0),
(136, 2921, 1750, 'Überwachungskamera A', 4, 0),
(137, 1886, 1750, 'Überwachungskamera B', 4, 0),
(138, 1481, 1050, 'Grill', 10, 0),
(139, 2785, 10050, 'Poker Maschinen', 4, 0),
(140, 19817, 22000, 'Hebebühne', 6, 0),
(141, 19900, 2250, 'Werkzeugschrank A', 6, 0),
(142, 19899, 1150, 'Werkzeugschrank B', 6, 0),
(143, 1074, 900, 'Reifen', 6, 0),
(144, 19903, 3700, 'Analyseterminal', 6, 0),
(145, 19815, 2150, 'Werkzeugwand', 6, 0),
(146, 1482, 6500, 'Überdachung A', 10, 0),
(147, 1483, 6750, 'Überdachung B', 10, 0),
(148, 3403, 7000, 'Überdachung C', 10, 0),
(149, 19898, 450, 'OEL-Fleck', 6, 0),
(151, 2886, 1750, 'Keypad', 4, 0),
(152, 1514, 2500, 'Kasse', 3, 0),
(153, 2690, 550, 'Feuerlöscher A', 3, 0),
(154, 19865, 1500, 'Zaun A', 16, 0),
(155, 1408, 1350, 'Zaun B', 16, 0),
(156, 970, 1250, 'Zaun C', 16, 0),
(157, 19869, 1550, 'Zaun D', 16, 0),
(158, 2714, 500, 'Open Schild', 3, 0),
(159, 19867, 750, 'Briefkasten', 10, 0),
(160, 941, 1750, 'Craftingtisch', 13, 0),
(161, 14774, 3000, 'Klimaanlage', 4, 0),
(162, 1210, 350, 'Koffer', 3, 0),
(163, 1550, 500, 'Geldsack', 3, 0),
(164, 14826, 500, 'Reifenschrott', 6, 0),
(165, 19896, 250, 'Zigaretten', 3, 0),
(166, 19128, 6000, 'Tanzfläche', 4, 0),
(167, 19143, 600, 'Scheinwerfer W', 7, 0),
(168, 19144, 600, 'Scheinwerfer O', 7, 0),
(169, 19145, 600, 'Scheinwerfer Gr', 7, 0),
(170, 19146, 600, 'Scheinwerfer B', 7, 0),
(171, 19147, 600, 'Scheinwerfer Ge', 7, 0),
(172, 19148, 600, 'Scheinwerfer P', 7, 0),
(173, 19149, 600, 'Scheinwerfer T', 7, 0),
(174, 19525, 350, 'Hochzeitstorte', 8, 0),
(175, 1479, 1800, 'Carport A', 10, 0),
(176, 19560, 100, 'Verpacktes Fleisch', 2, 0),
(177, 19561, 100, 'Frühstückscerealien A', 2, 0),
(178, 19562, 100, 'Frühstückscerealien B', 2, 0),
(179, 11743, 650, 'Kaffeemaschine', 2, 0),
(180, 19915, 800, 'Alter Ofen', 2, 1),
(181, 19830, 400, 'Mixer', 2, 0),
(182, 1771, 415, 'Altes Bett A', 18, 0),
(183, 19471, 350, 'For Sale Schild', 3, 0),
(184, 19404, 1900, 'Wand A (Fensterrahmen)', 16, 0),
(185, 19388, 2150, 'Wand A (Türrahmen)', 16, 0),
(186, 19159, 2000, 'Discokugel', 4, 0),
(187, 1665, 350, 'Aschenbecher', 3, 0),
(188, 1670, 375, 'Gesöff & Aschenbecher', 3, 0),
(189, 1714, 575, 'Moderner Bürostuhl', 15, 0),
(190, 3262, 700, 'Betreten verboten - Schild', 10, 0),
(191, 19609, 4500, 'Schlagzeug', 1, 0),
(192, 19608, 7200, 'Bühne', 8, 0),
(193, 19610, 1250, 'Mikrofon', 1, 0),
(194, 19611, 600, 'Mikrofonständer', 1, 0),
(195, 19615, 1000, 'Verstärker A', 1, 0),
(196, 19616, 1100, 'Verstärker B', 1, 0),
(197, 19613, 1200, 'Verstärker C', 1, 0),
(198, 19614, 1300, 'Verstärker D', 1, 0),
(199, 19612, 1250, 'Lautstärkeregler', 1, 0),
(200, 19617, 650, 'Goldene Schallplatte', 1, 0),
(201, 19618, 2000, 'Tresor', 13, 1),
(202, 19619, 500, 'Tresortür', 13, 0),
(203, 19621, 200, 'Ölkanne', 6, 0),
(204, 19631, 300, 'Vorschlaghammer', 6, 0),
(205, 19573, 120, 'Grillkohle', 10, 0),
(206, 19584, 600, 'Kochtopf C', 2, 0),
(207, 19585, 620, 'Kochtopf D', 2, 0),
(208, 19583, 220, 'Küchenmesser', 2, 0),
(209, 19586, 220, 'Pfannenwender', 2, 0),
(210, 19581, 650, 'Bratpfanne', 2, 0),
(211, 19805, 800, 'Whiteboard', 4, 0),
(212, 19818, 110, 'Weinglas', 2, 0),
(213, 19819, 110, 'Cocktailglas', 2, 0),
(214, 19808, 200, 'Tastatur', 4, 0),
(215, 19826, 110, 'Lichtschalter A', 4, 0),
(216, 19827, 120, 'Lichtschalter B', 4, 0),
(217, 19828, 130, 'Lichtschalter C', 4, 0),
(218, 19813, 150, 'Steckdose A', 4, 0),
(219, 19814, 180, 'Steckdose B', 4, 0),
(220, 19873, 90, 'Klopapierrolle', 14, 0),
(221, 19874, 65, 'Seife', 14, 0),
(222, 19920, 130, 'Fernbedienung', 4, 0),
(223, 19999, 1800, 'Chefsessel', 15, 0),
(224, 11721, 2000, 'Heizkörper', 3, 0),
(225, 11717, 1600, 'Rotes Sofa', 15, 0),
(226, 11732, 3000, 'Herz-Badewanne', 14, 0),
(227, 11707, 400, 'Handtuchhalter', 14, 0),
(228, 11734, 750, 'Schaukelstuhl A', 15, 0),
(229, 1793, 500, 'Matraze', 18, 0),
(230, 1802, 750, 'Altes Bett B', 18, 0),
(231, 1799, 900, 'Gelb/Braunes Bett', 18, 0),
(232, 1797, 1000, 'Weiß/Blau gestreiftes Bett', 18, 0),
(233, 2090, 800, 'Boxspringbett', 18, 0),
(234, 2295, 200, 'Sitzsack', 15, 0),
(235, 2001, 100, 'Pflanze E', 9, 0),
(236, 2010, 100, 'Pflanze F', 9, 0),
(237, 2410, 500, 'Surf Board A', 19, 0),
(238, 2404, 500, 'Surf Board B', 19, 0),
(239, 2811, 90, 'Pflanze G', 9, 0),
(240, 2405, 500, 'Surf Board C', 19, 0),
(241, 2406, 500, 'Surf Board D', 19, 0),
(242, 2741, 600, 'Seifenspender', 14, 0),
(243, 2245, 90, 'Pflanze H', 9, 0),
(244, 2742, 600, 'Händetrockner', 14, 0),
(245, 14834, 110, 'Pflanze I', 9, 0),
(246, 948, 90, 'Pflanze J', 9, 0),
(247, 949, 90, 'Pflanze K', 9, 0),
(248, 2251, 120, 'Pflanze L', 9, 0),
(249, 3811, 200, 'Wandpflanze A', 9, 0),
(250, 3806, 200, 'Wandpflanze B', 9, 0),
(251, 14391, 3500, 'Mischpult', 1, 0),
(252, 3802, 125, 'Wandpflanze C', 9, 0),
(253, 1958, 100, 'Mischpult Zubehör', 1, 0),
(254, 3810, 125, 'Wandpflanze D', 9, 0),
(255, 2194, 50, 'Kleiner Kaktus', 9, 0),
(256, 1255, 250, 'Gartenliege', 10, 0),
(257, 947, 900, 'Basketballkorb A', 10, 0),
(258, 3496, 900, 'Basketballkorb B', 10, 0),
(259, 3497, 500, 'Basketballkorb C', 10, 0),
(260, 19318, 600, 'Weiße Gitarre', 1, 0),
(261, 19319, 650, 'Schwarze Gitarre', 1, 0),
(262, 19306, 200, 'Flagge Rot', 3, 0),
(263, 2993, 200, 'Flagge Grün', 3, 0),
(264, 19307, 200, 'Flagge Blau', 3, 0),
(265, 2048, 200, 'Flagge A', 3, 0),
(266, 7090, 200, 'Flagge B', 3, 0),
(267, 2614, 200, 'Flagge C', 3, 0),
(268, 11245, 500, 'Flagge D', 3, 0),
(269, 3743, 7000, 'Rolltreppe', 16, 0),
(270, 3264, 1500, 'Privates Schild', 10, 0),
(271, 19967, 1200, 'Einfahrt Verboten', 10, 0),
(272, 19978, 1200, 'Parken Verboten', 10, 0),
(273, 14820, 500, 'DJ Pult', 1, 0),
(274, 2962, 450, 'Feuermelder', 3, 0),
(275, 2961, 450, 'Feuermelder B', 3, 0),
(276, 19331, 100, 'Feuer Hut A', 3, 0),
(277, 19330, 100, 'Feuer Hut B', 3, 0),
(278, 11713, 900, 'Feuerkasten', 3, 0),
(279, 1463, 500, 'Feuerholz A', 10, 0),
(280, 19632, 500, 'Feuerholz B', 10, 0),
(281, 11725, 1500, 'Kamin A', 5, 0),
(282, 11724, 1500, 'Kamin B', 5, 0),
(283, 1211, 2000, 'Hydrant', 3, 0),
(284, 1366, 2000, 'Hydrant Silber', 3, 0),
(285, 2024, 200, 'Beistelltisch A', 13, 0),
(286, 1817, 180, 'Beistelltisch B', 13, 0),
(287, 19456, 2000, 'Wand B (Lang)', 16, 0),
(288, 2081, 190, 'Beistelltisch C', 13, 0),
(289, 19461, 2000, 'Wand C (Lang A)', 16, 0),
(290, 1742, 750, 'Kleines Bücherregal', 13, 0),
(291, 14455, 1800, 'Großes Bücherregal', 13, 0),
(292, 19325, 1500, 'Große Glasscheibe', 16, 0),
(293, 2930, 1000, 'Gitter Tür A', 17, 0),
(294, 19302, 1000, 'Gitter Tür B', 17, 0),
(295, 2576, 2300, 'Komode mit Schrank A', 13, 0),
(296, 2573, 3000, 'Komode mit Schrank B', 13, 0),
(297, 19425, 2000, 'Speed Bumper', 12, 0),
(298, 1416, 1200, 'Komode A', 13, 0),
(299, 1417, 1800, 'Komode B', 13, 0),
(300, 1730, 890, 'Nachtkasten A', 13, 0),
(301, 1740, 700, 'Nachtkasten B', 13, 1),
(302, 19995, 100, 'Magazin', 3, 0),
(303, 2522, 1100, 'Badewanne B', 14, 0),
(304, 2523, 700, 'Waschbecken B', 14, 0),
(305, 2606, 900, 'Überwachungsmonitore', 4, 0),
(306, 2528, 890, 'Toilette B', 14, 0),
(307, 2771, 700, 'Kasse Silber', 3, 0),
(308, 1828, 300, 'Leopardenfellteppich', 5, 0),
(309, 11729, 3250, 'Waffenschrank', 13, 0),
(310, 968, 7000, 'Schranke Teil A', 17, 0),
(311, 966, 850, 'Schranke Teil B', 17, 0),
(312, 967, 2150, 'Schranken Häuschen', 10, 0),
(313, 2750, 375, 'Föhn', 14, 0),
(314, 1451, 1250, 'Tierhäuschen', 10, 0),
(315, 10009, 9500, 'Wendeltreppe', 16, 0),
(316, 8572, 7550, 'Treppe A', 16, 0),
(317, 1214, 350, 'Bollard', 10, 0),
(318, 19868, 1450, 'Stacheldrahtzaun', 16, 0),
(319, 3388, 1250, 'Server A', 4, 0),
(320, 366, 550, 'Feuerlöscher B', 3, 0),
(321, 19602, 850, 'Landmine', 11, 0),
(322, 19590, 500, 'Japanisches Schwert', 5, 0),
(323, 1264, 300, 'Müllsack A', 11, 0),
(324, 1265, 300, 'Müllsack B', 11, 0),
(325, 2655, 800, 'Banner A', 5, 0),
(326, 2656, 800, 'Banner B', 5, 0),
(327, 2657, 800, 'Banner C', 5, 0),
(328, 2694, 250, 'Schuhkarton', 11, 0),
(329, 2063, 550, 'Waffenregal', 11, 0),
(330, 2056, 450, 'Zielscheibe A', 11, 0),
(331, 2055, 300, 'Waffenplakat A', 5, 0),
(332, 2047, 300, 'Waffenplakat B', 5, 0),
(333, 1368, 600, 'Sitzbank A', 15, 0),
(334, 1280, 600, 'Sitzbank B', 15, 0),
(335, 2363, 450, 'Aufsteller', 5, 0),
(336, 10281, 450, 'Autoschild', 5, 0),
(337, 3934, 1000, 'Helipad A', 10, 0),
(338, 3928, 1000, 'Helipad B', 10, 0),
(339, 2631, 350, 'Roter Teppich', 5, 0),
(340, 19315, 850, 'Reh', 23, 0),
(341, 337, 650, 'Schaufel', 10, 0),
(342, 341, 650, 'Kettensäge', 10, 0),
(343, 1445, 250, 'Aufsteller Burger', 5, 0),
(344, 19626, 650, 'Spaten', 10, 0),
(345, 19847, 250, 'Schinken', 2, 0),
(346, 19579, 250, 'Brot', 2, 0),
(347, 19582, 250, 'Steak A', 2, 0),
(348, 19882, 250, 'Steak B', 2, 0),
(349, 18890, 650, 'Rechen', 10, 0),
(350, 18644, 450, 'Schraubendreher', 6, 0),
(351, 18635, 550, 'Hammer', 6, 0),
(352, 18634, 550, 'Brechstange', 6, 0),
(353, 18633, 550, 'Schlüssel', 6, 0),
(354, 3389, 1250, 'Server B', 4, 0),
(355, 3387, 1250, 'Server C', 4, 0),
(356, 3386, 1250, 'Server D', 4, 0),
(357, 2276, 600, 'Kunstwerk A', 5, 0),
(358, 2258, 600, 'Kunstwerk B', 5, 0),
(359, 2261, 600, 'Kunstwerk C', 5, 0),
(360, 2281, 600, 'Kunstwerk D', 5, 0),
(361, 2268, 600, 'Kunstwerk E', 5, 0),
(362, 2267, 600, 'Kunstwerk F', 5, 0),
(363, 2273, 600, 'Kunstwerk G', 5, 0),
(364, 2427, 1000, 'Sprunkautomat A', 4, 0),
(365, 2453, 1150, 'Pizza Aussteller', 2, 0),
(366, 3035, 950, 'Große Mülltonne', 10, 0),
(367, 2074, 250, 'Lampe C', 7, 0),
(368, 19339, 6000, 'Sarg', 11, 0),
(369, 1541, 300, 'Zapfhahn', 11, 0),
(370, 19812, 100, 'Fass', 3, 0),
(371, 792, 8000, 'Kleiner Baum', 10, 0),
(372, 357, 1500, 'Langwaffe', 11, 0),
(373, 1736, 1000, 'Rehkopf', 11, 0),
(374, 14781, 8000, 'Boxring', 19, 0),
(375, 2049, 50, 'Zielscheibe B', 11, 0),
(376, 2050, 50, 'Zielscheibe C', 11, 0),
(377, 19833, 1000, 'Kuh', 23, 0),
(378, 19639, 500, 'Box A', 12, 0),
(379, 19637, 500, 'Box B', 12, 0),
(380, 19638, 500, 'Box C', 12, 0),
(381, 19636, 500, 'Box D', 12, 0),
(382, 19079, 700, 'Papagei', 23, 0),
(383, 1588, 250, 'Target Top', 11, 0),
(384, 3025, 250, 'Target Frame', 11, 0),
(385, 1586, 350, 'Target', 11, 0),
(386, 3014, 300, 'Munitionskiste B', 11, 0),
(387, 3276, 500, 'Holzzaun', 16, 0),
(388, 1454, 800, 'Strohball', 11, 0),
(389, 17036, 4000, 'Carport B', 10, 0),
(390, 11480, 6000, 'Carport C', 10, 0),
(391, 367, 150, 'Digitalkamera A', 4, 0),
(392, 19623, 200, 'Digitalkamera B', 4, 0),
(393, 11733, 500, 'Kinder Pferd', 4, 0),
(394, 2517, 1190, 'Dusche B', 14, 0),
(395, 19861, 9500, 'Garagentor A', 17, 0),
(396, 11313, 9500, 'Garagentor B', 17, 0),
(397, 8843, 954, 'Straßenmakierung (Pfeile)', 10, 0),
(398, 14666, 400, 'Spielzeug (Dildos)', 12, 0),
(399, 2060, 150, 'Sandbag', 11, 0),
(400, 3037, 11000, 'Garagentor C', 17, 0),
(401, 2907, 300, 'Deadtorso', 8, 0),
(402, 2908, 300, 'Deadhead', 8, 0),
(403, 2906, 300, 'Deadarm', 8, 0),
(404, 2905, 300, 'Deadleg', 8, 0),
(405, 2870, 300, 'Vase', 5, 0),
(406, -2009, 3000, 'N-Station 4', 4, 0),
(407, -2010, 600, 'N-Station Controller', 4, 0),
(408, -2006, 300, 'Zigarrenbox', 11, 0),
(409, -2007, 800, 'San Andreas Flagge', 5, 0),
(410, -2008, 3000, 'Heim-PC Set', 4, 0),
(411, -2011, 200, 'Drogenwaage', 11, 0),
(412, 2898, 500, 'Teppich', 5, 0),
(413, 2464, 500, 'Model Box', 5, 0),
(414, 2469, 750, 'Model Plane', 5, 0),
(415, 2484, 705, 'Model Schiff', 5, 0),
(416, 2862, 620, 'Teller/Schüssel', 2, 0),
(417, 2680, 500, 'Kette mit Schloss', 11, 0),
(418, 14446, 2000, 'Doppelbett/Zebra Look', 18, 0),
(419, 14449, 6000, 'Trampolin', 4, 0),
(420, 19563, 50, 'Orangensaft', 2, 0),
(421, 19570, 60, 'Milch', 2, 0),
(422, 19571, 85, 'Pizza Box', 2, 0),
(423, 19580, 80, 'Pizza', 2, 0),
(424, 19572, 75, 'Pissh Bierkasten', 2, 0),
(425, 3472, 650, '3 farbige Lampe', 7, 0),
(426, 19630, 100, 'Gelber Fisch', 3, 0),
(427, 19810, 50, 'Staff Only Schild', 5, 0),
(428, 19823, 80, 'Alkohol A', 2, 0),
(429, 19822, 85, 'Alkohol B', 2, 0),
(430, 19824, 95, 'Alkohol C', 2, 0),
(431, 19820, 95, 'Alkohol D', 2, 0),
(432, 19821, 95, 'Alkohol E', 2, 0),
(433, 932, 200, 'Rollstuhl', 15, 0),
(434, 19914, 300, 'Baseballschläger', 19, 0),
(435, 1703, 900, 'Couch', 15, 0),
(436, 1704, 700, 'Sessel C', 15, 0),
(437, 1735, 700, 'Sessel D', 15, 0),
(438, 2073, 80, 'Deckenlampe (Alt)', 7, 0),
(439, 2075, 400, 'Hallenlampe', 7, 0),
(440, 2254, 140, 'Bild A', 5, 0),
(441, 2255, 140, 'Bild B', 5, 0),
(442, 2580, 40, 'Books & Video Sales Schild', 5, 0),
(443, 2663, 40, 'Burger Shot Tüte', 3, 0),
(444, 339, 2400, 'Katana', 5, 0),
(445, 869, 100, 'Pflanze M', 9, 0),
(446, 870, 100, 'Pflanze N', 9, 0),
(447, 1234, 100, 'Telefon Schild', 11, 0),
(448, 1270, 100, 'Parkuhr', 11, 0),
(449, 2256, 140, 'Bild C', 5, 0),
(450, 2291, 300, 'Dunkle Couch (Teil A)', 15, 0),
(451, 2292, 300, 'Dunkle Couch (Teil B)', 15, 0),
(452, 2293, 300, 'Dunkle Couch (Teil C)', 15, 0),
(453, 2833, 100, 'Teppich B', 5, 0),
(454, 3471, 3000, 'Löwenstatue', 5, 0),
(455, 1297, 200, 'Straßenlaterne', 7, 0),
(456, -2014, 550, 'Studio Mischpult', 1, 0),
(457, -2015, 400, 'Studio Schalldämpfer', 1, 0),
(458, -2016, 500, 'Studio Klavier', 1, 0),
(459, -2017, 750, 'Studio Computer Monitor', 1, 0),
(460, -2018, 4000, 'Motorrad', 6, 0),
(461, -2019, 100, 'Schuhkarton (Geld)', 12, 0),
(462, -2020, 100, 'Buchversteck', 12, 0),
(463, -2021, 250, 'Koffer (geöffnet)', 12, 0),
(464, -2022, 250, 'Koffer (geschlossen)', 12, 0),
(465, 19933, 1000, 'Backofen 1', 2, 1),
(466, 2144, 1000, 'Backofen 2', 2, 1),
(467, 2135, 1200, 'Holzküche Ofen', 2, 0),
(468, 2303, 1150, 'Holzküche Waschmaschine', 2, 0),
(469, 2136, 1100, 'Holzküche Waschbecken', 2, 0),
(470, 2137, 1050, 'Holzküche T1', 2, 1),
(471, 2138, 1050, 'Holzküche T2', 2, 2),
(472, 2139, 900, 'Holzküche T3', 2, 3),
(473, 2305, 1100, 'Holzküche T4', 2, 4),
(474, 2140, 1250, 'Holzküche Kühlschrank', 2, 0),
(475, 950, 150, 'Pflanze O', 9, 0),
(476, 637, 300, 'Blumenkasten', 9, 0),
(477, 19393, 1200, 'Wand B (Türrahmen)', 16, 0),
(478, 19410, 1100, 'Wand B (Fensterrahmen)', 16, 0),
(479, 1893, 650, 'Deckenlampe B', 7, 0),
(480, 919, 850, 'Lüfter A', 11, 0),
(481, 1420, 850, 'Lüfter B', 11, 0),
(482, 321, 600, 'Spielzeug 1', 3, 0),
(483, 322, 450, 'Spielzeug 2', 3, 0),
(484, 323, 550, 'Spielzeug 3', 3, 0),
(485, 324, 550, 'Spielzeug 4', 3, 0),
(486, 19373, 1000, 'Rasen (Klein)', 16, 0),
(487, 19381, 2000, 'Rasen (Groß)', 16, 0),
(488, 19363, 1000, 'Wand C (Klein)', 16, 0),
(489, 19392, 1500, 'Wand C (Türrahmen)', 16, 0),
(490, 19409, 1250, 'Wand C (Fensterrahmen)', 16, 0),
(491, 19436, 950, 'Wand C (Kurz)', 16, 0),
(492, 19455, 1500, 'Wand C (Lang B)', 16, 0),
(493, 19362, 1000, 'Wand D (Klein)', 16, 0),
(494, 19391, 1500, 'Wand D (Türrahmen)', 16, 0),
(495, 19377, 1750, 'Wand D (Groß)', 16, 0),
(496, 19408, 1250, 'Wand D (Fensterrahmen)', 16, 0),
(497, 19435, 950, 'Wand D (Kurz)', 16, 0),
(498, 19454, 1500, 'Wand D (Lang)', 16, 0),
(499, -2023, 450, 'Bong', 4, 0),
(500, -2024, 3500, 'Werkzeugbank', 6, 0),
(501, -2025, 950, 'Teddybär', 5, 0),
(502, 19466, 650, 'Kleine Glasscheibe', 16, 0),
(503, 1713, 950, 'Sofa E', 15, 0),
(504, 2173, 600, 'Schreibtisch A', 13, 0),
(505, 2204, 500, 'Büroschrank A', 13, 0),
(506, 2232, 300, 'Lautsprecher A', 4, 0),
(507, 2233, 350, 'Lautsprecher B', 4, 0),
(508, 1840, 150, 'Lautsprecher C', 4, 0),
(509, 2229, 400, 'Lautsprecher E', 4, 0),
(510, 2230, 390, 'Lautsprecher D', 4, 0),
(511, 2231, 370, 'Lautsprecher F', 4, 0),
(513, -2031, 350, 'Bibel (Geschlossen)', 12, 0),
(514, -2033, 350, 'Bibel (Geöffnet)', 12, 0),
(515, -2032, 500, 'Akustikgitarre', 1, 0),
(516, -2034, 450, 'Runder Teppich', 5, 0),
(517, -2035, 600, 'Halloween Kürbise', 8, 0),
(518, -2036, 850, 'Keyboard', 1, 0),
(519, -2039, 600, 'Shisha', 4, 0),
(520, 19773, 125, 'Holster', 12, 0),
(521, -2040, 450, 'Schneemann', 8, 0),
(522, -2037, 400, 'Makeup Palette', 14, 0),
(523, -2026, 350, 'Parfüm', 14, 0),
(524, 19592, 400, 'Einkaufskorb', 12, 0),
(525, 2227, 750, 'Anlage A', 4, 0),
(526, 2225, 820, 'Anlage B', 4, 0),
(527, 2104, 880, 'Anlage C', 4, 0),
(528, 2101, 850, 'Anlage D', 4, 0),
(529, 2099, 800, 'Anlage E', 4, 0),
(530, 2226, 650, 'Radio A', 4, 0),
(531, 2102, 625, 'Radio B', 4, 0),
(532, 2784, 2300, 'Große Theke', 13, 0),
(533, 1328, 500, 'Mülltonne B', 10, 1),
(534, 1546, 100, 'Sprunkbecher', 2, 0),
(535, 14869, 850, 'Schminktisch', 13, 0),
(536, 2828, 100, 'Kleine Bilderrahmen', 5, 0),
(537, 2965, 100, 'Billiarddreieck', 4, 0),
(538, 14867, 3100, 'Große Schrankwand', 13, 0),
(539, 2868, 340, 'Große Kerze', 5, 0),
(540, 2869, 360, 'Lange Kerzen', 5, 0),
(541, 14782, 3000, 'Spinde', 13, 0),
(542, 2628, 9400, 'Kraftstation', 19, 0),
(543, 2629, 8000, 'Hantelbank', 19, 0),
(544, 2916, 800, 'Kleine Hantel', 19, 0),
(545, 2913, 1200, 'Große Hantel', 19, 0),
(546, 2895, 120, 'Kleine Blümchen', 9, 0),
(547, 2893, 1000, 'Kleine Metallrampe', 6, 0),
(548, 2880, 200, 'Kleiner Burger', 2, 0),
(549, 2881, 200, 'Pizzastück', 2, 0),
(550, 2863, 400, 'Geschirr-Set', 2, 0),
(551, 2864, 250, 'Schüsseln', 2, 0),
(552, 2865, 500, 'Weißes Geschirr-Set', 2, 0),
(553, 2855, 300, 'Magazine A', 4, 0),
(554, 2852, 250, 'Magazine B', 4, 0),
(555, 2854, 350, 'Bücher A', 4, 0),
(556, 2853, 410, 'Bücher B', 4, 0),
(557, 2827, 500, 'Bücher & Magazine', 4, 0),
(558, 2826, 280, 'Magazine C', 4, 0),
(559, 2825, 450, 'Bücher C', 4, 0),
(560, 2824, 480, 'Bücher D', 4, 0),
(561, 19464, 2000, 'Hohe Wand', 16, 0),
(562, 19465, 1900, 'Hohe Wand (Türrahmen)', 16, 0),
(563, 1472, 850, 'Kleine Holztreppe', 10, 0),
(564, 1470, 700, 'Holzpodest (Teil A)', 10, 0),
(565, 1471, 700, 'Holzpodest (Teil B)', 10, 0),
(566, 1476, 700, 'Holzpodest (Teil C)', 10, 0),
(567, 1473, 600, 'Holzdach (Teil A)', 10, 0),
(568, 1474, 600, 'Holzdach (Teil B)', 10, 0),
(569, 1475, 600, 'Holzdach (Teil C)', 10, 0),
(570, 1477, 600, 'Holzdach (Teil D)', 10, 0),
(571, 1339, 500, 'Mülltonne C', 10, 1),
(572, 2708, 900, 'Regal mit Kleiderstange', 13, 0),
(573, 2770, 150, 'Mülleimer B', 3, 0),
(574, 2467, 750, 'Regal A', 13, 0),
(575, 2708, 950, 'Regal B (mit Kleiderstange)', 13, 0),
(576, -2041, 1700, 'Billiardtisch B', 4, 0),
(577, -2042, 450, 'Geldrollen, Tütchen & Waage', 11, 0),
(578, -2043, 230, 'Zeitung', 5, 0),
(579, 2114, 270, 'Basketball', 19, 0),
(580, -2045, 2500, 'Sony Flatscreen', 4, 0),
(581, -2047, 95, 'Shampoo', 14, 0),
(582, -2048, 800, 'nPhone', 4, 0),
(583, 19938, 150, 'Regalbrett A', 13, 0),
(584, 19939, 155, 'Regalbrett B', 13, 0),
(585, 19940, 175, 'Regalbrett C', 13, 0),
(586, 1598, 245, 'Strandball', 19, 0),
(587, 1641, 230, 'Strandtuch A', 10, 0),
(588, 1640, 230, 'Strandtuch B', 10, 0),
(589, 1642, 230, 'Strandtuch C', 10, 0),
(590, 1643, 230, 'Strandtuch D', 10, 0),
(591, 1646, 220, 'Gartenliege B', 10, 0),
(592, 1645, 210, 'Gartenliege C', 10, 0),
(593, 1647, 200, 'Gartenliege D', 10, 0),
(594, -2044, 350, 'Koran und Zeitschriften', 12, 0),
(595, -2046, 400, 'Munitionskiste C', 11, 0),
(596, -2050, 1200, 'Gruselbaum mit Kürbissen', 8, 0),
(597, -2051, 900, 'Baumstumpf mit Gruselgesicht', 8, 0),
(598, 2752, 95, 'Schuhspray', 12, 0),
(599, 3280, 905, 'Gitter (Zerstörbar)', 12, 0),
(600, 1697, 6500, 'Solarpanel', 10, 0),
(601, 19793, 190, 'Feuerholz C', 10, 0),
(602, 336, 350, 'Baseballschläger B', 19, 0),
(603, 11749, 400, 'Handschellen A', 12, 0),
(604, 11750, 400, 'Handschellen B', 12, 0),
(605, 19418, 400, 'Handschellen C', 12, 0),
(606, 19175, 550, 'San Fierro in der Nacht Bild', 5, 0),
(607, 19054, 750, 'Geschenkbox A', 8, 0),
(608, 19055, 750, 'Geschenkbox B', 8, 0),
(609, 19056, 750, 'Geschenkbox C', 8, 0),
(610, 19057, 750, 'Geschenkbox D', 8, 0),
(611, 19058, 750, 'Geschenkbox E', 8, 0),
(612, 19059, 550, 'Weihnachtsbaumkugel Blau', 8, 0),
(613, 19060, 550, 'Weihnachtsbaumkugel Rot', 8, 0),
(614, 19061, 550, 'Weihnachtsbaumkugel Grün', 8, 0),
(615, 19062, 550, 'Weihnachtsbaumkugel Gelb', 8, 0),
(616, 19063, 550, 'Weihnachtsbaumkugel Grau', 8, 0),
(617, 19346, 75, 'Hotdog', 2, 0),
(618, 2773, 300, 'Absperrständer mit rotem Bändchen', 16, 0),
(619, 14611, 950, 'Edele Lampenschirme ', 7, 0),
(620, 2592, 850, 'Kleine Theke (Hälfte)', 13, 0),
(621, 1895, 800, 'Glücksrad', 12, 0),
(622, 2178, 500, 'Einzelner Lampenschim', 7, 0),
(623, 14629, 2500, 'Große edele Lampen', 7, 0),
(624, 1978, 1000, 'Roulettetisch', 12, 0),
(625, 2188, 890, 'Blackjacktisch', 12, 0),
(626, 1737, 400, 'Esstisch A (Braun)', 13, 0),
(627, 1770, 200, 'Esstisch B (Bunt)', 13, 0),
(628, 2029, 410, 'Esstisch C (Hell)', 13, 0),
(629, 2031, 370, 'Esstisch D (Hell)', 13, 0),
(630, 2032, 350, 'Esstisch E (Dunkel)', 13, 0),
(631, 2080, 355, 'Esstisch F (Dunkel)', 13, 0),
(632, 2085, 500, 'Esstisch G (Glas)', 13, 0),
(633, 2109, 300, 'Esstisch H (Hell/Rund)', 13, 0),
(634, 2110, 320, 'Esstisch I (Dunkel)', 13, 0),
(635, 2111, 310, 'Esstisch J (Braun/Rund)', 13, 0),
(636, 2116, 350, 'Esstisch K (Hell)', 13, 0),
(637, 2117, 410, 'Esstisch L (Braun)', 13, 0),
(638, 2118, 600, 'Esstisch M (Stein)', 13, 0),
(639, 2119, 400, 'Esstisch N (Dunkel)', 13, 0),
(640, 2357, 700, 'Esstisch O (Braun/Lang)', 13, 0),
(641, 2935, 5000, 'Gelber Container', 12, 0),
(642, 2934, 5000, 'Roter Container', 12, 0),
(643, 2932, 5000, 'Blauer Container', 12, 0),
(644, 2804, 900, 'Fleisch (Groß)', 2, 0),
(645, 2755, 1100, 'Gemusterte Holztrennwand', 16, 0),
(646, 1229, 250, 'Busschild', 12, 0),
(647, 18648, 2000, 'Blaue Neonröhre', 7, 0),
(648, 18651, 2000, 'Pinke Neonröhre', 7, 0),
(649, 18650, 2000, 'Gelbe Neonröhre', 7, 0),
(650, 18649, 2000, 'Grüne Neonröhre', 7, 0),
(651, 18647, 2000, 'Rote Neonröhre', 7, 0),
(652, 18652, 2000, 'Weiße Neonröhre', 7, 0),
(653, -2053, 200, 'Sonnenschirm', 10, 0),
(654, 1663, 560, 'Bürostuhl ohne Armlehnen', 15, 0),
(655, 1671, 600, 'Bürostuhl mit Armlehnen', 15, 0),
(656, 2123, 500, 'Weißer Stuhl', 15, 0),
(657, 2122, 500, 'Weißer Stuhl B', 15, 0),
(658, 2310, 450, 'Brauner Holzstuhl', 15, 0),
(659, 2125, 250, 'Roter Hocker', 15, 0),
(660, 2343, 550, 'Friseurstuhl', 15, 0),
(661, 2638, 950, 'Doppelte Sitzbank', 15, 0),
(662, 2639, 800, 'Sitzbank', 15, 0),
(663, 2788, 300, 'Plastikstuhl', 15, 0),
(664, 1257, 2000, 'Bushaltestelle (Häuschen)', 12, 0),
(665, 10183, 5000, 'Mehrere Parkmakierungen', 11, 0),
(666, 19467, 4250, 'Sperrbumper', 17, 0),
(667, 18756, 3400, 'Aufzugtür A', 17, 0),
(668, 18757, 3400, 'Aufzugtür B', 17, 0),
(669, 1232, 900, 'Laterne A', 7, 0),
(670, 1231, 990, 'Laterne B', 7, 0),
(671, 1223, 930, 'Laterne C', 7, 0),
(672, 1644, 100, 'Sonnencreme', 14, 0),
(673, -2060, 5600, 'Piano', 1, 0),
(674, -2061, 620, 'Dunkelrote Gitarre', 1, 0),
(675, -2062, 1500, 'Studiomikrofon', 1, 0),
(676, 14651, 2100, 'Grüner Billiardtisch', 4, 0),
(677, 19474, 950, 'Pokertisch', 12, 0),
(678, 1825, 560, 'Tisch mit Stühlen', 13, 0),
(679, -2059, 850, 'Boombox', 4, 0),
(680, -2063, 300, 'BOH Logo Klein', 5, 0),
(681, -2064, 500, 'BOH Logo Groß', 5, 0),
(682, 2350, 245, 'Hoher Hocker', 15, 0),
(683, 1805, 200, 'Niedrig Hocker', 15, 0),
(684, -2055, 3400, 'Große Statue', 5, 0),
(685, -2054, 3000, 'Kleines Solarpanel', 10, 0),
(686, 9244, 10000, 'Garage', 6, 0),
(687, -2057, 2000, 'nBook', 4, 0),
(688, 1224, 200, 'Holzbox', 12, 1),
(689, 1448, 200, 'Palette', 12, 0),
(690, 1219, 120, 'Kaputte Palette', 12, 0),
(691, 1221, 345, 'Versteck', 12, 1),
(692, 8650, 1200, 'Niedrige, lange Mauer', 16, 0),
(693, 338, 100, 'Billiardqueue', 4, 0),
(694, 2687, 95, 'Hygiene-Richtlinien', 5, 0),
(695, 2764, 850, 'Tisch mit roter Decke', 13, 0),
(696, 2531, 1200, 'Sprunk Kühlschrank mit Glastür', 2, 0),
(697, 2027, 1600, 'Braune Sitzbänke mit Tisch', 15, 0),
(698, 2420, 890, 'Burger Shot Mülleimer', 12, 0),
(699, 5820, 3000, 'Treppe B', 12, 0),
(700, 10244, 3200, 'Treppe C', 12, 0),
(701, 2643, 300, 'Burger Shot Schild', 12, 0),
(702, 2430, 900, 'Burger Shot Menütafel', 12, 0),
(703, 11360, 10000, 'Garagentor D', 17, 0),
(704, 969, 8750, 'Tor A', 17, 0),
(705, 2647, 100, 'Burger Shot Becher', 21, 0),
(706, 2704, 500, 'Orangener Hoodie', 12, 0),
(707, 2689, 500, 'Weißer Hoodie', 12, 0),
(708, 2587, 120, 'Filthy Chicks Poster', 5, 0),
(709, 11737, 400, 'Willkommensmatte', 5, 0),
(710, 2588, 100, 'That can´t be legal Poster', 5, 0),
(711, 2695, 100, 'Base5 Poster A', 5, 0),
(712, 2696, 100, 'Base5 Poster B', 5, 0),
(713, 2659, 100, 'Bobo Poster', 5, 0),
(714, 2691, 100, 'Base5 Poster C', 5, 0),
(715, 19328, 100, 'Affen Poster', 5, 0),
(716, 2415, 850, 'Fritteusen', 2, 0),
(717, 2416, 500, 'Burger Regal', 2, 0),
(718, 2419, 250, 'Küchentheke', 2, 0),
(719, 1845, 650, 'Kühltheke', 2, 0),
(720, 19924, 550, 'Dunstabzugshaube', 2, 0),
(721, -2088, 200, 'Geldbündel', 12, 0),
(722, 19564, 100, 'Apfelsaft', 2, 0),
(723, 2386, 300, 'Jeansstapel', 12, 0),
(724, 1428, 340, 'Leiter', 12, 0),
(725, 2590, 140, 'Haken', 12, 0),
(726, -2075, 140, 'Stuhl E', 15, 0),
(727, -2076, 880, 'Badewanne C', 14, 0),
(728, -2077, 500, 'Toilette C', 14, 0),
(729, 11731, 2000, 'Herz Bett', 18, 0),
(730, 18868, 600, 'Schwarzes Mobiltelefon', 4, 0),
(731, 18870, 600, 'Rotes Mobiltelefon', 4, 0),
(732, 18872, 600, 'Blaues Mobiltelefon', 4, 0),
(733, 18874, 600, 'Weißes Mobiltelefon', 4, 0),
(734, 19941, 2200, 'Goldbarren', 5, 0),
(735, 2711, 560, 'Tattoo Nadel', 12, 0),
(736, 19942, 750, 'Funkgerät', 4, 0),
(737, 11711, 300, 'Exit Sign', 12, 0),
(738, 19591, 120, 'Fecher', 5, 0),
(739, 11745, 240, 'Sporttasche', 12, 1),
(740, 1276, 350, 'Tiki Statue', 5, 0),
(741, 2705, 150, 'Trikot', 5, 0),
(742, 2706, 150, 'Trikot B', 5, 0),
(743, 1834, 7575, 'Slot-Maschine', 4, 0),
(744, 19917, 3400, 'Motor', 6, 0),
(745, 2692, 200, 'Banner D', 5, 0),
(746, 2693, 200, 'Banner E', 5, 0),
(747, 1349, 360, 'Einkaufswagen', 12, 0),
(748, 14752, 500, 'Gardinen', 12, 0),
(749, 1523, 950, 'Tür J', 17, 0),
(750, 1496, 950, 'Tür K', 17, 0),
(751, 1495, 950, 'Tür L', 17, 0),
(752, 1499, 950, 'Tür M', 17, 0),
(753, 1346, 400, 'Telefonzelle', 12, 0),
(754, 1549, 150, 'Mülleimer ', 2, 0),
(755, 2558, 200, 'Vorhang A', 5, 0),
(756, 2559, 200, 'Vorhang B', 5, 0),
(757, 3525, 250, 'Fakel', 5, 0),
(758, 19129, 3500, 'Große Tanzfläche', 12, 0),
(759, 655, 900, 'Baum A', 9, 0),
(760, 660, 900, 'Baum B', 9, 0),
(761, 685, 900, 'Baum C', 9, 0),
(762, 687, 900, 'Baum D', 9, 0),
(763, 696, 900, 'Baum E', 9, 0),
(764, 19064, 250, 'Weihnachtsmütze A', 8, 0),
(765, 19065, 250, 'Weihnachtsmütze B', 8, 0),
(766, 19066, 250, 'Weihnachtsmütze C', 8, 0),
(768, 1427, 500, 'Roadbarrier A', 12, 0),
(769, 1422, 500, 'Roadbarrier B', 12, 0),
(770, 1424, 500, 'Roadbarrier C', 12, 0),
(771, 1459, 500, 'Roadbarrier D', 12, 0),
(772, 18646, 1100, 'Red Light', 7, 0),
(773, 7096, 1200, 'Treppe D', 16, 0),
(774, 2371, 600, 'Doppelte Kleiderstange', 21, 0),
(775, 2371, 400, 'Kleiderstange', 21, 0),
(776, 2400, 900, 'Regalwand mit Haken', 21, 0),
(777, 2399, 300, 'Weiße Pullover', 21, 0),
(778, 2394, 450, 'Kleidung A', 21, 0),
(779, 2390, 410, 'Kleidung B', 21, 0),
(780, 2381, 500, 'Kleidung C', 21, 0),
(781, 2391, 400, 'Kleidung D', 21, 0),
(782, 2401, 400, 'Kleidung E', 21, 0),
(783, 2383, 400, 'Kleidung F', 21, 0),
(784, 2382, 390, 'Kleidung G', 21, 0),
(785, 2389, 375, 'Kleidung H', 21, 0),
(786, 2374, 375, 'Kleidung I', 21, 0),
(787, 2377, 375, 'Kleidung J', 21, 0),
(788, 2392, 400, 'Kleidung K', 21, 0),
(789, 2384, 200, 'Kleidung L', 21, 0),
(790, 2396, 400, 'Kleidung M', 21, 0),
(791, 2397, 400, 'Kleidung N', 21, 0),
(792, 2625, 670, 'Schuhregal A', 21, 0),
(793, 2626, 550, 'Kassentheke', 21, 0),
(794, 2624, 780, 'Schuhregal B', 21, 0),
(795, 2699, 320, 'Runder Kleiderständer A', 21, 0),
(796, 2366, 320, 'Runder Kleiderständer B', 21, 0),
(797, 2684, 100, 'Zertfikat', 21, 0),
(798, 333, 230, 'Golfschläger', 19, 0),
(799, 371, 230, 'Fallschirm', 19, 0),
(800, 1960, 250, 'Lila Schallplatte ', 12, 0),
(801, 2360, 450, 'Kühlregal A', 21, 0),
(802, 11709, 450, 'Waschbecken C', 14, 0),
(803, 922, 160, 'Kisten A', 20, 1),
(804, 923, 130, 'Kisten B', 20, 1),
(805, 944, 120, 'Kisten C', 20, 1),
(806, 1431, 145, 'Kisten D', 20, 1),
(807, 2991, 215, 'Kisten E', 20, 1),
(808, 3576, 350, 'Kisten F', 20, 1),
(809, 3577, 330, 'Kisten G', 20, 1),
(810, 3630, 600, 'Kisten H', 20, 1),
(811, 930, 220, 'Sauerstoffflaschen', 20, 0),
(812, 925, 360, 'Fassregal', 20, 0),
(813, 931, 360, 'Fassregal (leer)', 20, 0),
(814, 935, 100, 'Fass A', 20, 0),
(815, 939, 600, 'Lagerregal A', 20, 1),
(816, 942, 600, 'Lagerregal B', 20, 1),
(817, 1685, 360, 'Steinpalette', 20, 0),
(818, 964, 120, 'Army Kiste', 20, 1),
(819, 2669, 4300, 'Begehbarer Container', 20, 0),
(820, 2678, 900, 'Containertür A', 20, 0),
(821, 2679, 900, 'Containertür B', 20, 0),
(822, 2972, 100, 'Blaue Kiste', 20, 1),
(823, 2973, 190, 'Luftfracht A', 20, 1),
(824, 2974, 170, 'Luftfracht B', 20, 1),
(825, 2975, 200, 'Folierte Palette', 20, 1),
(826, 3013, 100, 'Ammokiste', 20, 0),
(827, 3015, 100, 'Gestapelte Waffenkisten', 20, 0),
(828, 3066, 1000, 'Verdeckte Kisten', 20, 1),
(829, 3633, 300, 'Rote Fässer', 20, 0),
(830, 3761, 600, 'Lagerregal C', 20, 1),
(831, 3796, 200, 'Offene Kiste', 20, 1),
(832, 19321, 2300, 'Offener blauer Container', 20, 0),
(833, 1726, 1200, 'Graues Sofa', 15, 0),
(834, 1727, 900, 'Grauer Sessel', 15, 0),
(835, 3017, 120, 'Zusammengerollter Plan', 12, 0),
(836, 3111, 150, 'Ausgerollter Plan', 12, 0),
(837, 14705, 200, 'Dekovase', 5, 0),
(838, 1256, 700, 'Steinbank', 10, 0),
(839, 3172, 5000, 'Doppel-Trailer', 12, 0),
(840, 3171, 3500, 'Kleiner Trailer', 12, 0),
(841, 3168, 4200, 'Großer Trailer', 12, 0),
(842, 3167, 5500, 'Trailer (ohne Räder) A', 12, 0),
(843, 3169, 5500, 'Trailer (ohne Räder) B', 12, 0),
(844, 3170, 5500, 'Trailer (ohne Räder) C', 12, 0),
(845, 3173, 5500, 'Trailer (ohne Räder) D', 12, 0),
(846, 3374, 500, 'Heuballenstapel A', 12, 0),
(847, 14875, 350, 'Heuballenstapel B', 12, 0),
(848, 1453, 150, 'Heuballen A', 12, 0),
(849, 12922, 900, 'Farmschild A', 12, 0),
(850, 12921, 900, 'Farmschild B', 12, 0),
(851, 3252, 1200, 'Wasserturm A', 12, 0),
(852, 3286, 10500, 'Hoftankstelle 650l', 12, 0),
(853, 1458, 800, 'Holzanhänger', 12, 0),
(854, -2090, 200, 'Apfelkuchen', 2, 0),
(855, -2091, 400, 'Satanische Bibel', 12, 0),
(856, -2092, 220, 'Zusammengebundene Schuhe', 12, 0),
(857, -2093, 1190, 'Police Spind', 13, 0),
(858, -2094, 2000, 'Experimentiertisch', 13, 0),
(859, -2100, 200, 'Roter Stuhl ohne Kollision', 15, 0),
(860, -2095, 250, 'Jamerson Whiskey', 2, 0),
(861, -2096, 250, 'Jack Daniels Whiskey', 2, 0),
(862, -2097, 250, 'Busch Bier', 2, 0),
(863, -2098, 250, 'Coors Bier', 2, 0),
(864, -2099, 250, 'Skyy Vodka', 2, 0),
(865, -2102, 1100, 'Dream of Hope Parfüm', 12, 0),
(866, -2103, 4500, 'Schwarzes Pferd', 23, 0),
(867, -2104, 4500, 'Weißes Pferd', 23, 0),
(868, 2725, 250, 'Kleiner Beistelltisch', 13, 0),
(869, 2238, 220, 'Lavalampe', 7, 0),
(870, 1544, 75, 'Bier A', 2, 0),
(871, 1543, 75, 'Bier B', 2, 0),
(872, 11726, 450, 'Hängelampe', 7, 0),
(873, 19835, 100, 'Kaffeebecher', 21, 0),
(874, 2429, 400, 'Burger Shot Becherhalter', 21, 0),
(875, 2046, 250, 'Gewehrschränke', 13, 0),
(876, 19934, 500, 'Cupboard A', 13, 0),
(877, 19935, 500, 'Cupboard B', 13, 0),
(878, 19936, 500, 'Cupboard C', 13, 0),
(879, 19937, 500, 'Cupboard D', 13, 0),
(880, 2894, 250, 'Offenes Buch', 5, 0),
(881, 14416, 1500, 'Treppe E', 16, 0),
(882, 14410, 1700, 'Treppe F', 16, 0),
(883, -2105, 850, 'Schwein', 23, 0),
(884, -2106, 420, 'Lagerfeuer', 10, 0),
(885, 1686, 1650, 'Zapfsäule A', 12, 0),
(886, 1244, 1650, 'Zapfsäule B', 12, 0),
(887, 1676, 1650, 'Zapfsäule C', 12, 0),
(888, 12912, 8000, 'Silo A', 22, 0),
(889, 12911, 10000, 'Silo B', 22, 0),
(890, 17049, 7000, 'Silo C', 22, 0),
(891, 17050, 7000, 'Silo D', 22, 0),
(892, 17051, 7000, 'Silo E', 22, 0),
(893, -2107, 650, 'BoH-Flagge', 12, 0),
(894, -2108, 200, 'Blutige Badewanne', 14, 0),
(895, -2109, 200, 'Dusche ohne Kollision', 14, 0),
(896, 823, 500, 'Hoher Busch A', 9, 0),
(897, 824, 500, 'Hoher Busch B', 9, 0),
(898, 818, 500, 'Hohes Gras A', 9, 0),
(899, 855, 500, 'Hohes Gras B', 9, 0),
(900, 356, 500, 'Waffe M4', 5, 0),
(901, 372, 500, 'Waffe TEC 9', 5, 0),
(902, 355, 500, 'Waffe AK47', 5, 0),
(903, 348, 500, 'Waffe Deagle', 5, 0),
(904, 347, 500, 'Waffe SD-Pistole', 5, 0),
(905, 346, 500, 'Waffe Glock 22', 5, 0),
(906, 353, 500, 'Waffe MP5', 5, 0),
(907, 334, 500, 'Waffe Schlagstock', 5, 0),
(908, 349, 500, 'Waffe Shotgun', 5, 0),
(909, 352, 500, 'MAC-10', 5, 0),
(910, 335, 500, 'Waffe Messer', 5, 0),
(911, 3243, 5000, 'Zelt', 10, 1),
(912, 11090, 970, 'Kochpfannen', 2, 0),
(913, 365, 500, 'Waffe Spraydose', 5, 0),
(914, 1731, 200, 'Wandlampe', 7, 0),
(915, 2490, 200, 'Spielzeug A', 21, 0),
(916, 2489, 200, 'Spielzeug B', 21, 0),
(917, 1513, 600, 'Halterung', 21, 0),
(918, 19421, 600, 'Kopfhörer', 21, 0),
(919, 2806, 800, 'Fleisch', 2, 0),
(920, 2803, 800, 'Fleischsack', 2, 0),
(921, 2611, 800, 'Pinnwand', 13, 0),
(922, 1584, 700, 'Zielscheibe D', 5, 0),
(923, 14532, 600, 'Fernseher auf Rollen', 4, 0),
(924, 1892, 1000, 'Sicherheitscheck', 4, 0),
(925, 1801, 900, 'Doppelbett', 18, 0),
(926, 1803, 900, 'Hohes Bett', 18, 0),
(927, 14481, 100, 'Duschvorhang', 14, 0),
(928, 3034, 1000, 'Fenster', 17, 0),
(929, 19836, 100, 'Blutfleck ', 8, 0),
(930, 1238, 100, 'Pylone', 12, 0),
(931, 3409, 900, 'Gras Plantage', 9, 0),
(932, 2685, 100, 'Hände waschen', 21, 0),
(933, 2641, 100, 'Plakat A', 21, 0),
(934, 2646, 100, 'Plakat B', 21, 0),
(935, 2645, 100, 'Plakat C', 21, 0),
(936, 2642, 100, 'Plakat D', 21, 0),
(937, 955, 1000, 'Sprunkautomat B', 21, 0),
(938, 1209, 1000, 'Sodaautomat', 21, 0),
(939, 1340, 1000, 'Hotdog Stand', 21, 0),
(940, 1341, 1000, 'Eis Stand', 21, 0),
(941, 1338, 100, 'Gestapelte Kisten', 21, 0),
(942, 1545, 300, 'Zapfanlage', 21, 0),
(943, 1824, 300, 'Casinotisch', 13, 0),
(944, 19473, 100, 'Gras', 9, 0),
(945, 19569, 50, 'Milch Packung', 2, 0),
(946, 19993, 50, 'Schüssel', 2, 0),
(947, 1510, 50, 'Futternapf', 22, 0),
(948, 18981, 1300, 'Boden A', 16, 0),
(949, 18766, 1000, 'Boden B', 16, 0),
(950, 19856, 3000, 'Mehrere Wände', 16, 0),
(951, 3097, 950, 'Zerbrochene Wand A', 16, 0),
(952, 3098, 950, 'Zerbrochene Wand B', 16, 0),
(954, 18690, 100, 'Feuer A', 8, 0),
(955, 18692, 100, 'Feuer B', 8, 0),
(956, 18691, 100, 'Feuer C', 8, 0),
(957, 18715, 100, 'Rauch', 8, 0),
(958, 3096, 2000, 'Werkstattschild', 6, 0),
(959, 11714, 300, 'Aufzugtüren', 17, 0),
(960, 19086, 500, 'Spielzeug 5', 12, 0),
(961, 3031, 500, 'Satellit', 12, 0),
(962, 12957, 1000, 'Kaputter Truck', 22, 0),
(963, 2945, 700, 'Netz', 12, 0),
(964, 7093, 500, 'Herzschild', 20, 0),
(965, 14793, 800, 'Moderne Lichter', 7, 0),
(966, 1897, 500, 'Radunterstützung', 6, 0),
(967, 2151, 300, 'Küche Modern A', 2, 1),
(968, 2152, 300, 'Küche Modern B', 2, 1),
(969, 2153, 300, 'Küche Modern C', 2, 1),
(970, 2154, 300, 'Küche Modern D', 2, 1),
(971, 2155, 300, 'Küche Modern E', 2, 1),
(972, 3089, 300, 'Tür mit Fenstern', 17, 0),
(973, 14587, 1000, 'Holzbalken', 16, 0),
(974, 1457, 500, 'Kaputte Hütte', 20, 0),
(975, 1452, 500, 'Hütte', 20, 0),
(976, 19087, 50, 'Seil A', 20, 0),
(977, 19088, 50, 'Seil B', 20, 0),
(978, 19089, 50, 'Seil C', 20, 0),
(979, 1827, 500, 'Runder Glastisch', 13, 0),
(980, 2610, 500, 'Aktenschrank A', 13, 0),
(981, 2609, 500, 'Aktenschrank B', 13, 0),
(982, 2067, 500, 'Aktenschrank C', 13, 0),
(983, 2066, 500, 'Aktenschrank D', 13, 0),
(984, 2065, 500, 'Aktenschrank E', 13, 0),
(985, 2984, 900, 'Mobile Toilette', 14, 0),
(986, 1367, 400, 'Postbox', 12, 1),
(987, 1371, 400, 'Hippo', 12, 1),
(988, 2529, 1000, 'Kühlschrank', 2, 1),
(989, 2923, 950, 'Abfallcontainer A', 12, 0),
(990, 1332, 950, 'Abfallcontainer B', 12, 0),
(991, 1439, 950, 'Abfallcontainer C', 12, 0),
(992, 1236, 950, 'Abfallcontainer D', 12, 0),
(993, 1336, 950, 'Abfallcontainer E', 12, 0),
(994, 11720, 400, 'Bett', 18, 0),
(995, 833, 490, 'Alter Baum A', 9, 0),
(996, 839, 490, 'Alter Baum B', 9, 0),
(997, 846, 490, 'Alter Baum C', 9, 0),
(998, -2110, 800, 'Thompson-Koffer', 12, 0),
(999, -2111, 700, 'Paletten-Bank', 10, 0),
(1000, -2112, 875, 'Holz-Toilette', 14, 0),
(1001, -2113, 975, 'Holz-Waschbecken', 14, 0),
(1002, -2114, 8500, 'Pool', 10, 0),
(1003, -2115, 200, 'Schwarz-Weiße Kuh', 23, 0),
(1004, -2117, 100, 'Stehlampe', 7, 0),
(1005, -2118, 100, 'Tischlampe', 7, 0),
(1006, 19923, 2500, 'Großer Herd ', 2, 0),
(1007, 19925, 500, 'Küchen Ablage A', 2, 0),
(1008, 19926, 600, 'Küchen Ablage B', 2, 0),
(1009, 19927, 500, 'Küchen Ablage C', 2, 0),
(1010, 19928, 500, 'Küchen Ablage D', 2, 0),
(1011, 19929, 500, 'Küchen Ablage E', 2, 0),
(1012, 3809, 200, 'Außenlampe', 7, 0),
(1013, 2556, 200, 'Halter', 21, 0),
(1014, 1848, 200, 'Shop A', 21, 0),
(1015, 1844, 200, 'Shop B', 21, 0),
(1017, 1850, 200, 'Shop D', 21, 0),
(1018, 1885, 270, 'Einkaufskörbe', 21, 0),
(1019, 1842, 1000, 'Kühltruhe', 21, 0),
(1020, -2131, 50, 'Cocktailglas Lemon', 2, 0),
(1021, -2127, 50, 'Taco', 2, 0),
(1022, -2130, 2000, 'Gaming PC', 4, 0),
(1023, -2128, 2000, 'Pinball Automat', 21, 0),
(1024, -2126, 2000, 'Sicherheitskamera', 4, 0),
(1025, -2125, 2000, 'Innenkamera', 4, 0),
(1026, -2123, 400, 'Bügelbrett A', 12, 0),
(1027, -2124, 400, 'Bügelbrett B', 12, 0),
(1028, -2122, 100, 'Girl Bild A', 12, 0),
(1029, -2121, 100, 'Girl Bild B', 12, 0),
(1030, -2120, 100, 'Einkaufswagen C', 21, 0),
(1031, 2365, 100, 'Einkaufskorb B', 21, 0),
(1032, 19327, 550, 'Kleines Schild', 12, 0),
(1033, 19353, 700, 'Großes Schild', 12, 0),
(1034, -2134, 3750, 'Beagle', 23, 0),
(1035, -2135, 3750, 'Doberman', 23, 0),
(1036, -2136, 3750, 'Boxer', 23, 0),
(1037, -2137, 3750, 'Falke', 23, 0),
(1038, 1997, 2000, 'SARC Trage', 12, 0),
(1039, 2841, 200, 'Teppichboden A', 12, 0),
(1040, 3962, 300, 'Wandgemälde ', 12, 0),
(1041, 1990, 900, 'Kühler A', 21, 0),
(1042, 1989, 900, 'Kühler B', 21, 0),
(1043, -2116, 100, 'Hasenohren', 12, 0),
(1044, -2133, 100, 'Mundschutz', 12, 0),
(1045, -2129, 650, 'Stolze San Andreas Flaggy', 12, 0),
(1046, -2161, 200, 'Modern Zebrabett', 18, 0),
(1047, -2160, 200, 'Modern Bett in Weiss', 18, 0),
(1048, -2159, 200, 'Weihnachtskranz', 8, 0),
(1049, -2158, 500, 'Stripstange', 12, 0),
(1050, -2157, 10, 'Stift', 12, 0),
(1051, -2156, 600, 'Neues Zelt', 10, 1),
(1052, -2155, 100, 'Zimmerlampe', 7, 0),
(1053, -2154, 100, 'Stehlampe A', 7, 0),
(1054, -2153, 200, 'Kerzenleuchter', 8, 0),
(1055, -2151, 300, 'Dekoration A', 5, 0),
(1056, -2152, 300, 'Dekoration B', 5, 0),
(1057, -2150, 300, 'Kinderwagen', 5, 0),
(1058, -2149, 50, 'Hundenapf', 22, 0),
(1059, -2148, 300, 'Rundes Hundebett', 22, 0),
(1060, -2147, 970, 'Edle Badewanne', 14, 0),
(1061, -2146, 490, 'Glastisch ', 13, 0),
(1062, -2145, 200, 'Glosche', 2, 1),
(1063, -2144, 200, 'Tasche mit Geld', 12, 1),
(1064, -2143, 200, 'Holzfass', 12, 1),
(1065, -2142, 2000, 'Holzboot', 12, 0),
(1066, -2141, 200, 'Zeichenblock', 12, 0),
(1067, 3092, 100, 'Menschliche Puppe', 8, 0),
(1068, -2163, 3750, 'Husky', 23, 0),
(1069, 2751, 50, 'Haargel', 14, 1),
(1070, 18641, 100, 'Taschenlampe', 7, 0),
(1071, 11740, 50, 'Kuchen A', 21, 0),
(1072, 11739, 50, 'Kuchen B', 21, 0),
(1073, 11741, 50, 'Kuchen C', 21, 0),
(1074, 2710, 50, 'Kuchen D', 21, 0),
(1075, 2710, 200, 'Uhr Dekoration', 5, 0),
(1076, 19567, 50, 'Ice Cream', 21, 0),
(1077, 2218, 50, 'Pizza Teller A', 21, 0),
(1078, 2220, 50, 'Pizza Teller B', 21, 0),
(1079, 2219, 50, 'Pizza Teller C', 21, 0),
(1080, 2342, 50, 'Donut Box', 21, 0),
(1081, 2715, 50, 'Donut Plakat A', 21, 0),
(1082, 2717, 50, 'Donut Plakat B', 21, 0),
(1083, 2716, 50, 'Donut Plakat C', 21, 0),
(1084, 2279, 140, 'Bild D', 5, 0),
(1085, 2265, 140, 'Bild E', 5, 0),
(1086, 2277, 140, 'Bild F', 5, 0),
(1087, 2263, 140, 'Bild G', 5, 0),
(1088, 2057, 100, 'Box', 21, 0),
(1089, 1582, 100, 'Pizza Box B', 21, 0),
(1090, 2423, 300, 'Cafe Theke A', 21, 0),
(1091, 2424, 300, 'Cafe Theke B', 21, 0),
(1092, 2449, 300, 'Cafe Theke C', 21, 0),
(1093, 2448, 300, 'Cafe Theke D', 21, 0),
(1095, 2444, 300, 'Cafe Theke E', 21, 0),
(1096, 2441, 300, 'Cafe Theke F', 21, 0),
(1097, 2457, 300, 'Cafe Theke G', 21, 0),
(1098, 2858, 50, 'Nudel Verpackungen', 2, 0),
(1103, 2264, 50, 'Bild H', 5, 0),
(1104, 2272, 50, 'Bild I', 5, 0),
(1105, 2287, 50, 'Bild J', 5, 0),
(1106, 2284, 50, 'Bild K', 5, 0),
(1107, 2818, 100, 'Teppichboden', 12, 0),
(1108, 3467, 100, 'Sommer/Drinks Schild', 21, 0),
(1109, 2668, 100, 'Pizza Poster A', 21, 0),
(1110, 2667, 100, 'Pizza Poster B', 21, 0),
(1111, 2426, 100, 'Brot Ofen', 21, 0),
(1112, 2860, 100, 'Pizza Karton', 21, 0),
(1113, 2838, 100, 'Pizza Karton offen', 21, 0),
(1114, 2850, 100, 'Geschir', 2, 0),
(1115, 18764, 1000, 'Boden C', 16, 0),
(1116, 18763, 1000, 'Boden D', 16, 0),
(1117, 18762, 800, 'Boden E', 16, 0),
(1118, 18980, 800, 'Boden E Lang', 16, 0),
(1119, 18767, 800, 'Treppe', 16, 0),
(1120, -2164, 100, 'Entsafter', 21, 0),
(1121, -2165, 170, 'Lieferrucksack', 21, 0),
(1122, -2162, 10, 'Monster', 2, 0),
(1123, 1521, 200, 'Gerüst A', 24, 0),
(1124, 1426, 200, 'Gerüst B', 24, 0),
(1125, 1436, 200, 'Gerüst C', 24, 0),
(1126, 1464, 200, 'Gerüst D', 24, 0),
(1127, 1465, 200, 'Gerüst E', 24, 0),
(1128, 1466, 200, 'Gerüst F', 24, 0),
(1129, 1467, 200, 'Gerüst G', 24, 0),
(1130, 1469, 200, 'Gerüst H', 24, 0),
(1131, 3867, 200, 'Gerüst I', 24, 0),
(1132, -2166, 300, 'Filmkamera', 4, 0),
(1133, -2167, 10, 'Sandwich', 2, 0),
(1134, -2168, 900, 'Huhn', 23, 0),
(1135, 16281, 1000, 'Holzschild', 20, 0),
(1136, 19164, 300, 'Map', 20, 0),
(1138, 14608, 200, 'Dekoration C', 5, 0),
(1139, 3038, 200, 'Laternen', 7, 0),
(1140, 2518, 500, 'Brotofen', 21, 0),
(1141, 1778, 100, 'Wischmob', 14, 0),
(1143, 17068, 20000, 'Steg', 20, 0),
(1144, 1610, 100, 'Sandburg', 10, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `muelltonnen`
--

CREATE TABLE `muelltonnen` (
  `dbid` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `waffe` int(4) DEFAULT 0,
  `ammo` int(4) DEFAULT 0,
  `drogen1` int(4) DEFAULT 0,
  `drogen2` int(4) DEFAULT 0,
  `drogen3` int(4) DEFAULT 0,
  `drogen4` int(4) DEFAULT 0,
  `geld` int(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `muelltonnen`
--

INSERT INTO `muelltonnen` (`dbid`, `id`, `waffe`, `ammo`, `drogen1`, `drogen2`, `drogen3`, `drogen4`, `geld`) VALUES
(1, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 1, 0, 0, 0, 0, 0, 0, 0),
(3, 2, 0, 0, 0, 0, 0, 0, 0),
(4, 3, 0, 0, 0, 0, 0, 0, 0),
(5, 4, 0, 0, 0, 0, 0, 0, 0),
(6, 5, 0, 0, 0, 0, 0, 0, 0),
(7, 6, 0, 0, 0, 0, 0, 0, 150000),
(8, 7, 0, 0, 0, 0, 0, 0, 0),
(9, 8, 0, 0, 0, 0, 0, 0, 0),
(10, 9, 0, 0, 0, 0, 0, 0, 0),
(11, 10, 0, 0, 0, 0, 0, 0, 0),
(12, 11, 0, 0, 0, 0, 0, 0, 0),
(13, 12, 0, 0, 0, 0, 0, 0, 0),
(14, 13, 0, 0, 0, 0, 0, 0, 0),
(15, 14, 0, 0, 0, 0, 0, 0, 2),
(16, 15, 0, 0, 0, 0, 0, 0, 0),
(17, 16, 0, 0, 0, 0, 0, 0, 0),
(18, 17, 0, 0, 0, 0, 0, 0, 0),
(19, 18, 0, 0, 0, 0, 0, 0, 0),
(20, 19, 0, 0, 0, 0, 0, 0, 0),
(21, 20, 0, 0, 0, 0, 0, 0, 0),
(22, 21, 0, 0, 0, 0, 0, 0, 0),
(23, 22, 0, 0, 0, 0, 0, 0, 0),
(24, 23, 0, 0, 0, 0, 0, 0, 0),
(25, 24, 0, 0, 0, 0, 0, 0, 0),
(26, 25, 0, 0, 0, 0, 0, 0, 0),
(27, 26, 0, 0, 0, 0, 0, 0, 0),
(28, 27, 0, 0, 0, 0, 0, 0, 0),
(29, 28, 0, 0, 0, 0, 0, 0, 0),
(30, 29, 0, 0, 0, 0, 0, 0, 0),
(31, 30, 0, 0, 0, 0, 0, 0, 0),
(32, 31, 0, 0, 0, 0, 0, 0, 0),
(33, 32, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `namechanges`
--

CREATE TABLE `namechanges` (
  `int` int(11) NOT NULL,
  `oldName` varchar(26) DEFAULT NULL,
  `newName` varchar(26) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `objekttexturen`
--

CREATE TABLE `objekttexturen` (
  `id` int(11) NOT NULL,
  `mindex` int(2) DEFAULT NULL,
  `modelid` int(6) DEFAULT NULL,
  `txdname` varchar(64) DEFAULT NULL,
  `texturename` varchar(64) DEFAULT NULL,
  `materialcolor` int(11) DEFAULT 0,
  `moebelhausid` int(4) DEFAULT NULL,
  `moebelslot` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ostern`
--

CREATE TABLE `ostern` (
  `id` int(11) NOT NULL,
  `pid` int(11) DEFAULT NULL,
  `ostern` varchar(205) DEFAULT '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 	'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `osternpos`
--

CREATE TABLE `osternpos` (
  `id` int(11) NOT NULL,
  `sperreX` double DEFAULT NULL,
  `sperreY` double DEFAULT NULL,
  `sperreZ` double DEFAULT NULL,
  `sperreA` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `partei`
--

CREATE TABLE `partei` (
  `id` int(11) NOT NULL,
  `name` varchar(128) DEFAULT 'n/A',
  `motd` varchar(128) DEFAULT 'n/A',
  `mitglieder` int(2) DEFAULT NULL,
  `erstellt` int(2) DEFAULT NULL,
  `zurwahl` int(2) DEFAULT NULL,
  `inhaber` int(11) DEFAULT NULL,
  `stimmen` int(3) DEFAULT NULL,
  `channel` int(2) DEFAULT NULL,
  `test` int(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `polizeiakte`
--

CREATE TABLE `polizeiakte` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT -1,
  `grund` varchar(128) DEFAULT 'n/A',
  `von` varchar(30) DEFAULT 'n/A',
  `time` int(11) DEFAULT NULL,
  `kennung` varchar(25) DEFAULT 'n/A',
  `modus` int(2) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `schilder`
--

CREATE TABLE `schilder` (
  `id` int(11) NOT NULL,
  `object` int(5) DEFAULT NULL,
  `sperreX` float DEFAULT NULL,
  `sperreY` float DEFAULT NULL,
  `sperreZ` float DEFAULT NULL,
  `sperreA` float DEFAULT NULL,
  `code` int(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `schilder`
--

INSERT INTO `schilder` (`id`, `object`, `sperreX`, `sperreY`, `sperreZ`, `sperreA`, `code`) VALUES
(122, 19956, 1612.71, -1638.14, 12.7265, 1.33104, 1287),
(545, 19967, 1622.24, -1665.1, 12.4692, 359.054, 2748),
(123, 19966, 1523.8, -1721.05, 12.5469, 357.376, 4864),
(124, 19966, 1574.85, -1742.49, 12.5469, 183.661, 6449),
(125, 19966, 1564.22, -1854.24, 12.5469, 7.68664, 5211),
(126, 19966, 1699.52, -1806.6, 12.5469, 268.137, 3043),
(127, 19966, 1811.7, -1837.79, 12.5781, 91.5895, 5611),
(128, 19966, 1811.69, -1860.15, 12.5704, 94.657, 2994),
(130, 19966, 1967.01, -1942.57, 12.5538, 181.044, 1092),
(120, 19966, 1624.1, -1602.71, 12.7188, 180.166, 3360),
(133, 19966, 2106.55, -1747.03, 12.5625, 269.495, 835),
(132, 19966, 1955.76, -1922.4, 12.5469, 357.139, 1062),
(134, 19966, 2080.69, -1757.61, 12.5623, 88.6998, 1874),
(135, 19966, 2076.36, -1739.93, 12.5469, 1.90547, 3450),
(82, 19966, 1338.25, -1042.22, 26.3311, 92.6022, 1175),
(196, 19962, 1664.96, -1738.51, 12.5448, 87.4139, 182),
(516, 19966, 464.073, -1731.96, 9.56639, 175.329, 8478),
(73, 19966, 1368.32, -1235.12, 12.5469, 269.428, 1498),
(114, 19966, 1424.3, -1582.34, 12.5437, 2.42172, 1299),
(117, 19966, 1534.95, -1602.35, 12.5459, 184.223, 788),
(454, 19976, 1331.45, -1411.08, 12.5503, 90.1309, 2088),
(524, 19976, 1464.55, -1435.42, 12.5469, 270.241, 3288),
(446, 19963, 1981.31, -1806.8, 12.5469, 270.437, 7845),
(112, 19966, 1435.06, -1602.52, 12.5469, 182.23, 3472),
(110, 19966, 1423.83, -1722.01, 12.5459, 0.180225, 7415),
(445, 19966, 1967.17, -1762.27, 12.5469, 179.215, 6637),
(183, 19967, 1368.85, -1672.27, 12.502, 350.978, 3974),
(75, 19966, 1291.78, -1842.37, 12.5469, 359.356, 2899),
(74, 19966, 1303.14, -1842.05, 12.5469, 0.295413, 1972),
(107, 19966, 1432.02, -1882.4, 12.5505, 187.657, 1419),
(105, 19966, 1394.9, -1741.95, 12.5469, 181.478, 6537),
(168, 19966, 1329.43, -1286.56, 12.5469, 88.6398, 9033),
(518, 19962, 1360.96, -1449.73, 12.5449, 174.295, 5567),
(517, 19966, 1535.88, -1884.44, 12.6264, 180.429, 2540),
(90, 19966, 1331.51, -1154.93, 22.8281, 89.672, 1457),
(515, 19966, 1070.65, -1846.07, 12.5469, 269.2, 8159),
(91, 19966, 1368.95, -1135.56, 22.8281, 270.282, 5226),
(167, 19960, 1383.01, -959.181, 33.3163, 158.827, 7434),
(97, 19966, 1378.86, -1030.61, 25.6058, 276.743, 1144),
(103, 19966, 1286.66, -1717.6, 12.5469, 91.5302, 2827),
(102, 19966, 1277.16, -1577.83, 12.5411, 90.3942, 9728),
(98, 19966, 1322.63, -1566.6, 12.5469, 272.195, 8207),
(104, 19966, 1322.45, -1726.86, 12.5469, 267.332, 4982),
(106, 19966, 1383.9, -1862.36, 12.5391, 356.47, 5825),
(118, 19978, 1536.35, -1663.28, 12.5459, 177.98, 8459),
(136, 19966, 2226.23, -1726.88, 12.5497, 269.764, 6969),
(137, 19966, 2183.93, -1644.88, 14.3701, 80.8436, 7879),
(138, 19966, 2226.11, -1644.94, 14.4924, 255.04, 8999),
(139, 19966, 2348.24, -1669.31, 12.5233, 176.658, 5581),
(140, 19966, 2337.42, -1722.59, 12.5264, 4.08787, 1547),
(141, 19966, 2418.95, -1742.39, 12.5469, 175.198, 4872),
(142, 19966, 2426.06, -1722.1, 12.8105, 0.669979, 1092),
(143, 19966, 2533.09, -1742.41, 12.5469, 178.278, 3686),
(148, 19966, 2632.82, -1737.47, 9.8985, 88.1898, 9903),
(147, 19966, 2654.6, -1651.7, 9.86719, 262.724, 3202),
(146, 19948, 2637.91, -1606.9, 10.0172, 3.24564, 9672),
(511, 19969, 1441.09, -1737.83, 12.5477, 85.2813, 453),
(195, 19962, 1711.45, -1725.75, 12.5469, 268.289, 3576),
(194, 19965, 1695.87, -1776.87, 12.5469, 178.947, 9639),
(453, 19976, 1368.71, -1389.93, 12.6949, 266.516, 3042),
(189, 19966, 1696.62, -1743.29, 12.5469, 179.826, 7988),
(440, 19962, 2093.3, -1770.28, 12.5535, 164.759, 7793),
(448, 19963, 2102.72, -1888.94, 12.5469, 272.338, 8867),
(193, 19965, 1683.13, -1694.94, 12.5469, 358.654, 1525),
(612, 19969, 871.567, -1295.85, 12.7673, 88.0623, 7356),
(165, 19969, 1439.34, -1726.63, 12.5469, 272.752, 108),
(192, 19966, 1682.48, -1722.08, 12.5469, 359.167, 3395),
(197, 19966, 1812.08, -1738.45, 12.5469, 86.9261, 9001),
(199, 19966, 1834.22, -1746.61, 12.5469, 266.155, 8739),
(210, 19966, -124.584, -973.129, 24.8235, 333.865, 7719),
(201, 19965, 1857.74, -1746.43, 12.5469, 267.636, 1550),
(202, 19965, 1783.89, -1738.21, 12.5469, 86.9535, 3386),
(203, 19962, 1815.88, -1686.08, 12.5469, 354.969, 4650),
(204, 19962, 1827.33, -1794.23, 12.5469, 177.073, 4264),
(441, 19962, 2091.57, -1736.24, 12.5605, 345.874, 5235),
(444, 19966, 1996.27, -1740.01, 12.5469, 3.93761, 7823),
(550, 19956, 2925.82, -650.952, 10.2069, 269.51, 7638),
(447, 19963, 2060.26, -1817.68, 12.5469, 88.5418, 8530),
(405, 19966, 2337.22, -1653.46, 12.4362, 358.934, 5878),
(549, 19977, 3242.15, -651.187, 6.16863, 274.473, 4545),
(230, 19950, 662.372, -577.983, 15.3359, 180.999, 6293),
(548, 19977, 3093.99, -664.271, 10.2069, 90.6158, 385),
(251, 19978, 907.532, -996.867, 36.7323, 35.9871, 5676),
(337, 19991, 1400.34, -1737.83, 12.5438, 87.4515, 7475),
(525, 19976, 1445.11, -1446.48, 12.5534, 88.757, 4771),
(521, 19962, 1400.46, -1389.97, 12.5547, 270.569, 9406),
(547, 19992, 3185.45, -664.052, 10.2069, 89.4131, 3635),
(338, 19991, 1537.52, -1587, 12.5478, 269.031, 6404),
(342, 19991, 1424.07, -1576.12, 12.5469, 354.598, 8478),
(611, 19991, 1511.29, -1726.26, 12.5469, 272.591, 9280),
(519, 19962, 1337.35, -1349.12, 12.5469, 358.78, 9096),
(339, 19991, 1420.05, -1597.76, 12.5478, 89.8714, 3108),
(510, 19969, 1557.51, -1738.1, 12.5469, 85.7369, 2297),
(503, 19978, 1415.61, -1752.02, 12.5438, 356.13, 1367),
(508, 19978, 1542.49, -1752.02, 12.5452, 0.698015, 7634),
(520, 19962, 1299.31, -1411.38, 12.4042, 88.5672, 1084),
(535, 19966, 1805.45, -1617.46, 12.5469, 84.591, 2151),
(537, 19966, 1838.42, -1606.44, 12.5469, 276.45, 4312),
(546, 19967, 1613.93, -1664.98, 12.4852, 1.24678, 2585),
(627, 19979, 2350.31, -13.1307, 25.4844, 163.077, 2799),
(628, 19979, 1422.02, 196.982, 19.6125, 244.493, 8908),
(625, 19979, 1510.58, -1725.48, 12.5469, 263.328, 7147),
(620, 19979, 1363.27, -1339.49, 12.5469, 180.215, 3864),
(626, 19979, 2337.22, 80.1714, 25.4801, 349.416, 5214),
(602, 19969, 1405.54, 279.526, 18.5547, 143.973, 2715),
(621, 19979, 1348.84, -1130.43, 22.8354, 357.668, 8552),
(604, 19968, 1412.18, 267.382, 18.5547, 92.2488, 2630),
(631, 19979, 238.95, -198.621, 0.578125, 180.726, 6469),
(629, 19979, 1303.79, 236.681, 18.5547, 66.6668, 4314),
(630, 19979, 226.352, -83.9354, 0.578125, 0.850418, 3471),
(610, 19969, 1511.99, -1726.85, 12.5469, 271.651, 8896),
(622, 19979, 1336.25, -1162.78, 22.919, 356.102, 8899),
(624, 19979, 1400.55, -1738.74, 12.5438, 76.8414, 5702),
(614, 19991, 2350.52, -17.6056, 25.4844, 176.947, 378),
(615, 19991, 2338.09, 80.5093, 25.4788, 2.10896, 52);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `sirenen`
--

CREATE TABLE `sirenen` (
  `id` int(11) NOT NULL,
  `pid` int(11) DEFAULT NULL,
  `vehmodel` int(3) DEFAULT NULL,
  `posx` float DEFAULT 0,
  `posy` float DEFAULT 0,
  `posz` float DEFAULT 0,
  `posrx` float DEFAULT 0,
  `posry` float DEFAULT 0,
  `posrz` float DEFAULT 0,
  `objmodel` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `sklogs`
--

CREATE TABLE `sklogs` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `aktion` varchar(75) DEFAULT NULL,
  `geld` int(6) DEFAULT NULL,
  `time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `sklogs`
--

INSERT INTO `sklogs` (`id`, `name`, `aktion`, `geld`, `time`) VALUES
(1, 'System', 'Steuernachzahlungen', 105741, 1645287392),
(2, 'System', 'Business Steuern bezahlt', 125, 1645287392),
(3, 'System', 'Business Steuern bezahlt', 5, 1645287392),
(4, 'System', 'Business Steuern bezahlt', 10, 1645287392),
(5, 'System', 'Business Steuern bezahlt', 5, 1645287392),
(6, 'System', 'Business Steuern bezahlt', 10, 1645287392),
(7, 'System', 'Business Steuern bezahlt', 5, 1645287392),
(8, 'System', 'Business Steuern bezahlt', 10, 1645287392),
(9, 'System', 'Business Steuern bezahlt', 5, 1645287392),
(10, 'System', 'Business Steuern bezahlt', 10, 1645287392),
(11, 'System', 'Business Steuern bezahlt', 5, 1645287392),
(12, 'System', 'Business Steuern bezahlt', 10, 1645287392),
(13, 'System', 'Business Steuern bezahlt', 5, 1645287392),
(14, 'System', 'Business Steuern bezahlt', 10, 1645287392),
(15, 'System', 'Business Steuern bezahlt', 5, 1645287392),
(16, 'System', 'Business Steuern bezahlt', 10, 1645287392),
(17, 'System', 'Business Steuern bezahlt', 125, 1645287392),
(18, 'System', 'Steuernachzahlungen', 111772, 1645291119),
(19, 'System', 'Business Steuern bezahlt', 125, 1645291119),
(20, 'System', 'Business Steuern bezahlt', 5, 1645291119),
(21, 'System', 'Business Steuern bezahlt', 10, 1645291119),
(22, 'System', 'Business Steuern bezahlt', 5, 1645291119),
(23, 'System', 'Business Steuern bezahlt', 10, 1645291119),
(24, 'System', 'Business Steuern bezahlt', 5, 1645291119),
(25, 'System', 'Business Steuern bezahlt', 10, 1645291119),
(26, 'System', 'Business Steuern bezahlt', 5, 1645291119),
(27, 'System', 'Business Steuern bezahlt', 10, 1645291119),
(28, 'System', 'Business Steuern bezahlt', 5, 1645291119),
(29, 'System', 'Business Steuern bezahlt', 10, 1645291119),
(30, 'System', 'Business Steuern bezahlt', 5, 1645291119),
(31, 'System', 'Business Steuern bezahlt', 10, 1645291119),
(32, 'System', 'Business Steuern bezahlt', 5, 1645291119),
(33, 'System', 'Business Steuern bezahlt', 10, 1645291119),
(34, 'System', 'Business Steuern bezahlt', 5, 1645291119),
(35, 'System', 'Business Steuern bezahlt', 10, 1645291119),
(36, 'System', 'Business Steuern bezahlt', 120, 1645291119),
(37, 'System', 'Steuernachzahlungen', 124779, 1645292779),
(38, 'System', 'Business Steuern bezahlt', 125, 1645292779),
(39, 'System', 'Business Steuern bezahlt', 5, 1645292779),
(40, 'System', 'Business Steuern bezahlt', 10, 1645292779),
(41, 'System', 'Business Steuern bezahlt', 5, 1645292779),
(42, 'System', 'Business Steuern bezahlt', 10, 1645292779),
(43, 'System', 'Business Steuern bezahlt', 5, 1645292779),
(44, 'System', 'Business Steuern bezahlt', 10, 1645292779),
(45, 'System', 'Business Steuern bezahlt', 130, 1645292779),
(46, 'System', 'Steuernachzahlungen', 123539, 1645294899),
(47, 'System', 'Business Steuern bezahlt', 125, 1645294899),
(48, 'System', 'Business Steuern bezahlt', 5, 1645294899),
(49, 'System', 'Business Steuern bezahlt', 10, 1645294899),
(50, 'System', 'Business Steuern bezahlt', 5, 1645294899),
(51, 'System', 'Business Steuern bezahlt', 10, 1645294899),
(52, 'System', 'Business Steuern bezahlt', 125, 1645294899),
(53, 'System', 'Steuernachzahlungen', 114589, 1645394138),
(54, 'System', 'Business Steuern bezahlt', 125, 1645394138),
(55, 'System', 'Business Steuern bezahlt', 5, 1645394138),
(56, 'System', 'Business Steuern bezahlt', 10, 1645394138),
(57, 'System', 'Business Steuern bezahlt', 5, 1645394138),
(58, 'System', 'Business Steuern bezahlt', 10, 1645394138),
(59, 'System', 'Business Steuern bezahlt', 5, 1645394138),
(60, 'System', 'Business Steuern bezahlt', 10, 1645394138),
(61, 'System', 'Business Steuern bezahlt', 5, 1645394138),
(62, 'System', 'Business Steuern bezahlt', 10, 1645394138),
(63, 'System', 'Business Steuern bezahlt', 5, 1645394138),
(64, 'System', 'Business Steuern bezahlt', 10, 1645394138),
(65, 'System', 'Business Steuern bezahlt', 5, 1645394138),
(66, 'System', 'Business Steuern bezahlt', 10, 1645394138),
(67, 'System', 'Business Steuern bezahlt', 5, 1645394138),
(68, 'System', 'Business Steuern bezahlt', 10, 1645394138),
(69, 'System', 'Business Steuern bezahlt', 5, 1645394138),
(70, 'System', 'Business Steuern bezahlt', 10, 1645394138),
(71, 'System', 'Business Steuern bezahlt', 135, 1645394138);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `sms`
--

CREATE TABLE `sms` (
  `id` int(11) NOT NULL,
  `nummervon` int(6) DEFAULT NULL,
  `nummeran` int(6) DEFAULT NULL,
  `inhalt` varchar(128) DEFAULT NULL,
  `read` int(2) DEFAULT 0,
  `timestamp` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `spielerobjekte`
--

CREATE TABLE `spielerobjekte` (
  `id` int(11) NOT NULL,
  `pid` int(11) DEFAULT NULL,
  `slot` int(2) DEFAULT NULL,
  `x` float DEFAULT 0,
  `y` float DEFAULT 0,
  `z` float DEFAULT 0,
  `rx` float DEFAULT 0,
  `ry` float DEFAULT 0,
  `rz` float DEFAULT 0,
  `g1` float DEFAULT 1,
  `g2` float DEFAULT 1,
  `g3` float DEFAULT 1,
  `bone` int(2) DEFAULT 1,
  `ga` int(2) DEFAULT 0,
  `c1` int(2) DEFAULT NULL,
  `c2` int(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `spielerobjekte`
--

INSERT INTO `spielerobjekte` (`id`, `pid`, `slot`, `x`, `y`, `z`, `rx`, `ry`, `rz`, `g1`, `g2`, `g3`, `bone`, `ga`, `c1`, `c2`) VALUES
(1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0),
(2, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0),
(3, 1, 2, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0),
(4, 1, 3, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0),
(5, 1, 4, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0),
(6, 1, 5, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0),
(7, 1, 6, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0),
(8, 1, 7, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0),
(9, 1, 8, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0),
(10, 1, 9, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0),
(11, 1, 10, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0),
(12, 1, 11, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0),
(13, 1, 12, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0),
(14, 1, 13, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0),
(15, 1, 14, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0),
(16, 1, 15, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0),
(17, 1, 16, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0),
(18, 1, 17, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0),
(19, 1, 18, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0),
(20, 1, 19, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0),
(21, 1, 20, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0),
(22, 1, 21, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0),
(23, 1, 22, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0),
(24, 1, 23, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0),
(25, 1, 24, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0),
(26, 1, 25, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0),
(27, 1, 26, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0),
(28, 1, 27, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0),
(29, 1, 28, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0),
(30, 1, 29, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0),
(31, 1, 30, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0),
(32, 1, 31, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0),
(33, 1, 32, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0),
(34, 1, 33, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0),
(35, 1, 34, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0),
(36, 1, 35, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0),
(37, 1, 36, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0),
(38, 1, 37, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0),
(39, 1, 38, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0),
(40, 1, 39, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0),
(41, 1, 40, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0),
(42, 1, 41, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0),
(43, 1, 42, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0),
(44, 1, 43, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0),
(45, 1, 44, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0),
(46, 1, 45, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0),
(47, 1, 46, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0),
(48, 1, 47, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0),
(49, 1, 48, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0),
(50, 1, 49, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0),
(51, 1, 50, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0),
(52, 1, 51, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0),
(53, 2, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, NULL, NULL),
(54, 2, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, NULL, NULL),
(55, 2, 2, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, NULL, NULL),
(56, 2, 3, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, NULL, NULL),
(57, 2, 4, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, NULL, NULL),
(58, 2, 5, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, NULL, NULL),
(59, 2, 6, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, NULL, NULL),
(60, 2, 7, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, NULL, NULL),
(61, 2, 8, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, NULL, NULL),
(62, 2, 9, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, NULL, NULL),
(63, 2, 10, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, NULL, NULL),
(64, 2, 11, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, NULL, NULL),
(65, 2, 12, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, NULL, NULL),
(66, 2, 13, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, NULL, NULL),
(67, 2, 14, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, NULL, NULL),
(68, 2, 15, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, NULL, NULL),
(69, 2, 16, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, NULL, NULL),
(70, 2, 17, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, NULL, NULL),
(71, 2, 18, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, NULL, NULL),
(72, 2, 19, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, NULL, NULL),
(73, 2, 20, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, NULL, NULL),
(74, 2, 21, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, NULL, NULL),
(75, 2, 22, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, NULL, NULL),
(76, 2, 23, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, NULL, NULL),
(77, 2, 24, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, NULL, NULL),
(78, 2, 25, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, NULL, NULL),
(79, 2, 26, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, NULL, NULL),
(80, 2, 27, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, NULL, NULL),
(81, 2, 28, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, NULL, NULL),
(82, 2, 29, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, NULL, NULL),
(83, 2, 30, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, NULL, NULL),
(84, 2, 31, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, NULL, NULL),
(85, 2, 32, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, NULL, NULL),
(86, 2, 33, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, NULL, NULL),
(87, 2, 34, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, NULL, NULL),
(88, 2, 35, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, NULL, NULL),
(89, 2, 36, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, NULL, NULL),
(90, 2, 37, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, NULL, NULL),
(91, 2, 38, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, NULL, NULL),
(92, 2, 39, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, NULL, NULL),
(93, 2, 40, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, NULL, NULL),
(94, 2, 41, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, NULL, NULL),
(95, 2, 42, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, NULL, NULL),
(96, 2, 43, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, NULL, NULL),
(97, 2, 44, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, NULL, NULL),
(98, 2, 45, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, NULL, NULL),
(99, 2, 46, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, NULL, NULL),
(100, 2, 47, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, NULL, NULL),
(101, 2, 48, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, NULL, NULL),
(102, 2, 49, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, NULL, NULL),
(103, 2, 50, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, NULL, NULL),
(104, 2, 51, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `spraytags`
--

CREATE TABLE `spraytags` (
  `id` int(11) NOT NULL,
  `sid` int(11) DEFAULT NULL,
  `posx` float DEFAULT NULL,
  `posy` float DEFAULT NULL,
  `posz` float DEFAULT NULL,
  `posrx` float DEFAULT NULL,
  `posry` float DEFAULT NULL,
  `posa` float DEFAULT NULL,
  `text` varchar(60) DEFAULT NULL,
  `ersteller` varchar(50) DEFAULT NULL,
  `font` varchar(30) DEFAULT NULL,
  `object` int(5) DEFAULT 19327,
  `time` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `texturen`
--

CREATE TABLE `texturen` (
  `id` int(11) NOT NULL,
  `modelid` int(6) DEFAULT NULL,
  `txdname` varchar(64) DEFAULT NULL,
  `texturename` varchar(64) DEFAULT NULL,
  `textname` varchar(64) DEFAULT NULL,
  `kategorie` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `texturen`
--

INSERT INTO `texturen` (`id`, `modelid`, `txdname`, `texturename`, `textname`, `kategorie`) VALUES
(1, 5134, 'wasteland_las2', 'ws_bigstones', 'Steinmauer 1', 1),
(2, 16150, 'ufo_bar', 'sa_wood07_128', 'Holzboden 1', 0),
(4, 10765, 'airportgnd_sfse', 'white', 'Weiß A', 3),
(5, 16150, 'ufo_bar', 'GEwhite1_64', 'Weiß B', 3),
(6, 2423, 'cj_ff_counters', 'CJ_Laminate1', 'Laminat', 0),
(7, 18265, 'w_town3cs_t', 'sw_barnwoodblu', 'Blaues bröckeliges Holz', 0),
(8, 1219, 'woodpanels', 'planks01', 'Graue Holzplanken', 0),
(9, 18229, 'woodycs_t', 'fence1', 'Graue/r alte/r Holzzaun/Holzplanken', 0),
(10, 8870, 'vgsecnstrct03', 'Gen_Scaffold_Wood_Under', 'Dunkles Holz A', 0),
(11, 17009, 'truth_farm', 'des_ghotwood1', 'Dunkles Holz B', 0),
(13, 16150, 'ufo_bar', 'sa_wood08_128', 'Hellbraunes Holz B', 0),
(14, 16150, 'ufo_bar', 'woodboards1', 'Rot/braune Holzplanken', 0),
(15, 534, 'tikimotel', 'sa_wood01_1288', 'Gewebtes Holz (Hell)', 0),
(16, 8534, 'tikimotel', 'sa_wood03_128', 'Gewebtes Holz (Beige)', 0),
(17, 8534, 'tikimotel', 'sa_wood04_128', 'Gewebtes Holz (Dunkel)', 0),
(18, 8534, 'tikimotel', 'sa_wood05_128', 'Helle Holzplanken', 0),
(19, 12954, 'sw_furniture', 'CJ_WOOD5', 'Dunkelbraunes Holz', 0),
(20, 10941, 'silicon2_sfse', 'woodboards2', 'Braun/Rote Holzplanken B', 0),
(21, 10226, 'sfeship1', 'CJ_WOOD1', 'Helles Holz mit Maserung', 0),
(22, 8423, 'pirateship01', 'ab_wood01', 'Dunkles Holz mit Sternenmuster', 0),
(23, 11631, 'mp_ranchcut', 'mpCJ_WOOD_DARK', 'Dunkles Holz mit Maserung', 0),
(24, 2964, 'k_pool', 'Bow_bar_tabletop_wood', 'Braunes Holz mit Maserung', 0),
(25, 18265, 'w_town3cs_t', 'boardwalk_la', 'Helle Steg-Holzplanken A', 0),
(26, 6281, 'santamonicalaw2', 'boardwalk2_la', 'Helle Steg-Holzplanken B', 0),
(27, 6280, 'santamonicalaw2a', 'beachwalk_law', 'Helle Steg-Holzplanken A (mit Sandrand)', 0),
(30, 5134, 'wasteland_las2', 'ws_sandstone2', 'Helle Steinmauer B', 1),
(31, 12937, 'sw_oldshack', 'stonewall3_la', 'Helle Steinmauer C', 1),
(32, 4101, 'stapl', 'sl_flagstone1', 'Helle Steinmauer D', 1),
(33, 11252, 'railbridge_sfse', 'ws_stoneblock', 'Helle Steinmauer E', 1),
(34, 8565, 'vgsebuild01', 'ws_stonewall', 'Dunkle Steinmauer A', 1),
(35, 6056, 'venice_law', 'stonewall_la', 'Dunkle Steinmauer B', 1),
(36, 5722, 'sunrise01_lawn', 'fakestone1_LA', 'Beige Kunststeinmauer', 1),
(37, 13011, 'sw_block12', 'ws_sandstone1', 'Alte Steinmauer', 1),
(38, 16146, 'des_ufoinn', 'stoneclad1', 'Bunte Steinmauer', 1),
(39, 9683, 'goldengate_sfw', 'stonesandkb2_128', 'Braune Steinmauer', 1),
(40, 6048, 'mall_law', 'stonemall_law', 'Moderne Steinmauer', 1),
(41, 13724, 'docg01_lahills', 'ab_tile2', 'Hellrote kleine Fließen', 2),
(42, 8486, 'ballys02', 'walltiles_128', 'Kleine weiße Fliesen', 2),
(43, 12911, 'sw_farm1', 'sw_walltile', 'Kleine graue Fliesen', 2),
(44, 10444, 'hotelbackpool_sfs', 'ws_tantiles1btm', 'Beige/Graue Fliesen', 2),
(45, 2254, 'picture_frame_clip', 'CJ_PAINTING2', 'Bild A (Gelber Washighton)', 5),
(46, 1676, 'wshxrefpump', 'metalic128', 'Graues hochglanz Metall', 4),
(47, 8463, 'vgseland', 'triadcarpet2', 'Roter Teppich A', 6),
(49, 18265, 'w_town3cs_t', 'ws_redbrickold', 'Rote Mauer A', 1),
(50, 12959, 'sw_library', 'sw_brick05', 'Rote Mauer B', 1),
(51, 10932, 'station_sfse', 'ws_stationfloor', 'Helle moderne Fliesen', 2),
(52, 8835, 'vgsebushes', 'fuzzyplant256', 'Grüne Pflanze A', 7),
(53, 8401, 'vgshpground', 'parkingsign01_128', 'Car-Parking Schild', 8),
(54, 8536, 'tikisign', 'tikireed01_128', 'Modernes helles Holz', 0),
(55, 1569, 'adam_v_doort', 'ws_guardhousedoor', 'Moderne Tür mit Glas', 9),
(56, 9135, 'vgseseabed', 'sw_sand', 'Sand A', 11),
(57, 6281, 'santamonicalaw2', 'sandnew_law', 'Sand B', 11),
(58, 1676, 'wshxrefpump', 'black64', 'Schwarz A', 3),
(61, 17925, 'lae2fake_int', 'carpet1kb', 'Beiger Teppich A', 6),
(62, 17946, 'carter_mainmap', 'mp_carter_carpet', 'Grauer Teppich A', 6),
(63, 9169, 'vgslowbuild', 'concpanel_la', 'Weiße Fliesen A', 2),
(64, 10355, 'haight1_sfs', 'drivetile_02', 'Orangener Steinweg', 1),
(65, 4601, 'lan2_gm1', 'sl_plazatile01', 'Lilaner Steinweg', 1),
(66, 4573, 'stolenbuild01', 'sl_plazatile02', 'Rosaner Steinweg', 1),
(67, 4550, 'skyscr1_lan2', 'gm_labuld2_b', 'Helle Mauer', 1),
(68, 5813, 'lawnabv', 'cluckbell01_law', 'Cluckin Bell Schild', 8),
(69, 5813, 'lawnabv', 'vgs_rockwall01_128', 'Weiße Steinmauer', 1),
(70, 4601, 'lan2_gm1', 'gm_labuld1_b', 'Beige/Graue Mauer', 1),
(71, 4558, 'lanlacmab_lan2', 'sl_gallerywall1', 'Weiße Fliesen mit Rand', 2),
(72, 4558, 'lanlacmab_lan2', 'LASLACMA998', 'Gelbe Fliesen', 2),
(73, 11301, 'carshow_sfse', 'concreteslab_small', 'Silberne Fliesen', 2),
(74, 3922, 'bistro', 'Tablecloth', 'Mehrfarbiges Gemälde', 5),
(75, 3922, 'bistro', 'Marble2', 'Weißer Marmor', 1),
(76, 3922, 'bistro', 'Marble', 'Dunkler Marmor', 1),
(77, 3945, 'bistro_alpha', 'creme128', 'Edler weißer Zaun', 9),
(78, 3922, 'bistro', 'ahoodfence2', 'Braune Ziegelmauer', 1),
(79, 3922, 'bistro', 'DinerFloor', 'Braunes Parket', 0),
(80, 3946, 'bistro_plants', 'starflower2', 'Rote Blumen', 7),
(81, 3946, 'bistro_plants', 'starflower4', 'Gelbe Blumen', 7),
(82, 3922, 'bistro', 'Panel', 'Mehrfarbige Tapete', 3),
(84, 14806, 'bdupshifi', 'Bdup2_wood', 'Braunes Holz mit Maserung B', 0),
(85, 4821, 'union_las', 'tarmacplain_bank', 'Teer', 11),
(86, 18202, 'w_towncs_t', 'plaintarmac1', 'Teer B', 11),
(87, 5408, 'tempstuff_lae', 'concretemanky', 'Beton', 11),
(88, 6060, 'shops2_law', 'blueshade2_64', 'Blaue Markise', 11),
(89, 5764, 'telewirelawn', 'greenshade_64', 'Grüne Markise', 11),
(90, 10435, 'hashblock4_sfs', 'redshade2_64', 'Rote Markise', 11),
(91, 6060, 'shops2_law', 'venshade03_law', 'Rote Wand', 3),
(92, 1649, 'wglass', 'carshowwin2', 'Grünes Glas', 10),
(93, 5722, 'sunrise01_lawn', 'plainglass', 'Glas mit weißem Rand', 10),
(94, 9908, 'smallertxd', 'ws_glassnbrassdoor', 'Goldene Tür', 9),
(95, 3717, 'sanclifbal1_lax', 'glasfenc1_LA', 'Glaszaun A', 9),
(96, 3902, 'libertyhi3', 'glass2_64', 'Blaues Glas', 10),
(97, 10444, 'hotelbackpool_sfs', 'ws_glass_balustrade', 'Glaszaun B', 9),
(98, 6293, 'lawland2', 'lightglass', 'Glas mit Gittern', 10),
(99, 9908, 'smallertxd', 'hotel_win1', 'Fenster mit goldenen Rahmen', 10),
(100, 12931, 'sw_brewery', 'fancy_slab128', 'Graue Fliesen', 2),
(101, 6056, 'venice_law', 'stormdrain3_nt', 'Heller Beton', 11),
(102, 14808, 'Lee_Strip2', 'Strip_curtain', 'Roter Vorhang', 6),
(103, 8399, 'vgs_shops', 'vgsclubwall05_128', 'Moderne, weiße Steinmauer ', 1),
(104, 12911, 'sw_farm1', 'sw_barnwood4', 'Altes Holz A', 0),
(105, 14387, 'dr_gsnew', 'mp_stonefloor', 'Moderne Steine', 1),
(106, 14629, 'ab_chande', 'ab_goldpipe', 'Gold A', 4),
(107, 14581, 'ab_mafiasuitea', 'goldPillar', 'Gold B', 4),
(108, 11391, 'hubprops2_sfse', 'blackbag', 'Schwarze Folie', 11),
(109, 13691, 'bevcunto2_lahills', 'crazypave', 'Graue Steinmauer ', 1),
(111, 13691, 'bevcunto2_lahills', 'ws_floortiles2', 'Rote Steinfliesen', 2),
(112, 13691, 'bevcunto2_lahills', 'aamanbev96x', 'Heckentextur A', 7),
(113, 5768, 'sunrise05_lawn', 'hedge1', 'Heckentextur B', 7),
(114, 8678, 'wddngchplgrnd01', 'newhedgea', 'Heckentextur C', 7),
(115, 13691, 'bevcunto2_lahills', 'ws_patio1', 'Steinboden A', 1),
(116, 13744, 'docg01alfa_lahills', 'Gen_Metal', 'Edeler Zaun', 9),
(117, 13724, 'docg01_lahills', 'ston10S', 'Orangene 2 Steinfliesen ', 1),
(119, 13710, 'easthills_lahills', 'indund_64', 'Graue Steinfliesen A', 2),
(120, 13724, 'docg01_lahills', 'chr_flags_256', 'Graue Steinfliesen B', 2),
(122, 9362, 'sfn_byofficeint', 'CJ_Black_metal', 'Schwarzes Metal', 4),
(123, 8419, 'vgsbldng1', 'cityplansign01_256', 'Architektur', 8),
(124, 5848, 'mainlcawn', '24hoursign1_LAwN', '24 h open', 8),
(125, 5418, 'idlewood3_lae', 'pizzasign_LAe', 'Pizza Schild', 8),
(126, 11449, 'des_nwtownw', 'des_loungesign', 'Lounge', 8),
(127, 9241, 'sfn_helipad', 'ws_security_door', 'Door A', 9),
(128, 11008, 'firehouse_sfse', 'halldoor01_law', 'Door B', 9),
(129, 1498, 'ext_doors_old', 'CJ_DOOR6', 'Door C', 9),
(130, 12814, 'factorycunte', 'factorycunte', 'Door D', 9);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ucp_bank_log`
--

CREATE TABLE `ucp_bank_log` (
  `id` int(11) NOT NULL,
  `spielerid` int(11) DEFAULT NULL,
  `betrag` double DEFAULT NULL,
  `datum` timestamp NOT NULL DEFAULT current_timestamp(),
  `empfangerRP` varchar(255) DEFAULT NULL,
  `roleplayname` varchar(2553) DEFAULT NULL,
  `empfangerid` int(11) DEFAULT NULL,
  `Verwendungzweck` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ucp_config`
--

CREATE TABLE `ucp_config` (
  `maintenance` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `ucp_config`
--

INSERT INTO `ucp_config` (`maintenance`) VALUES
(0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `userakte`
--

CREATE TABLE `userakte` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `adminid` int(11) DEFAULT NULL,
  `timestamp` bigint(20) DEFAULT NULL,
  `action` varchar(60) DEFAULT NULL,
  `reason` varchar(120) DEFAULT NULL,
  `fromtype` tinyint(1) DEFAULT 0,
  `delete` int(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `userakte2`
--

CREATE TABLE `userakte2` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `adminid` int(11) DEFAULT NULL,
  `timestamp` bigint(20) DEFAULT NULL,
  `action` varchar(60) DEFAULT NULL,
  `reason` varchar(120) DEFAULT NULL,
  `fromtype` tinyint(1) DEFAULT 0,
  `delete` int(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `versteck`
--

CREATE TABLE `versteck` (
  `id` int(11) NOT NULL,
  `hausid` int(5) DEFAULT NULL,
  `moebelslot` int(5) DEFAULT NULL,
  `items` varchar(75) DEFAULT '0,0,0,0,0,0,0,0,0,0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `waffenkammer`
--

CREATE TABLE `waffenkammer` (
  `id` int(11) NOT NULL,
  `silenced` int(5) NOT NULL,
  `deagle` int(5) NOT NULL,
  `mp5` int(5) NOT NULL,
  `shotgun` int(5) NOT NULL,
  `rauchgranaten` int(5) NOT NULL,
  `m4` int(5) NOT NULL,
  `schlagstock` int(5) NOT NULL,
  `spray` int(5) NOT NULL,
  `sniper` int(5) NOT NULL,
  `granaten` int(5) NOT NULL,
  `armor` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `waffenkammer`
--

INSERT INTO `waffenkammer` (`id`, `silenced`, `deagle`, `mp5`, `shotgun`, `rauchgranaten`, `m4`, `schlagstock`, `spray`, `sniper`, `granaten`, `armor`) VALUES
(1, 480, 2832, 3750, 175, 75, 1749, 48, 6493, 45, 75, 95),
(2, 480, 2510, 3500, 200, 0, 0, 48, 4500, 0, 0, 89),
(3, 487, 2944, 3750, 200, 75, 1748, 47, 4800, 25, 75, 97);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `waffenpreise`
--

CREATE TABLE `waffenpreise` (
  `id` int(11) DEFAULT NULL,
  `w1` int(5) DEFAULT NULL,
  `w2` int(5) DEFAULT NULL,
  `w3` int(5) DEFAULT NULL,
  `w4` int(5) DEFAULT NULL,
  `w5` int(5) DEFAULT NULL,
  `w6` int(5) DEFAULT NULL,
  `w7` int(5) DEFAULT NULL,
  `w8` int(5) DEFAULT NULL,
  `w9` int(5) DEFAULT NULL,
  `w10` int(5) DEFAULT NULL,
  `w11` int(5) DEFAULT NULL,
  `w12` int(5) DEFAULT NULL,
  `w13` int(4) DEFAULT NULL,
  `w14` int(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `waffenpreise`
--

INSERT INTO `waffenpreise` (`id`, `w1`, `w2`, `w3`, `w4`, `w5`, `w6`, `w7`, `w8`, `w9`, `w10`, `w11`, `w12`, `w13`, `w14`) VALUES
(0, 7850, 0, 0, 0, 8950, 6050, 2350, 2600, 3500, 4350, 4800, 6250, 3500, 3950),
(1, 7850, 9550, 0, 0, 8950, 6050, 2350, 2600, 3500, 4500, 4800, 8500, 3500, 3950),
(2, 999999, 999999, 0, 0, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999),
(3, 7850, 0, 0, 0, 8950, 6050, 2350, 2600, 3500, 4750, 4800, 6250, 3500, 3950);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `waffenschrank`
--

CREATE TABLE `waffenschrank` (
  `id` int(11) NOT NULL,
  `hausid` int(11) DEFAULT NULL,
  `moebelslot` int(11) DEFAULT NULL,
  `waffen` varchar(75) DEFAULT '0,0,0,0,0',
  `ammo` varchar(75) DEFAULT '0,0,0,0,0',
  `lager` varchar(75) DEFAULT '0,0,0,0,0',
  `debug` int(2) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `weaponshand`
--

CREATE TABLE `weaponshand` (
  `Pid` int(11) NOT NULL,
  `Waffen0` int(3) DEFAULT NULL,
  `Waffen1` int(3) DEFAULT NULL,
  `Waffen2` int(3) DEFAULT NULL,
  `Waffen3` int(3) DEFAULT NULL,
  `Waffen4` int(3) DEFAULT NULL,
  `Waffen5` int(3) DEFAULT NULL,
  `Waffen6` int(3) DEFAULT NULL,
  `Waffen7` int(3) DEFAULT NULL,
  `Waffen8` int(3) DEFAULT NULL,
  `Waffen9` int(3) DEFAULT NULL,
  `Waffen10` int(3) DEFAULT NULL,
  `Waffen11` int(3) DEFAULT NULL,
  `Waffen12` int(3) DEFAULT NULL,
  `Ammo0` int(10) DEFAULT NULL,
  `Ammo1` int(10) DEFAULT NULL,
  `Ammo2` int(10) DEFAULT NULL,
  `Ammo3` int(10) DEFAULT NULL,
  `Ammo4` int(10) DEFAULT NULL,
  `Ammo5` int(10) DEFAULT NULL,
  `Ammo6` int(10) DEFAULT NULL,
  `Ammo7` int(10) DEFAULT NULL,
  `Ammo8` int(10) DEFAULT NULL,
  `Ammo9` int(10) DEFAULT NULL,
  `Ammo10` int(10) DEFAULT NULL,
  `Ammo11` int(10) DEFAULT NULL,
  `Ammo12` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `weaponshand`
--

INSERT INTO `weaponshand` (`Pid`, `Waffen0`, `Waffen1`, `Waffen2`, `Waffen3`, `Waffen4`, `Waffen5`, `Waffen6`, `Waffen7`, `Waffen8`, `Waffen9`, `Waffen10`, `Waffen11`, `Waffen12`, `Ammo0`, `Ammo1`, `Ammo2`, `Ammo3`, `Ammo4`, `Ammo5`, `Ammo6`, `Ammo7`, `Ammo8`, `Ammo9`, `Ammo10`, `Ammo11`, `Ammo12`) VALUES
(1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `werbetafeln`
--

CREATE TABLE `werbetafeln` (
  `id` int(3) DEFAULT NULL,
  `text` varchar(100) DEFAULT 'Diese Werbetafel steht zur Vermietung frei!\\n/call 180!',
  `timestamp` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `werbetafeln`
--

INSERT INTO `werbetafeln` (`id`, `text`, `timestamp`) VALUES
(0, 'Besuch doch mal Nemesus.de!', 0),
(1, 'Besuch doch mal Nemesus.de!', 0),
(2, 'Besuch doch mal Nemesus.de!', 0),
(3, 'Besuch doch mal Nemesus.de!', 0),
(4, 'Besuch doch mal Nemesus.de!', 0),
(5, 'Besuch doch mal Nemesus.de!', 0),
(6, 'Besuch doch mal Nemesus.de!', 0),
(7, 'Besuch doch mal Nemesus.de!', 0),
(8, 'Besuch doch mal Nemesus.de!', 0),
(9, 'Besuch doch mal Nemesus.de!', 0),
(10, 'Besuch doch mal Nemesus.de!', 0),
(11, 'Besuch doch mal Nemesus.de!', 0),
(12, 'Besuch doch mal Nemesus.de!', 0),
(13, 'Besuch doch mal Nemesus.de!', 0),
(14, 'Besuch doch mal Nemesus.de!', 0),
(15, 'Besuch doch mal Nemesus.de!', 0),
(16, 'Besuch doch mal Nemesus.de!', 0),
(17, 'Besuch doch mal Nemesus.de!', 0),
(18, 'Besuch doch mal Nemesus.de!', 0),
(19, 'Besuch doch mal Nemesus.de!', 0),
(20, 'Besuch doch mal Nemesus.de!', 0),
(21, 'Besuch doch mal Nemesus.de!', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `wm`
--

CREATE TABLE `wm` (
  `id` int(11) NOT NULL,
  `pid` int(11) DEFAULT NULL,
  `wm` varchar(135) DEFAULT '0,0,0,0,0,0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `wohnwagen`
--

CREATE TABLE `wohnwagen` (
  `id` int(11) NOT NULL,
  `inhaber` varchar(26) DEFAULT NULL,
  `posx` double DEFAULT NULL,
  `posy` double DEFAULT NULL,
  `posz` double DEFAULT NULL,
  `posa` double DEFAULT NULL,
  `tuev` int(11) DEFAULT NULL,
  `tank` int(3) DEFAULT NULL,
  `leben` double(11,0) DEFAULT NULL,
  `nitro` int(2) DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  `farbe1` int(2) DEFAULT NULL,
  `farbe2` int(2) DEFAULT NULL,
  `reifenk` int(2) DEFAULT NULL,
  `reifene` int(2) DEFAULT NULL,
  `motork` int(2) DEFAULT NULL,
  `bremse` int(2) DEFAULT NULL,
  `mats` int(4) DEFAULT NULL,
  `drogen` int(4) DEFAULT NULL,
  `eisen` int(11) DEFAULT NULL,
  `waffe` int(2) DEFAULT NULL,
  `ammo` int(2) DEFAULT NULL,
  `waffe2` int(2) DEFAULT NULL,
  `ammo2` int(2) DEFAULT NULL,
  `waffe3` int(2) DEFAULT NULL,
  `ammo3` int(2) DEFAULT NULL,
  `batt` int(3) DEFAULT NULL,
  `abgeschleppt` int(11) DEFAULT NULL,
  `preis` int(3) DEFAULT NULL,
  `grund` varchar(80) DEFAULT NULL,
  `kralle` varchar(50) DEFAULT NULL,
  `kilometer` int(5) DEFAULT NULL,
  `meter` int(5) DEFAULT NULL,
  `ausg` int(2) DEFAULT NULL,
  `alarm` int(2) DEFAULT NULL,
  `failtank` int(2) DEFAULT NULL,
  `arm` int(3) DEFAULT NULL,
  `atime` int(11) DEFAULT NULL,
  `d2` int(3) DEFAULT NULL,
  `d3` int(3) DEFAULT NULL,
  `schild` varchar(24) DEFAULT 'n/A',
  `koffer` int(6) DEFAULT -1,
  `defi` varchar(200) DEFAULT 'n/A',
  `dmg` varchar(150) DEFAULT 'n/A',
  `oel` int(3) DEFAULT 100,
  `drogen4` int(3) DEFAULT NULL,
  `nitrom` int(3) DEFAULT NULL,
  `strafzettel` varchar(85) DEFAULT 'n/A'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `zeitung`
--

CREATE TABLE `zeitung` (
  `zid` int(2) NOT NULL,
  `id` int(2) DEFAULT NULL,
  `satz1` varchar(100) DEFAULT NULL,
  `satz2` varchar(100) DEFAULT NULL,
  `satz3` varchar(100) DEFAULT NULL,
  `satz4` varchar(100) DEFAULT NULL,
  `satz5` varchar(100) DEFAULT NULL,
  `satz6` varchar(100) DEFAULT NULL,
  `satz7` varchar(100) DEFAULT NULL,
  `uschrift` varchar(100) DEFAULT NULL,
  `datum` varchar(11) DEFAULT NULL,
  `ersteller` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `accesindex`
--
ALTER TABLE `accesindex`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `modelid` (`modelid`);

--
-- Indizes für die Tabelle `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `accountsfirmenfahrzeuge`
--
ALTER TABLE `accountsfirmenfahrzeuge`
  ADD PRIMARY KEY (`aid`);

--
-- Indizes für die Tabelle `achievements`
--
ALTER TABLE `achievements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pid` (`pid`);

--
-- Indizes für die Tabelle `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `adminakte`
--
ALTER TABLE `adminakte`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `adminlogs_ucp`
--
ALTER TABLE `adminlogs_ucp`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `adminobjekte`
--
ALTER TABLE `adminobjekte`
  ADD PRIMARY KEY (`aid`);

--
-- Indizes für die Tabelle `adventskalender`
--
ALTER TABLE `adventskalender`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `antrag`
--
ALTER TABLE `antrag`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `asservatenkammer`
--
ALTER TABLE `asservatenkammer`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `bancheck`
--
ALTER TABLE `bancheck`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `bans`
--
ALTER TABLE `bans`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `beschwerden`
--
ALTER TABLE `beschwerden`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `beschwerden_archiv_27_03_2019`
--
ALTER TABLE `beschwerden_archiv_27_03_2019`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `beschwerde_antworten`
--
ALTER TABLE `beschwerde_antworten`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `beschwerde_user`
--
ALTER TABLE `beschwerde_user`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `beschwerde_user_27_03_2019`
--
ALTER TABLE `beschwerde_user_27_03_2019`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `beschwerde_vorlage`
--
ALTER TABLE `beschwerde_vorlage`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `blitzer`
--
ALTER TABLE `blitzer`
  ADD UNIQUE KEY `id_2` (`id`),
  ADD KEY `id` (`id`);

--
-- Indizes für die Tabelle `blocked`
--
ALTER TABLE `blocked`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `carsell`
--
ALTER TABLE `carsell`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vehid` (`vehid`,`name`);

--
-- Indizes für die Tabelle `cks`
--
ALTER TABLE `cks`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `dienstleistung`
--
ALTER TABLE `dienstleistung`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `drogenpflanzen`
--
ALTER TABLE `drogenpflanzen`
  ADD PRIMARY KEY (`pflanze`);

--
-- Indizes für die Tabelle `einstellungen`
--
ALTER TABLE `einstellungen`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `emailaccoutns`
--
ALTER TABLE `emailaccoutns`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `factionraenge`
--
ALTER TABLE `factionraenge`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indizes für die Tabelle `fahndung`
--
ALTER TABLE `fahndung`
  ADD PRIMARY KEY (`fdid`);

--
-- Indizes für die Tabelle `fahrzeuge`
--
ALTER TABLE `fahrzeuge`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `firma`
--
ALTER TABLE `firma`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `firmenfahrzeuge`
--
ALTER TABLE `firmenfahrzeuge`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `firmenlogs`
--
ALTER TABLE `firmenlogs`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `firmenranks`
--
ALTER TABLE `firmenranks`
  ADD PRIMARY KEY (`realid`);

--
-- Indizes für die Tabelle `fraktionsfahrzeuge`
--
ALTER TABLE `fraktionsfahrzeuge`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `furniture`
--
ALTER TABLE `furniture`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `geschenke`
--
ALTER TABLE `geschenke`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `geschenkepos`
--
ALTER TABLE `geschenkepos`
  ADD UNIQUE KEY `id_2` (`id`),
  ADD KEY `id` (`id`);

--
-- Indizes für die Tabelle `gutscheine`
--
ALTER TABLE `gutscheine`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `hausboot`
--
ALTER TABLE `hausboot`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `hausinteriors`
--
ALTER TABLE `hausinteriors`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `hddbans`
--
ALTER TABLE `hddbans`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `hotelzimmer`
--
ALTER TABLE `hotelzimmer`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `identifikation`
--
ALTER TABLE `identifikation`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `inactive_ucp`
--
ALTER TABLE `inactive_ucp`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `kennzeichen`
--
ALTER TABLE `kennzeichen`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `koffer`
--
ALTER TABLE `koffer`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `kontakte`
--
ALTER TABLE `kontakte`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `leitern`
--
ALTER TABLE `leitern`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `lohnsystem`
--
ALTER TABLE `lohnsystem`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `marktplatz_categories`
--
ALTER TABLE `marktplatz_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `marktplatz_gebote`
--
ALTER TABLE `marktplatz_gebote`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `marktplatz_images`
--
ALTER TABLE `marktplatz_images`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `marktplatz_inserate`
--
ALTER TABLE `marktplatz_inserate`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `marktschreier`
--
ALTER TABLE `marktschreier`
  ADD UNIQUE KEY `id_2` (`id`),
  ADD KEY `id` (`id`);

--
-- Indizes für die Tabelle `moebelindex`
--
ALTER TABLE `moebelindex`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indizes für die Tabelle `muelltonnen`
--
ALTER TABLE `muelltonnen`
  ADD PRIMARY KEY (`dbid`);

--
-- Indizes für die Tabelle `namechanges`
--
ALTER TABLE `namechanges`
  ADD PRIMARY KEY (`int`),
  ADD UNIQUE KEY `int` (`int`);

--
-- Indizes für die Tabelle `objekttexturen`
--
ALTER TABLE `objekttexturen`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `ostern`
--
ALTER TABLE `ostern`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `osternpos`
--
ALTER TABLE `osternpos`
  ADD UNIQUE KEY `id_2` (`id`),
  ADD KEY `id` (`id`);

--
-- Indizes für die Tabelle `partei`
--
ALTER TABLE `partei`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `polizeiakte`
--
ALTER TABLE `polizeiakte`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `schilder`
--
ALTER TABLE `schilder`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `sirenen`
--
ALTER TABLE `sirenen`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `sklogs`
--
ALTER TABLE `sklogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indizes für die Tabelle `sms`
--
ALTER TABLE `sms`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `spielerobjekte`
--
ALTER TABLE `spielerobjekte`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `spraytags`
--
ALTER TABLE `spraytags`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `texturen`
--
ALTER TABLE `texturen`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `textname` (`textname`),
  ADD UNIQUE KEY `texturename` (`texturename`),
  ADD UNIQUE KEY `texturename_2` (`texturename`,`textname`),
  ADD KEY `id` (`id`);

--
-- Indizes für die Tabelle `ucp_bank_log`
--
ALTER TABLE `ucp_bank_log`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `userakte`
--
ALTER TABLE `userakte`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `userakte2`
--
ALTER TABLE `userakte2`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `versteck`
--
ALTER TABLE `versteck`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `waffenkammer`
--
ALTER TABLE `waffenkammer`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `waffenpreise`
--
ALTER TABLE `waffenpreise`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indizes für die Tabelle `waffenschrank`
--
ALTER TABLE `waffenschrank`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `weaponshand`
--
ALTER TABLE `weaponshand`
  ADD PRIMARY KEY (`Pid`);

--
-- Indizes für die Tabelle `werbetafeln`
--
ALTER TABLE `werbetafeln`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indizes für die Tabelle `wm`
--
ALTER TABLE `wm`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `wohnwagen`
--
ALTER TABLE `wohnwagen`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `zeitung`
--
ALTER TABLE `zeitung`
  ADD PRIMARY KEY (`zid`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `accesindex`
--
ALTER TABLE `accesindex`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT für Tabelle `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `accountsfirmenfahrzeuge`
--
ALTER TABLE `accountsfirmenfahrzeuge`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `achievements`
--
ALTER TABLE `achievements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT für Tabelle `actors`
--
ALTER TABLE `actors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=453;

--
-- AUTO_INCREMENT für Tabelle `adminakte`
--
ALTER TABLE `adminakte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `adminlogs_ucp`
--
ALTER TABLE `adminlogs_ucp`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `adminobjekte`
--
ALTER TABLE `adminobjekte`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `adventskalender`
--
ALTER TABLE `adventskalender`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `antrag`
--
ALTER TABLE `antrag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `asservatenkammer`
--
ALTER TABLE `asservatenkammer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `bancheck`
--
ALTER TABLE `bancheck`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `bans`
--
ALTER TABLE `bans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `beschwerden`
--
ALTER TABLE `beschwerden`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `beschwerden_archiv_27_03_2019`
--
ALTER TABLE `beschwerden_archiv_27_03_2019`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `beschwerde_antworten`
--
ALTER TABLE `beschwerde_antworten`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `beschwerde_user`
--
ALTER TABLE `beschwerde_user`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `beschwerde_user_27_03_2019`
--
ALTER TABLE `beschwerde_user_27_03_2019`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `beschwerde_vorlage`
--
ALTER TABLE `beschwerde_vorlage`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `blitzer`
--
ALTER TABLE `blitzer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `blocked`
--
ALTER TABLE `blocked`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `carsell`
--
ALTER TABLE `carsell`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `cks`
--
ALTER TABLE `cks`
  MODIFY `id` int(111) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `dienstleistung`
--
ALTER TABLE `dienstleistung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `drogenpflanzen`
--
ALTER TABLE `drogenpflanzen`
  MODIFY `pflanze` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `emailaccoutns`
--
ALTER TABLE `emailaccoutns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `emails`
--
ALTER TABLE `emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `fahndung`
--
ALTER TABLE `fahndung`
  MODIFY `fdid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `fahrzeuge`
--
ALTER TABLE `fahrzeuge`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `firma`
--
ALTER TABLE `firma`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `firmenfahrzeuge`
--
ALTER TABLE `firmenfahrzeuge`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `firmenlogs`
--
ALTER TABLE `firmenlogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `firmenranks`
--
ALTER TABLE `firmenranks`
  MODIFY `realid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `fraktionsfahrzeuge`
--
ALTER TABLE `fraktionsfahrzeuge`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `furniture`
--
ALTER TABLE `furniture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `geschenke`
--
ALTER TABLE `geschenke`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `geschenkepos`
--
ALTER TABLE `geschenkepos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `gutscheine`
--
ALTER TABLE `gutscheine`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `hausboot`
--
ALTER TABLE `hausboot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `hddbans`
--
ALTER TABLE `hddbans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `hotelzimmer`
--
ALTER TABLE `hotelzimmer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `identifikation`
--
ALTER TABLE `identifikation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT für Tabelle `inactive_ucp`
--
ALTER TABLE `inactive_ucp`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `kennzeichen`
--
ALTER TABLE `kennzeichen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `koffer`
--
ALTER TABLE `koffer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `kontakte`
--
ALTER TABLE `kontakte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `leitern`
--
ALTER TABLE `leitern`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `marktplatz_categories`
--
ALTER TABLE `marktplatz_categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `marktplatz_gebote`
--
ALTER TABLE `marktplatz_gebote`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `marktplatz_images`
--
ALTER TABLE `marktplatz_images`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `marktplatz_inserate`
--
ALTER TABLE `marktplatz_inserate`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `moebelindex`
--
ALTER TABLE `moebelindex`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1145;

--
-- AUTO_INCREMENT für Tabelle `muelltonnen`
--
ALTER TABLE `muelltonnen`
  MODIFY `dbid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT für Tabelle `namechanges`
--
ALTER TABLE `namechanges`
  MODIFY `int` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `objekttexturen`
--
ALTER TABLE `objekttexturen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `ostern`
--
ALTER TABLE `ostern`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `osternpos`
--
ALTER TABLE `osternpos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `partei`
--
ALTER TABLE `partei`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `polizeiakte`
--
ALTER TABLE `polizeiakte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `schilder`
--
ALTER TABLE `schilder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=632;

--
-- AUTO_INCREMENT für Tabelle `sirenen`
--
ALTER TABLE `sirenen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `sklogs`
--
ALTER TABLE `sklogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT für Tabelle `sms`
--
ALTER TABLE `sms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `spielerobjekte`
--
ALTER TABLE `spielerobjekte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT für Tabelle `spraytags`
--
ALTER TABLE `spraytags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `texturen`
--
ALTER TABLE `texturen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT für Tabelle `ucp_bank_log`
--
ALTER TABLE `ucp_bank_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `userakte`
--
ALTER TABLE `userakte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `userakte2`
--
ALTER TABLE `userakte2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `versteck`
--
ALTER TABLE `versteck`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `waffenschrank`
--
ALTER TABLE `waffenschrank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `wm`
--
ALTER TABLE `wm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `wohnwagen`
--
ALTER TABLE `wohnwagen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
