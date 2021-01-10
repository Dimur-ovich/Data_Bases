#
# TABLE STRUCTURE FOR: user_likes
#

DROP TABLE IF EXISTS `user_likes`;

CREATE TABLE `user_likes` (
  `to_object_id` int(10) unsigned NOT NULL,
  `from_users_id` int(10) unsigned NOT NULL,
  `status` enum('like','super','dontlike') NOT NULL DEFAULT 'like',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`to_object_id`,`from_users_id`),
  KEY `fk_user_likes_users1_idx` (`to_object_id`),
  KEY `fk_user_likes_users2_idx` (`from_users_id`),
  CONSTRAINT `fk_user_likes_users1_id` FOREIGN KEY (`to_object_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_user_likes_users2_id` FOREIGN KEY (`from_users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (101, 101, 'like', '1987-01-26 19:08:14', '1992-06-09 16:11:45');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (102, 102, 'like', '2011-11-16 05:16:01', '1989-04-08 12:49:10');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (103, 103, 'super', '2017-02-19 11:53:02', '2011-10-03 11:13:59');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (106, 106, 'like', '1999-10-28 03:11:20', '1970-11-27 03:48:49');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (107, 107, 'like', '1995-05-24 06:01:20', '1983-04-06 05:58:09');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (108, 108, 'like', '2016-12-25 02:12:58', '1982-10-29 15:57:50');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (111, 111, 'dontlike', '1990-01-21 07:52:52', '1995-12-16 05:02:32');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (112, 112, 'super', '2014-09-05 05:08:47', '1985-05-29 19:32:14');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (114, 114, 'like', '2013-12-17 08:50:34', '1990-02-06 15:48:11');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (116, 116, 'like', '1991-07-16 01:33:13', '1998-06-17 22:08:23');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (117, 117, 'dontlike', '1993-01-29 19:47:40', '1970-05-16 20:04:00');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (118, 118, 'super', '2010-06-20 14:08:34', '1989-05-05 22:23:06');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (119, 119, 'like', '1981-04-22 01:04:51', '2009-05-24 13:20:19');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (120, 120, 'like', '1991-10-29 14:17:33', '2015-09-22 16:23:55');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (121, 121, 'super', '1988-12-17 11:12:12', '1995-10-29 19:10:42');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (123, 123, 'dontlike', '2008-08-31 16:47:51', '1984-03-22 17:25:01');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (124, 124, 'dontlike', '1983-03-22 00:10:19', '1999-06-09 23:38:05');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (126, 126, 'super', '1982-11-30 01:26:02', '1993-04-07 19:26:11');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (130, 130, 'super', '1995-08-16 18:07:26', '1970-10-24 14:10:26');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (132, 132, 'like', '2001-07-30 22:19:41', '1981-08-10 05:10:59');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (133, 133, 'dontlike', '1975-11-09 05:21:00', '1971-03-11 00:58:22');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (135, 135, 'super', '2018-11-23 01:14:36', '1973-09-09 20:11:39');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (136, 136, 'like', '2015-11-05 23:04:18', '1996-02-16 15:49:48');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (137, 137, 'like', '2020-04-27 21:34:38', '1974-09-12 05:52:42');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (138, 138, 'super', '1991-02-06 17:59:58', '1984-02-04 14:58:17');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (139, 139, 'dontlike', '1976-05-12 06:50:53', '2019-04-29 13:30:51');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (140, 140, 'super', '2018-06-08 15:42:24', '2007-01-07 20:35:10');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (141, 141, 'like', '1972-06-17 10:30:00', '2015-11-02 11:07:03');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (142, 142, 'dontlike', '1979-06-29 03:06:30', '2003-06-17 13:54:47');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (143, 143, 'dontlike', '2012-01-23 13:59:57', '1970-08-02 16:06:17');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (145, 145, 'like', '1996-06-11 08:20:47', '1988-02-28 02:42:07');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (146, 146, 'dontlike', '2008-08-15 03:58:35', '2019-12-29 00:17:00');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (147, 147, 'dontlike', '1971-06-11 22:47:21', '2004-02-07 12:59:09');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (148, 148, 'dontlike', '2009-09-12 10:49:05', '2016-03-07 00:29:45');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (150, 150, 'dontlike', '2015-11-25 08:21:03', '2018-01-14 06:23:05');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (151, 151, 'dontlike', '1978-11-21 14:33:13', '1988-10-26 02:22:00');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (152, 152, 'dontlike', '2019-06-23 07:43:58', '2016-02-22 19:08:47');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (153, 153, 'dontlike', '2008-08-14 16:00:25', '2000-10-31 17:57:35');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (155, 155, 'super', '2009-05-07 02:09:52', '1977-01-06 03:43:59');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (157, 157, 'super', '2013-05-02 12:55:44', '2020-11-17 01:51:14');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (159, 159, 'like', '1975-12-25 06:16:44', '1996-12-08 00:49:52');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (161, 161, 'super', '1985-05-06 00:14:06', '1985-10-07 00:13:26');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (162, 162, 'super', '1975-05-27 01:18:47', '1981-08-13 16:02:10');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (163, 163, 'dontlike', '1993-11-07 06:38:22', '1995-09-05 00:43:30');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (165, 165, 'dontlike', '1997-01-22 04:28:09', '1989-09-03 04:11:01');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (166, 166, 'dontlike', '1972-03-17 11:24:29', '2006-05-11 00:55:04');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (167, 167, 'like', '2005-06-16 18:09:43', '2009-05-29 02:33:24');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (168, 168, 'like', '1981-01-17 11:30:37', '1974-12-11 23:42:00');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (169, 169, 'super', '1979-12-29 05:04:03', '2019-10-23 12:58:09');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (171, 171, 'super', '2007-02-02 17:25:23', '2001-01-03 05:33:35');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (172, 172, 'super', '1978-11-21 23:43:51', '1984-08-25 01:41:11');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (173, 173, 'super', '1971-04-25 06:38:36', '2002-10-04 05:56:55');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (175, 175, 'super', '1992-10-12 16:17:37', '1983-10-26 17:35:41');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (176, 176, 'like', '2018-06-07 17:16:53', '2009-08-12 10:54:33');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (177, 177, 'super', '1987-12-26 08:15:38', '1978-11-20 04:54:55');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (179, 179, 'like', '1999-08-07 14:37:35', '1995-11-03 15:04:22');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (181, 181, 'super', '2011-10-29 08:42:04', '1972-02-03 01:41:53');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (183, 183, 'like', '1983-03-27 14:16:42', '1996-04-18 11:59:14');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (185, 185, 'dontlike', '2003-04-01 21:28:16', '2017-01-13 20:31:57');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (186, 186, 'dontlike', '1978-07-20 04:04:02', '2004-01-02 06:27:40');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (188, 188, 'super', '1972-09-05 23:29:20', '1988-04-18 20:56:30');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (191, 191, 'dontlike', '2008-12-09 11:23:00', '2000-06-10 00:30:40');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (193, 193, 'super', '1977-05-12 01:24:53', '1995-06-29 13:34:42');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (194, 194, 'like', '1984-08-21 06:51:19', '2008-08-29 03:38:07');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (195, 195, 'super', '2013-09-24 04:51:13', '2006-11-25 18:41:32');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (197, 197, 'like', '2010-05-10 09:41:57', '2007-07-28 14:26:26');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (198, 198, 'super', '2003-02-23 21:42:10', '1975-01-13 05:56:02');
INSERT INTO `user_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (199, 199, 'super', '1987-03-12 11:12:00', '1997-06-25 21:32:22');


