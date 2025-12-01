CREATE DATABASE veterinary;

CREATE TABLE owners(
    ownerid INT PRIMARY KEY,
    ofirstname VARCHAR(50),
    olastname VARCHAR(50),
    address VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100)
);

CREATE TABLE animals (
    animalid INT PRIMARY KEY,
    name VARCHAR(50),
    species VARCHAR(50),
    breed VARCHAR(50),
    dateofbirth DATE,
    gender VARCHAR(10),
    color VARCHAR(50),
    ownerid INT,
    FOREIGN KEY (ownerid) REFERENCES owners(ownerid)
);

CREATE TABLE appointments (
    appointid INT PRIMARY KEY,
    animalid INT,
    appointdate DATE,
    reason VARCHAR(255),
    FOREIGN KEY (animalid) REFERENCES animals(animalid)
);

CREATE TABLE doctors (
    doctorid INT PRIMARY KEY,
    dfirstname VARCHAR(50),
    dlastname VARCHAR(50),
    speciality VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100)
);

CREATE TABLE invoices (
    invoiceid INT PRIMARY KEY,
    appointid INT,
    totalamount DECIMAL(10,2),
    paymentdate TIME
)

CREATE TABLE medicalrecords (
    recordid INT PRIMARY KEY,
    animalid INT,
    recorddate DATETIME ,
    doctorid INT,
    diagnosis VARCHAR(255),
    prescription VARCHAR(255),
    notes TEXT
)

INSERT INTO owners (ownerid, ofirstname, olastname, address, phone, email)
VALUES
(1, 'Annie', 'Maligaya', 'Antipolo Del Sur', '0911-111-1111', 'anniemaligaya@gmail.com'),
(2, 'Joshua', 'Castronuevo', 'Baybayin', '0922-222-2222', 'joshuacas@gmail.com'),
(3, 'Cathrine', 'Balmes', 'Pinagkawitan', '0933-333-3333', 'catbalmes@gmail.com'),
(4, 'Theresa', 'Atienza', 'Pinagkawitan', '0944-444-4444', 'anniemaligaya@gmail.com'),
(5, 'Noel', 'Fadriquelan', 'Pinagkawitan', '0955-555-5555', 'noelfadriquelan@gmail.com'),
(6, 'Kaith', 'Atienza', 'Pinagkawitan', '0966-666-6666', 'kit@gmail.com'),
(7, 'John', 'Doe', 'US', '0977-777-7777', 'johndoe@gmail.com'),
(8, 'Lerum', 'Epsum', 'US', '0988-888-8888', 'loremepsum@gmail.com'),
(9, 'Satao', 'Kid', 'Japan', '0999-999-9999', 'sataokid@gmail.com'),
(10, 'Ching', 'Choa', 'China', '0900-000-0000', 'chinise@gmail.com')