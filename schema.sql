DROP TABLE IF EXISTS users;

CREATE TABLE users(
  id SERIAL PRIMARY KEY,
  avatar VARCHAR(500),
  email VARCHAR(255) NOT NULL,
  encrypted_password VARCHAR(255) NOT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT now()
);

CREATE UNIQUE INDEX email ON users(email);

DROP TABLE IF EXISTS todos;

CREATE TABLE todos(
  id SERIAL PRIMARY KEY,
  user_id INTEGER NOT NULL,
  title VARCHAR(255) NOT NULL,
  completed BOOLEAN DEFAULT false,
  created_at TIMESTAMP NOT NULL DEFAULT now(),
  rank INTEGER NOT NULL
);

INSERT INTO
  users (avatar, email, encrypted_password, created_at)
VALUES
  (NULL, 'e@e.com', 123, now());
