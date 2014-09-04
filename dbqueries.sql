# Create database
CREATE DATABASE Tasterhood;

# Create ContactInfo
CREATE TABLE Tasterhood.ContactInfo (ID INT, Name VARCHAR(64), Email VARCHAR(128), Password VARCHAR(128), Address VARCHAR(256), Zipcode INT, Type VARCHAR(64));

# Create TasterProfile
CREATE TABLE Tasterhood.TasterProfile (ContactInfoID INT, InterestedCuisines VARCHAR(64), AvgPricePerMeal FLOAT, DineIn TINYINT, Takeout TINYINT);

# Create RestaurantProfile
CREATE TABLE Tasterhood.RestaurantProfile (ContactInfoID INT, CuisinesOffered VARCHAR(64), AvgPricePerMeal FLOAT, DateOfStarting DATE, DineIn TINYINT, Takeout TINYINT);

SELECT * from Tasterhood.RestaurantProfile;

INSERT into Tasterhood.ContactInfo values (2, "Sanath", "daya@gmail.com", "thathva", "HomeRedmond", 98052, "taster" );

Select * from Tasterhood.ContactInfo;

Use Tasterhood;


UPDATE ContactInfo SET Email = "ramyaramaswamy89@gmail.com" WHERE ID = 1;


INSERT into Tasterhood.TasterProfile values (2, "Indian", 50.98, 1, 0);
Select * from Tasterhood.TasterProfile;

SELECT * from ContactInfo JOIN TasterProfile ON ContactInfo.ID = TasterProfile.ContactInfoID WHERE Email ="ramyaramaswamy89@gmail.com";


SELECT * FROM ContactInfo, TasterProfile 
WHERE ContactInfo.ID = TasterProfile.ContactInfoId
  AND Email ="ramyaramaswamy89@gmail.com";