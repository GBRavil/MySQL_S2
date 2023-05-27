CREATE DATABASE IF NOT EXISTS lesson_2;
USE lesson_2;
DROP TABLE IF EXISTS sales;
CREATE TABLE sales
(
id INT PRIMARY KEY AUTO_INCREMENT,
order_date VARCHAR(10),
count_product INT (3) NOT NULL
);
INSERT sales (order_date, count_product)
VALUES
('2022-01-01', 156),
('2022-01-02', 180),
('2022-01-03', 21),
('2022-01-04', 124),
('2022-01-05', 341);

SELECT
    id  AS "id заказа",
CASE
    WHEN count_product < 100
        THEN 'Маленький заказ'
    WHEN count_product BETWEEN 100 AND 300
        THEN 'Средний заказ'
    WHEN count_product  > 300
        THEN 'Большой заказ'    
END AS 'Тип заказа'
FROM sales;   

DROP TABLE IF EXISTS orders;
CREATE TABLE orders
(
id INT PRIMARY KEY AUTO_INCREMENT,
employee_id VARCHAR(3) NOT NULL,
amount VARCHAR(10) NOT NULL,
order_status VARCHAR(15) NOT NULL	
);    
INSERT orders (employee_id, amount, order_status)
VALUES
('e03', '15.00','OPEN'),
('e01', '25.50','OPEN'),
('e05', '100.70','CLOSED'),
('e02', '22.18','OPEN'),
('e04', '9.50','CANCELLED');

SELECT * FROM orders;

SELECT
    employee_id,
    amount,
    order_status,
CASE
    WHEN order_status = 'OPEN'
        THEN 'Order is in open state'
    WHEN order_status = 'CLOSED'
        THEN 'Order is closed'
    WHEN order_status = 'CANCELLED'
        THEN 'Order is cancelled'    
END AS 'full_order_status'
FROM orders;

