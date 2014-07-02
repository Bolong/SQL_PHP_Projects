SELECT ProductName
FROM product,buyorder,consumer
WHERE product.ProductID = buyorder.ProductID
And buyorder.ConsumerID = consumer.ConsumerID
And consumer.Gender = 0
And product.`Publication date` = '2010-11-12'
ORDER BY ProductName;

explain SELECT ProductName
FROM product,buyorder,consumer
WHERE product.ProductID = buyorder.ProductID
And buyorder.ConsumerID = consumer.ConsumerID
And consumer.Gender = 0
And product.`Publication date` = '2010-11-12'
ORDER BY ProductName;

ALTER TABLE consumer ADD INDEX Genderx (Gender);

OPTIMIZE TABLE consumer;

explain SELECT ProductName
FROM product,buyorder,consumer
WHERE product.ProductID = buyorder.ProductID
And buyorder.ConsumerID = consumer.ConsumerID
And consumer.Gender = 0
And product.`Publication date` = '2010-11-12'
ORDER BY ProductName;

ALTER TABLE product ADD INDEX Publicationdatex (`Publication date`);

OPTIMIZE TABLE product;

explain SELECT ProductName
FROM product,buyorder,consumer
WHERE product.ProductID = buyorder.ProductID
And buyorder.ConsumerID = consumer.ConsumerID
And consumer.Gender = 0
And product.`Publication date` = '2010-11-12'
ORDER BY ProductName;

SELECT ProductName
FROM product,buyorder,consumer
WHERE product.ProductID = buyorder.ProductID
And buyorder.ConsumerID = consumer.ConsumerID
And consumer.Gender = 0
And product.`Publication date` = '2010-11-12'
And product.Author = 'Naruto'
ORDER BY ProductName;

explain SELECT ProductName
FROM product,buyorder,consumer
WHERE product.ProductID = buyorder.ProductID
And buyorder.ConsumerID = consumer.ConsumerID
And consumer.Gender = 0
And product.`Publication date` = '2010-11-12'
And product.Author = 'Naruto'
ORDER BY ProductName;

ALTER TABLE product ADD INDEX productax (`Publication date`, Author);

OPTIMIZE TABLE product;

explain SELECT ProductName
FROM product FORCE INDEX (productax),buyorder,consumer
WHERE product.ProductID = buyorder.ProductID
And buyorder.ConsumerID = consumer.ConsumerID
And consumer.Gender = 0
And product.`Publication date` = '2010-11-12'
And product.Author = 'Naruto'
ORDER BY ProductName;

ALTER TABLE product ADD INDEX Authorx (Author);

OPTIMIZE TABLE product;

explain SELECT ProductName
FROM product,buyorder,consumer
WHERE product.ProductID = buyorder.ProductID
And buyorder.ConsumerID = consumer.ConsumerID
And consumer.Gender = 0
And product.`Publication date` = '2010-11-12'
And product.Author = 'Naruto'
ORDER BY ProductName;

explain SELECT ProductName
FROM product FORCE INDEX (Authorx),buyorder,consumer
WHERE product.ProductID = buyorder.ProductID
And buyorder.ConsumerID = consumer.ConsumerID
And consumer.Gender = 0
And product.`Publication date` = '2010-11-12'
And product.Author = 'Naruto'
ORDER BY ProductName;
