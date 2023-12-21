CREATE TABLE Users ( user_id INT PRIMARY KEY, username VARCHAR(255), email VARCHAR(255), password VARCHAR(255), created_at TIMESTAMP );

 

CREATE TABLE Admins ( user_id INT PRIMARY KEY, username VARCHAR(255), email VARCHAR(255), password VARCHAR(255), created_at TIMESTAMP );

 

CREATE TABLE Products ( product_id INT PRIMARY KEY, product_name VARCHAR(255), price DECIMAL(10, 2), description TEXT, stock_quantity INT );

 

CREATE TABLE Orders ( order_id INT PRIMARY KEY, user_id INT REFERENCES Users(user_id), order_date TIMESTAMP, total_price DECIMAL(10, 2) );

 

CREATE TABLE OrderItems ( order_item_id INT PRIMARY KEY, order_id INT REFERENCES Orders(order_id), product_id INT REFERENCES Products(product_id), quantity INT, subtotal DECIMAL(10, 2) );

 

INSERT INTO Users (user_id, username, email, password, created_at)

VALUES (1, 'John', 'john@example.com', 'password123', CURRENT_TIMESTAMP),

       (2, 'Sarah', 'sarah@example.com', 'abc123', CURRENT_TIMESTAMP),

       (3, 'Michael', 'michael@example.com', 'pass456', CURRENT_TIMESTAMP),

       (4, 'Michael', 'michael2@example.com', 'pass456', CURRENT_TIMESTAMP);

       

INSERT INTO Admins (user_id, username, email, password, created_at)

VALUES (1, 'Shraga', 'shraga@example.com', 'password123', CURRENT_TIMESTAMP),

       (2, 'Sharon', 'sharon@example.com', 'abc123', CURRENT_TIMESTAMP),

       (3, 'Orly', 'orly@example.com', 'pass456', CURRENT_TIMESTAMP);       

       

INSERT INTO Products (product_id, product_name, price, description, stock_quantity)

VALUES (1, 'Product 1', 10.99, 'Description 1', 50),

       (2, 'Product 2', 19.99, 'Description 2', 100),

       (3, 'Product 3', 5.99, 'Description 3', 20);

       

       

INSERT INTO Orders (order_id, user_id, order_date, total_price)

VALUES (1, 1, CURRENT_TIMESTAMP, 50.99),

       (2, 2, CURRENT_TIMESTAMP, 29.99),

       (3, 3, CURRENT_TIMESTAMP, 15.99),

       (4, 1, CURRENT_TIMESTAMP, 14.99),

       (5, 2, CURRENT_TIMESTAMP, 3.99),

       (6, 3, CURRENT_TIMESTAMP, 33.99);

       

INSERT INTO OrderItems (order_item_id, order_id, product_id, quantity, subtotal)

VALUES (1, 1, 1, 2, 21.98),

       (2, 1, 2, 1, 19.99),

       (3, 2, 3, 3, 17.97);       

 


 

 
