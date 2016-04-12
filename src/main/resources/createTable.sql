CREATE TABLE users (
  id INT(8) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(25) NOT NULL,
  age INT(3) NOT NULL,
  admin BOOLEAN NOT NULL DEFAULT FALSE,
  createDate TIMESTAMP(4)
);

INSERT INTO users (name, age, admin) VALUES (
    'alex', 21, FALSE
);

