CREATE TABLE lists (
  id serial PRIMARY KEY,
  name text NOT NULL UNIQUE
);

CREATE TABLE todos (
  id serial PRIMARY KEY,
  name text NOT NULL,
  list_id integer
    REFERENCES lists(id)
    ON DELETE CASCADE
    NOT NULL,
  completed boolean NOT NULL DEFAULT false
);