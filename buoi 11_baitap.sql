---EX1
select country.continent,
round(avg(city.population),0)
from city 
inner join country 
on city.countrycode=country.code
group by country.continent;

---EX2

---EX3

---EX4

---EX5

---EX6

---EX7
