/***********************/
-- Урок 6, задание 1:
/***********************/

/* вся оптимизация запросов свелась к исправлению наименований некоторых полей (users_id вместо user_id и аналогичные), 
 * плюс adress вместо location
 * плюс учет различий в структуре таблиц с лайками 
 * и еще немного по мелочи - см. файл lesson-6.1.sql
 * Итог - все запросы отработали на моих данных */

/***********************/
-- Урок 6, задание 2:
/***********************/

select fid, count(1) as cnt
from (
-- ищем письма от друзей
select id, from_users_id as fid 
  from messages as m				
 where to_users_id = 150  	
   and from_users_id in 		-- список друзей формируем из всех подтвержденных запросов, независимо от инициатора
		(select from_users_id as id from friend_requests fr where  status = 1 and to_users_id = 150
		union select to_users_id  as id from friend_requests fr2 where  status = 1 and from_users_id = 150)
union
-- ищем письма друзьям
select 	id
		,to_users_id as fid
  from messages as m				
 where from_users_id = 150  	
   and to_users_id in 		-- список друзей формируем из всех подтвержденных запросов, независимо от инициатора
		(select from_users_id as id from friend_requests fr where  status = 1 and to_users_id = 150
		union select to_users_id  as id from friend_requests fr2 where  status = 1 and from_users_id = 150)
) as tmp_table
group by fid
order by cnt DESC LIMIT 1;


/***********************/
-- Урок 6, задание 3:
/***********************/

/* Не получилось сделать задачу без временной таблицы, потому что версия 5.7 не поддерживает LIMIT в подзапросах
 * Возможно, что упростил задачу подсчетом лайков только по постам пользователей (сджойнить с другими лайками несложно, как раз эту тему неплохо освоил на практике) */

-- создаем временную таблицу с id десяти самых молодых пользователей
create temporary table ten_young_users 
	select  users_id 
	from profiles p2 
	order by TIMESTAMPDIFF(YEAR, birthday, NOW())
	limit 10;

-- проверяем ее наполнение
select * from ten_young_users;		

-- ищем посты самых молодых ползователей и лайки по ним
select pl.to_object_id as plid
		,p.id as pid
		,p.users_id as puid
		,u.firstname 
		,u.lastname 
from posts as p
join ten_young_users as yu
on p.users_id = yu.users_id
left outer join post_likes as pl
on pl.to_object_id = p.id
left outer join users as u 
on u.id = yu.users_id; 

-- считаем лайки:
select 	p.users_id as uid
		,u.firstname 
		,u.lastname 
		,count(pl.to_object_id) as likes_cnt
from posts as p
join ten_young_users as yu
on p.users_id = yu.users_id
left outer join post_likes as pl
on pl.to_object_id = p.id
left outer join users as u 
on u.id = yu.users_id
group by uid
order by likes_cnt DESC; 

/***********************/
-- Урок 6, задание 4:
/***********************/

select 	pr.gender 
		,count(pl.to_object_id) as likes_cnt
from posts as p
left outer join post_likes as pl
on pl.to_object_id = p.id
left outer join profiles as pr 
on pr.users_id = p.users_id
where gender in ('m','f')         
group by pr.gender
order by likes_cnt DESC LIMIT 1; -- для ответа на вопрос "кто больше?"  достаточно одной строки

/***********************/
-- Урок 6, задание 5:
/***********************/

-- под активностью пользователя будем считать любую проявленную им активость, зафиксированную в базе 

-- создаем временную таблицу для выборки всех активностей
create temporary table users_activity 
	select  admin_id as uid 
			,id as id
			,'Создание и администрирование группы' as activity
	from communities 
	union 
	select  users_id as uid 
			,communities_id as id
			,'участие в группе' as activity
	from users_communities  
	union 
	select  from_users_id as uid 
			,to_users_id as id
			,'запрос на добавление в друзья' as activity
	from friend_requests
	union 
	select  users_id as uid 
			,id as id
			,'размещение media' as activity
	from media 
	union 
	select  from_users_id as uid 
			,to_object_id as id
			,'лайк media' as activity
	from media_likes 
	union 
	select  from_users_id as uid 
			,id as id
			,'отправка сообщения' as activity
	from messages
	union 
	select  users_id as uid 
			,id as id
			,'размещение поста' as activity
	from posts 
	union 
	select  from_users_id as uid 
			,to_object_id as id
			,'лайк поста' as activity
	from post_likes;

select uid, count(id) 
from users_activity
group by uid
order by count(id) LIMIT 10;

	


	
	
	
	
	-- limit 10;



