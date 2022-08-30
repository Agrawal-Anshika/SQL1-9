-- create database product_db

-- use product_db
-- create table categories(
--     cid INTEGER PRIMARY key,
--     ctitle varchar(30),
--     cdescription varchar(50)
-- );

-- CREATE TABLE products(
--     pid INTEGER PRIMARY key,
--     ptitle varchar(30),
--     pprice DECIMAL(10,2),
--     pdescription varchar(50),
--     pcompany varchar(25),
--     category INTEGER,
--     FOREIGN KEY (category) REFERENCES categories(cid)
-- );

-- CREATE TABLE orders(
--     orid INTEGER PRIMARY KEY,
--     total int,
--     o_date date

-- );

-- CREATE TABLE order_details(
--     odid INTEGER PRIMARY KEY,
--     quantity INTEGER,
--     odprice decimal(10,2),
--     totalprice decimal(10,2),
--     discount decimal(10,2),
--     orderId INTEGER,
--     FOREIGN KEY (orderId) REFERENCES orders(orid),
--     productId INTEGER,
--     FOREIGN KEY (productId) REFERENCES products(pid)
-- );


-- INSERT into categories (cid, ctitle, cdescription)
-- values(10,'tv-set','black color 32X32 size'),(20,'Laptop','Blue Dell 14 X 20 size'),(30,'Washing-Machine','Red colour easy to handle it'),(40,'Buds','white with high quality sound');
-- select * from orders;

-- insert into products(pid, ptitle,pprice,pdescription,pcompany,category)
-- values(101,'Big-TV',10000,'High Resolution','LG',10),
-- (102,'Small-TV',9000,'Low Quality','Samsung',10),
-- (103,'High-end laptop',20000,'256Gb SSD','Lenevo',20),
-- (104,'Fast-WM',15000,'Good quality','Videocon',30),
-- (105,'Medium-WM',10000,'Low Quality','Samsung',30),
-- (106,'High-Volume',6000,'Cool Quality','One-Plus',40);

-- insert into orders(orid,total,o_date)
-- values(600,2,'2018-01-22'),
-- (601,1,'2019-02-25'),
-- (602,3,'2020-04-15'),
-- (603,2,'2021-02-24'),
-- (604,4,'2021-11-30'),
-- (605,5,'2022-03-16');

-- insert into order_details(odid, quantity, odprice, totalprice, discount, orderId, productId)
-- values(800,2,10000,20000,2000,600,101),
-- (801,1,9000,9000,1350,601,102),
-- (802,3,6000,18000,1800,602,106),
-- (803,5,20000,100000,30000,605,103),
-- (804,2,10000,20000,2000,603,105);

-- select * from order_details;