CREATE TABLE korisnici (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255),
    username VARCHAR(255),
    isAdmin  BOOLEAN DEFAULT false
);

CREATE TABLE recepti (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_email VARCHAR(255),
    title VARCHAR(255) NOT NULL,
    cookingTime INT NOT NULL,
    difficulty VARCHAR(50),
    instructions TEXT NOT NULL,
    FOREIGN KEY (user_email) REFERENCES korisnici(email) ON DELETE CASCADE
);

CREATE TABLE ingredients (
    id INT AUTO_INCREMENT PRIMARY KEY,
    recepti_id INT,
    ingredient_name VARCHAR(255) NOT NULL,
    amount VARCHAR(50),
    FOREIGN KEY (recepti_id) REFERENCES recepti(id) ON DELETE CASCADE
);