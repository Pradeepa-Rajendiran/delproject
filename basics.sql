use collegemanagement;


-- student table
create table student (
    ID varchar(10) not null, 
    Name varchar(20) not null,
    Departid varchar(10) not null,
    primary key(ID),
    foreign key (Departid) references department(Departid)
);

insert into student (ID ,Name, Departid) values
    ('001', 'Abi', 'D1'), ('002', 'Akash', 'D1'), ('003', 'Anish', 'D1'), 
    ('004', 'Anu', 'D1'), ('005', 'Arun', 'D1'), ('006', 'Akil', 'D2'), 
    ('007', 'Anitha', 'D2'), ('008', 'Akilan', 'D1'), ('009', 'Akshara', 'D3'), 
    ('010', 'Apsara', 'D3'), ('011', 'Aananthi', 'D3'), ('012', 'Bala', 'D4'), 
    ('013', 'Balaji', 'D4'), ('014', 'Bakshi', 'D4'), ('015', 'Chandru', 'D4'), 
    ('016', 'Chelliyan', 'D4'), ('017', 'Charu', 'D5'), ('018', 'Charulekha', 'D5'), 
    ('019', 'Charuni', 'D5'), ('020', 'Cheran', 'D5'), ('021', 'Chithara', 'D5'), 
    ('022', 'Chaithan', 'D5'), ('023', 'Dayan', 'D6'), ('024', 'Dharshini', 'D6'), 
    ('025', 'Dhanya', 'D6'), ('026', 'Dhivya', 'D6'), ('027', 'Dharani', 'D6'), 
    ('028', 'Dhanush', 'D6'), ('029', 'Deepak', 'D6'), ('030', 'Deepika', 'D6'), 
    ('031', 'Dhaksan', 'D6'), ('032', 'Dhansee', 'D6'), ('033', 'Eniyan', 'D6'), 
    ('034', 'Evin', 'D6'), ('035', 'Enushaa', 'D6'), ('036', 'Famira', 'D6');
    
    select * from student;
    
    
-- department table
create table department(
      Departid varchar(10),
	  departName varchar(20),
      primary key (departId)
);

   insert into department (Departid ,departName) values  
	('D1','CSE'),
    ('D2','IT'),
    ('D3','AIDS'),
    ('D4','MECH'),
    ('D5','AGRI'),
    ('D6','BME');
    
 select * from department;

-- library table

create table library (
    ID varchar(10) Not null,
    Books varchar(20) Not null,
    date varchar(30) Not null,
    primary key(ID),
	foreign key (ID) references student(ID));
   
set sql_safe_updates=0;
insert into library (ID, Books, date) values
    ('001', 'Clean code', '2024-07-01'), ('002', 'Refactoring', '2024-07-02'), 
    ('003', 'Hackers', '2024-07-03'), ('004', 'Cryptonomicon', '2024-07-04'), 
    ('005', 'Algorithms', '2024-07-05'), ('006', 'Turing', '2024-07-06'), 
    ('007', 'Agile', '2024-07-07'), ('008', 'Deep work', '2024-07-08'), 
    ('009', 'Grokking', '2024-07-09'), ('010', 'Code', '2024-07-10'), 
    ('011', 'Deep learning', '2024-07-11'), ('012', 'Statics', '2024-07-12'), 
    ('013', 'Dynamics', '2024-07-13'), ('014', 'Mechanics', '2024-07-14'), 
    ('015', 'Thermodynamics', '2024-07-15'), ('016', 'Vibrations', '2024-07-16'),
    ('017', 'Agroecology', '2024-07-17'), ('018', 'Permaculture', '2024-07-18'), 
    ('019', 'Soil', '2024-07-19'), ('020', 'Agronomy', '2024-07-20'), 
    ('021', 'Farming', '2024-07-21'), ('022', 'Horticulture', '2024-07-22'), 
    ('023', 'Biomaterials', '2024-07-23'), ('024', 'Biomechanics', '2024-07-24'), 
    ('025', 'Bionanotechnology', '2024-07-25'), ('026', 'Neuroengineering', '2024-07-26'), 
    ('027', 'Biodesign', '2024-07-27'), ('028', 'Bioinformations', '2024-07-28'), 
    ('029', 'Bioinstrumentations', '2024-07-29'), ('030', 'Bioreactors', '2024-07-30'), 
    ('031', 'Biophotonics', '2024-07-31'), ('032', 'Regeneration', '2024-08-01'), 
    ('033', 'Tissue engineering', '2024-08-02'), ('034', 'Prosthetics', '2024-08-03'), 
    ('035', 'Biocompatibility', '2024-08-04'), ('036', 'Biomechantronics', '2024-08-05');

select * from library;

-- gate pass table
create table gatepass (
    ID varchar(10) Not null,
    entrytime varchar(30) Not null,
    leavetime varchar(30) Not null,
    primary key(ID),
	foreign key (ID) references student(ID));

insert into gatepass (ID, entrytime, leavetime) values
    ('001', '9.00am','4.30pm'), ('002', '9.00am','4.30pm'), 
    ('003', '9.00am','4.30pm'), ('004', '9.00am','4.30pm'), 
    ('005', '9.00am','4.30pm'), ('006','9.00am','4.30pm'), 
    ('007', '10.00am', '6.30pm'), ('008','10.00am', '6.30pm'), 
    ('009', '10.00am', '6.30pm'), ('010', '10.00am', '6.30pm'), 
    ('011', '10.00am', '6.30pm'), ('012', '10.00am', '6.30pm'), 
    ('013','9.00am','4.30pm' ), ('014', '9.00am','4.30pm'), 
    ('015', '9.00am','4.30pm'), ('016','9.00am','4.30pm'),
    ('017', '9.00am','4.30pm'), ('018', '9.00am','4.30pm'), 
    ('019', '10.00am', '6.30pm'), ('020', '10.00am', '6.30pm'), 
    ('021', '10.00am', '6.30pm'), ('022', '10.00am', '6.30pm'), 
    ('023', '10.00am', '6.30pm'), ('024', '10.00am', '6.30pm'), 
    ('025', '9.00am','4.30pm'), ('026', '9.00am','4.30pm'), 
    ('027', '9.00am','4.30pm'), ('028', '9.00am','4.30pm'), 
    ('029', '9.00am','4.30pm'), ('030', '9.00am','4.30pm'), 
    ('031', '10.00am', '6.30pm'), ('032', '10.00am', '6.30pm'), 
    ('033','10.00am', '6.30pm'), ('034', '10.00am', '6.30pm'), 
    ('035', '10.00am', '6.30pm'), ('036', '10.00am', '6.30pm');
select * from gatepass;


-- fees table
create table fees (
    ID varchar(10) Not null,
    totalfees varchar(15) Not null,
	paidamo varchar(15) Not null,
    pendingamo varchar(15) Not null,
    primary key(ID),
    foreign key (ID) references student(ID));
  
insert into fees (ID, totalfees,paidamo,pendingamo) values
    ('001', '70000','50000','20000'), ('002','40000','20000','20000'), 
    ('003', '50000','50000','0'), ('004', '45000','30000','15000'), 
    ('005', '75000','60000','15000'), ('006','30000','30000','0'), 
    ('007', '10000','10000','0'), ('008','27000','20000','7000'), 
    ('009', '70000','0','70000'), ('010', '45000','40000','5000'), 
    ('011', '30000','20000','10000'), ('012', '20000','0','20000'), 
    ('013', '10000','10000','0'), ('014', '10000','10000','0'), 
    ('015', '75000','60000','15000'), ('016','75000','60000','15000'),
    ('017', '10000','10000','0'), ('018', '75000','60000','15000'), 
    ('019', '70000','50000','20000'), ('020', '40000','20000','20000'), 
    ('021', '45000','30000','15000'), ('022','40000','20000','20000'), 
    ('023','40000','20000','20000'), ('024', '45000','30000','15000'), 
    ('025', '75000','60000','15000'), ('026', '70000','50000','20000'), 
    ('027', '70000','50000','20000'), ('028', '75000','60000','15000'), 
    ('029', '75000','60000','15000'), ('030', '75000','60000','15000'), 
    ('031', '75000','60000','15000'), ('032','75000','60000','15000'), 
    ('033','75000','60000','15000'), ('034', '75000','60000','15000'), 
    ('035', '70000','50000','20000'), ('036', '70000','50000','20000');
  select * from fees;

-- staff table
create table staff (
    Staffid varchar(15) Not null,
    Name varchar(20) Not null,
	Departid varchar(15) Not null,
    primary key(Staffid),
    foreign key (Departid) references department(Departid));
    
    insert into staff(Staffid,Name,Departid)values
    ('S001','jasee','D1'),
    ('S002','Ramya','D2'),
	('S003','Seetha','D3'),
    ('S004','Boopathi','D4'),
	('S005','Sudharsan','D5'),
    ('S006','Mohan','D6');
    
    select *from staff;
  
  
select distinct student.ID, student.Name, department.departID, department.departName, staff.StaffID, staff.Name as StaffName
from student
join department on student.Departid = department.departid 
join staff on staff.Departid = department.departid 
-- where student.ID = '032';
where student.Name='Arun';


select distinct student.ID, student.Name, library.Books, library.date,gatepass.entrytime, gatepass.leavetime,fees.totalfees, fees.paidamo, fees.pendingamo
from student
left join library on student.ID = library.ID
left join gatepass on student.ID = gatepass.ID
left join fees on student.ID = fees.ID
where student.ID = '032';


 select distinct student.ID, student.Name, library.Books, library.date
 from student join library on student.ID = library.ID
 where student.ID = '032';

select distinct student.ID, student.Name,gatepass.entrytime,gatepass.leavetime
from student join gatepass on student.ID = gatepass.ID
where student.ID = '032';

select distinct student.ID, student.Name,fees.totalfees,fees.paidamo,fees.pendingamo
from student join fees on student.ID = fees.ID
where student.ID = '018';

select distinct student.ID, student.Name, library.Books, library.date,gatepass.entrytime,gatepass.leavetime,fees.totalfees,fees.paidamo,fees.pendingamo
 from student join library on student.ID = library.ID
 join gatepass on student.ID = gatepass.ID
 join fees on student.ID = fees.ID
 where student.Name = 'Anu';

