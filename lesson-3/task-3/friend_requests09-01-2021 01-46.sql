#
# TABLE STRUCTURE FOR: friend_requests
#

DROP TABLE IF EXISTS `friend_requests`;

CREATE TABLE `friend_requests` (
  `from_users_id` int(10) unsigned NOT NULL,
  `to_users_id` int(10) unsigned NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '-1 - отклонен, 0 - запрос, 1 - принят',
  `created_ad` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`from_users_id`,`to_users_id`),
  KEY `fk_friend_requests_users1_idx` (`from_users_id`),
  KEY `fk_friend_requests_users2_idx` (`to_users_id`),
  CONSTRAINT `fk_friend_requests_users1` FOREIGN KEY (`from_users_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_friend_requests_users2` FOREIGN KEY (`to_users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `friend_requests` (`from_users_id`, `to_users_id`, `status`, `created_ad`, `updated_at`) VALUES (147, 147, 0, '2000-08-27 13:04:08', '2014-03-12 14:55:45');
INSERT INTO `friend_requests` (`from_users_id`, `to_users_id`, `status`, `created_ad`, `updated_at`) VALUES (148, 148, 0, '2015-08-10 09:37:48', '2014-11-15 17:21:04');
INSERT INTO `friend_requests` (`from_users_id`, `to_users_id`, `status`, `created_ad`, `updated_at`) VALUES (150, 150, 0, '1982-01-05 22:59:41', '1974-11-25 13:17:53');
INSERT INTO `friend_requests` (`from_users_id`, `to_users_id`, `status`, `created_ad`, `updated_at`) VALUES (151, 151, 0, '2012-07-25 06:55:32', '2009-08-10 12:35:47');
INSERT INTO `friend_requests` (`from_users_id`, `to_users_id`, `status`, `created_ad`, `updated_at`) VALUES (152, 152, 0, '2019-04-25 09:59:34', '1974-11-02 05:32:42');
INSERT INTO `friend_requests` (`from_users_id`, `to_users_id`, `status`, `created_ad`, `updated_at`) VALUES (153, 153, 0, '2011-12-07 23:37:41', '1991-10-08 02:12:59');
INSERT INTO `friend_requests` (`from_users_id`, `to_users_id`, `status`, `created_ad`, `updated_at`) VALUES (155, 155, 0, '1978-04-25 05:21:30', '1980-10-07 03:24:21');
INSERT INTO `friend_requests` (`from_users_id`, `to_users_id`, `status`, `created_ad`, `updated_at`) VALUES (157, 157, 0, '1991-06-24 18:17:54', '2012-06-08 08:40:26');
INSERT INTO `friend_requests` (`from_users_id`, `to_users_id`, `status`, `created_ad`, `updated_at`) VALUES (159, 159, 0, '2018-12-17 07:32:44', '2012-09-19 15:30:02');
INSERT INTO `friend_requests` (`from_users_id`, `to_users_id`, `status`, `created_ad`, `updated_at`) VALUES (161, 161, 0, '2002-07-06 04:31:04', '1989-07-09 22:46:04');


