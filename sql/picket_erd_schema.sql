
CREATE TABLE member_role (
    id INT PRIMARY KEY,
    name VARCHAR(20)
);


CREATE TABLE member_status (
    id INT PRIMARY KEY,
    name VARCHAR(20)
);


CREATE TABLE member (
    id BIGINT PRIMARY KEY,
    name VARCHAR(15),
    email VARCHAR(100),
    password VARCHAR(255),
    nickname VARCHAR(30),
    member_role_id INT,
    member_status_id INT,
    FOREIGN KEY (member_role_id) REFERENCES member_role(id),
    FOREIGN KEY (member_status_id) REFERENCES member_status(id)
);


CREATE TABLE view_age (
    id INT PRIMARY KEY,
    name VARCHAR(45)
);


CREATE TABLE place (
    id BIGINT PRIMARY KEY,
    name VARCHAR(45),
    postal_code VARCHAR(10),
    city VARCHAR(50),
    district VARCHAR(50),
    street VARCHAR(100),
    detail VARCHAR(100),
    created_date TIMESTAMP,
    updated_date TIMESTAMP
);


CREATE TABLE seat_grade (
    id INT PRIMARY KEY,
    name VARCHAR(10)
);


CREATE TABLE seat (
    id INT PRIMARY KEY,
    grade VARCHAR(45),
    row VARCHAR(45),
    col VARCHAR(45),
    place_id BIGINT,
    seat_grade_id INT,
    FOREIGN KEY (place_id) REFERENCES place(id),
    FOREIGN KEY (seat_grade_id) REFERENCES seat_grade(id)
);


CREATE TABLE product (
    id BIGINT PRIMARY KEY,
    name VARCHAR(45),
    place_id BIGINT,
    view_age_id INT,
    FOREIGN KEY (place_id) REFERENCES place(id),
    FOREIGN KEY (view_age_id) REFERENCES view_age(id)
);
