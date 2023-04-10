set search_path = workspace;

-- Поможет в WHERE по price/weight
CREATE INDEX ON Products(price);
CREATE INDEX ON Products(weight);
CREATE INDEX ON Dishes(price);
CREATE INDEX ON Dishes(weight);
