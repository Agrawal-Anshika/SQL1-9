use sales_db
select * from orders
--Create an index that will enable a user to pull orders for ‘1990-10-03’ out of the Orders table quickly.
    create index d_order on orders(odate) where odate='1990-10-03'
--If the Orders table has already been created, how can you force the onum field to be unique (assume all current values are unique)?
    Alter table orders add  unique(onum)
--Create an index that would permit salesperson to retrieve his orders.
    create index I_Order on orders(odate)
--Let us assume that each salesperson is to have only one customer of a given rating, and that this is currently the case. Create an index that enforces it.
    create index sales_cust on customers(snum,cnum,rating)
--Create an index to speed up searching order on a given date by given customer
    create index search_order  on orders(odate)

 