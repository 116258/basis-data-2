-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: db_sidang
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dosen`
--

DROP TABLE IF EXISTS `dosen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dosen` (
  `id_dosen` int(11) NOT NULL AUTO_INCREMENT,
  `nama_dosen` varchar(100) NOT NULL,
  `jabatan` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_dosen`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dosen`
--

LOCK TABLES `dosen` WRITE;
/*!40000 ALTER TABLE `dosen` DISABLE KEYS */;
INSERT INTO `dosen` VALUES (1,'Muhamad Ainurohman, S.Kom','Ketua Penguji'),(2,'Denny Vasanando Sabanise, S.Kom., M.Kom','Penguji 1'),(3,'Fitriasih, S.Kom., M.Kom','Penguji 2');
/*!40000 ALTER TABLE `dosen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_activity`
--

DROP TABLE IF EXISTS `log_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_activity` (
  `id_log` int(11) NOT NULL AUTO_INCREMENT,
  `aktivitas` varchar(255) DEFAULT NULL,
  `waktu` datetime DEFAULT NULL,
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_activity`
--

LOCK TABLES `log_activity` WRITE;
/*!40000 ALTER TABLE `log_activity` DISABLE KEYS */;
INSERT INTO `log_activity` VALUES (1,'Tambah sidang mahasiswa ID 4','2026-07-02 14:50:34'),(2,'Hapus sidang mahasiswa ID 4','2026-07-02 14:58:34');
/*!40000 ALTER TABLE `log_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mahasiswa`
--

DROP TABLE IF EXISTS `mahasiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mahasiswa` (
  `id_mahasiswa` int(11) NOT NULL AUTO_INCREMENT,
  `nim` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `prodi` varchar(100) NOT NULL,
  PRIMARY KEY (`id_mahasiswa`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mahasiswa`
--

LOCK TABLES `mahasiswa` WRITE;
/*!40000 ALTER TABLE `mahasiswa` DISABLE KEYS */;
INSERT INTO `mahasiswa` VALUES (1,'2302001','Dwi Sekar Arum','Teknik Informatika'),(2,'2302002','Devi Kurnia','Teknik Informatika'),(3,'2302003','Mega Ario','Teknik Informatika'),(4,'2302004','Sri Zakiya','Teknik Informatika'),(5,'2302005','Zahwa Amir','Teknik Informatika');
/*!40000 ALTER TABLE `mahasiswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `penguji`
--

DROP TABLE IF EXISTS `penguji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `penguji` (
  `id_penguji` int(11) NOT NULL AUTO_INCREMENT,
  `id_sidang` int(11) DEFAULT NULL,
  `id_dosen` int(11) DEFAULT NULL,
  `peran` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_penguji`),
  KEY `id_sidang` (`id_sidang`),
  KEY `id_dosen` (`id_dosen`),
  CONSTRAINT `penguji_ibfk_1` FOREIGN KEY (`id_sidang`) REFERENCES `sidang` (`id_sidang`),
  CONSTRAINT `penguji_ibfk_2` FOREIGN KEY (`id_dosen`) REFERENCES `dosen` (`id_dosen`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `penguji`
--

LOCK TABLES `penguji` WRITE;
/*!40000 ALTER TABLE `penguji` DISABLE KEYS */;
INSERT INTO `penguji` VALUES (1,1,1,'Ketua'),(2,1,2,'Penguji 1'),(3,1,3,'Penguji 2');
/*!40000 ALTER TABLE `penguji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ruangan`
--

DROP TABLE IF EXISTS `ruangan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ruangan` (
  `id_ruangan` int(11) NOT NULL AUTO_INCREMENT,
  `nama_ruangan` varchar(50) NOT NULL,
  PRIMARY KEY (`id_ruangan`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ruangan`
--

LOCK TABLES `ruangan` WRITE;
/*!40000 ALTER TABLE `ruangan` DISABLE KEYS */;
INSERT INTO `ruangan` VALUES (1,'Ruang A'),(2,'Ruang B'),(3,'Ruang C');
/*!40000 ALTER TABLE `ruangan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sidang`
--

DROP TABLE IF EXISTS `sidang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sidang` (
  `id_sidang` int(11) NOT NULL AUTO_INCREMENT,
  `id_mahasiswa` int(11) DEFAULT NULL,
  `tanggal_sidang` date DEFAULT NULL,
  `jam_mulai` time DEFAULT NULL,
  `jam_selesai` time DEFAULT NULL,
  `id_ruangan` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_sidang`),
  KEY `id_mahasiswa` (`id_mahasiswa`),
  KEY `id_ruangan` (`id_ruangan`),
  CONSTRAINT `sidang_ibfk_1` FOREIGN KEY (`id_mahasiswa`) REFERENCES `mahasiswa` (`id_mahasiswa`),
  CONSTRAINT `sidang_ibfk_2` FOREIGN KEY (`id_ruangan`) REFERENCES `ruangan` (`id_ruangan`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sidang`
--

LOCK TABLES `sidang` WRITE;
/*!40000 ALTER TABLE `sidang` DISABLE KEYS */;
INSERT INTO `sidang` VALUES (1,1,'2026-07-10','08:00:00','09:30:00',1),(2,2,'2026-07-10','10:00:00','11:30:00',2),(3,3,'2026-07-11','08:00:00','09:30:00',3);
/*!40000 ALTER TABLE `sidang` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER trg_log_sidang

AFTER INSERT
ON sidang

FOR EACH ROW

BEGIN

INSERT INTO log_activity(
aktivitas,
waktu
)

VALUES(
CONCAT('Tambah sidang mahasiswa ID ', NEW.id_mahasiswa),
NOW()
);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER trg_hapus_sidang

AFTER DELETE
ON sidang

FOR EACH ROW

BEGIN

INSERT INTO log_activity(
aktivitas,
waktu
)

VALUES(
CONCAT('Hapus sidang mahasiswa ID ', OLD.id_mahasiswa),
NOW()
);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary table structure for view `v_dosen_penguji`
--

DROP TABLE IF EXISTS `v_dosen_penguji`;
/*!50001 DROP VIEW IF EXISTS `v_dosen_penguji`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_dosen_penguji` AS SELECT
 1 AS `id_sidang`,
  1 AS `nama`,
  1 AS `nama_dosen`,
  1 AS `peran` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_jadwal_sidang`
--

DROP TABLE IF EXISTS `v_jadwal_sidang`;
/*!50001 DROP VIEW IF EXISTS `v_jadwal_sidang`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_jadwal_sidang` AS SELECT
 1 AS `nim`,
  1 AS `nama`,
  1 AS `prodi`,
  1 AS `tanggal_sidang`,
  1 AS `jam_sidang`,
  1 AS `nama_ruangan` */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `v_dosen_penguji`
--

/*!50001 DROP VIEW IF EXISTS `v_dosen_penguji`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_dosen_penguji` AS select `s`.`id_sidang` AS `id_sidang`,`m`.`nama` AS `nama`,`d`.`nama_dosen` AS `nama_dosen`,`p`.`peran` AS `peran` from (((`penguji` `p` join `dosen` `d` on(`p`.`id_dosen` = `d`.`id_dosen`)) join `sidang` `s` on(`p`.`id_sidang` = `s`.`id_sidang`)) join `mahasiswa` `m` on(`s`.`id_mahasiswa` = `m`.`id_mahasiswa`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_jadwal_sidang`
--

/*!50001 DROP VIEW IF EXISTS `v_jadwal_sidang`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_jadwal_sidang` AS select `m`.`nim` AS `nim`,`m`.`nama` AS `nama`,`m`.`prodi` AS `prodi`,`s`.`tanggal_sidang` AS `tanggal_sidang`,concat(`s`.`jam_mulai`,' - ',`s`.`jam_selesai`) AS `jam_sidang`,`r`.`nama_ruangan` AS `nama_ruangan` from ((`sidang` `s` join `mahasiswa` `m` on(`s`.`id_mahasiswa` = `m`.`id_mahasiswa`)) join `ruangan` `r` on(`s`.`id_ruangan` = `r`.`id_ruangan`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-07-02 21:54:05
