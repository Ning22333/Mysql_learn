#查询员工十二个月工资总和，并起别名ANNUAL_SALARY
SELECT employee_id,last_name,salary*12 AS ANNUAL_SALARY FROM employees;
#查询employees表中去除重复的job_id以后得数据
SELECT DISTINCT job_id FROM employees;
#查询工资大于12000的员工姓名和工资
SELECT last_name,first_name,salary 
FROM employees 
WHERE salary>12000 
ORDER BY salary;
#查询员工号为176的员工姓名和部门号
SELECT last_name,first_name,department_id
FROM employees
WHERE employee_id=176;
#显示departments的结构并查询其中的全部数据
DESCRIBE departments;
SELECT * FROM departments;