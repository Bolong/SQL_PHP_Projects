SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

CREATE TABLE IF NOT EXISTS `employee` (
  `EmployeeName` varchar(30) default '',
  `EmployeeID` int(5) NOT NULL,
  `Gender` tinyint(1) NOT NULL,
  `Birthday` date NOT NULL,
  `Manager` varchar(30) default '',
  `Phone` bigint(16) NOT NULL,
  PRIMARY KEY (`EmployeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE IF NOT EXISTS `consumer` (
  `ConsumerNAME` varchar(30) default '',
  `ConsumerID` int(5) NOT NULL,
  `Gender` tinyint(1) NOT NULL,
  `Birthday` date NOT NULL,
  `Address` varchar(30) default '',
  `CreditCard` bigint(19) NOT NULL,
  `Phone` bigint(16) NOT NULL,
  PRIMARY KEY (`ConsumerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE IF NOT EXISTS `product` (
  `ProductName` varchar(30) default '',
  `ProductID` bigint(10) NOT NULL,
  `Author` varchar(30) default '',
  `Rating` tinyint(1) NOT NULL,
  `DistributorID` int(5) NOT NULL,
  `Publication date` date NOT NULL,
  PRIMARY KEY (`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE IF NOT EXISTS `buyorder` (
  `BuyOrderID` bigint(10) NOT NULL,
  `ConsumerID` int(5) NOT NULL,
  `EmployeeID` int(5) NOT NULL,
  `ProductID` bigint(10) NOT NULL,
  `Quantity` int(5) NOT NULL,
  `BuyShipment` tinyint(1) NOT NULL,
  `BuyShipmentCompanyID` int(5) NOT NULL,
  `BuyDate` date NOT NULL,
  PRIMARY KEY (`BuyOrderID`,`ConsumerID`),
  UNIQUE KEY (`BuyOrderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE IF NOT EXISTS `destination` (
  `BuyOrderID` bigint(10) NOT NULL,
  `ConsumerID` int(5) NOT NULL,
  `CompanyID` int(5) NOT NULL,
  `Address` varchar(30) default '', 
  PRIMARY KEY (`BuyOrderId`)
);

CREATE TABLE IF NOT EXISTS `purchaseorder` (
  `PurchaseOrderID` bigint(10) NOT NULL,
  `EmployeeID` varchar(30) default '',
  `ProductID` bigint(10) NOT NULL,
  `DistributorID` int(5) NOT NULL,
  `Quantity` int(5) NOT NULL,
  `PurchaseOrderDate` date NOT NULL,
  PRIMARY KEY (`PurchaseOrderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


CREATE TABLE IF NOT EXISTS `shippingcompany` (
  `CompanyID` int(5) NOT NULL,
  `CompanyName` varchar(30) NOT NULL,
  `Fax` bigint(16) NOT NULL,
  `Phone` bigint(16) NOT NULL,
  PRIMARY KEY (`CompanyID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE IF NOT EXISTS `reorder` (
  `BuyOrderID` bigint(10) NOT NULL,
  `reason` varchar(200) default '',  
  `ConsumerID` int(5) NOT NULL,  
  `EmployeeID` int(5) NOT NULL,  
  `ReShipmentStatus` tinyint(1) NOT NULL,  
  `ReShipment` tinyint(1) NOT NULL,  
  `ReDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE IF NOT EXISTS `distributor` (
  `DistributorName` varchar(30) default '',
  `DistributorID` int(5) NOT NULL,
  `Address` varchar(30) default '',
  `Phone` bigint(16) NOT NULL,
  `FAX` bigint(16) NOT NULL,
  PRIMARY KEY (`DistributorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;