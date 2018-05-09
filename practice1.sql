# 1.创建数据库employee_db
create database employee_db;
# 2.在数据库employee_db中创建table：`Employee`
drop table if exists suspects;
create table Employee(
    id INT NOT NULL  PRIMARY KEY,
    name VARCHAR(255),
    age INT,
    gender VARCHAR(10),
    companyId INT REFERENCES Company(id),
    salary INT
);
# 3.将`employee-data.csv`文件中的数据导入数据表Employee中
load data local infile 'D:\\employee-data.csv' into table Employee
fields terminated by ','
lines terminated by '\n';
# 4.在数据库employee_db中创建table：`Company`
CREATE TABLE Company(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    companyName VARCHAR(255),
    employeesNumber INT(11)
);
# 5.将`company-data.csv`文件中的数据导入Company数据表中
load data local infile 'D:\\company-data.csv' into table Company
fields terminated by ','
lines terminated by '\n';
# 6.找出Employee表中姓名包含`n`字符并且薪资大于6000的雇员所有个人信息
select * from Employee where name like '%n%' and salary > 6000;
# ps:本练习中只需要将6的结果复制到`result.txt`文件中