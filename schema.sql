CREATE TABLE Landlord (
    LandlordID INT AUTO_INCREMENT PRIMARY KEY,
    FullName VARCHAR(100),
    ContactNumber VARCHAR(20),
    Email VARCHAR(100),
    HomeAddress TEXT,
    TotalProperties INT,
    DateJoined DATE,
    ManagementFeePercentage DECIMAL(5, 2)
);

CREATE TABLE Tenant (
    TenantID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    Email VARCHAR(100),
    PhoneNumber VARCHAR(20),
    LeaseStartDate DATE,
    LeaseEndDate DATE,
    LandlordID INT,
    FOREIGN KEY (LandlordID) REFERENCES Landlord(LandlordID) ON DELETE CASCADE
);
