-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.1.45-community - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for oldtaxation
CREATE DATABASE IF NOT EXISTS `oldtaxation` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `oldtaxation`;

-- Dumping structure for table oldtaxation.blockchain
CREATE TABLE IF NOT EXISTS `blockchain` (
  `pan` varchar(100) DEFAULT NULL,
  `prehash` varchar(100) DEFAULT NULL,
  `bsr` varchar(100) DEFAULT NULL,
  `serial` varchar(100) DEFAULT NULL,
  `taxamount` varchar(100) DEFAULT NULL,
  `nexthash` varchar(100) DEFAULT NULL,
  `couchalanpayslippfrequseraccountsusersnts` int(11) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table oldtaxation.blockchain: ~6 rows (approximately)
/*!40000 ALTER TABLE `blockchain` DISABLE KEYS */;
INSERT INTO `blockchain` (`pan`, `prehash`, `bsr`, `serial`, `taxamount`, `nexthash`, `counts`, `date`) VALUES
	('YRUEW3444W', '00000000000000000000000000000000000', '123782', '2596', '2000', 'b1f39dceeda6abe10e24e5da714972f8418023c1de141da4d8b89704f86854f6', 1, '2020-01'),
	('YRUEW3444W', 'b1f39dceeda6abe10e24e5da714972f8418023c1de141da4d8b89704f86854f6', '537258', '1795', '2000', '089c49cad48f4a5e5e208f84d33c43f3f16ae7190a5cd5e941b1bca6422da58b', 2, '2020-02'),
	('YRUEW3444W', '089c49cad48f4a5e5e208f84d33c43f3f16ae7190a5cd5e941b1bca6422da58b', '927930', '3232', '2000', '9b02d610dd9e56a477636092121a6cb2e62372af25caf1e886b7fc648d7d421b', 3, '2020-03'),
	('YRUEW3444W', '9b02d610dd9e56a477636092121a6cb2e62372af25caf1e886b7fc648d7d421b', '40102', '4614', '2000', 'fbd6fd67114cafdd864f56a2ede9fbc60176598af87512f7cd621c9ace874c62', 4, '2020-04'),
	('YRUEW3444W', 'fbd6fd67114cafdd864f56a2ede9fbc60176598af87512f7cd621c9ace874c62', '642917', '4477', '2000', '38a1490791dbcc61bf28b44f9a6802dea1e75fe3ab24d986c2f1dbb5492b899a', 5, '2020-05'),
	('YRUEW3444W', '38a1490791dbcc61bf28b44f9a6802dea1e75fe3ab24d986c2f1dbb5492b899a', '137742', '5591', '2000', 'e65e2d57b18fc205764aead22210eeae29217e3334054611730a298586c9d099', 6, '2020-06');
/*!40000 ALTER TABLE `blockchain` ENABLE KEYS */;

-- Dumping structure for table oldtaxation.chalan
CREATE TABLE IF NOT EXISTS `chalan` (
  `userId` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `applicable` varchar(50) DEFAULT NULL,
  `payment` varchar(50) DEFAULT NULL,
  `mode` varchar(50) DEFAULT NULL,
  `panNo` varchar(50) DEFAULT NULL,
  `year` varchar(50) DEFAULT NULL,
  `flat` varchar(50) DEFAULT NULL,
  `village` varchar(50) DEFAULT NULL,
  `lane` varchar(50) DEFAULT NULL,
  `area` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `State` varchar(50) DEFAULT NULL,
  `pincode` varchar(50) DEFAULT NULL,
  `Pstatus` varchar(50) DEFAULT 'Pending',
  `Taxamount` varchar(50) DEFAULT '0',
  KEY `userId` (`userId`),
  CONSTRAINT `FK_chalan_taxation.users` FOREIGN KEY (`userId`) REFERENCES `users` (`UserId`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='user details given in the chalan will display here.';

-- Dumping data for table oldtaxation.chalan: ~0 rows (approximately)
/*!40000 ALTER TABLE `chalan` DISABLE KEYS */;
/*!40000 ALTER TABLE `chalan` ENABLE KEYS */;

-- Dumping structure for table oldtaxation.payslip
CREATE TABLE IF NOT EXISTS `payslip` (
  `userid` int(11) NOT NULL,
  `pan` varchar(50) DEFAULT NULL,
  `salary` varchar(50) DEFAULT NULL,
  `da` varchar(50) DEFAULT NULL,
  `hra` varchar(50) DEFAULT NULL,
  `sa` varchar(50) DEFAULT NULL,
  `pt` varchar(50) DEFAULT NULL,
  `tds` varchar(50) DEFAULT NULL,
  `pf` varchar(50) DEFAULT NULL,
  `grosal` varchar(50) DEFAULT NULL,
  `netsal` varchar(50) DEFAULT NULL,
  `insurance` varchar(50) DEFAULT '0',
  `Rent` varchar(50) DEFAULT '0',
  `loan` varchar(50) DEFAULT '0',
  `Pstatus` varchar(50) DEFAULT 'Pending',
  `p1` longblob,
  `p2` longblob,
  `p3` longblob,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='pay details';

-- Dumping data for table oldtaxation.payslip: ~1 rows (approximately)
/*!40000 ALTER TABLE `payslip` DISABLE KEYS */;
INSERT INTO `payslip` (`userid`, `pan`, `salary`, `da`, `hra`, `sa`, `pt`, `tds`, `pf`, `grosal`, `netsal`, `insurance`, `Rent`, `loan`, `Pstatus`, `p1`, `p2`, `p3`) VALUES
	(1, 'YRUEW3444W', '50000', '8500', '12500', '2500', '500', '2000', '4250', '52350', '42600', '2000', '700', '300', 'Submitted', _binary 0x496E737572616E6365203A203230303030, _binary 0x72656E743A203430303030, _binary 0x6C6F616E203A203230303030);
/*!40000 ALTER TABLE `payslip` ENABLE KEYS */;

-- Dumping structure for table oldtaxation.pfreq
CREATE TABLE IF NOT EXISTS `pfreq` (
  `uid` int(11) DEFAULT NULL,
  `UAN` varchar(50) DEFAULT NULL,
  `pan` varchar(50) DEFAULT NULL,
  `Aadhar` varchar(50) DEFAULT NULL,
  `Account` varchar(50) DEFAULT NULL,
  `pfamount` varchar(50) DEFAULT '0',
  `status` varchar(50) DEFAULT 'No',
  `Bank` varchar(50) DEFAULT 'No',
  `reason` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='pf requests';

-- Dumping data for table oldtaxation.pfreq: ~1 rows (approximately)
/*!40000 ALTER TABLE `pfreq` DISABLE KEYS */;
INSERT INTO `pfreq` (`uid`, `UAN`, `pan`, `Aadhar`, `Account`, `pfamount`, `status`, `Bank`, `reason`) VALUES
	(1, '123456221967', 'YRUEW3444W', '987664545545', '989822126565', '29750', 'Applied', 'Canara Bank', 'Loan');
/*!40000 ALTER TABLE `pfreq` ENABLE KEYS */;

-- Dumping structure for table oldtaxation.useraccounts
CREATE TABLE IF NOT EXISTS `useraccounts` (
  `userid` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `card` varchar(50) DEFAULT NULL,
  `exp1` varchar(50) DEFAULT NULL,
  `exp2` varchar(50) DEFAULT NULL,
  `cvv` varchar(50) DEFAULT NULL,
  `balance` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='payment related details will be stored here.';

-- Dumping data for table oldtaxation.useraccounts: ~0 rows (approximately)
/*!40000 ALTER TABLE `useraccounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `useraccounts` ENABLE KEYS */;

-- Dumping structure for table oldtaxation.users
CREATE TABLE IF NOT EXISTS `users` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `pan` varchar(50) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `Phone` varchar(50) DEFAULT NULL,
  `Role` varchar(50) DEFAULT NULL,
  `LoginStatus` int(11) DEFAULT '1',
  PRIMARY KEY (`userid`) USING BTREE,
  UNIQUE KEY `Email` (`Email`),
  UNIQUE KEY `pan` (`pan`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='Registered User Details will be Stored in this table.';

-- Dumping data for table oldtaxation.users: ~1 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`userid`, `pan`, `Name`, `Email`, `Password`, `Phone`, `Role`, `LoginStatus`) VALUES
	(1, 'YRUEW3444W', 'Yuvaraj', 'yuvarajaya007@gmail.com', 'Key@1234', '9879586873', 'EMPLOYEE', 1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
payslipblockchainchalanusers