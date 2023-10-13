/* EX4
bước 1: phân tích yêu cầu
1. output (gốc/phát sinh): mean = tổng items/số đơn hàng
2. input
3. điều kiện lọc theo trường nào (gốc hay phát sinh)
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

