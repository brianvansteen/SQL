-- PostgreSQL
CREATE TYPE employment_status AS ENUM('employed', 'self-employed', 'other');

CREATE TABLE users (
    full_name VARCHAR(200),
    yearly_salary INT,
    -- MySQL
    -- current_status ENUM('employed', 'self-employed', 'other')
    
    -- PostgreSQL
    current_status employment_status
);

CREATE TABLE devices (
    id INT AUTO_INCREMENT primary key NOT NULL,
    device_type ENUM ('Doorbell', 'Thermostat', 'Smoke alarm', 'Doorlock', 'Video'),
    device_name VARCHAR(20) NOT NULL,
    activation ENUM ('On', 'Off'),
    locked ENUM ('Yes', 'No'),
    temperature TINYINT signed DEFAULT NULL
);

