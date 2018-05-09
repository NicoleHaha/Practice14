#取得平均薪水最高的公司
create view salaryAvg as select companyId,avg(salary) avgSalary from employee group by companyId;
select Company.companyName,max(salaryAvg.avgSalary) from salaryAvg left join Company on salaryAvg.companyId = Company.id;
#输出公司名称和平均薪水：companyName avgSalary


