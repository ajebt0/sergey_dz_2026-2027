USE Shop

--CREATE TABLE Categories
--(
--    CategoryID INT IDENTITY(1,1) PRIMARY KEY,
--    CategoryName NVARCHAR(100) NOT NULL
--);
--GO

--CREATE TABLE Products
--(
--    ProductID INT IDENTITY(1,1) PRIMARY KEY,
--    ProductName NVARCHAR(100) NOT NULL,
--    Price DECIMAL(10,2) NOT NULL,
--    CategoryID INT NOT NULL,

--    CONSTRAINT FK_Products_Categories
--        FOREIGN KEY (CategoryID)
--        REFERENCES Categories(CategoryID)
--);
--GO

--CREATE TABLE Customers
--(
--    CustomerID INT IDENTITY(1,1) PRIMARY KEY,
--    FirstName NVARCHAR(50) NOT NULL,
--    LastName NVARCHAR(50) NOT NULL,
--    Email NVARCHAR(100) NOT NULL
--);
--GO

--CREATE TABLE Orders
--(
--    OrderID INT IDENTITY(1,1) PRIMARY KEY,
--    CustomerID INT NOT NULL,
--    OrderDate DATE NOT NULL,

--    CONSTRAINT FK_Orders_Customers
--        FOREIGN KEY (CustomerID)
--        REFERENCES Customers(CustomerID)
--);
--GO

--CREATE TABLE OrderItems
--(
--    OrderItemID INT IDENTITY(1,1) PRIMARY KEY,
--    OrderID INT NOT NULL,
--    ProductID INT NOT NULL,
--    Quantity INT NOT NULL,

--    CONSTRAINT FK_OrderItems_Orders
--        FOREIGN KEY (OrderID)
--        REFERENCES Orders(OrderID),

--    CONSTRAINT FK_OrderItems_Products
--        FOREIGN KEY (ProductID)
--        REFERENCES Products(ProductID)
--);
--GO


--========================================

--INSERT INTO Categories (CategoryName)
--VALUES
--('Ноутбуки'),
--('Смартфоны'),
--('Мониторы'),
--('Клавиатуры'),
--('Мыши');
--GO

--INSERT INTO Products (ProductName, Price, CategoryID)
--VALUES
--('ASUS TUF Gaming A15', 899.99, 1),
--('Lenovo IdeaPad 5', 699.99, 1),
--('Samsung Galaxy S25', 799.99, 2),
--('iPhone 16', 999.99, 2),
--('LG UltraGear 27', 349.99, 3),
--('AOC 24G2', 229.99, 3),
--('Logitech G413', 89.99, 4),
--('HyperX Alloy Origins', 109.99, 4),
--('Logitech G502', 79.99, 5),
--('Razer DeathAdder V3', 69.99, 5);
--GO

--INSERT INTO Customers (FirstName, LastName, Email)
--VALUES
--('Иван', 'Петров', 'ivan@example.com'),
--('Алексей', 'Смирнов', 'alex@example.com'),
--('Максим', 'Иванов', 'max67@example.com'),
--('Анна', 'Соколова', 'anna@example.com'),
--('Дмитрий', 'Кузнецов', 'dmitry@example.com');
--GO

--INSERT INTO Orders (CustomerID, OrderDate)
--VALUES
--(1, '2026-09-01'),
--(2, '2026-09-02'),
--(3, '2026-09-03'),
--(1, '2026-09-05'),
--(4, '2026-09-07');
--GO

--INSERT INTO OrderItems (OrderID, ProductID, Quantity)
--VALUES
--(1, 1, 1),
--(1, 9, 1),
--(2, 3, 1),
--(2, 7, 1),
--(3, 5, 2),
--(4, 2, 1),
--(4, 10, 1),
--(5, 4, 1),
--(5, 8, 1);
--GO

--SELECT * FROM Categories;
--SELECT * FROM Products;
--SELECT * FROM Customers;
--SELECT * FROM Orders;
--SELECT * FROM OrderItems;

--SELECT
--    p.ProductName,
--    p.Price,
--    c.CategoryName
--FROM Products p
--JOIN Categories c
--    ON p.CategoryID = c.CategoryID;