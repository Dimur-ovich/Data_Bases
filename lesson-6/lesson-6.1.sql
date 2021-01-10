SELECT * FROM users LIMIT 1;
SELECT * FROM users WHERE id = 101;
SELECT id, firstname, lastname FROM users WHERE id = 101;


SELECT id, firstname, lastname
FROM users WHERE firstname LIKE '%a%';

SELECT id, firstname, lastname
FROM users WHERE firstname NOT LIKE '%a%';

SELECT id, firstname, lastname
FROM users WHERE firstname LIKE '%a%' AND lastname LIKE '%a%';


SELECT * FROM profiles
WHERE birthday >= '2010-01-01' AND birthday <= '2019-12-31';

SELECT * FROM profiles
WHERE birthday BETWEEN '2010-01-01' AND '2019-12-31';

SELECT * FROM profiles WHERE gender IN (1,2);
SELECT * FROM profiles WHERE users_id IN (2,102,35);
SELECT * FROM profiles WHERE users_id NOT IN (2,102,35);

SELECT DISTINCT gender FROM profiles;

SELECT * FROM users ORDER BY firstname;
SELECT * FROM users ORDER BY firstname DESC;
SELECT * FROM users ORDER BY firstname DESC, lastname;

SELECT * FROM users LIMIT 5;
SELECT * FROM users LIMIT 10, 5;
SELECT * FROM users LIMIT 5 OFFSET 10;
SELECT * FROM users LIMIT 10 OFFSET 5;

SELECT USER(); -- текущий пользователь MySQL
SELECT VERSION(); -- версия MySQL
SELECT UUID();

SELECT
  ROUND(), -- математическое округление, если значение >= .5, то увеличит +1
  CEILING(), -- в большую степень
  FLOOR() -- в меньшую степень

SELECT
  gender,
  IF(gender = 1, 'Мужской', IF(gender = 2, 'Женский', 'не определен'))  -- лучше использовать CASE 
FROM profiles;

SELECT
  IFNULL(adress, '-'),
  IF(adress IS NULL, '-', adress)
FROM profiles;

SELECT
  CASE gender
    WHEN 1 THEN 'Мужской'
    WHEN 2 THEN 'Женский'
    ELSE 'не определен'
  END AS gender_rus
FROM profiles;

SELECT
  gender
FROM profiles
GROUP BY gender

SELECT
  gender,
  count(1)
  -- users_id,
  -- GROUP_CONCAT(users_id)
FROM profiles
GROUP BY gender

SELECT
  gender,
  -- user_id,
  ANY_VALUE(users_id)
FROM profiles
GROUP BY gender

SELECT
  gender,
  COUNT(users_id)
FROM profiles
GROUP BY gender

SELECT
  gender,
  COUNT(*)
FROM profiles
GROUP BY gender
WITH ROLLUP

SELECT
  gender,
  COUNT(*) AS cnt
FROM profiles
GROUP BY gender
HAVING cnt > 20


-- Данные пользователя
SELECT
  id,
  firstname,
  lastname,
  (SELECT adress FROM profiles WHERE profiles.users_id = users.id) AS location,
  (SELECT `blob` FROM media WHERE media.id = (select profiles.photo_id from profiles where profiles.users_id = users.id)) AS `blob`
FROM users;

-- Фотографии пользователя
SELECT
  *
FROM media
WHERE
  users_id = 101 AND
  media_types_id = (SELECT id FROM media_types WHERE name = 'img');
 
-- Кол-во фотографий пользователя
SELECT
  COUNT(*)
FROM media
WHERE
  users_id = 101 AND
  media_types_id = (SELECT id FROM media_types WHERE name = 'img');

-- Кол-во медиа всех типов
SELECT
  media_types_id,
  (SELECT name FROM media_types WHERE media_types.id = media.media_types_id) AS media_type_name,
  COUNT(*)
FROM media
GROUP BY media_types_id;

-- Кол-во медиа в каждом месяце (сезонность)
SELECT
  MONTHNAME(created_at) AS created_month,
  COUNT(*)
FROM media
GROUP BY created_month
ORDER BY MONTH(created_at);

-- Кол-во медиа у каждого пользователя
SELECT
  users_id,
  COUNT(*)
FROM media
GROUP BY users_id
ORDER BY COUNT(*) DESC;

-- Пользователи, которым меньше 14 лет
SELECT
  *,
  TIMESTAMPDIFF(YEAR, birthday, NOW())
FROM profiles
WHERE 
  TIMESTAMPDIFF(YEAR, birthday, NOW()) < 14;

-- Друзья пользователя (id = 150)
SELECT
  *
FROM friend_requests
WHERE
  `status` = 1 AND (from_users_id = 150 OR to_users_id = 150);
s
-- Медиа друзей пользователя (id = 150)
SELECT
  *
FROM media
WHERE
  users_id IN (SELECT to_users_id FROM friend_requests WHERE `status` = 1 AND from_users_id = 150) OR
  users_id IN (SELECT from_users_id FROM friend_requests WHERE `status` = 1 AND to_users_id =150);

-- Лайки к медиа пользователя
SELECT
  id,
  (SELECT COUNT(*) FROM `media_likes` WHERE `media_likes`.to_object_id = media.id) AS cnt
FROM media
WHERE
  users_id = 150;

-- Cообщения пользователя
SELECT
  *
FROM messages
WHERE
  from_users_id = 150 OR to_users_id = 150