-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: khoaluantotnghiep
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chitiethoidong`
--

DROP TABLE IF EXISTS `chitiethoidong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chitiethoidong` (
  `maHD` int NOT NULL,
  `maGV` varchar(10) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  `maND` varchar(10) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  `maCV` varchar(10) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  `vaiTro` varchar(50) COLLATE utf8mb4_vi_0900_as_cs DEFAULT NULL,
  PRIMARY KEY (`maHD`,`maGV`,`maND`,`maCV`),
  KEY `fk_hoidong_has_giangvien_giangvien1_idx` (`maGV`,`maND`,`maCV`),
  KEY `fk_hoidong_has_giangvien_hoidong1_idx` (`maHD`),
  CONSTRAINT `fk_hoidong_has_giangvien_giangvien1` FOREIGN KEY (`maGV`, `maND`, `maCV`) REFERENCES `giangvien` (`maGV`, `maND`, `maCV`),
  CONSTRAINT `fk_hoidong_has_giangvien_hoidong1` FOREIGN KEY (`maHD`) REFERENCES `hoidong` (`maHD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vi_0900_as_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chitiethoidong`
--

LOCK TABLES `chitiethoidong` WRITE;
/*!40000 ALTER TABLE `chitiethoidong` DISABLE KEYS */;
INSERT INTO `chitiethoidong` VALUES (1,'GV001','GV001','ROLE_GV','ThÆ° kÃ½'),(3,'GV001','GV001','ROLE_GV','Thư ký'),(4,'GV001','GV001','ROLE_GV','Thành viên 1'),(5,'GV001','GV001','ROLE_GV','Phản biện');
/*!40000 ALTER TABLE `chitiethoidong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chucvu`
--

DROP TABLE IF EXISTS `chucvu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chucvu` (
  `maCV` varchar(10) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  `tenCV` varchar(20) COLLATE utf8mb4_vi_0900_as_cs DEFAULT NULL,
  PRIMARY KEY (`maCV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vi_0900_as_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chucvu`
--

LOCK TABLES `chucvu` WRITE;
/*!40000 ALTER TABLE `chucvu` DISABLE KEYS */;
INSERT INTO `chucvu` VALUES ('ROLE_GV','Giảng viên'),('ROLE_GVU','Giáo vụ'),('ROLE_QT','Quản trị'),('ROLE_SV','Sinh viên');
/*!40000 ALTER TABLE `chucvu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dangkykhoaluan`
--

DROP TABLE IF EXISTS `dangkykhoaluan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dangkykhoaluan` (
  `maDK` int NOT NULL AUTO_INCREMENT,
  `maDT` int NOT NULL,
  `maSV2` varchar(10) COLLATE utf8mb4_vi_0900_as_cs DEFAULT NULL,
  `maSV` varchar(10) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  `maND` varchar(10) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  `maCV` varchar(10) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  `maNganh` varchar(10) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  `maKhoa` varchar(10) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  PRIMARY KEY (`maDK`,`maDT`,`maSV`,`maND`,`maCV`,`maNganh`,`maKhoa`),
  KEY `fk_dangkykhoaluan_detai1_idx` (`maDT`),
  KEY `fk_dangkykhoaluan_sinhvien1_idx` (`maSV`,`maND`,`maCV`,`maNganh`,`maKhoa`),
  CONSTRAINT `fk_dangkykhoaluan_detai1` FOREIGN KEY (`maDT`) REFERENCES `detai` (`maDT`),
  CONSTRAINT `fk_dangkykhoaluan_sinhvien1` FOREIGN KEY (`maSV`, `maND`, `maCV`, `maNganh`, `maKhoa`) REFERENCES `sinhvien` (`maSV`, `maND`, `maCV`, `maNganh`, `maKhoa`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vi_0900_as_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dangkykhoaluan`
--

LOCK TABLES `dangkykhoaluan` WRITE;
/*!40000 ALTER TABLE `dangkykhoaluan` DISABLE KEYS */;
INSERT INTO `dangkykhoaluan` VALUES (3,2,'SV001','SV003','SV003','ROLE_SV','IT01','IT'),(4,2,'SV001','SV004','SV004','ROLE_SV','IT02','IT'),(5,2,'','SV004','SV004','ROLE_SV','IT02','IT');
/*!40000 ALTER TABLE `dangkykhoaluan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detai`
--

DROP TABLE IF EXISTS `detai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detai` (
  `maDT` int NOT NULL AUTO_INCREMENT,
  `tenDT` varchar(200) COLLATE utf8mb4_vi_0900_as_cs DEFAULT NULL,
  `hanNop` datetime DEFAULT NULL,
  `noiDung` varchar(2000) COLLATE utf8mb4_vi_0900_as_cs DEFAULT NULL,
  `nam` varchar(15) COLLATE utf8mb4_vi_0900_as_cs DEFAULT NULL,
  PRIMARY KEY (`maDT`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vi_0900_as_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detai`
--

LOCK TABLES `detai` WRITE;
/*!40000 ALTER TABLE `detai` DISABLE KEYS */;
INSERT INTO `detai` VALUES (2,'HoÃ n thiá»n cÃ´ng tÃ¡c káº¿ toÃ¡n vá»n báº±ng tiá»n táº¡i cÃ´ng ty','2022-10-20 00:00:00','Sinh viÃªn trao Äá»i vá»i giáº£ng viÃªn hÆ°á»ng dáº«n, vÃ  ná»p file bÃ¡o cÃ¡o vÃ o cuá»i ká»³.','2022'),(3,'Hoàn thiện công tác kế toán vốn bằng tiền tại công ty','2022-11-10 00:00:00','Sinh viên làm theo hướng dẫn giảng viên và nộp file báo cáo cuối học kỳ ','2022'),(4,'Nghiên cứu trí tuệ nhân tạo AI','2023-01-05 00:00:00','Tìm hiểu và báo cáo về AI','2022');
/*!40000 ALTER TABLE `detai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diem`
--

DROP TABLE IF EXISTS `diem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diem` (
  `maGV` varchar(10) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  `maND` varchar(10) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  `maCV` varchar(10) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  `maKL` int NOT NULL,
  `maTC` int NOT NULL,
  `diem` decimal(3,2) DEFAULT NULL,
  `nhanXet` varchar(300) COLLATE utf8mb4_vi_0900_as_cs DEFAULT NULL,
  `ketQua` varchar(100) COLLATE utf8mb4_vi_0900_as_cs DEFAULT NULL,
  PRIMARY KEY (`maGV`,`maND`,`maCV`,`maKL`,`maTC`),
  KEY `fk_giangvien_has_khoaluan_khoaluan1_idx` (`maKL`),
  KEY `fk_giangvien_has_khoaluan_giangvien1_idx` (`maGV`,`maND`,`maCV`),
  KEY `fk_giangvien_has_khoaluan_tieuchi1_idx` (`maTC`),
  CONSTRAINT `fk_giangvien_has_khoaluan_giangvien1` FOREIGN KEY (`maGV`, `maND`, `maCV`) REFERENCES `giangvien` (`maGV`, `maND`, `maCV`),
  CONSTRAINT `fk_giangvien_has_khoaluan_khoaluan1` FOREIGN KEY (`maKL`) REFERENCES `khoaluan` (`maKL`),
  CONSTRAINT `fk_giangvien_has_khoaluan_tieuchi1` FOREIGN KEY (`maTC`) REFERENCES `tieuchi` (`maTC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vi_0900_as_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diem`
--

LOCK TABLES `diem` WRITE;
/*!40000 ALTER TABLE `diem` DISABLE KEYS */;
INSERT INTO `diem` VALUES ('GV001','GV001','ROLE_GV',12,1,6.50,'Cần cố gắng',NULL),('GV001','GV001','ROLE_GV',12,2,7.25,'Tốt!!',NULL);
/*!40000 ALTER TABLE `diem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `giangvien`
--

DROP TABLE IF EXISTS `giangvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `giangvien` (
  `maGV` varchar(10) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  `hocVi` varchar(250) COLLATE utf8mb4_vi_0900_as_cs DEFAULT NULL,
  `hocHam` varchar(100) COLLATE utf8mb4_vi_0900_as_cs DEFAULT NULL,
  `maND` varchar(10) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  `maCV` varchar(10) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  PRIMARY KEY (`maGV`,`maND`,`maCV`),
  KEY `fk_giangvien_nguoidung1_idx` (`maND`,`maCV`),
  CONSTRAINT `fk_giangvien_nguoidung1` FOREIGN KEY (`maND`, `maCV`) REFERENCES `nguoidung` (`maND`, `maCV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vi_0900_as_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `giangvien`
--

LOCK TABLES `giangvien` WRITE;
/*!40000 ALTER TABLE `giangvien` DISABLE KEYS */;
INSERT INTO `giangvien` VALUES ('GV001','Giáo sư',NULL,'GV001','ROLE_GV');
/*!40000 ALTER TABLE `giangvien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `giaovu`
--

DROP TABLE IF EXISTS `giaovu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `giaovu` (
  `maGVU` varchar(10) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  `phongBan` varchar(50) COLLATE utf8mb4_vi_0900_as_cs DEFAULT NULL,
  `maND` varchar(10) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  `maCV` varchar(10) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  PRIMARY KEY (`maGVU`,`maND`,`maCV`),
  KEY `fk_giaovu_nguoidung1_idx` (`maND`,`maCV`),
  CONSTRAINT `fk_giaovu_nguoidung1` FOREIGN KEY (`maND`, `maCV`) REFERENCES `nguoidung` (`maND`, `maCV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vi_0900_as_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `giaovu`
--

LOCK TABLES `giaovu` WRITE;
/*!40000 ALTER TABLE `giaovu` DISABLE KEYS */;
INSERT INTO `giaovu` VALUES ('GVU001','','GVU001','ROLE_GVU'),('QT002','2','QT002','ROLE_GVU');
/*!40000 ALTER TABLE `giaovu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hoidong`
--

DROP TABLE IF EXISTS `hoidong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hoidong` (
  `maHD` int NOT NULL AUTO_INCREMENT,
  `tenHD` varchar(150) COLLATE utf8mb4_vi_0900_as_cs DEFAULT NULL,
  `tinhTrangHD` varchar(45) COLLATE utf8mb4_vi_0900_as_cs DEFAULT NULL,
  `hoatDong` tinyint DEFAULT NULL,
  PRIMARY KEY (`maHD`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vi_0900_as_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoidong`
--

LOCK TABLES `hoidong` WRITE;
/*!40000 ALTER TABLE `hoidong` DISABLE KEYS */;
INSERT INTO `hoidong` VALUES (1,'Hoi dong khoa luan k01',NULL,0),(2,'Hội đồng khóa luận k02','Khóa luận2022',1),(3,'Hội đồng khóa luận k03','Khóa luận2022',0),(4,'Hội đồng công nghệ thông tin','Khóa luận2022',0),(5,'Hội đồng khóa luận khoa kế toán','Khóa luận 2022',0),(6,'Hội đồng khoa xây dựng','Khóa luận 2022',1);
/*!40000 ALTER TABLE `hoidong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khoa`
--

DROP TABLE IF EXISTS `khoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `khoa` (
  `maKhoa` varchar(10) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  `tenKhoa` varchar(100) COLLATE utf8mb4_vi_0900_as_cs DEFAULT NULL,
  `sdtKhoa` varchar(15) COLLATE utf8mb4_vi_0900_as_cs DEFAULT NULL,
  `diaChiKhoa` varchar(100) COLLATE utf8mb4_vi_0900_as_cs DEFAULT NULL,
  `emailKhoa` varchar(50) COLLATE utf8mb4_vi_0900_as_cs DEFAULT NULL,
  `website` varchar(50) COLLATE utf8mb4_vi_0900_as_cs DEFAULT NULL,
  PRIMARY KEY (`maKhoa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vi_0900_as_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khoa`
--

LOCK TABLES `khoa` WRITE;
/*!40000 ALTER TABLE `khoa` DISABLE KEYS */;
INSERT INTO `khoa` VALUES ('AC','Kế toán - Kiểm toán','02866437623',NULL,NULL,NULL),('CO','Xây dựng','02853424733',NULL,NULL,NULL),('IT','Công nghệ thông tin','02845579345',NULL,NULL,NULL);
/*!40000 ALTER TABLE `khoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khoaluan`
--

DROP TABLE IF EXISTS `khoaluan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `khoaluan` (
  `maKL` int NOT NULL AUTO_INCREMENT,
  `nam` varchar(15) COLLATE utf8mb4_vi_0900_as_cs DEFAULT NULL,
  `ghiChu` varchar(100) COLLATE utf8mb4_vi_0900_as_cs DEFAULT NULL,
  `ngayNop` datetime DEFAULT NULL,
  `maSV2` varchar(10) COLLATE utf8mb4_vi_0900_as_cs DEFAULT NULL,
  `maGV` varchar(10) COLLATE utf8mb4_vi_0900_as_cs DEFAULT NULL,
  `maGV2` varchar(10) COLLATE utf8mb4_vi_0900_as_cs DEFAULT NULL,
  `maDK` int NOT NULL,
  `maDT` int NOT NULL,
  `maSV` varchar(10) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  `maND` varchar(10) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  `maCV` varchar(10) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  `maNganh` varchar(10) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  `maKhoa` varchar(10) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  `maHD` int NOT NULL,
  `file` varchar(100) COLLATE utf8mb4_vi_0900_as_cs DEFAULT NULL,
  PRIMARY KEY (`maKL`),
  KEY `fk_khoaluan_dangkykhoaluan1_idx` (`maDK`,`maDT`,`maSV`,`maND`,`maCV`,`maNganh`,`maKhoa`),
  KEY `fk_khoaluan_hoidong1_idx` (`maHD`),
  CONSTRAINT `fk_khoaluan_dangkykhoaluan1` FOREIGN KEY (`maDK`, `maDT`, `maSV`, `maND`, `maCV`, `maNganh`, `maKhoa`) REFERENCES `dangkykhoaluan` (`maDK`, `maDT`, `maSV`, `maND`, `maCV`, `maNganh`, `maKhoa`),
  CONSTRAINT `fk_khoaluan_hoidong1` FOREIGN KEY (`maHD`) REFERENCES `hoidong` (`maHD`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vi_0900_as_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khoaluan`
--

LOCK TABLES `khoaluan` WRITE;
/*!40000 ALTER TABLE `khoaluan` DISABLE KEYS */;
INSERT INTO `khoaluan` VALUES (12,'2022',NULL,NULL,'SV001','GV001','GV001',3,2,'SV003','SV003','ROLE_SV','IT01','IT',4,NULL);
/*!40000 ALTER TABLE `khoaluan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nganh`
--

DROP TABLE IF EXISTS `nganh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nganh` (
  `maNganh` varchar(10) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  `tenNganh` varchar(100) COLLATE utf8mb4_vi_0900_as_cs DEFAULT NULL,
  `chiTiet` varchar(200) COLLATE utf8mb4_vi_0900_as_cs DEFAULT NULL,
  `maKhoa` varchar(10) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  PRIMARY KEY (`maNganh`,`maKhoa`),
  KEY `fk_nganh_khoa1_idx` (`maKhoa`),
  CONSTRAINT `fk_nganh_khoa1` FOREIGN KEY (`maKhoa`) REFERENCES `khoa` (`maKhoa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vi_0900_as_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nganh`
--

LOCK TABLES `nganh` WRITE;
/*!40000 ALTER TABLE `nganh` DISABLE KEYS */;
INSERT INTO `nganh` VALUES ('AC01','Kế toán',NULL,'AC'),('AC02','Kiểm toán',NULL,'AC'),('CO01','Quản lý xây dựng',NULL,'CO'),('CO02','Công nghệ kỹ thuật xây dựng',NULL,'CO'),('IT01','Công nghệ thông tin',NULL,'IT'),('IT02','Khoa Khoa học máy tính',NULL,'IT');
/*!40000 ALTER TABLE `nganh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nguoidung`
--

DROP TABLE IF EXISTS `nguoidung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nguoidung` (
  `maND` varchar(10) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  `ho` varchar(50) COLLATE utf8mb4_vi_0900_as_cs DEFAULT NULL,
  `ten` varchar(30) COLLATE utf8mb4_vi_0900_as_cs DEFAULT NULL,
  `gioiTinh` varchar(5) COLLATE utf8mb4_vi_0900_as_cs DEFAULT NULL,
  `ngaySinh` datetime DEFAULT NULL,
  `username` varchar(50) COLLATE utf8mb4_vi_0900_as_cs DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_vi_0900_as_cs DEFAULT NULL,
  `anh` varchar(100) COLLATE utf8mb4_vi_0900_as_cs DEFAULT NULL,
  `diaChi` varchar(100) COLLATE utf8mb4_vi_0900_as_cs DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_vi_0900_as_cs DEFAULT NULL,
  `sdt` varchar(30) COLLATE utf8mb4_vi_0900_as_cs DEFAULT NULL,
  `hoatDong` tinyint DEFAULT NULL,
  `maCV` varchar(10) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  PRIMARY KEY (`maND`,`maCV`),
  KEY `fk_nguoidung_chucvu_idx` (`maCV`),
  CONSTRAINT `fk_nguoidung_chucvu` FOREIGN KEY (`maCV`) REFERENCES `chucvu` (`maCV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vi_0900_as_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nguoidung`
--

LOCK TABLES `nguoidung` WRITE;
/*!40000 ALTER TABLE `nguoidung` DISABLE KEYS */;
INSERT INTO `nguoidung` VALUES ('GV001','Nguyễn Lê','Tuyên','Nam','2001-02-09 00:00:00','GV001','$2a$10$N0kh9UYbwuPj1iGNvu4PxumAbZK3YUV/4p40vuYpkxxk4J2QKzMAS','https://res.cloudinary.com/quanlykhoaluan/image/upload/v1661492554/hxihud3cmrd60433kmpp.jpg',NULL,NULL,NULL,1,'ROLE_GV'),('GVU001','Nguyễn Lê','Tuyên','Nam','2022-09-16 00:00:00','GVU001','$2a$10$AOs/XwV6KMX/YItIA6EWzOzjhk5VZDMatL2lpXxggTtlwX3ZIxcpG','https://res.cloudinary.com/quanlykhoaluan/image/upload/v1661488851/udd0pbgaxmrzya86rim9.jpg','5, Quang Trung, Q.Gò Vấp, TP.HCM','thytran@gmail.com','0907112000',1,'ROLE_GVU'),('QT001','Nguyễn Lê','Tuyên','Nam','2022-09-17 00:00:00','QT002','$2a$10$JmrqoOp0GPJW0qwlnLekjeWPI3bZeyj5i/UZF3ssp6N.FL14DZH3q','https://res.cloudinary.com/quanlykhoaluan/image/upload/v1662296618/t1iogjagqk1bnvyokb2w.jpg','5, Quang Trung, Q.Gò Vấp, TP.HCM','nguyenletuyen9.3@gmail.com','0902255676',0,'ROLE_QT'),('QT002','Nguyễn Lê','Tuyên','Nam','2022-09-15 00:00:00','QT002','$2a$10$0mA87qKaRjvkKYyLFAhToOEsXFmLxcedtjSP7tIaN4kIR2xW30ARC','https://res.cloudinary.com/quanlykhoaluan/image/upload/v1662296564/xtmql185nq4iltr5itvm.jpg','Thủ Đức','nguyenletuyen9.3@gmail.com','0937432553',1,'ROLE_GVU'),('QT003',NULL,NULL,NULL,NULL,'QT003','$2a$10$S99P83WbylsbN2IW/R0Gx.vrul5foHZdY0cvFDyRm8oUOHkKWp.I2',NULL,NULL,NULL,NULL,NULL,'ROLE_QT'),('SV002','Trần Điền','Long','Nam','2001-01-09 00:00:00','SV002','$2a$10$Z0frJC4AYzU3Rqi29p7VF.InvVPMPSZiPZGOVY1iFHh5uGj7hcU8S','https://res.cloudinary.com/quanlykhoaluan/image/upload/v1661569143/ijqn5ehk1xuphjudjb33.jpg',NULL,NULL,NULL,0,'ROLE_SV'),('SV003','Nguyễn Lê','Tuyên','Nam','2001-02-09 00:00:00','SV003','$2a$10$G3lCwUUraPZupaf6S56rzOTLHEczSU/av6Qttk4zVn2zVlGt0L22G','https://res.cloudinary.com/quanlykhoaluan/image/upload/v1661658095/kpsmktzp5o1wqfj2hooo.jpg',NULL,NULL,NULL,1,'ROLE_SV'),('SV004','Nguyễn Lê','Tuyên','Nam','2001-02-09 00:00:00','SV004','$2a$10$lumTLDux9owarbzGqPJBluma5fWIOG4Hrm1ISdUBBBj6Y3wjsT3v6','https://res.cloudinary.com/quanlykhoaluan/image/upload/v1661779083/ceui7drqyusn2nh6go07.jpg',NULL,NULL,NULL,1,'ROLE_SV');
/*!40000 ALTER TABLE `nguoidung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quantri`
--

DROP TABLE IF EXISTS `quantri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quantri` (
  `maQT` varchar(10) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  `nhiemVu` varchar(100) COLLATE utf8mb4_vi_0900_as_cs DEFAULT NULL,
  `maND` varchar(10) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  `maCV` varchar(10) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  PRIMARY KEY (`maQT`,`maND`,`maCV`),
  KEY `fk_quantri_nguoidung1_idx` (`maND`,`maCV`),
  CONSTRAINT `fk_quantri_nguoidung1` FOREIGN KEY (`maND`, `maCV`) REFERENCES `nguoidung` (`maND`, `maCV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vi_0900_as_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quantri`
--

LOCK TABLES `quantri` WRITE;
/*!40000 ALTER TABLE `quantri` DISABLE KEYS */;
INSERT INTO `quantri` VALUES ('QT001',NULL,'QT001','ROLE_QT');
/*!40000 ALTER TABLE `quantri` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sinhvien`
--

DROP TABLE IF EXISTS `sinhvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sinhvien` (
  `maSV` varchar(10) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  `nienKhoa` varchar(15) COLLATE utf8mb4_vi_0900_as_cs DEFAULT NULL,
  `tinhTrang` tinyint DEFAULT NULL,
  `maND` varchar(10) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  `maCV` varchar(10) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  `maNganh` varchar(10) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  `maKhoa` varchar(10) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  PRIMARY KEY (`maSV`,`maND`,`maCV`,`maNganh`,`maKhoa`),
  KEY `fk_sinhvien_nguoidung1_idx` (`maND`,`maCV`),
  KEY `fk_sinhvien_nganh1_idx` (`maNganh`,`maKhoa`),
  CONSTRAINT `fk_sinhvien_nganh1` FOREIGN KEY (`maNganh`, `maKhoa`) REFERENCES `nganh` (`maNganh`, `maKhoa`),
  CONSTRAINT `fk_sinhvien_nguoidung1` FOREIGN KEY (`maND`, `maCV`) REFERENCES `nguoidung` (`maND`, `maCV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vi_0900_as_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sinhvien`
--

LOCK TABLES `sinhvien` WRITE;
/*!40000 ALTER TABLE `sinhvien` DISABLE KEYS */;
INSERT INTO `sinhvien` VALUES ('SV003','2022',1,'SV003','ROLE_SV','IT01','IT'),('SV004','2022',1,'SV004','ROLE_SV','IT02','IT');
/*!40000 ALTER TABLE `sinhvien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tieuchi`
--

DROP TABLE IF EXISTS `tieuchi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tieuchi` (
  `maTC` int NOT NULL AUTO_INCREMENT,
  `noiDung` varchar(200) COLLATE utf8mb4_vi_0900_as_cs DEFAULT NULL,
  `phanTram` int DEFAULT NULL,
  PRIMARY KEY (`maTC`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vi_0900_as_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tieuchi`
--

LOCK TABLES `tieuchi` WRITE;
/*!40000 ALTER TABLE `tieuchi` DISABLE KEYS */;
INSERT INTO `tieuchi` VALUES (1,'Hội đồng',60),(2,'Giảng viên',40);
/*!40000 ALTER TABLE `tieuchi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tongketkhoaluan`
--

DROP TABLE IF EXISTS `tongketkhoaluan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tongketkhoaluan` (
  `maKQ` int NOT NULL AUTO_INCREMENT,
  `maSV` varchar(10) COLLATE utf8mb4_vi_0900_as_cs DEFAULT NULL,
  `maKL` int DEFAULT NULL,
  `ketQua` varchar(100) COLLATE utf8mb4_vi_0900_as_cs DEFAULT NULL,
  `diem` decimal(3,2) DEFAULT NULL,
  `nam` varchar(15) COLLATE utf8mb4_vi_0900_as_cs DEFAULT NULL,
  `maKhoa` varchar(10) COLLATE utf8mb4_vi_0900_as_cs DEFAULT NULL,
  PRIMARY KEY (`maKQ`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vi_0900_as_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tongketkhoaluan`
--

LOCK TABLES `tongketkhoaluan` WRITE;
/*!40000 ALTER TABLE `tongketkhoaluan` DISABLE KEYS */;
INSERT INTO `tongketkhoaluan` VALUES (1,NULL,NULL,NULL,NULL,NULL,NULL),(3,'SV003',12,'C+',6.95,'2022','IT');
/*!40000 ALTER TABLE `tongketkhoaluan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-04 21:33:15
