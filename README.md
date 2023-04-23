# ER-модель

## Предметная область

Предметной областью данной базы данных будет **Сервис Доставки**

## Ключевые сущности

- Продукты
- Блюда
- Рестораны
- Доставщики
- Покупатели
- Магазины
- Операции(Покупки)

## Описание связей

1) **Покупатель - Блюдо**

Каждый покупатель имеет ровно одно любимое блюдо. При этом любое блюдо может быть любимым у любого числа покупателей, в том числе 0.

2) **Покупатель - Ресторан**

Ресторан имеет бан список с покупателями, в каждом ресторане может быть много покупателей в бан листе. При этом каждый покупатель может быть в бан листах у многих покупателей.

3) **Покупатель - Операция**

В каждой операции участвует ровно 1 покупатель. При этом каждый покупатель может быть в нескольких операциях.

4) **Ресторан - Операция**

В каждой операции участвует ровно 1 ресторан. При этом каждый ресторан может быть в нескольких операциях.

5) **Ресторан - Доставщик**

В каждом ресторане может быть несколько доставщиков, но каждый доставщик работает одновременно ровно в одном ресторане.

6) **Продукт - Операция**

В каждой операции участвует ровно 1 продукт. При этом каждый продукт может быть в нескольких операциях.

7) **Операцмя - Блюдо**

В каждой операции участвует ровно 1 блюдо. При этом каждое блюдо может быть в нескольких операциях.

8) **Продукт - Магазин**

Каждый продукт производится ровно в одном магазине. При этом в магазине может производиться любое число продуктов.

9)  **Операция - Доставщик**

В каждой операции участвует ровно 1 доставщик. При этом каждый доставщик может быть в нескольких операциях.

10)  **Магазин - Операция**

В каждой операции участвует ровно 1 магазин. При этом каждый магазин может быть в нескольких операциях.
