select * from eddo.ebills where year=2025 and withuser in (49,47) and passeddt is null and billstatus not in (6);
select * from eddo.ebills where year=2025 and withuser=0;
select * from eddo.ebills where year=2025 and ddocode=703 and  billstatus not in (8,15,6);
select * from eddo.tempecsmonthly where usercode=1181;
select e.doabrn,c.name,e.month,e.year,gross,net,ecsamount,
head,typedesc,case when  e.billtype=2 then 'Epagaar salary' else billparticulars end as billparticulars,e.voucherno,e.voucherdt from eddo.ebills e
inner join eddo.ecsmonthly m on e.doabrn=m.doabrn 
inner join common.ecs_employee c on c.salarycode=m.ecscode 
inner join eddo.billtype b on e.billtype=b.billtype where ecscode='N0048058' and e.year=2025;
SELECT * FROM EDDO.DEDUCTION WHERE LENGTH(DEDHEAD)=13 AND YEAR=2025; 
select * from eddo.ebills where year=2025 and billtype=2 and taxable is null and subdetail='0101';
-- update eddo.ebills set taxable = 'Y' where year=2025 and billtype=2 and taxable is null and subdetail='0101';
select * from eddo.deduction d inner join eddo.ebills e on d.doabrn=e.doabrn where e.year=2025 and billmajor='2071' and dedmajor='2071';


select * from eddo.status;
-- entry not present in fvc vouchers
--update  eddo.ebills set billstatus=15  where doabrn not in (select doabrn from eddo.fvcvouchers ) and year=2025 and billtype in (6) and billstatus not in (15,6) and insection in (98,99,23,30);
-- entry not present in deduction
--update  eddo.ebills set billstatus=15  where doabrn not in (select doabrn from eddo.deduction ) and year=2025 and gross<>net and billstatus not in (15,6) and insection in (98,99,23,30) and passeddt is null;

-- entry not present in cheques
--update  eddo.ebills set billstatus=15  where doabrn not in (select doabrn from eddo.chequesthirdparty ) and year=2025 and cheques_amt>0 and billstatus not in (15,6) and insection in (98,99,23,30) and passeddt is null;

select * from eddo.ebills where billtype<>2   order by entrydt desc,ddocode asc;
 207000800040035
select DOABRN,head,entrydt,passeddt,voucherdt,voucherno,billstatus,insection,withuser,paircode from eddo.ebills where year=2025 and (paircode,month) in (
Select distinct ddobill,intmonth from npsonline.yearcontri_ep where year=2025 and month=5 and empcontribution>0 and govcontribution<=0) 
and billstatus not in (15,6) order by paircode;

select * from eddo.ebills where year=2025 and (paircode,month) in (
Select distinct ddobill,intmonth from npsonline.yearcontri_ep where year=2025 and month=6 and empcontribution>0 and govcontribution<=0) 
and billstatus not in (15,6) order by paircode;

select eddo.usercode_seq.nextval from dual;

select * from advances.compapplications where accountno in (214254, 201845);
select * from eddo.status;
select * from pfms.pfmsbillsdetails;
select * from pfms.pfms_epay_push;
select * from bcr2006.bcrddo where year=2025 and head=223560104010031; 

-- for part imports
select distinct em.pan from payroll.temp_salarysummary t join payroll.emp_master em on t.panno=em.pan and em.gaz_ed_status='N' and t.partno=em.partno
left join eddo.ebills eb on t.doabrn=eb.doabrn where  t.salarymonth=4 and t.salaryyear=2025 and  em.ddo=51  
and em.dhusercode<>0  
and (eb.billstatus in (8)) and em.dhusercode<>0 and t.billset<>0 group by em.pan having max(em.partno)>=2;

select * from doa.echallan@test_db_5 where ddocode=53;
select * from doa.echallan@test_db_5 where head1 like '2202038003900%';
select * from doa.echallan2024@test_db_5 where ddocode=51;
select * from doa.echallan2024@test_db_5 where head1  = '3425608000350';
select echallanno as echallanno, challandate as echallandate, paymentstatus  as status, partyname as partyname, totalamt as totalamount,  head1, amount1, head2, amount2, head3, amount3, head4, amount4, head5, amount5,head6, amount6, demand from doa.echallan2024@test_db_5 where (paymentstatus ='Y' or  recintreasury = 'Y' or paymentstatus ='S') and echallanno = 202500091714 and (demand = '35' ) and ddocode = 68
and head1='2202037960250';

select * from eddo.ebills e inner join eddo.movement m on e.doabrn=m.urn inner join eddo.userdetails u on u.usercode=e.withuser and e.withuser=m.forwardedtouser where billstatus=24 and status=34;