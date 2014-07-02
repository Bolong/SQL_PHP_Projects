CREATE TABLE IF NOT EXISTS PRODUCT (
  ProductName varchar(30) default '',
  ProductID bigint(10) NOT NULL,
  Author varchar(30) default '',
  Rating tinyint(1) NOT NULL,
  DistributorID int(5) NOT NULL,
  Publication date NOT NULL,
  UnitPrice decimal(5,2) NOT NULL,
  	PRIMARY KEY (ProductID)
);

CREATE TABLE IF NOT EXISTS DISTRIBUTOR (
  DistributorName varchar(30) default '',
  DistributorID int(5) NOT NULL,
  Address varchar(30) default '',
  Phone bigint(16) NOT NULL,
  FAX bigint(16) NOT NULL,
  	PRIMARY KEY (DistributorID)
);

CREATE TABLE IF NOT EXISTS PURCHASEORDER (
  PurchaseOrderID bigint(10) NOT NULL,
  EmployeeID varchar(30) default '',
  ProductID bigint(10) NOT NULL,
  DistributorID int(5) NOT NULL,
  Quantity int(5) NOT NULL,
  UnitPrice decimal(5,2) NOT NULL,
  TotalPrice decimal(9,2) NOT NULL,
  PurchaseDate date NOT NULL,
  	PRIMARY KEY (PurchaseOrderID),
	FOREIGN KEY (ProductID) REFERENCES PRODUCT (ProductID),
	FOREIGN KEY (DistributorID) REFERENCES DISTRIBUTOR  (DistributorID)
);

CREATE TABLE IF NOT EXISTS CONSUMER (
  ConsumerNAME varchar(30) default '',
  ConsumerID int(5) NOT NULL,
  Gender tinyint(1) NOT NULL,
  Birthday date NOT NULL,
  Address varchar(30) default '',
  CreditCard bigint(19) NOT NULL,
  Phone bigint(16) NOT NULL,
  Mobil varchar(15) default '',
  EMAIL varchar(30) default '',
  	PRIMARY KEY (ConsumerID)
);

CREATE TABLE IF NOT EXISTS EMPLOYEE (
  EmployeeName varchar(30) default '',
  EmployeeID int(5) NOT NULL,
  Gender tinyint(1) NOT NULL,
  Birthday date NOT NULL,
  Address varchar(30) default '',
  Manager varchar(30) default '',
  Phone bigint(16) NOT NULL,
  Mobil bigint(16) NOT NULL,
  	PRIMARY KEY (EmployeeID)
);

CREATE TABLE IF NOT EXISTS BUYORDER (
  BuyOrderID bigint(10) NOT NULL,
  ConsumerID int(5) NOT NULL,
  EmployeeID int(5) NOT NULL,
  ProductID bigint(10) NOT NULL,
  UnitPrice decimal(5,2) NOT NULL,
  Quantity int(5) NOT NULL,
  TotalPrice decimal(9,2) NOT NULL,
  Type int(1) NOT NULL,
  	PRIMARY KEY (BuyOrderID),
  	FOREIGN KEY (ConsumerID) REFERENCES CONSUMER (ConsumerID),
	FOREIGN KEY (EmployeeID) REFERENCES EMPLOYEE  (EmployeeID),
	FOREIGN KEY (ProductID) REFERENCES PRODUCT  (ProductID)
);


CREATE TABLE IF NOT EXISTS RETURNORDER (
  BuyOrderID bigint(10) NOT NULL,
  Reason varchar(200) default '',
  ConsumerID int(5) NOT NULL,
  EmployeeID int(5) NOT NULL,
  TYPE tinyint(1) NOT NULL COMMENT '1=StoreReturn,2=OnlineReturn',
  'ReturnShipmentY/N' tinyint(1) NOT NULL,
  ReturnDate date NOT NULL,
  ReturnShipment date NOT NULL,
  ReturnShipmentNumber bigint(20) NOT NULL,
  ReturnReceiptDate date NOT NULL,
  ReturnShipmentStatus tinyint(1) NOT NULL,
  RefundStatus tinyint(1) NOT NULL,
	FOREIGN KEY (BuyOrderID) REFERENCES BUYORDER (BuyOrderID),
	FOREIGN KEY (ConsumerID) REFERENCES CONSUMER (ConsumerID),
 	FOREIGN KEY (EmployeeID) REFERENCES EMPLOYEE (EmployeeID)
);

CREATE TABLE IF NOT EXISTS SHIPMENT (
  BuyOrderID bigint(10) NOT NULL,
  ShipmentNumber bigint(20) NOT NULL,
  ShipmentStatus varchar(5) default '',
  ShipmentCoLtd varchar(20) default '',
  ShipmentDate date NOT NULL,
	FOREIGN KEY (BuyOrderID) REFERENCES BUYORDER (BuyOrderID)
);