select * from sales;
select * from people ;

select s.SaleDate, s.Amount, p.Salesperson, s.SPID, p.SPID
from sales s
join people p on s.SPID = p.SPID ;

# Left join 
select s.SaleDate, s.Amount, pr.product, s.PID
from sales s
left join products pr on pr.PID = s.PID ;

select s.SaleDate, s.Amount, p.Salesperson, s.SPID, pr.Product, p.Team 
from sales s
join people p on s.SPID = p.SPID 
join products pr on s.PID = pr.PID ;

select s.SaleDate, s.Amount, p.Salesperson, s.SPID, pr.Product, p.Team, g.Geo 
from sales s
join people p on s.SPID = p.SPID 
join products pr on s.PID = pr.PID
join  geo g on g.GeoID = s.GeoID
where s.Amount < 500
and g.Geo in ('New Zealand','India')
order by Geo;

