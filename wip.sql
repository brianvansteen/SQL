CREATE TABLE book (
    id INT AUTO_INCREMENT,
    publisher_id INT,
    name VARCHAR(50),
    price DECIMAL (5, 2),
    PRIMARY KEY (id),
    FOREIGN KEY (publisher_id) REFERENCES publisher(id)
);


INSERT INTO publisher (name, address) VALUES ('McGraw', 'somewhere1');

INSERT INTO book (publisher_id, name, price) VALUES ((SELECT id FROM publisher WHERE publisher.name = 'Random'), 'Python', 25);

SELECT book.name, book.price, publisher.name FROM book JOIN publisher ON book.publisher_id = publisher.id WHERE publisher.name = 'Random';

CREATE TABLE museum (
    id INT AUTO_INCREMENT,
    name VARCHAR(50),
    address VARCHAR (100),
    website VARCHAR (100),
    PRIMARY KEY (id)
);

CREATE TABLE artwork (
    id INT AUTO_INCREMENT,
    museum_id INT,
    name VARCHAR(50),
    artist VARCHAR (100),
    type VARCHAR (50),
    PRIMARY KEY (id),
    FOREIGN KEY (museum_id) REFERENCES museum(id)
);

INSERT INTO museum (name, address, website) VALUES ('National', 'somewhere1', 'someWWW1'), ('Louvre', 'somewhere1', 'someWWW1'), ('Modern', 'somewhere1', 'someWWW1');

INSERT INTO artwork (museum_id, name, artist, type) VALUES ((SELECT id FROM museum WHERE museum.name = 'Lourve'), 'Victory', 'Delacroit', 'painting');

INSERT INTO artwork (museum_id, name, artist, type) VALUES ((SELECT id FROM museum WHERE museum.name = 'Louvre'), 'Bathtub', 'Maes', 'painting');

INSERT INTO artwork (museum_id, name, artist, type) VALUES ((SELECT id FROM museum WHERE museum.name = 'National'), 'Bob', 'Degas', 'sculpture');

INSERT INTO artwork (museum_id, name, artist, type) VALUES ((SELECT id FROM museum WHERE museum.name = 'National'), 'Jupiter', 'Degas', 'sculpture');

INSERT INTO artwork (museum_id, name, artist, type) VALUES ((SELECT id FROM museum WHERE museum.name = 'Modern'), 'blob', 'Ramizzo', 'unknown');

INSERT INTO artwork (museum_id, name, artist, type) VALUES ((SELECT id FROM museum WHERE museum.name = 'Modern'), 'cars', 'Ramizzo', 'sculpture');

INSERT INTO artwork (museum_id, name, artist, type) VALUES (NULL, 'Lakes', 'Jane', 'painting');

SELECT artwork.name, artwork.artist, museum.name FROM artwork LEFT JOIN museum ON artwork.museum_id = museum_id;

SELECT artwork.name, artwork.artist, museum.name FROM artwork JOIN museum ON artwork.museum_id = museum_id;
