CREATE TABLE employee1(
	empcode int, 
	ename varchar(50), 
	designation varchar(50), 
	email varchar(50),
	elocation varchar(50)
);

INSERT INTO employee1 VALUES (1, 'Karthik', 'SDE', 'karthik@bf.in', 'Pune');
INSERT INTO employee1 VALUES (2, 'Shubhadip', 'Manager', 'shubhadip@bf.in', 'Chennai');
INSERT INTO employee1 VALUES (3, 'Nishant', 'Manager', 'nishant@bf.in', 'Kolkata');
INSERT INTO employee1 VALUES (4, 'Bhishma', 'SDE2', 'bhishma@bf.in', 'Delhi');
INSERT INTO employee1 VALUES (5, 'Varadhan', 'SDE3', 'varadhan@bf.in', 'Mumbai');
INSERT INTO employee1 VALUES (6, 'Jaswanth', 'SDE2', 'jaswanth@bf.in', 'Ranchi');

SELECT * FROM employee1;