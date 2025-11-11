#1.列的别名
#as：全称：alias（别名）
#列的别名用“”引起来
SELECT employee_id "emp_id",last_name AS "lname",department_id "部门id",salary*12
"annual_salary"
FROM employees;
#2.去除重复行
#未去除
SELECT department_id FROM employees;
#去除后
SELECT DISTINCT department_id
FROM employees; 
#错误用法
#2.1.行数不匹配
SELECT salary,DISTINCT department_id FROM employees;
#2.2.对元组去重
SELECT DISTINCT department_id,salary FROM employees;
#3.空值参加运算
#空值：null
#空值不等同于0，‘’，‘null’
#空值参与运算所得结果皆为空值
SELECT employee_id,salary "月工资",salary*(1+commission_pct)*12 "年工资"
FROM employees;
#4.着重号‘’
SELECT * FROM ORDER;
SELECT * FROM 'order';
#5.查询常数自动匹配
SELECT '财',123,employee_id FROM employees;
#6.显示表结构
DESCRIBE employees;#显示了表中字段的详细信息
#7.过滤数据
SELECT * FROM employees
WHERE department_id=90;
