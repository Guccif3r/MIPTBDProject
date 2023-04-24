SET search_path = workspace;

--Вывести количество заказчиков младше 18 лет

SELECT DISTINCT
    'Customer' AS table_name,
    count(customer_nm) AS cnt
FROM Customer
        INNER JOIN Operations ON Operations.Customer_id = Customer.Customer_id
WHERE
        Customer.birth_dt < '2006-01-01 00:00:00';


--Вывести количество тех, кто заказывал TWIX.

SELECT DISTINCT
    'Operations1' AS table_name,
    count(c.customer_nm) AS cnt
FROM operations
INNER JOIN customer c ON c.customer_id = operations.customer_id
WHERE Product_id = 13;

--Вывести количество ресторанов, в которых заказали больше 4 блюд.

SELECT
    'Operations2' AS table_name,
    count(r.restaurant_nm) AS cnt
FROM Restaurants r
INNER JOIN Operations ON Operations.Restaurant_id = r.Restaurant_id
GROUP BY r.Restaurant_id
HAVING count(*) > 4;

-- Найти топ три блюда, которые часто заказывались

SELECT
    d.dish_nm
FROM
    Dishes d
INNER JOIN
    Operations
        ON d.Dishes_id = Operations.Dish_id
GROUP BY
    d.Dishes_id
ORDER BY
    count(*) DESC
limit
    3;


-- Вывести для каждого ресторана суммарную прибыль

SELECT DISTINCT
r.restaurant_nm,
sum(d.price) OVER (PARTITION BY r.restaurant_nm) AS Proceeds
FROM Restaurants r
INNER JOIN Operations ON Operations.Restaurant_id = r.Restaurant_id
INNER JOIN Dishes d ON d.Dishes_id = Operations.Dish_id
ORDER BY proceeds DESC;

-- Вывести все блюда в порядке очереди как в заказах, которые когда-то заказывали и стоящие более 149 рублей, так же обозначить в отдельном столбце, место в отсортированном списке по цене.

SELECT DISTINCT
row_number() OVER (ORDER BY d.price DESC),
d.dish_nm, d.price
FROM Dishes d
INNER JOIN Operations ON d.Dishes_id = Operations.Dish_id
WHERE d.price > 149;

-- Вывести имена всех доставщиков, которые по возрасту от 25 до 30 лет

SELECT DISTINCT
deliver_nm
FROM Delivery_man
INNER JOIN Operations ON Operations.Deliver_id = Delivery_man.Delivery_id
WHERE 
Delivery_man.birth_dt > '1992-01-01 00:00:00' AND 
Delivery_man.birth_dt < '1997-01-01 00:00:00';

-- Вывести следующее заказанное блюдо в том же ресторане.

SELECT DISTINCT
d.dish_nm, Operations.Restaurant_id, Operations.Dish_id,
LEAD(Operations.Dish_id) OVER (PARTITION BY Operations.Restaurant_id ORDER BY Operations.Dish_id)
FROM Operations
INNER JOIN Dishes d ON d.Dishes_id = Operations.Dish_id
ORDER BY Operations.Dish_id;

-- Вывести количество блюд, которые можно заказать

SELECT
    'Dishes' AS table_name,
    count(*) AS cnt
FROM Dishes
