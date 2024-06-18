/* NON-NULL COMM SORTED DESCENDING, ALL NULLS FIRST */
 select ename,sal,comm
 from (
 select ename,sal,comm,
 case when comm is null then 0 else 1 end as
is_null
 from emp
 ) x
 order by is_null,comm desc