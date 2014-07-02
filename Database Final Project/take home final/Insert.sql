INSERT INTO `agent` (`Office`, `Agent`, `Location`) VALUES
	('MT.LEB', 'FRANK', 'LEB.SHOPS'),
	('OAKDALE', 'KRAMER', 'OAKDL.PL'),
	('PGH', 'SPEAKMAN', 'GATEWAY');

INSERT INTO `client` (`SS_NUM`, `Client`, `Age`, `Sex`) VALUES
	('181-30-4000', 'MCCAULEY,LELAND', 47, 'M'),
	('181-30-4001', 'CAMPBELL,CHARLIE', 40, 'M'),
	('181-30-4002', 'BEHARY,ANDY', 52, 'M');


INSERT INTO `policy` (`Policy`, `PolicyNumber`, `Premium`, `Face`, `Agent`, `SS_NUM`) VALUES
	('WL', 10000, 1500, 62000, 'KRAMER', '181-30-4002'),
	('UL', 10006, 1200, 100000, 'SPEAKMAN', '181-30-4000'),
	('WL', 10008, 1000, 50000, 'SPEAKMAN', '181-30-4000'),
	('WL', 20003, 2000, 100000, 'FRANK', '181-30-4001'),
	('PC', 20004, 1000, 1000000, 'FRANK', '181-30-4001');
