CREATE TABLE cohorts (
  id serial PRIMARY KEY,
  name varchar(255) NOT NULL,
  start_date DATE,
  end_date DATE
);

CREATE TABLE students (
  id serial PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  cohort_id INTEGER REFERENCES cohorts(id) ON DELETE CASCADE,
  email VARCHAR(255),
  phone VARCHAR (32),
  github VARCHAR (255),
  start_date DATE,
  end_date DATE
);