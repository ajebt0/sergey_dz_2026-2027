USE test_dz

CREATE TABLE Destinations (
    destinationID int identity(1,1) PRIMARY KEY,
    country nvarchar(100) NOT NULL,
    city nvarchar(100) NOT NULL
);

CREATE TABLE Clients (
    clientID int identity(1,1) PRIMARY KEY,
    full_name nvarchar(200) NOT NULL,
    phone nvarchar(30) NULL,
    email nvarchar(254) NULL
);

CREATE TABLE Employees (
    employeeID int identity(1,1) PRIMARY KEY,
    full_name nvarchar(200) NOT NULL,
    position nvarchar(100) NOT NULL
);

CREATE TABLE Hotels (
    hotelID int identity(1,1) PRIMARY KEY,
    hotelName nvarchar(200) NOT NULL,
    destinationID int NOT NULL,
    CONSTRAINT FK_Hotels_Destinations
        FOREIGN KEY (destinationID) REFERENCES Destinations(destinationID)
);

CREATE TABLE Transport (
    transportID int identity(1,1) PRIMARY KEY,
    transportType nvarchar(100) NOT NULL,
    Provider nvarchar(200) NULL
);

CREATE TABLE Suppliers (
    supplierID int identity(1,1) PRIMARY KEY,
    supplierName nvarchar(200) NOT NULL,
    contactInfo nvarchar(300) NULL
);

CREATE TABLE Tours (
    tourID int identity(1,1) PRIMARY KEY,
    tourName nvarchar(200) NOT NULL,
    destinationID int NOT NULL,
    hotelID int NULL,
    transportID int NULL,
    CONSTRAINT FK_Tours_Destinations
        FOREIGN KEY (destinationID) REFERENCES Destinations(destinationID),
    CONSTRAINT FK_Tours_Hotels
        FOREIGN KEY (hotelID) REFERENCES Hotels(hotelID),
    CONSTRAINT FK_Tours_Transport
        FOREIGN KEY (transportID) REFERENCES Transport(transportID)
);

CREATE TABLE Bookings (
    bookingID int identity(1,1) PRIMARY KEY,
    clientID int NOT NULL,
    employeeID int NOT NULL,
    tourID int NOT NULL,
    bookingDate DATE NOT NULL DEFAULT (CONVERT(date, GETDATE())),
    CONSTRAINT FK_Bookings_Clients
        FOREIGN KEY (clientID) REFERENCES Clients(clientID),
    CONSTRAINT FK_Bookings_Employees
        FOREIGN KEY (employeeID) REFERENCES Employees(employeeID),
    CONSTRAINT FK_Bookings_Tours
        FOREIGN KEY (tourID) REFERENCES Tours(tourID)
);

CREATE TABLE Payments (
    paymentID INT IDENTITY(1,1) PRIMARY KEY,
    bookingID INT NOT NULL,
    amount DECIMAL(12,2) NOT NULL,
    payment_date DATETIME2(0) NOT NULL DEFAULT (SYSDATETIME()),
    CONSTRAINT FK_Payments_Bookings
        FOREIGN KEY (bookingID) REFERENCES Bookings(bookingID),
    CONSTRAINT CK_Payments_Amount CHECK (amount >= 0)
);

CREATE TABLE Tourists (
    touristID int identity(1,1) PRIMARY KEY,
    bookingID int NOT NULL,
    full_name nvarchar(200) NOT NULL,
    passportInfo nvarchar(100) NULL,
    CONSTRAINT FK_Tourists_Bookings
        FOREIGN KEY (bookingID) REFERENCES Bookings(bookingID)
);

CREATE TABLE TourServices (
    serviceID int identity(1,1) PRIMARY KEY,
    tourID int NOT NULL,
    supplierID int NOT NULL,
    serviceName nvarchar(200) NOT NULL,
    CONSTRAINT FK_TourServices_Tours
        FOREIGN KEY (tourID) REFERENCES Tours(tourID),
    CONSTRAINT FK_TourServices_Suppliers
        FOREIGN KEY (supplierID) REFERENCES Suppliers(supplierID)
);
