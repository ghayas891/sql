show tables;
desc sales;
select * from sales;
select SaleDate, Amount, Customers from sales;
select SaleDate, Amount, Boxes, Amount/Boxes from sales; 
select SaleDate, Amount, Boxes, Amount/Boxes as 'Amount per Box' from sales;

select * from sales 
where Amount> 10000;

select * from sales 
where Amount> 10000
order by Amount;

select * from sales 
where Amount> 10000
order by Amount desc;

select max(Amount) from sales; 

select * from sales
where geoid = 'g1'
order by PID, Amount desc;

select * from sales
where Amount > 10000 and SaleDate >= '2022-01-01';

select Amount, SaleDate from sales
where Amount > 10000 and year(saleDate) = 2022 
order by Amount;

select * from sales 
where Boxes between 0 and 50 ;

select SaleDate, Amount, Boxes, weekday(SaleDate) as 'Day of Week'
from sales
where weekday(SaleDate) = 4;

select * from people;

select * from people 
where Team = 'Delish' or Team = 'jucies' ;

select * from people 
where team in ('Delish','jucies');

select * from people 
where Salesperson like 'B%' ;

select * from people 
where Salesperson like '%B%' ;

select * from sales ;

select SaleDate, Amount,
		case when Amount < 1000 then 'under 1k'
             when Amount < 5000 then 'under 5k'
             when Amount < 10000 then 'under 10k'
             else '10k or more'
		end as 'sales catagory'
from sales;
