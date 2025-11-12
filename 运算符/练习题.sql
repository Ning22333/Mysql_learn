#练习题
#1.查询表中commission_pct为NULL的数据有哪些
SELECT last_name,salary,commission_pct
FROM employees
WHERE commission_pct <=> NULL;
#---------------------------------
SELECT last_name,salary,commission_pct
FROM employees
WHERE NOT commission_pct <=> NULL;
#选择工资不在5000到12000的员工姓名和工资
SELECT last_name,first_name,salary
FROM employees
WHERE salary NOT BETWEEN 5000 AND 12000;
#选择在20或50号部门工作的员工姓名和部门号
SELECT last_name,first_name,department_id
FROM employees
WHERE department_id IN (20,50);
#选择公司中没有管理者的员工姓名及job_id
SELECT last_name,first_name,job_id
FROM employees
WHERE ISNULL(manager_id);
#选择公司中有奖金的员工姓名，工资和奖金级别
SELECT last_name,first_name,salary,commission_pct
FROM employees
WHERE commission_pct IS NOT NULL;
#选择员工姓名的第三个字母是a的员工姓名
SELECT last_name
FROM employees
WHERE last_name LIKE '__a%';
#选择名字中有a和k的员工姓名
SELECT last_name
FROM employees
WHERE last_name LIKE '%a%' AND last_name LIKE '%k%';
#显示出表employees表中first_name以e结尾的员工信息
SELECT *
FROM employees
WHERE first_name RLIKE 'e$';
#显示出表employees部门编号在80-100之间的姓名、工种
SELECT last_name,job_id
FROM employees
WHERE department_id BETWEEN 80 AND 100;
#显示表employees的manager_id 是 100,101,110的员工姓名、工资、管理者id
SELECT last_name,salary,manager_id
FROM employees
WHERE manager_id IN (100,101,110);