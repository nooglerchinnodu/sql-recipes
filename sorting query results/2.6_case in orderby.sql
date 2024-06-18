 select ename,sal,job,comm
 from emp
order by case when job = 'SALESMAN' then comm else sal end