SELECT C.Customer_Name, O.Order_ID, O.Order_Date, P.Product_Description, P.Product_Finish, P.Standard_Price, (P.Standard_Price * OL.Ordered_Quantity) AS Extended_Price
	FROM CUSTOMER_t C, ORDER_t O, PRODUCT_t P, ORDER_LINE_t OL
	WHERE C.Customer_ID = O.Customer_ID
	AND	O.Order_ID = "1006"
	AND	OL.Product_ID = P.Product_ID
	AND	OL.Order_ID = "1006";



SELECT R.Order_ID, SUM(R.Extended_Price)
	FROM (SELECT OL.Order_ID, 
		(P.Standard_Price * OL.Ordered_Quantity)
		AS Extended_Price
		FROM PRODUCT_t P, ORDER_LINE_t OL
		WHERE OL.Order_ID = "1006"
		AND OL.Product_ID = P.Product_ID) AS R
		GROUP BY R.Order_ID;