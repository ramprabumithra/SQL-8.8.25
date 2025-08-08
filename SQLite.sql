
CREATE TABLE Customers (
  id INTEGER PRIMARY KEY,
  name TEXT,
  country TEXT
);

CREATE TABLE Orders (
  id INTEGER PRIMARY KEY,
  customer_id INTEGER,
  order_date TEXT,
  amount REAL,
  FOREIGN KEY(customer_id) REFERENCES Customers(id)
);

INSERT INTO Customers VALUES 
(1, 'Alice', 'USA'),
(2, 'Bob', 'UK'),
(3, 'Carol', 'Canada'),
(4, 'David', 'USA');

INSERT INTO Orders VALUES 
(1, 1, '2024-01-01', 250.00),
(2, 2, '2024-01-15', 150.00),
(3, 1, '2024-02-01', 300.00),
(4, 3, '2024-02-20', 100.00),
(5, 4, '2024-03-10', 200.00);
