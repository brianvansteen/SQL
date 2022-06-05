-- SELECT 'Hello world!!!';

CREATE TABLE shelter (
    animal_type VARCHAR(30) NOT NULL DEFAULT 'to be provided',
    animal_name VARCHAR(30) NOT NULL DEFAULT 'unnamed',
    animal_colour VARCHAR(30) NOT NULL DEFAULT 'to be added',
    animal_age INT NOT NULL DEFAULT 99
);

CREATE TABLE pets (
    cat_id INT NOT NULL AUTO_INCREMENT,
    cat_name VARCHAR(20),
    cat_age INT,
    cat_colour VARCHAR(20),
    PRIMARY KEY (cat_id)
);

INSERT INTO pets (cat_name, cat_age, cat_colour)
    VALUES ('Sassy', 16, 'Russian blue'),
    ('Parnell', 20, 'orange and white'),
    ('Fuzzy', 18, 'black'),
    ('Stripe', 16, 'black'),
    ('Stripe', 16, 'black')
;

-- MySQL
CREATE TABLE family (
    cat_id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    cat_name VARCHAR(20) NOT NULL DEFAULT 'to be added',
    cat_age INT NOT NULL DEFAULT 99,
    cat_colour VARCHAR(20) NOT NULL DEFAULT 'to be added'
);

-- PostgreSQL
CREATE TABLE family (
    cat_id SERIAL PRIMARY KEY,
    cat_name VARCHAR(20) NOT NULL DEFAULT 'to be added',
    cat_age INT NOT NULL DEFAULT 99,
    cat_colour VARCHAR(20) NOT NULL DEFAULT 'to be added'
);

-- DESC for PostgreSQL
SELECT
    table_name,
    column_name,
    data_type
FROM
    information_schema.COLUMNS
WHERE
    table_name = 'cats';