CREATE TABLE person (person_id SERIAL PRIMARY KEY,
                     name VARCHAR(2000), 
                     age INTEGER, 
                     height  INTEGER, 
                     city VARCHAR(200),
                     favorite_color VARCHAR);
INSERT INTO person ( name, age, height, city, favorite_color ) 
            VALUES ( 'jo', 21, 1, 'Cboboty', 'blue' ),
                    ('wes',13,13,'cococ','white'),
                    ('jeff',45,45,'est','green'),
                    ('jo',134,24,'dall','Fusia'),
                    ('tre',46,100,'thak','purple')
SELECT * FROM person ORDER BY height DESC;
SELECT * FROM person ORDER BY height ASC;
SELECT * FROM person ORDER BY age DESC;
SELECT * FROM person WHERE age > 20;
SELECT * FROM person WHERE age = 18;
SELECT * FROM person WHERE age < 20 OR age > 30;
SELECT * FROM person WHERE age != 27;
SELECT * FROM person WHERE favorite_color != 'red';
SELECT * FROM person WHERE favorite_color != 'red' AND favorite_color !='blue';
SELECT * FROM person WHERE favorite_color = 'Orange' OR favorite_color ='green';
SELECT * FROM person WHERE favorite_color IN ('Orange','green','blue')
SELECT * FROM person WHERE favorite_color IN ('yellow', 'purple')


CREATE TABLE orders ( order_id SERIAL PRIMARY KEY, 
                    person_id INTEGER, 
                    product_name VARCHAR, 
                    product_price NUMERIC, 
                    quantity INTEGER)
INSERT INTO orders (order_id, person_id, product_name, product_price,  quantity) 
            VALUES ( 0, 'key', 50, 2 ),
                    (1,'pickle', 7, 3 ),
                    (2, 'chalk', 1000, 1),
                    (3, 'sock', 5, 20000000),
                    (4, 'table', 0, 0)
SELECT * FROM orders;
SELECT SUM(quantity) FROM orders;
SELECT SUM(product_price * quantity) FROM orders;
SELECT SUM(product_price * quantity) FROM orders WHERE person_id = 0;


SELECT first_name, last_name FROM employee WHERE city = 'Calgary';
SELECT MAX(birth_date) FROM employee;
SELECT MIN(birth_date) FROM employee;
SELECT * FROM employee 
SELECT * FROM employee WHERE reports_to = 2;
SELECT COUNT(*) FROM employee WHERE city = 'Lethbridge';


SELECT COUNT(*) FROM invoice WHERE billing_country = 'USA';
SELECT MAX(total) FROM invoice;
SELECT MIN(total) FROM invoice;
SELECT * FROM invoice WHERE total > 5;
SELECT COUNT(*) FROM invoice WHERE total < 5;
SELECT COUNT(*) FROM billing_state IN ( 'CA', 'TX', 'AZ');
SELECT AVG(total) FROM invoice;
SELECT SUM(total) FROM invoice;
