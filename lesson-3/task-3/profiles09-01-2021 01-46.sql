#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `users_id` int(10) unsigned NOT NULL,
  `gender` enum('m','f','x') NOT NULL,
  `birthday` date NOT NULL,
  `adress` varchar(245) DEFAULT NULL,
  `photo_id` int(10) unsigned DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`users_id`),
  KEY `fk_profiles_media1_idx` (`photo_id`),
  CONSTRAINT `fk_profiles_media1` FOREIGN KEY (`photo_id`) REFERENCES `media` (`id`),
  CONSTRAINT `fk_profiles_users` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (101, 'm', '1982-07-17', NULL, 1, '2010-12-04 04:21:38');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (102, 'f', '2012-09-28', NULL, 2, '1973-03-26 10:38:19');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (103, 'x', '1986-08-20', NULL, 3, '2010-12-04 10:30:46');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (106, 'm', '1979-09-15', NULL, 4, '2011-08-06 15:17:57');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (107, 'x', '1991-08-10', NULL, 5, '1991-03-07 11:04:40');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (108, 'f', '1987-12-16', NULL, 6, '1975-09-21 15:48:52');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (111, 'x', '1982-11-24', NULL, 7, '1988-04-29 23:36:42');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (112, 'x', '2010-11-14', NULL, 8, '2008-12-28 13:44:26');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (114, 'x', '2013-06-14', NULL, 9, '2012-05-30 18:01:01');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (116, 'f', '1992-08-31', NULL, 10, '2008-04-17 09:57:17');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (117, 'm', '1980-02-01', NULL, 11, '1994-09-16 06:29:25');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (118, 'm', '2015-01-13', NULL, 12, '1974-11-03 14:52:05');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (119, 'f', '1984-12-07', NULL, 13, '2009-04-29 11:42:36');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (120, 'f', '1994-12-21', NULL, 14, '1986-11-01 14:46:54');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (121, 'f', '2018-10-21', NULL, 15, '2011-04-08 03:55:11');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (123, 'x', '1984-01-08', NULL, 16, '1983-07-03 21:17:52');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (124, 'f', '2015-07-10', NULL, 17, '1977-07-07 16:26:51');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (126, 'f', '2001-11-23', NULL, 18, '1976-01-05 13:23:19');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (130, 'm', '1980-04-03', NULL, 19, '1995-10-30 07:22:24');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (132, 'f', '2015-12-20', NULL, 20, '1982-02-15 01:36:15');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (133, 'f', '1971-10-29', NULL, 21, '1985-02-07 19:51:15');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (135, 'm', '1991-05-05', NULL, 22, '1971-02-12 12:41:28');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (136, 'm', '2003-01-28', NULL, 23, '1996-10-02 11:55:26');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (137, 'f', '1995-09-18', NULL, 24, '1998-03-24 22:19:24');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (138, 'x', '1987-02-05', NULL, 25, '1986-06-09 12:03:46');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (139, 'f', '2002-04-17', NULL, 26, '1999-07-23 15:34:44');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (140, 'f', '1994-07-19', NULL, 27, '2016-10-09 09:22:17');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (141, 'x', '1996-11-14', NULL, 28, '1998-06-08 18:11:48');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (142, 'f', '1981-09-14', NULL, 29, '2003-06-04 05:18:42');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (143, 'f', '2017-03-20', NULL, 30, '2008-03-13 07:59:24');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (145, 'x', '1982-11-14', NULL, 31, '1984-11-27 13:25:46');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (146, 'm', '1981-02-12', NULL, 32, '1976-12-09 18:43:04');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (147, 'x', '1976-08-07', NULL, 33, '2012-08-25 08:56:32');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (148, 'f', '1972-03-23', NULL, 34, '1983-12-19 04:18:26');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (150, 'f', '2001-01-29', NULL, 35, '2010-07-22 16:57:16');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (151, 'm', '1980-09-15', NULL, 36, '2000-03-14 04:52:09');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (152, 'f', '2011-02-23', NULL, 37, '1986-11-10 15:27:22');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (153, 'f', '2002-06-13', NULL, 38, '1973-12-17 06:26:59');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (155, 'f', '1978-08-05', NULL, 39, '1985-07-25 04:22:37');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (157, 'x', '2013-07-11', NULL, 40, '2017-06-03 18:07:38');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (159, 'x', '2014-01-10', NULL, 41, '2020-02-08 08:06:23');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (161, 'm', '1984-09-06', NULL, 42, '2019-10-03 03:37:16');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (162, 'x', '2016-03-06', NULL, 43, '1978-05-09 22:43:03');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (163, 'f', '1992-01-22', NULL, 44, '1980-12-25 17:47:15');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (165, 'x', '2014-03-24', NULL, 45, '1987-12-28 21:37:14');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (166, 'f', '1970-02-18', NULL, 46, '2010-03-10 01:21:53');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (167, 'x', '1975-12-05', NULL, 47, '1989-09-18 02:20:07');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (168, 'm', '1977-01-17', NULL, 48, '2018-08-21 08:20:33');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (169, 'f', '2009-06-09', NULL, 49, '1974-11-02 22:52:43');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (171, 'm', '2002-01-25', NULL, 50, '2003-10-22 06:19:11');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (172, 'm', '1975-06-12', NULL, 51, '1992-09-28 13:42:34');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (173, 'm', '2020-11-08', NULL, 52, '1978-09-22 15:54:22');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (175, 'm', '2005-06-12', NULL, 53, '1980-07-30 05:22:23');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (176, 'f', '1971-09-13', NULL, 54, '1978-01-29 23:55:08');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (177, 'x', '2000-03-17', NULL, 55, '1982-04-19 16:14:59');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (179, 'm', '2013-02-08', NULL, 56, '2007-12-26 12:07:18');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (181, 'm', '1999-10-10', NULL, 57, '2014-10-07 08:49:36');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (183, 'm', '1974-10-18', NULL, 58, '1990-10-07 17:02:39');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (185, 'f', '1984-04-10', NULL, 59, '2014-11-03 06:53:06');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (186, 'm', '1987-01-28', NULL, 60, '1999-05-23 01:10:32');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (188, 'x', '1973-02-11', NULL, 61, '1996-02-03 19:16:08');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (191, 'x', '2009-11-11', NULL, 62, '1987-09-03 07:57:50');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (193, 'f', '1983-07-23', NULL, 63, '1991-08-02 23:36:25');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (194, 'm', '2013-03-05', NULL, 64, '1993-03-28 07:45:25');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (195, 'f', '2015-07-20', NULL, 65, '2006-03-29 19:54:09');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (197, 'm', '1970-08-25', NULL, 66, '1972-08-02 01:42:59');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (198, 'x', '1979-04-19', NULL, 67, '1985-05-15 00:00:33');
INSERT INTO `profiles` (`users_id`, `gender`, `birthday`, `adress`, `photo_id`, `created_at`) VALUES (199, 'x', '1976-05-15', NULL, 68, '2014-10-28 01:39:10');


