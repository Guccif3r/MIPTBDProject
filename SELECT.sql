set search_path = workspace;

--Вывести у кого какое любое блюдо.

Select r.customer_nm, d.dish_nm from(
SELECT c.customer_nm, f.dish_id
FROM Favourite_dish_list f
inner join Customer c ON f.customer_id = c.customer_id) as r
inner join Dishes d ON d.dishes_id = r.dish_id;

--Вывести всех, кто заказывал TWIX.

select DISTINCT c.customer_nm
from operations
inner join customer c ON c.customer_id = operations.customer_id
Where Product_id = 13;


--Вывести рестораны, в которых заказали больше 4 блюд.

select r.restaurant_nm
from Restaurants r
inner join Operations on Operations.Restaurant_id = r.Restaurant_id
group by r.Restaurant_id
having count(*) > 4;

-- Найти топ три блюда, которые часто заказывались

select
    d.dish_nm
from
    Dishes d
inner join
    Operations
        on d.Dishes_id = Operations.Dish_id
group by
    d.Dishes_id
order by
    count(*) desc
limit
    3;


-- Вывести для каждого ресторана суммарную прибыль

select DISTINCT
r.restaurant_nm,
sum(d.price) OVER (PARTITION BY r.restaurant_nm) as Proceeds
from Restaurants r
inner join Operations on Operations.Restaurant_id = r.Restaurant_id
inner join Dishes d on d.Dishes_id = Operations.Dish_id
Order by proceeds desc;

-- Вывести все блюда в порядке очереди как в заказах, которые когда-то заказывали и стоящие более 149 рублей, так же обозначить в отдельном столбце, место в отсортированном списке по цене.

select DISTINCT
row_number() OVER (ORDER BY d.price desc),
d.dish_nm, d.price
From Dishes d
inner join Operations on d.Dishes_id = Operations.Dish_id
WHERE d.price > 149;

-- Вывести имена всех доставщиков, которые по возрасту от 25 до 30 лет

select DISTINCT
deliver_nm
FROM Delivery_man
inner join Operations on Operations.Deliver_id = Delivery_man.Delivery_id
WHERE 
Delivery_man.birth_dt > '1992-01-01 00:00:00' AND 
Delivery_man.birth_dt < '1997-01-01 00:00:00';

-- ВЫвести следующее заказанное блюдо в том же ресторане.

select DISTINCT
d.dish_nm, Operations.Restaurant_id, Operations.Dish_id,
LEAD(Operations.Dish_id) OVER (Partition by Operations.Restaurant_id ORDER by Operations.Dish_id)
FROM Operations
inner join Dishes d on d.Dishes_id = Operations.Dish_id
ORDER by Operations.Dish_id;

