-- DESC shelter;
-- SHOW TABLES;
-- SHOW COLUMNS FROM cats;
-- SELECT * FROM cats;
-- INSERT INTO cats (cat_name) VALUES ('Sassy');

-- SELECT name, age FROM fav_cats;

-- SELECT name, age FROM fav_cats WHERE age = 11;

-- SELECT name, breed, age FROM fav_cats WHERE name = 'ringo';

-- SELECT * FROM fav_cats WHERE age > 4;

-- SELECT cat_id, age FROM fav_cats WHERE cat_id = age;

-- INSERT INTO fav_cats (name, breed, age) VALUES ('Ragdoll', 'ragdoll', 8);

SELECT cat_id, name FROM fav_cats WHERE name = breed;