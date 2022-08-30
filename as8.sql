
use sales_db

-- 1)Write a query that uses a subquery to obtain all orders for the customer named Cisneros. Assume
-- you do not know his customer number (cnum).
    SELECT orders.onum FROM orders WHERE cnum in (SELECT cnum FROM customers WHERE cname = 'cisneros')

-- 2)Write a query that produces the names and ratings of all customers who have above- average
-- orders.
    SELECT cname,rating ,cnum FROM customers WHERE cnum in (SELECT cnum  from orders WHERE amt>(SELECT avg(amt) FROM orders))

-- 3)Write a query that selects the total amount in orders for each salesperson for whom this total is
-- greater than the amount of the largest order in the table.
    SELECT sum(amt) FROM orders group by snum having sum(amt)>(SELECT max(amt) FROM orders)

-- 4)Write a query that selects all customers whose ratings are equal to or greater than ANY of Serres.
   SELECT * FROM customers WHERE rating>= ANY(SELECT rating FROM customers WHERE snum in (SELECT snum FROM salespeople WHERE sname='serres'))

-- 5)Write a query using ANY or ALL that will find all salespeople who have no customers located in
-- their city.
    SELECT snum from salespeople WHERE (snum , city) NOT in(SELECT snum,city FROM customers )

-- 6)Write a query that selects all orders for amounts greater than any for the customers in London.
    SELECT * FROM orders WHERE amt >any (SELECT cnum FROM orders WHERE cnum in(SELECT cnum FROM customers WHERE city='London'))

-- 7)Extract all the orders of Motika.
    SELECT * FROM orders WHERE snum=(SELECT snum FROM salespeople WHERE sname='Motika')

-- 8)Find all the order attribute to salespeople servicing customers in London.
    SELECT * FROM orders WHERE snum in(SELECT snum FROM salespeople WHERE city='London')

-- 9)Find names and numbers of all salesperson who have more than one customer.
    SELECT sname ,snum FROM salespeople  where snum in(SELECT snum FROM customers group by snum having count(*)>1) 

-- 10. Find-- salespeople number,name and city who have multiple customers.
    SELECT sname , snum ,city FROM salespeople WHERE snum in(SELECT snum FROM customers group by snum having count(*)>1) 

-- 11)SELECT customers who have a greater rating than any other customer in Rome.
    SELECT cname FROM customers WHERE rating > any (SELECT rating FROM customers WHERE city='rome')

-- 12)SELECT all orders that had amounts that were greater that at least one of the orders FROM ‘1990-10-04’ .
    SELECT * FROM orders WHERE amt > (SELECT min(amt) FROM orders WHERE odate='1990-10-04')

-- 13)Find all orders with amounts smaller than any amount for a customer in San Jose. 
    SELECT * FROM orders WHERE amt < any (SELECT amt FROM orders ,customers WHERE city='san jose' and orders.cnum=customers.cnum)

--14. SELECT those customers whose rating are higher than every customer in Paris.
    SELECT * FROM customers WHERE rating > all (SELECT rating FROM customers WHERE city='paris')

