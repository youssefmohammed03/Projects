--SalaryRaise 
create procedure SalaryRaise(@Raise FLOAT , @ID int )
as
begin
Update Staff
set Salary = Salary + Salary*(@Raise/100)
where Staff.ID = @ID
select Fname,Lname,SSN, ID, Salary as "Updated Salary" from Staff
where ID =@ID 

end;



--SalaryDeduction
go
create procedure SalaryDeduction(@Deduction FLOAT , @ID int )
as
begin
Update Staff
set Salary = Salary - Salary*(@Deduction/100)
where Staff.ID = @ID
select Fname,Lname,SSN, ID, Salary as "Updated Salary" from Staff
where ID =@ID 
end; 


--AddAnimal
go
create procedure AddAnimal(@Animal_Name varchar(50),@Gender varchar(1),@Habitat varchar(50),@General_Name varchar(50),@Genus varchar(50),@Species varchar(50),@Status varchar(50),@Diet_Type varchar(50),@Date_of_Birth Date,@FamilyTree int = NULL,@Exhibit_no int)
as
begin
    insert into Animal (Animal_Name, Gender, Habitat, General_Name, Genus, Species, Status, Diet_Type, Date_of_Birth,Family_Tree, Exhibit_no)
    values (@Animal_Name, @Gender, @Habitat, @General_Name, @Genus, @Species, @Status, @Diet_Type, @Date_of_Birth,@FamilyTree, @Exhibit_no)
    select * from Animal
end;


--TransferAnimal
go
create procedure TransferAnimal(
    @Animal_ID int,
    @Exhibit_no int)
as
begin
    if (select count(*) from Animal where Exhibit_no = @Exhibit_no) < (select Capacity from Exhibit where Exhibit_no = @Exhibit_no)
    begin
        update Animal
        set Exhibit_no = @Exhibit_no
        where Animal_ID = @Animal_ID;
        select Animal_ID, Exhibit_no from Animal where Animal_ID = @Animal_ID;
    end
    else
    begin
        print 'The exhibit is at full capacity. The animal cannot be transferred.';
    end
end;


--Check if the input id is a manager
go
CREATE FUNCTION IsManager (@staff_id INT)
RETURNS BIT AS
BEGIN
    IF EXISTS (SELECT ID FROM Staff WHERE ID = @staff_id AND Manager_ID IS NULL)
        RETURN 1;
    
	RETURN 0;
END;

--Find a substitutional ClinicManager
go
CREATE FUNCTION FindClinicManager (@input_id INT)
RETURNS INT AS
BEGIN
    RETURN (SELECT TOP 1 ID FROM Staff WHERE Role = 'Clinic Manager' AND dbo.IsManager(ID) = 1 AND ID <> @input_id);
END;

--Find a substitutional ShopManager
go
CREATE FUNCTION FindShopManager (@input_id INT)
RETURNS INT AS
BEGIN
    RETURN (SELECT TOP 1 ID FROM Staff WHERE Role = 'Shop Manager' AND dbo.IsManager(ID) = 1 AND ID <> @input_id);
END;

--Find a substitutional ExhibitAdvisor
go
CREATE FUNCTION FindExhibitAdvisor (@input_id INT)
RETURNS INT AS
BEGIN
    RETURN (SELECT TOP 1 ID FROM Staff WHERE Role = 'Exhibit Advisor' AND dbo.IsManager(ID) = 1 AND ID <> @input_id);
END;

--Delete an employee
go
CREATE PROCEDURE FireStaff @input_id INT AS
BEGIN
    IF dbo.IsManager(@input_id) = 0
    BEGIN
		DELETE FROM Staff_Phone WHERE Staff_ID = @input_id;
        DELETE FROM Staff WHERE ID = @input_id;
    END
    ELSE
    BEGIN
        DECLARE @role VARCHAR(50), @new_manager_id INT;

        SELECT @role = Role FROM Staff WHERE ID = @input_id;

        IF @role = 'Exhibit Advisor'
            SET @new_manager_id = dbo.FindExhibitAdvisor(@input_id);
        ELSE IF @role = 'Clinic Manager'
            SET @new_manager_id = dbo.FindClinicManager(@input_id);
        ELSE IF @role = 'Shop Manager'
            SET @new_manager_id = dbo.FindShopManager(@input_id);

        IF @new_manager_id IS NULL
        BEGIN
            RAISERROR('Cannot delete the manager because there is no replacement.', 16, 1);
            RETURN;
        END

		UPDATE Staff SET Manager_ID = @new_manager_id WHERE Manager_ID = @input_id;

		IF @role = 'Exhibit Advisor'
            UPDATE Exhibit SET EManager_Id = @new_manager_id WHERE EManager_Id = @input_id;
        ELSE IF @role = 'Clinic Manager'
            UPDATE Clinic SET CManager_Id = @new_manager_id WHERE CManager_Id = @input_id;
        ELSE IF @role = 'Shop Manager'
            UPDATE Shop SET SManager_Id = @new_manager_id WHERE SManager_Id = @input_id;

		DELETE FROM Staff_Phone WHERE Staff_ID = @input_id;
        DELETE FROM Staff WHERE ID = @input_id;
    END
	select * from staff;
END;

--Add Staff
go
CREATE PROCEDURE HireStaff 
    @Manager_ID INT, 
    @Clinic_NO INT, 
    @Exhibit_NO INT, 
    @Shop_NO INT, 
    @SSN VARCHAR(10), 
    @Fname VARCHAR(50), 
    @Mname VARCHAR(50), 
    @Lname VARCHAR(50), 
    @Address VARCHAR(100), 
    @Email VARCHAR(100), 
    @Salary DECIMAL(10, 2), 
    @Gender CHAR(1), 
    @Role VARCHAR(50), 
    @Joining_Date DATE, 
    @Birth_Date DATE, 
    @Working_Hours VARCHAR(50)
AS
BEGIN
    INSERT INTO Staff 
    (Manager_ID, Clinic_NO, Exhibit_NO, Shop_NO, SSN, Fname, Mname, Lname, Address, Email, Salary, Gender, Role, Joining_Date, Birth_Date, Working_Hours)
    VALUES 
    (@Manager_ID, @Clinic_NO, @Exhibit_NO, @Shop_NO, @SSN, @Fname, @Mname, @Lname, @Address, @Email, @Salary, @Gender, @Role, @Joining_Date, @Birth_Date, @Working_Hours);
    SELECT * FROM Staff;
END;

--Promote staff
go
CREATE PROCEDURE PromoteStaff @staff_id INT AS
BEGIN
    DECLARE @current_role VARCHAR(50);
    SELECT @current_role = Role FROM Staff WHERE ID = @staff_id;

    IF @current_role = 'Janitor'
        UPDATE Staff SET Role = 'Security Guard' WHERE ID = @staff_id;
    ELSE IF @current_role = 'Security Guard'
        UPDATE Staff SET Role = 'Exhibit Advisor', Manager_ID = NULL WHERE ID = @staff_id;
    ELSE IF @current_role = 'Shop Attendant'
        UPDATE Staff SET Role = 'Shop Manager', Manager_ID = NULL WHERE ID = @staff_id;
    ELSE IF @current_role = 'Zookeeper'
        UPDATE Staff SET Role = 'Exhibit Advisor', Manager_ID = NULL WHERE ID = @staff_id;
    ELSE IF @current_role = 'Veterinarian'
        UPDATE Staff SET Role = 'Clinic Manager', Manager_ID = NULL WHERE ID = @staff_id;
	ELSE IF @current_role = 'Cafeteria Staff'
        UPDATE Staff SET Role = 'Shop Manager', Manager_ID = NULL WHERE ID = @staff_id;

    SELECT * FROM Staff;
END;

--Get staff role
go
CREATE FUNCTION GetStaffRole (@staff_id INT)
RETURNS VARCHAR(50) AS
BEGIN
    DECLARE @role VARCHAR(50);
    SELECT @role = Role FROM Staff WHERE ID = @staff_id;
    RETURN @role;
END;

--Add clinic
go
CREATE PROCEDURE AddClinic 
    @Location VARCHAR(50), 
    @Capacity INT, 
    @Operating_Hours VARCHAR(30), 
    @CManager_Id INT
AS
BEGIN
    INSERT INTO Clinic (Location, Capacity, Operating_Hours, CManager_Id) 
    VALUES (@Location, @Capacity, @Operating_Hours, @CManager_Id);
    SELECT * FROM Clinic;
END;

--Add Shop
go 
CREATE PROCEDURE AddShop
    @Shop_Name varchar(50),
    @Location varchar(50),
    @Product_Category varchar(50),
    @SManager_Id int
AS
begin 
    -- Insert into Shop table
    INSERT INTO Shop (Shop_Name, Location, Product_Category, SManager_Id)
    VALUES (@Shop_Name, @Location, @Product_Category, @SManager_Id)
    Select * from Shop
end





--Add Sponsor
 go 
 CREATE PROCEDURE AddSponsor
    @Sponsor_Name varchar(50),
    @Email varchar(50),
    @Start_Date Date,
    @End_Date Date,
    @Shop_Name varchar(50) = NULL,
    @Location varchar(50) = NULL,
    @Product_Category varchar(50) = NULL,
    @SManager_Id int = NULL,
    @Phone_Number varchar(13)
AS
BEGIN
    DECLARE @shop_no int = NULL

    IF @Shop_Name IS NOT NULL AND @Location IS NOT NULL AND @Product_Category IS NOT NULL AND @SManager_Id IS NOT NULL
    BEGIN
        EXEC AddShop @Shop_Name, @Location, @Product_Category, @SManager_Id

        
        SET @shop_no = (SELECT TOP 1 shop_no FROM Shop WHERE Shop_Name = @Shop_Name AND Location = @Location AND Product_Category = @Product_Category AND SManager_Id = @SManager_Id ORDER BY shop_no DESC)
    END

    INSERT INTO Sponsor (Sponsor_Name, Email, Start_Date, End_Date, shop_no)
    VALUES (@Sponsor_Name, @Email, @Start_Date, @End_Date, @shop_no)

    INSERT INTO Sponsor_Phone (Sponsor_ID, Phone_Number)
    VALUES ((SELECT TOP 1 Sponsor_ID FROM Sponsor WHERE Sponsor_Name = @Sponsor_Name AND Email = @Email AND shop_no = @shop_no ORDER BY Sponsor_ID DESC), @Phone_Number)
END
--Create Exhibit
go
CREATE PROCEDURE CreateExhibit
    @Exhibit_Name varchar(50),
    @Capacity int,
    @Theme varchar(50),
    @Location varchar(50),
    @Size varchar(50),
    @Security_Level varchar(50),
    @EManager_Id int
AS
BEGIN
    INSERT INTO Exhibit (Exhibit_Name, Capacity, Theme, Location, Size, Security_Level, EManager_Id)
    VALUES (@Exhibit_Name, @Capacity, @Theme, @Location, @Size, @Security_Level, @EManager_Id)
    SELECT * FROM Exhibit
END

--Order Animal Food
go
CREATE PROCEDURE OrderAnimalFood
    @Company_Name varchar(50),
    @Email varchar(50),
    @Phone_No varchar(13),
    @Food_Type varchar(50),
    @Exhibit_No int = NULL ,
    @Quantity VARCHAR = '100kg'
AS
BEGIN

    INSERT INTO Supplier (Company_Name, Email)
    VALUES (@Company_Name, @Email)

    INSERT INTO Supplier_Phone (Company_Name, Phone_No)
    VALUES (@Company_Name, @Phone_No)

    INSERT INTO Supplies (company_name, exhibit_no, Food_Type, Quantity)
    VALUES (@Company_Name, @Exhibit_No, @Food_Type, @Quantity)
    
    INSERT INTO Food (type)
    VALUES (@Food_Type)

    SELECT * FROM Supplies
END

--Order Equipment
go
CREATE PROCEDURE OrderEquipment
    @Company_Name varchar(50),
    @Email varchar(50),
    @Phone_No varchar(13),
    @Clinic_No int = NULL,
    @Quantity int = 1
AS
BEGIN
    INSERT INTO Supplier (Company_Name, Email)
    VALUES (@Company_Name, @Email)

    INSERT INTO Supplier_Phone (Company_Name, Phone_No)
    VALUES (@Company_Name, @Phone_No)

    INSERT INTO Equipment DEFAULT VALUES

    DECLARE @Equipment_No int = @@IDENTITY

    INSERT INTO Provides (company_name, clinic_no, equipment_no, Quantity)
    VALUES (@Company_Name, @Clinic_No, @Equipment_No, @Quantity)

    SELECT * FROM Provides
END
--Get Visitor's Donations
go
CREATE PROCEDURE GetVisitorDonations
    @Visitor_Ticket int
AS
BEGIN
    SELECT * FROM Donation WHERE Visitor_Ticket = @Visitor_Ticket
END

--Get Exhibit's Animals
go
CREATE PROCEDURE GetExhibitAnimals
    @Exhibit_No int
AS
BEGIN
    SELECT * FROM Animal WHERE Exhibit_no = @Exhibit_No
END


--Diagnose Animal 
go
CREATE PROCEDURE DiagnoseAnimal
    @Animal_Id int,
    @Status varchar(255),
    @Diagnosis varchar(255),
    @Date_Diagnosed date,
    @Event_Type varchar(255),
    @Clinic_No int
AS
BEGIN

    UPDATE Animal
    SET Status = @Status
    WHERE Animal_Id = @Animal_Id

    INSERT INTO Medical_History (Animal_Id, Diagnosis, Diagnosis_Date)
    VALUES (@Animal_Id, @Diagnosis, @Date_Diagnosed)


    INSERT INTO Goes_To (animal_id, clinic_no, Event_Type, Event_Date)
    VALUES (@Animal_Id, @Clinic_No, @Event_Type, @Date_Diagnosed)
END

--Treat Animal 
go
CREATE PROCEDURE TreatAnimal
    @Animal_Id int,
    @Diagnosis varchar(255),
    @Treatment_Date date,
    @Clinic_No int,
    @Event_Type varchar(255)
AS
BEGIN
    UPDATE Animal
    SET Status = 'Healthy'
    WHERE Animal_Id = @Animal_Id


    UPDATE Medical_History
    SET Treatment_Date = @Treatment_Date
    WHERE Animal_Id = @Animal_Id AND Diagnosis = @Diagnosis

    INSERT INTO Goes_To (animal_id, clinic_no, Event_Type, Event_Date)
    VALUES (@Animal_Id, @Clinic_No, @Event_Type, @Treatment_Date)
END

--Transfer Staff
go
CREATE PROCEDURE TransferStaff 
    @staff_id INT, 
    @new_location_no INT
AS
BEGIN
    DECLARE @is_manager BIT, @old_location_no INT, @substitutional_manager_id INT, @new_location_type VARCHAR(50);
    SELECT @is_manager = dbo.IsManager(@staff_id);

	SELECT 
            @old_location_no = Clinic_No, @new_location_type = 'Clinic' 
        FROM Staff
        WHERE ID = @staff_id AND Clinic_No IS NOT NULL;
		SET @substitutional_manager_id = dbo.FindClinicManager(@staff_id);

        IF @old_location_no IS NULL
        BEGIN
            SELECT 
                @old_location_no = Exhibit_No, @new_location_type = 'Exhibit' 
            FROM Staff
            WHERE ID = @staff_id AND Exhibit_No IS NOT NULL;
			SET @substitutional_manager_id = dbo.FindExhibitAdvisor(@staff_id)
        END

        IF @old_location_no IS NULL
        BEGIN
            SELECT 
                @old_location_no = Shop_No, @new_location_type = 'Shop' 
            FROM Staff
            WHERE ID = @staff_id AND Shop_No IS NOT NULL;
			SET @substitutional_manager_id = dbo.FindShopManager(@staff_id);
        END

    IF @is_manager = 1
    BEGIN
        UPDATE Staff 
        SET Manager_Id = @substitutional_manager_id
        WHERE Manager_Id = @staff_id;

        IF @new_location_type = 'Clinic'
        BEGIN
            UPDATE Staff SET Clinic_No = @new_location_no, Exhibit_No = NULL, Shop_No = NULL WHERE ID = @staff_id;
			UPDATE Clinic SET CManager_Id = @substitutional_manager_id WHERE Clinic_No = @old_location_no;
        END
        ELSE IF @new_location_type = 'Exhibit'
        BEGIN
            UPDATE Staff SET Exhibit_No = @new_location_no, Clinic_No = NULL, Shop_No = NULL WHERE ID = @staff_id;
			UPDATE Exhibit SET EManager_Id = @substitutional_manager_id WHERE Exhibit_No = @old_location_no;
        END
        ELSE IF @new_location_type = 'Shop'
        BEGIN
            UPDATE Staff SET Shop_No = @new_location_no, Clinic_No = NULL, Exhibit_No = NULL WHERE ID = @staff_id;
			UPDATE Shop SET SManager_Id = @substitutional_manager_id WHERE Shop_No = @old_location_no;
        END
        SELECT * FROM Staff;
    END
    ELSE
    BEGIN

		IF @new_location_type = 'Clinic'
        BEGIN
			UPDATE Staff SET Clinic_No = @new_location_no, Exhibit_No = NULL, Shop_No = NULL, Manager_ID = (SELECT CManager_Id FROM Clinic WHERE Clinic_No = @new_location_no) WHERE ID = @staff_id;
        END
        ELSE IF @new_location_type = 'Exhibit'
        BEGIN
			UPDATE Staff SET Exhibit_No = @new_location_no, Clinic_No = NULL, Shop_No = NULL, Manager_ID = (SELECT EManager_Id FROM Exhibit WHERE Exhibit_No = @new_location_no) WHERE ID = @staff_id;
        END
        ELSE IF @new_location_type = 'Shop'
        BEGIN
			UPDATE Staff SET Shop_No = @new_location_no, Clinic_No = NULL, Exhibit_No = NULL, Manager_ID = (SELECT SManager_Id FROM Shop WHERE Shop_No = @new_location_no) WHERE ID = @staff_id;
        END
        SELECT * FROM Staff;	
    END
END;

--Destroy Exhibit
go 
CREATE PROCEDURE DestroyExhibit
    @old_exhibit_id INT,
    @new_exhibit_id INT
AS
BEGIN
    DECLARE @old_count INT, @new_count INT, @new_capacity INT;

    SELECT @old_count = COUNT(*) FROM Animal WHERE Exhibit_no = @old_exhibit_id;
    SELECT @new_count = COUNT(*) FROM Animal WHERE Exhibit_no = @new_exhibit_id;
    SELECT @new_capacity = Capacity FROM Exhibit WHERE Exhibit_no = @new_exhibit_id;

    IF (@old_count + @new_count) > @new_capacity
    BEGIN
        RAISERROR('The new exhibit does not have enough capacity for all animals.', 16, 1);
        RETURN;
    END

    UPDATE Animal SET Exhibit_no = @new_exhibit_id WHERE Exhibit_no = @old_exhibit_id;
    UPDATE Supplies SET Exhibit_no = @new_exhibit_id WHERE Exhibit_no = @old_exhibit_id;
    DELETE FROM Exhibit WHERE Exhibit_no = @old_exhibit_id;
    SELECT * FROM Animal WHERE Exhibit_no = @new_exhibit_id;
    Update Staff SET Exhibit_NO = @new_exhibit_id WHERE Exhibit_NO = @old_exhibit_id;
END;

--Delete a clinic
go
CREATE PROCEDURE CloseClinic @ClinicNo INT
AS
BEGIN
    DECLARE @NewClinicNo INT

    SELECT TOP 1 @NewClinicNo = Clinic_No FROM Clinic WHERE Clinic_No <> @ClinicNo

    IF @NewClinicNo IS NOT NULL
    BEGIN
        UPDATE Staff SET Clinic_NO = @NewClinicNo WHERE Clinic_NO = @ClinicNo

		DELETE FROM Goes_To WHERE clinic_no = @ClinicNo
        DELETE FROM Clinic WHERE Clinic_No = @ClinicNo
    END
    Select * from Clinic
END

--Add clinic Event
go
CREATE PROCEDURE AddClinicEvent @AnimalId INT, @ClinicId INT, @EventType VARCHAR(50), @EventDate DATE
AS
BEGIN
    INSERT INTO Goes_To (animal_id, clinic_no, Event_Type, Event_Date)
    VALUES (@AnimalId, @ClinicId, @EventType, @EventDate)
    SELECT * FROM Goes_To
END

--Remove Shop
GO
CREATE PROCEDURE RemoveShop @ShopNo INT
AS
BEGIN
    DECLARE @NewShopNo INT

    SELECT TOP 1 @NewShopNo = Shop_No FROM Shop WHERE Shop_No <> @ShopNo

    IF @NewShopNo IS NOT NULL
    BEGIN
        UPDATE Staff SET Shop_NO = @NewShopNo WHERE Shop_NO = @ShopNo

        DELETE FROM Sponsor WHERE shop_no = @ShopNo
        DELETE FROM transacts WHERE shop_no = @ShopNo
        DELETE FROM Shop WHERE Shop_No = @ShopNo

    END
    Select * from Shop
END

--Cancel Sponsor
GO
CREATE PROCEDURE CancelSponsor @SponsorId INT
AS
BEGIN
    DELETE FROM Sponsor_Area_Acquired WHERE sponsor_id = @SponsorId
    DELETE FROM Sponsor_Phone WHERE Sponsor_ID = @SponsorId
    DELETE FROM Sponsor WHERE Sponsor_ID = @SponsorId
END


--Release Animal
GO
create procedure ReleaseAnimal(@Animal_Id int)
as
begin
    delete from Medical_History where Animal_Id = @Animal_Id
    delete from Goes_To where animal_id = @Animal_Id
    delete from Animal where Animal_Id = @Animal_Id
    select * from Animal
end

--Get Total Donations in Location
GO
create procedure GetTotalDonationsInLocation(@Location varchar(50))
AS
BEGIN
    SELECT SUM(Amount) AS TotalDonations
    FROM Donation
    WHERE Location = @Location
END


--Get Shop Revenue
GO
create procedure GetShopRevenue(@ShopNo int)
AS
BEGIN
    SELECT SUM(Transaction_Value) AS TotalRevenue
    FROM transacts
    WHERE shop_no = @ShopNo
END

--GetAnimalsinFamilyTree
go
CREATE PROCEDURE GetAnimalsinFamilyTree AS
BEGIN
    SELECT 
        Family_Tree, 
        Animal_Name,
        General_Name,
        Genus,
        Species
    FROM
        Animal
    WHERE 
        Family_Tree IS NOT NULL
    ORDER BY 
        Family_Tree;
END;


go
CREATE VIEW ExhibitAnimalCount AS
SELECT 
    Exhibit_no, 
    COUNT(Animal_Id) AS NumberOfAnimals
FROM 
    Animal
GROUP BY 
    Exhibit_no;

go
CREATE VIEW GetTotalShopRevenue AS
SELECT 
    shop_no, 
    SUM(Transaction_Value) AS TotalRevenue
FROM 
    transacts
GROUP BY 
    shop_no;

--GetManagers View
go
CREATE VIEW GetManagers AS
SELECT 
    ID, 
    Fname, 
    Lname, 
    Role,
    salary
FROM
    Staff
WHERE 
    Manager_ID IS NULL;

--GetRoleCount
go
CREATE VIEW GetRoleCount AS
SELECT 
    Role, 
    COUNT(ID) AS NumberOfEmployees
FROM    
    Staff
GROUP BY
    Role;

