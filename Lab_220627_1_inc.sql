USE sakila;


-- Checking what is in the Table staff

SELECT * from sakila.staff;
SELECT * from sakila.customer;
SELECT * from sakila.inventory;



-- 1) Drop column picture from staff.


ALTER TABLE sakila.staff
DROP COLUMN picture;


-- 2) A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. Update the database accordingly.

-- getting the personal information about TAMMY SANDER:
SELECT *
FROM sakila.customer c
WHERE first_name = "TAMMY"; -- AND first_name = "SANDER" ; 

-- updating the staff table:

SELECT * FROM sakila.staff;
INSERT INTO sakila.staff (staff_id, first_name , last_name, address_id , email, store_id , active, username, password , last_update)  
VALUES
(3, 'TAMMY','SANDERS',79,'TAMMY.SANDERS@sakilacustomer.org',2,1,'TAMMY', 'tammypassword', '2006-02-15 04:57:20');

-- checking if the update was successfully:
SELECT * from sakila.staff;

-- 3) Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1

-- checking which information we need to update the table rental:
SELECT * from sakila.rental;


-- getting the inventory_id:
SELECT *
FROM sakila.inventory
JOIN sakila.film f
WHERE f.title = 'Academy Dinosaur';



-- getting the customer_id:
SELECT customer_id
FROM sakila.customer
WHERE first_name="Charlotte" AND last_name="Hunter";


-- getting the staff_id:
SELECT * FROM sakila.staff;


-- adding the transaction to the table rental

SELECT * FROM sakila.rental;
INSERT INTO sakila.rental (rental_date, inventory_id, customer_id, staff_id, last_update)  
VALUES
('2005-05-26 00:00:00',1,130,1,'2006-05-26 00:00:00');





