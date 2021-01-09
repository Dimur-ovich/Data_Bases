-- Урок 5 (Операторы, фильтрация...)
USE shop 

-- Урок 5 (Операторы, фильтрация...), задание 1:
select * from users u;
-- нет пустых значений, поэтому добавим, разрешив предварительно сохранять null в датах создания и изменения :
INSERT INTO users (name, birthday_at)
VALUES 
('Виктор', '1985-01-15'),
('Алексей','1966-10-03');

update users 
set created_at = NOW()
where created_at is null;

update users 
set updated_at = NOW()
where updated_at is null;

select * from users u;

-- Урок 5 (Операторы, фильтрация...), задание 2:

ALTER TABLE users 
MODIFY created_at varchar(20) NOT NULL DEFAULT '',
MODIFY updated_at varchar(20)  NOT NULL DEFAULT '';

select * from users u;

ALTER TABLE users 
MODIFY created_at datetime NOT NULL DEFAULT NOW(),
MODIFY updated_at datetime  NOT NULL DEFAULT NOW();

-- Урок 5 (Операторы, фильтрация...), задание 3:

select * from storehouses_products sp -- записей нет
select * from storehouses s -- записей нет
select * from products p -- записи есть

/* Немного лениво заполнять пустые таблицы складских запасов ради одного запроса :)
 * Поэтому переформулирую задачу на "вывести все продукты в порядке возрастания цены", 
 * но продукты с ценой менее 5000 должны быть в конце списка (принцип построения запроса тот же) "
 * Да, вполне возможно, что я не нашел какой-то более простой способ, буду признателен за подсказку*/

select * from products 
order by CASE when price < 5000 then price + (select max(price) + 1 from products) else price END;

-- аналогичный запрос для решения задачи из задания будет иметь вид
select * from storehouses_products 
order by CASE when value = 0 then value + (select max(value) + 1 from storehouses_products) else value END;

-- Урок 5 (Операторы, фильтрация...), задание 4:
select * from users
where MONTHNAME(birthday_at) in ('May', 'August');

-- Урок 5 (Операторы, фильтрация...), задание 5:
-- пришлось-таки погуглить и найти функцию FIELD() - см. выше просьбу в задании 3 :) 
-- хотя пока мне не очень понятно, как эта функция поможет решить именно задание 3 

SELECT * from catalogs c2 
WHERE id IN (5,1,2) 
ORDER BY FIELD(id,5,1,2);



-- Урок 5 (Агрегация данных), задание 1:

-- воспользуемся разными полезными функциями и посчитаем средний возраст пользователей в полных годах:

select FLOOR(AVG(TO_DAYS(now()) - TO_DAYS(birthday_at))/365.25) from users;


-- Урок 5 (Агрегация данных), задание 2:

-- дни рождения пользователей в 2021 году (нумерация дней недели начинается с воскресенья)
select  DAYOFWEEK(CONVERT(CONCAT(CONVERT(YEAR(now()), CHAR), '-', CONVERT(MONTH(birthday_at), CHAR), '-', CONVERT(DAY(birthday_at), CHAR)), DATE)) as dow,
		CONVERT(CONCAT(CONVERT(YEAR(now()), CHAR), '-', CONVERT(MONTH(birthday_at), CHAR), '-', CONVERT(DAY(birthday_at), CHAR)), DATE) as birth_day_2021,		
		birthday_at,
		name 
from users;

-- количество дней рождений по дням недели
select  DAYOFWEEK(CONVERT(CONCAT(CONVERT(YEAR(now()), CHAR), '-', CONVERT(MONTH(birthday_at), CHAR), '-', CONVERT(DAY(birthday_at), CHAR)), DATE)) as dow,
		count(1)
from users
group by dow;

-- Урок 5 (Агрегация данных), задание 3:

-- Предполагаю, что использование таблицы users для получения результата - это немного не то, что требовалось, 
-- но так и не нашел, как сгенерировать подходящую последовательность "на лету" без таблицы
-- Буду признателен за подсказку (возможно, пропустил в вебинаре, но на поиск в видео времени к сожалению нет) 

select ROUND(exp(SUM(LOG(id))), 0) as product 
from users 
where id in (1,2,3,4,5);
