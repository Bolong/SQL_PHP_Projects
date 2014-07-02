SELECT ProductName, ConsumerNAME
FROM product AS p,consumer AS c
WHERE p.DistributorID = c.ConsumerID
ORDER BY ProductName;


EXPLAIN SELECT ProductName, ConsumerNAME
FROM product AS p,consumer AS c
WHERE p.DistributorID = c.ConsumerID
ORDER BY ProductName;

ALTER TABLE product
ADD FOREIGN KEY (distributorid) REFERENCES consumer (ConsumerID);

EXPLAIN SELECT ProductName, ConsumerNAME
FROM product AS p,consumer AS c
WHERE p.DistributorID = c.ConsumerID
ORDER BY ProductName;


SELECT ProductName, ConsumerNAME, EmployeeName
FROM product ,consumer, employee, buyorder
WHERE buyorder.EmployeeID = employee.EmployeeID
And buyorder.ProductID = product.ProductID
And product.DistributorID = consumer.ConsumerID
ORDER BY ProductName;

explain SELECT ProductName, ConsumerNAME, EmployeeName
FROM product ,consumer, employee, buyorder
WHERE buyorder.EmployeeID = employee.EmployeeID
And buyorder.ProductID = product.ProductID
And product.DistributorID = consumer.ConsumerID
ORDER BY ProductName;

ALTER TABLE buyorder
ADD FOREIGN KEY (EmployeeID) REFERENCES employee (EmployeeID);

explain SELECT ProductName, ConsumerNAME, EmployeeName
FROM product ,consumer, employee, buyorder
WHERE buyorder.EmployeeID = employee.EmployeeID
And buyorder.ProductID = product.ProductID
And product.DistributorID = consumer.ConsumerID
ORDER BY ProductName;

ALTER TABLE buyorder
ADD FOREIGN KEY (ConsumerID) REFERENCES consumer (ConsumerID);

explain SELECT ProductName, ConsumerNAME, EmployeeName
FROM product ,consumer, employee, buyorder
WHERE buyorder.EmployeeID = employee.EmployeeID
And buyorder.ProductID = product.ProductID
And product.DistributorID = consumer.ConsumerID
ORDER BY ProductName;

ALTER TABLE buyorder
ADD FOREIGN KEY (ProductID) REFERENCES product (ProductID);

explain SELECT ProductName, ConsumerNAME, EmployeeName
FROM product ,consumer, employee, buyorder
WHERE buyorder.EmployeeID = employee.EmployeeID
And buyorder.ProductID = product.ProductID
And product.DistributorID = consumer.ConsumerID
ORDER BY ProductName;

SELECT ProductName, ConsumerNAME, EmployeeName, d.Address, BuyDate
FROM destination as d, buyorder, product, consumer, employee
WHERE d.BuyOrderID = buyorder.BuyOrderID
And buyorder.EmployeeID = employee.EmployeeID
And buyorder.ProductID = product.ProductID
And product.DistributorID = consumer.ConsumerID
ORDER BY ProductName;

explain SELECT ProductName, ConsumerNAME, EmployeeName, d.Address, BuyDate
FROM destination as d, buyorder, product, consumer, employee
WHERE d.BuyOrderID = buyorder.BuyOrderID
And buyorder.EmployeeID = employee.EmployeeID
And buyorder.ProductID = product.ProductID
And product.DistributorID = consumer.ConsumerID
ORDER BY ProductName;

ALTER TABLE destination
ADD FOREIGN KEY (ConsumerID) REFERENCES consumer (ConsumerID);

explain SELECT ProductName, ConsumerNAME, EmployeeName, d.Address, BuyDate
FROM destination as d, buyorder, product, consumer, employee
WHERE d.BuyOrderID = buyorder.BuyOrderID
And buyorder.EmployeeID = employee.EmployeeID
And buyorder.ProductID = product.ProductID
And product.DistributorID = consumer.ConsumerID
ORDER BY ProductName;

ALTER TABLE destination
ADD FOREIGN KEY (ConsumerID) REFERENCES consumer (ConsumerID);

explain SELECT ProductName, ConsumerNAME, EmployeeName, d.Address, BuyDate
FROM destination as d, buyorder, product, consumer, employee
WHERE d.BuyOrderID = buyorder.BuyOrderID
And buyorder.EmployeeID = employee.EmployeeID
And buyorder.ProductID = product.ProductID
And product.DistributorID = consumer.ConsumerID
ORDER BY ProductName;