select geoID, sum(Amount), avg(Amount)
from sales
group by geoID;

select g.geo, sum(Amount), avg(Amount)
from sales s
join geo g on g.GeoID = s.GeoID 
group by g.Geo ;

select pr.Category, p.Team, sum(Amount), sum(Boxes) 
from sales s
join products pr on s.PID = pr.PID
join people p on p.SPID = s.SPID
group by pr.Category, p.Team
order by pr.Category, p.Team;

select pr.Category, p.Team, sum(Amount), sum(Boxes) 
from sales s
join products pr on s.PID = pr.PID
join people p on p.SPID = s.SPID
where p.Team <> ''
group by pr.Category, p.Team
order by pr.Category, p.Team;

select pr.product, sum(Amount)
from sales s
join products pr on pr.PID = s.PID
group by pr.product
order by sum(Amount) desc 
limit 10;

