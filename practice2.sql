# 取得每个company中最高薪水的人员名字
create view salaryDesc as select * from employee order by salary desc;
select salaryDesc.name,Company.companyName from salaryDesc left join Company on salaryDesc.companyId = Company.id group by company.id;
# 输出结果包含公司名称和人员名称：companyName name
