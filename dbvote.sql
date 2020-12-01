/*
 Navicat Premium Data Transfer

 Source Server         : mysql_mamp
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:8889
 Source Schema         : dbvote

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 01/12/2020 20:48:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ms_anggota
-- ----------------------------
DROP TABLE IF EXISTS `ms_anggota`;
CREATE TABLE `ms_anggota` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ms_anggota
-- ----------------------------
BEGIN;
INSERT INTO `ms_anggota` VALUES (1, 'Admin', 'puccteam', 'pucc.team@gmail.com', '$P$BSizhHowMguqtYKP3TL63c3slx78Cn.');
INSERT INTO `ms_anggota` VALUES (2, 'Aldy', 'aldy', 'aldy.irfan16@gmail.com', '$P$BRRJkgXVmhr1HS9Vp/8vfA5LwTe.fc0');
INSERT INTO `ms_anggota` VALUES (3, 'Programming', 'pro', 'programming@pucc.or.id', '$P$BU54/mJbZqi/9HRTRKOtmyQf.HE72Z.');
INSERT INTO `ms_anggota` VALUES (4, 'Khairul Fajri', 'cf75', 'kfazri75@gmail.com', '$P$Bau0D6wbrdMogYZV2THZnLCw57Hi.I/');
INSERT INTO `ms_anggota` VALUES (5, 'netsec', 'netsec', 'dickysriwengi@gmail.com', '$P$B5EWxeo.vfikn3c5gk1qzllaB5aZLZ.');
INSERT INTO `ms_anggota` VALUES (6, 'Multimedia', 'mulmed', 'mulmed@pucc.or.id', '$P$BxLxBU8CtLgQmVA0nGUUYdb5QsHyof/');
INSERT INTO `ms_anggota` VALUES (7, 'Heru Ardiansyah', 'arai', 'heruarai3@gmail.com', '$P$BtKi9Hr4sx1KQX6UC1CjMhC7tsg/Ab1');
INSERT INTO `ms_anggota` VALUES (8, 'Muhammad Agung', 'mhdagung.pucc1', 'mohmd.agung@gmail.com', '$P$B84HJQvX2REm8eVqgxhyBCDxytdO8.0');
INSERT INTO `ms_anggota` VALUES (9, 'Milwansyah Siregar', 'milwan', 'milwan0809@gmail.com', '$P$B7JVyAIX6zYAMBz9AC1lPHiy9tbt22.');
INSERT INTO `ms_anggota` VALUES (10, 'Ali Akbar', 'akli', 'neverbeband@gmail.com', '$P$Bhd73HKkHhdt7H/FrSZCTRWUWXgY200');
INSERT INTO `ms_anggota` VALUES (11, 'coba beta', 'coba', 'coba@pucc.or.id', '$P$BAJ2rSIWmq7r5sqlX/TC1HLc/ktX.L1');
INSERT INTO `ms_anggota` VALUES (12, 'andre syahidu', 'andre', 'andresyahidu@gmail.com', '$P$BBGgWqiaBCgbSwf8WRpV7y/.An2/sP0');
INSERT INTO `ms_anggota` VALUES (13, 'Muhammad Aldy', 'mancaper89', 'mancaper89@gmail.com', '$P$Bysx9eOMI0toMYlj1ratkfgTMtSz3g.');
INSERT INTO `ms_anggota` VALUES (14, 'Muhksin Al hafsi', 'muhksin', 'Muhksinalhafsi06@gmail.com', '$P$BqVF1LjNLvUG84riISblyk92kQ0NmH0');
INSERT INTO `ms_anggota` VALUES (15, 'Riswan', 'Riswan', 'riswanto.hsb@gmail.com', '$P$BicME.yAxA9I2zCEAKhY1O7ydXtR0R0');
INSERT INTO `ms_anggota` VALUES (16, 'Muhammad Rahul Padila', 'rafa1996', 'rahul.choolzs123@gmail.com', '$P$BtEx8w4nP459jDC.kyCGFGOuJjyiep.');
INSERT INTO `ms_anggota` VALUES (17, 'yurisandikaputra', 'yurisandikaputra', 'yurisandikaputra@yahoo.com', '$P$BTnuuHpMV/Le2gggRXeoMnPRJIthX4/');
INSERT INTO `ms_anggota` VALUES (18, 'Irfannur Diah', 'Irfannur Diah', 'dzeuto@gmail.com', '$P$BgMj.vTRfbitwe/E.GSfClNZSBW7pT/');
INSERT INTO `ms_anggota` VALUES (19, 'yuri', 'yuri', 'yurisandika42@gmail.com', '$P$BNGII4cSpkKWkmhMOHgWWrlMNC75GX.');
INSERT INTO `ms_anggota` VALUES (20, 'rio', 'rio', 'riochristo96@gmail.com', '$P$BmwL69nOwd//pjWY3qbiVdStAZtqNQ0');
INSERT INTO `ms_anggota` VALUES (21, 'darmansyah', 'darmansyah', 'darmans65@gmail.com', '$P$BXQdRig0HIjivPwLDLb8h0RuXdtevS1');
INSERT INTO `ms_anggota` VALUES (22, 'Putri Ellysah Damanik', 'Putri Ellysah Damanik', 'pellysah@gmail.com', '$P$B4zLFpM8hG15oW5I7ypfVUpjJfuYap1');
INSERT INTO `ms_anggota` VALUES (23, 'Hafis', 'Hafis', 'muhammadhafis21@yahoo.com', '$P$BO7D.UN974i2sdJ2i4bKXXxy0o/BrK.');
INSERT INTO `ms_anggota` VALUES (24, 'Raja Arif', 'Raja Arif', 'rajaariffs25@gmail.com', '$P$B377AMcu4aGLbTSmu.IkzJLq0.5fUh.');
INSERT INTO `ms_anggota` VALUES (25, 'Muhammad Ikhsan Yusuf', 'Muhammad Ikhsan Yusuf', 'muhammadikhsanyusuf29@gmail.com', '$P$B6/0.XeR2Id8QgSLYcWKquPpsrYufd0');
INSERT INTO `ms_anggota` VALUES (26, 'Afandi Pratama Siregar', 'afandi', 'afandipratamasiregar@gmail.com', '$P$BDG6QN5kbkG8jviah1.O5wzHyMbiCp/');
INSERT INTO `ms_anggota` VALUES (27, 'Arit Putra', 'ariputra.pucc2', 'ariputramanik97@gmail.com', '$P$B0SVJ8TMbg4wBW5rrvOJdXR/xcDZMp0');
INSERT INTO `ms_anggota` VALUES (28, 'Dicky Yusmandari Putera', 'Dicky Yusmandari Putera', 'dickyyputera@gmail.com', '$P$BuA1EuibHnBVfjdxrRZeJjL3WEgRLG1');
INSERT INTO `ms_anggota` VALUES (29, 'Nadila Aprilia', 'Nadila Aprilia', 'nadilaaprilia47@gmail.com', '$P$BZOfAy.P.7GvF7XlQ1hoUVLc809Ygu0');
INSERT INTO `ms_anggota` VALUES (30, 'Andhika Prayoga', 'andhikaprayoga.pucc2', 'andikaa.prayoga98@gmail.com', '$P$BlHqzRf536Hvg1E0AHwbZUOFwADEHM.');
INSERT INTO `ms_anggota` VALUES (31, 'Nadila Aprilia', 'nadilaaprilia.pucc1', 'nadilaudile@gmail.com', '$P$BZBJOCywjxm7mDvTlBXERtGpvFDlqv.');
INSERT INTO `ms_anggota` VALUES (32, 'Ayu Pratiwi', 'ayupratiwi.pucc2', 'ayupratiwi199@gmail.com', '$P$BaHDy3C1gNf4F73ymKZsBijq5/E8Ie/');
INSERT INTO `ms_anggota` VALUES (33, 'Selly Camawarni', 'sellycamawarni.pucc2', 'sellycamawarni07@gmail.com', '$P$BWj9oI4rrlFY3NOy6fw3gOlmQGS8.K/');
INSERT INTO `ms_anggota` VALUES (34, 'Alan Prayogi', 'alanprayogi.pucc2', 'Alanprayogi1@gmail.com', '$P$Byz.3VntxCCx6dsFS01Y3QC4KLVLB6.');
INSERT INTO `ms_anggota` VALUES (35, 'khairulamri', 'khairulamri', 'khairulamri9696@gmail.com', '$P$BLhr7AxItqgYxDdIWVirsjySXhPcTH/');
INSERT INTO `ms_anggota` VALUES (36, 'Rama Dhan', 'Rama Dhan', 'ramadhan.rdn15@gmail.com', '$P$BDJCkByk8FG79o3oXJ9aIvOFRdpyjl.');
INSERT INTO `ms_anggota` VALUES (37, 'Givar Elva Rizky H', 'givarpucc4', 'givar99@gmail.com', '$P$BLizcdOxKQ25hGthEVsCd3AdMutalW/');
INSERT INTO `ms_anggota` VALUES (38, 'M Amien Ardian', 'amienpucc4', 'kazuyakisaragi85@gmail.com', '$P$BJ2rqP6S8npCsTIVySCsPl/oNraKC80');
INSERT INTO `ms_anggota` VALUES (39, 'Wahyu Hadi Winata', 'wahyu', 'wahyu.hadiwinata@gmail.com', '$P$BjJqBzUdOoD6Ipru1x7anb4rmzDdWf1');
INSERT INTO `ms_anggota` VALUES (40, 'wahyu hadi', 'wahyu hadi', 'hadiwinata180@gmail.com', '$P$Bp0U6xjKEpaXP2zKewy.xZ/wZLuwHv.');
INSERT INTO `ms_anggota` VALUES (41, 'Maharani Sofi', 'Maharani Sofi', 'sofhim@yahoo.com', '$P$BTnH29Yxpz0mMZQDrbNpdWIiAqBpfq1');
INSERT INTO `ms_anggota` VALUES (42, 'alwirinlady', 'alwirinlady', 'alwirinaldi@gmail.com', '$P$BmMgmFHwf7yTIVdIJ75cyp/SCHTz7l/');
INSERT INTO `ms_anggota` VALUES (43, 'dwigita', 'dwigita', 'dwigita26@gmail.com', '$P$BwuL/lJiUkUFgAjD9Y73YBIO8eyLQD.');
INSERT INTO `ms_anggota` VALUES (44, 'Fikri Fahrezy', 'Fikri Fahrezy', 'fikrifahrezy17@gmail.com', '$P$BQ.5gyy2OgAji3MhIGQVrwqjENwhCX0');
INSERT INTO `ms_anggota` VALUES (45, 'Fikri', 'Fikri', 'fahrezyfikri@gmail.com', '$P$BEfGJrzYzLiosaxm8gzL5vCVeGWccz1');
INSERT INTO `ms_anggota` VALUES (46, 'pansywarkentin', 'pansywarkentin', 'pansycurr8369@moretrendstore.com', '$P$BwtRYsl8okrlEH/gH2GKmOjvpufm0/0');
INSERT INTO `ms_anggota` VALUES (47, 'Vionita Harvi', 'vionitasrg.pucc1', 'vionita.harvi16@gmail.com', '$P$BACcqfWpWj47b3gbEc.6Gxjrs.cvOu0');
INSERT INTO `ms_anggota` VALUES (48, 'Khairul Amri', 'Khairul Amri', 'khairulamri1411@gmail.com', '$P$BwFmdle67xgnX.yRhgOvwlgvLwYS/u.');
INSERT INTO `ms_anggota` VALUES (49, 'pandi', 'pandi', 'pandimungkinkah@yahoo.com', '$P$BXFhRjWwhihYklH95Wbgx7uRBuorvw1');
INSERT INTO `ms_anggota` VALUES (50, 'christopherlamso', 'christopherlamso', 't.iend.un.g5684@gmail.com', '$P$BBsF9kqz3Wurs3aRANFBt9sxPpELgJ.');
INSERT INTO `ms_anggota` VALUES (51, 'putra', 'putra', 'p.oetra_911@yahoo.com', '$P$B.EJmPbXqQX0QodmaMRTT7UXHkhpwI.');
INSERT INTO `ms_anggota` VALUES (52, 'irwan syaputra siregar', 'irwanpucc4', 'hirwansyah161@gmail.com', '$P$BCou7xBh8iBAw8jy1tl6ODJzufrx3L1');
INSERT INTO `ms_anggota` VALUES (53, 'Fira Sri Handayani', 'firasri.pucc1', 'firahandayani30@gmail.com', '$P$BFXLsILU.8pvi998ySLLCi2G6l3q6a0');
INSERT INTO `ms_anggota` VALUES (54, 'Putri Ayu Lestari', 'putriayu.pucc2', 'Putri250897@gmail.com', '$P$BddIOIHitWWxLnBRGQ0NrMoR2aDoKS.');
INSERT INTO `ms_anggota` VALUES (55, 'Aditya Rahman', 'adityarahman.pucc2', 'rahmanaditya639@gmail.com', '$P$BChQ.RN7zafIOcewXhT33nAbr6hIsM.');
INSERT INTO `ms_anggota` VALUES (56, 'ilmam alfansyah', 'ilmam alfansyah', 'ilmanalfansyah29@gmail.com', '$P$BKul.VyB5bfqMl0gJoWh3kcwsKRK65/');
INSERT INTO `ms_anggota` VALUES (57, 'Yuwana Tin Miliya', 'yuwanatin.pucc2', 'yuwanatin31@gmail.com', '$P$BlpLZA1YtR5s3Qttk1k8a1srD0O7bq/');
INSERT INTO `ms_anggota` VALUES (58, 'nugroho', 'nugroho', 'nilo@mastahweb.com', '$P$Bwel5EFxRDeNdU8LOS.yrGuFLdul35.');
INSERT INTO `ms_anggota` VALUES (59, 'Agung Taruna', 'AnakPolos', 'agungtaruna02@gmail.com', '$P$BSayCPzYpSnYI2iTBLhEo20M7nc7UJ/');
INSERT INTO `ms_anggota` VALUES (60, 'Arif Yuda Ananda', 'arifyudha.pucc2', 'arifyoedhaananda24@gmail.com', '$P$Bh0lBX9V6yrGYgRbKYrWjfYmZ/JxKg/');
INSERT INTO `ms_anggota` VALUES (61, 'Melli Tiara', 'mellitiara.pucc2', 'melly.tiara92@gmail.com', '$P$ByRG.r0FwHYEMCihIoHciYsxRXFkZO/');
INSERT INTO `ms_anggota` VALUES (62, 'Arif Budiman', 'arifbudiman.pucc2', 'arif.budiman8797@yhoo.co.id', '$P$BWbBYOXQEcRP9j6rF1iQaxP/X1DHDI1');
INSERT INTO `ms_anggota` VALUES (63, 'Nugroho', 'nilo', 'nilocatur@gmail.com', '$P$BLqcEnZW0a2kU.kdSzJGmg4XrXs7IP.');
INSERT INTO `ms_anggota` VALUES (64, 'Rian Syehan Pratama', 'ryansyehan02', 'ryansyehan02@gmail.com', '$P$BOnr66al071nLrEQ4xOEO7PLJyu.IX1');
INSERT INTO `ms_anggota` VALUES (65, 'Syiffa Cahya Pratiwi', 'syiffacahya.pucc2', 'syiffacahya99@gmail.com', '$P$B2BODIY3hQ9DBAziLg/plIl7FDKfkp/');
INSERT INTO `ms_anggota` VALUES (66, 'Sans', 'ihsanmhd_', 'ihsanmhd01@gmail.com', '$P$B1JWGx4fohhcUU2N7CxlojTY7UEi6f0');
INSERT INTO `ms_anggota` VALUES (67, 'reza', 'reza', 'rezafenanda2@gmail.com', '$P$Bgx3GnHQXJGgzjvYGKxcavKHOBYa/Z0');
INSERT INTO `ms_anggota` VALUES (68, 'Muhammad Andhika', 'mhdandika.pucc2', 'andikamuhammad742@gmail.com', '$P$BLI/lAyT6AJg56jz8iYt36iAQAnI.e/');
INSERT INTO `ms_anggota` VALUES (69, 'Vika Anggraeni', 'vikaanggra.pucc2', 'vikaanggraeni.wardoyo@gmail.com', '$P$BhzJ6R0q8yhdKyx3maaG3YuXHrmPKB1');
INSERT INTO `ms_anggota` VALUES (70, 'Muhammad Ridwan Rambe', 'ridwanrambe@founderpucc', 'ridwan.eno@gmail.com', '$P$BrbIXzqOZzXSudWV0kXYPS2mgPP98m0');
INSERT INTO `ms_anggota` VALUES (71, 'Suparmi', 'suparmi.pucc2', 'suparmi1997@gmail.com', '$P$BpSoiFCOslz7m7B5nq6tylrDS1bDO51');
INSERT INTO `ms_anggota` VALUES (72, 'Ali Aman', 'aliamannasty', 'aliamannasty@gmail.com', '$P$BM3MmXFuMHhPaYukd8J0h/s468wzpB1');
INSERT INTO `ms_anggota` VALUES (73, 'Fitri', 'fitri.pucc2', 'fitri170797@gmail.com', '$P$BDaXu.YeII4QGNzwP0xzVRuF1Xomwp0');
INSERT INTO `ms_anggota` VALUES (74, 'Bayu Zanatun Na\'im', 'bayuzanatun.pucc2', 'bayunaim07@gmail.com', '$P$BMFf/HQH.xFaT1JwGkiwfgfrYnXynQ0');
INSERT INTO `ms_anggota` VALUES (75, 'Sapta', 'sapta.pucc2', 'sapta.agung007@gmail.com', '$P$B0R86VmbrYi9lZWFkIZWVDfv3/dgG4.');
INSERT INTO `ms_anggota` VALUES (76, 'Amelia Novia Syahfitri (Amel Cantik)', 'amelinovia.pucc2', 'amelianovia01@gmail.com', '$P$B2hzXooPuZ4L1HonFa.FucktJi5unO1');
INSERT INTO `ms_anggota` VALUES (77, 'Sri Mela Dewi', 'srimela.pucc2', 'meladewi86@gmail.com', '$P$BK/b0laKh7EebqVc9P35iJzqbOpjKh/');
INSERT INTO `ms_anggota` VALUES (78, 'Vicky Putri Dwi Lesthary', 'vickyputri.pucc2', 'vdwilesthary@gmail.com', '$P$BPOYQLf.bC2hIXpsfMZMj6Lj3Oabz3.');
INSERT INTO `ms_anggota` VALUES (79, 'Desvira Putri', 'desviraputri.pucc2', 'desviraputri12@gmail.com', '$P$BPMeHqiBWQSz5PeKrfNe83Uw/6l8Di0');
INSERT INTO `ms_anggota` VALUES (80, 'Luthfi Asri', 'luthfiasri.pucc2', 'luthfiasri91@gmail.com', '$P$BcfnDWIYah1r/wcoAeHqNPPAsZlisC1');
INSERT INTO `ms_anggota` VALUES (81, 'Albar Oktaha', 'albaroktaha.pucc2', 'albaroktahaa@gmail.com', '$P$BMCV16dS/xFPZt6aKafwt7hDt5C9Jd/');
INSERT INTO `ms_anggota` VALUES (82, 'Surya Eka Pratama', 'suryaeka.pucc2', 'suryae755@gmail.com', '$P$B07jfoRjtPlHNltebwOkWIg3XV8.Fu/');
INSERT INTO `ms_anggota` VALUES (83, 'Wahfiuddin Surya', 'wahfisurya.pucc2', 'Wahfisurya96@gmail.com', '$P$BHEKrq7VgI5hPKorRG8cMC2IG6cbU7/');
INSERT INTO `ms_anggota` VALUES (84, 'Febri Pranata', 'febripranata.pucc1', 'Febripranata123@gmail.com', '$P$BlHaYIB78JC294VfpIozUkwyN.eX6S1');
INSERT INTO `ms_anggota` VALUES (85, 'Muhammad Ikhsan', 'Muhammad_Ikhsan.pucc2', 'ikhsan.misaki35@gmail.com', '$P$BEyRf.6kaaUMNwgKjI2J37Mbvs8guM0');
INSERT INTO `ms_anggota` VALUES (86, 'Nur Prasetyo', 'n.prasetyo', 'nur.prasetyo7@gmail.com', '$P$B2XcXiaPhZadH4M2vCsrKn4SlcrIYO0');
INSERT INTO `ms_anggota` VALUES (87, 'Yoppie Firstain M', 'YoppieFirstain@pucc3.or.id', 'yoppiefirstain@gmail.com', '$P$B.xibcbtnvKXpy4Uffoz1XxrbBJxxT1');
INSERT INTO `ms_anggota` VALUES (88, 'Rozi', 'm.fahcrurozi@pucc3.or.id', 'fachrurozi125@gmail.com', '$P$BKxp.2V.2iI5z6zdrSNdYYMmcEFKmP/');
INSERT INTO `ms_anggota` VALUES (89, 'Suci Sundari', 'SuciSundari@pucc3.or.id', 'ucitkj8@gmail.com', '$P$BLeq6NuQCbYDKLSlc5R9H/J/frof01.');
INSERT INTO `ms_anggota` VALUES (90, 'Sabrina Nurul Afikah', 'Sabrina_N.A@pucc3.or.id', 'sabrina.nafikah@gmail.com', '$P$B.yPqhohUkcTS4et.9VNHpYpAMwCDl/');
INSERT INTO `ms_anggota` VALUES (91, 'iqbal fajar', 'IQBAL_FAJAR@pucc3.or.id', '8ballswag08@gmail.com', '$P$BUZdflS.XschPqw45CmF3cCxaAIPX8/');
INSERT INTO `ms_anggota` VALUES (92, 'Kristiawan Telaumbanua', 'KristiawanTelaumbanua@pucc3.or.id', 'kristiawantelaumbanua@gmail.com', '$P$B7xB1eK03ZlpWToCgdtmPVVJOX27V..');
INSERT INTO `ms_anggota` VALUES (93, 'M Rizky Juliansyah', 'Rizky_Juliansyah@pucc3.or.id', 'razor03g@gmail.com', '$P$BEiROKArVbbgjnajW6sIHpvk2RE0Yu/');
INSERT INTO `ms_anggota` VALUES (94, 'SOFIA', 'SOFIA@pucc3.or.id', 'sofiaandriayani271999@gmail.com', '$P$BkmuErs4s/NYyglJhbPGHtZKF/mxJL.');
INSERT INTO `ms_anggota` VALUES (95, 'alda tri rizki', 'alda_tri@pucc3.or.id', 'aldatririzky03@gmail.com', '$P$BT1eYshi97ERuRSR1mFl6ktsZ99W5O/');
INSERT INTO `ms_anggota` VALUES (96, 'Sindi Mayuni Nasution', 'Sindi_Mayuni@pucc3.or.id', 'sindimayuni025@gmail.com', '$P$BlWA1UKaHmokNOuoladDljfzO7ZELB1');
INSERT INTO `ms_anggota` VALUES (97, 'Hafiz Mutakin', 'Hafiz@pucc3.or.id', 'hafizc8@gmail.com', '$P$Bzl6BKz17pP5kAqfSDSktq1Th9doHK0');
INSERT INTO `ms_anggota` VALUES (98, 'Kevin Zulkarnaen Tohonan Siagian', 'Kevin_Z.T.S@pucc3.or.id', 'kevinsiagian77@gmail.com', '$P$BNmEcNsvy/2nDK49bDZ.nLHXdoo2vM0');
INSERT INTO `ms_anggota` VALUES (99, 'Siti Massita', 'Siti_Ma@pucc3.or.id.id', 'Sitimassita23@gmail.com', '$P$BGWICACqkYxwM.gU9eqL4scteZWJAw1');
INSERT INTO `ms_anggota` VALUES (100, 'erdyan', 'erdyan@pucc3.or.id', 'erdyan.erdyan987@gmail.com', '$P$BuJpCgGSgacJ9fP6rjGch/zI8H59zF/');
INSERT INTO `ms_anggota` VALUES (101, 'Apriana', 'Apriana@pucc3.or.id', 'apriananana10@gmail.com', '$P$B2xiVfSDa9w1m6Iv3i0kUNBIQzN89u1');
INSERT INTO `ms_anggota` VALUES (102, 'Muhammad Rizky maulana', 'm.Rizky_Maulana@pucc3.or.id', 'Rizky.rm08@gmail.com', '$P$BsEWoO.oJ0edXQcUjWyVsE498bIxyW/');
INSERT INTO `ms_anggota` VALUES (103, 'Sultan', 'sultan@pucc3.or.id', 'sutanibnu01@gmail.com', '$P$Bkg6QXUYoK3Wu5ade2kY/iehanFZ0S/');
INSERT INTO `ms_anggota` VALUES (104, 'Muhammad Iswandi', 'muhammadpucc4', 'mhdiswan123@gmail.com', '$P$BOSoCMGgCNokMB9plqcEtZSEWJACaG/');
INSERT INTO `ms_anggota` VALUES (105, 'Hesti Nurul Novianti', 'Hesti@pucc3.or.id', 'simdi.hestinurulnovianti@gmail.com', '$P$BLmCfLUyGLuIA4arEEw4zf2PrM6Rm0.');
INSERT INTO `ms_anggota` VALUES (106, 'adit aditya', 'Aditya@pucc3.or.id', 'adityasprasetya01@gmail.com', '$P$BAweuRrnO3aDpsITzV9cKNNN.p4JBc/');
INSERT INTO `ms_anggota` VALUES (107, 'Muhammad Yakub Ramadhan', 'M.Yakub@pucc3.or.id', 'myr1299.vfx@gmail.com', '$P$BCr.fbAmbzdpW8Y9egEEA0aKkpZQai1');
INSERT INTO `ms_anggota` VALUES (108, 'divaa ardiansah', 'divapucc3', 'divaardiansah2199@gmail.com', '$P$Bh1qaV.JYvoCUOg9Qnzvn.s/3huAYz1');
INSERT INTO `ms_anggota` VALUES (109, 'Fachrizal', 'Fachrizal@pucc3.or.id', 'Fachrizal@gmail.com', '$P$BnVPxUAZ9ySt.9x5iEalJDwoJX4x5H/');
INSERT INTO `ms_anggota` VALUES (110, 'Welly', 'Welly@pucc3.or.id', 'welly.co.id@gmail.com', '$P$Bo6wk2e1gKJQhNd5SloVSsKS5Mse1R0');
INSERT INTO `ms_anggota` VALUES (111, 'niasah@pucc3.or.id', 'niasah winta matondang', 'niasahwinta18@gmail.com', '$P$BOZ88fQV/f/POuUUNtO3aBlcfwqcPF0');
INSERT INTO `ms_anggota` VALUES (112, 'rizki widya', 'arimbi@pucc3.or.id', 'rizkywidyaarimbi@gmail.com', '$P$Boib5nHnGLQZYRzDD6aBK2yU/U4giP.');
INSERT INTO `ms_anggota` VALUES (113, 'Ridho Hariono', 'ridhopucc3', 'ridhohariono1904@gmail.com', '$P$BvjCipxLOy97xcZdLb.TUJ.hZQ6.GL/');
INSERT INTO `ms_anggota` VALUES (114, 'Mahtyaz Dwiky Pandapotan', 'mahtyazpucc4', 'mahtyaz89@gmail.com', '$P$BjMQu0Ff7cH8pqHnb6aS/vwiQnqr3L1');
INSERT INTO `ms_anggota` VALUES (115, 'Rianda agis pratama', 'Rianda@pucc3.or.id', 'riandaagis30@gmail.com', '$P$BPHpMUqsZLUo/16KQAv3l1UB/BLf7P0');
INSERT INTO `ms_anggota` VALUES (116, 'Dimas Rakasiwi', 'Dimas_R@pucc3.or.id', 'Dimas@gmail.com', '$P$B8LK5r7c7SfVusIm3oyQTwxeSwy12x.');
INSERT INTO `ms_anggota` VALUES (117, 'Rinaldi', 'Rinaldi@pucc3.or.id', 'aldiboy528001@gmail.com', '$P$BSCogZb/0otEpQTkpe.Yd.Jv57c08i.');
INSERT INTO `ms_anggota` VALUES (118, 'Karmila Febiola', 'karmilapucc4', 'karmilafebiola07@gmail.com', '$P$BslSYlDhQqun/iQz.Z8QgwdRpS1/Rn.');
INSERT INTO `ms_anggota` VALUES (119, 'Dwi Amaliah', 'Dwi_Amaliah@pucc3.or.id', 'dwiamaliah1999@gmail.com', '$P$Bsg9GkvdXJov1MuZvxbGBY3jrqEotT/');
INSERT INTO `ms_anggota` VALUES (120, 'cici nursapani', 'cici_N@pucc3.or.id', 'cicisafani0306@gmail.com', '$P$BXQFs4fMyU59xuDwUUTrOO2iRgv1dM.');
INSERT INTO `ms_anggota` VALUES (121, 'Deah Risa Adelia', 'Deah_Risa@pucc3.or.id', 'risadea61@gmail.com', '$P$B3DkRybFHs6im92RiKc.j2FIGF7KmE.');
INSERT INTO `ms_anggota` VALUES (122, 'jepri pelis', 'jepri@pucc3.or.id', 'jepripliss@gmail.com', '$P$BhUYwPGgjFTI4KLeUEINBaMOy41ntR/');
INSERT INTO `ms_anggota` VALUES (123, 'Muhammad Angga Pratama', 'angga@pucc3.or.id', 'angga@gmail.com', '$P$B3mjq8JaQZLft7Mvnb5B6wJCEbEu4A.');
INSERT INTO `ms_anggota` VALUES (124, 'Muhammad Dedek YANSYAH', 'dedek@pucc3.or.id', 'dedek2203@gmail.com', '$P$Bij1YMOmhjQD/xEfypAW1eVYJira.3/');
INSERT INTO `ms_anggota` VALUES (125, 'Muhammad Rizky Azis Azhari', 'Rizky_Azis@pucc3.or.id', 'rizkyaziz148@gmail.com', '$P$BwnHvYFNfFlvMlDd4BEetBjlmOwE2n0');
INSERT INTO `ms_anggota` VALUES (126, 'Mesarudi Laia', 'Mesarudi@pucc3.or.id', 'mesarudilaia174@gmail.com', '$P$Bgj3qvL/lvYw.oNAeyClADz2CI4wvU/');
INSERT INTO `ms_anggota` VALUES (127, 'NURFAZIRA', 'nurfazira@pucc3.or.id', 'nurfazira143@gmail.com', '$P$BxFMX8dc4p0nLF.QGs6AOLRW/JOtiz1');
INSERT INTO `ms_anggota` VALUES (128, 'Briyandana', 'Briyandana@pucc3.or.id', 'briyandana07@gmail.com', '$P$B/7DXAAgT7znI88T5guP1YDuPyiMwl.');
INSERT INTO `ms_anggota` VALUES (129, 'Juan Rifky', 'Rifky@pucc3.or.id', 'juanrifky26@gmail.com', '$P$Bfk/7zAev8Rl28dqHuge90oeYYO/pr.');
INSERT INTO `ms_anggota` VALUES (130, 'GERAL ADITYA HANIF', 'geral@pucc3.or.id', 'gerald141100@gmail.com', '$P$B/dcV9XVFbdpIq8zSxYVW4WYQ8pGA10');
INSERT INTO `ms_anggota` VALUES (131, 'edy samuel sihotang', 'edy_S@pucc3.or.id', 'edysitohang356@gmail.com', '$P$BFMNUKT2IoNc1P7MDp/Jo.ITTYjoV/1');
INSERT INTO `ms_anggota` VALUES (132, 'Syalman Al Faryz Hasibuan', 'Syalman@pucc3.or.id', 'Syalman@gmail.com', '$P$BsGLhj3sIjujOWkfqoWkEe4OTdRAni0');
INSERT INTO `ms_anggota` VALUES (133, 'Ahmad Luthfi', 'ahmadluthfi.pucc2', 'ahmadluthfi948@gmail.com', '$P$BFQf.QQ6mTqmngjuR4IElobwcrjlet.');
INSERT INTO `ms_anggota` VALUES (134, 'Meli Tiara', 'Meli@pucc2.or.id', 'meli@gmail.com', '$P$BiPJrfeAc4F7GFpIjRxCfkLiXnYume/');
INSERT INTO `ms_anggota` VALUES (135, 'bayu naim', 'bayunaim', 'b.zanatun@yahoo.com', '$P$B/vt1lCe8IRnhajGwqsalY6txqJtPC0');
INSERT INTO `ms_anggota` VALUES (136, 'Mahadi', 'mahadipucc4', 'ndraadidi@gmail.com', '$P$BxRwp5BMLEiqOusjqFTj3O4OZiL8.A.');
INSERT INTO `ms_anggota` VALUES (137, 'CodeCrates', 'muhammadhabibpucc4', 'habibsitompul99@gmail.com', '$P$BnxDpaiLKetyrRszr5g6u7aYFh9re6.');
INSERT INTO `ms_anggota` VALUES (138, 'Richard Brian Nainggolan', 'richardpucc4', 'richard@mediatama.id', '$P$BPDZqvNoelu226TJZeYDKisiJwRWDr/');
INSERT INTO `ms_anggota` VALUES (139, 'azkal putra Mulya', 'azkalpucc4', 'azkalputramulya92@gmail.com', '$P$BksoctTyf35BBUPtqZglH9KFVi1gqr0');
INSERT INTO `ms_anggota` VALUES (140, 'Restu Nofendi', 'restupucc4', 'restu.nofendi10@gmail.com', '$P$BIzAEB9K5oxAlLGYy9SmtHzw0YrUHe0');
INSERT INTO `ms_anggota` VALUES (141, 'Yogi Prayogo', 'yogipucc4', 'prayogoyogi1999@gmail.com', '$P$Bj4UhkM3Tq4/UAwPGcZAgRC.x7H2d7.');
INSERT INTO `ms_anggota` VALUES (142, 'Yudha Andhika Rahman', 'yudhapucc4', 'yudhaandika16@gmail.com', '$P$B2GZj1EpjWMuCtOdyylQdfJWxoIvYu.');
INSERT INTO `ms_anggota` VALUES (143, 'Ismal Zikri', 'ismalpucc4', 'zikriismal42@gmail.com', '$P$BhxEs6CV4bnpyM90QFU/FDjDB/v/Jv/');
INSERT INTO `ms_anggota` VALUES (144, 'Yedutun Bill Situmorang', 'yedutunpucc4', 'bg.yedutun@gmail.com', '$P$B7T.x6vL0i7VV77az47JCX6BwdXRu0/');
INSERT INTO `ms_anggota` VALUES (145, 'Hermansyah Hermansyah', 'hermansyahpucc4', 'syahh8785@gmail.com', '$P$BFDLlbO.MC4QPPSCJ1JqBpMNdWhD3b/');
INSERT INTO `ms_anggota` VALUES (146, 'Fikri handiko', 'fikripucc4', 'fikrihandikoo@gmail.com', '$P$B7A1rAJd2y5xc5FeGo/.PlMWwGSjVG0');
INSERT INTO `ms_anggota` VALUES (147, 'Romanus repair ponse sarumaha', 'romanuspucc4', 'romanussar1234@gmail.com', '$P$BwhvYMD4tpI68mdjLYlqcbb5YHYpHC0');
INSERT INTO `ms_anggota` VALUES (148, 'Muhammad Rizky Alfama', 'muhammadrizkypucc4', 'alfamagroove@gmail.com', '$P$Bl0UK2/zcRLzKUhFGnSKzZRahf0486/');
INSERT INTO `ms_anggota` VALUES (149, 'Indah Sari Lubis', 'indahpucc4', 'indahsarilubis19@gmail.com', '$P$B/cHXP2Hn1WPnjVlR..zo6erHVaRCh0');
INSERT INTO `ms_anggota` VALUES (150, 'Muhammad Habibi Zain', 'muhammadzainpucc4', 'abi29zain@gmail.com', '$P$BPV7cpB/YdLY9VRDRC7Ge1n15v8oSm.');
INSERT INTO `ms_anggota` VALUES (151, 'Allisa Dwi Octaviani', 'allisapucc4', 'dwi.allisa18@gmail.com', '$P$Bm9E2GyuQc3Ty6upAVTOAGxuEzLIK21');
INSERT INTO `ms_anggota` VALUES (152, 'Amien Ardian', 'amienardianpucc4', 'simdigamien16@gmail.com', '$P$BPWxdJDU0FS7M5xRFYWurhgKGqH96t0');
INSERT INTO `ms_anggota` VALUES (153, 'Nurslama br siregar', 'nurslamapucc4', 'salama335@gmail.com', '$P$BmSSehqG.Z4/qV4xaoOKSffpWlyVsq0');
INSERT INTO `ms_anggota` VALUES (154, 'Khairul Fikri Sembiring', 'khairulpucc4', 'khairulfikris8900@gmail.com', '$P$B4IEFedvmFSPuhgZZsKg2JbqukTG090');
INSERT INTO `ms_anggota` VALUES (155, 'Nur Annisa', 'nurpucc4', 'ichanurannisa33@gmail.com', '$P$BPJeK8fjEYSd9DQedWHuZh/UOHl85q/');
INSERT INTO `ms_anggota` VALUES (156, 'Arif Fathur Rahman', 'arifpucc4', 'ariffathur858@gmail.com', '$P$Bof21BJfqFC3BGeqrNlhqUm9fI6.RO0');
INSERT INTO `ms_anggota` VALUES (157, 'Rizka Aulia', 'rizkapucc4', 'riskaaulia.1610@gmail.com', '$P$BMnEyE8Co28aSF0JUPZw2xev5hIMSB1');
INSERT INTO `ms_anggota` VALUES (158, 'aziz firmansyah lingga', 'azizpucc4', 'azizlingga1@gmail.com', '$P$BF316QhGUzpmh/ZeQUrkGE5Hb/BuLs/');
INSERT INTO `ms_anggota` VALUES (159, 'Sahrul Siregar', 'sahrulpucc4', 'sahrulhamid35@gmail.com', '$P$BU0/3n/6pUzJxtF5oNm9KUJCdXZFXX0');
INSERT INTO `ms_anggota` VALUES (160, 'Selby Try Ayunda', 'selbypucc4', 'selbytryayudia@gmail.com', '$P$BBItRp66UvM3D8Mvb.UBBU47CFPfdU.');
INSERT INTO `ms_anggota` VALUES (161, 'Wiyuda Bambang Ferdianto', 'wiyudapucc4', 'wiyudabf43@gmail.com', '$P$B3feMmC4wcyk6F0ck2LPmXmIZseow/0');
INSERT INTO `ms_anggota` VALUES (162, 'Irwan Syahputra HRP', 'irwansyahpucc4', 'irwanvdj113@gmail.com', '$P$Bgfa.ct6UABKlbUh7ul0OszAC9cU5J1');
COMMIT;

-- ----------------------------
-- Table structure for ms_paslon
-- ----------------------------
DROP TABLE IF EXISTS `ms_paslon`;
CREATE TABLE `ms_paslon` (
  `id` int(11) NOT NULL,
  `nama_paslon` text,
  `visi_misi` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ms_paslon
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for vote
-- ----------------------------
DROP TABLE IF EXISTS `vote`;
CREATE TABLE `vote` (
  `id` int(11) NOT NULL,
  `no_paslon` tinyint(5) DEFAULT NULL,
  `jumlah` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vote
-- ----------------------------
BEGIN;
INSERT INTO `vote` VALUES (1, 1, 96);
INSERT INTO `vote` VALUES (2, 2, 115);
COMMIT;

-- ----------------------------
-- Table structure for vote_transaction
-- ----------------------------
DROP TABLE IF EXISTS `vote_transaction`;
CREATE TABLE `vote_transaction` (
  `username` varchar(50) NOT NULL,
  `vote` int(5) DEFAULT NULL,
  `masukan` text,
  `tgl_aksi` datetime DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vote_transaction
-- ----------------------------
BEGIN;
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
