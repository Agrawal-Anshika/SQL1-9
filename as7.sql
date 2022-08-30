--use sales_db;
SELECT * FROM customers
SELECT * FROM salespeople
SELECT * FROM orders

-- Write a query that lists each order number followed by the name of the customer who made the
-- order.
        SELECT o.onum, c.cname FROM orders o ,customers c WHERE c.cnum = o.cnum
-- Write a query that gives the names of both the salesperson AND the customer for each order along
-- with the order number.
        SELECT s.sname, c.cname, o.onum FROM orders o, salespeople s, customers c WHERE o.snum = c.snum AND o.snum = s .snum
-- Write a query that produces all customers serviced by salespeople with a commission above 12%.
-- Output the customer’s name, the salesperson’s name, AND the salesperson’s rate of commission
        SELECT c.cname, s.sname , comm*100 "Rate of Comm" FROM customers c, salespeople s WHERE c.snum = s.snum AND comm >.12
-- Write a query that calculates the amount of the salesperson’s commission on each order by a
-- customer with a rating above 100.
        SELECT s.sname, (o.amt*s.comm)*100 as salesPersonsCommission
        FROM orders o join salespeople s
        on o.snum = s.snum
        join customers c on o.cnum = c.cnum
        WHERE c.rating > 100;
-- Write a query that produces all pairs of salespeople who are living in the same city.Exclude
-- combinations of salespeople with themselves as well as duplicate rows with the order reversed
        SELECT s.sname, n.sname, s.city
        FROM salespeople s, salespeople n WHERE s.city=n.city AND s.sname<n.sname