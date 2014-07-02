CREATE TABLE CLIENT (
	SS_NUM 		varchar(20)NOT NULL,
	Client 		varchar(20)NOT NULL,
	Age 		decimal(3)NOT NULL,
	Sex		char(3),
		PRIMARY KEY (SS_NUM));

CREATE TABLE AGENT (
	Agent		varchar(20)NOT NULL,
	Office 		varchar(20) NOT NULL,
	Location 		varchar(20),	

		PRIMARY KEY (Agent));

CREATE TABLE POLICY (
	PolicyNumber	decimal(6)NOT NULL,
	Policy 		varchar(20)NOT NULL,
	Premium 	decimal(5)NOT NULL,
	Face		decimal(8)NOT NULL,
	Agent		varchar(20)NOT NULL,
	SS_NUM 		varchar(20)NOT NULL,
		PRIMARY KEY (PolicyNumber),
		FOREIGN KEY (SS_NUM) REFERENCES CLIENT (SS_NUM),
		FOREIGN KEY (Agent) REFERENCES AGENT (Agent));