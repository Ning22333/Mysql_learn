#1.<=>:安全等于。为NULL而生
SELECT 1<=>2,1<=>'1',1<=>'A',0<=>'A',NULL<=>NULL,1<=>NULL
FROM DUAL;
#2.is null\is not null\isnull
SELECT last_name,salary,commission_pct
FROM employees
WHERE commission_pct IS NULL;
SELECT last_name,salary,commission_pct
FROM employees
WHERE  ISNULL(commission_pct);
#---------------------------
SELECT last_name,salary,commission_pct
FROM employees
WHERE commission_pct IS NOT NULL;
#least\greatest
SELECT LEAST('a','b','c');#取最小符号
SELECT GREATEST('a','b','c');#取最大符号
#3.between 条件一 and 条件二（包含边界）,条件一必须大于条件二
SELECT employee_id,last_name,salary
FROM employees
WHERE salary BETWEEN 6000 AND 8000;
SELECT employee_id,last_name,salary
FROM employees
WHERE salary NOT BETWEEN 6000 AND 8000;
#4.in(set)\not in(set)
#用法:查询部门为10,20，30部门的员工信息
SELECT last_name,salary,department_id
FROM employees
WHERE department_id IN(10,20,30);
#用法:查询部门不为10,20，30部门的员工信息
SELECT last_name,salary,department_id
FROM employees
WHERE department_id NOT IN(10,20,30);
#5.like:模糊查询
#%:代表不确定个数的字符（0个、1个、多个）
SELECT last_name FROM employees
LIKE '%a%';#表示查询姓的含有字符a的员工
#_代表一个不确定的字符
SELECT last_name FROM employees
LIKE '_a%'#表示查询姓的第二个字符为a的员工
#\转义字符
SELECT last_name FROM employees
WHERE last_name LIKE '__a%';#表示查询姓的第二个第三个字符为_a的员工
SELECT last_name FROM employees
WHERE last_name LIKE '_\_a%';#表示查询姓的第三个字符为a的员工
#正则表达式
