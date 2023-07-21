-- 20230713
create table emp_copy1 as select * from emp;
select * from emp_copy1;
create view view_emp1 as select * from emp;
select * from view_emp1;
insert into emp values(8000, 'EJKIM', 'KH', 7788, sysdate, 3000, 700, 40);
commit;
insert into emp_copy1 values(8001, 'EJ1', 'KH', 7788, sysdate, 3000, 700, 40);
commit;
create table emp_copy2 as select empno, ename 사원명, job, hiredate, sal
from emp
where deptno=20;
desc emp_copy2;
select * from emp_copy2;