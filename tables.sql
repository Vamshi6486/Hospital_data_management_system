-- Create tables using PL/SQL
BEGIN
    -- Create Medicine table
    EXECUTE IMMEDIATE 'CREATE TABLE Medicine (
        Code INT PRIMARY KEY,
        Name VARCHAR(8),
        Price DECIMAL(5, 2),
        Quantity INT
    )';

    -- Create Employee table
    EXECUTE IMMEDIATE 'CREATE TABLE Employee (
        Eid INT PRIMARY KEY,
        EName VARCHAR(8),
        Sex VARCHAR(5),
        EAddress VARCHAR(7),
        Salary DECIMAL(5, 2),
        History CLOB,
        ContactNo VARCHAR(3)
    )';

    -- Create Rooms table
    EXECUTE IMMEDIATE 'CREATE TABLE Rooms (
        RoomID INT PRIMARY KEY,
        RoomType VARCHAR(7),
        Period VARCHAR(7)
    )';

    -- Create Patients table
    EXECUTE IMMEDIATE 'CREATE TABLE Patients (
        Pid INT PRIMARY KEY,
        Name VARCHAR(8),
        Sex VARCHAR(5),
        Address VARCHAR(8),
        DateAdmitted DATE,
        DateDischarged DATE,
        RoomID INT,
        Eid INT,
        FOREIGN KEY (RoomID) REFERENCES Rooms(RoomID),
        FOREIGN KEY (Eid) REFERENCES Employee(Eid)
    )';

    -- Create Record table
    EXECUTE IMMEDIATE 'CREATE TABLE Record (
        RecordNo INT PRIMARY KEY,
        Description CLOB,
        Pid INT,
        Appointment DATE,
        FOREIGN KEY (Pid) REFERENCES Patients(Pid)
    )';

    -- Create Bill table
    EXECUTE IMMEDIATE 'CREATE TABLE Bill (
        BillID INT PRIMARY KEY,
        Pid INT,
        Code INT,
        Quantity INT,
        BillDate DATE,
        FOREIGN KEY (Pid) REFERENCES Patients(Pid),
        FOREIGN KEY (Code) REFERENCES Medicine(Code)
    )';

    -- Create DoctorRelationship table
    EXECUTE IMMEDIATE 'CREATE TABLE DoctorRelationship (
        DoctorID INT PRIMARY KEY,
        Type VARCHAR(6),
        Eid INT,
        FOREIGN KEY (Eid) REFERENCES Employee(Eid)
    )';

    -- Create RoomGovernsNurse table
    EXECUTE IMMEDIATE 'CREATE TABLE RoomGovernsNurse (
        RoomID INT,
        NurseID INT,
        FOREIGN KEY (RoomID) REFERENCES Rooms(RoomID),
        FOREIGN KEY (NurseID) REFERENCES Employee(Eid)
    )';

    -- Create Attends table
    EXECUTE IMMEDIATE 'CREATE TABLE Attends (
        AppointmentID INT PRIMARY KEY,
        Pid INT,
        DoctorID INT,
        AppointmentDate DATE,
        FOREIGN KEY (Pid) REFERENCES Patients(Pid),
        FOREIGN KEY (DoctorID) REFERENCES Employee(Eid)
    )';

    -- Create EmployeeTitle table
    EXECUTE IMMEDIATE 'CREATE TABLE EmployeeTitle (
        TitleID INT PRIMARY KEY,
        Title VARCHAR(7)
    )';

    -- Create EmployeeIsA table
    EXECUTE IMMEDIATE 'CREATE TABLE EmployeeIsA (
        Eid INT,
        TitleID INT,
        FOREIGN KEY (Eid) REFERENCES Employee(Eid),
        FOREIGN KEY (TitleID) REFERENCES EmployeeTitle(TitleID)
    )';

    -- Create ReceptionistMaintainsRecord table
    EXECUTE IMMEDIATE 'CREATE TABLE ReceptionistMaintainsRecord (
        Eid INT,
        RecordNo INT,
        FOREIGN KEY (Eid) REFERENCES Employee(Eid),
        FOREIGN KEY (RecordNo) REFERENCES Record(RecordNo)
    )';

    COMMIT;
END;
/

