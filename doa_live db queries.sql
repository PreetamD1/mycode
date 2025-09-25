select * from payroll.temp_salarysummary where panno in  ('CPWPD4510H');--AXNPC4632Q	1	2024	01-01-24	31-01-24	20188
select * from payroll.emp_master where pan in ('ADLPN5498F');

select * from payroll.emp_summary where panno in  ('ABAPN5929J');
select * from payroll.temp_salarydeductions where panno in ('AJOPV1169L');--2023017853
select * from payroll.emp_earnings where panno in ('ABAPN5929J');
select ss.panno,e.name from eddo.salarysummary ss inner join payroll.emp_master e on ss.panno=e.pan where ss.billset=2023021741;
select * from payroll.temp_salarysummary where usercode in  (1890,2794);
select * from payroll.emp_deductions where panno='ABAPN5929J';
select doabrn,ddocode,billstatus,paircode,withuser from eddo.ebills where demand='47' and year=2024 and billstatus not in (15,6,4) and month=6;
select * from payroll.temp_salaryearnings E inner join eddo.allearnings a on e.earnid=a.earnid where panno in ('BLDPT1069D');
select * from eddo.salaryearnings E inner join eddo.allearnings a on e.earnid=a.earnid where panno in ('BLDPT1069D') and salaryyear=2025 and salarymonth>=3;

select * from payroll.emp_master where ecscode in ('N0001584');
select * from common.ecs_employee where salarycode in ('N0004605','N0004603');
select * from payroll.emp_master where ecscode in ('N0019695','N0085374');--('N0080488','N0080485','N0080486','N0080489','N0080490','N0080484','N0080492','N0080487');
select * from payroll.temp_salarysummary where ecscode in ('N0074054','N0074055');
select * from payroll.temp_chequesthirdparty where pannum in ('AWVPG0050F') and year=2025 and month>=5;
select * from payroll.monthly_salary_advances where pan in ('ABAPN5929J') ;
select * from payroll.thirdpartydedmaster where panno='AWVPG0050F';

select * from payroll.thirdpartydedmaster where urn=16202429599;

select * from PAYROLL.thirdpartydedmaster where panno='ABAPN5929J';

select * from payroll.temp_salarysummary where doabrn in (122024130386);

select * from payroll.temp_salarysummary where paircode=2022029125;

select * from payroll.emp_master e inner join common.ddo d on e.ddo=d.ddocode where (name like '%PRIYA%') ;

select * from payroll.emp_master where ddo=138;

select * from payroll.emp_parts where panno in  ('AMSPP6143P');-- ('AFWPL8605B','CQFPS4086K','AIKPC0696E','FPXPS1616M','AIIPH1822P','BDRPN0206N','BSPPT0909M','ANTPN2324A');

select * from eddo.salarydeductions where panno in  ('ABAPN5929J');

select * from eddo.alldeductions;
select * from eddo.ebills where year=2025 and billtype=17 and billstatus not in (15,6,4);
select * from eddo.itaxnames where entrydt is not null;
select * from bcr2006.itaxnames where pan_num in ('ADZPN5899E');
select * from eddo.salarysummary where panno in ('CPWPD4510H') and salaryyear=2025;
select * from common.employee_details_seeding where (salarycode not like 'N%' and salarycode not like 'T%');
select d.* from eddo.deduction d inner join eddo.ebills e on e.doabrn=d.doabrn where panno='ACKPR6522L';

select * from eddo.ebills where panno='ACKPR6522L' and year=2025;
select * from bcr2006.bills ;
select * from eddo.salaryearnings where panno='ABAPN5929J';
select * from eddo.salarysummary where paircode in (17171);

select * from payroll.temp_salarysummary where doabrn=122025217011;
SELECT * FROM bcr2006.BILLS WHERE diaryno in ( 122025336603,122025328797);
select * from eddo.ebills where doabrn in (122025212004,122025318109);
select * from eddo.ebills where year=2025 and paircode in (20881) and month=7;

select * from eddo.movement where urn in (152025000359) order by transactionid;
select * from eddo.itaxnames where entrydt is not null order by entrydt desc;
select * from eddo.itaxnames where itaxsrno in ('10356','10357','10358');
select * from bcr2006.sectionunit where sectionno=3 and unit like '03%';  -- 34377
select srno from itaxnames where sectionno=9 and itaxsrno='98297';
select * from eddo.options1;
select * from eddo.userdetails where username like '%Nav%';
select * from eddo.userdetails where usercode in (7041);
select * from eddo.userdetails where username  in ('ACDDDA');
SELECT * FROM EDDO.EBILLS WHERE DOABRN in (122025359404);
SELECT * FROM EDDO.billcertificate WHERE DOABRN in (122025267395,122025267694,122025269114);
select * from payroll.temp_salarydeductions where panno in ('ABAPN5929J');
select * from eddo.userdetails u inner join eddo.usersection s on u.usercode=s.usercode where usertype=6 and userenabled='Y' AND SECTIONNO=32;
select u.usercode from eddo.userdetails u inner join eddo.usersection s on u.usercode=s.usercode where usertype=4 and userenabled='Y' and sectionno<=15 and sectionno not in (11,12,13,14);
select * from eddo.options1 order by opno desc;
select * from common.ddo where demand='46';
select * from common.ddo where ddoname like '%NAVIGAT%';
select * from eddo.ebills where head='221003103010039';
select * from eddo.userdetails where ddocode=477;
select * from eddo.users where usercode=6880;
select * from eddo.ebills where paircode in (2024002001) and year=2025 and month=3;
-- select eddo.usercode_seq.nextval from dual;
select * from eddo.ebills where ddocode=283 and year=2023 and month=7;
select * from bcr2006.itaxnames where pan_num='AENPN4078A';
select * from bcr2006.itaxnames where itaxsrno='90427';
select * from eddo.itaxnames where pan_num='ADZPN5899E';
select * from eddo.section;
select * from eddo.usersection u inner join eddo.userdetails d on u.usercode=d.usercode and unitcode='9999' and usertype=6 and userenabled='Y' and sectionno>30
inner join eddo.section  s on s.sectionno=u.sectionno;
select * from bcr2006.deduction where diaryno=122023155126;--21495

select * from COMMON.employee_details_seeding where salarycode in ('N0074054','N0074055');

select * from common.employee_details_seeding where salarycode in ('76369','N0085316');--2023107131001855

select * from common.employee_details_seeding where pannum in ('AAHPE7444H','ADLPN5498F','AGDPN3199C','AHMPK3749H','ALPPR6222B');
select * from common.ecs_employee where length(bankcode)=1;
select * from COMMON.ecs_employee where salarycode in ('N0086434','16235');
select * from common.ecs_employee where ddocode=244;
select * from COMMON.ecs_employee where name like '%NATASHA%';  --VINAY M BHOBE  N0003387

select * from common.ecs_transfer where ecscode='N0015289';

select * from common.ddo where ddocode in (939,412);

select * from common.ddo where ddoname like '%CANA%';

select * from common.demand;

select * from common.ecs_employee where ddocode=483;

select * from cps.subscribers where ppanno in (202300912,202300835); 

select * from cpsold.subscribers where ppanno in (202300912,202300835);

-- checking new entries in eddo.itaxnames
-- insert into eddo.itaxnames
select itaxsrno,itaxname,sectionno,designation,pan_num,sex,entrydt,srno,flagprof,panname,psrno,lockstatus,lockdate,sectionno||''||substr(unit,0,2) as unit from
 bcr2006.itaxnames where itaxsrno not in (select itaxsrno from eddo.itaxnames);
 
 Select distinct unitcode from eddo.ebills where ddocode=819 And sectionno=9 And major=2701;

select * from payroll.emp_master where ecscode in ('70286','90394','90393');

Select unit from bcr2006.sectionunit where ddocode=819 And sectionno=9 And major=2701;

select * from common.ecs_employee;

select * from common.ecs_employee order by entrydate desc;

--If Gazetted then check unitcode in eddo.ebills table
Select distinct unitcode from eddo.ebills where ddocode=5 And sectionno=7 And major=2202;

--If non Gazetted then pick unitcode from bcr2006.sectionunit 
Select unit from bcr2006.sectionunit where ddocode=? And sectionno=? And major=?;

-- Checking bills not marked to PA
select e.ddocode,e.sectionno,e.unitcode,e.major from eddo.ebills e inner join eddo.sectionunit su on 
e.ddocode=su.ddocode and e.major=su.major and e.sectionno=su.sectionno and e.unitcode<>su.unitcode
inner join eddo.itaxnames i on e.panno=i.pan_num and e.sectionno=i.sectionno and e.unitcode=i.unitcode and i.unitcode<>su.unitcode
where month=6 and year=2024 and e.major<>2071 and su.unitcode<>9999  and e.billstatus  in (4) and withuser in (306,407)
and panno is not null
minus
select e.ddocode,e.sectionno,e.unitcode,e.major from eddo.sectionunit e  ;


--import to Jan 2025
update payroll.temp_salarysummary set salarymonth=1,year=2024,salaryyear=2025,noofdays=31,fromdate=to_date('01-01-2025','dd-MM-yyyy'),todate=to_date('31-01-2025','dd-MM-yyyy') where panno='ABAPN5929J'; --and salarymonth=5 and salaryyear=2025;
select * from payroll.temp_salarysummary where panno='ABAPN5929J';--billset=6897;-- BILLSET=8546;2021001703

update payroll.temp_salaryearnings set  salarymonth=1,year=2024,salaryyear=2025,fromdate=to_date('01-01-2025','dd-MM-yyyy'),todate=to_date('31-01-2025','dd-MM-yyyy')where  panno='ABAPN5929J'; --and salarymonth=5 and salaryyear=2025;
select * from payroll.temp_salaryearnings where panno='ABAPN5929J';

update payroll.temp_salarydeductions set  salarymonth=1,year=2024,salaryyear=2025 where  panno='ABAPN5929J'; --and salarymonth=5 and salaryyear=2025;
select * from payroll.temp_salarydeductions where panno='ABAPN5929J';
 
update payroll.emp_parts set  salarymonth=1,salaryyear=2025,fromdate=to_date('01-01-2025','dd-MM-yyyy'),todate=to_date('31-01-2025','dd-MM-yyyy')where  panno='ABAPN5929J'; --and salarymonth=5 and salaryyear=2025;
select * from payroll.emp_parts  where panno='ABAPN5929J' ;

--- import to Feb 2025 month
update payroll.temp_salarysummary set salarymonth=2,year=2024,salaryyear=2025,noofdays=28,fromdate=to_date('01-02-2025','dd-MM-yyyy'),todate=to_date('28-02-2025','dd-MM-yyyy') where panno='ABAPN5929J'; --and salarymonth=5 and salaryyear=2025;
select * from payroll.temp_salarysummary where panno='ABAPN5929J';--billset=6897;-- BILLSET=8546;2021001703

update payroll.temp_salaryearnings set  salarymonth=2,year=2024,salaryyear=2025,fromdate=to_date('01-02-2025','dd-MM-yyyy'),todate=to_date('28-02-2025','dd-MM-yyyy')where  panno='ABAPN5929J'; --and salarymonth=5 and salaryyear=2025;
select * from payroll.temp_salaryearnings where panno='ABAPN5929J';

update payroll.temp_salarydeductions set  salarymonth=2,year=2024,salaryyear=2025 where  panno='ABAPN5929J'; --and salarymonth=5 and salaryyear=2025;
select * from payroll.temp_salarydeductions where panno='ABAPN5929J';
 
update payroll.emp_parts set  salarymonth=2,salaryyear=2025,fromdate=to_date('01-02-2025','dd-MM-yyyy'),todate=to_date('28-02-2025','dd-MM-yyyy')where  panno='ABAPN5929J'; --and salarymonth=5 and salaryyear=2025;
select * from payroll.emp_parts  where panno='ABAPN5929J' ;
-- checking for multiple panno entries
select panno,count(distinct salarymonth) from payroll.temp_salarysummary group by panno;

select distinct d.dcbillno from eddo.dcbillsummary d join eddo.sectionunit s 
on d.sectionno = s.sectionno and d.unitcode = s.unitcode and substr(d.head,0,4) = s.major  
where d.dcstatus = 19 and s.sectionno = 2 and s.unitcode = 201 order by d.dcbillno asc;

select * from eddo.sectionunit where sectionno=2;
select * from eddo.ebills where month=12 and year=2023 and billstatus not in (8);
-- update eddo.ebills set paydt='22-12-23' where month=12 and year=2023 and billstatus not in (8)
select * from bcr2006.bills where year=2025 and diaryno=122025205877;
select * from bcr2006.bills where paydt='22-12-23';
select * from bcr2006.cheques where year=2023 and paydt='22-12-2023';
desc bcr2006.cheques;
select * from bcr2006.cheques where chequeamount<0 and year=2023;
select e.pan,e.name,ecsamount from payroll.temp_salarysummary ss inner join payroll.emp_master e on ss.panno=e.pan where ecsamount<0;-- and ss.billset=6088;
Select distinct e1.paircode, e1.withuser, e1.doabrn, e1.billstatus from eddo.ebills e1 where billstatus=5 and 
month=2 and year=2023 and paircode in (select paircode from eddo.ebills e2 where billstatus=5 and month=2 and year=2023
And e1.withuser<>e2.withuser);

Select distinct e1.paircode, e1.withuser, e1.doabrn, e1.billstatus from eddo.ebills e1 where billstatus=5 and month=2 and year=2023 and 
paircode in (select paircode from eddo.ebills e2 where billstatus=8 and month=2 and year=2023
And e1.withuser<>e2.withuser and (e1.withuser not in (47, 49) or e2.withuser not in (47, 49)));

select * from common.ecs_employee;
select * from eddo.section;

-- marking to different sections
select * from eddo.ebills where sectionno=7 and unitcode=704 and year=2024 and month=4 and withuser=5267;
-- update eddo.ebills set withuser=1917 , insection=7 where  sectionno=7 and unitcode=704 and year=2024 and month=4 and withuser=5267;
-- update eddo.movement set forwardedbysect=7 , forwardedtouser=1917 , forwardedtosect=7 where (urn,forwardedtouser) in 
(select urn,forwardedtouser from eddo.movement m inner join eddo.ebills e on m.urn=e.doabrn and e.withuser=m.forwardedtouser where sectionno=7 and unitcode=704 and year=2024 and month=4 and withuser=5267);

------
--SELECT eddo.usercode_seq.nextval FROM DUAL
-- insert into eddo.permissions 
select opno,7075 from eddo.permissions where usercode=7074;
select e.ddocode,e.sectionno,e.unitcode,e.major from eddo.ebills e inner join eddo.sectionunit su on 
e.ddocode=su.ddocode and e.major=su.major and e.sectionno=su.sectionno and e.unitcode<>su.unitcode
inner join eddo.itaxnames i on e.panno=i.pan_num and e.sectionno=i.sectionno and e.unitcode=i.unitcode and i.unitcode<>su.unitcode
inner join eddo.userdetails u on u.usercode=e.withuser
where month=5 and year=2024 and e.major<>2071 and su.unitcode<>9999  and e.billstatus  in (4) and usertype in (21,22,23)
and panno is not null
minus
select e.ddocode,e.sectionno,e.unitcode,e.major from eddo.sectionunit e  ;

select * from eddo.ebills where major=2210 and withuser=407;
select * from eddo.ebills e inner join eddo.itaxnames i on e.panno=i.pan_num
where e.unitcode=3302 and billstatus not in (5,8,6,15) and e.sectionno<>i.sectionno and e.unitcode<>i.unitcode;
select distinct doabrn from eddo.ebills e inner join eddo.itaxnames i on e.panno=i.pan_num
where e.unitcode=3301 and billstatus not in (5,8,6,15) and e.sectionno<>i.sectionno and e.unitcode<>i.unitcode;
-- update eddo.ebills set sectionno=37 , unitcode=3704 where doabrn in (select distinct doabrn from eddo.ebills e inner join eddo.itaxnames i on e.panno=i.pan_num
where e.unitcode=3303 and billstatus not in (5,8,6,15) and e.sectionno<>i.sectionno and e.unitcode<>i.unitcode);

select distinct m.demand,m.demanddesc  as demandname from common.demand m where m.demand =:demand;

--insert into eddo.permissions1
select opno,7081 from eddo.permissions1 where usercode=1782;

select * from eddo.ebills e inner join common.ddo d on e.ddocode=d.ddocode where  office='S' and billtype<>2 and billstatus not in (5,8,6);

select * from doa.pgechallandetails;
select * from doa.echallan;

select dedhead,substr(dedhead,1,11) from bcr2006.deduction where year=2025 and dedhead like '%-%' and dedmajor<='8000';

--select dedhead,substr(dedhead,1,11) from eddo.deduction where year=2025 and dedhead like '%-%' and dedmajor>='8000';

update eddo.deduction set dedhead=substr(dedhead,1,11)||'00'||substr(dedhead,12,2) where year=2025 and dedhead like '%-%' and dedmajor<'8000';

update bcr2006.ddoitax set head=substr(head,1,11)||'0000' where year=2025 and length(head)=13;

select head,substr(head,1,11) from book.otherheads where   major>'2000' and major<'8000' and length(head)=13 ;
-- update book.otherheads set head=substr(head,1,11)||'0000' where major<='2000' and substr(head,1,4)<='2000';
update book.otherheads set head=substr(head,1,11)||'00'||substr(head,12,2) where major>'2000' and major<'8000' and length(head)=13;


-- inserting into temp salarysummary
insert into payroll.temp_salarysummary
SELECT DOABRN,SALARYMONTH,YEAR,PANNO,GROSS,NET,ECSAMOUNT,TOTALDED,DESICODE,BILLSET,ECSCODE,NOOFDAYS,PAYAPPNUM,PARTSALARY,PAYROLLCONFIRM,SALARYYEAR,
SCALECODE,PRINT_SEQ,(select distinct dhusercode from payroll.emp_master e where e.pan=panno and partno=1) as usercode,FROMDATE,TODATE,null,REGULAR_NILL,PARTNO,PROCESSED,VERIFIED,PAIRCODE,PARTPAYREASON
FROM EDDO.SALARYSUMMARY WHERE DOABRN in (122025314110) ;

select b.dcbillno,b.urn,d.head , e.head as ehead 
from dcbillsummary d 
inner join dcbilldetails b on d.dcbillno=b.dcbillno 
inner join ebills e on b.urn=e.doabrn where length(d.head)=13 and d.year=2025 and d.dcstatus<>26 and substr(d.head,12,2)='00' and urn like '122%' and e.billtype=7 and e.dcstatus<>10 order by d.dcbillno;