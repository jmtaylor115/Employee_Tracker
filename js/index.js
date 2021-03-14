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

connection.connect(err => {
    if (err) throw err;
    console.log('connected as id' + connection.threadID);
    afterConnection();
});

afterConnection = () => {
    connection.query('SELECT * FROM Department', function(err, res) {
        if (err) throw err;
        console.log(res);
        connection.end();
    });
    connection.query('SELECT * FROM Role', function(err, res) {
        if (err) throw err;
        console.log(res);
        connection.end();
    });
    connection.query('SELECT * FROM Employee', function(err, res) {
        if (err) throw err;
        console.log(res);
        connection.end();
    });
};

//(at start) inquire options to view departments, roles, employees
//add a department, role, employee
//update a role
async function getManagers() {
    var tableRows = await connection.query("SELECT * FROM Employee WHERE manager_id IS NULL");
    var managers = [];

    for(var Employee of tableRows) {
        managers.push(Employee.first_name + " " + Employee.last_name);
    }
    return managers;

}

async function getRoles() {
    var tableRows = await connection.query("SELECT title FROM Role");
    var roles = [];

    for(var row of tableRows) {
        roles.push(row.title);
    }
    return roles;
    
}

async function getDepartments() {
    var tableRows = await connection.query("SELECT name FROM Department ");
    var departmentNames = [];

    for(var row of tableRows) {
        departmentNames.push(row.name);
    }
    return departmentNames;
    
}

async function getDepartmentID() {
    var tableRows = await connection.query("SELECT * FROM Department WHERE Department.name=?");
    

    
}

async function getManagers() {
    var query = "SELECT * FROM Employee WHERE manager_id IS NULL";

    
}

async function getManagers() {
    var query = "SELECT * FROM Employee WHERE manager_id IS NULL";

    
}

async function getManagers() {
    var query = "SELECT * FROM Employee WHERE manager_id IS NULL";

    
}
//(view departments) display formatted table showing department names and ids

//(view roles) display job title, role id, department that role is under, role salary

//(view employees) display formatted table showing employee data, ids, first and last name
//job titles, departments, salaries, and managers the employee reports to

//(add departments) enter name of department and that department is added to database

//(add role) enter name, salary, department and it is added to database 

//(add employee) enter employee's first and last name, role, and manager and it is added to database

//(update employee role) prompted to select employee to update, their new role and info is added to database

