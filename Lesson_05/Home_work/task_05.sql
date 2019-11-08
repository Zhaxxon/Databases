/* Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели. Следует учесть, что необходимы
дни недели текущего года, а не года рождения. */

CREATE DATABASE IF NOT EXISTS shop;

USE shop;

DROP TABLE IF EXISTS users;

CREATE TABLE IF NOT EXISTS users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Покупатели';

INSERT INTO users (name, birthday_at) VALUES
  ('Геннадий', '1990-10-05'),
  ('Наталья', '1984-11-12'),
  ('Александр', '1985-05-20'),
  ('Сергей', '1988-08-14'),
  ('Иван', '1998-01-12'),
  ('Мария', '1992-08-28');

SELECT id, name,
    CASE
	WHEN WEEKDAY(CONCAT('2019-', MONTH(birthday_at), '-', DAYOFMONTH(birthday_at))) = 0 THEN 'mon'
	WHEN WEEKDAY(CONCAT('2019-', MONTH(birthday_at), '-', DAYOFMONTH(birthday_at))) = 1 THEN 'tue'
	WHEN WEEKDAY(CONCAT('2019-', MONTH(birthday_at), '-', DAYOFMONTH(birthday_at))) = 2 THEN 'wed'
	WHEN WEEKDAY(CONCAT('2019-', MONTH(birthday_at), '-', DAYOFMONTH(birthday_at))) = 3 THEN 'thu'
	WHEN WEEKDAY(CONCAT('2019-', MONTH(birthday_at), '-', DAYOFMONTH(birthday_at))) = 4 THEN 'fri'
	WHEN WEEKDAY(CONCAT('2019-', MONTH(birthday_at), '-', DAYOFMONTH(birthday_at))) = 5 THEN 'sat'
	ELSE 'sun'
    END AS birth_weekday_2019
FROM users;