DROP TABLE IF EXISTS `users`;
DROP TABLE IF EXISTS `recipients`;

CREATE TABLE users (
    user_id int PRIMARY KEY,
    first_name varchar(83),
    last_name varchar(83),
    email varchar(83)
);

CREATE TABLE recipients (
    recipient_id int PRIMARY KEY,
    user_id int,
    routing_number varchar(20),
    national_id varchar(20),
    account_number varchar(20),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);
