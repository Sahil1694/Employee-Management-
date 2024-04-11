USE payrolldb;

-- Insert states if not exists
INSERT IGNORE INTO m_state VALUES ('TN','Tamil Nadu');
INSERT IGNORE INTO m_state VALUES ('WB','West Bengal');
INSERT IGNORE INTO m_state VALUES ('MP','Madhya Pradesh');
INSERT IGNORE INTO m_state VALUES ('UP','Uttar Pradesh');
INSERT IGNORE INTO m_state VALUES ('RA','Rajasthan');

-- Insert addresses if not exists
INSERT IGNORE INTO m_address (address_id, building_details, road, landmark, city, state_id, country) VALUES 
(101, 'Buil-A', '5th Road', 'Near City Mall', 'Kolkata', 'WB', 'India'),
(102, 'Sun Buil', 'Beena Road', 'Near MeenaBazaar', 'Bareily', 'UP', 'India'),
(103, 'Coach Buil', 'Nani Road', 'Near Cine Hall', 'Jaipur', 'RA', 'India'),
(104, 'Farmer Buil', 'Rajesh Road', 'Near Vellore Fort', 'Vellore', 'TN', 'India'),
(105, 'Buil-X', 'Nano Road', 'Near MaxStore', 'Bhopal', 'MP', 'India'),
(106, 'Office Buil', 'Nicco Park', 'Near SaltLake', 'Kolkata', 'WB', 'India');

-- Insert companies if not exists
INSERT IGNORE INTO m_company (company_id, company_name, address_id) VALUES 
(01, 'InfoBliss Capital', 101),
(02, 'InfoBliss Cloud Solutions', 103),
(03, 'InfoBliss Aegis', 104);

-- Insert departments if not exists
INSERT IGNORE INTO m_department (company_id, department_id, department_name) VALUES 
(01, 11, 'Human Resources'),
(02, 12, 'Human Resources'),
(01, 13, 'Marketing'),
(02, 14, 'Technical'),
(03, 15, 'Accounts & Finance'),
(03, 16, 'Production'),
(02, 17, 'Research & Development'),
(01, 18, 'Accounts & Finance');

-- Insert grades if not exists
INSERT IGNORE INTO m_grade VALUES (1, 'Head of Department');
INSERT IGNORE INTO m_grade VALUES (2, 'Senior Officer');
INSERT IGNORE INTO m_grade VALUES (3, 'Junior Staff');
INSERT IGNORE INTO m_grade VALUES (4, 'Janitor');

-- Insert employees if not exists
INSERT IGNORE INTO m_employee (employee_id, employee_name, department_id, company_id, address_id, employee_doj, grade_id) VALUES 
(001, 'Rajesh Raushan', 11, 01, 102, '2015-02-01', 1),
(002, 'Vinay Verma', 12, 02, 104, '2014-09-12', 1),
(003, 'Divya Doijod', 13, 01, 106, '2019-12-01', 2),
(004, 'Manisha Mangal', 14, 02, 105, '2018-08-30', 2),
(005, 'Payal Pandey', 15, 03, 101, '2018-05-23', 1),
(006, 'Nandana Nair', 16, 03, 104, '2017-09-15', 2),
(007, 'Anant Agarwal', 17, 02, 105, '2020-04-11', 3),
(008, 'Kanan Kapoor', 18, 01, 102, '2019-07-10', 3),
(009, 'Tanmay Tandon', 15, 03, 102, '2017-05-28', 3),
(010, 'Farah Fisher', 11, 01, 103, '2018-11-19', 3),
(011, 'Howard Herman', 15, 03, 106, '1995-08-25', 4);
