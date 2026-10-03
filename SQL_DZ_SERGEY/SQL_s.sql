USE TestIndex
go

--CREATE TABLE orders(
--	id uniqueidentifier,
--	product_id uniqueidentifier,
--	customer_id uniqueidentifier,
--	price money
--)
--go

--INSERT INTO orders
--VALUES(
--	NewId(), NewId(), NewId(),
--	DATEPART(MILLISECOND, GetDate())
--)
--go 1000000


--SET STATISTICS IO ON 

--SELECT *
--FROM orders
--WHERE id  = 'CE643DC3-9104-47BE-8B85-41AD7EC496DC'


CREATE CLUSTERED INDEX pk_orders_1
ON orders(id)