DROP TABLE IF EXISTS `users`;
DROP TABLE IF EXISTS `recipients`; 
DROP TABLE IF EXISTS `transactions`;

CREATE TABLE users (
    user_id int PRIMARY KEY,
    first_name varchar(83),
    last_name varchar(83),
    email varchar(83)
);

CREATE TABLE recipients (
    recipient_id int AUTO_INCREMENT PRIMARY KEY,
    user_id int,
    routing_number varchar(20),
    national_id varchar(20),
    account_number varchar(20),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE transactions (
    transaction_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    recipient_id INT,
    amount DECIMAL(10, 2),
    transaction_type VARCHAR(50),
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (recipient_id) REFERENCES recipients(recipient_id)
);

INSERT INTO users (user_id, first_name, last_name, email)
VALUES
(1, 'Luis', 'Gonzalez', 'luis@example.com'),
(2, 'Maria', 'Rodriguez', 'maria@example.com'),
(3, 'Carlos', 'Lopez', 'carlos@example.com'),
(4, 'Ana', 'Perez', 'ana@example.com'),
(5, 'Javier', 'Martinez', 'javier@example.com'),
(6, 'Sofia', 'Hernandez', 'sofia@example.com'),
(7, 'Diego', 'Diaz', 'diego@example.com'),
(8, 'Valentina', 'Torres', 'valentina@example.com'),
(9, 'Mateo', 'Jimenez', 'mateo@example.com'),
(10, 'Camila', 'Gomez', 'camila@example.com'),
(11, 'Daniel', 'Castro', 'daniel@example.com'),
(12, 'Fernanda', 'Sanchez', 'fernanda@example.com'),
(13, 'Sebastian', 'Ramirez', 'sebastian@example.com'),
(14, 'Valeria', 'Ortiz', 'valeria@example.com'),
(15, 'Adrian', 'Morales', 'adrian@example.com'),
(16, 'Ximena', 'Guerrero', 'ximena@example.com'),
(17, 'Joaquin', 'Vargas', 'joaquin@example.com'),
(18, 'Aitana', 'Fuentes', 'aitana@example.com'),
(19, 'Emiliano', 'Mendoza', 'emiliano@example.com'),
(20, 'Victoria', 'Soto', 'victoria@example.com');