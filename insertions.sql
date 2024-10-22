-- Insert data into the EmployeeTitle table using the InsertEmployeeTitle procedure
BEGIN
    InsertEmployeeTitle(1, 'Title1');
    InsertEmployeeTitle(2, 'Title2');
    InsertEmployeeTitle(3, 'Title3');
END;
/


BEGIN
    -- Modify the values to match your data
    InsertDoctorRelationship(1, 'Visit', 1);
    InsertDoctorRelationship(2, 'Traine', 2);
    InsertDoctorRelationship(3, 'PMT', 3);
END;
/

-- Insert data into the RoomGovernsNurse table
BEGIN
    -- Modify the values to match your data
    InsertRoomGovernsNurse(1, 1);
    InsertRoomGovernsNurse(2, 2);
    InsertRoomGovernsNurse(3, 3);
END;
/

-- Insert data into the Attends table
BEGIN
    -- Modify the values to match your data
    InsertAttends(1, 1, 1,'01-JAN-23');
    InsertAttends(2, 2, 2,'09-JUN-23');
    InsertAttends(3, 3, 3, '22-JUN-22');
END;
/

-- Insert data into the EmployeeIsA table
BEGIN
    -- Modify the values to match your data
    InsertEmployeeIsA(1, 1);
    InsertEmployeeIsA(2, 2);
    InsertEmployeeIsA(3, 3);
END;
/

-- Insert data into the ReceptionistMaintainsRecord table
BEGIN
    -- Modify the values to match your data
    InsertRMR(1, 1);
    InsertRMR(2, 2);
    InsertRMR(3, 3);
END;
/


-- Insert data into the Medicine table
BEGIN
    InsertMedicine(1, 'M1', 10.99, 100);
    InsertMedicine(2, 'M2', 15.99, 50);
    InsertMedicine(3, 'M3', 8.99, 75);
END;
/

-- Insert data into the Employee table
BEGIN
	 InsertEmployee(1, 'John', 'M', 'Main', 50.0, 'y', '123');
    InsertEmployee(2, 'Jane', 'F', 'Elm', 87.0, 'r', '987');
    InsertEmployee(3, 'lah', 'M', 'Oak', 48.9, 'm', '555');
END;
/

-- Insert data into the Rooms table
BEGIN
    InsertRoom(1, 'Single', '24 Hr');
    InsertRoom(2, 'Double', '48 Hr');
    InsertRoom(3, 'Suite', '72 Hr');
END;
/

-- Insert data into the Patients table with the "23 Jun 21" date format
BEGIN
	InsertPatient(1, 'hars', 'Male', 'YUI','02-JAN-23','02-JAN-23', 1, 1);
   
    InsertPatient(2, 'op', 'F', 'Oak St','17-FEB-23','17-JUN-24', 2, 2);
    InsertPatient(3, 'sai', 'M', 'Elm St', '12-MAR-23','15-JUL-23', 3, 3);
END;
/

-- Insert data into the Record table with the "23 Jun 21" date format
BEGIN
    InsertRecord(1, 'r1', 1, '02-JAN-23');
    InsertRecord(2, 'r2', 2, '17-FEB-23');
    InsertRecord(3, 'r3', 3, '12-MAR-23');
END;
/

-- Insert data into the Bill table
BEGIN
    InsertBill(1, 1, 1, 2,'02-JAN-23');
    InsertBill(2, 2, 2, 3,'17-JUN-24');
    InsertBill(3, 3, 3, 1, '23-JUL-23');
END;
/