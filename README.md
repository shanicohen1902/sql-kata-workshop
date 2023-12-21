# sql-kata-workshop

## The following queries should be refactored to improve efficiency


```sql
1. SELECT user_id, username FROM Users WHERE user_id IN (SELECT user_id FROM Orders WHERE order_date > '2023-01-01'));
2. SELECT product_id, AVG(price) AS avg_price FROM Products GROUP BY product_id HAVING AVG(price) > 10;
3. SELECT product_id, AVG(price) AS avg_price FROM Products where price > 10 GROUP BY product_id
4. SELECT user_id, username FROM Users UNION SELECT user_id, username FROM Admins;
5. SELECT Users.username, Orders.order_date, Products.product_name FROM Users JOIN Orders ON Users.user_id = Orders.user_id JOIN OrderItems ON Orders.order_id = OrderItems.order_id JOIN Products ON OrderItems.product_id = Products.product_id
6. SELECT * FROM Users WHERE user_id NOT IN (SELECT user_id FROM Orders)
7. SELECT user_id, order_date, total_price, (SELECT AVG(total_price) FROM Orders WHERE user_id = o.user_id) AS avg_order_total FROM Orders o ORDER BY order_date
```
 
 

