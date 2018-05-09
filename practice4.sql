# 找出薪水在公司的平均薪水之上的人员名字
# 视图salaryAvg的创建sql语句在practice3.sql
 select Employee.*,Company.companyName,salaryAvg.avgSalary from Employee
 left join Company on Employee.companyId = Company.id
 left join salaryAvg on salaryAvg.companyId = Employee.companyid
 where salary > avgSalary;
# 输出标准中包含Employee中所有字段和该employee所在公司名称以及该公司平均薪资：
# id | name | age | gender | companyId | salary | companyName | avgsal
