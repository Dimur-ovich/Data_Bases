/************************************/
/**/ Урок 7, задание 1
/************************************/

-- 1-й вариант
select  
	u.id
	,u.name
from users u
where exists (select id from orders o where o.user_id = u.id)  

-- 2-й вариант
select DISTINCT 
	u.id
	,u.name
from users u 
join orders o 
on o.user_id = u.id

/************************************/
/**/ Урок 7, задание 2
/************************************/

select 
	c.name, p.* 
from products p 
left outer join catalogs c 
on c.id = p.catalog_id 

/************************************/
/**/ Урок 7, задание 2
/************************************/

CREATE TEMPORARY TABLE `flights` (
`id` int unsigned not null AUTO_INCREMENT,
`from` varchar(100) not null,
`to` varchar(100) not null,
PRIMARY KEY (`id`)
);

CREATE TEMPORARY TABLE `cities` (
`id` int unsigned not null AUTO_INCREMENT,
`liable` varchar(100) not null,
`name` varchar(100) not null,
PRIMARY KEY (`id`)
);

insert into cities set liable = 'Moscow', name = 'Москва';
insert into cities set liable = 'London', name= 'Лондон';
insert into cities set liable = 'New York', name = 'Нью-Йорк';
insert into cities set liable = 'Berlin', name = 'Берлин';

insert into flights set `from` = 'Moscow', `to` = 'London';
insert into flights set `from` = 'London', `to` = 'New York';
insert into flights set `from` = 'New York', `to` = 'Berlin';
insert into flights set `from` = 'Berlin', `to` = 'Moscow';


-- должен был бы отработать такой запрос, но похоже, в версии 5.7 mysql нет возможности повторного 
-- открытия временной таблицы в одном запросе (Can't reopen table: 'c'):  
select f.id
		,c.name as 'FROM'
		,c2.name as 'TO'
from flights f
left outer join cities c
on c.liable = f.`from`
left outer join cities c2
on c2.liable = f.`to`

-- Поэтому приходится извращаться: 
CREATE TEMPORARY TABLE `cities_2` 
select * from `cities`;

-- и этот запрос отработал как надо:
select f.id
		,c.name as 'FROM'
		,c2.name as 'TO'
from flights f
left outer join cities c
on c.liable = f.`from`
left outer join cities_2 c2
on c2.liable = f.`to`;

-- с постоянными таблицами все должно быть также просто и в mysql, 
-- а в mssql я вообще никогда не сталкивался с проблемой повторного открытия временных таблиц 

