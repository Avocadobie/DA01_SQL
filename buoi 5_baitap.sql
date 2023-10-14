/* Hướng dẫn phân tích
bước 1: phân tích yêu cầu
1. output (gốc/phát sinh):
2. input
3. điều kiện lọc theo trường nào (gốc hay phát sinh):
 */
---EX1
select distinct city
from station
where id%2=0;  

---EX2
select count(city) - count(distinct city) from station;

---EX3


---EX4
SELECT 
round(CAST(sum(item_count*order_occurrences)/sum(order_occurrences) 
as decimal),1) as mean
FROM items_per_order;

---EX5
SELECT candidate_id FROM candidates
where skill in ('Python','Tableau','PostgreSQL')
GROUP BY candidate_id
having count(candidate_id)=3;

---EX6
SELECT user_id,
date(max(post_date))-date(min(post_date)) as days_between
FROM posts
where post_date BETWEEN '2021-01-01' and '2022-01-01'
GROUP BY user_id
having COUNT(post_id)>=2;

---EX7
SELECT card_name,
max(issued_amount)- min(issued_amount) as difference
FROM monthly_cards_issued
GROUP BY card_name
order by difference desc;

---EX8
SELECT
 manufacturer,
 count(drug) as drug_count,
 abs(sum(cogs - total_sales)) AS total_loss
FROM pharmacy_sales
where total_sales<cogs
group by manufacturer
ORDER BY total_loss DESC;

---EX9
select id, movie, description, rating from cinema
where id%2=1 and description not in ('boring') 
order by rating desc;

---EX10
select teacher_id, 
count(distinct subject_id) as cnt
from teacher
group by teacher_id;

---EX11
select user_id,
count(follower_id) as followers_count
from followers
group by user_id;

---EX12
elect class from courses
group by class
having count(student)>=5;
