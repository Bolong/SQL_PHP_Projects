INSERT INTO `distributor` (`DistributorName`, `DistributorID`, `Address`, `Phone`, `FAX`) VALUES
('A&B CoLtd', 10001, 'Antony Str.405', 12033212510, 12033212511),
('SunShine', 10002, 'Rudolf Str.109', 12033712510, 12033712511);

INSERT INTO `product` (`ProductName`, `ProductID`, `Author`, `Rating`, `DistributorID`, `Publication date`, `UnitPrice`) VALUES
('Naruto 01', 1000000001, 'Naruto', 3, 10001, '2010-11-12', 25.00),
('Naruto 02', 1000000002, 'Naruto', 3, 10001, '2010-12-12', 25.00),
('Naruto 03', 1000000003, 'Naruto', 3, 10001, '2010-12-13', 25.00),
('Bleach 01', 1000000011, 'Bleach', 4, 10002, '2013-01-02', 27.00),
('Bleach 02', 1000000012, 'Bleach', 4, 10002, '2013-01-03', 27.00),
('Bleach 03', 1000000013, 'Bleach', 4, 10002, '2013-01-07', 27.00),
('Bleach 04', 1000000014, 'Bleach', 4, 10002, '2013-01-09', 27.00),
('Bleach 05', 1000000015, 'Bleach', 4, 10002, '2013-01-12', 27.00);

INSERT INTO `purchaseorder` (`PurchaseOrderID`, `EmployeeID`, `ProductID`, `DistributorID`, `Quantity`, `UnitPrice`, `TotalPrice`, `PurchaseDate`) VALUES
(2013010201, '10001', 1000000001, 10001, 50, 15.00, 750.00, '2013-01-02'),
(2013010202, '10001', 1000000001, 10001, 50, 15.00, 750.00, '2013-01-02'),
(2013010203, '10001', 1000000002, 10001, 50, 15.00, 750.00, '2013-01-02'),
(2013010501, '10002', 1000000011, 10002, 60, 20.00, 1200.00, '2013-01-05'),
(2013010502, '10002', 1000000012, 10002, 60, 20.00, 1200.00, '2013-01-05'),
(2013010503, '10002', 1000000013, 10002, 60, 20.00, 1200.00, '2013-01-05'),
(2013010504, '10002', 1000000014, 10002, 60, 20.00, 1200.00, '2013-01-05'),
(2013010505, '10002', 1000000015, 10002, 60, 20.00, 1200.00, '2013-01-05');

INSERT INTO `consumer` (`ConsumerNAME`, `ConsumerID`, `Gender`, `Birthday`, `Address`, `CreditCard`, `Phone`, `Mobil`, `EMAIL`) VALUES
('Bill Kaulitz', 10001, 0, '1990-11-12', 'Heinjassen Str.1', 2111300045556777, 12023282511, '16176692111', 'BillKaulitz@google.com'),
('Tom Kaulitz', 10002, 0, '1990-11-12', 'Heinjassen Str.2', 2111300045556778, 12023282511, '16176692112', 'TomKaulitz@google.com'),
('Lampard Jack', 10003, 0, '1981-02-03', 'Lampard Garden 01', 4271551235500236, 12053292716, '16178891887', 'Lampard_Jack@yahoo.com'),
('Kon Yon', 10004, 0, '1985-06-01', 'Maland Road 07', 3212567235516147, 12552292119, '16116392156', 'Konyon@aol.com');

INSERT INTO `employee` (`EmployeeName`, `EmployeeID`, `Gender`, `Birthday`, `Address`, `Manager`, `Phone`, `Mobil`) VALUES
('Gaga', 10001, 0, '1987-05-03', 'HUMI STR.05', 'Rose', 120338912510, 0),
('Kate', 10002, 0, '0000-00-00', 'Halle STR.101', 'Rose', 120338912622, 0),
('Gumi', 10003, 0, '1993-10-11', 'JUNU STR.1011', 'Gaga', 120232821161, 0);

INSERT INTO `buyorder` (`BuyOrderID`, `ConsumerID`, `EmployeeID`, `ProductID`, `UnitPrice`, `Quantity`, `TotalPrice`, `Type`) VALUES
(2013010601, 10001, 10002, 1000000001, 25.00, 1, 25.00, 1),
(2013010602, 10001, 10002, 1000000003, 25.00, 1, 25.00, 1),
(2013010603, 10002, 10003, 1000000011, 25.00, 1, 25.00, 1),
(2013010604, 10002, 10003, 1000000001, 25.00, 1, 25.00, 1),
(2013070101, 10003, 10001, 1000000003, 27.00, 1, 27.00, 2);

INSERT INTO `return` (`BuyOrderID`, `Reason`, `ConsumerID`, `EmployeeID`, `TYPE`, `ReturnShipmentY/N`, `ReturnDate`, `ReturnShipment Coltd`, `ReturnShipmentNumber`, `ReturnReceiptDate`, `ReturnShipmentStatus`, `RefundStatus`) VALUES
(2013010604, 'My brother has bought the same book', 10001, 10001, 1, 1, '2013-02-01', 'NO', 0, '2013-02-03', 0, 0);


INSERT INTO `shipment` (`BuyOrderID`, `ShipmentNumber`, `ShipmentStatus`, `ShipmentCoLtd`, `ShipmentDate`) VALUES
(2013070101, 2013070100000001, 'Send', 'NHL', '0000-00-00');
