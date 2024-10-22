-- Create procedures using PL/SQL
CREATE OR REPLACE PROCEDURE InsertMedicine (
    p_Code INT,
    p_Name VARCHAR2,
    p_Price DECIMAL,
    p_Quantity INT
) AS
BEGIN
    INSERT INTO Medicine (Code, Name, Price, Quantity)
    VALUES (p_Code,p_name,p_price,p_quantity);
END;
/
-- Procedure to insert data into the Employee table
CREATE OR REPLACE PROCEDURE InsertEmployee (
    p_Eid INT,
    p_EName VARCHAR2,
    p_Sex VARCHAR2,
    p_EAddress VARCHAR2,
    p_Salary NUMBER,
    p_History CLOB,
    p_ContactNo VARCHAR2
) AS
BEGIN
    INSERT INTO Employee (Eid, EName, Sex, EAddress, Salary, History, ContactNo)
    VALUES (p_Eid, p_EName, p_Sex, p_EAddress, p_Salary, p_History, p_ContactNo);
    COMMIT;
END;
/
-- Procedure to insert data into the Rooms table
CREATE OR REPLACE PROCEDURE InsertRoom (
    p_RoomID INT,
    p_RoomType VARCHAR2,
    p_Period VARCHAR2
) AS
BEGIN
    INSERT INTO Rooms (RoomID, RoomType, Period)
    VALUES (p_RoomID, p_RoomType, p_Period);
    COMMIT;
END;
/
-- Procedure to insert data into the Patients table
CREATE OR REPLACE PROCEDURE InsertPatient (
    p_Pid INT,
    p_Name VARCHAR2,
    p_Sex VARCHAR2,
    p_Address VARCHAR2,
    p_DateAdmitted DATE,
    p_DateDischarged DATE,
    p_RoomID INT,
    p_Eid INT
) AS
BEGIN
    INSERT INTO Patients (Pid, Name, Sex, Address, DateAdmitted, DateDischarged, RoomID, Eid)
    VALUES (p_Pid, p_Name, p_Sex, p_Address, p_DateAdmitted, p_DateDischarged, p_RoomID, p_Eid);
    COMMIT;
END;
/
-- Procedure to insert data into the Record table
CREATE OR REPLACE PROCEDURE InsertRecord (
    p_RecordNo INT,
    p_Description CLOB,
    p_Pid INT,
    p_Appointment DATE
) AS
BEGIN
    INSERT INTO Record (RecordNo, Description, Pid, Appointment)
    VALUES (p_RecordNo, p_Description, p_Pid, p_Appointment);
    COMMIT;
END;
/
-- Procedure to insert data into the Bill table
CREATE OR REPLACE PROCEDURE InsertBill (
    p_BillID INT,
    p_Pid INT,
    p_Code INT,
    p_Quantity INT,
    p_BillDate DATE
) AS
BEGIN
    INSERT INTO Bill (BillID, Pid, Code, Quantity, BillDate)
    VALUES (p_BillID, p_Pid, p_Code, p_Quantity, p_BillDate);
    COMMIT;
END;
/
-- Procedure to insert data into the DoctorRelationship table
CREATE OR REPLACE PROCEDURE InsertDoctorRelationship (
    p_DoctorID INT,
    p_Type VARCHAR2,
    p_Eid INT
) AS
BEGIN
    INSERT INTO DoctorRelationship (DoctorID, Type, Eid)
    VALUES (p_DoctorID, p_Type, p_Eid);
    COMMIT;
END;
/

-- Procedure to insert data into the RoomGovernsNurse table
CREATE OR REPLACE PROCEDURE InsertRoomGovernsNurse (
    p_RoomID INT,
    p_NurseID INT
) AS
BEGIN
    INSERT INTO RoomGovernsNurse (RoomID, NurseID)
    VALUES (p_RoomID, p_NurseID);
    COMMIT;
END;
/

-- Procedure to insert data into the Attends table
CREATE OR REPLACE PROCEDURE InsertAttends (
    p_AppointmentID INT,
    p_Pid INT,
    p_DoctorID INT,
    p_AppointmentDate DATE
) AS
BEGIN
    INSERT INTO Attends (AppointmentID, Pid, DoctorID, AppointmentDate)
    VALUES (p_AppointmentID, p_Pid, p_DoctorID, p_AppointmentDate);
    COMMIT;
END;
/

-- Procedure to insert data into the EmployeeTitle table
CREATE OR REPLACE PROCEDURE InsertEmployeeTitle (
    p_TitleID INT,
    p_Title VARCHAR2
) AS
BEGIN
    INSERT INTO EmployeeTitle (TitleID, Title)
    VALUES (p_TitleID, p_Title);
    COMMIT;
END;
/

-- Procedure to insert data into the DoctorRelationship table
CREATE OR REPLACE PROCEDURE InsertDoctorRelationship (
    p_DoctorID INT,
    p_Type VARCHAR2,
    p_Eid INT
) AS
BEGIN
    INSERT INTO DoctorRelationship (DoctorID, Type, Eid)
    VALUES (p_DoctorID, p_Type, p_Eid);
    COMMIT;
END;
/

-- Procedure to insert data into the RoomGovernsNurse table
CREATE OR REPLACE PROCEDURE InsertRoomGovernsNurse (
    p_RoomID INT,
    p_NurseID INT
) AS
BEGIN
    INSERT INTO RoomGovernsNurse (RoomID, NurseID)
    VALUES (p_RoomID, p_NurseID);
    COMMIT;
END;
/

-- Procedure to insert data into the Attends table
CREATE OR REPLACE PROCEDURE InsertAttends (
    p_AppointmentID INT,
    p_Pid INT,
    p_DoctorID INT,
    p_AppointmentDate DATE
) AS
BEGIN
    INSERT INTO Attends (AppointmentID, Pid, DoctorID, AppointmentDate)
    VALUES (p_AppointmentID, p_Pid, p_DoctorID, p_AppointmentDate);
    COMMIT;
END;
/

-- Procedure to insert data into the EmployeeTitle table
CREATE OR REPLACE PROCEDURE InsertEmployeeTitle (
    p_TitleID INT,
    p_Title VARCHAR2
) AS
BEGIN
    INSERT INTO EmployeeTitle (TitleID, Title)
    VALUES (p_TitleID, p_Title);
    COMMIT;
END;
/

-- Procedure to insert data into the EmployeeIsA table
CREATE OR REPLACE PROCEDURE InsertEmployeeIsA (
    p_Eid INT,
    p_TitleID INT
) AS
BEGIN
    INSERT INTO EmployeeIsA (Eid, TitleID)
    VALUES (p_Eid, p_TitleID);
    COMMIT;
END;
/

-- Procedure to insert data into the ReceptionistMaintainsRecord table
CREATE OR REPLACE PROCEDURE InsertRMR (
    p_Eid INT,
    p_RecordNo INT
) AS
BEGIN
    INSERT INTO  ReceptionistMaintainsRecord(Eid, RecordNo)
    VALUES (p_Eid, p_RecordNo);
    COMMIT;
END;
/

