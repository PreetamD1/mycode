select * from common.employee_details_seeding where salarycode not like 'N%' and salarycode not like 'T%';

 SELECT  s.sectionno, s.sectionname, NVL(SUM(cnt_curr_year), 0) AS current_year,NVL(SUM(cnt_prev_year), 0) AS previous_year, NVL(SUM(cnt_before_prev_year), 0) AS before_previous_year,NVL(SUM(cnt_curr_year + cnt_prev_year + cnt_before_prev_year), 0) AS total
FROM ( 
SELECT x.doabrn,x.sectionno, 
SUM(CASE WHEN EXTRACT(YEAR FROM sentondt) = :finYear THEN 1 ELSE 0 END) AS cnt_curr_year,
SUM(CASE WHEN EXTRACT(YEAR FROM sentondt) = :finYear - 1 THEN 1 ELSE 0 END) AS cnt_prev_year, 
SUM(CASE WHEN EXTRACT(YEAR FROM sentondt) = :finYear - 2 THEN 1 ELSE 0 END) AS cnt_before_prev_year 
FROM ( 
SELECT e.doabrn,e.sectionno,m.sentondt, 
ROW_NUMBER() OVER (PARTITION BY e.doabrn ORDER BY m.transactionid DESC) AS rn 
FROM ebills e 
JOIN movement m ON e.withuser = m.forwardedtouser AND e.doabrn = m.urn AND e.insection = m.forwardedtosect  
and e.billtype=7
JOIN eddo.userdetails ud ON ud.usercode = e.withuser 
WHERE e.voucherdt IS not NULL AND m.forward = 'N' and dcstatus=10 and  e.sectionno IN (2, 4, 5, 6, 8, 15, 31, 32, 34)
union
select distinct e.doabrn, sectionno,m.sentondt, 
ROW_NUMBER() OVER (PARTITION BY e.doabrn ORDER BY m.transactionid DESC) AS rn  from eddo.acdcbills e
JOIN movement m ON e.withuser = m.forwardedtouser AND e.doabrn = m.urn --AND e.insection = m.forwardedtosect  
where dcstatus = 10 and  e.sectionno IN (2, 4, 5, 6, 8, 15, 31, 32, 34)
) x WHERE x.rn = 1 group by doabrn,sectionno
) aa 
left JOIN section s ON aa.sectionno = s.sectionno and  s.sectionno IN (2, 4, 5, 6, 8, 15, 31, 32, 34) --WHERE s.sectionno = :SectionNo 
GROUP BY s.sectionno, s.sectionname ;