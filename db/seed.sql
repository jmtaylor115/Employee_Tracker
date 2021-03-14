INSERT INTO Department(name)
VALUES ("Legal");
INSERT INTO Department(name)
VALUES ("Marketing");
INSERT INTO Department(name)
VALUES ("IT");
INSERT INTO Department(name)
VALUES ("Payroll");
INSERT INTO Department(name)
VALUES ("Human Resources");

INSERT INTO Role(title, salary, department_id)
VALUES ("Legal Operations Manager", 110000, 1);
INSERT INTO Role(title, salary, department_id)
VALUES ("Legal Operations Specialist", 100000, 1);
INSERT INTO Role(title, salary, department_id)
VALUES ("Legal Operation Analyst", 100000, 1);
INSERT INTO Role(title, salary, department_id)
VALUES ("Director of Legal Operations", 120000, 1);
INSERT INTO Role(title, salary, department_id)
VALUES ("Salesperson", 70000, 2);
INSERT INTO Role(title, salary, department_id)
VALUES ("Sales Manager", 90000, 2);
INSERT INTO Role(title, salary, department_id)
VALUES ("IT Manager", 90000, 3);
INSERT INTO Role(title, salary, department_id)
VALUES ("Engineer", 70000, 3);
INSERT INTO Role(title, salary, department_id)
VALUES ("Payroll Analyst", 70000, 4);
INSERT INTO Role(title, salary, department_id)
VALUES ("Department Head", 90000, 5);
INSERT INTO Role(title, salary, department_id)
VALUES ("Counselor", 78500, 5);

--Legal
INSERT INTO Employee(first_name, last_name, role_id, manager_id)
VALUES ("John", "Doe", 1, null);
INSERT INTO Employee(first_name, last_name, role_id, manager_id)
VALUES ("Jane", "Smith", 2, 1);
INSERT INTO Employee(first_name, last_name, role_id, manager_id)
VALUES ("Jack", "Arnold", 2, 1);
INSERT INTO Employee(first_name, last_name, role_id, manager_id)
VALUES ("Alexis", "Smith", 2, 1);

--Sales
INSERT INTO Employee(first_name, last_name, role_id, manager_id)
VALUES ("Abigail", "Thatcher", 3, null);
INSERT INTO Employee(first_name, last_name, role_id, manager_id)
VALUES ("Matthew", "Alexander", 4, 3);
INSERT INTO Employee(first_name, last_name, role_id, manager_id)
VALUES ("Katie", "Livesay", 4, 3);

--IT
INSERT INTO Employee(first_name, last_name, role_id, manager_id)
VALUES ("John", "Schmidt", 5, null);
INSERT INTO Employee(first_name, last_name, role_id, manager_id)
VALUES ("Kristal", "Doe", 6, 5);
INSERT INTO Employee(first_name, last_name, role_id, manager_id)
VALUES ("Mike", "Taylor", 6, 5);

--Payroll
INSERT INTO Employee(first_name, last_name, role_id, manager_id)
VALUES ("Milton", "Judge", 7, null);
INSERT INTO Employee(first_name, last_name, role_id, manager_id)
VALUES ("Elizabeth", "Smith", 7, null);

--HR
INSERT INTO Employee(first_name, last_name, role_id, manager_id)
VALUES ("Toby", "Danielson", 8, null);
INSERT INTO Employee(first_name, last_name, role_id, manager_id)
VALUES ("Nathan", "Garo", 9, 8);
INSERT INTO Employee(first_name, last_name, role_id, manager_id)
VALUES ("Alexander", "Jacobson", 9, 8);
