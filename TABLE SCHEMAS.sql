ALTER DATABASE employ_db SET datestyle TO "ISO, MDY";

--drop table titles CASCADE;
create table titles(
    title_id varchar(5) NOT NULL,
    title varchar(30),
    PRIMARY KEY (title_id));

--drop table departments CASCADE;
create table departments(
    dept_no varchar(4) NOT NULL,
    dept_name varchar(30),
    PRIMARY KEY (dept_no));

--drop table employees CASCADE;
create table employees(
    emp_no varchar(6) NOT NULL,
    emp_title_id varchar(5),
    birth_date date,
    first_name varchar(30),
    last_name varchar(30),
    sex varchar(1),
    hire_date date,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id));

--drop table dept_manager CASCADE ;
create table dept_manager(
    dept_no varchar(4) NOT NULL,
    emp_no varchar(6) NOT NULL,
    primary key (dept_no,emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no));


--drop table dept_emp CASCADE ;
create table dept_emp(
    emp_no varchar(6) NOT NULL,
    dept_no varchar(4) NOT NULL,
    primary key (dept_no,emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no));


--drop table salaries CASCADE;
create table salaries(
    emp_no varchar(6) NOT NULL,
    salary  int,
    primary key (emp_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no));
