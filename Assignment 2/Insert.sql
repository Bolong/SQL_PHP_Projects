INSERT INTO `employee` (`EmployeeName`, `EmployeeID`, `Gender`, `Birthday`, `Address`, `Manager`, `Phone`, `Mobil`) VALUES
('Gaga', 10001, 0, 0, '1987-05-03', 120338912510),
('Kate', 10002, 0, 0, '0000-00-00', 120338912622),
('Gumi', 10003, 0, 0, '1993-10-11', 120232821161);

INSERT INTO `consumer` (`ConsumerID`, `ConsumerNAME`, `Gender`, `Birthday`, `Address`, `CreditCard`, `Phone`) VALUES
(10001,'Bill Kaulitz', 0, '1990-11-12', 'Heinjassen Str.1', 2111300045556777, 12023282511),
(10002,'Tom Kaulitz',  0, '1990-11-12', 'Heinjassen Str.2', 2111300045556778, 12023282511),
(10003,'Lampard Jack',  0, '1981-02-03', 'Lampard Garden 01', 4271551235500236, 12053292716),
(10004,'Kon Yon', 0, '1985-06-01', 'Maland Road 07', 3212567235516147, 12552292119);

INSERT INTO `product` (`ProductName`, `ProductID`, `Author`, `Rating`, `DistributorID`, `Publication date`) VALUES
('Naruto 01', 1000000001, 'Naruto', 3, 10001, '2010-11-12'),
('Naruto 02', 1000000002, 'Naruto', 3, 10001, '2010-12-12'),
('Naruto 03', 1000000003, 'Naruto', 3, 10001, '2010-12-13'),
('Bleach 01', 1000000011, 'Bleach', 4, 10002, '2013-01-02'),
('Bleach 02', 1000000012, 'Bleach', 4, 10002, '2013-01-03'),
('Bleach 03', 1000000013, 'Bleach', 4, 10002, '2013-01-07'),
('Bleach 04', 1000000014, 'Bleach', 4, 10002, '2013-01-09'),
('Bleach 05', 1000000015, 'Bleach', 4, 10002, '2013-01-12');

INSERT INTO `buyorder` (`BuyOrderID`, `ConsumerID`, `EmployeeID`, `ProductID`, `Quantity`, `BuyShipment`, `BuyShipmentCompanyID`, `BuyDate`) VALUES
(2013010601, 10001, 10002, 1000000001, 1, 1, 10001, '2013-01-06'),
(2013010602, 10001, 10002, 1000000003, 1, 1, 10001, '2013-01-06'),
(2013010603, 10002, 10003, 1000000011, 1, 1, 10001, '2013-01-06'),
(2013010604, 10002, 10003, 1000000001, 1, 1, 10001, '2013-01-06'),
(2013070101, 10003, 10001, 1000000003, 1, 1, 10001, '2013-01-06');

INSERT INTO `destination` (`BuyOrderID`, `ConsumerID`, `CompanyID`, `Address`) VALUES
(2013010601, 10001, 10001, 'Heinjassen Str.1'),
(2013010602, 10001, 10001, 'Heinjassen Str.1'),
(2013010603, 10002, 10001, 'Heinjassen Str.2'),
(2013010604, 10002, 10001, 'Heinjassen Str.2'),
(2013070101, 10003, 10002, 'Lampard Garden 01'),
(2013070201, 10004, 10002, 'Maland Road 07');

INSERT INTO `purchaseorder` (`PurchaseOrderID`, `EmployeeID`, `ProductID`, `DistributorID`, `Quantity`, `PurchaseOrderDate`) VALUES
(2013010201, '10001', 1000000001, 10001, 50, '2013-01-02'),
(2013010202, '10001', 1000000001, 10001, 50, '2013-01-02'),
(2013010203, '10001', 1000000002, 10001, 50, '2013-01-02'),
(2013010501, '10002', 1000000011, 10002, 60, '2013-01-05'),
(2013010502, '10002', 1000000012, 10002, 60, '2013-01-05'),
(2013010503, '10002', 1000000013, 10002, 60, '2013-01-05'),
(2013010504, '10002', 1000000014, 10002, 60, '2013-01-05'),
(2013010505, '10002', 1000000015, 10002, 60, '2013-01-05');

INSERT INTO `shippingcompany` (`CompanyID`, `CompanyName`, `Fax`, `Phone`) VALUES
(10001, 'AHL', 2111300076666888, 2111300076666999),
(10002, 'XMAN', 2111300071111888, 2111300071111898),
(10003, 'OFLY', 2111300071112888, 2111300071112898);

INSERT INTO `reorder` (`BuyOrderID`, `Reason`, `ConsumerID`, `EmployeeID`, `ReShipmentStatus`, `ReShipment`, `ReDate`) VALUES
(2013010604, 'My brother has bought the same book', 10001, 10001, 1, 1, '2013-01-07');

INSERT INTO `distributor` (`DistributorID`, `DistributorName`, `Phone`, `FAX`, `Address`) VALUES
(10001, 'AB CoLtd', 1203321251077811, 1203321251077812, 'Antony Str.405'),
(10002, 'Sun Shine', 1203371251066712, 1203371251066711, 'Rudolf Str.109'),
(10003, 'SMALLLUCK', 1203371251088999, 1203371251088998, 'Amei Str.58'),
(10004, 'BOBO-LOVE', 1203371251089000, 1203371251089111, 'LOVE GARDEN.11');