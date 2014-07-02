CREATE TABLE CUSTOMER_t (
	Customer_ID 		decimal(2)NOT NULL,
	Customer_Name 		varchar(30),
	Customer_Address 	varchar(25),
	City 			varchar(15),
	State 			char(2),
	Postal_code 		char(10),
		PRIMARY KEY (Customer_ID));

CREATE TABLE ORDER_t (
	Order_ID 		decimal(4)NOT NULL,
	Order_Date		char(10),
	Customer_ID 		decimal(2)NOT NULL,
		PRIMARY KEY (Order_ID),
		FOREIGN KEY (Customer_ID) REFERENCES CUSTOMER_t(Customer_ID));

CREATE TABLE PRODUCT_t (
	Product_ID 		decimal(1) NOT NULL,
	Product_Description	varchar(30),
	Product_Finish 		varchar(20),
	Standard_Price		decimal(5,2),
	Product_Line_ID 	decimal(1),
		PRIMARY KEY (Product_ID));

CREATE TABLE ORDER_LINE_t (
	Order_ID 		decimal(4) NOT NULL,
	Product_ID 		decimal(1),
	Ordered_Quantity 	decimal(2),
		PRIMARY KEY (Order_ID, Product_ID),
		FOREIGN KEY (Product_ID) REFERENCES PRODUCT_t (Product_ID));
		