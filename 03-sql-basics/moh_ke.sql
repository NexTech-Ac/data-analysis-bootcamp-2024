DROP DATABASE IF EXISTS `Ministry_of_Health_Kenya`;
CREATE DATABASE `Ministry_of_Health_Kenya`;
USE `Ministry_of_Health_Kenya`;

CREATE TABLE employees (
  employee_id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  age INT,
  gender VARCHAR(10),
  birth_date DATE,
  PRIMARY KEY (employee_id)
);

CREATE TABLE employee_salaries (
  employee_id INT NOT NULL,
  occupation VARCHAR(50),
  salary INT,
  dept_id INT,
  PRIMARY KEY (employee_id),
  FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);

CREATE TABLE departments (
  department_id INT NOT NULL AUTO_INCREMENT,
  department_name VARCHAR(50) NOT NULL,
  PRIMARY KEY (department_id)
);

CREATE TABLE hospitals (
  hospital_id INT NOT NULL AUTO_INCREMENT,
  hospital_name VARCHAR(100),
  location VARCHAR(100),
  PRIMARY KEY (hospital_id)
);

CREATE TABLE patients (
  patient_id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  age INT,
  gender VARCHAR(10),
  admission_date DATE,
  discharge_date DATE,
  hospital_id INT,
  PRIMARY KEY (patient_id),
  FOREIGN KEY (hospital_id) REFERENCES hospitals(hospital_id)
);

INSERT INTO employees (first_name, last_name, age, gender, birth_date)
VALUES
('John', 'Doe', 45, 'Male', '1979-09-25'),
('Jane', 'Smith', 36, 'Female', '1987-03-04'),
('Emily', 'Jones', 29, 'Female', '1994-03-27'),
('Michael', 'Brown', 52, 'Male', '1972-08-28');

INSERT INTO employee_salaries (employee_id, occupation, salary, dept_id)
VALUES
(1, 'Doctor', 100000, 1),
(2, 'Nurse', 80000, 2),
(3, 'Administrator', 70000, 3),
(4, 'Lab Technician', 60000, 4);

INSERT INTO departments (department_name)
VALUES
('Medical'),
('Nursing'),
('Administration'),
('Laboratory');

INSERT INTO hospitals (hospital_name, location)
VALUES
('Kenyatta National Hospital', 'Nairobi'),
('Moi Teaching and Referral Hospital', 'Eldoret'),
('Aga Khan University Hospital', 'Nairobi'),
('Nairobi Hospital', 'Nairobi');

INSERT INTO patients (first_name, last_name, age, gender, admission_date, discharge_date, hospital_id)
VALUES
('Alice', 'Mwamba', 30, 'Female', '2024-06-25', '2024-07-01', 1),
('Bob', 'Omondi', 45, 'Male', '2024-06-26', '2024-07-02', 2),
('Carol', 'Wanjiru', 38, 'Female', '2024-06-27', '2024-07-03', 3),
('David', 'Otieno', 29, 'Male', '2024-06-28', '2024-07-04', 4);
