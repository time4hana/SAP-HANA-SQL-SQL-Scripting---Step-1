
-- ====================================================
-- Create a new Schema and make it default Schema
-- ====================================================
CREATE SCHEMA T4H;
SET SCHEMA T4H;
-- ====================================================
-- Execute following DROP statements only 
-- if you are re-generating objects
-- ====================================================
/*DROP TABLE "Books";
DROP TABLE "Author";
DROP TABLE "Publisher";
DROP TABLE "Location";*/
-- ====================================================
-- Create Books Table
-- ====================================================
CREATE COLUMN TABLE "Books"
(
	Book_id VARCHAR(3) PRIMARY KEY,
	Title VARCHAR(12) NOT NULL,
	Category VARCHAR(10),
	MRP DECIMAL(10,2),
	Author VARCHAR(3),
	ISBN VARCHAR(13)	
);
-- ====================================================
-- Create Author Table
-- ====================================================
CREATE COLUMN TABLE "Author"
(
	Author_id VARCHAR(3) PRIMARY KEY,
	Name VARCHAR(5),
	Birthday DATE,
	Location VARCHAR(3)
);
-- ====================================================
-- Create Publisher Table
-- ====================================================
CREATE COLUMN TABLE "Publisher"
(
	Publisher_id VARCHAR(5) PRIMARY KEY,
	ISBN VARCHAR(13) NOT NULL,
	Location VARCHAR(3)
);
-- ====================================================
-- Create Location Table
-- ====================================================
CREATE COLUMN TABLE "Location"
(
	Location_id VARCHAR(3) PRIMARY KEY,
	Street VARCHAR(20),
	City VARCHAR(20),
	State VARCHAR(20),
	ZIP VARCHAR(20),
	Country VARCHAR(12),
	"e-Mail" VARCHAR(30)
);

-- ====================================================
-- Populate Books Table
-- ====================================================
INSERT INTO "Books" (Book_id, Title, Category, MRP, Author, ISBN) VALUES ('B01', 'Chinese', 'Printed', 1120, 'A01', '99921-58-10-7');
INSERT INTO "Books" (Book_id, Title, Category, MRP, Author, ISBN) VALUES ('B02', 'English', 'e-book', 480, 'A06', '9971-5-0210-0');
INSERT INTO "Books" (Book_id, Title, Category, MRP, Author, ISBN) VALUES ('B03', 'Spanish', 'pdf', 332, 'A03', '960-425-059-0');
INSERT INTO "Books" (Book_id, Title, Category, MRP, Author, ISBN) VALUES ('B04', 'Arabic', '', 235, 'A03', '80-902734-1-6');
INSERT INTO "Books" (Book_id, Title, Category, MRP, Author, ISBN) VALUES ('B05', 'Bengali', 'e-book', 189, 'A07', '85-359-0277-5');
INSERT INTO "Books" (Book_id, Title, Category, MRP, Author, ISBN) VALUES ('B06', 'Hindi', 'pdf', 182, 'A05', '1-84356-028-3');
INSERT INTO "Books" (Book_id, Title, Category, MRP, Author, ISBN) VALUES ('B07', 'Russian', 'e-book', 180, NULL, NULL);
INSERT INTO "Books" (Book_id, Title, Category, MRP, Author, ISBN) VALUES ('B08', 'Portuguese', 'pdf', 170, 'A06', '0-8044-2957-X');
INSERT INTO "Books" (Book_id, Title, Category, MRP, Author, ISBN) VALUES ('B09', 'Japanese', 'Printed', 125, 'A04', '0-85131-041-9');
INSERT INTO "Books" (Book_id, Title, Category, MRP, Author, ISBN) VALUES ('B10', 'German', 'e-book', 98, 'A09', '0-943396-04-2');
INSERT INTO "Books" (Book_id, Title, Category, MRP, Author, ISBN) VALUES ('B11', 'Chinese', 'Printed', 77.2, 'A02', '0-9752298-0-X');
INSERT INTO "Books" (Book_id, Title, Category, MRP, Author, ISBN) VALUES ('B12', 'Javanese', 'e-book', 75.5, 'A05', '960-425-059-1');
INSERT INTO "Books" (Book_id, Title, Category, MRP, Author, ISBN) VALUES ('B13', 'Korean', 'pdf', 75, 'A02', '80-902734-1-7');
INSERT INTO "Books" (Book_id, Title, Category, MRP, Author, ISBN) VALUES ('B14', 'French', 'Printed', 72, 'A02', '85-359-0277-6');
INSERT INTO "Books" (Book_id, Title, Category, MRP, Author, ISBN) VALUES ('B15', 'Turkish', 'e-book', 69, 'A09', '960-425-059-2');
INSERT INTO "Books" (Book_id, Title, Category, MRP, Author, ISBN) VALUES ('B16', 'Vietnamese', 'pdf', 67.7, 'A08', '80-902734-1-8');
INSERT INTO "Books" (Book_id, Title, Category, MRP, Author, ISBN) VALUES ('B17', 'Telugu', 'e-book', 66.4, 'A08', '85-359-0277-7');
INSERT INTO "Books" (Book_id, Title, Category, MRP, Author, ISBN) VALUES ('B18', 'Chinese', NULL, 66, NULL, NULL);
INSERT INTO "Books" (Book_id, Title, Category, MRP, Author, ISBN) VALUES ('B19', 'Marathi', 'Printed', 64.8, 'A04', '0-943396-04-3');
INSERT INTO "Books" (Book_id, Title, Category, MRP, Author, ISBN) VALUES ('B20', 'Tamil', 'e-book', 63.1, 'A01', NULL);

-- ====================================================
-- Populate Author Table
-- ====================================================
INSERT INTO "Author" (Author_id, Name, Birthday, Location) VALUES ('A01', 'Mr A', '19410520', 'L01');
INSERT INTO "Author" (Author_id, Name, Birthday, Location) VALUES ('A02', 'Ms B', '19660511', 'L02');
INSERT INTO "Author" (Author_id, Name, Birthday, Location) VALUES ('A03', 'Ms C', NULL, 'L03');
INSERT INTO "Author" (Author_id, Name, Birthday, Location) VALUES ('A04', 'Mr D', '19450815', 'L04');
INSERT INTO "Author" (Author_id, Name, Birthday, Location) VALUES ('A05', 'Mr E', '19860210', 'L05');
INSERT INTO "Author" (Author_id, Name, Birthday, Location) VALUES ('A06', 'Mr F', '19900126', 'L06');
INSERT INTO "Author" (Author_id, Name, Birthday, Location) VALUES ('A07', 'Ms G', '20000625', 'L07');
INSERT INTO "Author" (Author_id, Name, Birthday, Location) VALUES ('A08', 'Mr H', '19810821', 'L08');
INSERT INTO "Author" (Author_id, Name, Birthday, Location) VALUES ('A09', 'Ms I', NULL, 'L09');

-- ====================================================
-- Populate Publisher Table
-- ====================================================
INSERT INTO "Publisher" (Publisher_id, ISBN, Location) VALUES ('PUB1', '0-8044-2957-X', 'L10');
INSERT INTO "Publisher" (Publisher_id, ISBN, Location) VALUES ('PUB2', '0-85131-041-9', 'L11');
INSERT INTO "Publisher" (Publisher_id, ISBN, Location) VALUES ('PUB3', '0-943396-04-2', 'L12');
INSERT INTO "Publisher" (Publisher_id, ISBN, Location) VALUES ('PUB4', '0-943396-04-3', 'L13');
INSERT INTO "Publisher" (Publisher_id, ISBN, Location) VALUES ('PUB5', '0-9752298-0-X', 'L14');
INSERT INTO "Publisher" (Publisher_id, ISBN, Location) VALUES ('PUB6', '1-84356-028-3', 'L15');
INSERT INTO "Publisher" (Publisher_id, ISBN, Location) VALUES ('PUB7', '80-902734-1-6', 'L16');
INSERT INTO "Publisher" (Publisher_id, ISBN, Location) VALUES ('PUB8', '80-902734-1-7', 'L17');
INSERT INTO "Publisher" (Publisher_id, ISBN, Location) VALUES ('PUB9', '80-902734-1-8', 'L18');
INSERT INTO "Publisher" (Publisher_id, ISBN, Location) VALUES ('PUB10', '85-359-0277-5', 'L19');
INSERT INTO "Publisher" (Publisher_id, ISBN, Location) VALUES ('PUB11', '85-359-0277-6', 'L20');
INSERT INTO "Publisher" (Publisher_id, ISBN, Location) VALUES ('PUB12', '85-359-0277-7', 'L21');
INSERT INTO "Publisher" (Publisher_id, ISBN, Location) VALUES ('PUB13', '960-425-059-0', 'L22');
INSERT INTO "Publisher" (Publisher_id, ISBN, Location) VALUES ('PUB14', '960-425-059-1', 'L23');
INSERT INTO "Publisher" (Publisher_id, ISBN, Location) VALUES ('PUB15', '960-425-059-2', 'L24');
INSERT INTO "Publisher" (Publisher_id, ISBN, Location) VALUES ('PUB16', '9971-5-0210-0', 'L25');
INSERT INTO "Publisher" (Publisher_id, ISBN, Location) VALUES ('PUB17', '99921-58-10-7', 'L26');

-- ====================================================
-- Populate Location Table
-- ====================================================
INSERT INTO "Location" (Location_id, Street, City, State, Zip, Country, "e-Mail") VALUES ('L01', '7th Avenue', 'SFO', 'California', '94203', 'USA', 'books@L01.com');
INSERT INTO "Location" (Location_id, Street, City, State, Zip, Country, "e-Mail") VALUES ('L02', 'City Center', 'London', 'London', 'W1A 0AX', 'UK', 'diam@et.ca');
INSERT INTO "Location" (Location_id, Street, City, State, Zip, Country, "e-Mail") VALUES ('L03', 'Rue de Passy', 'Paris', 'Île-de-France', '83666', 'France', '     a@auctor.edu');
INSERT INTO "Location" (Location_id, Street, City, State, Zip, Country, "e-Mail") VALUES ('L04', 'Wall Street', 'New York City', 'New York', '72217', 'UAE', 'mollis@amet.com');
INSERT INTO "Location" (Location_id, Street, City, State, Zip, Country, "e-Mail") VALUES ('L05', 'Red Fort Lane', 'New Delhi', 'Delhi', '199 550', 'India', 'mauris@nunc.com');
INSERT INTO "Location" (Location_id, Street, City, State, Zip, Country, "e-Mail") VALUES ('L06', 'Jumeira Rd', 'Dubai', 'Emirate of Dubai', NULL, 'UAE', 'orci@ornarelectus.ca');
INSERT INTO "Location" (Location_id, Street, City, State, Zip, Country, "e-Mail") VALUES ('L07', 'Old Arbat', 'Moscow', 'Central Federal', '101', 'Russia', 'sit@auctor.net');
INSERT INTO "Location" (Location_id, Street, City, State, Zip, Country, "e-Mail") VALUES ('L08', 'Paseo de Salcedo', 'Manila', 'Manila', '44898', 'Philippines', 'tempus@mauris.edu');
INSERT INTO "Location" (Location_id, Street, City, State, Zip, Country, "e-Mail") VALUES ('L09', 'Capitol Line', 'Beijing', 'Beijing', '56799', 'China', '     sem@moca    ');
INSERT INTO "Location" (Location_id, Street, City, State, Zip, Country, "e-Mail") VALUES ('L10', '7th Avenue', 'SFO', 'California', '94203', 'USA', 'amet@Aliquamnec.ca');
INSERT INTO "Location" (Location_id, Street, City, State, Zip, Country, "e-Mail") VALUES ('L11', '255 S Alex Rd', 'Delhi', 'Delhi', '199 055', 'India', 'est.Nunc@dui.co.uk');
INSERT INTO "Location" (Location_id, Street, City, State, Zip, Country, "e-Mail") VALUES ('L12', '501 Mansion Park', 'SFO', 'Calfornia', '25252', 'USA', 'porttitor@enim.org');
INSERT INTO "Location" (Location_id, Street, City, State, Zip, Country, "e-Mail") VALUES ('L13', 'Capitol Line', 'Raleigh', 'North Carolina', '56799', 'USA', 'eget@Proineget.com');
INSERT INTO "Location" (Location_id, Street, City, State, Zip, Country, "e-Mail") VALUES ('L14', 'Oxford Street', 'Edinburgh', 'Scotland', '85055', 'UK', 'scelerisque@id.com');
INSERT INTO "Location" (Location_id, Street, City, State, Zip, Country, "e-Mail") VALUES ('L15', NULL, 'New York', 'New York', '72217', 'USA', 'orci@ornarelectus.ca');
INSERT INTO "Location" (Location_id, Street, City, State, Zip, Country, "e-Mail") VALUES ('L16', NULL, 'Manila', NULL, '44898', 'Philippines', 'mus.Proin.vel@non.ca');
INSERT INTO "Location" (Location_id, Street, City, State, Zip, Country, "e-Mail") VALUES ('L17', 'Main Street', 'Moscow', NULL, '369599', 'Russia', 'Phasellus.elit@in.com');
INSERT INTO "Location" (Location_id, Street, City, State, Zip, Country, "e-Mail") VALUES ('L18', 'University Road', 'Lille', 'Paris', '83666', 'France', 'lorem@convallis.co.uk');
INSERT INTO "Location" (Location_id, Street, City, State, Zip, Country, "e-Mail") VALUES ('L19', 'Broadway', 'Seoul', 'Jin', '505 202', 'Korea', 'Integer.sem@aliquet.ca');
INSERT INTO "Location" (Location_id, Street, City, State, Zip, Country, "e-Mail") VALUES ('L20', 'Bowery', 'Tokyo', 'Kanto', '497 001', 'Japan', 'Nunc.ac.sem@Quisque.ca');
INSERT INTO "Location" (Location_id, Street, City, State, Zip, Country, "e-Mail") VALUES ('L21', 'Castle Area', 'Ankara', 'Anatolia', '506 202', 'Turkey', 'magna@Quisquepurus.org');
INSERT INTO "Location" (Location_id, Street, City, State, Zip, Country, "e-Mail") VALUES ('L22', 'Hang Bac Street', 'Hanoi', 'Northern Vietnam', '498 001', 'Vietnam', 'sapien@lorem   ');
INSERT INTO "Location" (Location_id, Street, City, State, Zip, Country, "e-Mail") VALUES ('L23', 'Jalan Jaksa Street', 'Jakarta', 'Java', '507 202', 'Indonesia', 'あいうえお@L23.com');
INSERT INTO "Location" (Location_id, Street, City, State, Zip, Country, "e-Mail") VALUES ('L24', 'Pretoria Avenue', 'Ottawa', 'Ontario', 'A1A 1A1', 'Canada', 'urna.et@musAeneaneget.ca');
INSERT INTO "Location" (Location_id, Street, City, State, Zip, Country, "e-Mail") VALUES ('L25', 'Regina', 'Mexico-City', 'South-Central Mexico', '508 202', 'Mexico', 'diam@et.ca');
INSERT INTO "Location" (Location_id, Street, City, State, Zip, Country, "e-Mail") VALUES ('L26', 'Ameerpet', 'Hyderabad', 'Telangana', '500 001', 'India', 'urna@sit.com');

-- ====================================================
-- Read all Tables
-- ====================================================
SELECT * FROM "T4H"."Books";
SELECT * FROM "T4H"."Author";
SELECT * FROM "T4H"."Publisher";
SELECT * FROM "T4H"."Location";
