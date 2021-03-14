var inquirer = require('inquirer');
var consoleTable = require('console.table');
async function main() {
    const mysql = require('mysql2/promise');
  
    const connection = mysql.createConnection({
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: 'randomPass',
    database: 'employeeDB'
    });
};

//(at start) inquire options to view departments, roles, employees
//add a department, role, employee
//update a role

//(view departments) display formatted table showing department names and ids

//(view roles) display job title, role id, department that role is under, role salary

//(view employees) display formatted table showing employee data, ids, first and last name
//job titles, departments, salaries, and managers the employee reports to

//(add departments) enter name of department and that department is added to database

//(add role) enter name, salary, department and it is added to database 

//(add employee) enter employee's first and last name, role, and manager and it is added to database

//(update employee role) prompted to select employee to update, their new role and info is added to database

