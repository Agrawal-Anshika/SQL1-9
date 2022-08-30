1.create 'student_db' database
2.create following tables in database with proper data types
3.student: id (PK), name, address, phone, email, age, schoolId (FK)
4.school: id (PK), name, address, principal, phone
5.create relationship as shown in the table schema
6.add some dummy data

	create database student_db
	CREATE TABLE school(
	id INTEGER PRIMARY Key,
      name VARCHAR(20),
      address VARCHAR(50),
      principal VARCHAR(20),
      phone VARCHAR(20));

  	CREATE TABLE student(
      id INTEGER PRIMARY Key,
      name VARCHAR(20),
      address VARCHAR(50),
      phone VARCHAR(20),
      email VARCHAR(20),
      age INTEGER, 
      schoolId INTEGER,
      FOREIGN key (schoolId) REFERENCES school(id));

	INSERT into school (id, name, address,principal,phone)
	VALUES(10,'IPS','pune','Smith',1234567895),
	(20,'DPS','indore','john',6734564548),
	(30,'KS','gwalior','Mr.www',8956324478),
	(40,'IIT-M','UP','Saint',8899878788);

	Select * From school
	INSERT into student(id,name, address, phone, email, age,schoolId)
	VALUES(101,'sonal','pune-B',6712345678,'sonal@ips.com',22,10),
	(102,'ram','Mumbai',9067575675,'ram1@ks.com',20,30),
	(103,'geet','puneB',1234567898,'geet@dps.com',22,20),
	(104,'piya','jammu',3467235467,'piya22@iitm.com',24,40);
	SELECT * from student
	SELECT * from school

 	Select s1.id, s1.name,sh.id, sh.name from student s1, school sh 
 	where s1.schoolId = 10 and s1.schoolId=sh.id;