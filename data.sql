
-- Drop the dependent table first
DROP TABLE IF EXISTS messages;

DROP TABLE IF EXISTS users;

CREATE TABLE users (
    username text PRIMARY KEY,
    password text NOT NULL,
    first_name text NOT NULL,
    last_name text NOT NULL,
    phone text NOT NULL,
    join_at timestamp without time zone DEFAULT current_timestamp,
    last_login_at timestamp with time zone
);

CREATE TABLE messages (
    id SERIAL PRIMARY KEY,
    from_username text NOT NULL REFERENCES users(username) ON DELETE CASCADE,
    to_username text NOT NULL REFERENCES users(username) ON DELETE CASCADE,
    body text NOT NULL,
    sent_at timestamp with time zone NOT NULL,
    read_at timestamp with time zone
);
