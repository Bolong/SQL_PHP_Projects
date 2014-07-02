SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

CREATE TABLE IF NOT EXISTS `product` (
  `ProductName` varchar(30) default '',
  `ProductID` bigint(10) NOT NULL,
  `Author` varchar(30) default '',
  `Rating` tinyint(1) NOT NULL,
  `DistributorID` int(5) NOT NULL,
  `Publication date` date NOT NULL,
  `UnitPrice` decimal(5,2) NOT NULL,
  PRIMARY KEY (`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE IF NOT EXISTS `distributor` (
  `DistributorName` varchar(30) default '',
  `DistributorID` int(5) NOT NULL,
  `Address` varchar(30) default '',
  `Phone` bigint(16) NOT NULL,
  `FAX` bigint(16) NOT NULL,
  PRIMARY KEY (`DistributorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE IF NOT EXISTS `purchaseorder` (
  `PurchaseOrderID` bigint(10) NOT NULL,
  `EmployeeID` varchar(30) default '',
  `ProductID` bigint(10) NOT NULL,
  `DistributorID` int(5) NOT NULL,
  `Quantity` int(5) NOT NULL,
  `UnitPrice` decimal(5,2) NOT NULL,
  `TotalPrice` decimal(9,2) NOT NULL,
  `PurchaseDate` date NOT NULL,
  PRIMARY KEY (`PurchaseOrderID`),
  KEY `ProductID` (`ProductID`),
  KEY `DistributorID` (`DistributorID`),
  CONSTRAINT `purchaseorder_ibfk_1` FOREIGN KEY (`ProductID`) REFERENCES `product` (`ProductID`),
  CONSTRAINT `purchaseorder_ibfk_2` FOREIGN KEY (`DistributorID`) REFERENCES `distributor` (`DistributorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE IF NOT EXISTS `consumer` (
  `ConsumerNAME` varchar(30) default '',
  `ConsumerID` int(5) NOT NULL,
  `Gender` tinyint(1) NOT NULL,
  `Birthday` date NOT NULL,
  `Address` varchar(30) default '',
  `CreditCard` bigint(19) NOT NULL,
  `Phone` bigint(16) NOT NULL,
  `Mobil` varchar(15) default '',
  `EMAIL` varchar(30) default '',
  PRIMARY KEY (`ConsumerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE IF NOT EXISTS `employee` (
  `EmployeeName` varchar(30) default '',
  `EmployeeID` int(5) NOT NULL,
  `Gender` tinyint(1) NOT NULL,
  `Birthday` date NOT NULL,
  `Address` varchar(30) default '',
  `Manager` varchar(30) default '',
  `Phone` bigint(16) NOT NULL,
  `Mobil` bigint(16) NOT NULL,
  KEY `EmployeeID` (`EmployeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE IF NOT EXISTS `buyorder` (
  `BuyOrderID` bigint(10) NOT NULL,
  `ConsumerID` int(5) NOT NULL,
  `EmployeeID` int(5) NOT NULL,
  `ProductID` bigint(10) NOT NULL,
  `UnitPrice` decimal(5,2) NOT NULL,
  `Quantity` int(5) NOT NULL,
  `TotalPrice` decimal(9,2) NOT NULL,
  `Type` int(1) NOT NULL,
  PRIMARY KEY (`BuyOrderID`),
  KEY `ConsumerID` (`ConsumerID`),
  KEY `EmployeeID` (`EmployeeID`),
  KEY `ProductID` (`ProductID`),
  CONSTRAINT `buyorder_ibfk_1` FOREIGN KEY (`ConsumerID`) REFERENCES `consumer` (`ConsumerID`),
  CONSTRAINT `buyorder_ibfk_2` FOREIGN KEY (`EmployeeID`) REFERENCES `employee` (`EmployeeID`),
  CONSTRAINT `buyorder_ibfk_3` FOREIGN KEY (`ProductID`) REFERENCES `product` (`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


CREATE TABLE IF NOT EXISTS `return` (
  `BuyOrderID` bigint(10) NOT NULL,
  `Reason` varchar(200) default '',
  `ConsumerID` int(5) NOT NULL,
  `EmployeeID` int(5) NOT NULL,
  `TYPE` tinyint(1) NOT NULL COMMENT '1=StoreReturn,2=OnlineReturn',
  `ReturnShipmentY/N` tinyint(1) NOT NULL,
  `ReturnDate` date NOT NULL,
  `ReturnShipment Coltd` varchar(20) default '',
  `ReturnShipmentNumber` bigint(20) NOT NULL,
  `ReturnReceiptDate` date NOT NULL,
  `ReturnShipmentStatus` tinyint(1) NOT NULL,
  `RefundStatus` tinyint(1) NOT NULL,
  KEY `BuyOrderID` (`BuyOrderID`),
  KEY `ConsumerID` (`ConsumerID`),
  KEY `EmployeeID` (`EmployeeID`),
  CONSTRAINT `return_ibfk_1` FOREIGN KEY (`BuyOrderID`) REFERENCES `buyorder` (`BuyOrderID`),
  CONSTRAINT `return_ibfk_2` FOREIGN KEY (`ConsumerID`) REFERENCES `consumer` (`ConsumerID`),
  CONSTRAINT `return_ibfk_3` FOREIGN KEY (`EmployeeID`) REFERENCES `employee` (`EmployeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE IF NOT EXISTS `shipment` (
  `BuyOrderID` bigint(10) NOT NULL,
  `ShipmentNumber` bigint(20) NOT NULL,
  `ShipmentStatus` varchar(5) default '',
  `ShipmentCoLtd` varchar(20) default '',
  `ShipmentDate` date NOT NULL,
  KEY `BuyOrderID` (`BuyOrderID`),
  CONSTRAINT `shipment_ibfk_1` FOREIGN KEY (`BuyOrderID`) REFERENCES `buyorder` (`BuyOrderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;