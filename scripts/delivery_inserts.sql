set search_path = workspace;

insert into Customer
	values (1, 'Гаврилин Александр', '2002-12-25 17:00:00');
	
insert into Customer
	values (2, 'Эшман Григорий', '2005-12-01 11:15:00');
	
insert into Customer
	values (3, 'Шашлова Настасья', '1963-01-07 12:00:00');

insert into Customer
	values (4, 'Вольпова Маргарита', '2009-09-20 22:30:00');

insert into Customer
	values (5, 'Мосяков Григорий', '1989-08-04 05:30:00');

insert into Customer
	values (6, 'Бережной Валентин', '1989-01-22 14:00:00');

insert into Customer
	values (7, 'Закрятин Роман', '1995-12-24 19:00:00');

insert into Customer
	values (8, 'Ярмоленко Виталя', '2011-10-26 11:30:00');

insert into Customer
	values (9, 'Чежеков Евгений', '1979-09-25 12:00:00');

insert into Customer
	values (10, 'Кузарин Макар', '1984-08-28 22:30:00');

insert into Customer
	values (11, 'Дудкин Арсений', '1985-05-07 23:30:00');

insert into Customer
	values (12, 'Кабальнов Ефим', '1974-05-21 15:30:00');
	
insert into Customer
	values (13, 'Головнина Лариса', '1962-12-08 20:00:00');

insert into Customer
	values (14, 'Серых Сергей', '1985-03-04 16:30:00');


insert into Restaurants
    values(1, 'KFC');
insert into Restaurants
    values(2, 'Burger King');
insert into Restaurants
    values(3, 'McDonald’s');
insert into Restaurants
    values(4, 'MILTI');
insert into Restaurants
    values(5, 'PIZZASUSHIWOK');
insert into Restaurants
    values(6, 'SUBWAY');
insert into Restaurants
    values(7, 'Dodopizza');
	

insert into Shops
    values(1, 'Пятёрочка');
insert into Shops
    values(2, 'Мираторг');
insert into Shops
    values(3, 'ВкусВилл');
insert into Shops
    values(4, 'Близнецы');
insert into Shops
    values(5, 'АРДИС');
	

insert into Products
    values(1, 'Sprite', 80, 500, 2, 1);
insert into Products
    values(2, 'Fanta', 85, 500, 2, 1);
insert into Products
    values(3, 'Соус Кетчуп', 47, 30, 1, 1);
insert into Products
    values(4, 'Соус сырный', 47, 30, 1, 1);
insert into Products
    values(5, 'Пивной сет', 150, 200, 3, 5);
insert into Products
    values(6, 'FuseTea', 140, 1000, 6, 5);
insert into Products
    values(7, 'Бельгийские вафли', 130, 100, 4, 4);
insert into Products
    values(8, 'LAYS', 185, 225, 6, 4);
insert into Products
    values(9, 'Морс', 220, 500, 6, 3);
insert into Products
    values(10, 'Ritter sport', 109, 100, 1, 2);
insert into Products
    values(11, 'Ritter sport', 109, 100, 6, 2);
insert into Products
    values(12, 'ORBIT', 40, 14, 2, 1);
insert into Products
    values(13, 'TWIX', 76, 82, 7, 1);

insert into Dishes
    values(1, 'Пицца Пепперони', 703, 560, 7);
insert into Dishes
    values(2, 'Пицца Карамельный ананас', 751, 550, 7);
insert into Dishes
    values(3, 'Пицца 4 сыра', 847, 540, 7);
insert into Dishes
    values(4, 'Пицца Сырная с ветчиной', 527, 560, 7);
insert into Dishes
    values(5, 'Пицца Гавайская', 615, 535, 7);
insert into Dishes
    values(6, 'Пицца Мясная', 895, 580, 7);
insert into Dishes
    values(7, 'Саб Тунец', 280, 291, 6);
insert into Dishes
    values(8, 'Саб курица Терияки', 285, 305, 6);
insert into Dishes
    values(9, 'Саб Альпийский', 280, 311, 6);
insert into Dishes
    values(10, 'Саб Грибной', 265, 291, 6);
insert into Dishes
    values(11, 'Саб овощной', 330, 462, 6);
insert into Dishes
    values(12, 'Саб индейка и ветчина', 455, 566, 6);
insert into Dishes
    values(13, 'Саб морепродукты', 445, 588, 6);
insert into Dishes
    values(14, 'Суши Филадельфия', 549, 240, 5);
insert into Dishes
    values(15, 'Суши Мичиган', 449, 240, 5);
insert into Dishes
    values(16, 'Суши Калифорния дрим', 559, 240, 5);
insert into Dishes
    values(17, 'Сет роллов Игорь', 549, 240, 5);
insert into Dishes
    values(18, 'Сельдь под шубой', 140, 250, 4);
insert into Dishes
    values(19, 'Паста со шпинатом', 230, 390, 4);
insert into Dishes
    values(20, 'Шницель с картофельным пюре', 230, 400, 4);
insert into Dishes
    values(21, 'Ассорти сырников', 140, 160, 4);
insert into Dishes
    values(22, 'Кукурузные блинчики', 120, 240, 4);
insert into Dishes
    values(23, 'Салат Цезарь', 140, 200, 4);
insert into Dishes
    values(24, 'Тыквенный крем-суп', 120, 330, 4);
insert into Dishes
    values(25, 'Спагетти карбонара', 200, 360, 4);
insert into Dishes
    values(26, 'Цезарь Ролл', 183, 217, 3);
insert into Dishes
    values(27, 'Чизкейк карамельный', 150, 125, 3);
insert into Dishes
    values(28, 'Двойной Роял', 219, 278, 3);
insert into Dishes
    values(29, 'Наггетс Бокс', 114, 147, 3);	
insert into Dishes
    values(30, 'ВОППЕР', 189, 273, 2);
insert into Dishes
    values(31, 'Чизбургер', 59, 112, 2);
insert into Dishes
    values(32, 'БЕКОНАЙЗЕР', 299, 335, 2);
insert into Dishes
    values(33, 'ВОППЕР РОЛЛ', 189, 221, 2);
insert into Dishes
    values(34, 'Цезарь Ролл', 183, 217, 2);
insert into Dishes
    values(35, 'ЛОНГ ЧИКЕН', 189, 207, 2);
insert into Dishes
    values(36, 'ЧИКЕН КИНГ', 139, 234, 2);
insert into Dishes
    values(37, 'СТРИПС КИНГ', 99, 201, 2);
insert into Dishes
    values(38, 'КАРТОФЕЛЬ ФРИ СТАНДАРТНЫЙ', 89, 100, 1);
insert into Dishes
    values(39, 'ЧИЗБУРГЕР ДЕ ЛЮКС', 149, 205, 1);
insert into Dishes
    values(40, 'ТВИСТЕР ДЕ ЛЮКС ОСТРЫЙ', 219, 178, 1);
insert into Dishes
    values(41, 'ТВИСТЕР ДЖУНИОР', 109, 132, 1);
insert into Dishes
    values(42, 'САНДЕРС БАСКЕТ ОРИГИНАЛЬНЫЙ', 269, 252, 1);
insert into Dishes
    values(43, 'ПИРОЖОК С ВИШНЕЙ', 65, 82, 1);
insert into Dishes
    values(44, '6 ЧИКЕН НАГГЕТСОВ', 69, 78, 1);
insert into Dishes
    values(45, 'БАЙТС СРЕДНИЕ', 149, 135, 1);


insert into Favourite_dish_list
    values(1, 25);
insert into Favourite_dish_list
    values(2, 6);
insert into Favourite_dish_list
    values(6, 8);
insert into Favourite_dish_list
    values(3, 21);
insert into Favourite_dish_list
    values(12, 27);
insert into Favourite_dish_list
    values(10, 23);
insert into Favourite_dish_list
    values(4, 14);
insert into Favourite_dish_list
    values(5, 30);
insert into Favourite_dish_list
    values(7, 1);
insert into Favourite_dish_list
    values(14, 25);
	
insert into Delivery_man
    values(1, 'Грицевец Филипп', '1984-04-05 15:30:00', 1);
insert into Delivery_man
    values(2, 'Черных Никита', '1975-08-28 05:30:00', 3);
insert into Delivery_man
    values(3, 'Ярский Григорий', '1973-01-26 12:00:00', 2);
insert into Delivery_man
    values(4, 'Снегирева Альбина', '1995-12-18 14:30:00', 4);
insert into Delivery_man
    values(5, 'Бобылёва Ирина', '1973-07-09 15:30:00', 1);
insert into Delivery_man
    values(6, 'Кресанова Лидия', '1968-05-18 23:00:00', 2);
insert into Delivery_man
    values(7, 'Лазаренко Юрин', '1975-08-22 20:30:00', 7);
insert into Delivery_man
    values(8, 'Кузарин Егор', '1970-10-04 19:30:00', 6);
insert into Delivery_man
    values(9, 'Спиридонов Петр', '1971-11-22 18:00:00', 7);
insert into Delivery_man
    values(10, 'Яцкевич Ефим', '1988-11-01 15:00:00', 5);
insert into Delivery_man
    values(11, 'Рашет Кира', '1971-06-25 22:00:00', 2);
insert into Delivery_man
    values(12, 'Ярощук Милана', '1993-01-24 16:00:00', 5);
insert into Delivery_man
    values(13, 'Челпанова Ася', '1980-12-05 07:30:00', 6);
insert into Delivery_man
    values(14, 'Коржакова Нина', '1973-10-14 03:30:00', 2);
insert into Delivery_man
    values(15, 'Нырков Семен', '1980-02-28 02:00:00', 4);
insert into Delivery_man
    values(16, 'Кондучалов Тарас', '1963-06-26 09:00:00', 1);
insert into Delivery_man
    values(17, 'Жолдин Герман', '1978-10-08 23:30:00', 4);
insert into Delivery_man
    values(18, 'Голумбовский Трофим', '1977-03-08 14:30:00', 6);
insert into Delivery_man
    values(19, 'Михалёв Григорий', '1983-11-10 01:00:00', 6);
insert into Delivery_man
    values(20, 'Романов Илья', '1971-12-01 23:00:00', 5);
insert into Delivery_man
    values(21, 'Кидирбаев Роман', '1975-02-26 08:00:00', 7);
insert into Delivery_man
    values(22, 'Низовский Макар', '1979-03-07 05:00:00', 3);
insert into Delivery_man
    values(23, 'Углов Алексей', '1970-06-28 05:30:00', 3);
	
insert into Restaurant_ban_list
    values(1, 9, 5, '2021-10-01 16:00:00');
insert into Restaurant_ban_list
    values(2, 13, 2, '2020-08-07 18:00:00');
insert into Restaurant_ban_list
    values(3, 8, 6, '2021-05-25 14:30:00');
insert into Restaurant_ban_list
    values(4, 14, 2, '2023-09-19 15:30:00');
insert into Restaurant_ban_list
    values(5, 13, 1, '2022-02-11 16:00:00');
	--1,3,4,6,7
insert into Operations
    values(1, 1, 4, 25, null, 17);
insert into Operations
    values(2, 12, 2, 32, 1, 3);
insert into Operations
    values(3, 13, 3, 27, null, 22);
insert into Operations
    values(4, 3, 1, 41, null, 5);
insert into Operations
    values(5, 4, 7, 4, 13, 9);
insert into Operations
    values(6, 1, 6, 9, null, 18);
insert into Operations
    values(7, 2, 4, 24, null, 15);
insert into Operations
    values(8, 7, 7, 1, 13, 7);
insert into Operations
    values(9, 8, 1, 44, 3, 16);
insert into Operations
    values(10, 7, 5, 15, null, 20);
insert into Operations
    values(11, 9, 3, 28, null, 2);
insert into Operations
    values(12, 10, 5, 14, null, 10);
insert into Operations
    values(13, 10, 6, 11, 9, 18);
insert into Operations
    values(14, 12, 1, 40, null, 1);
insert into Operations
    values(15, 13, 4, 22, 7, 17);
insert into Operations
    values(16, 14, 6, 9, 6, 19);
insert into Operations
    values(17, 1, 1, 42, null, 1);
insert into Operations
    values(18, 2, 2, 35, 12, 11);
insert into Operations
    values(19, 4, 4, 18, 7, 4);
insert into Operations
    values(20, 5, 6, 7, null, 8);
insert into Operations
    values(21, 7, 7, 5, 13, 12);
insert into Operations
    values(22, 9, 3, 26, 5, 23);
insert into Operations
    values(23, 11, 7, 4, null, 9);
insert into Operations
    values(24, 12, 1, 39, 4, 16);
insert into Operations
    values(25, 14, 3, 27, 2, 22);
insert into Operations
    values(26, 11, 5, 14, null, 12);
insert into Operations
    values(27, 9, 4, 13, 7, 15);
insert into Operations
    values(28, 10, 7, 3, 13, 7);
insert into Operations
    values(29, 13, 6, 13, 8, 18);
insert into Operations
    values(30, 3, 5, 17, null, 20);
insert into Operations
    values(31, 6, 3, 29, 5, 2);
