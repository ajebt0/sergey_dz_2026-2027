USE db0
go
CREATE SCHEMA customers
go
CREATE TABLE customers.users(
	id int NOT NULL,
	name varchar(100),
	balance money,
	created_at datetime
)