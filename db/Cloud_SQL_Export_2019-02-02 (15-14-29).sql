-- MySQL dump 10.13  Distrib 5.7.14, for Linux (x86_64)
--
-- Host: localhost    Database: id8503910_pseudosubs
-- ------------------------------------------------------
-- Server version	5.7.14-google

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `id8503910_pseudosubs`
--

-- CREATE DATABASE /*!32312 IF NOT EXISTS*/ `id8503910_pseudosubs` /*!40100 DEFAULT CHARACTER SET utf8 */;

-- USE `id8503910_pseudosubs`;

--
-- Table structure for table `ED`
--

DROP TABLE IF EXISTS `ED`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ED` (
  `ED_ID` int(11) NOT NULL AUTO_INCREMENT,
  `anime_ID` int(11) DEFAULT NULL,
  `num_ED` int(11) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `artista` varchar(100) DEFAULT NULL,
  `eps` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ED_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ED`
--

LOCK TABLES `ED` WRITE;
/*!40000 ALTER TABLE `ED` DISABLE KEYS */;
INSERT INTO `ED` VALUES 
(1,29,1,'Mimei no Kimi to Hakumei no Mahou','Yanagi Nagi','1 al 13'),
(2,28,1,'Gin no Kisei','Soraru','1 al 12'),
(3,27,1,'Silent Solitude','OxT','1 al 12'),
(4,26,1,'Prayer X','King Gnu','1 al 13'),
(5,26,2,'RED','Survive Said The Prophet','14-24'),
(6,25,1,'LAST GAME','Zwei','2 al 7 y 9 al 13'),
(7,25,2,'Lyra','Zwei','8 y 18'),
(8,25,3,'World Line','Asami Imai','14 al 17 y 19 al 20'),
(9,25,4,'GATE OF STEINER','Sasaki Eri','23'),
(10,24,1,'Zenzen Tomodachi','Haruka Yamazaki','1 al 12'),
(11,23,1,'Kimi no Tonari','halca','1 al 8 y 10 al 11'),
(12,23,2,'Ashita mo Mata','halca','9'),
(13,22,1,'Atria','FoxTails','14 al 24'),
(14,21,1,'Michishirube','Minori Chihara','2 al 8'),
(15,21,2,'Believe in...','Aira Yuuki','9'),
(16,20,1,'Ai wo Oshiete Kureta Kimi e','Qaijff','1 al 11'),
(17,19,1,'Step Up LOVE','DAOKO x Yasuyuki Okamura','2 al 12'),
(18,18,1,'behind','Mio Natsume (Karin Isobe), Hatsuki Morikawa (Yuna Yoshino), Ena Komiya (Lynn)','2 al 12'),
(19,17,1,'Kyokyo Jitsujitsu','nano.RIPE','1 al 12'),
(20,16,1,'LAYon-theLINE','D-selections','1 al 8 y 10 al 12'),
(21,16,2,'Koi no Russian Roulette','Yumemi Yumemite (Yuu Serizawa)','9'),
(22,15,1,'gravityWall','SawanoHiroyuki[nZk]:Tielle','1 y 22'),
(23,15,2,'NEWLOOK','Mashiro Ayano','2 al 12'),
(24,15,3,'world Étude','Aki Toyosaki','13'),
(25,15,4,'Rubikon','Sangatsu no Phantasia','14 al 21'),
(26,14,1,'FLIP FLAP FLIP FLAP','TO-MAS feat.Chima','1 al 13');
/*!40000 ALTER TABLE `ED` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OP`
--

DROP TABLE IF EXISTS `OP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OP` (
  `OP_ID` int(11) NOT NULL AUTO_INCREMENT,
  `anime_ID` int(11) DEFAULT NULL,
  `num_OP` int(11) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `artista` varchar(100) DEFAULT NULL,
  `eps` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`OP_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OP`
--

LOCK TABLES `OP` WRITE;
/*!40000 ALTER TABLE `OP` DISABLE KEYS */;
INSERT INTO `OP` VALUES (1,25,1,'Fatima','Kanako Itou','2 al 14'),
(2,29,1,'17sai','Haruka to Miyuki','1 al 13'),
(3,28,1,'Rightfully','Mili','2 al 12'),
(4,27,1,'VORACITY','MYTH & ROID','1 al 13'),
(5,26,1,'found & lost','Survive Said The Prophet','14 al 24'),
(6,26,2,'FREEDOM','BLUE ENCOUNT','14 al 24'),
(7,24,1,'Changing point','i☆Ris','2 al 12'),
(8,23,1,'Fiction','Sumika','1 al 11'),
(9,22,1,'Symbol','Luck Life','1 al 12'),
(10,21,1,'Sincerely','TRUE','2 al 12'),
(11,20,1,'My Hero','MAN WITH A MISSION','1 al 11'),
(12,19,1,'fake town baby','UNISON SQUARE GARDEN','1 al 12'),
(13,18,1,'over and over','Nagi Yanagi','2 al 12'),
(14,17,1,'BRAVER','ZAQ','1 al 12'),
(15,16,1,'Deal with the devil','Tia','1 al 12'),
(16,15,1,'gravityWall','SawanoHiroyuki[nZk]:Tielle','2 al 13'),
(17,15,2,'sh0ut','SawanoHiroyuki[nZk]:Tielle','14 al 22'),
(18,14,1,'Serendipity','ZAQ','1 al 13');
/*!40000 ALTER TABLE `OP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `animes`
--

DROP TABLE IF EXISTS `animes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `animes` (
  `anime_ID` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) DEFAULT NULL,
  `link` varchar(50) DEFAULT NULL,
  `imgUrl` varchar(100) DEFAULT NULL,
  `descripcion` text,
  `estudio` varchar(50) DEFAULT NULL,
  `eps` int(11) DEFAULT NULL,
  `alAire` varchar(100) DEFAULT NULL,
  `temporada` varchar(25) DEFAULT NULL,
  `anio` varchar(4) DEFAULT NULL,
  `fuente` varchar(20) DEFAULT NULL,
  `generos` varchar(100) DEFAULT NULL,
  `color` varchar(20) DEFAULT '#23BF87',
  PRIMARY KEY (`anime_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animes`
--

LOCK TABLES `animes` WRITE;
/*!40000 ALTER TABLE `animes` DISABLE KEYS */;
INSERT INTO `animes` VALUES (14,'Flip Flappers','/Anime/2016/Otono/Flip-Flappers','https://myanimelist.cdn-dena.com/images/anime/4/82292.jpg','Cocona, que lleva una vida normal, se encuentra un día con Papika, y juntas van a Pure Illusion, a conseguir \'fragmentos\', que se dice pueden conceder deseos.','Studio 3Hz',13,'6 de Octubre al 29 de Diciembre','Otono','2016','Original','Ciencia ficcion, Aventura, Comedia, Magia','#E62F68'),
(15,'Re:Creators','/Anime/2017/Verano/Re:Creators','https://myanimelist.cdn-dena.com/images/anime/11/85469.jpg','Los humanos han creado muchas historias. Felicidad, tristeza, ira, emociones profundas. Las historias sacuden nuestro corazón y nos fascinan. Sin embargo, estos son sólo los pensamientos de los espectadores. Pero ¿y si los personajes de la historia tienen \'intenciones\'?','TROYCA',22,'8 de Abril al 26 de Septiembre','Verano','2017','Original','Accion, Ciencia ficcion, Fantasia','#8C00FD'),
(16,'Kakegurui','/Anime/2017/Verano/Kakegurui','https://myanimelist.cdn-dena.com/images/anime/3/86578.jpg','Academia Privada Hyakkaou. Una institución para los privilegiados con un currículo muy peculiar. Veras, cuando eres de los hijos e hijas de los más ricos de los ricos, no es la destreza atlética o la inteligencia lo que te mantiene por delante. Es leer a tu oponente, el arte del trato. ¿Qué mejor manera de afilar esas habilidades que con un riguroso plan de estudios de juegos de azar? ','MAPPA',12,'1 de Julio al 23 de Septiembre','Verano','2017','Manga','Drama, Juegos, Misterio, Psicologico, Escolar, Shonen','#AB272A'),
(17,'Shokugeki no Soma: San no Sara','/Anime/2017/Otono/Shokugeki-no-Soma-3','https://myanimelist.cdn-dena.com/images/anime/4/86603.jpg','Tercera temporada de Shokugeki no Soma','J.C. Staff',12,'4 de Octubre al 20 de Diciembre','Otono','2017','Manga','Ecchi, Escolar, Shonen','#B95F4A'),
(18,'Just Because!','/Anime/2017/Otono/Just-Because','https://myanimelist.cdn-dena.com/images/anime/3/88185.jpg','Al final del segundo semestre del tercer año de preparatoria, cuatro estudiantes están listos para graduarse y pueden sentir el final de su vida en la preparatoria. Pero eso cambia un poco con la llegada de un estudiante transferido. ','Pine Jam',12,'5 de Octubre al 28 de Diciembre','Otono','2017','Original','Slice of Life, Drama, Romance, Escolar','#593844'),
(19,'Kekkai Sensen and Beyond','/Anime/2017/Otono/Kekkai-Sensen-Beyond','https://myanimelist.cdn-dena.com/images/anime/9/88281.jpg','Segunda temporada de Kekkai Sensen.','Bones',12,'8 de Octubre al 24 de Diciembre','Otono','2017','Manga','Accion, Comedia, Fantasia, Shounen, Super poderes, Sobrenatural','#aa0d0b'),
(20,'Inuyashiki','/Anime/2017/Otono/Inuyashiki','https://myanimelist.cdn-dena.com/images/anime/3/88470.jpg','Inuyashiki Ichirou está de mala suerte. Justo cuando parece que las cosas no pueden empeorar, una luz cegadora en el cielo nocturno golpea la tierra donde se encuentra Ichirou. ','MAPPA',11,'13 de Octubre al 22 de Diciembre','Otono','2017','Manga','Accion, Drama, Psicologico, Ciencia ficcion, Seinen','#23BF87'),
(21,'Violet Evergarden','/Anime/2018/Invierno/Violet-Evergarden','https://myanimelist.cdn-dena.com/images/anime/1795/95088.jpg','Hay palabras que Violet escuchó en el campo de batalla, las cuales no puede olvidar. Esas palabras le fueron dadas por alguien que conocía, más que nadie. Ella aún no conoce su significado. ','Kyoto Animation',13,'11 de Enero a 5 de Abril','Invierno','2018','Novela ligera','Fantasia, Drama, Slice of Life','#23bf87'),
(22,'Shokugeki no Soma: San no Sara - Toutsuki Ressha-hen','/Anime/2018/Primavera/Shokugeki-no-Soma-3-2','https://myanimelist.cdn-dena.com/images/anime/1604/93531.jpg','El segundo platillo de Shokugeki no Soma: San no Sara','J.C. Staff',12,'9 de Abril a  25 de Junio','Primavera','2018','Manga','Ecchi, Escolar, Shonen','#413EC9'),
(23,'Wotaku ni Koi wa Muzukashii','/Anime/2018/Primavera/WotaKoi','https://myanimelist.cdn-dena.com/images/anime/1864/93518.jpg','Después de descubrir que trabajan en la misma compañía, un otaku enloquecido y un fujoshi se reúnen por primera vez desde la secundaria. Después de algunas sesiones de bebida después del trabajo comienzan a salir, pero ¿será una relación perfecta para los dos? ','A-1 Pictures',11,'13 de Abril a 22 de Junio','Primavera','2018','Manga web','Comedia, Romance','#EB5089'),
(24,'Mahou Shoujo Site','/Anime/2018/Primavera/Mahou-Shoujo-Site','https://myanimelist.cdn-dena.com/images/anime/1720/95064.jpg','Aya Asagiri es una chica de secundaria que tiene problemas tanto en la escuela con el acoso escolar como en el hogar debido al abuso físico de su hermano. Al navegar en línea, aparece un sitio web en su computadora con una persona de aspecto espeluznante. Esta persona parece tener piedad de ella, y anuncia que le ha otorgado poderes mágicos a Asagiri. ','production doA',12,'7 de Abril a 23 de Junio','Primavera','2018','Manga','Drama, Horror, Psicologico, Supernatural','black'),
(25,'Steins;Gate 0','/Anime/2018/Primavera/Steins;Gate-0','https://myanimelist.cdn-dena.com/images/anime/1768/93520.jpg','La oscura historia no contada de Steins;Gate muestra al excéntrico científico loco Okabe, que lucha por recuperarse de un intento fallido de rescatar a Kurisu. Decide darse por vencido y abandona a su animado álter ego científico, en la búsqueda de olvidar el pasado. Cuando todo parece ser normal, aparentemente recuerda el pasado al conocer a un conocido de Kurisu... ','White Fox',23,'12 de Abril a  27 de Septiembre','Primavera','2018','Novela Visual','Ciencia ficcion, Thriller','rgb(187, 32, 52)'),
(26,'Banana Fish','/Anime/2018/Verano/Banana-Fish','https://myanimelist.cdn-dena.com/images/anime/1190/93472.jpg','La naturaleza hizo a Ash Lynx hermoso; la crianza lo convirtió en un asesino despiadado y frío. Un fugitivo lo crió como el heredero adoptivo y el juguete sexual de \'Papa\' Dino Golzine, Ash, ahora a la edad rebelde de diecisiete años, abandona el reino sostenido por el diablo que lo crió.','MAPPA',24,'6 de Julio a  21 de Diciembre','Verano','2018','Matgo','Accion, Aventura, Drama','#ffc107'),
(27,'Overlord 3','/Anime/2018/Verano/Overlord-3','','Tercera temporada de Overlord.','Madhouse',13,'10 de Julio a 2 de Octubre','Verano','2018','Novela Ligera','Accion, Fantasia, Magia, Sobrenatural','red'),
(28,'Goblin Slayer','/Anime/2018/Otono/Goblin-Slayer','https://myanimelist.cdn-dena.com/images/anime/1949/93415l.jpg','Una joven sacerdotisa formó su primer grupo de aventureros, pero casi inmediatamente se encuentran angustiados. Es el Asesino de Duendes que viene a su rescate, un hombre que dedicó su vida al exterminio de todos los duendes, por cualquier medio necesario. Y cuando los rumores de sus hazañas comienzan a circular, no hay forma de saber quién podría venir a continuación...','White Fox',12,'7 de octubre a ?','Otono','2018','Novela Ligera','Accion, Aventura, Fantasia','#a3be6f'),
(29,'Irozuku Sekai no Ashita Kara','/Anime/2018/Otono/IrozuKai','https://myanimelist.cdn-dena.com/images/anime/1424/93855.jpg','Ambientada en la ciudad de Nagasaki, la historia tiene lugar en un mundo en el que una cantidad minúscula de magia permanece en la vida cotidiana. Hitomi Tsukishiro es una descendiente de 17 años de una familia de brujas que creció con emociones vivas, ya que perdió su sentido del color a una edad muy temprana. Sintiéndose mal por el futuro de su nieta, Kohaku, una gran bruja, envía a Hitomi al pasado, el año 2018. Mediante intercambios con su abuela de 17 años y los miembros de su club, la historia sigue el crecimiento de Hitomi como persona.','P.A. Works',13,'06 de Octubre a ?','Otono','2018','Original','Drama, Magia, Romance','#2f7090'),
(30,'Yakusoku no Neverland','/Anime/Yakusoku-no-Neverland','/img/a/yakusoku-no-neverland.webp','En Grace Field House, la vida no podría ser mejor para los huérfanos. Aunque no tienen padres, junto con los otros niños y una \"Mama\" amable que los cuida, forman una gran \n familia feliz. Sólo hay una regla que deben obedecer: no abandonar el orfanato.','CloverWorks',0,'11 de Enero 2019 a ?','Invierno','2019','Manga','Sci-Fi, Mysterio, Horror, Shounen','#AA833E'),
(31,'Kakegurui xx','/Anime/Kakegurui-xx','https://myanimelist.cdn-dena.com/images/anime/1151/93653.jpg','Segunda temporada de Kakegurui','MAPPA',0,'9 de Enero 2019 a ?','Invierno','2019','Manga','Drama, Juegos, Mysterio, Psychologico, Escolar, Shounen','#624aac');
/*!40000 ALTER TABLE `animes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enPagPrin`
--

DROP TABLE IF EXISTS `enPagPrin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enPagPrin` (
  `pagPrin_ID` int(11) NOT NULL AUTO_INCREMENT,
  `posicion` int(11) DEFAULT NULL,
  `anime_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`pagPrin_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enPagPrin`
--

LOCK TABLES `enPagPrin` WRITE;
/*!40000 ALTER TABLE `enPagPrin` DISABLE KEYS */;
/*!40000 ALTER TABLE `enPagPrin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eps`
--

DROP TABLE IF EXISTS `eps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eps` (
  `ep_ID` int(11) NOT NULL AUTO_INCREMENT,
  `opcion_ID` int(11) DEFAULT NULL,
  `num_ep` int(11) DEFAULT NULL,
  `visitas` int(11) DEFAULT '0',
  `link` text,
  `peso` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ep_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=367 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eps`
--

LOCK TABLES `eps` WRITE;
/*!40000 ALTER TABLE `eps` DISABLE KEYS */;
INSERT INTO `eps` VALUES (1,1,1,3,'https://unsaedupe-my.sharepoint.com/personal/faraoz_unsa_edu_pe/_layouts/15/onedrive.aspx?id=%2Fpersonal%2Ffaraoz_unsa_edu_pe%2FDocuments%2FPseudoSubs%2F2018_Q4%2FIrodzuku%2F1080p%4060FPS-Irodzuku_Sekai_no_Ashita_Kara%2F01%20%5BPseudoSubs%5D%20Irozuku%20Sekai%20no%20Ashita%20kara%20%281080%4060fps%29%2Emkv&parent=%2Fpersonal%2Ffaraoz_unsa_edu_pe%2FDocuments%2FPseudoSubs%2F2018_Q4%2FIrodzuku%2F1080p%4060FPS-Irodzuku_Sekai_no_Ashita_Kara&slrid=455bab9e-40f0-7000-5c4a-fd7e7239bd7c','500 MB'),
(3,1,2,8,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EbaVSNqy-4dNuqvgH4zVP1QBY3v7B0536a26H4nhNegupw?e=dGfUwh','274 MB'),
(4,1,3,5,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/ES3lCzTa6qdOtlbGNfhmfrYBOUnbvsyQyW9Dav_LamzVew?e=vfAipJ','358 MB'),
(5,1,4,3,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/ERCl2g3z_JhOlNKaaCQQUi0BHpAYTF7Q9ocPlqbS3lgYjA?e=5UIyjj','275 MB'),
(6,1,5,3,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EXcNxv2fLT1PrOXitPyjQMIBtOq-46Wj1M-5xpf7bls2Mg?e=iYVijF','291 MB'),
(7,1,6,4,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EQX2Q-o_sc5BjItKRs7Et7UBlYtU0G5Xmhqy_0k2_BNWRQ?e=ZSxqfr','460 MB'),
(8,1,7,5,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/ERKHkci_jUtLo2-aSROqPnkBAlQ0heMBNPSjOvsk2t7emQ?e=fhaOCB','290 MB'),
(9,1,8,2,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EbAyvWbc5DhJkhdguMn8HxQBDnUApHUlJcZmXLy57M-bGg?e=4EedXy','321 MB'),
(10,1,9,1,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EQi9gnMfXkpPgBnSZcelHXQBmv-iNneIaCRTz6NFdSAe0A?e=43CevI','285 MB'),
(11,1,10,1,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EVupEMhc7RFJmtOPM56GMnQBnlhUXTjRvqbZ_6Y4jszHzg?e=pz9Pmd','364 MB'),
(12,1,11,2,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EclNibCUQvFAhW0QG67SjCoB-jYGP7xYHvy4dEk1JqZAqw?e=isBDAz','272 MB'),
(25,2,13,4,'http://bit.ly/2GK9KNe','330 MB'),
(26,2,14,4,'http://bit.ly/2xaVKYe','286 MB'),
(27,2,15,8,'http://bit.ly/2s5RzYU','285 MB'),
(28,2,16,5,'http://bit.ly/2koeavx','258 MB'),
(29,2,17,9,'http://bit.ly/2INTmIh','307 MB'),
(30,2,18,4,'https://unsaedupe-my.sharepoint.com/:u:/g/personal/faraoz_unsa_edu_pe/EX0Ke7qeZyJIqfUf4ZVtl6kBcG246xv2YujxRuHP1C1Adg?e=8CttHc','284 MB'),
(31,2,19,3,'https://unsaedupe-my.sharepoint.com/:u:/g/personal/faraoz_unsa_edu_pe/EQp_FxjXtMFGoPV9Jb_cOhoBihAzOxpOg_97MqTOvFi1xw?e=cOa25B','278 MB'),
(32,2,20,2,'https://unsaedupe-my.sharepoint.com/:u:/g/personal/faraoz_unsa_edu_pe/Ea4hlEMuWFNMoJgIvw3RkhMBIHIxdDFRKxs2IoraJzYS9A?e=agYC9k','260 MB'),
(33,2,21,6,'https://unsaedupe-my.sharepoint.com/:u:/g/personal/faraoz_unsa_edu_pe/EXlyDUGzDgRLty7L90aOEcoBckez4vaZpNHpKG-VrfHxPw?e=dhgHQq','256 MB'),
(34,2,22,2,'https://unsaedupe-my.sharepoint.com/:u:/g/personal/faraoz_unsa_edu_pe/Ea-ewS-6SrVPvYHDTeFCDr4BJuPZL29Ne1oJJdWv2_M-qg?e=cMPeU2','255 MB'),
(35,2,23,3,'https://unsaedupe-my.sharepoint.com/:u:/g/personal/faraoz_unsa_edu_pe/Ea_Ym8T5LcxJszomScYiCpsBQTcEGKS96jj-p2BQSOd_Pg?e=wBAQla','265 MB'),
(36,2,24,7,'https://unsaedupe-my.sharepoint.com/:u:/g/personal/faraoz_unsa_edu_pe/EUGxH3oj4d5AoyIEs5vipx4B7QTAfljiDthXKsW9kA94hA?e=WHk3IA','292 MB'),
(37,3,13,10,'http://bit.ly/2GN6ErO','559 MB'),
(38,3,14,10,'http://bit.ly/2xd1il7','556 MB'),
(39,3,15,9,'http://bit.ly/2kpC89y','555 MB'),
(40,3,16,5,'http://bit.ly/2IJBhzj','556 MB'),
(41,3,17,4,'http://bit.ly/2sfECuC','555 MB'),
(42,3,18,4,'https://unsaedupe-my.sharepoint.com/:u:/g/personal/faraoz_unsa_edu_pe/ETqwLdsjjepAptPXqt162NgBLSO3rJXgPxz2pmuo8d0bSw?e=p7SysW','555 MB'),
(43,3,19,4,'https://unsaedupe-my.sharepoint.com/:u:/g/personal/faraoz_unsa_edu_pe/EW-8zI4C1qxCruoT5I2im3wBG-NqnbLLI_9Pnff2t8o3vg?e=fhu5Rq','555 MB'),
(44,3,20,2,'https://unsaedupe-my.sharepoint.com/:u:/g/personal/faraoz_unsa_edu_pe/EfuAx6N4t_BMoDL_119ugWQB-OLmP1dBwqN0W45ipGN2bg?e=kIFSlP','554 MB'),
(45,3,21,8,'https://unsaedupe-my.sharepoint.com/:u:/g/personal/faraoz_unsa_edu_pe/Eagy0riqaxlDot5wMOlAmmoBM_pE14kzMCTD7e-0j_gd5Q?e=SBx4Dk','555 MB'),
(46,3,22,6,'https://unsaedupe-my.sharepoint.com/:u:/g/personal/faraoz_unsa_edu_pe/EXpJxEGEDBFKkK-ynAYHSS4B16CkUBnZkv5FWSpIGhCFvA?e=ACc9ud','555 MB'),
(47,3,23,3,'https://unsaedupe-my.sharepoint.com/:u:/g/personal/faraoz_unsa_edu_pe/ETFHaYcrOf9KpQDig69sqAMBebJ9s7xS4Tof0RTxqeMk-g?e=IPEWbg','977 MB'),
(48,3,24,3,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EREzzQgJLG1GmS1-R0FMEM4BK0ztfRg-LJpl2XTPcasqiQ?e=SyoK9o','990 MB'),
(49,4,1,6,'http://bit.ly/2IMECt0','322 MB'),
(50,4,2,7,'http://bit.ly/2qYvzPc','172 MB'),
(51,4,3,7,'http://bit.ly/2HLf1o4','147 MB'),
(52,4,4,7,'http://bit.ly/2JKV25A','175 MB'),
(53,4,5,6,'http://bit.ly/2wpdLlu','184 MB'),
(54,4,6,8,'http://bit.ly/2Ky1EV5','187 MB'),
(55,4,7,3,'http://bit.ly/2GRgELF','174 MB'),
(56,4,8,10,'https://unsaedupe-my.sharepoint.com/:u:/g/personal/faraoz_unsa_edu_pe/EbGfM9z8jn5KvlEn2r0K-EcBaHP3GvgKpc7cWaX_bXgV-g?e=SfJ9lM','157 MB'),
(57,4,9,10,'https://unsaedupe-my.sharepoint.com/:u:/g/personal/faraoz_unsa_edu_pe/EfN1xeMQp6VJuu9ffVwvqQEBIWnKpevXipApocL6rvMJ9w?e=ZzADxt','176 MB'),
(58,4,10,6,'https://unsaedupe-my.sharepoint.com/:u:/g/personal/faraoz_unsa_edu_pe/EdhAdV4HqphOgHxe62xITugB2rC0yiZAhdcoXqdgkp2xUQ?e=kqhVGF','183 MB'),
(59,4,11,2,'https://unsaedupe-my.sharepoint.com/:u:/g/personal/faraoz_unsa_edu_pe/EX0lOtArolFAvu7X-w8bYIMBCdNHjQZzztL4_dx5J9O-XA?e=Nge0bX','184 MB'),
(60,4,12,9,'https://unsaedupe-my.sharepoint.com/:u:/g/personal/faraoz_unsa_edu_pe/ERvuR5ZjQjZHqTjNAchZf0YBduIBxEcLx7hERVO4QBzcJw?e=tcPnd4','159 MB'),
(61,4,13,9,'https://unsaedupe-my.sharepoint.com/:u:/g/personal/faraoz_unsa_edu_pe/EbfY0S0qnCJOkEjkUuw7bLkBObvAQi1utky1Lim0u8zB9Q?e=y8dMfy','179 MB'),
(62,4,14,7,'https://unsaedupe-my.sharepoint.com/:u:/g/personal/faraoz_unsa_edu_pe/EceVcu6J3_VOlrTQKEPyFdkBKAkROI-zpQPfqMU_XhDeyw?e=mqRueQ','164 MB'),
(63,4,15,9,'https://unsaedupe-my.sharepoint.com/:u:/g/personal/faraoz_unsa_edu_pe/EaZUwede0xtNiYVJsff1XZ4Bk-PRtsBhsnrh2t_Ho3KFKg?e=pCPeXw','170 MB'),
(64,4,16,2,'https://unsaedupe-my.sharepoint.com/:u:/g/personal/faraoz_unsa_edu_pe/EQYMs5BPBHVOqYXqK9a9bcgBnvEk3QZlK9TWoar8diJ67g?e=BGi6xj','164 MB'),
(65,4,17,4,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EQrTgaVAQkBGo8lPaDFopcYBzd1P_oZg7753UzSrYkm8cA?e=eXfSTi','159 MB'),
(66,4,18,10,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/Efhn8ypEi4hEisKiN-TfkYEBhm4g19F4M6yPgOjW3944TQ?e=tQti69','165 MB'),
(67,4,19,10,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/ESkmQbiQWwRCkiLIiNESEosBE5J0ekfvo1qRHjlDohhfRQ?e=882KO0','175 MB'),
(68,4,20,8,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EQFmA3itV11KqW08iUbnbssBxn9vFtH43-nnm1zf1jdCtw?e=rbliKb','142 MB'),
(69,4,21,9,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EfqDG_LBO3BHi1CSP-jvXV4BUCYZe3CvUYTrCgnxr2N3Hw?e=xNAzUQ','171 MB'),
(70,4,22,10,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/ERqrfrHjCSRLtJ6VNd_EKFgBQzGDHXHJhoc0C06vMcCkLw?e=zM3Z8H','153 MB'),
(71,4,23,9,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EdzWH6WkSX1Mlis5l2Dthx8BDJD3v71-8yo_xAf-wU2PYA?e=xVshPe','221 MB'),
(72,5,1,3,'http://bit.ly/2GWCtOU','395 MB'),
(73,5,2,5,'http://bit.ly/2wddodu','466 MB'),
(74,5,3,9,'http://bit.ly/2HXNPiI','442 MB'),
(75,5,4,7,'http://bit.ly/2KrOHx7','361 MB'),
(76,5,5,9,'http://bit.ly/2G2XDFw','375 MB'),
(77,5,6,10,'http://bit.ly/2IwNqnb','380 MB'),
(78,5,7,4,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EUcXhl-BpHpDqIzwH7HlugAB807-hXPo-RDSAa1ZmqAqKg?e=bS7Uup','357 MB'),
(79,5,8,7,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EUCKrVmcG9ZMm0Az_FGFufEBFfxG2cNa2xEZoFX2bTRvNw?e=oCuyAE','322 MB'),
(80,5,9,8,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EQASs7OxGKBMjrFbVr_dHiYBclJtUcFKdKojgmU3xon3wQ?e=Jfx0Oz','361 MB'),
(81,5,10,9,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/ETOYpCOBCwFMk3Y8A5YaaRsBpkCCFoH6NzfZGs4BkLaAOQ?e=q1T7SV','371 MB'),
(82,5,11,3,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/ESIzcSXIf71MpCiHH4pYD20BnkZeHZQ1uXesQb5JfYZ1ZQ?e=rHY0eK','378 MB'),
(83,5,12,7,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EUPAcg_q9elBqZ4X1v1w8GkBNnk9uVd1iZTvElKz3kSoow?e=s8Vq4Y','325 MB'),
(84,5,13,2,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/Efvr46kCBz5KoRv2IfY5DO8BlKiWnaUm0xOmxjjKlXkQpw?e=FsR1At','367 MB'),
(85,5,14,10,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EZx7tzte4gpLqoXSm_kwxYoBlqKb0FMHlWALSrO44RcKAA?e=d94diy','339 MB'),
(86,5,15,8,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EX7YM9Z3o2BDqq7VDcGH_EUBA5LCZc6SPodJ017s0i9Q-w?e=itVVha','274 MB'),
(87,5,16,10,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EZbn26qqytNAsbR66yY1XCUBbXiji4lRz5WspA8HOVur1w?e=oIXJgS','267 MB'),
(88,5,17,10,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EUqdfZsK8M5An_9xGE5UOmUBjUtKFimZQAfP56CUoH5Cwg?e=pMYdyx','293 MB'),
(89,5,18,6,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EU7ZzYVjn31BnmoHynQd08wBf1DD1EvygFkiCLY--CR0gg?e=Cg9j9f','302 MB'),
(90,5,19,8,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EZjJVVlM2hNJnnPfTBkZ-pUB1byRl6wALkcfgBg6QE5K2w?e=iyhWrD','284 MB'),
(91,5,20,9,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EYq_YlxIgYNKiC2ITwIBUDcBbJcm3pDrglTpQvXbtxytZg?e=7Kiyno','299 MB'),
(92,5,21,9,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/Ed97khMrf_1AoYr39xlEcscB8k2hZh4CYgHNAvn1uizu8g?e=JZZHai','318 MB'),
(93,5,22,2,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EamF213_IbRInl6uRVtes1gBwJhS2j1bcxeOLvdxJiIFyQ?e=FNzyOi','297 MB'),
(94,5,23,3,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EbvRox1_UcRGl1eRi4FUXnoBVrfLRhptxY-zVfi18H5eUA?e=ntu72f','374 MB'),
(95,6,1,5,'http://bit.ly/2EoaS2N','272 MB'),
(96,6,2,9,'http://bit.ly/2GVBTRi','309 MB'),
(97,6,3,7,'http://bit.ly/2HWzkMj','165 MB'),
(98,6,4,10,'http://bit.ly/2HVpKMa','218 MB'),
(99,6,5,3,'http://bit.ly/2juVbir','241 MB'),
(100,6,7,7,'http://bit.ly/2IsToJC','203 MB'),
(101,6,8,9,'https://unsaedupe-my.sharepoint.com/:u:/g/personal/faraoz_unsa_edu_pe/EcCKBFEAYthHia6brER-J3oBm2BRMPV7cXyyiNgHT_z0RQ?e=7OAQPM','216 MB'),
(102,6,9,8,'https://mega.nz/#!80RQxSSQ!90lucs7Grf9wphDZHtI2C_OfUyH4-Klgt32FPz8t8eE','201 MB'),
(103,6,10,4,'https://mega.nz/#!t1wFTChB!__pTGpfmIblEIzGf4ir24MHYcB_KITw4in0e13BgaSc','405 MB'),
(104,6,11,10,'https://unsaedupe-my.sharepoint.com/:u:/g/personal/faraoz_unsa_edu_pe/ER7GD0MPVcFIj3VJgJmV70IBuQi7FnrA_18Q5rVG1hGypg?e=mfdvcs','210 MB'),
(105,6,12,10,'https://unsaedupe-my.sharepoint.com/:u:/g/personal/faraoz_unsa_edu_pe/EfPdAIgWakNGviXr_sp0ELUBteQG_Wa-nVYl0Fp1gVa9dA?e=XHrxSd','185 MB'),
(106,6,6,2,'http://bit.ly/2I8KVLE','462 MB'),
(107,7,1,9,'http://bit.ly/2q9SmXM','433 MB'),
(108,7,2,6,'http://bit.ly/2Hv9LB1','356 MB'),
(109,7,3,6,'http://bit.ly/2qVpbrT','319 MB'),
(110,7,4,5,'http://bit.ly/2r3Mn6w','440 MB'),
(111,7,5,2,'http://bit.ly/2Ky1BcZ','488 MB'),
(112,7,6,9,'http://bit.ly/2KiDiyv','367 MB'),
(113,7,7,9,'http://bit.ly/2IRTNVb','428 MB'),
(114,7,8,3,'https://unsaedupe-my.sharepoint.com/:u:/g/personal/faraoz_unsa_edu_pe/EQy1R-8NUKhOlQwo3JI4oKIB2fKlUnA8YWW65Rr6XUh1XQ?e=4Hiz5W','448 MB'),
(115,7,9,5,'https://unsaedupe-my.sharepoint.com/:u:/g/personal/faraoz_unsa_edu_pe/ERqs1cOKT69LuJ_SggmM37UBFdwMSgu8xlSIRUNDZ9v17A?e=mAHdFR','206 MB'),
(116,7,10,8,'https://unsaedupe-my.sharepoint.com/:u:/g/personal/faraoz_unsa_edu_pe/Edvtjz7w8YxAqWPMJxuhfGcBN-dBPkNI4Y9t67e4E_0_vA?e=hEPkdS','405 MB'),
(117,7,11,2,'https://unsaedupe-my.sharepoint.com/:u:/g/personal/faraoz_unsa_edu_pe/Ef9fgBIpxhJPtNrXJfZVZJMBUaA1UIToBGBDMrwCECXYSQ?e=Kdinmc','624 MB'),
(118,7,12,7,'https://unsaedupe-my.sharepoint.com/:u:/g/personal/faraoz_unsa_edu_pe/EWcUS-I2941HlGobIeQ9tE8BS4dW9fTY7J7SugU5gjptlg?e=zytYOf','595 MB'),
(119,8,1,3,'http://bit.ly/2v9J3Mi','193 MB'),
(120,8,2,10,'http://bit.ly/2HMrhnJ','134 MB'),
(121,8,3,3,'http://bit.ly/2GtKztj','183 MB'),
(122,8,4,7,'https://unsaedupe-my.sharepoint.com/:u:/g/personal/faraoz_unsa_edu_pe/ESg94K5YyV9KnKVxqHv4TG8BGvfF28zh8Jy0AYD1Wt8PFg?e=Zd7xDm','185 MB'),
(123,8,5,6,'http://bit.ly/2rENU4e','149 MB'),
(124,8,6,3,'https://unsaedupe-my.sharepoint.com/:u:/g/personal/faraoz_unsa_edu_pe/ESyZ5kIFk6pMn11t9gyObVoBe-o5aomg95Ie7txV-bicPw?e=LWo0oW','141 MB'),
(125,8,7,4,'https://unsaedupe-my.sharepoint.com/:u:/g/personal/faraoz_unsa_edu_pe/EfPFrRsBJqlKib54vsqWntwBVCYhfrahy2zSzPFr_VprTA?e=aGG8Iz','185 MB'),
(126,8,8,8,'https://unsaedupe-my.sharepoint.com/:u:/g/personal/faraoz_unsa_edu_pe/EWE0z08Ozo1Dnc9AAJCgQqwBegDqojjaYuHRpxWQweoAEA?e=63LaLV','149 MB'),
(127,8,9,7,'https://unsaedupe-my.sharepoint.com/:u:/g/personal/faraoz_unsa_edu_pe/EdyKksOsVL1EqquM5cIndB4BV0cJ-LlpfgChGFxETAA_xw?e=5bQMXe','178 MB'),
(128,8,10,7,'https://unsaedupe-my.sharepoint.com/:u:/g/personal/faraoz_unsa_edu_pe/EVf0OaTBMBRMtwIwiV2JBToBYEOqXOYLKa65wseZIOPFEw?e=K6Ws7T','172 MB'),
(129,8,11,3,'https://unsaedupe-my.sharepoint.com/:u:/g/personal/faraoz_unsa_edu_pe/EZlUPbOIijFDiCom1nXR-4YBC7D7HjiHYG8BnrD8snkigQ?e=QOLRSe','154 MB'),
(130,9,1,9,'http://bit.ly/2EHWdQp','364 MB'),
(131,9,2,5,'http://bit.ly/2r3a3If','231 MB'),
(132,9,3,10,'http://bit.ly/2IRtTRz','516 MB'),
(133,9,4,7,'https://unsaedupe-my.sharepoint.com/:u:/g/personal/faraoz_unsa_edu_pe/ERRJBJVcf2dPs84a6e0eXswBCFqtDem1INyQFB35VNNjWw?e=wSnZcD','547 MB'),
(134,9,5,7,'http://bit.ly/2rFNbQ6','461 MB'),
(135,9,6,4,'https://unsaedupe-my.sharepoint.com/:u:/g/personal/faraoz_unsa_edu_pe/EfbMWbCMfvFEihUXDFju-XgBew6wDH1w_resJkEtxAPk2A?e=hIYTCj','434 MB'),
(136,9,7,6,'https://unsaedupe-my.sharepoint.com/:u:/g/personal/faraoz_unsa_edu_pe/EbEIM-DP_9RIggcV7ZbwAZgBH24QNF9A4UWpKdIOSAk45A?e=lasa44','537 MB'),
(137,9,8,3,'https://unsaedupe-my.sharepoint.com/:u:/g/personal/faraoz_unsa_edu_pe/EfwNAWcUpX9Coae_fc4x2m8BojdFNQ5z094-5Dm4JKAIpw?e=8Giiv9','467 MB'),
(138,9,9,4,'https://unsaedupe-my.sharepoint.com/:u:/g/personal/faraoz_unsa_edu_pe/EVWyXQBrLNNHmKx2NvriZYIBEQI9iLsrnrBEW5hevCGj7g?e=lEK62O','535 MB'),
(139,9,10,3,'https://unsaedupe-my.sharepoint.com/:u:/g/personal/faraoz_unsa_edu_pe/EZkpiZR16OxMpqMN7w2DUmQBFR1N_k03Usukoo8e1vMTCQ?e=93GehA','513 MB'),
(140,9,11,5,'https://unsaedupe-my.sharepoint.com/:u:/g/personal/faraoz_unsa_edu_pe/EfW_d1099DtDrx_OtxtKPiYB6l88kYAsnx6KZgKOFPCN-w?e=w18PjG','457 MB'),
(141,10,1,1,'https://unsaedupe-my.sharepoint.com/:u:/g/personal/faraoz_unsa_edu_pe/EVVkQDXP0udHtoo4NyCQIQYBzCFyo-yMX2YQ4cvoDcDrtg?e=twQbP1','160 MB'),
(142,10,2,2,'https://unsaedupe-my.sharepoint.com/:u:/g/personal/faraoz_unsa_edu_pe/EZYJPzxOTbBMmO6AY8jHGgwBcGp6frdoIrCEC6N-5BLG4Q?e=3VALQy','190 MB'),
(143,10,3,1,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EUmzg8Eiq7ZEpsGwbDtqyz4B1_yI9Ksk29j01H8y4fs2KA?e=6bgNg4','183 MB'),
(144,10,4,1,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EYHnSRzKBONCmc6TNLjTCT8BYhovJ_005KsfdfZMQDd4ww?e=v0aJcy','172 MB'),
(145,10,5,1,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EedsdtJ9JmBJhjBm2OE82dQBD4m-EbR8974xXKsYZMTFaw?e=rSHv0I','171 MB'),
(146,10,6,1,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EbDZguj6o6xJs6wML557yZYB6A_jcc95fXbSZL3T8hP8wA?e=LchEUx','157 MB'),
(147,10,7,1,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/Ea1jGjrc0SxDhbVXDreFK24BcCL9phQfwjEFViBKUgVMag?e=8wnMog','172 MB'),
(148,10,8,1,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EXsVa96w4sVLhKmGzGFusPgBJKO9I37zmOpoEfoUsiW3xA?e=tWWcB4','174 MB'),
(149,10,9,1,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EXcCEhnPfotGk8-0ho4fogYBNacvg6TIZ0nYplqt5zjRCg?e=fQJBKf','186 MB'),
(150,10,10,0,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EQscfzn41b1LhhMCfPdgAWoB_nlMEs3xhVZmeVk2MqHr5g?e=LGLcnJ','172 MB'),
(151,10,11,0,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/ETt0-xm69otBuM_GDQfXwzUBa3QPn4lqJVLX6E1hY2mKyw?e=t7GVv6','151 MB'),
(152,10,12,0,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EdgorHYQxdBKpAyxLSeGH0cBUpXJmdGPAgo7ypDONmT6DA?e=jPsLSK','160 MB'),
(153,10,13,0,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EXjklVJn-09MqrW5OVA2Oi4BSCOzLIj4005KAD1J5g7OuQ?e=9QxxVS','195 MB'),
(154,11,1,10,'https://unsaedupe-my.sharepoint.com/:u:/g/personal/faraoz_unsa_edu_pe/EfZL_64YJzNFuosg2TyOQJYBANVqFnvItC1-6F4C6ooW3w?e=2QjgY3','368 MB'),
(155,11,2,9,'https://unsaedupe-my.sharepoint.com/:u:/g/personal/faraoz_unsa_edu_pe/EYtfFPTDs2BFlIX_sCzcCVIBDTWv95MFhzPavaa0Eio1nA?e=PnAKtF','447 MB'),
(156,11,3,0,'https://unsaedupe-my.sharepoint.com/:u:/g/personal/faraoz_unsa_edu_pe/ETS3CdRCsQFLgCGSrAN2Pt4B0e5mTOgk9nxEsv8sN9duow?e=vTmwPP','463 MB'),
(157,11,4,0,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EYG_4ST_qg5PrTcikED_jgUBLWruMl1ac29U8olGdcgmzA?e=W737g2','408 MB'),
(158,11,5,0,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EfNWibnYuY5Hk1WIw2CfmkIBNCj1FWG4lbVRzE1p7fvrhg?e=Ps8GM0','385 MB'),
(159,11,6,0,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EROEIrfYN9JEqXge-LUJLnMBijoKm589bxCpWTpNSxyHYA?e=GlukUk','376 MB'),
(160,11,7,0,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/Ea6rG3ZkkH1Fuq0NmTqEX-ABBlJnLCCXbjiL3HUZaoWLAQ?e=8Uaxgu','405 MB'),
(161,11,8,0,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EU-DvvdLHMNKlDj4vOCzzNIBSaVOGdv24xoPP2HPe2cmhw?e=zILaPp','409 MB'),
(162,11,9,0,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EcisCYsHuo5NvQ70V1dtmRMBuvP-wH4gAsAf6g_u1nAvcw?e=nbLUl4','435 MB'),
(163,11,10,0,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EYgX3JZTvz9CmxsDONY5xhoBIMBGG99bjNRef6af9OI7VA?e=B17Wz9','364 MB'),
(164,11,11,0,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EX8nwpotTGxLt9SzaQqRGSEB70jQqsTFm8wUa_RnJOh6sw?e=mC5ZmH','369 MB'),
(165,11,12,0,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/ESHmVm2I0P1OjdyK4SxoB-ABPD05YS6cW5Xht6gjYKWhEA?e=vP5MBo','375 MB'),
(166,11,13,0,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EbT1jvJuVVBPh7yVYq-3xM8BJ0FJISQA3gsDScO8lQvfZA?e=u6oeKN','483 MB'),
(167,12,1,10,'https://mega.nz/#!Z9oQ1QgS!QE7o0Yfzr7S5fZeOCHLHi1jspnHiQzHW7vNdUx6kyL8','147 MB'),
(168,12,2,4,'https://mega.nz/#!1oZ1iYTR!DhKHrwGMlg5K0mz_aQlIC5uyG5EVJut9TWIOb5MRFp0','157 MB'),
(169,12,3,3,'https://mega.nz/#!9t5GyQLK!lz5Vic3d1d3dXUAMXh91AZtPMvBuYNiaegvi7cGjNKY','150 MB'),
(170,12,4,3,'https://mega.nz/#!9whyXI7R!L2V5hi4XvreiAANSwdxtsQso_hBblp76_IL1jpBb2Oc','151 MB'),
(171,12,5,4,'https://mega.nz/#!wphWGQDK!9Z9ORYIfHqQO3eq8qrt0EVFMcwSj-lodcAxEmWrjPq8','145 MB'),
(172,12,6,4,'https://mega.nz/#!FkxGiSpB!bWhH6D7A3sfgrESKOjPxcxKVbDyLb6Mqs7B4Ca-IgXw','132 MB'),
(173,12,7,2,'https://mega.nz/#!glhwSKoR!iGxftDAX8_1jeQLDtbyQ4JANg2cvpy0UuYa9F6RY_rk','168 MB'),
(174,12,8,3,'https://mega.nz/#!wxhliBqL!FoFibOCsg9kZa6XOe5U4xYQ6DlqknFt5206Fozavya8','173 MB'),
(175,12,9,2,'https://mega.nz/#!EkRgmADQ!8ZagzKdP-cW5yFQYuA88nOyCLglQJKwZSLowjwB6u5I','158 MB'),
(176,12,10,4,'https://mega.nz/#!89AQ0AiL!Fvywj8RsYdpNtXLX_IuFQT72xbrQyTQ4X_4Ikj6P6gg','129 MB'),
(177,12,11,3,'https://mega.nz/#!UlZ2jY7L!v77P2NdbRd5eM7M5sukJ72G1FVcWlHGlnTAwQLT3VQE','191 MB'),
(178,12,12,1,'https://mega.nz/#!0g5DiYpL!GbMFlaZYQ1_y4k1svldgZsLa-Zi_STHRZRRpdMlcG3w','208 MB'),
(179,12,13,4,'https://mega.nz/#!xo4FBQoB!jpmJ21cEYlZU5N0FlYNR8UZ4BjHLfHewo3ihCmjiIRM','138 MB'),
(180,13,1,5,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EQU6pcxPgiRNkhcy4PjGs3kB3Ia-V-SmFBy1r8CqqL_VWQ?e=X8NTtL','239 MB'),
(181,13,2,0,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EdkXK6iKQM1IlrY8sLSHijMB4FjHKrQ8OGvgv3AUFiKhRQ?e=qxg8wV','261 MB'),
(182,13,3,4,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EWs9GQfWfyFDh9kGuH0cuUIBlAfwKTT63WYz3UdLeTBCNg?e=mTcLuM','227 MB'),
(183,13,4,3,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EfdAyYi_mZVEg8UbnZo8JboBabfFmgJ3bqH27J5eV6cGng?e=O6C6qg','239 MB'),
(184,13,5,1,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EfkM9Jjq_X5NnX7xig8E5ykBjwv89U1J4yRHcTWGN9Gjkw?e=AdIjnk','230 MB'),
(185,13,6,3,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EYBRU1-MbQtChxW_y08pzpsB9pyiqqvY9ZJ-0IDktqP3zw?e=i8vX6c','215 MB'),
(186,13,7,6,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EU5ju177uhdJnQj7Ke6TZgUBXPn45rBvhQ7iEqOHeXke4A?e=WDog1p','262 MB'),
(187,13,8,1,'https://unsaedupe-my.sharepoint.com/:u:/g/personal/faraoz_unsa_edu_pe/EavE0fys0BlEinwZ6yxHFWEBkbLW8hmFP0re7Tt1mWCRCg?e=cFugjZ','282 MB'),
(188,13,9,0,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EdISYCClbSBLv4B-TppC9rABTgEK_BwIZGdhEFKVzHl6CQ?e=1x5afG','264 MB'),
(189,13,10,0,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EUwqNbwSaE5Oj36_mY2ZM18Bp8ZUJKksKvfJpzfN9yw_8w?e=dnjiTS','216 MB'),
(190,13,11,1,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EVdggRyWB3FJo8quqvzrh78B_1WkzPhhqWniwb29G4aRNg?e=sXxnaw','304 MB'),
(191,13,12,1,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EdzmY7lQY5lGstHX1clGum8BdGE8rlv76VOfjck73Qx_nw?e=uVbpzO','327 MB'),
(192,13,13,0,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EYtfh0hkCUBOjn6jaPiTIG0BuFipz1Gg347osxFqRa4inw?e=trc1Cn','230 MB'),
(193,14,1,10,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/ETOjru4VPQNAqfrDyHazC5cBWkzkcNkdxQQFPKPF3CMLIw?e=KGSwVl','501 MB'),
(194,14,2,2,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EScf3S-mq7BDtIfuY3xKe3sBBx31u2-wkUK7x-a3hkIGkQ?e=abHEhZ','543 MB'),
(195,14,3,1,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EYOsauY6iHVCmtnyIB2ZPzABA8ivExpOmIaLLR-ciCU05Q?e=jqZ8xS','495 MB'),
(196,14,4,3,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EfFO3-WEAqdMq72CsF9nzw0BKvrP_HcHu6Xk-2H3n8ej4Q?e=jdrOP2','373 MB'),
(197,14,5,1,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EQAJx3PiLapJkCjn4ocVoL0BHjFrZpzor55sJUcuCGHzxg?e=lZsRsd','371 MB'),
(198,14,6,1,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EY1uRYH0qzhIlnwla7Uu5VABkqn1qQKsA3GV-ZFsa_TdUA?e=ZfKurg','388 MB'),
(199,14,7,6,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EUxE6_DuAIROmg0r87eSKjUBib-hJ44cnoVa76gdyC3zbw?e=bg6DTu','412 MB'),
(200,14,8,1,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EaoiDX7hvNtOjxLZkrOp8qoBk0sgfD-0489FCJkdQwV8nA?e=Ke8gD4','513 MB'),
(201,14,9,1,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/ETmnDJIR2OZDrjRoov75YsABGhLv4vueGN2pvdpJU2cgYA?e=RTVl2l','287 MB'),
(202,14,10,1,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EV61Q6s4trZGnKaCvQGJSF0ByCZReGHZKOIy6my_zhuzzg?e=qQ6xQN','410 MB'),
(203,14,11,1,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EdBm5kRbUlVEsUa_eAt5T04B3Uc_AQp5ijJFIMjTeOWdoA?e=UbuqXe','551 MB'),
(204,14,12,1,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/ESuyMq9VF4pNnaJJOptLMGEBA6bW0DT_t0REEjGpzGzaqg?e=0qonYD','591 MB'),
(205,14,13,3,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/ETmjmnG3XZ5FiAkbMIKcZNYBEOVSASVKjyKNgib7yVe4gw?e=EBDTcO','431 MB'),
(206,15,1,13,'https://mega.nz/#!0kpQnCzB!vt_b9n5I-YZ5TiFoqKyE5anuU_RFIzaYkEBChD-SwaA','162 MB'),
(207,15,2,9,'https://mega.nz/#!I1wmHaZA!4iWIa50YXX07rfr-FfOh0L-y960c-r-NGNsWCq8LcAA','118 MB'),
(208,15,3,7,'https://mega.nz/#!M8AUHSYb!QtXRc_72OnbCw7d8Hnhp0jRCKPlElt1gJ_FPxz05rLs','154 MB'),
(209,15,4,12,'https://mega.nz/#!9goRBCTL!7dUcVOquVyR7uH2vdEgw2XYFmmIHoy_d36pZKbZmm9E','174 MB'),
(210,15,5,5,'https://mega.nz/#!ppRCnSJK!XtdmSATnaIl0YvSFnwY-lkBpyw8frYZ-1N0MKLC4ONw','123 MB'),
(211,15,6,2,'https://mega.nz/#!U0hV3KCJ!HSQ-F3vtfXOLFZyc314rk5dkYyZbJmJNy0mw1zGB-sA','184 MB'),
(212,15,7,4,'https://mega.nz/#!1lhlUYxI!EjqUadNWssKmsRI4dTmuah-oPZ8hdi1qaeLG0wYu1E4','118 MB'),
(213,15,8,0,'https://mega.nz/#!hggjEKrL!uLL4cNCOzXVShCbvciX52AWj771CKA2uRgT3x_ZrXMo','135 MB'),
(214,15,9,0,'https://mega.nz/#!U0wlwSZZ!tjln9leR5nJjjcZD1QXNEcujx5CI2T5RS0cVn13lyvA','121 MB'),
(215,15,10,0,'https://mega.nz/#!xloFQSTZ!aS3lM6pIxAVbXh_nSaYHKhLWCttPBPMNxaiMBa6ZOvI','151 MB'),
(216,15,11,1,'https://mega.nz/#!R5xhzQST!F2QfcTMW2TamPOO_UOKHsTggFgE9NTuIszaeDlu0b4k','111 MB'),
(217,16,1,3,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EY0ddAEU0OdMo09arH62F3kBrQdFvNIv6zCCfalEND3KJg?e=sdoOiD','246 MB'),
(218,16,2,2,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EbyMuJLjh3NPvYRyQOeATE0BEGjihTlvKhsPdq4030jRKw?e=e8uwXL','176 MB'),
(219,16,3,1,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EWn3iW1y1WdEoAgmFRNExo0BUuW7TUaYIOe_p3ZX4T_5Yw?e=MZKmr0','225 MB'),
(220,16,4,5,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EY7u5BJDSEdPh5eGRtXv8LQBlkCYrxcMETCLbub-mhS9mQ?e=ecNn0c','116 MB'),
(221,16,5,2,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EYncNSR25NlAgxC9Xemg_W0BMgVZq1KTRHarYXkOys4Ulg?e=RrwzJo','185 MB'),
(222,16,6,0,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EVv7wl0NcG9Iov2I8nZsbDoBcsvko6ZPwtSyVuIOVS9p6w?e=qpZVzn','284 MB'),
(223,16,7,2,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EZva_Sm5UdtFrqV13EsJbosB2aUIZDpgSjNHInJigEPQBQ?e=mCWrRr','182 MB'),
(224,17,1,9,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/ET3mS7EDLPhCi79Z2eruI7YB28x1PFtvbF0AyEhzn61XFw?e=k9AjLN','191 MB'),
(225,17,2,8,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/Ee7JwEQhJZpDqlUsbZLH_8UB88x7Joas_O1GIKkmxBnyiQ?e=sgJWhg','197 MB'),
(226,17,3,5,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/ERKf5zUANaBIvaBqiNHQ9s4B2ppEOLnsdwhO4v5O4hQfsQ?e=sJ52sV','183 MB'),
(227,17,4,6,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EbLHO2KGeIVNvIY2iZQjhfQBC6FMBK7H74Cd77Pe3t6zgw?e=JCg0Ub','235 MB'),
(228,17,5,4,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EUU4l5PRY85OuBnZ8_iYB1MBrGAD3v5E88yq8FlDP6PVWw?e=lrUJzb','176 MB'),
(229,18,1,9,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/ETOULtPLqr5IlaGQaNZ1zVUBwLpfbR7iQwqUgHH6fubj6A?e=AqFcSB','443 MB'),
(230,18,2,1,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EQWwPzd_brlJiCtvqmywXt0B0BROQeVsW9wxPu8s2d_Ayw?e=qhMtEU','418 MB'),
(231,18,3,1,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EeMyyEMvjnVGi6ufy8snK4UBhUph4ge-g-1Ul-MgcL7ZNg?e=rjk5Tr','380 MB'),
(232,18,4,2,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EVSYtxSTG4tNqt-3obEEc6oBUoCN2k6sYV3b6KCve6DQPA?e=6YDtwb','547 MB'),
(233,18,5,4,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/ESU8Rl9AHx1Hly05B8cFUI4B5MW4PbX-D1hqJ4ZkPI9ynA?e=BXF3PM','389 MB'),
(234,23,1,74,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/ES1HGTLrBHJLkB0xqp6osrYBFyzoAHPHGz6PjhkiIdxKUw?e=MV6SIR','469 MB'),
(235,22,1,26,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EfQIminum89MtJlNaGAPhfYBh6ln9q6AQ4vxjksKZWsh9w?e=9rOxQD','533 MB'),
(236,21,1,26,'https://mega.nz/#!ssBFjIZK!CF31mHrl1_dR3kjtOpd_WLtCL0z6wM5Hdl9Vghobhv0','190 MB'),
(237,19,1,7,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EbhRMIikpe1FqgbqQsEC-NABzcae4xMFgcba8pOZH975tA?e=EyguPg','96 MB'),
(238,20,1,9,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EXeBuWIDbN5GhiTHya2C9ScBH1YkxqykGF0E4XGc8maFIw?e=zuOB7y','275 MB'),
(239,20,2,3,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EQAhTNGuPRlNol0wDpEwdDAB0uA7nnec-1OQaicyu1XZ7w?e=2Tv5VM','233 MB'),
(240,19,2,4,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/ETboi8nAPcJNkkEZ-gYDwloB25bJQ3iWVmESmT7_baUREQ?e=72ujTR','78 MB'),
(241,17,6,5,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EWd7yypsnIBIjGNf-YfHPP4BmEjtn8VBMq9tq8iKZ-2MXg?e=SxXU5C','229 MB'),
(242,17,7,5,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/ERVq4L20ONRKttyntttQDgQBLwKDqKsmuqqi7fRHve_WIA?e=4xVOFn','238 MB'),
(243,17,8,3,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EYSuq7DhW7RLqe_XwP0V9ncBQyIIXpMq2NIKEEf44o9aEg?e=nmU2sq','187 MB'),
(244,17,9,3,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EbmfjteyTeJBnBrZm9zE_80BtiDT0VMLDnYpB3HzkGnU_w?e=08AVsi','192 MB'),
(245,17,10,5,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/Ef286iYJVvRBgCGtS3wk5IIB3H9AsaJiXuHq2aqvyYCsPw?e=tlhBgb','195 MB'),
(246,17,11,4,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/Ee8mSFEUph5FsdI1UUqx6dgBJTew2GVy5xaTRj1t88gyNg?e=9Jdbcc','185 MB'),
(247,17,12,4,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EQ5ImUq3tY5EgNK8BRB_a6MBvG0cjm_KsTwZvHI7v5tXiQ?e=IEnBvs','187 MB'),
(262,18,6,1,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EVnAhkHfqqRKnPL0mfYtqgEB_GX4NrdioAN8TZ22nQg5Iw?e=JxLKj5','507 MB'),
(263,18,7,1,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/Eet0zVT1XeVJo1RClbIF_HQBRYBOB5TN-AlFeHSroTo3XA?e=AdToM0','569 MB'),
(264,18,8,1,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/ESkif3S7iodHrYTM7o23qhoBxdQ0i5KvvksfD-wN91CKzg?e=fqCNkY','412 MB'),
(265,18,9,1,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EazyH4AvQs9Lj4tCn2PQp9IB38HefcD4lkxKWpL77TAgRQ?e=fBrIKr','446 MB'),
(266,18,10,1,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/ERKgfvE4DxpEsHkg_PB16oUBUqCFovIZ5xPDEh5GUoAYTw?e=nM6xlj','403 MB'),
(267,18,11,1,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/ETYaAJS87thLpfQXManCuisBAPbA4GuWJeoqTuskTgznLw?e=RdXPf9','431 MB'),
(268,18,12,3,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EW71FHnjgapOrPS5fQg7lfgBDuzKn0Mt3qrpS5F_mVmvbQ?e=PRswdt','427 MB'),
(269,1,12,2,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EeKf3wj1MN9LrC_jOGyXPxQBZwmSmniju1GlJq9VZ1a6wg?e=qNiZIN','345 MB'),
(270,1,13,4,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EUMIrJsdoAVHu4enLomwbD0BEHO297T6witxXnMa0eipWw?e=KeYbn9','263 MB'),
(271,15,12,5,'https://mega.nz/#!x4QD3a5Z!i0MvCxQOUBVY6qH4ePgLp2jzuhBJAb2d6BCvjhZsnng','144 MB'),
(272,15,13,5,'https://mega.nz/#!I8wWlICQ!3K_AgKGz_VqY_kNDkCIU2bi8GC5-VxpwDk0ObyZRLD0','176 MB'),
(273,16,8,1,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/ETLqMMyug89NkFFEJVRGMegBmbO4RHim2y56Zl3c1yfWhA?e=xYoJXB','202 MB'),
(274,16,9,0,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EUngR5PiWy9Prjmc3tOTeRQBBDkSS_6g3W9xudRUjYOnVg?e=1p5opx','181 MB'),
(275,16,10,0,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EQVfbBvimpFCh3VHemGrVIoBPjSOXPbd_G0wZ2aShaOuEw?e=YTDbXq','226 MB'),
(276,16,11,0,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/ETOwHZtpE0ZJuSIg0rTz4ScBYKvonTggQ4PgpVDwKDC-Gg?e=esG9H2','169 MB'),
(277,16,12,0,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/Ebkm5jlaw2VLnz1YyXGKcIUBgrvQ9Avy0QMDJj6iE3WnwQ?e=GIO9UH','214 MB'),
(278,16,13,0,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EUMIrJsdoAVHu4enLomwbD0BEHO297T6witxXnMa0eipWw?e=TsRPWK','263 MB'),
(279,16,2,0,'https://goo.gl/VdMYSA','233 MB'),
(280,16,3,0,'https://goo.gl/rT9TMi','203 MB'),
(281,16,4,0,'https://goo.gl/mUXu1a','250 MB'),
(282,16,5,0,'https://goo.gl/LjGejp','296 MB'),
(283,16,6,0,'https://goo.gl/kfZn2S','322 MB'),
(284,16,7,0,'https://mega.nz/#!wkp0yIjA!adcmdDAxwuiwX3n1YWgxsN_MfgXTdejUyKkhd6SKIPE','267 MB'),
(285,16,8,0,'https://mega.nz/#!UsYiGSiR!MHILASy9529swiWdnDjUMzqjmSK-qF2H5D9FFDiYjDo','334 MB'),
(286,16,9,0,'https://goo.gl/mvD5Dx','430 MB'),
(287,16,10,0,'https://mega.nz/#!F0YmCASa!7JURiNWx333zN-i9MDDeqZZMmFInhxUAKXBdHMZWl0o','252 MB'),
(288,16,11,0,'https://mega.nz/#!ohoEUTaK!RHP1Mj5tsXqW2wHGPeWJ6qbdBI9Xo-flG8G18dADRx0','334 MB'),
(289,16,12,0,'https://mega.nz/#!dhBjBZgC!TqHfjgiTgrXI_Dx_POT1tTIElWhhxbXfGCoONqps90U','362 MB'),
(290,16,13,0,'https://mega.nz/#!wkIRQaDJ!NtzBFeIbiWWHvHgshhvsAGslKTaRAh-QJxT3xYCiGYo','308 MB'),
(291,26,1,0,'https://goo.gl/xy3KBm','236 MB'),
(292,26,2,0,'https://goo.gl/5PTtoA','197 MB'),
(293,26,3,0,'https://goo.gl/RZdwxZ','199 MB'),
(294,26,4,1,'https://goo.gl/dZ3k4g','245 MB'),
(295,26,5,0,'https://unsaedupe-my.sharepoint.com/:u:/g/personal/faraoz_unsa_edu_pe/EZXdG2JUmqtEptcXtubo_z4BQei5SbfLzeIC8vUbSSEAGA?e=eF14Rt','220 MB'),
(296,26,6,0,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EdxPY4nCdY5GnO_liwWtJacBNWBr0KbHUwtb4bOJHIBXfw?e=CEJobd','212 MB'),
(297,26,7,0,'https://unsaedupe-my.sharepoint.com/:u:/g/personal/faraoz_unsa_edu_pe/Ee8KogdtItNOlbvRnmZYP-4BpAnIaDZQDg5Vp1ffy7ocvw?e=3vL48U','220 MB'),
(298,26,8,0,'https://unsaedupe-my.sharepoint.com/:u:/g/personal/faraoz_unsa_edu_pe/ETA-_rNVklNBsp5md8x0NN8BfvZqqjvHYn-FtvNVFygQMg?e=6f7Xsg','226 MB'),
(299,26,9,0,'https://unsaedupe-my.sharepoint.com/:u:/g/personal/faraoz_unsa_edu_pe/EUsx981l9uJCvqOfUtT81dEBeMSwkfb-Rx9tTbrd09_ouQ?e=bp2Ixz','338 MB'),
(300,26,10,0,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EXo2-BGUfuVEiAn2vcAWPJUBBg6GGflmjjYNA4XZg3sUfQ?e=AzicZn','189 MB'),
(301,26,11,0,'https://unsaedupe-my.sharepoint.com/:u:/g/personal/faraoz_unsa_edu_pe/EZWAO2HkSaNBvd6p2J8uU-IB0yHCLDhElk9hdvibLOsCmA?e=QzOu9z','231 MB'),
(302,26,12,0,'https://unsaedupe-my.sharepoint.com/:u:/g/personal/faraoz_unsa_edu_pe/EWZ3gVhFso5IrY4eWPFuNAoBNMgiARD14M2A7EVC6URXcg?e=yP9nwJ','274 MB'),
(303,26,13,0,'https://unsaedupe-my.sharepoint.com/:u:/g/personal/faraoz_unsa_edu_pe/EaT9AwyJLppIsnGE1EJGSs0Bl4q759AHA4Aus4IZGQerZg?e=D8fUsf','235 MB'),
(304,27,1,0,'https://goo.gl/Gmi3Hz','605 MB'),
(305,27,2,0,'https://goo.gl/Tggpj1','455 MB'),
(306,27,3,0,'https://goo.gl/7WUX5Q','494 MB'),
(307,27,4,5,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EZXjpdsDKEBChTcYapw-eIkBb1Z2BnLhY4gi-Cj6spcnQw?e=KOwFAT','563 MB'),
(308,27,5,3,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EaiLkkVhbCJOsfshu3Isd2QBZvIbKaWlfAD1R4oMgEoFbQ?e=z2CAcr','443 MB'),
(309,27,6,1,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EWaTf-ODtzZBsGM_5mQaYowBL3eNBboMKRPwCUSRNaBOlQ?e=9m8R4o','418 MB'),
(310,27,7,0,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EXkAJCbx66BLgVFbeGeUJkAB9K7ATkTioNoX0y6rKaxi1A?e=pVCZl3','495 MB'),
(311,27,8,0,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/ERpi4CQQ4nxDpFVf0Jpv3hcBM3Mjftrg0yNQDXDcceD6Hg?e=sxT9aq','490 MB'),
(312,27,9,0,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/Ef4p873jdBNHvGSoWmlhHAoBJHvtyI5bkH98Hd1i60nM5g?e=mSPH0i','377 MB'),
(313,27,10,0,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EZ34r1eEG85KrnrGfZx3UfUBiuCB0t2LS3AHwRpMdAvYdQ?e=xn3NCL','399 MB'),
(314,27,11,0,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EQlUcljnuHNPogJ3wR5XFgQBTlDhAjXYYSctKJyokAeZSg?e=mU3wnf','530 MB'),
(315,27,12,1,'http://bit.ly/2vMXS87','593 MB'),
(316,27,13,0,'http://bit.ly/2qkeajI','492 MB'),
(317,28,1,0,'https://goo.gl/Vwddkq','355 MB'),
(318,28,2,0,'https://goo.gl/7HtEbm','238 MB'),
(319,28,3,0,'https://goo.gl/GoW3Rq','268 MB'),
(320,28,4,0,'https://goo.gl/Gxj4qk','269 MB'),
(321,28,5,0,'https://goo.gl/iqGgJ2','306 MB'),
(322,28,6,0,'https://goo.gl/jWfGAZ','248 MB'),
(323,28,7,0,'https://goo.gl/1PZsst','263 MB'),
(324,28,8,0,'https://goo.gl/LytYQu','274 MB'),
(325,28,9,0,'https://goo.gl/Fp3sYi','260 MB'),
(326,28,10,0,'https://goo.gl/gXS2Gz','355 MB'),
(327,28,11,0,'https://goo.gl/2pQkir','229 MB'),
(328,29,1,0,'https://goo.gl/H2Eh5Y','188 MB'),
(329,29,2,0,'https://goo.gl/3x931m','155 MB'),
(330,29,3,0,'https://goo.gl/JUU3Xm','172 MB'),
(331,29,4,0,'https://goo.gl/dJB4v9','175 MB'),
(332,29,5,0,'https://goo.gl/5EN6de','242 MB'),
(333,29,6,0,'https://goo.gl/r5j4aC','194 MB'),
(334,29,7,0,'https://goo.gl/1WPqrJ','183 MB'),
(335,29,8,0,'https://goo.gl/DQowPU','173 MB'),
(336,29,9,0,'https://goo.gl/fWqQgs','185 MB'),
(337,29,10,0,'https://goo.gl/ZFyx8Z','226 MB'),
(338,29,11,0,'https://goo.gl/ruKDH6','165 MB'),
(339,30,1,0,'https://goo.gl/n4BQK4','373 MB'),
(340,30,2,0,'https://goo.gl/2BxVNf','333 MB'),
(341,30,3,0,'https://goo.gl/ZRJASF','377 MB'),
(342,30,4,2,'https://goo.gl/E3UFzZ','392 MB'),
(343,30,5,0,'https://goo.gl/9JFmuf','383 MB'),
(344,30,6,0,'https://goo.gl/zbmReU','354 MB'),
(345,30,7,0,'https://goo.gl/bj5pXb','322 MB'),
(346,30,8,0,'https://goo.gl/y3Rbp2','396 MB'),
(347,30,9,1,'https://goo.gl/SAM2fM','363 MB'),
(348,30,10,0,'https://goo.gl/HR42QK','506 MB'),
(349,30,11,0,'https://goo.gl/pCrjRM','346 MB'),
(350,32,5,0,'https://goo.gl/ngTunU','340 MB'),
(351,32,6,0,'https://goo.gl/qfW6ci','519 MB'),
(352,32,7,0,'https://goo.gl/CrbpbD','518 MB'),
(353,32,8,0,'https://goo.gl/swMBpo','502 MB'),
(354,32,9,0,'https://goo.gl/fYhTVQ','492 MB'),
(355,32,10,0,'https://goo.gl/1u4tb7','675 MB'),
(356,32,11,0,'https://goo.gl/HQPrsp','421 MB'),
(357,23,2,40,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EaE07eK4fMxCvs_feQhJsREBM6THgUudCuKXdI1X8d2fdA?e=Ymylyh','393 MB'),
(358,22,2,5,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EbtK8f-R0pFEnYJgOiXsRIwBzFLJ9SIufOyZbm7Oh9GT2w?e=ONr0l7','455 MB'),
(359,21,2,9,'https://mega.nz/#!F4Jn1QTY!2PEY6tkw5vFpZK0LLe16AMsOUh_x9ya4QgYQDDap43c','250 MB'),
(360,19,3,2,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/ETN3w13jMyxHhy4S09CAiIgB-Hnaex1W2LqR0tX-vmUY0Q?e=RxwcPb','131 MB'),
(361,20,3,2,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EXW7xR0mMP1NqpeMb6BLmGgBAjAJmBeR1zDcsc1bs1pfHA?e=tQ6vZm','265 MB'),
(362,23,3,37,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EWiIc50xEQ5Lpnp5BFGtxhoBN9Ylpl12mmbiOZHGkbsosg?e=SywdKN','385 MB'),
(363,21,3,1,'https://mega.nz/#!5kIWQSIa!ySVrvV3B_LEYN9vyxXMtsfK5RJwrmJeJ8tk45LBtSOg','174 MB'),
(364,22,3,0,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EW2FOWDgNdNDkT5whJTqC8EBPG9b49YUCcFEzXz3NftZPA?e=eZKSnD','442 MB'),
(365,19,4,0,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EYcp7WqerKxGk7fuat2azk8BxZ3ckx6K0Cu7wSkSB6ObBw?e=1bcVJF','76 MB'),
(366,20,4,0,'https://unsaedupe-my.sharepoint.com/:v:/g/personal/faraoz_unsa_edu_pe/EcPkec_6Qi1HkGK5Aw_2UlYBCNe_WRMrbh9iXV7syb1Juw?e=kGOclQ','230 MB');
/*!40000 ALTER TABLE `eps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `links`
--

DROP TABLE IF EXISTS `links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `links` (
  `links_ID` int(11) NOT NULL AUTO_INCREMENT,
  `anime_ID` int(11) DEFAULT NULL,
  `aviso` tinytext,
  `sigEp` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`links_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `links`
--

LOCK TABLES `links` WRITE;
/*!40000 ALTER TABLE `links` DISABLE KEYS */;
INSERT INTO `links` VALUES (1,29,'Todo listo :D','0'),
(3,22,'Todo listo','0'),
(4,25,'Todo listo.','0'),
(5,24,'Todo listo','0'),
(6,23,'Todo listo','0'),
(7,26,'Volveré...','14'),
(8,27,'Todo listo','0'),
(9,28,'Todo listo.','0'),
(10,30,'Todo listo :D','5'),
(11,31,'Ahora el 4...','4'),
(12,14,'Hubo un problema con los links. Lo arreglaremos pronto.','1'),
(13,21,'Todo listo','0'),
(14,20,'Completo','0'),
(15,19,'Hubo un problema con los links. Lo arreglaremos pronto.','1');
/*!40000 ALTER TABLE `links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `links_opciones`
--

DROP TABLE IF EXISTS `links_opciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `links_opciones` (
  `opcion_ID` int(11) NOT NULL AUTO_INCREMENT,
  `links_ID` int(11) DEFAULT NULL,
  `num_opcion` int(11) DEFAULT NULL,
  `formato` varchar(20) DEFAULT NULL,
  `res` varchar(20) DEFAULT NULL,
  `servidor` varchar(20) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`opcion_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `links_opciones`
--

LOCK TABLES `links_opciones` WRITE;
/*!40000 ALTER TABLE `links_opciones` DISABLE KEYS */;
INSERT INTO `links_opciones` VALUES (1,1,3,'MKV','1080p@60fps','OneDrive','rgb(47, 112, 144)'),
(2,3,1,'MP4','720p','OneDrive','rgb(47, 112, 144)'),
(3,3,2,'MKV','1080p','OneDrive','rgb(47, 112, 144)'),
(4,4,1,'MP4','720p@60fps','OneDrive','rgb(47, 112, 144)'),
(5,4,2,'MKV','1080p@60fps','OneDrive','rgb(47, 112, 144)'),
(6,5,1,'MKV','720p','MEGA | OneDrive','rgb(47, 112, 144)'),
(7,5,2,'MP4','1080p','OneDrive','rgb(47, 112, 144)'),
(8,6,1,'MP4','720p','OneDrive','rgb(47, 112, 144)'),
(9,6,2,'MKV','1080p','OneDrive','rgb(47, 112, 144)'),
(10,7,1,'MP4','720p','OneDrive','rgb(47, 112, 144)'),
(11,7,2,'MKV','1080p','OneDrive','rgb(47, 112, 144)'),
(12,8,1,'MP4','ligero','MEGA','red'),
(13,8,2,'MP4','720p@60fps','OneDrive','rgb(47, 112, 144)'),
(14,8,3,'MKV','1080p@60fps','OneDrive','rgb(47, 112, 144)'),
(15,1,1,'MP4','ligero','MEGA','red'),
(16,1,2,'MP4','720p@60fps','OneDrive','rgb(47, 112, 144)'),
(17,9,1,'MP4','720p','OneDrive','rgb(47, 112, 144)'),
(18,9,2,'MP4','1080p','OneDrive','rgb(47, 112, 144)'),
(19,10,1,'MP4','ligero','OneDrive','rgb(47,112,144)'),
(20,10,2,'MP4','1080p','OneDrive','rgb(47,112,144)'),
(21,11,1,'MP4','ligero@60fps','MEGA','red'),
(22,11,2,'MP4','1080p@60fps','OneDrive','rgb(47,112,144)'),
(23,11,3,'MKV','1080p@60fps','OneDrive','rgb(47,112,144)'),
(24,12,1,'MP4','720p','MEGA',NULL),
(25,13,1,'MKV','720p@60fps','MEGA','red'),
(26,13,2,'MP4','720p@60fps','OneDrive','blue'),
(27,13,3,'MKV','1080p@60fps','OneDrive','blue'),
(28,14,1,'MKV','720p','MEGA','red'),
(29,14,2,'MP4','720p','OneDrive','blue'),
(30,14,3,'MP4','1080p','OneDrive','blue'),
(32,14,4,'MKV','1080p','OneDrive','blue'),
(33,15,1,'MKV','720p','Mega',NULL),
(34,15,2,'MP4','720p','Mega',NULL),
(35,15,3,'MP4','1080p','OneDrive',NULL);
/*!40000 ALTER TABLE `links_opciones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-02 20:16:00
