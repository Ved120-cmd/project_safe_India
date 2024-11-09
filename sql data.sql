use ved1;
-- Create the table with appropriate columns and data types
CREATE TABLE Persons (
    srno INT PRIMARY KEY,
    name VARCHAR(50),
    gender VARCHAR(10),
    number VARCHAR(15),
    age INT,
    address VARCHAR(100),
    SNP1 VARCHAR(5),
    SNP2 VARCHAR(5),
    SNP3 VARCHAR(5),
    SNP4 VARCHAR(5),
    SNP5 VARCHAR(5)
);

-- Insert the data into the table
INSERT INTO Persons (srno, name, gender, number, age, address, SNP1, SNP2, SNP3, SNP4, SNP5) VALUES
(1, 'John Doe', 'Male', '1234567890', 34, '123 Maple St, Cityville', 'A/G', 'T/C', 'G/A', 'C/T', 'A/T'),
(2, 'Jane Smith', 'Female', '0987654321', 28, '456 Oak Ave, Townsville', 'C/T', 'G/A', 'T/G', 'A/G', 'C/A'),
(3, 'Alex Johnson', 'Male', '1122334455', 45, '789 Pine Rd, Villagetown', 'T/T', 'C/G', 'A/C', 'G/C', 'T/G'),
(4, 'Emily Davis', 'Female', '6677889900', 52, '101 Birch Blvd, Metropolis', 'G/T', 'A/T', 'C/A', 'T/A', 'G/C'),
(5, 'Michael Lee', 'Male', '4455667788', 39, '202 Cedar St, Hamlet', 'T/A', 'G/G', 'C/T', 'A/C', 'T/C'),
(6, 'Sarah Wilson', 'Female', '5544332211', 31, '303 Elm Ln, Riverside', 'C/C', 'A/G', 'T/A', 'G/T', 'C/G'),
(7, 'David Martinez', 'Male', '9988776655', 27, '404 Spruce Dr, Springfield', 'G/C', 'T/T', 'A/T', 'C/A', 'G/T'),
(8, 'Laura Peterson', 'Female', '1231231234', 41, '505 Fir St, Lakewood', 'A/C', 'G/T', 'T/C', 'A/A', 'C/T'),
(9, 'Daniel Brown', 'Male', '3213213210', 36, '606 Willow Rd, Hilltown', 'T/G', 'C/T', 'G/G', 'A/T', 'G/A'),
(10, 'Megan Thompson', 'Female', '1112223333', 29, '707 Aspen Blvd, Brookside', 'A/A', 'G/C', 'T/T', 'C/G', 'A/C'),
(11, 'James Anderson', 'Male', '7778889990', 43, '808 Cherry Ln, Valleyfield', 'C/G', 'A/A', 'T/G', 'G/A', 'T/T'),
(12, 'Olivia Turner', 'Female', '4445556666', 25, '909 Walnut St, Meadowland', 'T/A', 'C/A', 'G/C', 'T/G', 'C/T'),
(13, 'Henry Lopez', 'Male', '1239874560', 38, '1010 Maple Ct, Eastville', 'G/A', 'T/G', 'C/G', 'A/C', 'G/C'),
(14, 'Isabella Gonzalez', 'Female', '6543210987', 33, '1111 Hickory St, Westhaven', 'A/T', 'G/G', 'T/A', 'C/C', 'T/A'),
(15, 'Noah Wilson', 'Male', '3216549870', 40, '1212 Poplar Ave, Northfield', 'C/T', 'A/C', 'G/T', 'T/T', 'C/A'),
(16, 'Emma Mitchell', 'Female', '7891234567', 30, '1313 Beech Blvd, Southlake', 'G/G', 'C/C', 'A/T', 'G/T', 'A/G'),
(17, 'Liam Murphy', 'Male', '5556667778', 35, '1414 Oak Ct, Seaside', 'T/C', 'G/T', 'C/A', 'T/G', 'G/T'),
(18, 'Mia Robinson', 'Female', '4321123456', 27, '1515 Ash Dr, Riverbend', 'A/C', 'T/A', 'G/C', 'A/G', 'C/C'),
(19, 'Ethan Adams', 'Male', '8765432101', 29, '1616 Palm St, Greenfield', 'G/T', 'C/A', 'T/C', 'G/A', 'A/T'),
(20, 'Ava Martinez', 'Female', '1237894561', 26, '1717 Cypress Rd, Sunnyside', 'T/G', 'A/G', 'C/T', 'T/C', 'G/A');
select * from Persons;

