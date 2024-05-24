create database ZooDBMS;
use ZooDBMS;

create table Animal(
    Animal_Id int primary key Identity (1,1),
    Animal_Name varchar(50) not null,
    Gender varchar(1) not null,
    Habitat varchar(50),
    General_Name varchar(50) not null,
    Genus varchar(50),
    Species varchar(50),
    Status varchar(50) not null,
    Diet_Type varchar(50),
    Date_of_Birth Date,
    Family_Tree int,
    Exhibit_no int not null 
);

	INSERT INTO Animal (Animal_Name, Gender, Habitat, General_Name, Genus, Species, Status, Diet_Type, Date_of_Birth,Family_Tree,Exhibit_no)
    VALUES 
    ('Teddy', 'M', 'Savannah', 'Lion', 'Panthera', 'Leo', 'Healthy', 'Carnivore', '2015-07-15',Null, 1), --1
    ('Belle', 'F', 'Jungle', 'Tiger', 'Panthera', 'Tigris', 'Healthy', 'Carnivore', '2016-09-20',2, 2), --2
    ('Lotso', 'M', 'Grassland', 'Elephant', 'Loxodonta', 'Africana', 'Injured', 'Herbivore', '2014-12-10',3, 3),--3
    ('Simba', 'M', 'Savannah', 'Lion', 'Panthera', 'Leo', 'Healthy', 'Carnivore', '2019-03-12', 1, 1), --4
    ('Nala', 'F', 'Savannah', 'Lioness', 'Panthera', 'Leo', 'Healthy', 'Carnivore', '2020-06-25', 1, 1), --5
    ('Mufasa', 'M', 'Savannah', 'Lion', 'Panthera', 'Leo', 'Sick', 'Carnivore', '2014-05-03', 1, 1), --6
    ('Rajah', 'M', 'Jungle', 'Tiger', 'Panthera', 'Tigris', 'Healthy', 'Carnivore', '2018-11-04', 2, 2), --7
    ('Shere Khan', 'M', 'Jungle', 'Tiger', 'Panthera', 'Tigris', 'Healthy', 'Carnivore', '2017-08-17', Null, 2), --8
    ('Bagheera', 'M', 'Jungle', 'Black Panther', 'Panthera', 'Pardus', 'Healthy', 'Carnivore', '2019-03-27', Null, 6), --9
    ('King Louie', 'M', 'Jungle', 'Orangutan', 'Pongo', 'Abelii', 'Healthy', 'Omnivore', '2018-08-14', Null, 4), --10
    ('Kaa', 'F', 'Jungle', 'Python', 'Python', 'Molurus', 'Healthy', 'Carnivore', '2015-11-22', Null, 5), --11
    ('Hathi', 'M', 'Grassland', 'Elephant', 'Elephas', 'Maximus', 'Healthy', 'Herbivore', '2017-04-30', 3, 3), --12
    ('Rani', 'F', 'Grassland', 'Elephant', 'Elephas', 'Maximus', 'Pregnant', 'Herbivore', '2016-09-05', 3, 3), --13
    ('Hathi Jr.', 'M', 'Grassland', 'Elephant', 'Elephas', 'Maximus', 'Healthy', 'Herbivore', '2018-11-11', 3, 3), --14
    ('Yogi', 'M', 'Forest', 'Bear', 'Ursus', 'Arctos', 'Healthy', 'Omnivore', '2017-07-19', 4, 7), --15
    ('Boo Boo', 'M', 'Forest', 'Bear', 'Ursus', 'Arctos', 'Healthy', 'Omnivore', '2019-04-26', 4, 7), --16
    ('Kerchak', 'M', 'Forest', 'Gorilla', 'Gorilla', 'Gorilla', 'Healthy', 'Herbivore', '2016-10-02', 5, 8), --17
    ('Araujo', 'M', 'Forest', 'Gorilla', 'Gorilla', 'Gorilla', 'Healthy', 'Herbivore', '2018-04-07', 5, 8), --18
    ('Kala', 'F', 'Forest', 'Gorilla', 'Gorilla', 'Gorilla', 'Healthy', 'Herbivore', '2017-12-15', 5, 8), --19
    ('Raksha', 'F', 'Forest', 'Wolf', 'Canis', 'Lupus', 'Healthy', 'Carnivore', '2018-03-08', 6, 9), --20
    ('Akela', 'M', 'Forest', 'Wolf', 'Canis', 'Lupus', 'Healthy', 'Carnivore', '2015-09-21', 6, 9), --21
    ('Marlin', 'M', 'Ocean', 'Fish', 'Paracanthurus', 'Hepatus', 'Healthy', 'Omnivore', '2017-10-03', Null, 10), --22
    ('Nemo', 'M', 'Ocean', 'Clownfish', 'Amphiprion', 'Ocellaris', 'Healthy', 'Omnivore', '2018-12-01', Null, 10), --23
    ('Dory', 'F', 'Ocean', 'Fish', 'Paracanthurus', 'Hepatus', 'Healthy', 'Omnivore', '2018-02-17', Null, 10), --24
    ('Ziggy', 'M', 'Grassland', 'Zebra', 'Equus', 'Zebra', 'Healthy', 'Herbivore', '2017-08-10', 7, 11), --25
    ('Zara', 'F', 'Grassland', 'Zebra', 'Equus', 'Zebra', 'Healthy', 'Herbivore', '2019-05-21', 7, 11), --26
    ('Gerald', 'M', 'Savannah', 'Giraffe', 'Giraffa', 'Camelopardalis', 'Healthy', 'Herbivore', '2016-12-05', 8, 12), --27
    ('Gina', 'F', 'Savannah', 'Giraffe', 'Giraffa', 'Camelopardalis', 'Healthy', 'Herbivore', '2018-10-18', 8, 12), --28
    ('Randy', 'M', 'Grassland', 'Rhino', 'Rhinoceros', 'Unicornis', 'Healthy', 'Herbivore', '2015-09-07', 9, 13), --29
    ('Rhonda', 'F', 'Grassland', 'Rhino', 'Rhinoceros', 'Unicornis', 'Healthy', 'Herbivore', '2017-04-14', 9, 13), --30
    ('Rocky', 'M', 'Mountain', 'Mountain Goat', 'Oreamnos', 'Americanus', 'Healthy', 'Herbivore', '2017-10-15', NULL, 14), --31
    ('Ruby', 'F', 'Mountain', 'Mountain Goat', 'Oreamnos', 'Americanus', 'Healthy', 'Herbivore', '2019-02-28', NULL, 14), --32
    ('Messi','M', 'Mountain', 'Mountain Goat','Oreamnos', 'Americanus', 'Healthy', 'Herbivore', '2020-06-24', NULL, 14), --33
    ('Spike', 'M', 'Desert', 'Camel', 'Camelus', 'Dromedarius', 'Healthy', 'Herbivore', '2016-06-09',10, 15), --34
    ('Sandy', 'F', 'Desert', 'Camel', 'Camelus', 'Dromedarius', 'Sick', 'Herbivore', '2018-08-22', 10, 15), --35
    ('Toby', 'M', 'Jungle', 'Tiger', 'Panthera', 'Tigris', 'Healthy', 'Carnivore', '2020-01-04', 2, 2), --36
    ('Tina', 'F', 'Jungle', 'Tiger', 'Panthera', 'Tigris', 'Injured', 'Carnivore', '2019-07-17', 2, 2), --37
    ('Buddy', 'M', 'Swamp', 'Alligator', 'Alligator', 'Mississippiensis', 'Healthy', 'Carnivore', '2018-11-29', NULL, 16), --38
    ('Betty', 'F', 'Swamp', 'Alligator', 'Alligator', 'Mississippiensis', 'Healthy', 'Carnivore', '2017-05-12', NULL, 16), --39
    ('Max', 'M', 'Tundra', 'Polar Bear', 'Ursus', 'Maritimus', 'Healthy', 'Carnivore', '2015-12-08', 11, 17), --40
    ('Mia', 'F', 'Tundra', 'Polar Bear', 'Ursus', 'Maritimus', 'Pregnant', 'Carnivore', '2016-08-25', 11, 17), --41
    ('Adam', 'M', 'Savannah', 'Ostrich', 'Struthio', 'Camelus', 'Healthy', 'Herbivore', '2017-12-05', Null, 11), --42
    ('Eve', 'F', 'Savannah', 'Ostrich', 'Struthio', 'Camelus', 'Healthy', 'Herbivore', '2019-02-14', Null, 11), --43
    ('Gaza', 'M', 'Savannah', 'Gazelle', 'Gazella', 'Dorcas', 'Healthy', 'Herbivore', '2018-11-07', Null, 11), --44
    ('Aisha', 'F', 'Savannah', 'Gazelle', 'Gazella', 'Dorcas', 'Healthy', 'Herbivore', '2019-09-02', Null, 11); --45

create table Medical_History(
    Animal_Id int not null,
    Foreign Key(Animal_id) references Animal(Animal_Id),
    Diagnosis varchar(255),
    Diagnosis_Date Date,
    Treatment_Date Date,
    primary key(Animal_Id,Diagnosis,Diagnosis_Date)
);

    INSERT INTO Medical_History (Animal_Id, Diagnosis, Diagnosis_Date, Treatment_Date)
    VALUES 
    (3, 'Gunshot Wound', '2023-04-15','2023-05-12' ), -- Lotso (Wounded)
    (3, 'Fractured Leg', '2023-07-03', NULL), -- Lotso (Wounded) - Additional Medical History
    (6, 'Influenza', '2023-05-20', '2023-05-21'), -- Mufasa (Sick)
    (6, 'Fever', '2023-06-10', Null), -- Mufasa (Sick) - Additional Medical History
    (11, 'Snake Bite', '2023-09-10', '2023-09-11'), -- Kaa (Healthy)
    (15, 'Minor Infection', '2023-08-01', '2023-08-02'), -- Yogi (Healthy)
    (15, 'Scratched Paw', '2023-09-05', '2023-09-18'), -- Yogi (Healthy) - Additional Medical History
    (16, 'Minor Infection', '2023-09-05', '2023-09-06'), -- Boo Boo (Healthy)
    (17, 'Respiratory Infection', '2023-06-01', '2023-06-02'), -- Kerchak (Healthy)
    (18, 'Injury', '2023-04-05', '2023-04-06'), -- Kala (Healthy)
    (20, 'Sprained Ankle', '2023-07-15', '2023-07-16'), -- Raksha (Healthy)
    (21, 'Fever', '2023-08-10', '2023-08-23'), -- Akela (Healthy)
    (21, 'Minor Cut', '2023-08-30','2023-09-23' ), -- Akela (Healthy) - Additional Medical History
    (22, 'Scratched Fin', '2023-09-20', '2023-09-21'), -- Marlin (Healthy)
    (23, 'Swim Bladder Disorder', '2023-10-05', '2023-10-15'), -- Nemo (Healthy)
    (23, 'Food Allergy', '2023-11-01', '2023-11-14'), -- Nemo (Healthy) - Additional Medical History
    (24, 'Food Poisoning', '2023-08-25', '2023-08-26'), -- Dory (Healthy)
    (28, 'Eye Infection', '2023-06-15', '2023-06-16'), -- Ziggy (Healthy)
    (29, 'Muscle Strain', '2023-07-01', '2023-07-02'), -- Zara (Healthy)
    (30, 'Hypertension', '2023-05-10', '2023-05-11'), -- Gerald (Healthy)
    (32, 'Skin Allergy', '2023-07-25', '2023-08-03'), -- Rocky (Healthy)
    (32, 'Minor Cut', '2023-08-23', '2023-09-13'), -- Rocky (Healthy) - Additional Medical History
    (34, 'Respiratory Infection', '2023-09-01', '2023-09-02'), -- Toby (Healthy)
    (35, 'Minor Injury', '2023-08-15', Null), -- Tina (Injured)
    (36, 'Eye Infection', '2023-04-10', '2023-04-11'), -- Buddy (Healthy)
    (37, 'Minor Infection', '2023-03-25', '2023-03-26'), -- Betty (Healthy)
    (39, 'Frostbite', '2023-11-10', '2023-11-11'); -- Mia (Pregnant)


create table Exhibit(
    Exhibit_No Int primary key Identity (1,1),
    Exhibit_Name varchar(50) not null,
    Capacity int not null,
    Theme varchar(50),
    Location varchar(50) CHECK( Location In ('Zone A', 'Zone B', 'Zone C', 'Zone D', 'Zone E')),
    Size varchar(50) not null,
    Security_Level varchar(50),
    EManager_Id int not null,
);
    INSERT INTO Exhibit (Exhibit_Name, Capacity, Theme, Location, Size, Security_Level, EManager_Id)
    VALUES 
    ('Savannah Lions', 10, 'African Savannah', 'Zone A', '2500', 'High', 1), -- Exhibit 1
    ('Jungle Tigers', 8, 'Tropical Rainforest', 'Zone A', '1600', 'Medium', 1), -- Exhibit 2
    ('Grassland Elephants', 6, 'Grassland', 'Zone C', '2000', 'High', 1), -- Exhibit 3
    ('Orangutan Rainforest', 4, 'Tropical Rainforest', 'Zone B', '1200', 'Medium', 1), -- Exhibit 4
    ('Python Rainforest ', 12, 'Tropical Rainforest', 'Zone B', '2400', 'Medium', 1), -- Exhibit 5
    ('Panther Forest', 6, 'Temperate Forest', 'Zone D', '1000', 'Low', 1), -- Exhibit 6
    ('Forest Bears', 6, 'Temperate Forest', 'Zone D', '500', 'Medium', 4), -- Exhibit 7
    ('Gorilla Forest', 10, 'Tropical Rainforest', 'Zone E', '10000', 'High', 5), -- Exhibit 8
    ('Wolf Woods', 10, 'Forest Habitat', 'Zone C', '2400', 'Low', 6), -- Exhibit 9
    ('Oceanic World', 15, 'Marine Life', 'Zone E', '800', 'High', 10), -- Exhibit 10
    ('Savannah Plains', 30, 'African Wildlife', 'Zone A', '1200', 'High', 1), -- Exhibit 11
    ('Giraffe Lands', 8, 'African Wildlife', 'Zone A', '1200', 'High', 1), -- Exhibit 12
    ('Grassland Rhinos', 6, 'African Savannah', 'Zone A', '2000', 'High', 1), -- Exhibit 13
    ('Mountain Goats', 10, 'Mountain Wildlife', 'Zone E', '2000', 'Medium', 1), -- Exhibit 14
    ('Dusty Dunes', 15, 'Desert Wildlife', 'Zone D', '1000', 'Medium', 1), -- Exhibit 15
    ('Swamp Alligators', 8, 'Swamp Wildlife', 'Zone C', '1500', 'Medium', 1), -- Exhibit 16
    ('Tundra Polar Bears', 6, 'Arctic Wildlife', 'Zone E', '2000', 'High', 1); -- Exhibit 17



create table Supplier(
    Company_Name varchar(50) primary key ,
    Email varchar(50)
);
INSERT INTO Supplier (Company_Name, Email)
VALUES 
('Beef & More Suppliers', 'info@meatandmore.com'), -- Supplies Beef and Chicken
('Green Fields Farms', 'info@greenfields.com'), -- Supplies Hay and Grass
('SeaFresh Seafoods', 'info@seafresh.com'), -- Supplies Fish and Fish Food
('Fruitful Delights', 'info@fruitfuldelights.com'), -- Supplies Fruits
('Natures Bounty', 'info@naturesbounty.com'), -- Supplies Insects and Fruits
('MediServe', 'info@mediserve.com'), -- Supplies Medical Equipment
('MedTech Solutions', 'info@medtechsolutions.com'); -- Supplies Medical Equipment

create table Supplier_Phone(
    Company_Name varchar(50),
    Foreign Key(Company_name) references Supplier(Company_Name),
    Phone_No varchar(13) not null,
    primary key(Company_Name,Phone_No)
);
INSERT INTO Supplier_Phone (Company_Name, Phone_No)
VALUES 
('Beef & More Suppliers', '0123456789'),
('Beef & More Suppliers', '0198765432'),
('Green Fields Farms', '0987654321'),
('SeaFresh Seafoods', '0123456789'),
('Fruitful Delights', '0987654321'),
('Natures Bounty', '0123456789'),
('MediServe', '0987654321'),
('MedTech Solutions', '0123456789');


create table Food(
    type varchar(50) primary key not null
);
	INSERT INTO Food (type) 
    VALUES 
    ('Insects'), ('Chicken'), ('Beef'), 
    ('Hay'), ('Grass'), ('Fruits'), 
    ('Fish'),('Insects/Rodents'),('Fish Food');


create table Supplies(
    company_name varchar(50),
    exhibit_no int,
    Food_Type varchar(50),
    Foreign Key(company_name) references Supplier(Company_Name),
    Foreign Key(exhibit_no) references Exhibit(Exhibit_No), 
    Foreign Key(Food_Type) references Food(type),
    Quantity varchar(10) not null,
    primary key(company_name,exhibit_no,Food_Type)
);

	INSERT INTO Supplies (company_name, exhibit_no, Food_Type, Quantity)
VALUES 
('Beef & More Suppliers', 1, 'Beef', '300 kg'), -- Savannah Lions
('Beef & More Suppliers', 1, 'Chicken', '300 kg'), -- Savannah Lions
('Beef & More Suppliers', 2, 'Beef', '200 kg'), -- Jungle Tigers
('Beef & More Suppliers', 2, 'Chicken', '200 kg'), -- Jungle Tigers
('Fruitful Delights', 3, 'Fruits', '250 kg'), -- Grassland Elephants
('Green Fields Farms', 3, 'Grass', '400 kg'), -- Grassland Elephants
('Green Fields Farms', 3, 'Hay', '400 kg'), -- Grassland Elephants
('Fruitful Delights', 4, 'Insects/Rodents', '300 kg'), -- Orangutan Rainforest
('Natures Bounty', 5, 'Insects/Rodents', '250 kg'), -- Python Rainforest
('Beef & More Suppliers', 6, 'Beef', '200 kg'), -- Panther Forest
('SeaFresh Seafoods', 7, 'Fish', '150 kg'), -- Forest Bears
('Fruitful Delights', 7, 'Fruits', '250 kg'), -- Forest Bears
('Beef & More Suppliers', 8, 'Beef', '300 kg'), -- Gorilla Forest
('Fruitful Delights', 8, 'Fruits', '250 kg'), -- Gorilla Forest
('Green Fields Farms', 8, 'Hay', '300 kg'), -- Gorilla Forest
('Beef & More Suppliers',9, 'Beef', '300 kg'), -- Wolf Woods
('SeaFresh Seafoods', 10, 'Fish', '100kg'), -- Oceanic World
('SeaFresh Seafoods', 10, 'Fish Food', '50kg'), -- Oceanic World
('Green Fields Farms', 11, 'Hay', '500 kg'), -- Savannah Plains
('Green Fields Farms', 11, 'Grass', '500 kg'), -- Savannah Plains
('Fruitful Delights', 11, 'Fruits', '500 kg'), -- Savannah Plains
('Fruitful Delights', 12, 'Fruits', '300 kg'), -- Giraffe Lands
('Green Fields Farms', 12, 'Hay', '500 kg'), --Giraffe Lands
('Green Fields Farms', 13, 'Grass', '500 kg'), -- Grassland Rhinos
('Green Fields Farms', 13, 'Hay', '500 kg'), --GrassLands Rhinos
('Green Fields Farms', 14, 'Grass', '500 kg'), -- Mountain Goats
('Fruitful Delights', 15, 'Fruits', '300 kg'), -- Dusty Dunes
('Green Fields Farms', 15, 'Hay', '500 kg'), --Dusty Dunes
('Beef & More Suppliers', 16, 'Beef', '300 kg'), -- Swamp Alligators
('SeaFresh Seafoods', 17, 'Fish', '400kg'), -- Tundra Polar Bears
('Beef & More Suppliers', 17, 'Beef', '300 kg'); -- Tundra Polar Bears

create table Equipment(
    Equipment_Number int primary key Identity (1,1) 
);

	INSERT INTO Equipment DEFAULT VALUES -- 1
	INSERT INTO Equipment DEFAULT VALUES -- 2
    INSERT INTO Equipment DEFAULT VALUES -- 3
    INSERT INTO Equipment DEFAULT VALUES -- 4
    INSERT INTO Equipment DEFAULT VALUES -- 5
    INSERT INTO Equipment DEFAULT VALUES -- 6
    INSERT INTO Equipment DEFAULT VALUES -- 7
    INSERT INTO Equipment DEFAULT VALUES -- 8

create table Clinic(
    Clinic_No int primary key Identity (1,1),
    Location varchar(50),
    Capacity int,
    Operating_Hours varchar(30),
    CManager_Id int not null,
);

	INSERT INTO Clinic (Location, Capacity, Operating_Hours, CManager_Id)
    VALUES 
    ('Veterinary Clinic', 20, '9:00 AM - 5:00 PM', 1),
    ('Surgical Clinic', 15, '8:00 AM - 4:00 PM',2),
    ('Hospital A', 100, '8:00 AM - 5:00 PM', 1),
    ('Health Center B', 80, '9:00 AM - 6:00 PM', 2),
    ('Medical Clinic C', 70, '7:30 AM - 4:30 PM', 3),
    ('Urgent Care D', 60, '10:00 AM - 7:00 PM', 4),
    ('Wellness Center E', 90, '8:30 AM - 5:30 PM', 5),
    ('Community Clinic F', 85, '9:30 AM - 6:30 PM', 6),
    ('Family Practice G', 75, '7:00 AM - 4:00 PM', 7),
    ('Pediatric Clinic H', 65, '11:00 AM - 8:00 PM', 8),
    ('Rehabilitation Center I', 80, '8:00 AM - 5:00 PM', 9),
    ('Specialty Clinic J', 70, '9:00 AM - 6:00 PM', 10);

create table Goes_To(
    animal_id int,
    clinic_no int,
    Event_Type varchar(50) not null CHECK (Event_Type IN ('Checkup', 'Surgery', 'Vaccination','Treatment')),
    Event_Date Date,
    Foreign Key(animal_id) references Animal(Animal_Id),
    Foreign Key(clinic_no) references Clinic(Clinic_No),
    primary key(animal_id,clinic_no,Event_Date)
)
    INSERT INTO Goes_To (animal_id, clinic_no, Event_Type, Event_Date)
    VALUES 
    (3, 1, 'Surgery', '2023-04-15'), -- Lotso (Wounded) - Surgery
    (3, 1, 'Treatment', '2023-07-03'), -- Lotso (Wounded) - Additional Treatment
    (6, 1, 'Vaccination', '2023-05-20'), -- Mufasa (Sick) - Vaccination
    (6, 1, 'Checkup', '2023-06-10'), -- Mufasa (Sick) - Checkup
    (11, 1, 'Treatment', '2023-09-10'), -- Kaa (Healthy) - Treatment
    (15, 1, 'Checkup', '2023-08-01'), -- Yogi (Healthy) - Checkup
    (15, 1, 'Treatment', '2023-09-05'), -- Yogi (Healthy) - Treatment
    (16, 1, 'Treatment', '2023-09-05'), -- Boo Boo (Healthy) - Treatment
    (17, 1, 'Checkup', '2023-06-01'), -- Kerchak (Healthy) - Checkup
    (18, 1, 'Treatment', '2023-04-05'), -- Kala (Healthy) - Treatment
    (20, 1, 'Checkup', '2023-07-15'), -- Raksha (Healthy) - Checkup
    (21, 1, 'Checkup', '2023-08-10'), -- Akela (Healthy) - Checkup
    (21, 1, 'Treatment', '2023-08-30'), -- Akela (Healthy) - Treatment
    (22, 1, 'Treatment', '2023-09-20'), -- Marlin (Healthy) - Treatment
    (23, 1, 'Treatment', '2023-10-05'), -- Nemo (Healthy) - Treatment
    (23, 1, 'Treatment', '2023-11-01'), -- Nemo (Healthy) - Additional Treatment
    (24, 1, 'Treatment', '2023-08-25'), -- Dory (Healthy) - Treatment
    (28, 1, 'Treatment', '2023-06-15'), -- Ziggy (Healthy) - Treatment
    (29, 1, 'Treatment', '2023-07-01'), -- Zara (Healthy) - Treatment
    (30, 1, 'Checkup', '2023-05-10'), -- Gerald (Healthy) - Checkup
    (32, 1, 'Checkup', '2023-07-25'), -- Rocky (Healthy) - Checkup
    (34, 1, 'Checkup', '2023-09-01'), -- Toby (Healthy) - Checkup
    (35, 1, 'Treatment', '2023-08-15'), -- Tina (Injured) - Treatment
    (36, 1, 'Treatment', '2023-04-10'), -- Buddy (Healthy) - Treatment
    (37, 1, 'Treatment', '2023-03-25'), -- Betty (Healthy) - Treatment
    (39, 1, 'Treatment', '2023-11-10'); -- Mia (Pregnant) - Treatment

create table Provides(
    company_name varchar(50),
    clinic_no int,
    equipment_no int,
    Foreign Key(company_name) references Supplier(Company_Name),
    Foreign Key(clinic_No) references Clinic(Clinic_No),
    Foreign Key(equipment_No) references Equipment(Equipment_Number),
    Quantity varchar(10) not null,
    primary key(company_name,clinic_no,equipment_no)
);

	INSERT INTO Provides (company_name, clinic_no, equipment_no, Quantity)
    VALUES 
    ('MediServe', 5, 3, '10'), -- Medical Supplies Ltd. providing 10 units of equipment 3 to Medical Clinic C
    ('MediServe', 6, 4, '12'), -- Medical Supplies Ltd. providing 12 units of equipment 4 to Urgent Care D
    ('MedTech Solutions', 7, 5, '8'), -- Medical Supplies Ltd. providing 8 units of equipment 5 to Wellness Center E
    ('MedTech Solutions', 8, 6, '14'), -- Medical Supplies Ltd. providing 14 units of equipment 6 to Community Clinic F
    ('MedTech Solutions', 9, 7, '18'), -- Medical Supplies Ltd. providing 18 units of equipment 7 to Family Practice G
    ('MediServe', 10, 8, '20'), -- Medical Supplies Ltd. providing 20 units of equipment 8 to Pediatric Clinic H
    ('MediServe', 11, 1, '15'), -- Medical Supplies Ltd. providing 15 units of equipment 1 to Rehabilitation Center I
    ('MedTech Solutions', 12, 2, '10'); -- Medical Supplies Ltd. providing 10 units of equipment 2 to Specialty Clinic J

create table Staff(
    Manager_ID int ,
    Clinic_NO int,
    Exhibit_NO int,
    Shop_NO int,  
    SSN char(10) not null,
    ID int primary key Identity (1,1),
    Fname varchar(50) not null,
    Mname varchar(50),
    Lname varchar(50) not null,
    Address varchar(50) ,
    Email varchar(50) ,
    Salary int not null,
    Gender varchar(1) not null,
    Role varchar(50) not null CHECK (Role IN ('Shop Manager', 'Veterinarian', 'Zookeeper', 'Security Guard','Shop Attendant','Janitor','Cafeteria Staff', 'Clinic Manager', 'Exhibit Advisor')),
    Joining_Date Date,
    Birth_Date Date not null,                          
    Working_Hours varchar(30),
    Foreign Key(Manager_ID) REFERENCES Staff(ID),
    Foreign Key(Clinic_NO) references Clinic(Clinic_No),                
    Foreign Key(Exhibit_NO) references Exhibit(Exhibit_No)
);

	INSERT INTO Staff (Manager_ID, Clinic_NO, Exhibit_NO, Shop_NO, SSN, Fname, Mname, Lname, Address, Email, Salary, Gender, Role, Joining_Date, Birth_Date, Working_Hours)
    VALUES 
     (NULL, 1, NULL, NULL, '1234567810', 'John', NULL, 'Marston', '123 Main St', 'john@example.com', 50000, 'M', 'Clinic Manager', '2020-01-15', '1985-05-10', '9:00 AM - 5:00 PM'),
    (NULL, 2, NULL, NULL, '1234567890', 'John', NULL, 'Doe', '123 Main St', 'john@example.com', 50000, 'M', 'Clinic Manager', '2020-01-15', '1985-05-10', '9:00 AM - 5:00 PM'),
    (NULL, 3, NULL, NULL, '9876543210', 'Jane', NULL, 'Smith', '456 Elm St', 'jane@example.com', 45000, 'F', 'Clinic Manager', '2019-07-20', '1988-09-20', '10:00 AM - 6:00 PM'),
    (NULL, 4, Null, NULL, '1478523698', 'Youssef', NULL, 'Mohammed', '456 Elm St', 'yousef@example.com', 8000, 'M', 'Clinic Manager', '2019-07-20', '1988-09-20', '10:00 AM - 6:00 PM'),
    (NULL, 5, Null, NULL, '3437684591', 'John', NULL, 'Doe', '123 Main St', 'john@example.com', 50000, 'M', 'Clinic Manager', '2020-01-15', '1985-05-10', '9:00 AM - 5:00 PM'),
    (NULL, 6, NULL, Null, '3681569136', 'Jane', NULL, 'Smith', '456 Elm St', 'jane@example.com', 45000, 'F', 'Clinic Manager', '2019-07-20', '1988-09-20', '10:00 AM - 6:00 PM'),
    (NULL, 7, NULL, Null, '8449733147', 'Youssef', NULL, 'Nigger', '456 Elm St', 'yousef@example.com', 8000, 'M', 'Clinic Manager', '2019-07-20', '1988-09-20', '10:00 AM - 6:00 PM'),
    (NULL, 8, NULL, Null, '6234433129', 'Youssef', NULL, 'Mahmoud', '456 Elm St', 'yousef@example.com', 8000, 'M', 'Clinic Manager', '2019-07-20', '1988-09-20', '10:00 AM - 6:00 PM'),
    (NULL, 9, NULL, NULL, '1357924680', 'Emily', 'Grace', 'Anderson', '123 Oak St', 'emily.anderson@example.com', 50000, 'F', 'Clinic Manager', '2024-04-01', '1980-05-15', '8:00 AM - 5:00 PM'),
    (NULl, 10, NULL, NULL, '2468013579', 'Michael', 'James', 'Roberts', '456 Elm St', 'michael.roberts@example.com', 45000, 'M', 'Clinic Manager', '2023-12-15', '1985-10-20', '9:00 AM - 6:00 PM'),
    (NULL, 11, NULL, NULL, '3579246801', 'Jessica', 'Anne', 'Harris', '789 Pine St', 'jessica.harris@example.com', 40000, 'F', 'Clinic Manager', '2024-02-28', '1990-07-12', '7:00 AM - 4:00 PM'),
    (NULL, 12, NULL, NULL, '4680135792', 'David', 'Michael', 'Thompson', '101 Cedar St', 'david.thompson@example.com', 35000, 'M', 'Clinic Manager', '2024-01-10', '1995-02-28', '10:00 AM - 7:00 PM'),
    (NULL, NULL, NULL, 1, '5792468013', 'Jessica', 'Nicole', 'Davis', '321 Maple St', 'jessica.davis@example.com', 30000, 'F', 'Shop Manager', '2024-03-20', '1987-12-05', '11:00 AM - 8:00 PM'),
    (NULL, NULL, NULL, 2, '6801357924', 'Benjamin', 'Edward', 'White', '654 Birch St', 'benjamin.white@example.com', 25000, 'M', 'Shop Manager', '2023-11-05', '1983-09-18', '12:00 PM - 9:00 PM'),
    (NULL, NULL, NULL, 3, '7913579246', 'Olivia', 'Rachel', 'Lee', '987 Oak St', 'olivia.lee@example.com', 55000, 'F', 'Shop Manager', '2023-10-02', '1978-04-30', '1:00 PM - 10:00 PM'),
    (NULL, NULL, NULL, 4, '8024680135', 'Daniel', 'Peter', 'Martinez', '246 Pineapple St', 'daniel.martinez@example.com', 60000, 'M', 'Shop Manager', '2024-05-18', '1982-11-22', '2:00 PM - 11:00 PM'),
    (NULL, NULL, NULL, 5, '9135792468', 'Sophia', 'Lily', 'Clark', '135 Banana St', 'sophia.clark@example.com', 70000, 'F', 'Shop Manager', '2023-09-09', '1992-08-07', '3:00 PM - 12:00 AM'),
    (NULL, NULL, NULL, 6, '0246801357', 'Ethan', 'Daniel', 'Young', '864 Orange St', 'ethan.young@example.com', 65000, 'M', 'Shop Manager', '2023-07-12', '1986-06-03', '4:00 PM - 1:00 AM'),
    (NULL, NULL, NULL, 7, '1357924680', 'Sophia', 'Mia', 'Rodriguez', '963 Lemon St', 'sophia.rodriguez@example.com', 75000, 'F', 'Shop Manager', '2024-06-30', '1991-03-25', '5:00 PM - 2:00 AM'),
    (NULL, NULL, NULL, 8, '2468013579', 'Ethan', 'Daniel', 'Hernandez', '741 Lime St', 'ethan.hernandez@example.com', 40000, 'M', 'Shop Manager', '2023-05-24', '1984-12-10', '6:00 PM - 3:00 AM'),
    (NULL, NULL, NULL, 9, '3579246801', 'Olivia', 'Rachel', 'Lopez', '159 Grape St', 'olivia.lopez@example.com', 35000, 'F', 'Shop Manager', '2023-04-11', '1989-09-28', '7:00 PM - 4:00 AM'),
    (NULL, NULL, NULL, 10, '4680135792', 'Benjamin', 'Edward', 'Young', '357 Watermelon St', 'benjamin.young@example.com', 30000, 'M', 'Shop Manager', '2024-08-22', '1979-06-15', '8:00 PM - 5:00 AM'),
    (NULL, NULL, NULL, 11, '5792468013', 'Isabella', 'Sophia', 'Garcia', '753 Cherry St', 'isabella.garcia@example.com', 55000, 'F', 'Shop Manager', '2024-03-15', '1981-05-30', '9:00 PM - 6:00 AM'),
    (NULL, NULL, NULL, 12, '6801357924', 'Emma', 'Madison', 'Walker', '258 Mango St', 'emma.walker@example.com', 60000, 'F', 'Shop Manager', '2023-02-09', '1983-11-05', '10:00 PM - 7:00 AM'),
    (NULL, NULL, NULL, 13, '7913579246', 'Daniel', 'Peter', 'Lewis', '852 Kiwi St', 'daniel.lewis@example.com', 65000, 'M', 'Shop Manager', '2023-01-02', '1988-08-20', '11:00 PM - 8:00 AM'),
    (NULL, NULL, NULL, 14, '8024680135', 'Sophia', 'Nicole', 'Harris', '456 Peach St', 'sophia.harris@example.com', 70000, 'F', 'Shop Manager', '2024-07-14', '1980-03-18', '12:00 AM - 9:00 AM'),
    (NULL, NULL, NULL, 15, '9135792468', 'Noah', 'Alexander', 'King', '753 Coconut St', 'noah.king@example.com', 75000, 'M', 'Shop Manager', '2024-04-30', '1977-09-15', '1:00 AM - 10:00 AM'),
    (NULL, NULL, NULL, 16, '0246801357', 'Sophia', 'Elizabeth', 'Perez', '357 Pomegranate St', 'sophia.perez@example.com', 40000, 'F', 'Shop Manager', '2023-11-28', '1982-06-20', '2:00 AM - 11:00 AM'),
    (NULL, NULL, NULL, 17, '1357924680', 'Jacob', 'Michael', 'Young', '159 Papaya St', 'jacob.young@example.com', 35000, 'M', 'Shop Manager', '2023-10-15', '1987-01-12', '3:00 AM - 12:00 PM'),
    (NULL, NULL, NULL, 18, '2468013509', 'Obad', 'Marie', 'Scott', '741 Plum St', 'Obad.scott@example.com', 4000, 'F', 'Shop Manager', '2023-08-24', '1984-05-10', '4:00 PM - 1:00 AM'),
    (NULL, NULL, NULL, 19, '3579246801', 'Andrew', 'Joseph', 'Wright', '159 Avocado St', 'andrew.wright@example.com', 35000, 'M', 'Shop Manager', '2023-07-11', '1989-12-28', '5:00 PM - 2:00 AM'),
    (NULL, NULL, NULL, 20, '4680135792', 'Rebecca', 'Grace', 'Taylor', '357 Guava St', 'rebecca.taylor@example.com', 30000, 'F', 'Shop Manager', '2024-09-22', '1979-09-15', '6:00 PM - 3:00 AM'),
    (NULL, NULL, NULL, 21, '5792468013', 'Joseph', 'Aaron', 'Martin', '753 Durian St', 'joseph.martin@example.com', 55000, 'M', 'Shop Manager', '2024-04-15', '1981-06-30', '7:00 PM - 4:00 AM'),
    (NULL, NULL, NULL, 22, '6801357924', 'Nicole', 'Michelle', 'White', '258 Kiwifruit St', 'hannah.white@example.com', 60000, 'F', 'Shop Manager', '2023-02-09', '1983-11-05', '8:00 PM - 5:00 AM'),
    (NULL, NULL, 1, NULL, '7913579246', 'Aaron', 'Christopher', 'Brown', '852 Pear St', 'aaron.brown@example.com', 65000, 'M', 'Exhibit Advisor', '2023-01-02', '1988-08-20', '9:00 PM - 6:00 AM'),
    (NULL, NULL, 2, NULL, '8024680135', 'Danielle', 'Paige', 'Evans', '456 Dragonfruit St', 'danielle.evans@example.com', 70000, 'F', 'Exhibit Advisor', '2024-07-14', '1980-03-18', '10:00 PM - 7:00 AM'),
    (NULL, NULL, 3, NULL, '9135792468', 'Alexander', 'Tyler', 'King', '753 Lychee St', 'alexander.king@example.com', 75000, 'M', 'Exhibit Advisor', '2024-04-30', '1977-09-15', '11:00 PM - 8:00 AM'),
    (NULL, NULL, 4, NULL, '0246801357', 'Vanessa', 'Grace', 'Parker', '357 Starfruit St', 'vanessa.parker@example.com', 40000, 'F', 'Exhibit Advisor', '2023-11-28', '1982-06-20', '12:00 AM - 9:00 AM'),
    (NULL, NULL, 5, NULL, '1357924680', 'Zachary', 'Thomas', 'Young', '159 Coconut St', 'zachary.young@example.com', 35000, 'M', 'Exhibit Advisor', '2023-10-15', '1987-01-12', '1:00 AM - 10:00 AM'),
    (NULL, NULL, 6, NULL, '2468013519', 'Hoss', 'Marie', 'Scott', '741 Apple St', 'Hoss.scott@example.com', 40000, 'F', 'Exhibit Advisor', '2023-08-24', '1984-05-10', '2:00 AM - 11:00 AM'),
    (NULL, NULL, 7, NULL, '3579246801', 'Andrew', 'Joseph', 'Wright', '159 Pear St', 'andrew.wright@example.com', 35000, 'M', 'Exhibit Advisor', '2023-07-11', '1989-12-28', '3:00 AM - 12:00 PM'),
    (NULL, NULL, 8, NULL, '4680135792', 'Rebecca', 'Grace', 'Taylor', '357 Orange St', 'rebecca.taylor@example.com', 30000, 'F', 'Exhibit Advisor', '2024-09-22', '1979-09-15', '4:00 AM - 1:00 PM'),
    (NULL, NULL, 9, NULL, '5792468013', 'Joseph', 'Aaron', 'Martin', '753 Banana St', 'joseph.martin@example.com', 55000, 'M', 'Exhibit Advisor', '2024-04-15', '1981-06-30', '5:00 AM - 2:00 PM'),
    (NULL, NULL, 10, NULL, '6801357124', 'Tina', 'Michelle', 'White', '258 Cherry St', 'hannah.white@example.com', 60000, 'F', 'Exhibit Advisor', '2023-02-09', '1983-11-05', '6:00 AM - 3:00 PM'),
    (NULL, NULL, 11, NULL, '7913579246', 'Aaron', 'Christopher', 'Brown', '852 Apple St', 'aaron.brown@example.com', 65000, 'M', 'Exhibit Advisor', '2023-01-02', '1988-08-20', '7:00 AM - 4:00 PM'),
    (NULL, NULL, 12, NULL, '8024680135', 'Danielle', 'Paige', 'Evans', '456 Grape St', 'danielle.evans@example.com', 70000, 'F', 'Exhibit Advisor', '2024-07-14', '1980-03-18', '8:00 AM - 5:00 PM'),
    (NULL, NULL, 13, NULL, '9135792468', 'Alexander', 'Tyler', 'King', '753 Grapefruit St', 'alexander.king@example.com', 75000, 'M', 'Exhibit Advisor', '2024-04-30', '1977-09-15', '9:00 AM - 6:00 PM'),
    (NULL, NULL, 14, NULL, '0246801357', 'Vanessa', 'Grace', 'Parker', '357 Lemon St', 'vanessa.parker@example.com', 40000, 'F', 'Exhibit Advisor', '2023-11-28', '1982-06-20', '10:00 AM - 7:00 PM'),
    (NULL, NULL, 15, NULL, '1357924680', 'Zachary', 'Thomas', 'Young', '159 Mango St', 'zachary.young@example.com', 35000, 'M', 'Exhibit Advisor', '2023-10-15', '1987-01-12', '11:00 AM - 8:00 PM'),
    (NULL, NULL, 16, NULL, '2468013579', 'Rachel', 'Marie', 'Scott', '741 Papaya St', 'rachel.scott@example.com', 40000, 'F', 'Exhibit Advisor', '2023-08-24', '1984-05-10', '12:00 PM - 9:00 PM'),
    (NULL, NULL, 17, NULL, '3579246801', 'Andrew', 'Joseph', 'Wright', '159 Avocado St', 'andrew.wright@example.com', 35000, 'M', 'Security Guard', '2023-07-11', '1989-12-28', '1:00 PM - 10:00 PM'),
    (1, 12, NULL, NULL , '4680135792', 'Rebecca', 'Grace', 'Taylor', '357 Guava St', 'rebecca.taylor@example.com', 30000, 'F', 'Veterinarian', '2024-09-22', '1979-09-15', '2:00 PM - 11:00 PM'),
    (36, NULL, 3, NULL, '5792468013', 'Joseph', 'Aaron', 'Martin', '753 Durian St', 'joseph.martin@example.com', 55000, 'M', 'Zookeeper', '2024-04-15', '1981-06-30', '3:00 PM - 12:00 AM'),
    (37, NULL, 4, NULL,'5319104440','Zeyad', 'Mazen', 'Mahmoud', '17 Tanta St', 'Zyad.tanta@example.com', 23000, 'M', 'Zookeeper', '2026-03-01', '1996-03-01', '8:00 AM - 5:00 PM'),
    (15, NULL, NULL, 6, '1112223334', 'Emily', NULL, 'Wilson', '123 Elm St', 'emily.wilson@example.com', 50000, 'F', 'Shop Attendant', '2024-04-01', '1980-05-15', '8:00 AM - 5:00 PM'),
    (38, NULL, 1, NULL, '2223334445', 'David', 'Matthew', 'Brown', '456 Oak St', 'david.brown@example.com', 45000, 'M', 'Zookeeper', '2023-12-15', '1985-10-20', '9:00 AM - 6:00 PM'),
    (16, NULL, NULL, 1, '3334445556', 'Jessica', NULL, 'Taylor', '789 Pine St', 'jessica.taylor@example.com', 40000, 'F', 'Shop Attendant', '2024-02-28', '1990-07-12', '7:00 AM - 4:00 PM'),
    (12, NULL, NULL, NULL, '4445556667', 'Michael', 'James', 'Martinez', '101 Maple St', 'michael.martinez@example.com', 35000, 'M', 'Janitor', '2024-01-10', '1995-02-28', '10:00 AM - 7:00 PM'),
    (17, NULL, NULL, 2, '5556667778', 'Sarah', 'Elizabeth', 'Clark', '321 Cedar St', 'sarah.clark@example.com', 30000, 'F', 'Cafeteria Staff', '2024-03-20', '1987-12-05', '11:00 AM - 8:00 PM'),
    (2, 2, NULL, NULL, '6667778889', 'Matthew', 'David', 'Young', '654 Walnut St', 'matthew.young@example.com', 25000, 'M', 'Veterinarian', '2023-11-05', '1983-09-18', '12:00 PM - 9:00 PM'),
    (39, NULL, 3, NULL, '7778889990', 'Lauren', 'Michelle', 'Harris', '987 Pineapple St', 'lauren.harris@example.com', 55000, 'F', 'Zookeeper', '2023-10-02', '1978-04-30', '1:00 PM - 10:00 PM'),
    (3, NULL, NULL, NULL, '8889990001', 'Christopher', 'Daniel', 'Lee', '135 Banana St', 'christopher.lee@example.com', 60000, 'M', 'Security Guard', '2024-05-18', '1982-11-22', '2:00 PM - 11:00 PM'),
    (40, NULL, 2, NULL, '9990001112', 'Amanda', 'Nicole', 'Garcia', '864 Orange St', 'amanda.garcia@example.com', 70000, 'F', 'Zookeeper', '2023-09-09', '1992-08-07', '3:00 PM - 12:00 AM'),
    (18, NULL, NULL, 8, '0001112223', 'James', 'William', 'Rodriguez', '963 Lemon St', 'james.rodriguez@example.com', 65000, 'M', 'Shop Attendant', '2024-06-30', '1991-03-25', '5:00 PM - 2:00 AM'),
    (4, NULL, NULL, NULL, '1112223334', 'Stephanie', 'Rachel', 'Hernandez', '741 Lime St', 'stephanie.hernandez@example.com', 40000, 'F', 'Janitor', '2023-05-24', '1984-12-10', '6:00 PM - 3:00 AM'),
    (19, NULL, NULL, 9, '2223334445', 'Daniel', 'Thomas', 'Lopez', '159 Grape St', 'daniel.lopez@example.com', 35000, 'M', 'Cafeteria Staff', '2023-04-11', '1989-09-28', '7:00 PM - 4:00 AM'),
    (3, 1, NULL, NULL, '3334445556', 'Nicole', 'Rebecca', 'Young', '357 Watermelon St', 'nicole.young@example.com', 30000, 'F', 'Veterinarian', '2024-08-22', '1979-06-15', '8:00 PM - 5:00 AM'),
    (21, NULL, 10, NULL, '4445556667', 'Ryan', 'Charles', 'Clark', '753 Cherry St', 'ryan.clark@example.com', 55000, 'M', 'Zookeeper', '2024-03-15', '1981-05-30', '9:00 PM - 6:00 AM'),
    (20, NULL, NULL, 11, '5556667778', 'Melissa', 'Anna', 'Walker', '258 Mango St', 'melissa.walker@example.com', 60000, 'F', 'Shop Attendant', '2023-02-09', '1983-11-05', '10:00 PM - 7:00 AM'),
    (5, NULL, NULL, NULL, '6667778889', 'Justin', 'Peter', 'Lewis', '852 Kiwi St', 'justin.lewis@example.com', 65000, 'M', 'Security Guard', '2023-01-02', '1988-08-20', '11:00 PM - 8:00 AM'),
    (6, NULL, NULL, NULL, '7778889990', 'Hannah', 'Samantha', 'Harris', '456 Peach St', 'hannah.harris@example.com', 70000, 'F', 'Security Guard', '2024-07-14', '1980-03-18', '12:00 AM - 9:00 AM'),
    (7, NULL, NULL, NULL, '8889990001', 'Brandon', 'David', 'King', '753 Coconut St', 'brandon.king@example.com', 75000, 'M', 'Security Guard', '2024-04-30', '1977-09-15', '1:00 AM - 10:00 AM'),
    (8, 12, NULL, NULL, '9990001112', 'Ashley', 'Elizabeth', 'Perez', '357 Pomegranate St', 'ashley.perez@example.com', 40000, 'F', 'Veterinarian', '2023-11-28', '1982-06-20', '2:00 AM - 11:00 AM'),
    (41, NULL, 3, NULL, '0001112223', 'Jacob', 'Michael', 'Young', '159 Papaya St', 'jacob.young@example.com', 35000, 'M', 'Zookeeper', '2023-10-15', '1987-01-12', '3:00 AM - 12:00 PM'),
    (9, NULL, NULL, NULL, '1112223334', 'Rachel', 'Marie', 'Scott', '741 Plum St', 'rachel.scott@example.com', 40000, 'F', 'Janitor', '2023-08-24', '1984-05-10', '4:00 PM - 1:00 PM'),
    (22, NULL, NULL, 16, '2223334445', 'Andrew', 'Joseph', 'Wright', '159 Avocado St', 'andrew.wright@example.com', 35000, 'M', 'Cafeteria Staff', '2023-07-11', '1989-12-28', '5:00 PM - 2:00 PM'),
    (9, 11, NULL, NULL, '3334445556', 'Rebecca', 'Grace', 'Taylor', '357 Guava St', 'rebecca.taylor@example.com', 30000, 'F', 'Veterinarian', '2024-09-22', '1979-09-15', '6:00 PM - 3:00 PM'),
    (42, NULL, 4, NULL, '4445556667', 'Joseph', 'Aaron', 'Martin', '753 Durian St', 'joseph.martin@example.com', 55000, 'M', 'Zookeeper', '2024-04-15', '1981-06-30', '7:00 PM - 4:00 PM'),
    (23, NULL, NULL, 15, '5556667778', 'Hannah', 'Michelle', 'White', '258 Kiwifruit St', 'hannah.white@example.com', 60000, 'F', 'Shop Attendant', '2023-02-09', '1983-11-05', '8:00 PM - 5:00 PM'),
    (10, NULL, NULL, NULL, '6667778889', 'Aaron', 'Christopher', 'Brown', '852 Pear St', 'aaron.brown@example.com', 65000, 'M', 'Security Guard', '2023-01-02', '1988-08-20', '9:00 PM - 6:00 PM'),
    (43, NULL, 8, NULL, '7778889990', 'Danielle', 'Paige', 'Evans', '456 Dragonfruit St', 'danielle.evans@example.com', 70000, 'F', 'Zookeeper', '2024-07-14', '1980-03-18', '10:00 PM - 7:00 PM'),
    (11, 10, NULL, NULL, '8889990001', 'Alexander', 'Tyler', 'King', '753 Lychee St', 'alexander.king@example.com', 75000, 'M', 'Veterinarian', '2024-04-30', '1977-09-15', '11:00 PM - 8:00 PM'),
    (12, 9, NULL, NULL, '9990001112', 'Vanessa', 'Grace', 'Parker', '357 Starfruit St', 'vanessa.parker@example.com', 40000, 'F', 'Veterinarian', '2023-11-28', '1982-06-20', '12:00 AM - 9:00 PM'),
    (44, NULL, 6, NULL, '0001112223', 'Zachary', 'Thomas', 'Young', '159 Coconut St', 'zachary.young@example.com', 35000, 'M', 'Zookeeper', '2023-10-15', '1987-01-12', '1:00 AM - 10:00 PM'),
    (13, NULL, NULL, NULL, '1112223334', 'Rachel', 'Marie', 'Scott', '741 Apple St', 'rachel.scott@example.com', 40000, 'F', 'Janitor', '2023-08-24', '1984-05-10', '2:00 AM - 11:00 PM'),
    (24, NULL, NULL, 14, '2223334445', 'Andrew', 'Joseph', 'Wright', '159 Pear St', 'andrew.wright@example.com', 35000, 'M', 'Cafeteria Staff', '2023-07-11', '1989-12-28', '3:00 AM - 12:00 AM'),
    (1, 8, NULL, NULL, '3334445556', 'Rebecca', 'Grace', 'Taylor', '357 Orange St', 'rebecca.taylor@example.com', 30000, 'F', 'Veterinarian', '2024-09-22', '1979-09-15', '4:00 AM - 1:00 AM'),
    (45, NULL, 11, NULL, '4445556667', 'Joseph', 'Aaron', 'Martin', '753 Banana St', 'joseph.martin@example.com', 55000, 'M', 'Zookeeper', '2024-04-15', '1981-06-30', '5:00 AM - 2:00 AM'),
    (25, NULL, NULL, 13, '5556667779', 'Sarah', 'Michelle', 'White', '258 Cherry St', 'hannah.white@example.com', 60000, 'F', 'Shop Attendant', '2023-02-09', '1983-11-05', '6:00 AM - 3:00 AM'),
    (46, NULL, NULL, NULL, '6667778889', 'Aaron', 'Christopher', 'Brown', '852 Apple St', 'aaron.brown@example.com', 65000, 'M', 'Security Guard', '2023-01-02', '1988-08-20', '7:00 AM - 4:00 AM'),
    (47, NULL, 10, NULL, '7778889990', 'Danielle', 'Paige', 'Evans', '456 Grape St', 'danielle.evans@example.com', 70000, 'F', 'Zookeeper', '2024-07-14', '1980-03-18', '8:00 AM - 5:00 AM'),
    (48, NULL, NULL, NULL, '8889990001', 'Alexander', 'Tyler', 'King', '753 Grapefruit St', 'alexander.king@example.com', 75000, 'M', 'Security Guard', '2024-04-30', '1977-09-15', '9:00 AM - 6:00 AM'),
    (3, 7, NULL, NULL, '9990001112', 'Vanessa', 'Grace', 'Parker', '357 Lemon St', 'vanessa.parker@example.com', 40000, 'F', 'Veterinarian', '2023-11-28', '1982-06-20', '10:00 AM - 7:00 AM'),
    (49, NULL, 9, NULL, '0001112223', 'Zachary', 'Thomas', 'Young', '159 Mangosteen St', 'zachary.young@example.com', 35000, 'M', 'Zookeeper', '2023-10-15', '1987-01-12', '11:00 AM - 8:00 AM'),
    (27, NULL, NULL, NULL, '1112223334', 'Rachel', 'Marie', 'Scott', '741 Papaya St', 'rachel.scott@example.com', 40000, 'F', 'Janitor', '2023-08-24', '1984-05-10', '12:00 PM - 9:00 AM'),
    (28, NULL, NULL, 12, '2223334445', 'Andrew', 'Joseph', 'Wright', '159 Pomegranate St', 'andrew.wright@example.com', 35000, 'M', 'Cafeteria Staff', '2023-07-11', '1989-12-28', '1:00 PM - 10:00 AM'),
    (4, 6, NULL, NULL, '3334445556', 'Rebecca', 'Grace', 'Taylor', '357 Kiwifruit St', 'rebecca.taylor@example.com', 30000, 'F', 'Veterinarian', '2024-09-22', '1979-09-15', '2:00 PM - 11:00 AM'),
    (29, NULL, NULL, NULL, '1112223334', 'Rachel', 'Marie', 'Scott', '741 Pineapple St', 'rachel.scott@example.com', 40000, 'F', 'Janitor', '2023-08-24', '1984-05-10', '2:00 PM - 11:00 PM'),
    (30, NULL, NULL, 11, '2223334445', 'Andrew', 'Joseph', 'Wright', '159 Avocado St', 'andrew.wright@example.com', 35000, 'M', 'Cafeteria Staff', '2023-07-11', '1989-12-28', '3:00 PM - 12:00 AM'),
    (5, 5, NULL, NULL, '3334445556', 'Rebecca', 'Grace', 'Taylor', '357 Mango St', 'rebecca.taylor@example.com', 30000, 'F', 'Veterinarian', '2024-09-22', '1979-09-15', '4:00 PM - 1:00 AM'),
    (50, NULL, 8, NULL, '4445556667', 'Joseph', 'Aaron', 'Martin', '753 Kiwi St', 'joseph.martin@example.com', 55000, 'M', 'Zookeeper', '2024-04-15', '1981-06-30', '5:00 PM - 2:00 AM'),
    (31, NULL, NULL, 10, '5556667778', 'Hana', 'Michelle', 'White', '258 Guava St', 'hannah.white@example.com', 60000, 'F', 'Shop Attendant', '2023-02-09', '1983-11-05', '6:00 PM - 3:00 AM'),
    (32, NULL, NULL, NULL, '6667778889', 'Aaron', 'Christopher', 'Brown', '852 Peach St', 'aaron.brown@example.com', 65000, 'M', 'Security Guard', '2023-01-02', '1988-08-20', '7:00 PM - 4:00 AM'),
    (33, NULL, NULL, 9, '7778889990', 'Danielle', 'Paige', 'Evans', '456 Dragonfruit St', 'danielle.evans@example.com', 70000, 'F', 'Shop Attendant', '2024-07-14', '1980-03-18', '8:00 PM - 5:00 AM'),
    (34, NULL, NULL, 8, '8889990001', 'Alexander', 'Tyler', 'King', '753 Durian St', 'alexander.king@example.com', 75000, 'M', 'Shop Attendant', '2024-04-30', '1977-09-15', '9:00 PM - 6:00 AM'),
    (6, 4, NULL, NULL, '9990001112', 'Vanessa', 'Grace', 'Parker', '357 Watermelon St', 'vanessa.parker@example.com', 40000, 'F', 'Veterinarian', '2023-11-28', '1982-06-20', '10:00 PM - 7:00 AM'),
    (50, NULL, 7, NULL, '0001112223', 'Zachary', 'Thomas', 'Young', '159 Lemon St', 'zachary.young@example.com', 35000, 'M', 'Zookeeper', '2023-10-15', '1987-01-12', '11:00 PM - 8:00 AM'),
    (13, NULL, NULL, NULL, '1112223334', 'Rachel', 'Marie', 'Scott', '741 Kiwifruit St', 'rachel.scott@example.com', 40000, 'F', 'Janitor', '2023-08-24', '1984-05-10', '12:00 AM - 9:00 AM'),
    (14, NULL, NULL, 7, '2223334445', 'Andrew', 'Joseph', 'Wright', '159 Pomegranate St', 'andrew.wright@example.com', 35000, 'M', 'Cafeteria Staff', '2023-07-11', '1989-12-28', '1:00 AM - 10:00 AM'),
    (7, 3, NULL, NULL, '3334445556', 'Rebecca', 'Grace', 'Taylor', '357 Guava St', 'rebecca.taylor@example.com', 30000, 'F', 'Veterinarian', '2024-09-22', '1979-09-15', '2:00 AM - 11:00 AM'),
    (35, NULL, 6, NULL, '4445556667', 'Joseph', 'Aaron', 'Martin', '753 Starfruit St', 'joseph.martin@example.com', 55000, 'M', 'Zookeeper', '2024-04-15', '1981-06-30', '3:00 AM - 12:00 PM'),
    (15, NULL, NULL, 6, '5551667778', 'Hannah', 'Michelle', 'White', '258 Cherry St', 'hannah.white@example.com', 60000, 'F', 'Shop Attendant', '2023-02-09', '1983-11-05', '4:00 AM - 1:00 PM'),
    (16, NULL, NULL, NULL, '6667778889', 'Aaron', 'Christopher', 'Brown', '852 Coconut St', 'aaron.brown@example.com', 65000, 'M', 'Security Guard', '2023-01-02', '1988-08-20', '5:00 AM - 2:00 PM'),
    (36, NULL, 5, NULL, '7778889990', 'Danielle', 'Paige', 'Evans', '456 Dragonfruit St', 'danielle.evans@example.com', 70000, 'F', 'Security Guard', '2024-07-14', '1980-03-18', '6:00 AM - 3:00 PM'),
    (37, NULL, NULL, NULL, '8889990001', 'Alexander', 'Tyler', 'King', '753 Lychee St', 'alexander.king@example.com', 75000, 'M', 'Zookeeper', '2024-04-30', '1977-09-15', '7:00 AM - 4:00 PM'),
    (8, 2, NULL, NULL, '9990001112', 'Vanessa', 'Grace', 'Parker', '357 Papaya St', 'vanessa.parker@example.com', 40000, 'F', 'Veterinarian', '2023-11-28', '1982-06-20', '8:00 AM - 5:00 PM'),
    (38, NULL, 4, NULL, '0001112223', 'Zachary', 'Thomas', 'Young', '159 Mango St', 'zachary.young@example.com', 35000, 'M', 'Zookeeper', '2023-10-15', '1987-01-12', '9:00 AM - 6:00 PM');

create table Staff_Phone(
    Staff_ID int,
    Foreign Key(Staff_ID) references Staff(ID),
    Phone_No varchar(13) not null,
    primary key(Staff_ID,Phone_No)
);

   INSERT INTO Staff_Phone (Staff_ID, Phone_No)
VALUES 
    (1, '(555) 123-456'),
    (1, '(555) 234-567'),
    (2, '(555) 345-678'),
    (2, '(555) 456-789'),
    (3, '(555) 567-890'),
    (3, '(555) 678-901'),
    (4, '(555) 789-012'),
    (4, '(555) 890-123'),
    (5, '(555) 901-234'),
    (5, '(555) 012-345'),
    (6, '(555) 098-765'),
    (7, '(555) 987-654'),
    (8, '(555) 876-543'),
    (9, '(555) 765-432'),
    (10, '(555) 654-321'),
    (11, '(555) 543-210'),
    (12, '(555) 432-109'),
    (13, '(555) 321-098'),
    (14, '(555) 210-987'),
    (15, '(555) 109-876'),
    (16, '(555) 098-765'),
    (17, '(555) 987-654'),
    (18, '(555) 876-543'),
    (19, '(555) 765-432'),
    (20, '(555) 654-321'),
    (21, '(555) 543-210'),
    (22, '(555) 432-109'),
    (23, '(555) 321-098'),
    (24, '(555) 210-987'),
    (25, '(555) 109-876'),
    (26, '(555) 098-765'),
    (27, '(555) 987-654'),
    (28, '(555) 876-543'),
    (29, '(555) 765-432'),
    (30, '(555) 654-321'),
    (31, '(555) 543-210'),
    (32, '(555) 432-109'),
    (33, '(555) 321-098'),
    (34, '(555) 210-987'),
    (35, '(555) 109-876'),
    (36, '(555) 098-765'),
    (37, '(555) 987-654'),
    (38, '(555) 876-543'),
    (39, '(555) 765-432'),
    (40, '(555) 654-321'),
    (41, '(555) 543-210'),
    (42, '(555) 432-109'),
    (43, '(555) 321-098'),
    (44, '(555) 210-987'),
    (45, '(555) 109-876'),
    (46, '(555) 098-765'),
    (47, '(555) 987-654'),
    (48, '(555) 876-543'),
    (49, '(555) 765-432'),
    (50, '(555) 654-321'),
    (51, '(555) 543-210'),
    (52, '(555) 432-109'),
    (53, '(555) 321-098'),
    (54, '(555) 210-987'),
    (55, '(555) 109-876'),
    (56, '(555) 098-765'),
    (57, '(555) 987-654'),
    (58, '(555) 876-543'),
    (59, '(555) 765-432'),
    (60, '(555) 654-321'),
    (61, '(555) 543-210'),
    (62, '(555) 432-109'),
    (63, '(555) 321-098'),
    (64, '(555) 210-987'),
    (65, '(555) 109-876'),
    (66, '(555) 098-765'),
    (67, '(555) 987-654'),
    (68, '(555) 876-543'),
    (69, '(555) 765-432'),
    (70, '(555) 654-321'),
    (71, '(555) 543-210'),
    (72, '(555) 432-109'),
    (73, '(555) 321-098'),
    (74, '(555) 210-987'),
    (75, '(555) 109-876'),
    (76, '(555) 098-765'),
    (77, '(555) 987-654'),
    (78, '(555) 876-543'),
    (79, '(555) 765-432'),
    (80, '(555) 654-321'),
    (81, '(555) 543-210'),
    (82, '(555) 432-109'),
    (83, '(555) 321-098'),
    (84, '(555) 210-987'),
    (85, '(555) 109-876'),
    (86, '(555) 098-765'),
    (87, '(555) 987-654'),
    (88, '(555) 876-543'),
    (89, '(555) 765-432'),
    (90, '(555) 654-321'),
    (91, '(555) 543-210'),
    (92, '(555) 432-109'),
    (93, '(555) 321-098'),
    (94, '(555) 210-987'),
    (95, '(555) 109-876'),
    (96, '(555) 098-765'),
    (97, '(555) 987-654'),
    (98, '(555) 876-543'),
    (99, '(555) 765-432'),
    (100, '(555) 654-321'),
    (101, '(555) 543-210'),
    (102, '(555) 432-109'),
    (103, '(555) 321-098'),
    (104, '(555) 210-987'),
    (105, '(555) 109-876'),
    (106, '(555) 098-765'),
    (107, '(555) 987-654'),
    (108, '(555) 876-543'),
    (109, '(555) 765-432'),
    (110, '(555) 654-321'),
    (111, '(555) 543-210'),
    (112, '(555) 432-109'),
    (113, '(555) 321-098'),
    (114, '(555) 210-987'),
    (115, '(555) 109-876'),
    (116, '(555) 098-765'),
    (117, '(555) 987-654');

create table Shop(
    Shop_Name varchar(50) not null,
    Shop_No int primary key Identity (1,1),
    Location varchar(50) CHECK (Location IN ('Zone A', 'Zone B', 'Zone C', 'Zone D', 'Zone E')),
    Product_Category varchar(50) not null CHECK (Product_Category IN ('Food', 'Gifts & Toys', 'Clothing', 'Accessories')),
    SManager_Id int not null,
);

    INSERT INTO Shop (Shop_Name, Location, Product_Category, SManager_Id)
    VALUES 
    ('ZooGifts', 'Zone A', 'Gifts & Toys', 3),
    ('Safari Supplies', 'Zone C', 'Food', 4),
    ('SuperMart', 'Zone A', 'Food', 20),
    ('FashionTrends', 'Zone B', 'Clothing', 21),
    ('ToyWorld', 'Zone C', 'Gifts & Toys', 22),
    ('HealthyBites', 'Zone D', 'Food', 23),
    ('GadgetZone', 'Zone E', 'Accessories', 24),
    ('BookNook', 'Zone A', 'Gifts & Toys', 25),
    ('SportsEmporium', 'Zone B', 'Accessories', 26),
    ('CosmeticGlam', 'Zone C', 'Accessories', 27),
    ('HomeDecor', 'Zone D', 'Gifts & Toys', 28),
    ('ElectroMart', 'Zone E', 'Accessories', 29),
    ('FancyFurniture', 'Zone A', 'Clothing', 20), -- Same manager as SuperMart
    ('PetParadise', 'Zone B', 'Accessories', 21), -- Same manager as FashionTrends
    ('TechTrends', 'Zone C', 'Accessories', 22), -- Same manager as ToyWorld
    ('UrbanWear', 'Zone D', 'Clothing', 23), -- Same manager as HealthyBites
    ('ArtisticExpressions', 'Zone E', 'Gifts & Toys', 24), -- Same manager as GadgetZone
    ('FoodFiesta', 'Zone A', 'Food', 25), -- Same manager as BookNook
    ('FashionHub', 'Zone B', 'Clothing', 26), -- Same manager as SportsEmporium
    ('GizmoGalaxy', 'Zone C', 'Accessories', 27), -- Same manager as CosmeticGlam
    ('OutdoorsUnlimited', 'Zone D', 'Accessories', 28), -- Same manager as HomeDecor
    ('GameGalore', 'Zone E', 'Gifts & Toys', 29);

create table Sponsor(
    Sponsor_Name varchar(50) not null,
    Sponsor_ID int primary key Identity (1,1),
    Email varchar(50) ,
    Start_Date Date ,
    End_Date Date,
    shop_no int,                               
    Foreign Key(shop_no) references Shop(Shop_No)
);

	INSERT INTO Sponsor (Sponsor_Name, Email, Start_Date, End_Date, shop_no)
    VALUES 
    ('ZooHealth Inc.', 'info@zoohealth.com', '2024-01-01', '2024-12-31', 1), -- ZooGifts
    ('Wildlife Supplies Ltd.', 'info@wildlifesupplies.com', '2024-02-15', '2024-12-31', 2), -- Safari Supplies
    ('SunnyPets', 'info@sunnypets.com', '2024-03-20', '2024-12-31', NULL), -- No specific shop
    ('EcoTrend', 'info@ecotrend.com', '2024-04-10', '2024-12-31', NULL), -- No specific shop
    ('NatureNook', 'info@naturenook.com', '2024-05-05', '2024-12-31', NULL), -- No specific shop
    ('GreenPaws', 'info@greenpaws.com', '2024-06-01', '2024-12-31', NULL), -- No specific shop
    ('EcoElegance', 'info@ecoelegance.com', '2024-07-10', '2024-12-31', 4), -- SuperMart
    ('EcoFriendly Finds', 'info@ecofriendlyfinds.com', '2024-08-15', '2024-12-31', 6), -- HealthyBites
    ('PetParadise', 'info@petparadise.com', '2024-09-20', '2024-12-31', 13), -- PetParadise
    ('WildlifeWonders', 'info@wildlifewonders.com', '2024-10-25', '2024-12-31', 15), -- ToyWorld
    ('NaturalNurture', 'info@naturalnurture.com', '2024-11-30', '2024-12-31', 19); -- ArtisticExpressions


create table Sponsor_Phone(
    Sponsor_ID int,
    Foreign Key(Sponsor_ID) references Sponsor(Sponsor_ID),
    Phone_Number varchar(13) not null,
    primary key(Sponsor_ID,Phone_Number)
);
	INSERT INTO Sponsor_Phone (Sponsor_ID, Phone_Number)
    VALUES 
    (3, '333-333-3333'), -- SunnyPets
    (4, '444-444-4444'), -- EcoTrend
    (5, '555-555-5555'), -- NatureNook
    (6, '666-666-6666'), -- GreenPaws
    (7, '777-777-7777'), -- EcoElegance
    (8, '888-888-8888'), -- EcoFriendly Finds
    (9, '999-999-9999'), -- PetParadise
    (10, '101-101-1010'), -- WildlifeWonders
    (11, '202-202-2020'); -- NaturalNurture


create table Visitor(
    Ticket_Number int primary key Identity (1,1),
    Ticket_Type varchar(50) not null CHECK (Ticket_Type IN ('Basic', 'Premium', 'VIP', 'Student', 'Senior Citizen', 'Family', 'Child')),
    Gender varchar(1) not null,
    Age int not null,
    Phone_Number varchar(13),
    Visit_Date Date 
);

	INSERT INTO Visitor (Ticket_Type, Gender, Age, Phone_Number, Visit_Date)
    VALUES 
    ('Basic', 'M', 30, '123-456-7890', '2024-04-01'), --1
    ('VIP', 'F', 45, '987-654-3210', '2024-04-15'), --2
    ('Basic', 'M', 35, '555-555-5555', '2024-04-16'), --3
    ('Premium', 'F', 55, '111-222-3333', '2024-04-17'), --4
    ('Student', 'M', 25, '444-555-6666', '2024-04-18'), --5
    ('Senior Citizen', 'F', 70, '777-777-7777', '2024-04-19'), --6
    ('Child', 'M', 5, NULL, '2024-04-20'), --7
    ('Family', 'F', 40, '999-999-9999', '2024-04-21'), --8
    ('Basic', 'M', 40, '123-456-7890', '2024-04-22'), --9
    ('VIP', 'F', 35, '987-654-3210', '2024-04-23'), --10
    ('Basic', 'F', 20, '555-555-5555', '2024-04-24'), --11
    ('Premium', 'M', 60, '111-222-3333', '2024-04-25'), --12
    ('Student', 'M', 22, '444-555-6666', '2024-04-26'), --13
    ('Senior Citizen', 'F', 75, '777-777-7777', '2024-04-27'), --14
    ('Child', 'M', 7, NULL, '2024-04-28'), --15
    ('Family', 'F', 45, '999-999-9999', '2024-04-29'), --16
    ('Basic', 'M', 45, '123-456-7890', '2024-04-30'), --17
    ('VIP', 'F', 30, '987-654-3210', '2024-05-01'), --18
    ('Basic', 'F', 25, '555-555-5555', '2024-05-02'), --19
    ('Premium', 'M', 65, '111-222-3333', '2024-05-03'), --20
    ('Student', 'M', 27, '444-555-6666', '2024-05-04'), --21
    ('Senior Citizen', 'F', 80, '777-777-7777', '2024-05-05'), --22
    ('Child', 'M', 10, NULL, '2024-05-06'), --23
    ('Family', 'F', 50, '999-999-9999', '2024-05-07'), --24
    ('Basic', 'M', 50, '123-456-7890', '2024-05-08'), --25
    ('VIP', 'F', 25, '987-654-3210', '2024-05-09'), --26
    ('Basic', 'F', 30, '555-555-5555', '2024-05-10'), --27
    ('Premium', 'M', 70, '111-222-3333', '2024-05-11'), --28
    ('Student', 'M', 30, '444-555-6666', '2024-05-12'), --29
    ('Senior Citizen', 'F', 85, '777-777-7777', '2024-05-13'), --30
    ('Child', 'M', 8, NULL, '2024-05-14'), --31
    ('Family', 'F', 55, '999-999-9999', '2024-05-15'), --32
    ('Basic', 'M', 55, '123-456-7890', '2024-05-16'), --33
    ('VIP', 'F', 20, '987-654-3210', '2024-05-17'), --34
    ('Basic', 'F', 35, '555-555-5555', '2024-05-18'), --35
    ('Premium', 'M', 75, '111-222-3333', '2024-05-19'), --36
    ('Student', 'M', 32, '444-555-6666', '2024-05-20'), --37
    ('Senior Citizen', 'F', 90, '777-777-7777', '2024-05-21'), --38
    ('Child', 'M', 12, NULL, '2024-05-22'), --39
    ('Family', 'F', 60, '999-999-9999', '2024-05-23'), --40
    ('Basic', 'M', 60, '123-456-7890', '2024-05-24'), --41
    ('VIP', 'F', 22, '987-654-3210', '2024-05-25'), --42
    ('Basic', 'F', 40, '555-555-5555', '2024-05-26'), --43
    ('Premium', 'M', 80, '111-222-3333', '2024-05-27'), --44
    ('Student', 'M', 35, '444-555-6666', '2024-05-28'), --45
    ('Senior Citizen', 'F', 95, '777-777-7777', '2024-05-29'), --46
    ('Child', 'M', 4, NULL, '2024-05-30'), --47
    ('Family', 'F', 65, '999-999-9999', '2024-05-31'), --48
    ('Basic', 'M', 65, '123-456-7890', '2024-06-01'), --49
    ('VIP', 'F', 18, '987-654-3210', '2024-06-02'), --50
    ('Basic', 'F', 45, '555-555-5555', '2024-06-03'), --51
    ('Premium', 'M', 85, '111-222-3333', '2024-06-04'), --52
    ('Student', 'M', 37, '444-555-6666', '2024-06-05'), --53
    ('Senior Citizen', 'F', 100, '777-777-7777', '2024-06-06'), --54
    ('Child', 'M', 6, NULL, '2024-06-07'), --55
    ('Family', 'F', 70, '999-999-9999', '2024-06-08'), --56
    ('Basic', 'M', 70, '123-456-7890', '2024-06-09'), --57
    ('VIP', 'F', 16, '987-654-3210', '2024-06-10'), --58
    ('Basic', 'F', 50, '555-555-5555', '2024-06-11'), --59
    ('Premium', 'M', 90, '111-222-3333', '2024-06-12'), --60
    ('Student', 'M', 40, '444-555-6666', '2024-06-13'), --61
    ('Senior Citizen', 'F', 98, '777-777-7777', '2024-06-14'), --62
    ('Child', 'M', 9, NULL, '2024-06-15'), --63
    ('Family', 'F', 75, '999-999-9999', '2024-06-16'), --64
    ('Basic', 'M', 75, '123-456-7890', '2024-06-17'), --65
    ('VIP', 'F', 14, '987-654-3210', '2024-06-18'), --66
    ('Basic', 'F', 55, '555-555-5555', '2024-06-19'), --67
    ('Premium', 'M', 95, '111-222-3333', '2024-06-20'), --68
    ('Student', 'M', 42, '444-555-6666', '2024-06-21'), --69
    ('Senior Citizen', 'F', 99, '777-777-7777', '2024-06-22'), --70
    ('Child', 'M', 11, NULL, '2024-06-23'), --71
    ('Family', 'F', 80, '999-999-9999', '2024-06-24'), --72
    ('Basic', 'M', 80, '123-456-7890', '2024-06-25'), --73
    ('VIP', 'F', 12, '987-654-3210', '2024-06-26'), --74
    ('Basic', 'F', 60, '555-555-5555', '2024-06-27'), --75
    ('Premium', 'M', 98, '111-222-3333', '2024-06-28'), --76
    ('Student', 'M', 45, '444-555-6666', '2024-06-29'), --77
    ('Senior Citizen', 'F', 97, '777-777-7777', '2024-06-30'), --78
    ('Child', 'M', 3, NULL, '2024-07-01'), --79
    ('Family', 'F', 85, '999-999-9999', '2024-07-02'), --80
    ('Basic', 'M', 85, '123-456-7890', '2024-07-03'), --81
    ('VIP', 'F', 10, '987-654-3210', '2024-07-04'), --82
    ('Basic', 'F', 65, '555-555-5555', '2024-07-05'), --83
    ('Premium', 'M', 99, '111-222-3333', '2024-07-06'), --84
    ('Student', 'M', 47, '444-555-6666', '2024-07-07'), --85
    ('Senior Citizen', 'F', 96, '777-777-7777', '2024-07-08'), --86
    ('Child', 'M', 2, NULL, '2024-07-09'), --87
    ('Family', 'F', 90, '999-999-9999', '2024-07-10'), --88
    ('Basic', 'M', 90, '123-456-7890', '2024-07-11'), --89
    ('VIP', 'F', 8, '987-654-3210', '2024-07-12'), --90
    ('Basic', 'F', 70, '555-555-5555', '2024-07-13'), --91
    ('Premium', 'M', 100, '111-222-3333', '2024-07-14'), --92
    ('Student', 'M', 50, '444-555-6666', '2024-07-15'), --93
    ('Senior Citizen', 'F', 94, '777-777-7777', '2024-07-16'), --94
    ('Child', 'M', 14, NULL, '2024-07-17'), --95
    ('Family', 'F', 95, '999-999-9999', '2024-07-18'), --96
    ('Basic', 'M', 95, '123-456-7890', '2024-07-19'), --97
    ('VIP', 'F', 6, '987-654-3210', '2024-07-20'), --98
    ('Basic', 'F', 75, '555-555-5555', '2024-07-21'), --99
    ('Premium', 'M', 97, '111-222-3333', '2024-07-22'), --100
    ('Student', 'M', 52, '444-555-6666', '2024-07-23'), --101
    ('Senior Citizen', 'F', 92, '777-777-7777', '2024-07-24'), --102
    ('Child', 'M', 13, NULL, '2024-07-25'), --103
    ('Family', 'F', 100, '999-999-9999', '2024-07-26'), --104
    ('Basic', 'M', 100, '123-456-7890', '2024-07-27'), --105
    ('VIP', 'F', 4, '987-654-3210', '2024-07-28'), --106
    ('Basic', 'F', 80, '555-555-5555', '2024-07-29'), --107
    ('Premium', 'M', 96, '111-222-3333', '2024-07-30'), --108
    ('Student', 'M', 55, '444-555-6666', '2024-07-31'), --109
    ('Senior Citizen', 'F', 91, '777-777-7777', '2024-08-01'), --110
    ('Child', 'M', 15, NULL, '2024-08-02'), --111
    ('Family', 'F', 105, '999-999-9999', '2024-08-03'), --112
    ('Basic', 'M', 105, '123-456-7890', '2024-08-04'), --113
    ('VIP', 'F', 2, '987-654-3210', '2024-08-05'), --114
    ('Basic', 'F', 85, '555-555-5555', '2024-08-06'), --115
    ('Premium', 'M', 94, '111-222-3333', '2024-08-07'), --116
    ('Student', 'M', 60, '444-555-6666', '2024-08-08'), --117
    ('Senior Citizen', 'F', 89, '777-777-7777', '2024-08-09'), --118
    ('Child', 'M', 16, NULL, '2024-08-10'), --119
    ('Family', 'F', 110, '999-999-9999', '2024-08-11'), --120
    ('Basic', 'M', 110, '123-456-7890', '2024-08-12'), --121
    ('VIP', 'F', 1, '987-654-3210', '2024-08-13'), --122
    ('Basic', 'F', 90, '555-555-5555', '2024-08-14'), --123
    ('Premium', 'M', 92, '111-222-3333', '2024-08-15'), --124
    ('Student', 'M', 65, '444-555-6666', '2024-08-16'), --125
    ('Senior Citizen', 'F', 88, '777-777-7777', '2024-08-17'), --126
    ('Child', 'M', 17, NULL, '2024-08-18'), --127
    ('Family', 'F', 115, '999-999-9999', '2024-08-19'), --128
    ('Basic', 'M', 115, '123-456-7890', '2024-08-20'), --129
    ('VIP', 'F', 3, '987-654-3210', '2024-08-21'), --130
    ('Basic', 'F', 95, '555-555-5555', '2024-08-22'), --131
    ('Premium', 'M', 90, '111-222-3333', '2024-08-23'), --132
    ('Student', 'M', 70, '444-555-6666', '2024-08-24'), --133
    ('Senior Citizen', 'F', 87, '777-777-7777', '2024-08-25'), --134
    ('Child', 'M', 18, NULL, '2024-08-26'), --135
    ('Family', 'F', 120, '999-999-9999', '2024-08-27'), --136
    ('Basic', 'M', 120, '123-456-7890', '2024-08-28'), --137
    ('VIP', 'F', 5, '987-654-3210', '2024-08-29'), --138
    ('Basic', 'F', 100, '555-555-5555', '2024-08-30'), --139
    ('Premium', 'M', 88, '111-222-3333', '2024-08-31'), --140
    ('Student', 'M', 75, '444-555-6666', '2024-09-01'), --141
    ('Senior Citizen', 'F', 86, '777-777-7777', '2024-09-02'), --142
    ('Child', 'M', 19, NULL, '2024-09-03'), --143
    ('Family', 'F', 125, '999-999-9999', '2024-09-04'), --144
    ('Basic', 'M', 125, '123-456-7890', '2024-09-05'), --145
    ('VIP', 'F', 7, '987-654-3210', '2024-09-06'), --146
    ('Basic', 'F', 105, '555-555-5555', '2024-09-07'), --147
    ('Premium', 'M', 86, '111-222-3333', '2024-09-08'), --148
    ('Student', 'M', 80, '444-555-6666', '2024-09-09'), --149
    ('Senior Citizen', 'F', 85, '777-777-7777', '2024-09-10'), --150
    ('Child', 'M', 20, NULL, '2024-09-11'), --151
    ('Family', 'F', 130, '999-999-9999', '2024-09-12'), --152
    ('Basic', 'M', 130, '123-456-7890', '2024-09-13'), --153
    ('VIP', 'F', 9, '987-654-3210', '2024-09-14'), --154
    ('Basic', 'F', 110, '555-555-5555', '2024-09-15'), --155
    ('Premium', 'M', 85, '111-222-3333', '2024-09-16'), --156
    ('Student', 'M', 85, '444-555-6666', '2024-09-17'), --157
    ('Senior Citizen', 'F', 84, '777-777-7777', '2024-09-18'), --158
    ('Child', 'M', 21, NULL, '2024-09-19'), --159
    ('Family', 'F', 135, '999-999-9999', '2024-09-20'), --160
    ('Basic', 'M', 135, '123-456-7890', '2024-09-21'), --161
    ('VIP', 'F', 11, '987-654-3210', '2024-09-22'), --162
    ('Basic', 'F', 115, '555-555-5555', '2024-09-23'), --163
    ('Premium', 'M', 84, '111-222-3333', '2024-09-24'), --164
    ('Student', 'M', 90, '444-555-6666', '2024-09-25'), --165
    ('Senior Citizen', 'F', 83, '777-777-7777', '2024-09-26'), --166
    ('Child', 'M', 22, NULL, '2024-09-27'), --167
    ('Family', 'F', 140, '999-999-9999', '2024-09-28'), --168
    ('Basic', 'M', 140, '123-456-7890', '2024-09-29'), --169
    ('VIP', 'F', 13, '987-654-3210', '2024-09-30'), --170
    ('Basic', 'F', 120, '555-555-5555', '2024-10-01'), --171
    ('Premium', 'M', 83, '111-222-3333', '2024-10-02'), --172
    ('Student', 'M', 95, '444-555-6666', '2024-10-03'), --173
    ('Senior Citizen', 'F', 82, '777-777-7777', '2024-10-04'), --174
    ('Child', 'M', 23, NULL, '2024-10-05'), --175
    ('Family', 'F', 145, '999-999-9999', '2024-10-06'), --176
    ('Basic', 'M', 145, '123-456-7890', '2024-10-07'), --177
    ('VIP', 'F', 15, '987-654-3210', '2024-10-08'), --178
    ('Basic', 'F', 125, '555-555-5555', '2024-10-09'), --179
    ('Premium', 'M', 82, '111-222-3333', '2024-10-10'), --180
    ('Student', 'M', 100, '444-555-6666', '2024-10-11'), --181
    ('Senior Citizen', 'F', 81, '777-777-7777', '2024-10-12'), --182
    ('Child', 'M', 24, NULL, '2024-10-13'), --183
    ('Family', 'F', 150, '999-999-9999', '2024-10-14'), --184
    ('Basic', 'M', 150, '123-456-7890', '2024-10-15'), --185
    ('VIP', 'F', 17, '987-654-3210', '2024-10-16'), --186
    ('Basic', 'F', 130, '555-555-5555', '2024-10-17'), --187
    ('Premium', 'M', 81, '111-222-3333', '2024-10-18'), --188
    ('Student', 'M', 105, '444-555-6666', '2024-10-19'), --189
    ('Senior Citizen', 'F', 80, '777-777-7777', '2024-10-20'), --190
    ('Child', 'M', 25, NULL, '2024-10-21'), --191
    ('Family', 'F', 155, '999-999-9999', '2024-10-22'), --192
    ('Basic', 'M', 155, '123-456-7890', '2024-10-23'), --193
    ('VIP', 'F', 20, '987-654-3210', '2024-10-24'), --194
    ('Basic', 'F', 135, '555-555-5555', '2024-10-25'), --195
    ('Premium', 'M', 80, '111-222-3333', '2024-10-26'), --196
    ('Student', 'M', 110, '444-555-6666', '2024-10-27'), --197
    ('Senior Citizen', 'F', 79, '777-777-7777', '2024-10-28'), --198
    ('Child', 'M', 26, NULL, '2024-10-29'), --199
    ('Family', 'F', 160, '999-999-9999', '2024-10-30'), --200
    ('Basic', 'M', 160, '123-456-7890', '2024-10-31'); --201

create table Donation(
    Visitor_Ticket int,
    Foreign Key(Visitor_Ticket) references Visitor(Ticket_Number),
    Location varchar(50) not null,
    Date Date,
    Amount int not null,
    primary key(Visitor_Ticket,Location)
);

INSERT INTO Donation (Visitor_Ticket, Location, Date, Amount)
VALUES 
    (79, 'Zone B', '2024-11-09', 180),
    (95, 'Zone E', '2024-11-10', 30),
    (135, 'Zone C', '2024-11-12', 50),
    (82, 'Zone B', '2024-11-13', 120),
    (103, 'Zone D', '2024-11-14', 70),
    (112, 'Zone B', '2024-11-15', 90),
    (133, 'Zone C', '2024-11-16', 110),
    (74, 'Zone A', '2024-11-17', 150),
    (85, 'Zone B', '2024-11-18', 45),
    (107, 'Zone E', '2024-11-19', 80),
    (121, 'Zone A', '2024-11-20', 30),
    (131, 'Zone C', '2024-11-21', 200),
    (77, 'Zone D', '2024-11-22', 55),
    (92, 'Zone B', '2024-11-23', 85),
    (104, 'Zone C', '2024-11-24', 100),
    (115, 'Zone B', '2024-11-25', 120),
    (124, 'Zone B', '2024-11-26', 65),
    (85, 'Zone E', '2024-11-27', 90),
    (83, 'Zone B', '2024-11-28', 35),
    (102, 'Zone E', '2024-11-29', 150),
    (119, 'Zone A', '2024-11-30', 40),
    (138, 'Zone C', '2024-12-01', 70),
    (67, 'Zone D', '2024-12-02', 110),
    (88, 'Zone B', '2024-12-03', 30),
    (101, 'Zone A', '2024-12-04', 180),
    (117, 'Zone A', '2024-12-05', 55),
    (129, 'Zone B', '2024-12-06', 150),
    (72, 'Zone D', '2024-12-07', 20),
    (91, 'Zone E', '2024-12-08', 90),
    (99, 'Zone E', '2024-12-09', 40),
    (113, 'Zone A', '2024-12-10', 70),
    (122, 'Zone C', '2024-12-11', 120),
    (69, 'Zone D', '2024-12-12', 25),
    (86, 'Zone B', '2024-12-13', 200),
    (98, 'Zone E', '2024-12-14', 55),
    (111, 'Zone A', '2024-12-15', 130),
    (123, 'Zone C', '2024-12-16', 35),
    (75, 'Zone D', '2024-12-17', 160),
    (84, 'Zone B', '2024-12-18', 75),
    (106, 'Zone E', '2024-12-19', 105),
    (114, 'Zone A', '2024-12-20', 10),
    (120, 'Zone C', '2024-12-21', 145),
    (71, 'Zone D', '2024-12-22', 50),
    (89, 'Zone B', '2024-12-23', 120),
    (108, 'Zone E', '2024-12-24', 85),
    (116, 'Zone A', '2024-12-25', 170),
    (125, 'Zone C', '2024-12-26', 15),
    (78, 'Zone D', '2024-12-27', 130),
    (93, 'Zone B', '2024-12-28', 95),
    (105, 'Zone E', '2024-12-29', 65),
    (110, 'Zone A', '2024-12-30', 25),
    (126, 'Zone C', '2024-12-31', 140),
    (73, 'Zone D', '2025-01-01', 80),
    (90, 'Zone B', '2025-01-02', 155),
    (100, 'Zone E', '2025-01-03', 45),
    (118, 'Zone A', '2025-01-04', 105),
    (127, 'Zone C', '2025-01-05', 20),
    (80, 'Zone D', '2025-01-06', 110),
    (94, 'Zone B', '2025-01-07', 25),
    (96, 'Zone E', '2025-01-08', 150),
    (103, 'Zone A', '2025-01-09', 40),
    (128, 'Zone C', '2025-01-10', 70),
    (74, 'Zone D', '2025-01-11', 90),
    (82, 'Zone E', '2025-01-12', 180),
    (101, 'Zone E', '2025-01-13', 30),
    (114, 'Zone D', '2025-01-14', 110),
    (129, 'Zone C', '2025-01-15', 50),
    (76, 'Zone D', '2025-01-16', 75),
    (91, 'Zone B', '2025-01-17', 90),
    (102, 'Zone A', '2025-01-18', 90),
    (117, 'Zone D', '2025-01-19', 25),
    (126, 'Zone E', '2025-01-20', 140),
    (79, 'Zone D', '2025-01-21', 80),
    (83, 'Zone A', '2025-01-22', 155),
    (105, 'Zone B', '2025-01-23', 45),
    (113, 'Zone D', '2025-01-24', 105),
    (121, 'Zone C', '2025-01-25', 20),
    (77, 'Zone B', '2025-01-26', 110),
    (95, 'Zone B', '2025-01-27', 25),
    (97, 'Zone E', '2025-01-28', 150),
    (111, 'Zone E', '2025-01-29', 40),
    (122, 'Zone D', '2025-01-30', 70),
    (68, 'Zone D', '2025-01-31', 90);





create table transacts(
    ticket_no int,
    shop_no int,
    Foreign Key(ticket_no) references Visitor(Ticket_Number),
    Foreign Key(shop_no) references Shop(Shop_No),
    Transaction_No int Identity (1,1),
    Transaction_Value int ,
    primary key(ticket_No, shop_no, Transaction_No)
);

INSERT INTO transacts (ticket_no, shop_no, Transaction_Value)
VALUES
-- Visitor 17
(17, 20, 110), -- GizmoGalaxy
(17, 21, 80), -- OutdoorsUnlimited
(17, 22, 70), -- GameGalore
-- Visitor 18
(18, 1, 90), -- ZooGifts
(18, 2, 120), -- Safari Supplies
(18, 3, 50), -- SuperMart
-- Visitor 19
(19, 4, 70), -- FashionTrends
(19, 5, 100), -- ToyWorld
-- Visitor 20
(20, 6, 80), -- HealthyBites
-- Visitor 21
(21, 7, 60), -- GadgetZone
-- Visitor 22
(22, 8, 110), -- BookNook
(22, 9, 40), -- SportsEmporium
(22, 10, 90), -- CosmeticGlam
-- Visitor 23
(23, 11, 100), -- HomeDecor
(23, 12, 70), -- ElectroMart
-- Visitor 24
(24, 13, 80), -- FancyFurniture
-- Visitor 25
(25, 14, 50), -- PetParadise
-- Visitor 26
(26, 15, 110), -- TechTrends
(26, 16, 90), -- UrbanWear
-- Visitor 27
(27, 17, 70), -- ArtisticExpressions
-- Visitor 28
(28, 18, 130), -- FoodFiesta
(28, 19, 60), -- FashionHub
-- Visitor 29
(29, 20, 100), -- GizmoGalaxy
(29, 21, 70), -- OutdoorsUnlimited
(29, 22, 80), -- GameGalore
-- Visitor 30
(30, 1, 80), -- ZooGifts
(30, 2, 130), -- Safari Supplies
(30, 3, 60), -- SuperMart
-- Visitor 31
(31, 4, 90), -- FashionTrends
(31, 5, 120), -- ToyWorld
-- Visitor 32
(32, 6, 70), -- HealthyBites
-- Visitor 33
(33, 7, 50), -- GadgetZone
-- Visitor 34
(34, 8, 100), -- BookNook
(34, 9, 30), -- SportsEmporium
(34, 10, 70), -- CosmeticGlam
-- Visitor 35
(35, 11, 90), -- HomeDecor
(35, 12, 80), -- ElectroMart
-- Visitor 36
(36, 13, 70), -- FancyFurniture
-- Visitor 37
(37, 14, 40), -- PetParadise
-- Visitor 38
(38, 15, 120), -- TechTrends
(38, 16, 100), -- UrbanWear
-- Visitor 39
(39, 17, 60), -- ArtisticExpressions
-- Visitor 40
(40, 18, 140), -- FoodFiesta
(40, 19, 70), -- FashionHub
-- Visitor 41
(41, 20, 90), -- GizmoGalaxy
(41, 21, 80), -- OutdoorsUnlimited
(41, 22, 90), -- GameGalore
-- Visitor 42
(42, 1, 70), -- ZooGifts
(42, 2, 140), -- Safari Supplies
(42, 3, 70), -- SuperMart
-- Visitor 43
(43, 4, 100), -- FashionTrends
(43, 5, 110), -- ToyWorld
-- Visitor 44
(44, 6, 60), -- HealthyBites
-- Visitor 45
(45, 7, 40), -- GadgetZone
-- Visitor 46
(46, 8, 90), -- BookNook
(46, 9, 50), -- SportsEmporium
(46, 10, 80), -- CosmeticGlam
-- Visitor 47
(47, 11, 80), -- HomeDecor
(47, 12, 90), -- ElectroMart
-- Visitor 48
(48, 13, 60), -- FancyFurniture
-- Visitor 49
(49, 14, 30), -- PetParadise
-- Visitor 50
(50, 15, 110), -- TechTrends
(50, 16, 90), -- UrbanWear
-- Visitor 51
(51, 17, 50), -- ArtisticExpressions
-- Visitor 52
(52, 18, 130), -- FoodFiesta
(52, 19, 60), -- FashionHub
-- Visitor 53
(53, 20, 100), -- GizmoGalaxy
(53, 21, 70), -- OutdoorsUnlimited
(53, 22, 90), -- GameGalore
-- Visitor 54
(54, 1, 80), -- ZooGifts
(54, 2, 120), -- Safari Supplies
(54, 3, 50), -- SuperMart
-- Visitor 55
(55, 4, 70), -- FashionTrends
(55, 5, 100), -- ToyWorld
-- Visitor 56
(56, 6, 80), -- HealthyBites
-- Visitor 57
(57, 7, 60), -- GadgetZone
-- Visitor 58
(58, 8, 110), -- BookNook
(58, 9, 40), -- SportsEmporium
(58, 10, 90), -- CosmeticGlam
-- Visitor 59
(59, 11, 100), -- HomeDecor
(59, 12, 70), -- ElectroMart
-- Visitor 60
(60, 13, 80), -- FancyFurniture
-- Visitor 61
(61, 14, 50), -- PetParadise
-- Visitor 62
(62, 15, 110), -- TechTrends
(62, 16, 90), -- UrbanWear
-- Visitor 63
(63, 17, 70), -- ArtisticExpressions
-- Visitor 64
(64, 18, 130), -- FoodFiesta
(64, 19, 60), -- FashionHub
-- Visitor 65
(65, 20, 100), -- GizmoGalaxy
(65, 21, 70), -- OutdoorsUnlimited
(65, 22, 80), -- GameGalore
-- Visitor 66
(66, 1, 90), -- ZooGifts
(66, 2, 130), -- Safari Supplies
(66, 3, 60), -- SuperMart
-- Visitor 67
(67, 4, 90), -- FashionTrends
(67, 5, 120), -- ToyWorld
-- Visitor 68
(68, 6, 70), -- HealthyBites
-- Visitor 69
(69, 7, 50), -- GadgetZone
-- Visitor 70
(70, 8, 100), -- BookNook
(70, 9, 30), -- SportsEmporium
(70, 10, 70), -- CosmeticGlam
-- Visitor 71
(71, 11, 90), -- HomeDecor
(71, 12, 80), -- ElectroMart
-- Visitor 72
(72, 13, 70), -- FancyFurniture
-- Visitor 73
(73, 14, 40), -- PetParadise
-- Visitor 74
(74, 15, 120), -- TechTrends
(74, 16, 100), -- UrbanWear
-- Visitor 75
(75, 17, 60), -- ArtisticExpressions
-- Visitor 76
(76, 18, 140), -- FoodFiesta
(76, 19, 70), -- FashionHub
-- Visitor 77
(77, 20, 90), -- GizmoGalaxy
(77, 21, 80), -- OutdoorsUnlimited
(77, 22, 90), -- GameGalore
-- Visitor 78
(78, 1, 70), -- ZooGifts
(78, 2, 140), -- Safari Supplies
(78, 3, 70), -- SuperMart
-- Visitor 79
(79, 4, 100), -- FashionTrends
(79, 5, 110), -- ToyWorld
-- Visitor 80
(80, 6, 60), -- HealthyBites
-- Visitor 81
(81, 7, 40), -- GadgetZone
-- Visitor 82
(82, 8, 90), -- BookNook
(82, 9, 50), -- SportsEmporium
(82, 10, 80), -- CosmeticGlam
-- Visitor 83
(83, 11, 80), -- HomeDecor
(83, 12, 90), -- ElectroMart
-- Visitor 84
(84, 13, 60), -- FancyFurniture
-- Visitor 85
(85, 14, 30), -- PetParadise
-- Visitor 86
(86, 15, 110), -- TechTrends
(86, 16, 90), -- UrbanWear
-- Visitor 87
(87, 17, 70), -- ArtisticExpressions
-- Visitor 88
(88, 18, 130), -- FoodFiesta
(88, 19, 60), -- FashionHub
-- Visitor 89
(89, 20, 100), -- GizmoGalaxy
(89, 21, 70), -- OutdoorsUnlimited
(89, 22, 80), -- GameGalore
-- Visitor 90
(90, 1, 90), -- ZooGifts
(90, 2, 130), -- Safari Supplies
(90, 3, 60), -- SuperMart
-- Visitor 91
(91, 4, 90), -- FashionTrends
(91, 5, 120), -- ToyWorld
-- Visitor 92
(92, 6, 70), -- HealthyBites
-- Visitor 93
(93, 7, 50), -- GadgetZone
-- Visitor 94
(94, 8, 100), -- BookNook
(94, 9, 30), -- SportsEmporium
(94, 10, 70), -- CosmeticGlam
-- Visitor 95
(95, 11, 90), -- HomeDecor
(95, 12, 80), -- ElectroMart
-- Visitor 96
(96, 13, 70), -- FancyFurniture
-- Visitor 97
(97, 14, 40), -- PetParadise
-- Visitor 98
(98, 15, 120), -- TechTrends
(98, 16, 100), -- UrbanWear
-- Visitor 99
(99, 17, 60), -- ArtisticExpressions
-- Visitor 100
(100, 18, 140), -- FoodFiesta
(100, 19, 70), -- FashionHub
-- Visitor 101
(101, 20, 90), -- GizmoGalaxy
(101, 21, 80), -- OutdoorsUnlimited
(101, 22, 90), -- GameGalore
-- Visitor 102
(102, 1, 70), -- ZooGifts
(102, 2, 140), -- Safari Supplies
(102, 3, 70), -- SuperMart
-- Visitor 103
(103, 4, 100), -- FashionTrends
(103, 5, 110), -- ToyWorld
-- Visitor 104
(104, 6, 60), -- HealthyBites
-- Visitor 105
(105, 7, 40), -- GadgetZone
-- Visitor 106
(106, 8, 90), -- BookNook
(106, 9, 50), -- SportsEmporium
(106, 10, 80), -- CosmeticGlam
-- Visitor 107
(107, 11, 80), -- HomeDecor
(107, 12, 90), -- ElectroMart
-- Visitor 108
(108, 13, 60), -- FancyFurniture
-- Visitor 109
(109, 14, 30), -- PetParadise
-- Visitor 110
(110, 15, 110), -- TechTrends
(110, 16, 90), -- UrbanWear
-- Visitor 111
(111, 17, 70), -- ArtisticExpressions
-- Visitor 112
(112, 18, 130), -- FoodFiesta
(112, 19, 60), -- FashionHub
-- Visitor 113
(113, 20, 100), -- GizmoGalaxy
(113, 21, 70), -- OutdoorsUnlimited
(113, 22, 80), -- GameGalore
-- Visitor 114
(114, 1, 90), -- ZooGifts
(114, 2, 130), -- Safari Supplies
(114, 3, 60), -- SuperMart
-- Visitor 115
(115, 4, 90), -- FashionTrends
(115, 5, 120), -- ToyWorld
-- Visitor 116
(116, 6, 70), -- HealthyBites
-- Visitor 117
(117, 7, 50), -- GadgetZone
-- Visitor 118
(118, 8, 100), -- BookNook
(118, 9, 30), -- SportsEmporium
(118, 10, 70), -- CosmeticGlam
-- Visitor 119
(119, 11, 90), -- HomeDecor
(119, 12, 80), -- ElectroMart
-- Visitor 120
(120, 13, 70), -- FancyFurniture
-- Visitor 121
(121, 14, 40), -- PetParadise
-- Visitor 122
(122, 15, 120), -- TechTrends
(122, 16, 100), -- UrbanWear
-- Visitor 123
(123, 17, 60), -- ArtisticExpressions
-- Visitor 124
(124, 18, 140), -- FoodFiesta
(124, 19, 70), -- FashionHub
-- Visitor 125
(125, 20, 90), -- GizmoGalaxy
(125, 21, 80), -- OutdoorsUnlimited
(125, 22, 90), -- GameGalore
-- Visitor 126
(126, 1, 70), -- ZooGifts
(126, 2, 140), -- Safari Supplies
(126, 3, 70), -- SuperMart
-- Visitor 127
(127, 4, 100), -- FashionTrends
(127, 5, 110), -- ToyWorld
-- Visitor 128
(128, 6, 60), -- HealthyBites
-- Visitor 129
(129, 7, 40), -- GadgetZone
-- Visitor 130
(130, 8, 90), -- BookNook
(130, 9, 50), -- SportsEmporium
(130, 10, 80), -- CosmeticGlam
-- Visitor 131
(131, 11, 80), -- HomeDecor
(131, 12, 90), -- ElectroMart
-- Visitor 132
(132, 13, 60), -- FancyFurniture
-- Visitor 133
(133, 14, 30), -- PetParadise
-- Visitor 134
(134, 15, 110), -- TechTrends
(134, 16, 90), -- UrbanWear
-- Visitor 135
(135, 17, 70), -- ArtisticExpressions
-- Visitor 136
(136, 18, 130), -- FoodFiesta
(136, 19, 60), -- FashionHub
-- Visitor 137
(137, 20, 100), -- GizmoGalaxy
(137, 21, 70), -- OutdoorsUnlimited
(137, 22, 80), -- GameGalore
-- Visitor 138
(138, 1, 90), -- ZooGifts
(138, 2, 130), -- Safari Supplies
(138, 3, 60), -- SuperMart
-- Visitor 139
(139, 4, 90), -- FashionTrends
(139, 5, 120), -- ToyWorld
-- Visitor 140
(140, 6, 70), -- HealthyBites
-- Visitor 141
(141, 7, 50), -- GadgetZone
-- Visitor 142
(142, 8, 100), -- BookNook
(142, 9, 30), -- SportsEmporium
(142, 10, 70), -- CosmeticGlam
-- Visitor 143
(143, 11, 90), -- HomeDecor
(143, 12, 80), -- ElectroMart
-- Visitor 144
(144, 13, 70), -- FancyFurniture
-- Visitor 145
(145, 14, 40), -- PetParadise
-- Visitor 146
(146, 15, 120), -- TechTrends
(146, 16, 100), -- UrbanWear
-- Visitor 147
(147, 17, 60), -- ArtisticExpressions
-- Visitor 148
(148, 18, 140), -- FoodFiesta
(148, 19, 70), -- FashionHub
-- Visitor 149
(149, 20, 90), -- GizmoGalaxy
(149, 21, 80), -- OutdoorsUnlimited
(149, 22, 90), -- GameGalore
-- Visitor 150
(150, 1, 70), -- ZooGifts
(150, 2, 140), -- Safari Supplies
(150, 3, 70); -- SuperMart


create table Sponsor_Area_Acquired(
    Area_Acquired varchar(50) CHECK (Area_Acquired IN ('Zone A', 'Zone B', 'Zone C', 'Zone D', 'Zone E')),
    sponsor_id int,
    Foreign Key(sponsor_id) references Sponsor(Sponsor_ID),
    primary key (Area_Acquired,sponsor_id)
);

INSERT INTO Sponsor_Area_Acquired (Area_Acquired, sponsor_id)
    VALUES 
    ('Zone A', 1),
    ('Zone B', 1),
    ('Zone C', 2),
    ('Zone D', 2),
    ('Zone E', 3),
    ('Zone A', 3),
    ('Zone B', 4),
    ('Zone C', 4),
    ('Zone D', 5),
    ('Zone E', 5),
    ('Zone A', 6),
    ('Zone B', 6),
    ('Zone C', 7),
    ('Zone D', 7),
    ('Zone E', 8),
    ('Zone A', 8),
    ('Zone B', 9),
    ('Zone C', 9),
    ('Zone D', 10),
    ('Zone E', 10),
    ('Zone A', 11),
    ('Zone B', 11);

ALTER TABLE Animal
ADD CONSTRAINT FK_Exhibit_no 
FOREIGN KEY (Exhibit_no) REFERENCES Exhibit(Exhibit_No);

ALTER TABLE Exhibit
ADD CONSTRAINT FK_EManager_Id
FOREIGN KEY (EManager_Id) REFERENCES Staff(ID);

ALTER TABLE Clinic
ADD CONSTRAINT FK_CManager_Id
FOREIGN KEY (CManager_Id) REFERENCES Staff(ID);

Alter Table Shop
Add Constraint FK_SManager_Id
Foreign Key (SManager_Id) References Staff(ID);

ALTER TABLE Staff
ADD CONSTRAINT FK_Shop_NO
FOREIGN KEY (Shop_NO) REFERENCES Shop(Shop_No);

