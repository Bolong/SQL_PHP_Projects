INSERT INTO employee
VALUES ('Gaga', 10001, 0, 0, to_date('1987-05-03','yyyy-mm-dd'), 120338912510);

INSERT INTO employee
VALUES ('Kate', 10002, 0, 0, to_date('1987-06-01','yyyy-mm-dd'), 120338912622);

INSERT INTO employee
VALUES ('Gumi', 10003, 0, 1, to_date('1987-07-01','yyyy-mm-dd'), 120232821161);



INSERT INTO consumer
VALUES (10001,'Bill Kaulitz', 0, to_date('1990-11-12','yyyy-mm-dd'), 'Heinjassen Str.1', 2111300045556777, 12023282511);

INSERT INTO consumer
VALUES (10002,'Tom Kaulitz',  0, to_date('1990-11-12','yyyy-mm-dd'), 'Heinjassen Str.2', 2111300045556778, 12023282511);

INSERT INTO consumer
VALUES (10003,'Lampard Jack',  0, to_date('1981-02-03','yyyy-mm-dd'), 'Lampard Garden 01', 4271551235500236, 12053292716);

INSERT INTO consumer
VALUES (10004,'Kon Yon', 0, to_date('1985-06-01','yyyy-mm-dd'), 'Maland Road 07', 3212567235516147, 12552292119);



INSERT INTO product
VALUES (1000000001, 'Naruto 01',  'Naruto', 3, to_date('2010-11-12','yyyy-mm-dd'), 10001);

INSERT INTO product
VALUES (1000000002, 'Naruto 02',  'Naruto', 3, to_date('2010-12-12','yyyy-mm-dd'), 10001);

INSERT INTO product
VALUES (1000000003, 'Naruto 03',  'Naruto', 3, to_date('2010-12-13','yyyy-mm-dd'), 10001);

INSERT INTO product
VALUES (1000000011, 'Bleach 01',  'Bleach', 4, to_date('2013-01-02','yyyy-mm-dd'), 10002);

INSERT INTO product
VALUES (1000000012, 'Bleach 02',  'Bleach', 4, to_date('2013-01-03','yyyy-mm-dd'), 10002);

INSERT INTO product
VALUES (1000000013, 'Bleach 03',  'Bleach', 4, to_date('2013-01-07','yyyy-mm-dd'), 10002);

INSERT INTO product
VALUES (1000000014, 'Bleach 04',  'Bleach', 4, to_date('2013-01-09','yyyy-mm-dd'), 10002);

INSERT INTO product
VALUES (1000000015, 'Bleach 05',  'Bleach', 4, to_date('2013-01-12','yyyy-mm-dd'), 10002);



INSERT INTO buyorder
VALUES (2013010601, 10001, 10002, 1000000001, 1, 1, 10001, to_date('2013-01-06','yyyy-mm-dd'));

INSERT INTO buyorder
VALUES (2013010602, 10001, 10002, 1000000003, 1, 1, 10001, to_date('2013-01-06','yyyy-mm-dd'));

INSERT INTO buyorder
VALUES (2013010603, 10002, 10003, 1000000011, 1, 1, 10001, to_date('2013-01-06','yyyy-mm-dd'));

INSERT INTO buyorder
VALUES (2013010604, 10002, 10003, 1000000001, 1, 1, 10001, to_date('2013-01-06','yyyy-mm-dd'));

INSERT INTO buyorder
VALUES (2013070101, 10003, 10001, 1000000003, 1, 1, 10002, to_date('2013-07-01','yyyy-mm-dd'));

INSERT INTO buyorder
VALUES (2013070201, 10004, 10002, 1000000001, 1, 1, 10002, to_date('2013-07-02','yyyy-mm-dd'));




INSERT INTO destination
VALUES (2013010601, 10001, 10001, 'Heinjassen Str.1');

INSERT INTO destination
VALUES (2013010602, 10001, 10001, 'Heinjassen Str.1');

INSERT INTO destination
VALUES (2013010603, 10002, 10001, 'Heinjassen Str.2');

INSERT INTO destination
VALUES (2013010604, 10002, 10001, 'Heinjassen Str.2');

INSERT INTO destination
VALUES (2013070101, 10003, 10002, 'Lampard Garden 01');

INSERT INTO destination
VALUES (2013070201, 10004, 10002, 'Maland Road 07');



INSERT INTO purchaseorder
VALUES (2013010201, 10001, 1000000001, 50, to_date('2013-01-02','yyyy-mm-dd'));

INSERT INTO purchaseorder
VALUES (2013010202, 10001, 1000000001, 50, to_date('2013-01-02','yyyy-mm-dd'));

INSERT INTO purchaseorder
VALUES (2013010203, 10001, 1000000002, 50, to_date('2013-01-02','yyyy-mm-dd'));

INSERT INTO purchaseorder
VALUES (2013010501, 10002, 1000000011, 60, to_date('2013-01-05','yyyy-mm-dd'));

INSERT INTO purchaseorder
VALUES (2013010502, 10002, 1000000012, 60, to_date('2013-01-05','yyyy-mm-dd'));

INSERT INTO purchaseorder
VALUES (2013010503, 10002, 1000000013, 60, to_date('2013-01-05','yyyy-mm-dd'));

INSERT INTO purchaseorder
VALUES (2013010504, 10002, 1000000014, 60, to_date('2013-01-05','yyyy-mm-dd'));

INSERT INTO purchaseorder
VALUES (2013010505, 10002, 1000000015, 60, to_date('2013-01-05','yyyy-mm-dd'));



INSERT INTO shippingcompany
VALUES (10001, 'AHL', 2111300076666888, 2111300076666999);

INSERT INTO shippingcompany
VALUES (10002, 'XMAN', 2111300071111888, 2111300071111898);

INSERT INTO shippingcompany
VALUES (10003, 'OFLY', 2111300071112888, 2111300071112898);



INSERT INTO reorder
VALUES (2013010604, 'My brother has bought the same book', 10001, 10001, 1, 1, to_date('2013-01-07','yyyy-mm-dd'));




INSERT INTO distributor
VALUES (10001, 'AB CoLtd', 1203321251077811, 1203321251077812, 'Antony Str.405');

INSERT INTO distributor
VALUES (10002, 'Sun Shine', 1203371251066712, 1203371251066711, 'Rudolf Str.109');

INSERT INTO distributor
VALUES (10003, 'SMALLLUCK', 1203371251088999, 1203371251088998, 'Amei Str.58');

INSERT INTO distributor
VALUES (10004, 'BOBO-LOVE', 1203371251089000, 1203371251089111, 'LOVE GARDEN.11');