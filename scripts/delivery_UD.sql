set search_path = workspace;

-- support insert
insert into Customer (Customer_id, customer_nm, birth_dt)
    values (45, 'Маск Илон', '1971-06-28 12:15:00');
-- end of support insert

update Favourite_dish_list set dish_id = 5 Where dish_id = 6;
update Favourite_dish_list set dish_id = 6 Where dish_id = 5;
-- При удалении человека из таблицы стирается вся информация о нем из всех таблиц
delete from Customer
    where customer_nm = 'Маск Илон';

-- support insert
insert into Restaurants (Restaurant_id, restaurant_nm)
    values (29, 'ttt');
-- end of support insert

-- Ошибка при измении restaurant_nm на несуществующий
update
    Restaurants
set
    Restaurant_nm = 'tkkt'
where
    Restaurant_id = 29;

update Restaurants set Restaurant_nm = 'afsdgas' Where Restaurant_nm = 'Miami Burger';

delete from Restaurants
    where Restaurant_nm = 'Miami Burger';
