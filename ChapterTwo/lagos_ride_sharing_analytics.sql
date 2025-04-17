CREATE DATABASE lagos_ride_sharing_analytics;
USE lagos_ride_sharing_analytics;

CREATE TABLE drivers(
	DriverID INT NOT NULL AUTO_INCREMENT,
    DriverName VARCHAR(45) NOT NULL,
    Rating DECIMAL(1,1) NOT NULL,
    TotalRides INT NOT NULL,
    PRIMARY KEY( DriverID)
    );
    
CREATE TABLE riders(
	RiderID INT NOT NULL AUTO_INCREMENT,
    RiderName VARCHAR(45) NOT NULL,
    City VARCHAR(45) NOT NULL,
    PRIMARY KEY(RiderID))    
    