# HOSPITAL_MANAGEMENT_SYSTEM_PROJECT 


Create Database Hospital_management;
Use Hospital_management;


#1 Physician Table

Create table Physician(
EmployeeId INT PRIMARY KEY,
Name VARCHAR(100) NOT NULL,
Position VARCHAR(100) NOT NULL
);

Insert into Physician values 
(1,'Dr.John Dorian','Staff Internist'),
(2,'Dr.Elliot Reid','Attending Physician'),
(3,'Dr.Christopher Turk','Surgical Attending Physician'),
(4,'Dr.Percival Cox','Senior Attending Physician'),
(5,'Dr.Bob Kelso','Head Chief of pulmonology'),
(6,'Dr.Todd Quinlan','Surgical Attending Physician'),
(7,'Dr.John Wen','Surgical Attending Physician'),
(8,'Dr.Keith Dudemeister','Resident'),
(9,'Dr.Molly Clock','Attending Psychiatrist'),
(10,'Dr.Imani Harper','Senior Attending Nephrologist'),                        
(11,'Dr.Berkley McKenzie','Resident'),               
(12,'Dr.Scott Vaughan','Senior Attending Gynecologist'),
(13,'Dr.Nancy James','Cardiologist'),
(14,'Dr.Jaxson Khan','Assistant Intensivist'),
(15,'Dr.Mabel Leal','Senior ENT Surgeon'),
(16,'Dr.Cedric Kelley','Junior Resident'),
(17,'Dr.Rosalie Vaughn','Assistant Orthopedic Surgeon'),
(18,'Dr.Remy Cook','Head chief of Gastroenterology'),
(19,'Dr.Aaliyah Craig','Assistant Neuro Surgeon'),
(20,'Dr.Odin Banks','Junior Intensivist'),
(21,'Dr.Cali Vazquez','Head Chief of Orthopedics'),
(22,'Dr.Jesse Craig','Head chief of neonatal'),
(23,'Dr.Brynn Harrison','Staff Internist'),
(24,'Dr.Gavin Curtis','Assistant Physiotherapist'),
(25,'Dr.Alexis Estes','Senior Intensivist'),
(26,'Dr.Estella Keller','Assistant Gastro Surgeon'),
(27,'Dr.Nico Galvan','Head chief of physiotherapy'),
(28,'Dr.Dallas Gutierrez','Senior attending Urologist'),
(29,'Dr.Luca Flowers','Intensivist'),
(30,'Dr.Ariya Bradley','Senior Attending Neurologist'),
(31,'Dr.Richard Mitchell','Senior Resident'),
(32,'Dr.Willow Farmer','Junior Resident'),
(33,'Dr.Jamison Clayton','Assistant neonatologist'),
(34,'Dr.Saige Juarez','Senior Resident'),
(35,'Dr.Robert Suarez','Head Chief of Urology');


#2 Department Table

Create table Department(
DepartmentId INT PRIMARY KEY ,
Dept_name VARCHAR(50) NOT NULL,
Head INT NOT NULL,
Foreign Key(Head) references Physician(EmployeeId)
);

Insert into Department values
(1,'General Medicine',4),
(2,'Surgery',7),
(3,'Psychiatry',9),
(4,'Cardiology',13),
(5,'Nephrology',10),
(6,'Urology',35),
(7,'Neurology',30),
(8,'Physiotherapy',27),
(9,'ENT',15),
(10,'Pulmonology',5),
(11,'Gastroenterology',18),
(12,'Gynecology',12),
(13,'Neonatal',22),
(14,'Critical care',25),
(15,'Orthopedics',21);


#3 Affiliated_with Table

Create table Affiliated_with(
PhysicianId INT NOT NULL,
DepartmentId INT NOT NULL,
Primary_affiliation VARCHAR(1) NOT NULL,
Foreign Key(PhysicianId) references Physician(EmployeeId),
Foreign Key(DepartmentId) references Department(DepartmentId)
);

Insert into Affiliated_with values 
(1,1,'t'),
(2,1,'t'),
(3,1,'f'),
(3,2,'t'),
(4,1,'t'),
(5,10,'t'),
(6,2,'t'),
(7,1,'f'),
(7,2,'t'),
(8,1,'t'),
(9,3,'t'),
(10,5,'t'),
(11,4,'f'),
(12,12,'t'),
(13,4,'t'),
(14,14,'f'),
(15,9,'t'),
(16,10,'f'),
(17,15,'t'),
(18,11,'t'),
(19,7,'t'),
(20,14,'f'),
(21,15,'t'),
(22,13,'t'),
(23,14,'f'),
(24,8,'t'),
(25,14,'t'),
(26,11,'f'),
(27,8,'t'),
(28,6,'t'),
(29,14,'t'),
(30,7,'t'),
(31,5,'f'),
(32,4,'f'),
(33,13,'t'),
(34,11,'t'),
(35,6,'t');


#4 Nurse Table

Create table Nurse(
NurseId INT NOT NULL,
Name VARCHAR(50) NOT NULL,
Position VARCHAR(50) NOT NULL,
Registered VARCHAR(10) NOT NULL
);

Insert into Nurse values 
(1,'Carla Espinosa','Head Nurse','Yes'),
(2,'Laverne Roberts','Nurse','Yes'),
(3,'Paul Flowers','Nurse','No'),
(4,'Anna Rubel','Team Leader','No'),
(5,'Teresa Buttler','Sister Ir','Yes'),
(6,'Katthie Mathews','Nurse','Yes'),
(7,'Rose Hughes','Head Nurse','Yes'),
(8,'Carolina Gomez','Nurse','No'),
(9,'Danna Martinez','Sister IR','No'),
(10,'Olive Peterson','Head Nurse','Yes'),
(11,'Amelia Murray','Team Leader','Yes'),
(12,'Helena Martinez','Nurse','No'),
(13,'Olivia Patterson','NS Supdt','Yes'),
(14,'Diana Bell','Nurse','No'),
(15,'Bella Simmons','Nurse','Yes'),
(16,'Jaqueline Olsen','Nurse','No'),
(17,'Cali McBride','Team Leader','Yes'),
(18,'Madilynn Velazquez','Nurse','No'),
(19,'Kelsie Avery','Sister Ir','Yes'),
(20,'Lailah McIntosh','Nurse','Yes'),
(21,'Jamiya Villarreal','Head Nurse','Yes'),
(22,'Harmony Ramsey','Nurse','No'),
(23,'Kiley Nguyen','Sister Ir','Yes'),
(24,'Mercedec Nguyen','Team Leader','Yes'),
(25,'Averie Kennedy','Nurse','No'),
(26,'Kinley Fernandez','Nurse','No'),
(27,'Nia Knox','Head Nurse','No'),
(28,'Raven Singleton','Nurse','Yes'),
(29,'Stephanie Collins','Team Leader','Yes'),
(30,'Gisselle Gray','Nurse','No'),
(31,'Liliana Pace','Head Nurse','Yes'),
(32,'Adelaide Jimenez','Nurse','Yes'),
(33,'Aryana Harding','Sister Ir','No');


#5 Patient Table

Create table Patient(
PatientId INT PRIMARY KEY,
Name VARCHAR(50) NOT NULL,
Surname VARCHAR(50) NOT NULL,
Address VARCHAR(100) NOT NULL,
Gender VARCHAR(10) NOT NULL,
Phone VARCHAR(100) NOT NULL,
Primary_check INT NOT NULL,
Foreign key (Primary_check) references Physician(EmployeeId)
);


Insert into Patient values 
(01,'John','Smith','42 Foobar Lane','Male','555-0256-896',2),
(02,'Grace','Ritchie','37 Snafu Drive','Female','555-0512-657',2),
(03,'Remo','Xavier','101 Omgbbq Street','Male','555-1204-345',9),
(04,'Dennis','Doe','1100 Foobaz Avenue','Male','555-2048-345',17),
(05,'John','Smith','123 Main St','Male','555-123-4567',24),
(06,'Emily','Johnson','56 Elm St','Female','555-234-5678',7),
(07,'Michael','Williams','789 Oak St','Male','555-345-6789',13),
(08,'Sarah','Brown','101 Pine St','Female','555-456-7890',25),
(09,'David','Jones','234 Maple St', 'Male','555-567-8901',28),
(10,'Jessica','Davis','567 Cedar St','Female','555-678-9012',19),
(11,'Christopher','Wilson','890 Birch St','Male','555-789-0123',5),
(12,'Ashley','Taylor','111 Walnut St','Female','555-890-1234',33),
(13,'Matthew','Martinez','222 Cherry St','Male','555-901-2345',3),
(14,'Samantha','Anderson','333 Spruce St','Female','555-012-3456',18),
(15,'Daniel','Garcia','444 Sycamore St','Male', '555-123-4567',6),
(16,'Amanda','Hernandez','555 Pineapple St','Female','555-234-5678',19),
(17,'James','Lopez', '666 Banana St','Male','555-345-6789',15),
(18,'Jennifer','Gonzalez','777 Orange St','Female','555-456-7890',26),
(19,'Joshua','Perez','888 Grape St','Male','555-567-8901',6),
(20,'Brittany','Torres','999 Lemon St','Female','555-678-9012',20),
(21,'Ryan', 'Flores','121 Apple St','Male','555-789-0123',28),
(22,'Lauren','Ramirez','232 Pear St','Female','555-890-1234',6),
(23,'Andrew','Cruz','343 Peach St','Male','555-901-2345',25),
(24,'Nicole','Scott','454 Plum St','Female','555-012-3456',19),
(25,'Justin','Morales','565 Watermelon St','Male', '555-123-4567',24),
(26,'Stephanie','Reed','676 Blueberry St','Female', '555-234-5678',28),
(27,'Brandon','Nguyen','787 Raspberry St','Male','555-345-6789',27),
(28,'Megan','Hill','898 Kiwi St', 'Female','555-456-7890',6),
(29,'Austin','Green','909 Pine St','Male','555-567-8901',33),
(30,'Kayla','Adams','343 Cherry St','Female','555-678-9012',10),
(31,'Tyler','Baker','454 Oak St', 'Male', '555-789-0123',5),
(32,'Haley','Campbell','565 Elm St','Female','555-890-1234',18),
(33,'Dylan','Ward','676 Maple St','Male','555-901-2345',2),
(34,'Victoria','Cox','787 Cedar St', 'Female', '555-012-3456',13),
(35,'Ethan','Rivera','898 Birch St','Male','555-123-4567',20),
(36,'Hannah','Long','909 Walnut St','Female','555-234-5678',21),
(37,'Noah','Diaz','343 Pine St', 'Male','555-345-6789',9),
(38,'Olivia','King','454 Cherry St', 'Female','555-456-7890',30),
(39,'Mason','Powell','565 Oak St','Male','555-567-8901',15);


#6 Patient Diagnosis Table

Create table Patient_Diagnosis(
Diagnosis VARCHAR(100) NOT NULL,
Prescription VARCHAR(100) NOT NULL,
PatientId INT NOT NULL,
PhysicianId INT NOT NULL,
Foreign key(PatientId) references Patient(PatientId),
Foreign key(PhysicianId) references Physician(EmployeeId)
);

Insert into Patient_Diagnosis values
('Hypertension','Lisinopril',1,2),
('Arthritis','Naproxen & Aspirin',4,17), 
('Anxiety Disorder','Fluoxetine',3,9),     
('Muscular Dystrophy','Corticosteroids',5,24),                            
('Asthma','Albuterol',2,2),        
('IgA Nephropathy','Budesonide',30,10),     
('Chronic Pain','Tramadol',6,7),    
('Acoustic neuroma','Radiation therapy',7,13),     
('Septic Shock','Corticosteroids:Hydrocortisone',8,25),   
('Kidney Stones','Ibuprofen, Acetaminophen',9,28),     
('Parkinsons Disease,Pramipexole','Ropinirole',10,19),  
('Chronic Obstructive Pulmonary Disease (COPD)','Fluticasone,Budesonide',11,5), 
('Neonatal Jaundice','Phototherapy',12,33),  
('Chronic Pain','Tramadol',13,3),       
('Gallstones','Cholecystectomy',14,18),        
('Type 1 Diabetes','Insulin',15,6),                                  
('Migraine','Triptans',16,19),      
('Tonsillitis','Penicillin VK',17,15),         
('Inflammatory Bowel Disease','Mesalamine',18,26),       
('Coronary Artery Disease','Aspirin',19,6),     
('Chronic Obstructive Pulmonary Disease (COPD)','Tiotropium',20,20),   
('Urinary Tract Infection (UTI)','Nitrofurantoin',21,28),    
('Attention Deficit Disorder','Dextroamphetamine',22,6),      
('Traumatic Brain Injury (TBI)','Propofol,Midazolam',23,25),             
('Neuropathic Pain','Amitriptyline',24,19),                  
('Chronic Obstructive Pulmonary Disease','Breathing exercises',25,24),      
('Overactive Bladder','Oxybutynin',26,28),             
('Sports Injuries','muscle relaxants',27,27),                
('Psoriasis','Methotrexate',28,6),                            
('Respiratory Distress Syndrome','Beractant',29,33),
('Coronavirus Disease 2019 (COVID-191)','Remdesivir',31,5),   
('Chronic Gastritis','Pantoprazole',32,18),      
('Generalized Anxiety Disorder (GAD)','Buspirone',33,2),    
('Sinusitis','Acetaminophen',34,13),     
('Burn Injuries','Acetaminophen',35,20),
('Osteoporosis','Calcitonin',36,21),
('Depression','Fluoxetine',37,9),
('Myasthenia Gravis','Pyridostigmine',38,30),
('Otitis Media','Amoxicillin',39,15);

#7 Procedures Table

Create table Procedures(
Code INT PRIMARY KEY,
Name VARCHAR(50) NOT NULL,
Cost INT NOT NULL
);

Insert into Procedures values
(1,'X-ray-Chest',1000),
(2,'X-ray-Abdomen',1200),
(3,'X-ray-Skull',900),
(4,'X-ray-Spine',1500),
(5,'MRI-Brain',5000),
(6,'MRI-Spine',6000),
(7,'CT Scan-Abdomen',3000),
(8,'CT Scan-Pelvis',3500),
(9,'Ultrasound-Abdomen',700),
(10,'Ultrasound-Obstetric',2500),
(11,'Mammogram',1200),
(12,'Bone Density Scan (DEXA)',1800),
(13,'PET-CT Scan',5000),
(14,'Fluoroscopy - Upper GI Series',7000),
(15,'Fluoroscopy - Barium Enema',4500),
(16,'Nuclear Medicine - Thyroid Scan',450),
(17,'Angiography - Cerebral',800),
(18,'Interventional Radiology - Biopsy',700),
(19,'X-ray-Extremities',300),
(20,'MRI-Knee',4000);


Select * from Physician;
Select * from Department;
Select * from Affiliated_with;
Select * from Nurse;
Select * from Patient;
Select * from Patient_Diagnosis;
Select * from Procedures;


DESC Physician;
DESC Department;
DESC Affiliated_with;
DESC Nurse;
DESC Patient;
DESC Patient_Diagnosis;
DESC Procedures;


# QUERIES - 


#1. Write a query to obtain patient details having PatientId from 21 to 30.

Select * from Patient limit 20,10;


#2. Write a query to find the name of the nurse who are the head of their department and are registered.

Select * from Nurse where Position = 'Head Nurse' AND Registered = "Yes";


#3. Write a query to obtain the fullname of patients in alphabetical order. 

Select concat(Name," ",Surname) as Patient_name 
from Patient order by Patient_name;


#4. Write a query to obtain the fullname of the patients whose gender is female.

Select concat(Name," ",Surname) as Patient_name, Gender 
from Patient where Gender = "Female"; 


#5. Write a query to update the name of the patient to Remo Dsouza whose PatientId is 3.

Update Patient Set Surname = 'Dsouza' Where PatientId = 3;
Select * from Patient;


#6. Write a query to drop phone column from patient table.

Alter table Patient drop phone;
Select * from Patient;


#7. Write a query to obtain the average cost of all the medical procedures.

Select Avg(Cost) as Average_cost from Procedures;


#8. Write a query to obtain name and cost of the procedure whose cost is greater than 5000.

Select Name as Procedure_Name, Cost as Procedure_Cost 
from Procedures Where Cost > 5000;


#9. Write a query to obtain the second maximum cost of medical procedure.

Select * from Procedures 
Order by Cost Desc 
Limit 1,1;


#10. Write a query to obtain the name of the patients whose third letter is A.

Select Name from Patient where Name like '__A%';


# QUERIES ON JOINS - 

#11. Write a query to obtain the name of the patients with their physicians by whom they got their preliminary treatement.

Select CONCAT(p.Name,' ', p.Surname) as Patient_Name, ph.Name as Physician_Name 
from Patient p Left join Physician ph 
on p.Primary_check = ph.EmployeeId;


#12.  Write a query to obtain the name of the physicians who are the head of each department. 

Select p.Name as Physician_Name, d.Dept_name as Head_of_Department 
from Physician p join Department d 
on p.EmployeeId = d.Head; 


#13. Write a query to obtain physician name, position and department they are affiliated with.

Select p.Name as Physician_Name, p.Position, d.Dept_name 
From Physician p
Join affiliated_with a 
on p.EmployeeId = a.PhysicianId
Join department d
on a.DepartmentId = d.DepartmentId;


#14. Write a query to obtain the patient name, from which physician they get primary checkup and also mention the patient diagnosis with prescription.

Select ph.Name as Physician_Name, CONCAT(P.Name,' ',P.Surname) as Patient_Name, Pd.Diagnosis, Pd.Prescription
From patient_diagnosis Pd
Left join Physician ph
On pd.PhysicianId = ph.EmployeeId
Left join Patient P
On P.PatientId = Pd.PatientId;


#15. Write a query to obtain the name of the physician with the department who are done with affiliation.

Select p.Name as Physician_Name, d.dept_name as Department_name
from Physician p
join Affiliated_with a
on p.EmployeeId = a.PhysicianId
join Department d
on a.DepartmentId = d.DepartmentId
where primary_affiliation='t';


#QUERIES ON SUBQUERY - 

#16. Write a query to obtain the details of patient who has diagnosed with Hypertension.

Select * from Patient where PatientId IN (Select PatientId from Patient_diagnosis where Diagnosis = 'Hypertension');


#17. Write a query to obtain the medical procedure which has the maximum cost.

Select Name,Cost from Procedures where cost IN (Select MAX(Cost) from Procedures);


#18. Write a query to obtain the procedure name and cost whose cost is greater than the avg cost of all the procedure.

Select name as Procedure_name, cost as Procedure_cost
From procedures Where cost > (Select AVG(cost) From procedures);


#19. Write a query to obtain the procedure name and cost whose cost is less than the avg cost of all the procedure.

Select name as Procedure_name, cost as Procedure_cost
From procedures where cost < (Select AVG(cost) from Procedures);


#20. Write a query to obtain the physician name who are either head chief or senior in their respective department.

Select *  From Physician 
Where position IN 
(Select position from Physician where position like '%Senior%' OR position like '%Head Chief%');


                      