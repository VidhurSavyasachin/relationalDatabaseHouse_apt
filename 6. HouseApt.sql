CREATE DATABASE housedb;
use housedb;
CREATE TABLE developers(
    sno INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    DevName VARCHAR(1000)
);
CREATE TABLE developementName(
    sno_dn INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    DevName_id INT,
    FOREIGN KEY(DevName_id) REFERENCES developers(sno) 
);
ALTER TABLE developementName ADD developement VARCHAR(1200);
CREATE TABLE Address(
    sno_ad INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    address VARCHAR(1000),
    Development_id INT,
    FOREIGN KEY (Development_id) REFERENCES developementName(sno_dn)
    );
CREATE TABLE PostalCode(
    sno_pc INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    zipCode VARCHAR(100),
    address_sno INT,
    FOREIGN KEY (address_sno) REFERENCES Address(sno_ad)
    );
CREATE TABLE District(
    sno INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    D_code VARCHAR(100),
    postalCode_id INT,
    FOREIGN KEY(postalCode_id) REFERENCES PostalCode(sno_pc) 
);
CREATE TABLE TypeOfHouse(
     sno_tp INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
     typeOfhouse VARCHAR(1000),
     developementName_th INT,
     FOREIGN KEY(developementName_th) REFERENCES developementName(sno_dn)
);
CREATE TABLE Units(
    sno_u INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    no_of_units INT,
    units_sno INT,
  FOREIGN KEY(units_sno) REFERENCES developementName(sno_dn)
);
CREATE TABLE Floors(
    sno_f INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    no_of_floors INT,
    floors_sno INT,
    FOREIGN KEY(floors_sno) REFERENCES Units(sno_u)
);
CREATE TABLE Tenure(
    sno_tenure INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    tenure_details VARCHAR(100),
    typeOfHouse INT,
    FOREIGN KEY(typeOfHouse) REFERENCES developementName(sno_dn)
);
CREATE TABLE Facilities(
    sno_fac INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    facilities_detials VARCHAR(2000),
    facilities INT,
    FOREIGN KEY(facilities) REFERENCES developementName(sno_dn)
);
CREATE TABLE Amenities(
    sno_amenities INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    amenities_details VARCHAR(2000),
    Amenities_val INT,
    FOREIGN KEY(Amenities_val) REFERENCES developementName(sno_dn)
);


-- INSERT INTO developers(DevName) VALUES ('Yi Kai Development Pte Ltd'),('Bonsel Development Pte Ltd'),('Hong Leong Holdings'),('Novelty Group'),('Tripartite Developers Pte Ltd'),('Faber Union LTD'),('Tuan Huat Investment Co. Pte Ltd'),('Sustained Land Pte Ltd'),('Springlife JLB Pte Ltd'),('TAI CHUAN DEVELOPMENT (PTE) LTD');

-- INSERT INTO developementName(developement,DevName_id) VALUES ('Aston Residence',1),('Avila Gardens',2),('Avila Terrace',2),('Casa Pasir Ris',3),('Changi Gardens',4),('Changi Heights',4),('Edelweiss Park Condo',5),('Hedges Park Condominium',6),('JLB Residences',7),('Loyang Court',8),('Loyang Terrace',8),('Riz Haven',9),('Sandy Palm',10);

-- INSERT INTO Address(address,Development_id) VALUES ('0 Jalan Loyang Besar',1),('9 Flora Road',2),('0 Mariam Way',3),('2 Flora Road',4),('152 Mariam Way',5),('32 Jalan Mariam',6),('205 Jalan Loyang Besar',7),('0 Loyang Place',8),('177 Jalan Loyang Besar',9),('43 Jalan Loyang Besar',10),('0 Jalan Loyang Besar',11),('207 - 207V Jalan Loyang Besar',12),('0 Loyang Rise',13);
-- INSERT INTO PostalCode(zipCode,address_sno) VALUES ('509000',1),('509737',2),('508000',3),('509725',4),('507025',5),('508000',6),('506291',7),('500000',8),('507025',9),('508000',10),('507875',11),('509432',12),('507875',13);
-- INSERT INTO District(D_code,postalCode_id) VALUES ('17',1),('17',2),('17',3), ('17',4),('17',5),('17',6), ('17',7),('17',8),('17',9), ('17',10),('17',11),('17',12), ('17',13);
-- INSERT INTO TypeOfHouse(typeOfHouse,developementName_th) VALUES ('Detached House',1),('Condominium',2),('Terraced House',3),('Condominium',4),('Apartment',5),('Condominium',6),('Condominium',7),('Apartment',8),('Terraced House',9),('Cluster House',10),('Terraced House',11),('Semi-Detached House',12),('Terraced House',13);
-- INSERT INTO Units(no_of_units,units_sno) VALUES (28,1),(347,2),(112,3),(145,4),(56,5),(167,6),(168,7),(289,8),(125,9),(153,10),(65,11),(87,12),(99,13);

-- INSERT INTO Floors(no_of_floors,floors_sno) VALUES (28,1),(347,2),(112,3),(316,4),(45,5),(78,6),(528,7),(28,8),(475,9),(269,10),(430,11),(125,12),(90,13);
-- INSERT INTO Tenure(tenure_details,typeOfHouse) VALUES ('Unknown Tenure',1),('Freehold',2),('Freehold',3),('999-Year Leasehold',4),('Freehold',5),('Freehold',6),('999-Year Leasehold',7),('999-Year Leasehold',8),('Freehold',9),('Freehold',10),('999-Year Leasehold',11),('Freehold',12),('Freehold',13);


-- INSERT INTO Facilities(facilities_detials,facilities) VALUES ('Jacuzzi ;Swimming pool',1),('BBQ pits;Pool Deck;Playground ;Spa pool;Squash court;Swimming pool ;Tennis courts;Wading pool',2),
-- ('BBQ pits;Covered car park ;Clubhouse;Gymnasium room;Playground ;Sauna ;24 hours security ;Squash court;Swimming pool ;Tennis courts;Wading pool ;',4),('BBQ pits;Covered car park ;Clubhouse;Gymnasium room;Playground ;Sauna ;24 hours security ;Squash court;Swimming pool ;Tennis courts;Wading pool ;',5),('BBQ pits;Covered car park ;24 hours security ;Swimming pool ;',6),('Covered car park ;',9);


-- INSERT INTO Amenities(amenities_details,Amenities_val) VALUES ('Azalea Park Condo is located close to shopping centres like Loyang Point and Tampines Mart. Educational institutions located nearby include White Sands Primary School and East Spring Primary School.',3),('There is a bus service available near the development. Several schools and eating establishments are a short walk or drive away. It is also close to White Sands shopping centre, Tampines Mart and Loyang Point where there is a host of amenities such as shops, supermarkets, and restaurants.Estella Gardens is near recreational facilities such as Tampines Tree Garden and Tampines Leisure Park.For vehicle owners, it takes 20-25 minutes to get to the business hub and the vibrant Orchard Road shopping district, via Pan Island Expressway.							',6),('Loyang Gardens is located just minutes drive away from White Sands, where a host of amenities are readily available, such as retail outlets, supermarkets, restaurants and eating establishments, banks, and other entertainment facilities. There are schools located in the vicinity, such as Casuarina Primary School and Hai Sing Catholic. Recreational facilities nearby include the Downtown East and Escape Theme Park which is just a short drive away. For vehicle owners, travelling to the business hub from Loyang Gardens takes just above 25 minutes, via Pan- Island Expressway.							',10);


-- SELECT developement,address,DevName FROM developementName INNER JOIN Address ON developementName.sno_dn = Address.Development_id INNER JOIN developers ON developementName.DevName_id = developers.sno;

-- SELECT developement,address,DevName FROM developementName LEFT JOIN Address ON developementName.sno_dn = Address.Development_id LEFT JOIN developers ON developementName.DevName_id = developers.sno;




-- SELECT developement,no_of_units FROM developementName JOIN Units ON developementName.sno_dn = Units.units_sno GROUP BY no_of_units;

SELECT developement,no_of_units FROM developementName JOIN Units ON developementName.sno_dn = Units.units_sno WHERE developement LIKE 'C%';


