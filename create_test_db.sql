USE join_test_db;
DROP TABLE IF EXISTS users;

DROP TABLE IF EXISTS roles;


CREATE TABLE roles
(
    id   INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);


CREATE TABLE users
(
    id      INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name    VARCHAR(100) NOT NULL,
    email   VARCHAR(100) NOT NULL,
    role_id INT UNSIGNED DEFAULT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (role_id) REFERENCES roles (id)
);


INSERT INTO roles (name)
VALUES ('admin');
INSERT INTO roles (name)
VALUES ('author');
INSERT INTO roles (name)
VALUES ('reviewer');
INSERT INTO roles (name)
VALUES ('commenter');

INSERT INTO users (name, email, role_id)
VALUES ('bob', 'bob@example.com', 1),
       ('joe', 'joe@example.com', 2),
       ('Luke', 'Luke@example.com', 2),
       ('Kara', 'Kara@example.com', 2),
       ('Frankie', 'Frankie@example.com', 2),
       ('sally', 'sally@example.com', 3),
       ('adam', 'adam@example.com', 3),
       ('jane', 'jane@example.com', null),
       ('mike', 'mike@example.com', null),
       ('Newguy', 'Newguy@example.com', null);

SELECT users.name as user_name, roles.name as role_name
FROM users
         JOIN roles ON users.role_id = roles.id;

SELECT users.name as user_name, roles.name as role_name
FROM users
         LEFT JOIN roles ON users.role_id = roles.id;

SELECT users.name as user_name, roles.name as role_name
FROM users
         RIGHT JOIN roles ON users.role_id = roles.id;

SELECT COUNT(*), roles.name as role_name
FROM users
JOIN roles ON users.role_id = roles.id
GROUP BY role_name;

