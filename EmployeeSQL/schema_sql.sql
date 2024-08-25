DROP TABLE "Employees"
	
--- Create Departments table
CREATE TABLE "Departments" (
	"dept_no" VARCHAR(10) NOT NULL,
	"dept_name" VARCHAR(45) NOT NULL,
	PRIMARY KEY ("dept_no")
);

--- Create Employee table
CREATE TABLE "Employees" (
	"emp_no" INT NOT NULL,
	"emp_title_id" VARCHAR(10) NOT NULL, 
	"birth_data" DATE NOT NULL,
	"last_name" VARCHAR(45),
	"first_name" VARCHAR(45),
	"sex" VARCHAR(1) NOT NULL,
	"hire_date" DATE NOT NULL,
	PRIMARY KEY ("emp_no")
);

SELECT * FROM "Employees";
--- Create Salaries table
CREATE TABLE "Salaries" (
	"emp_no" INT NOT NULL,
	"salary" INT NOT NULL,
	PRIMARY KEY ("emp_no"),
	FOREIGN KEY("emp_no") REFERENCES "Employees" ("emp_no")
);

--- Create Titles table
CREATE TABLE "Titles" (
	"title_id" VARCHAR(10) NOT NULL,
	"title" VARCHAR(50) NOT NULL,
	PRIMARY KEY("title_id")
);

--- Create Department_employee table
CREATE TABLE "Dempartment_Employee" (
	"emp_no" INT NOT NULL,
	"dept_no" VARCHAR(10) NOT NULL,
	PRIMARY KEY ("emp_no", "dept_no"),
	FOREIGN KEY ("dept_no") REFERENCES "Departments" ("dept_no"),
	FOREIGN KEY ("emp_no") REFERENCES "Employees" ("emp_no")
);


--- Create Department_Manager table
CREATE TABLE "Department_Manager" (
	"dept_no" VARCHAR(10) NOT NULL,
	"emp_no" INT NOT NULL,
	PRIMARY KEY ("dept_no", "emp_no"),
	FOREIGN KEY ("dept_no") REFERENCES "Departments" ("dept_no"),
	FOREIGN KEY ("emp_no") REFERENCES "Employees" ("emp_no")
);
