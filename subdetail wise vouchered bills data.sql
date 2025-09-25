select count(*),month from eddo.ebills where year=2025 and subdetail=0 group by month;

select count(*) from eddo.ebills where year=2024 and subdetail='0101' and billstatus = 8 and billtype not in (7) and voucherdt is not null;  --  30650 salaries

select count(*) from eddo.ebills where year=2024 and subdetail='0102' and billstatus = 8 and voucherdt is not null  and billtype not in (7);  --  112 LTC

select count(*) from eddo.ebills where year=2025 and subdetail='0104' and billstatus = 8 and voucherdt is not null  and billtype not in (7);  --  124 Medical

select count(*) from eddo.ebills where year=2025  and billstatus = 8 and voucherdt is not null  and billtype  in (7);  --  156 AC

select count(*) from eddo.ebills where year=2025 and subdetail not in ('0101','0102','0104') and billstatus = 8 and voucherdt is not null  and billtype not in (7); -- 21901 others

select count(*) from eddo.ebills where year=2025 and subdetail='0101' and billstatus = 8 and billtype not in (7) and voucherdt is not null and month=3;
--'=========================
--prev finyear 2024
select count(*) from bcr2006.bills where year=2024 and subdetail='0101'  and billtype not in (7) and voucherdt is not null;  --  130913 salaries

select count(*) from bcr2006.bills where year=2024 and subdetail='0102'  and voucherdt is not null  and billtype not in (7);  --  1652 LTC

select count(*) from bcr2006.bills where year=2024 and subdetail='0104'  and voucherdt is not null  and billtype not in (7);  --  3438 Medical

select count(*) from bcr2006.bills where year=2024   and voucherdt is not null  and billtype  in (7);  --  772 AC

select count(*) from bcr2006.bills where year=2024 and subdetail not in ('0101','0102','0104')  and voucherdt is not null  and billtype not in (7); -- 129872 others
