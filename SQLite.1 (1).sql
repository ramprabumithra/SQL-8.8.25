SELECT * FROM Customers WHERE country = 'USA';
SELECT * FROM Orders ORDER BY amount DESC;
SELECT customer_id, SUM(amount) AS total_spent
FROM Orders
GROUP BY customer_id;
SELECT c.name, o.amount, o.order_date
FROM Customers c
JOIN Orders o ON c.id = o.customer_id;
SELECT name 
FROM Customers 
WHERE id IN (
  SELECT customer_id 
  FROM Orders 
  GROUP BY customer_id 
  HAVING SUM(amount) > (
    SELECT AVG(amount) FROM Orders)
);

