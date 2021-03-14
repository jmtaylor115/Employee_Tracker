DROP DATABASE IF EXISTS employeeDB;
CREATE DATABASE employeeDB;
USE employeDB;

CREATE TABLE Department
(
    id INT NOT NULL
    AUTO_INCREMENT
    PRIMARY KEY,
    name VARCHAR(30),
);

CREATE TABLE Role
(
    id INT NOT NULL
    AUTO_INCREMENT
    PRIMARY KEY,
    title VARCHAR(30),
    salary DECIMAL,
    department_id INT
);

CREATE TABLE Employee(
    id INT NOT NULL
    AUTO_INCREMENT
    PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    role_id INT,
    manager_id INT
)