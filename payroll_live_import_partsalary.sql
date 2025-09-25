select distinct em.pan from payroll.temp_salarysummary t join payroll.emp_master em on t.panno=em.pan and em.gaz_ed_status='N' 
left join eddo.ebills eb on t.doabrn=eb.doabrn where  t.salarymonth=9 and t.salaryyear=2024 and  em.ddo=856  
and em.dhusercode<>0  
and (eb.billstatus in (8)) and em.dhusercode<>0 and t.billset<>0 group by em.pan having max(em.partno)>=2;

        select dhusercode,max(partno),pftype   from payroll.emp_master where pan='AHUPN4950H' group by dhusercode,pftype having max(partno)>=2;   -- 1985	,2	,N
 select count(*) as cnt from  payroll.emp_parts where panno='AHUPN4950H' and partno=2 and salarymonth=9
               and salaryyear=2024; 
        if(cnt<>0) then      
        select billset  from payroll.emp_parts where panno='AHUPN4950H' and partno=2 and salarymonth=9
               and salaryyear=2024; -- 2024025043
               
        -- ddoecs condition for thirdparty
         select  count(distinct ecscode) as ddoecs_cnt  from payroll.temp_chequesthirdparty where pannum='AHUPN4950H'  and month=9 and year=2024 and ecscode is not null and billset<>0 and ecscode<>'0';
        
        if(ddoecs_cnt<>0) then
        select distinct ecscode as ddoecs from payroll.temp_chequesthirdparty where pannum='AHUPN4950H' and partno<=2 and month=9 and year=2024 and ecscode is not null and billset<>0 and ecscode<>'0';
     
       -- insert into payroll.temp_chequesthirdparty
        select 10,2024,null,party,amount,1985,2024025043,pannum,'01-07-2024','31-07-2024',paymenttype,'N0061772','N',urn,1
        from payroll.temp_chequesthirdparty ts
        where ts.pannum in 
        (select distinct ss.panno  from payroll.temp_salarysummary ss join payroll.emp_master em on ss.panno=em.pan  and em.pan = 'AHUPN4950H'
        left join eddo.ebills eb on ss.doabrn = eb.doabrn inner join payroll.thirdpartydedmaster tm on tm.panno=ss.panno and tm.status<>'C'
        where  ss.salarymonth =9 and ss.salaryyear=2024  
        and (eb.billstatus in (8)))
        and ts.month =9 and ts.year=2024 ;
        end if;
        
    --    delete from payroll.temp_salaryearnings where  panno='AHUPN4950H'  and salarymonth=9 and salaryyear=2024;
        --insert into payroll.temp_salaryearnings (
        select null as doabrn,10 as  salarymonth,2024 as year,panno,earnid,amount,2024025043 as billset,2024 as salaryyear,
        1985 as usercode,null as billset_payroll,'01-10-2024','31-10-2024',1,1 as earnpercent  from payroll.emp_earnings where panno='AHUPN4950H' and partno=2
        );

     --   delete from payroll.temp_salarydeductions where  panno='AHUPN4950H'  and salarymonth=9 and salaryyear=2024;

 --       insert into payroll.temp_salarydeductions (
         select null as doabrn,10 as  salarymonth,2024 as year,'AHUPN4950H',ed.deddemand,ed.dedhead,ed.dedpnp,ed.dedcvt,sum(dedamount),accountno,4,2024025043,2024 as salaryyear,
        'N',dedtype as ded_type, 1985 as usercode,'' ,ed.dedid,agcode,1 from payroll.emp_deductions ed 
        left join payroll.alldeductions d on deddemand=d.demand and dedhead=d.head and dedpnp=d.pnp and dedcvt=d.cvt  and ed.dedid=d.dedid
        where panno='AHUPN4950H' group by panno,ed.deddemand,ed.dedhead,ed.dedpnp,ed.dedcvt,accountno,d.dedtype,ed.dedid,ed.agcode );

        select gross,net,ecsamount,totalded from payroll.emp_summary where panno='AHUPN4950H' and partno=2;

        delete from payroll.temp_salarysummary ss 
        where ss.billset in 
        (select distinct ts.billset from payroll.temp_salarysummary ts left join eddo.ebills eb on eb.doabrn = ts.doabrn 
        join payroll.emp_master em on em.pan=ts.panno  
        where ts.salarymonth=9 and ts.salaryyear=2024 and ts.regular_nill=2 
        and (eb.billstatus in (8))  and em.pan='AHUPN4950H' and em.gaz_ed_status='N')
        and ss.salarymonth=9 and ss.salaryyear=2024;
        
        delete from payroll.temp_salarysummary where  panno='AHUPN4950H'  and salarymonth=9 and salaryyear=2024 and partno<2;
        update payroll.temp_salarysummary set gross=gross_in, net=net_in,ecsamount=ecsamount_in,totalded=totalded_in ,fromdate='01-10-2024',todate='31-10-2024' , partno=1,
        partpayreason=1,doabrn=null,processed='N',salarymonth=10,year=2024,salaryyear=2024,noofdays=31 where panno='AHUPN4950H' and partno=2;

      insert into payroll.monthly_salary_advances
    select null,10,2024,pan,dedid,2024025043,10,2024,urn,noofinstallment,balanceamt,dedamount,'N',
    cumminstall,1 from  payroll.monthly_salary_advances ts
    where ts.pan in 
    (select distinct ss.panno  from temp_salarysummary ss join emp_master em on ss.panno=em.pan  and em.pan = 'AHUPN4950H'
    left join eddo.ebills eb on ss.doabrn = eb.doabrn inner join payroll.advances_master am on am.pan=ss.panno
    where   ss.salarymonth =9 and ss.salaryyear=2024  
    and (eb.billstatus in (8)) )
     and ts.salarymonth =9 and ts.salaryyear=2024 ;


        

----        ------ delete the old records in emp tables
        delete from payroll.emp_master where pan='AHUPN4950H' and  partno<2;
        delete from payroll.emp_parts where panno='AHUPN4950H' and partno<>2;
        delete from payroll.emp_earnings where panno='AHUPN4950H' and partno<2;
        delete from payroll.emp_summary where panno='AHUPN4950H' and partno<2;

        update payroll.emp_master set calldedsp='Y',partpayreason=1,workingdays=31 ,partno=1,partbill='N'
        where pan='AHUPN4950H' and dhusercode=1985 and  partno=2;

        update payroll.emp_parts set fromdate='01-10-2024', todate='31-10-2024',partno=1,salarymonth=10,salaryyear=2024 where panno='AHUPN4950H' and   partno=2 and salarymonth=9 and salaryyear=2024;
        update payroll.emp_summary set partno=1,usercode=1985 where panno='AHUPN4950H'   and  partno=2;
        update payroll.emp_earnings set partno=1,usercode=1985  where panno='AHUPN4950H'  and  partno=2;

       delete from payroll.emp_deductions where panno='AHUPN4950H';
        insert into payroll.emp_deductions
        select panno,deddemand,dedhead,dedpnp,dedcvt,dedamount,accountno,billset,usercode,dedid,partno,agcode from payroll.temp_salarydeductions
        where panno='AHUPN4950H';

 



