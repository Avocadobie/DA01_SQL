---bài tập 1 
select name from city
where population > 120000 
and countrycode = 'USA';

---bài tập 2
select * from city
where countrycode = 'JPN';

---bài tập 3
select city, state from station;

---bài tập 4
select distinct city from station
where city like 'A%' or city like 'E%' or city like 'I%' or city like 'O%' or city like 'U%';

---bài tập 5
select distinct city from station
where city like '%a' or city like '%e' or city like '%i' or city like '%o' or city like '%u';

---bài tập 6
select distinct city from station
where city not like 'A%' and city not like 'E%' and city not like 'I%' and city not like 'O%' and city not like 'U%';

---bài tập 7
select name from employee
order by name;

---bài tập 8
select name from employee
where salary > 2000 and months < 10
order by employee_id;

---bài tập 9
select product_id from products
where low_fats = 'Y' and recyclable = 'Y';

---bài tập 10
select name from customer
where referee_id not like 2
or referee_id is null ;

---bài tập 11
select name, population, area from world
where area >=3000000 
or population >=25000000;

---bài tập 12
select distinct author_id as id
from Views
where author_id = viewer_id
order by id;

---bài tập 13
SELECT part, assembly_step FROM parts_assembly
where finish_date is null;

---bài tập 14
select * from lyft_drivers
where yearly_salary <= 30000 or yearly_salary >=70000;

---bài tập 15
select advertising_channel from uber_advertising
where money_spent > 100000 and year = 2019;
