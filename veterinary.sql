CREATE DATABASE veterinary;

CREATE TABLE owners(
    ownerid INT PRIMARY KEY,
    ofirstname VARCHAR(50),
    olastname VARCHAR(50),
    address VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100),
    registereddated DATE
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

INSERT INTO animals (owner_id, name, species, breed, age, gender) VALUES
(1, 'Annie', 'Dog', 'Golden Retriever', 3, 'Female'),
(2, 'Joshua', 'Dog', 'German Shepherd', 5, 'Male'),
(3, 'Cathrine', 'Cat', 'Siamese', 2, 'Female'),
(4, 'Theresa', 'Dog', 'Pug', 1, 'Male'),
(5, 'Noel', 'Cat', 'Persian', 4, 'Male'),
(6, 'Kaith', 'Bird', 'Parrot', 2, 'Female'),
(7, 'John', 'Dog', 'Bulldog', 6, 'Male'),
(8, 'Lerum', 'Cat', 'Bengal', 3, 'Female'),
(9, 'Satao', 'Dog', 'Labrador', 8, 'Male'),
(10, 'Ching', 'Rabbit', 'Holland Lop', 1, 'Female');

INSERT INTO appointments (appointid, animalid, appointdate, reason)
VALUES
(1, 1, '2025-01-05', 'Route check-up'),
(2, 2, '2025-02-10', 'Vaccination'),
(3, 3, '2025-03-15', 'Skin allergy treatment'),
(4, 4, '2025-04-20', 'Ear infection'),
(5, 5, '2025-05-25', 'Dental cleaning'),
(6, 6, '2025-06-30', 'Wing injury assessment'),
(7, 7, '2025-07-05', 'Follow-up appointment'),
(8, 8, '2025-08-10', 'Fever and loss appetite'),
(9, 9, '2025-09-15', 'Vaccination booster'),
(10, 10, '2025-10-20', 'General health');

INSERT INTO doctors(doctorid, dfirstname, dlastname, speciality, phone, email) VALUES
(1, 'Dr.Maria', 'Santos', 'General Veterinarian', '987-654-3210', 'maria@example.com'),
(2, 'Dr.Antonio', 'Gonzales', 'Feline Specialist', '555-123-4567', 'antonio@example.com'),
(3, 'Dr.Felipe', 'Luna', 'Orthopedic Specialist', '111-222-3333', 'felipe@example.com'),
(4, 'Dr.Sofia', 'Reyes', 'Dermatology Specialist', '999-888-7777', 'sofia@xample.com'),
(5, 'Dr.Luis', 'Torres', 'Surgery Specialist', '123-555-7777', 'luis@example.com'),
(6, 'Dr.Carmen', 'Fernandez', 'Opthalmology Specialist', '333-222-1111', 'carmen@example.com');

INSERT INTO invoices(invoiceid, appointid, totalamount, paymentdate)
VALUES
(1, 1, 50.00, '09:30:00'),
(2, 2, 75.00, '14:15:00'),
(3, 3, 100.00, '11:00:00'),
(4, 4, 200.00, '13:45:00'),
(5, 5, 80.00, '10:30:00'),
(6, 6, 30.00, '15:00:00'),
(7, 7, 75.00, '09:15:00'),
(8, 8, 150.00, '16:30:00'),
(9, 9, 60.00, '14:45:00'),
(10, 10, 40.00, '11:30:00');

INSERT INTO medicalrecords (recordid, animalid, recorddate, doctorid, diagnosis, prescription, notes) VALUES 
    (1, 1, '2023-01-05 00:00:00', 1, 'Health check', 'N/A', 'Regular checkup, no issue detected'),
    (2, 2, '2023-01-10 00:00:00', 1, 'Vaccination', 'Vaccine X', 'Administered vaccination X as per schedule'),
    (3, 3, '2023-02-02 00:00:00', 3, 'Sprained leg', 'Pain Medication', 'Rest recommended for two weeks'),
    (4, 4, '2023-02-15 00:00:00', 1, 'Dental cleaning', 'N/A', 'Completed dental cleaning procedure'),
    (5, 5, '2023-03-10 00:00:00', 4, 'Skin infection', 'Antibiotics', 'Prescribed antibiotics for skin infection'),
    (6, 6, '2023-03-10 00:00:00', 2, 'Flea infestation', 'Flea Treatment', 'Administered flea treatment'),
    (7, 7, '2023-04-12 00:00:00', 1, 'Vaccination', 'Vaccine Y', 'Administered vaccination Y as per schedule'),
    (8, 8, '2023-04-18 00:00:00', 5, 'Spaying', 'N/A', 'Successfully performed spaying surgery'),
    (9, 9, '2023-05-02 00:00:00', 4, 'Allergic reaction', 'Antihistamines', 'Allergic reaction due to food prescribed antihistamine'),
    (10, 10, '2023-05-20 00:00:00', 6, 'Conjunctivitis', 'Eye drops', 'Prescribed eye drops for conjunctivitis');

ALTER TABLE 
invoices
CHANGE paymentdate paymenttime TIME;