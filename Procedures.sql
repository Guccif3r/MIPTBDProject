set search_path = workspace;

CREATE FUNCTION get_dishes_top(res_id bigint, sz bigint)
RETURNS TABLE (
    Dish_id bigint,
    dish_nm bigint,
    cnt bigint
) 
AS $$
DECLARE
BEGIN
    RETURN QUERY SELECT o.Dish_id, d.dish_nm, COUNT(o.Dish_id)
    FROM
    Operations o
    JOIN
    Dishes d
    ON o.Dish_id = d.Dish_id
    WHERE o.Restaurant_id = res_id
    GROUP BY o.Dish_id, d.dish_nm
    ORDER BY COUNT(o.Dish_id)
    LIMIT sz;
END
$$ LANGUAGE plpgsql;

CREATE FUNCTION get_favourite_operations(res_id bigint)
RETURNS TABLE (
    Operation_id bigint
)
AS $$
DECLARE
BEGIN
    RETURN QUERY SELECT DISTINCT Operation_id
    FROM
    Operations o
    JOIN
    Favourite_dish_list f
    ON o.Dish_id = f.Dish_id AND o.Customer_id = f.Customer_id AND o.Restaurant_id = res_id;
END
$$ LANGUAGE plpgsql;

CREATE FUNCTION check_birth_date()
RETURNS trigger
AS $$
DECLARE
BEGIN
    IF (EXTRACT (YEAR FROM (current_date - NEW.birth_dt)) <= 18) THEN
        DELETE FROM Delivery_man
       	WHERE Delivery_id = NEW.Delivery_id;	
    END IF;
END
$$ LANGUAGE plpgsql;

CREATE FUNCTION apply_discount()
RETURNS trigger
AS $$
DECLARE
BEGIN
    IF (NEW.Operation_id in (SELECT Operation_id FROM get_favourite_operations(NEW.Restaurant_id))) THEN
	UPDATE Operations
	SET Discount = 50
	WHERE Operation_id = NEW.Operation_id;
    END IF;
END
$$ LANGUAGE plpgsql;

