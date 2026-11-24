IF NOT EXISTS (
    SELECT name FROM sys.databases
    WHERE name = 'SmartCampusDB'
)
    CREATE DATABASE SmartCampusDB;
GO

USE SmartCampusDB;
GO

CREATE TABLE dbo.ServiceRequests (
    RequestId INT IDENTITY(1,1) PRIMARY KEY,
    StudentName NVARCHAR(100) NOT NULL,
    Department NVARCHAR(100) NOT NULL,
    ServiceType NVARCHAR(100) NOT NULL,
    Description NVARCHAR(MAX) NOT NULL,
    Priority NVARCHAR(50) DEFAULT 'Medium',
    Status NVARCHAR(50) DEFAULT 'Pending',
    RequestDate DATETIME DEFAULT GETDATE()
);
GO

INSERT INTO dbo.ServiceRequests
(StudentName, Department, ServiceType,
 Description, Priority, Status)
VALUES
('John Doe', 'Computer Science', 'Wi-Fi Access',
 'Cannot connect to campus Wi-Fi in Lab 3',
 'High', 'Pending'),

('Jane Smith', 'Electrical Engineering', 'Lab Equipment',
 'Oscilloscope calibration needed in Room 204',
 'Medium', 'In Progress'),

('Alex Turner', 'Mechanical Engineering', 'Maintenance',
 'Air conditioning repair in Workshop 1',
 'High', 'Completed');
GO
