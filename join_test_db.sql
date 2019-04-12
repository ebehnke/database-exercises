show databases;

create database join_test_db;
show tables;
CREATE TABLE roles (
                     id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                     name VARCHAR(100) NOT NULL,
                     PRIMARY KEY (id)
);

CREATE TABLE users (
                     id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                     name VARCHAR(100) NOT NULL,
                     email VARCHAR(100) NOT NULL,
                     role_id INT UNSIGNED DEFAULT NULL,
                     PRIMARY KEY (id),
                     FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
('bob', 'bob@example.com', 1),
('joe', 'joe@example.com', 2),
('sally', 'sally@example.com', 3),
('adam', 'adam@example.com', 3),
('jane', 'jane@example.com', 4),
('mike', 'mike@example.com', null);

# insert into users.name ,  (name, role_id)
# values ('new1', null),
#        ('new2', 'author'),
#        ('new3', 'author');

select * from users;
select * from roles;

SELECT users.name as user_name, roles.name as role_name
FROM users
       JOIN roles ON users.role_id = roles.id;

SELECT users.name AS user_name, roles.name AS role_name
FROM users
       LEFT JOIN roles ON users.role_id = roles.id;

SELECT users.name AS user_name, roles.name AS role_name
FROM users
       RIGHT JOIN roles ON users.role_id = roles.id;

SELECT users.name as user_name, roles.name as role_name
FROM roles
       LEFT JOIN users ON users.role_id = roles.id;

# describe users;
#
# select role_id from users;

use employees;
SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees. as e
       JOIN dept_emp as de
            ON de.emp_no = e.emp_no
       JOIN departments as d
            ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;


SELECT count(users.role_id) as total_users, roles.name as role_name
FROM roles
       JOIN users ON users.role_id = roles.id
group by users.role_id;