USE db1
GO

CREATE TABLE order2(
	id int PRIMARY KEY IDENTITY(1, 1),
	number_order varchar(20) NOT NULL,
	price money,
	quantity int NOT NULL,
	sale decimal NOT NULL DEFAULT 1,
	sum_price AS (price * quantity * sale) PERSISTED, 
	date_created datetime DEFAULT GetDate(),
	date_finish AS (date_created + Day(10))
)

INSERT INTO order2
VALUES
	('ABC1212121', 100, 2, 0.5),
	('AB41212121', 150, 3, 0.9),
	('FDC1212121', 300, 5, 0.4)
