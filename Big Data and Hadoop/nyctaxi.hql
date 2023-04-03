
create database if not exists nyctaxi;
use nyctaxi;
drop table if exists nyc_taxifare;

-- a.
create external table if not exists nyc_taxifare(VendorID int,	tpep_pickup_datetime varchar(50), tpep_dropoff_datetime	varchar(50), passenger_count int, trip_distance	double,
pickup_longitude double, pickup_latitude double, RatecodeID int, store_and_fwd_flag varchar(10),  dropoff_longitude double, dropoff_latitude double, payment_type int,
fare_amount double, extra double, mta_tax double, tip_amount double, tolls_amount double, improvement_surcharge double,	total_amount double)
row format delimited
fields terminated by ','
lines terminated by '\n'
stored as textfile
location '/taxidir'
tblproperties('skip.header.line.count'='1');

-- b.
-- select * from nyc_taxifare limit 10;

-- c.
-- select VendorID, count(VendorID),
-- case
-- when vendorID = 1 then "Creative Mobile Technologies, LLC"
-- when vendorID = 2 then "Verifone Inc."
-- else "Unknown"
-- end as Provider
-- from nyc_taxifare where VendorID is not null group by vendorID;

-- d.
-- select  year(tpep_pickup_datetime)as Pickup_Year, month(tpep_pickup_datetime)as Pickup_Month, count(*)as Num_Records
-- from nyc_taxifare
-- group by year(tpep_pickup_datetime), month(tpep_pickup_datetime)
-- order by Pickup_Year, Pickup_Month;

-- g.
-- select passenger_count as passengers, count(*) as Records
-- from nyc_taxifare group by passenger_count order by passenger_count;

-- h.
-- select RateCodeID , count(*) as Records
-- from nyc_taxifare group by RateCodeID order by RateCodeID;

-- i.
-- select payment_type,count(*) as count,
-- case
-- when payment_type=1 then "Credit Card"
-- when payment_type=2 then "Cash"
-- when payment_type=3 then "No Charge"
-- when payment_type=4 then "Dispute"
-- when payment_type=5 then "Unknown"
-- when payment_type=6 then "Voided Trip"
-- else "None"
-- end as payments
-- from nyc_taxifare group by payment_type;

-- j.
-- select count,extra_group from (select count(*) as count,
-- case
-- when extra<0 then "Negetive"
-- else "Positive"
-- end as extra_group
-- from nyc_taxifare group by extra) as derived_table group by count,extra_group;

-- k.
-- select mta_tax as MTA, count(*) as Records from nyc_taxifare
-- group by mta_tax order by mta_tax;

-- l.
-- select count(*) as total_count,
-- sum(case when store_and_fwd_flag="Y" then 1 else 0 end) as y_count,
-- sum(case when store_and_fwd_flag="N" then 1 else 0 end) as n_count,
-- (sum(case when store_and_fwd_flag="Y" then 1 else 0 end)/count(*)*100) as y_percent,
-- (sum(case when store_and_fwd_flag="N" then 1 else 0 end)/count(*)*100) as n_percent from nyc_taxifare;

-- m.
select count(*) as total_count,
sum(case when tip_amount<>0 then 1 else 0 end) as non_zero_tip_count
from nyc_taxifare where payment_type=2;

-- n.
-- select improvement_surcharge,count(*) as surge_count from nyc_taxifare group by improvement_surcharge having improvement_surcharge<>0.30;

-- o.
-- create external table if not exists nyc_taxifare_orc(VendorID int,  tpep_pickup_datetime varchar(50), tpep_dropoff_datetime varchar(50), passenger_count int, trip_distance double,
-- pickup_longitude double, pickup_latitude double, RatecodeID int, store_and_fwd_flag varchar(10),  dropoff_longitude double, dropoff_latitude double, payment_type int,
-- fare_amount double, extra double, mta_tax double, tip_amount double, tolls_amount double, improvement_surcharge double, total_amount double)
-- row format delimited
-- fields terminated by ','
-- lines terminated by '\n'
-- stored as orcfile
-- location '/taxidir'
-- tblproperties('skip.header.line.count'='1');

-- p.

-- q.
-- select passenger_count ,count(*) as trips_made_by_passenger from nyc_taxifare where trip_distance<>0 group by passenger_count;

-- r.
-- select count(*) as total_count, sum(case when passenger_count=1 then 1 else 0 end) as solo_trips,
-- sum(case when passenger_count between 2 and 6 then 1 else 0 end) as group_trips from nyc_taxifare;

-- s.
-- select count(*) as total_count,
-- sum(case when payment_type=1 then 1 else 0 end) as credit_card_count,
-- sum(case when payment_type=2 then 1 else 0 end) as cash_count
-- from nyc_taxifare;

-- t.
-- select avg(tip_amount) as avg_tip_amount from nyc_taxifare where payment_type=1 or payment_type=2;
-- select round(avg(tip_amount),3) as avg_Tip, round(percentile_approx(tip_amount,0.25),3)as 25_per,
-- round(percentile_approx(tip_amount, 0.50),3)as 50_per, round(percentile_approx(tip_amount, 0.75),3)as 75th_per, count(distinct tip_amount)as Distict_Tip_Amounts
-- from nyc_taxifare where payment_type != 2;


-- u.
-- select extra, count(*)as Records from nyc_taxifare group by extra order by extra;

-- v.
-- select sum(CASE when extra!= 0 THEN 1 ELSE 0 END) as Extra_Charge, count(*)as Total_Number_Trips,
-- round(sum(CASE when extra!= 0 THEN 1 ELSE 0 END)/count(*),5) as Trips_With_Extra_Charge
-- from nyc_taxifare;

-- w.

-- x.
-- select
-- avg(CASE when month(tpep_dropoff_datetime)=1 THEN (trip_distance/unix_timestamp(tpep_dropoff_datetime)) ELSE null end)as March_Speed,
-- avg(CASE when month(tpep_dropoff_datetime)=3 THEN (trip_distance/unix_timestamp(tpep_dropoff_datetime)) ELSE null end)as Jan_Speed
-- from nyc_taxifare;

-- y.
select
avg(CASE when month(tpep_dropoff_datetime)=1 and day(tpep_dropoff_datetime)=1 THEN (trip_distance/unix_timestamp(tpep_dropoff_datetime)) ELSE null end)as 1_Speed,
avg(CASE when month(tpep_dropoff_datetime)=1 and day(tpep_dropoff_datetime)=18 THEN (trip_distance/unix_timestamp(tpep_dropoff_datetime)) ELSE null end)as 18_Speed
from nyc_taxifare;
