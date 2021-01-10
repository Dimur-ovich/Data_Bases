#
# TABLE STRUCTURE FOR: post_likes
#

DROP TABLE IF EXISTS `post_likes`;

CREATE TABLE `post_likes` (
  `to_object_id` int(10) unsigned NOT NULL,
  `from_users_id` int(10) unsigned NOT NULL,
  `status` enum('like','super','sorry','dontlike','scandal') NOT NULL DEFAULT 'like',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`to_object_id`,`from_users_id`),
  KEY `fk_post_likes_posts_idx` (`to_object_id`),
  KEY `fk_post_likes_users_idx` (`from_users_id`),
  CONSTRAINT `fk_post_likes_posts_id` FOREIGN KEY (`to_object_id`) REFERENCES `posts` (`id`),
  CONSTRAINT `fk_post_likes_users_id` FOREIGN KEY (`from_users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (1, 101, 'sorry', '2004-06-13 14:36:23', '2012-01-22 02:29:33');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (2, 102, 'sorry', '2019-10-24 08:51:15', '2002-04-12 19:17:13');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (3, 103, 'scandal', '2019-05-18 23:31:34', '1977-10-07 22:04:13');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (4, 106, 'dontlike', '1988-12-15 11:50:02', '2006-04-25 02:47:42');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (5, 107, 'sorry', '1982-10-29 15:11:19', '1999-06-21 13:44:45');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (6, 108, 'dontlike', '1994-10-08 23:29:02', '2004-06-29 08:23:00');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (7, 111, 'scandal', '1992-09-16 12:49:41', '2006-03-19 20:43:44');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (8, 112, 'super', '2002-10-13 03:15:37', '1970-05-10 03:04:49');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (9, 114, 'scandal', '2015-04-26 06:36:59', '2013-02-23 05:30:51');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (10, 116, 'sorry', '1977-08-25 06:35:30', '2015-07-11 09:36:21');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (11, 117, 'sorry', '1978-12-16 13:09:54', '2003-09-26 22:46:26');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (12, 118, 'dontlike', '2019-10-14 18:08:49', '1971-08-11 08:35:47');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (13, 119, 'super', '2008-12-04 19:19:07', '1993-11-11 16:05:08');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (14, 120, 'sorry', '1985-05-03 14:48:12', '1979-09-10 03:35:28');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (15, 121, 'super', '2003-08-09 05:06:42', '1971-05-08 09:17:47');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (16, 123, 'sorry', '1982-12-08 12:04:05', '2010-09-25 01:09:10');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (17, 124, 'dontlike', '2002-10-25 17:30:40', '2007-08-29 08:06:19');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (18, 126, 'sorry', '1973-02-22 18:03:17', '1997-07-29 19:28:12');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (19, 130, 'super', '1996-08-10 02:00:33', '1985-03-15 03:52:07');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (20, 132, 'like', '1989-07-01 23:56:46', '2013-08-03 03:13:14');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (21, 133, 'dontlike', '2001-02-15 09:10:41', '1998-03-10 22:22:21');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (22, 135, 'dontlike', '1987-05-02 05:25:12', '1993-04-24 07:57:27');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (23, 136, 'scandal', '1985-10-10 01:30:16', '1980-05-18 17:19:50');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (24, 137, 'sorry', '1975-09-04 14:24:00', '2012-02-10 15:30:00');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (25, 138, 'like', '2020-10-14 01:55:01', '2011-10-30 13:12:44');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (26, 139, 'scandal', '1979-07-18 07:48:24', '2006-07-25 13:29:13');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (27, 140, 'like', '2013-09-19 03:59:54', '1988-04-23 00:47:51');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (28, 141, 'scandal', '2000-07-25 23:49:18', '1971-11-16 04:25:13');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (29, 142, 'scandal', '2000-01-19 19:02:19', '1994-10-18 08:43:39');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (30, 143, 'scandal', '2020-07-16 07:04:44', '2009-06-22 03:25:08');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (31, 145, 'like', '1994-09-27 08:32:57', '2004-08-31 20:06:05');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (32, 146, 'sorry', '2017-06-18 00:54:37', '1978-03-10 10:06:44');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (33, 147, 'super', '1979-03-30 05:03:06', '1992-08-27 13:45:11');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (34, 148, 'scandal', '2020-05-02 19:39:59', '2010-03-15 19:17:11');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (35, 150, 'scandal', '1989-08-26 10:13:05', '2017-11-24 17:52:47');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (36, 151, 'scandal', '1970-08-26 17:52:47', '2016-09-28 17:49:10');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (37, 152, 'scandal', '2020-11-27 19:23:42', '2005-08-21 00:20:02');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (38, 153, 'sorry', '1979-05-09 21:37:26', '1979-08-07 13:59:45');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (39, 155, 'like', '2015-12-03 22:11:53', '2012-03-25 01:18:02');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (40, 157, 'super', '1999-10-11 22:48:07', '1987-05-26 11:53:24');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (41, 159, 'sorry', '1970-03-29 21:34:59', '2014-12-05 12:19:41');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (42, 161, 'like', '2013-10-15 04:54:43', '1978-11-14 02:33:32');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (43, 162, 'like', '1976-02-07 23:05:13', '1989-07-03 08:38:00');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (44, 163, 'super', '2003-04-23 11:33:52', '2004-05-01 04:40:33');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (45, 165, 'scandal', '1991-10-27 14:33:54', '1991-05-27 05:37:05');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (46, 166, 'super', '2011-04-23 16:17:04', '2017-04-13 04:08:30');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (47, 167, 'like', '1997-02-13 05:01:31', '1977-07-03 19:51:17');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (48, 168, 'like', '2007-06-18 23:20:24', '1980-05-08 12:19:50');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (49, 169, 'scandal', '1989-10-22 05:38:37', '2004-03-21 02:44:31');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (50, 171, 'dontlike', '1980-06-06 14:43:47', '1970-12-01 12:11:42');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (51, 172, 'super', '1982-06-16 03:11:17', '1975-04-13 16:30:45');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (52, 173, 'like', '2017-05-18 01:17:56', '2005-04-21 04:49:44');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (53, 175, 'scandal', '1989-09-29 19:14:19', '2009-04-13 23:52:25');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (54, 176, 'like', '2000-04-12 03:51:44', '2004-07-29 04:06:57');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (55, 177, 'sorry', '2017-07-16 15:18:29', '2005-08-11 09:08:24');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (56, 179, 'sorry', '2004-04-13 21:54:46', '1994-03-30 11:54:23');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (57, 181, 'super', '1974-06-06 16:31:45', '1984-09-13 23:43:35');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (58, 183, 'super', '2014-11-04 13:59:06', '2017-05-24 06:47:13');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (59, 185, 'scandal', '2004-05-13 06:14:34', '1989-04-21 04:45:12');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (60, 186, 'scandal', '1979-03-18 09:43:32', '2016-07-22 20:27:12');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (61, 188, 'super', '2020-09-03 01:50:43', '2019-07-15 19:28:15');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (62, 191, 'sorry', '2016-12-03 02:38:32', '1974-06-22 08:02:17');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (63, 193, 'sorry', '2016-10-10 05:03:06', '2003-05-04 18:44:54');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (64, 194, 'dontlike', '2018-07-29 18:36:33', '2008-12-28 00:03:38');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (65, 195, 'like', '2006-08-28 10:30:37', '1998-07-21 18:39:06');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (66, 197, 'sorry', '1971-02-15 01:03:25', '1975-01-12 05:49:34');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (67, 198, 'dontlike', '1982-03-13 04:53:16', '2012-04-13 12:59:12');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (68, 199, 'scandal', '1974-08-11 23:55:19', '1996-06-12 01:54:08');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (69, 101, 'dontlike', '2007-10-27 12:45:19', '1999-10-26 05:39:22');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (70, 102, 'super', '1974-11-25 06:27:02', '2002-08-15 19:55:48');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (71, 103, 'super', '2015-10-17 18:07:51', '1994-01-10 17:44:40');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (72, 106, 'sorry', '1975-12-14 10:23:35', '2009-05-25 18:30:59');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (73, 107, 'scandal', '2017-11-06 00:49:04', '2002-06-23 16:35:58');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (74, 108, 'sorry', '1986-03-08 17:03:07', '2011-04-09 22:22:19');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (75, 111, 'dontlike', '1983-05-04 11:36:57', '1994-09-15 19:34:19');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (76, 112, 'like', '2010-11-14 14:46:29', '2013-05-12 15:54:57');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (77, 114, 'sorry', '1981-12-28 15:09:56', '1995-04-06 22:46:28');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (78, 116, 'sorry', '1977-05-19 19:40:51', '2002-04-06 19:32:07');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (79, 117, 'sorry', '2014-01-31 20:54:25', '1997-06-23 17:12:36');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (80, 118, 'dontlike', '1984-08-07 13:32:19', '1990-02-01 20:23:24');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (81, 119, 'scandal', '1993-03-13 18:28:39', '1979-07-11 22:10:08');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (82, 120, 'super', '1990-04-23 11:35:36', '2016-05-31 10:13:46');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (83, 121, 'scandal', '2007-10-02 15:43:45', '2017-08-11 02:56:47');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (84, 123, 'super', '1991-08-31 09:35:13', '2016-05-26 22:22:31');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (85, 124, 'super', '2011-07-27 01:05:43', '1986-05-20 12:16:52');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (86, 126, 'scandal', '2007-11-03 15:13:30', '2020-12-10 10:34:58');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (87, 130, 'sorry', '2004-02-01 20:54:14', '2020-05-03 09:15:04');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (88, 132, 'like', '1979-06-30 17:45:33', '1986-06-09 13:39:24');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (89, 133, 'dontlike', '1989-09-12 23:45:07', '1980-03-17 03:49:18');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (90, 135, 'dontlike', '1971-10-15 04:39:50', '2000-05-06 23:42:41');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (91, 136, 'scandal', '2009-10-13 11:17:36', '1976-10-07 23:08:59');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (92, 137, 'dontlike', '2000-09-18 19:56:07', '1988-06-30 14:52:14');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (93, 138, 'dontlike', '2000-05-27 14:20:45', '1999-11-09 19:33:32');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (94, 139, 'sorry', '1988-01-07 01:16:51', '1984-07-17 00:40:10');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (95, 140, 'super', '2006-12-26 09:40:05', '1989-01-01 09:07:07');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (96, 141, 'like', '2000-08-19 21:43:02', '1999-04-08 11:05:13');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (97, 142, 'sorry', '1978-10-09 14:27:43', '2001-07-08 14:52:46');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (98, 143, 'super', '1986-04-14 07:24:47', '2002-12-01 16:05:40');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (99, 145, 'dontlike', '2004-02-28 18:12:06', '2019-01-04 20:12:01');
INSERT INTO `post_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (100, 146, 'sorry', '1984-01-15 11:15:23', '1990-04-04 05:57:12');


