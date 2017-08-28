create schema highan_airlines;
use highan_airlines;

create table Airplanes(
	Id INT PRIMARY KEY auto_increment NOT NULL,
    Type VARCHAR(255) NOT NULL,
    Description VARCHAR(255) NOT NULL,
    Total_seats INT NOT NULL,
    Provider VARCHAR(255) NOT NULL,
    Status VARCHAR(255) NOT NULL
);

create table Users(
	Id INT PRIMARY KEY auto_increment,
    CPF VARCHAR(14) UNIQUE NOT NULL,
    RG VARCHAR(255) UNIQUE NOT NULL,
	Name VARCHAR(255) NOT NULL,
    Password VARCHAR(255) NOT NULL,
    Address VARCHAR(255) NOT NULL,
    Phone VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL,
    Birthday DATE NOT NULL,
    Id_function INT,

	FOREIGN KEY(Id_function) REFERENCES Function(Id)
);

create table Functions(
	Id INT PRIMARY KEY auto_increment NOT NULL,
	Name VARCHAR(255) NOT NULL,
    Salary FLOAT(2) NOT NULL,
    Worlplace VARCHAR(255) NOT NULL,
    Manager INT NOT NULL,

    FOREIGN KEY(Manager) REFERENCES Users(Id)
);

create table Flights(
		Id INTEGER NOT NULL PRIMARY KEY,
		Origin VARCHAR(255) NOT NULL,
    Destiny VARCHAR(255) NOT NULL,
    Departure_time TIME NOT NULL,
    Arrival_time TIME NOT NULL,
		Departure_date DATE NOT NULL,
    Arrival_date DATE NOT NULL,
    Id_airplane INTEGER NOT NULL,
    Id_pilot INTEGER NOT NULL,

		FOREIGN KEY(Id_airplane) REFERENCES Airplanes(id),
		FOREIGN KEY(Id_pilot) REFERENCES Users(id)
);

create table Flight_tickets(
	Id INTEGER AUTO_INCREMENT NOT NULL PRIMARY KEY,
	Price FLOAT(4) NOT NULL,

	Client_name VARCHAR (255) NOT NULL,
	Client_CPF VARCHAR (255) NOT NULL,
	Client_birthday DATE NOT NULL,
	Client_telephone VARCHAR(30),
	Client_cellphone VARCHAR(30),

	Id_flight INTEGER NOT NULL,
	Id_client INTEGER NOT NULL,

	FOREIGN KEY (Id_flight) REFERENCES Flights(Id),
	FOREIGN KEY (Id_client) REFERENCES Users(Id)
);
