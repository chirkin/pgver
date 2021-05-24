
CREATE SCHEMA _data;

CREATE TABLE _data.animal (
  name text NOT NULL
);

INSERT INTO _data.animal (name)
  VALUES ('cat'), ('dog'), ('tiger'), ('rabbit');
