CREATE TABLE IF NOT EXISTS Worker (
	id SERIAL PRIMARY KEY,
	name varchar(80) NOT NULL,
	department_id integer UNIQUE NOT NULL,
	boss_id integer REFERENCES Worker(id)
);

CREATE TABLE IF NOT EXISTS Departament (
	department_id integer PRIMARY KEY REFERENCES Worker(department_id),
	name varchar(100) NOT NULL,
	boss_id integer UNIQUE REFERENCES Worker(id)
);