---EX1
SELECT NAME FROM STUDENTS 
WHERE MARKS > 75 
ORDER BY RIGHT(NAME,3), ID ASC

---EX2
select user_id, 
UPPER(LEFT(NAME,1)) || LOWER(substring(name,2)) as name
from users
order by user_id;

---EX3
SELECT 
manufacturer,
'$'||round(SUM(total_sales)/1000000)||' ' || 'million' as sale
FROM pharmacy_sales
GROUP BY manufacturer, total_sales
ORDER BY round(SUM(total_sales)/1000000) DESC, manufacturer ASC;

---EX4
SELECT 
EXTRACT(month from submit_date) as month,
product_id,
round(AVG(Stars),2)
FROM reviews
GROUP BY product_id, EXTRACT(month from submit_date)
ORDER BY month, product_id;

---EX5
SELECT 
sender_id,
count(message_id) as count_messages
FROM messages
where extract(month from sent_date)='8' and
extract(year from sent_date)='2022'
GROUP BY sender_id;

---EX6
select tweet_id from tweets
where length(content) > 15;

---EX7
SELECT 
activity_date AS day, 
COUNT(DISTINCT user_id) AS active_users
FROM Activity
WHERE activity_date > '2019-06-27' AND activity_date <= '2019-07-27'
GROUP BY activity_date;

---EX8
select count(id) as number_emplyees, joining_date	
from employees
where extract(month from joining_date) >= '1' and extract(month from joining_date) < '8' 
and extract(year from joining_date)= '2022'
group by id, joining_date;

---EX9
select first_name,
position ('a' in first_name)
from worker
where first_name = 'Amitah';

---EX10
CỨU EM CÂU NÀY VỚI Ạ, EM NGẬM NÃY GIỜ CHƯA NHẢ ĐƯỢC NỮA :(((
