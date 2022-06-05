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