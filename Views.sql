set search_path = workspace;

CREATE VIEW Customer_ids AS
SELECT customer_id
FROM Customer
WITH CASCADED CHECK OPTION;

CREATE VIEW DeliveryIds AS
SELECT
delivery_id,
restaurant_id 
FROM Delivery_man
WITH CASCADED CHECK OPTION;

CREATE VIEW Product_sells AS
SELECT 
Operation_id,
Customer_id,
Restaurant_id,
Product_id,
Deliver_id
FROM Operations
WITH CASCADED CHECK OPTION;

CREATE VIEW Dish_sells AS
SELECT 
Operation_id,
Customer_id,
Restaurant_id,
Dish_id,
Deliver_id
FROM Operations
WITH CASCADED CHECK OPTION;

CREATE VIEW Active_ban_list AS
SELECT *
FROM Restaurant_ban_list
WHERE current_date - ban_dt <= 365
WITH CASCADED CHECK OPTION;

CREATE VIEW Total_sells AS
SELECT
o.Operation_id,
o.Customer_id,
o.Deliver_id,
o.Restaurant_id,
o.Product_id,
o.Dish_id,
(CASE WHEN d.dish_nm IS NULL THEN p.product_nm ELSE d.dish_nm END) nm,
(CASE WHEN d.price IS NULL THEN p.price ELSE d.price END) price,
(CASE WHEN d.weight IS NULL THEN p.weight ELSE d.weight END) weight
FROM
Operations o
LEFT JOIN
Dishes d
ON
o.Dish_id = d.Dishes_id
LEFT JOIN
Products p
ON
o.Product_id = p.Product_id;

CREATE VIEW Shop_sells AS
SELECT
p.Product_id,
p.product_nm,
p.price,
p.weight,
p.Restaurant_id,
p.Shop_id,
s.Shop_nm
FROM
Shops s
JOIN
Products p
ON
s.Shop_id = p.Shop_id;
