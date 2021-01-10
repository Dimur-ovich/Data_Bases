#
# TABLE STRUCTURE FOR: media_likes
#

DROP TABLE IF EXISTS `media_likes`;

CREATE TABLE `media_likes` (
  `to_object_id` int(10) unsigned NOT NULL,
  `from_users_id` int(10) unsigned NOT NULL,
  `status` enum('like','super','sorry','dontlike','scandal') NOT NULL DEFAULT 'like',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`to_object_id`,`from_users_id`),
  KEY `fk_media_likes_media_idx` (`to_object_id`),
  KEY `fk_likes_users_idx` (`from_users_id`),
  CONSTRAINT `fk_likes_users_id` FOREIGN KEY (`from_users_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_media_likes_media_id` FOREIGN KEY (`to_object_id`) REFERENCES `media` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (1, 101, 'like', '1999-08-24 21:12:08', '1974-01-29 05:14:55');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (1, 147, 'scandal', '1973-02-17 10:28:39', '1974-02-01 15:42:35');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (2, 102, 'like', '2013-04-13 04:00:33', '2006-08-14 03:23:30');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (2, 148, 'sorry', '1999-04-26 20:56:04', '1988-03-22 00:48:40');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (3, 103, 'like', '1979-02-20 05:08:32', '2019-10-24 16:46:58');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (3, 150, 'sorry', '1986-11-22 04:50:36', '2012-12-10 13:41:12');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (4, 106, 'dontlike', '1974-11-02 17:56:02', '1998-11-16 22:55:44');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (4, 151, 'super', '1987-11-01 09:42:43', '2000-07-25 10:33:06');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (5, 107, 'dontlike', '1988-02-25 08:56:24', '2002-06-18 06:43:41');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (5, 152, 'super', '1998-12-02 10:44:02', '1990-02-10 11:55:52');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (6, 108, 'like', '1998-12-27 14:24:01', '2014-04-25 09:55:29');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (6, 153, 'dontlike', '1970-04-05 22:00:08', '2007-12-07 01:05:42');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (7, 111, 'like', '2015-04-04 01:11:32', '2015-02-22 23:29:17');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (7, 155, 'dontlike', '1995-09-29 06:23:52', '2005-02-09 15:58:01');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (8, 112, 'like', '2007-05-05 08:28:02', '1986-08-14 23:02:55');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (8, 157, 'scandal', '1983-09-17 12:52:39', '1982-06-19 10:16:24');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (9, 114, 'scandal', '2018-12-05 11:49:26', '1975-08-25 17:18:01');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (9, 159, 'sorry', '1983-08-21 22:29:02', '2018-12-15 02:26:32');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (10, 116, 'like', '1971-07-13 11:50:15', '1977-08-17 15:23:38');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (10, 161, 'super', '2004-10-02 05:00:07', '2006-06-26 04:29:11');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (11, 117, 'dontlike', '1981-10-20 17:38:56', '1975-01-03 05:30:42');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (11, 162, 'scandal', '2019-03-20 22:34:00', '1990-06-29 07:16:13');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (12, 118, 'scandal', '2015-02-05 09:24:38', '1992-08-04 18:05:39');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (12, 163, 'like', '1976-07-20 01:58:23', '2020-06-27 15:47:20');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (13, 119, 'sorry', '2010-02-08 15:26:28', '1972-11-11 13:42:27');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (13, 165, 'super', '1998-04-18 12:09:08', '1984-07-04 02:25:31');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (14, 120, 'scandal', '1979-03-20 05:25:47', '1985-01-17 03:46:34');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (14, 166, 'super', '1980-08-20 15:29:54', '1982-06-16 04:39:32');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (15, 121, 'sorry', '2009-04-19 08:16:48', '1970-12-11 21:42:58');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (15, 167, 'like', '2007-12-03 11:00:15', '2020-03-23 11:36:02');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (16, 123, 'scandal', '1988-08-14 14:49:09', '2011-03-08 21:30:28');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (16, 168, 'scandal', '1995-07-30 10:27:29', '2003-07-11 22:47:28');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (17, 124, 'like', '1985-08-20 21:54:46', '1973-04-21 16:12:36');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (17, 169, 'scandal', '2005-06-03 20:58:01', '1998-07-08 16:48:21');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (18, 126, 'scandal', '1986-12-03 23:57:47', '1970-04-12 03:57:34');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (18, 171, 'scandal', '1994-10-27 12:19:48', '1971-04-01 11:06:56');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (19, 130, 'super', '2012-05-27 08:59:14', '2011-12-29 12:30:16');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (19, 172, 'sorry', '2019-10-06 17:02:43', '2008-05-25 08:02:35');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (20, 132, 'super', '1973-02-12 00:41:11', '2000-03-27 11:06:48');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (20, 173, 'sorry', '1988-12-15 18:59:35', '1987-01-05 19:47:37');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (21, 133, 'dontlike', '2000-02-27 18:48:41', '1997-01-30 23:34:38');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (21, 175, 'dontlike', '1985-02-06 15:30:43', '1971-12-22 21:01:18');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (22, 135, 'super', '2016-11-14 14:06:09', '1980-01-21 20:30:21');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (22, 176, 'like', '1993-10-16 01:37:54', '1972-01-06 08:23:26');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (23, 136, 'dontlike', '1996-01-01 09:21:46', '2019-11-07 07:56:58');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (23, 177, 'dontlike', '2004-09-30 03:27:05', '1993-07-21 09:19:32');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (24, 137, 'sorry', '1992-08-29 08:54:37', '1985-01-14 13:15:19');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (24, 179, 'super', '2015-02-23 02:21:41', '1970-03-12 05:43:10');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (25, 138, 'dontlike', '1980-02-07 10:29:01', '2001-07-24 16:55:15');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (25, 181, 'super', '1982-08-23 16:01:35', '2020-07-09 04:16:38');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (26, 139, 'scandal', '2012-11-22 21:28:00', '2008-02-22 13:21:29');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (26, 183, 'super', '1995-06-26 03:12:11', '2003-05-07 11:20:18');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (27, 140, 'sorry', '2019-06-22 13:02:14', '1987-01-12 06:35:44');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (27, 185, 'super', '1992-05-14 06:40:10', '1988-02-05 06:43:57');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (28, 141, 'super', '1985-02-13 16:51:08', '1990-04-25 21:28:10');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (28, 186, 'scandal', '1977-07-30 02:01:19', '1979-03-14 16:20:26');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (29, 142, 'dontlike', '1990-01-05 03:33:19', '1986-05-04 11:46:58');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (29, 188, 'like', '2014-03-20 15:27:10', '1999-06-04 22:09:46');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (30, 143, 'scandal', '1970-12-18 11:30:04', '1990-01-24 02:19:21');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (30, 191, 'like', '2008-12-08 04:54:26', '2011-11-17 03:14:49');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (31, 145, 'sorry', '1984-04-15 07:25:29', '2012-06-28 15:55:51');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (31, 193, 'scandal', '2017-03-08 01:05:41', '2008-05-03 03:54:16');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (32, 146, 'like', '2018-07-12 14:39:06', '1999-02-18 02:05:26');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (32, 194, 'sorry', '2006-01-29 00:55:03', '2018-02-24 03:15:12');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (33, 147, 'like', '2006-11-09 11:25:39', '2004-05-14 10:21:40');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (33, 195, 'super', '2000-02-21 21:30:11', '1979-05-25 12:01:18');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (34, 148, 'sorry', '2010-05-23 23:46:03', '2007-01-27 20:43:30');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (34, 197, 'scandal', '1993-01-20 02:30:06', '1986-08-01 23:00:54');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (35, 150, 'dontlike', '2005-03-25 00:48:07', '1988-12-21 20:07:52');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (35, 198, 'dontlike', '2007-09-19 04:32:18', '1989-05-26 03:06:36');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (36, 151, 'sorry', '1990-09-20 08:46:32', '2008-07-05 10:00:49');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (36, 199, 'like', '2013-05-23 07:56:55', '1984-11-09 19:51:25');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (37, 101, 'scandal', '2014-10-27 11:52:35', '1972-07-23 06:49:00');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (37, 152, 'like', '1989-02-28 20:59:26', '1979-12-04 07:53:26');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (38, 102, 'dontlike', '2000-09-18 17:42:53', '1979-06-13 04:54:53');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (38, 153, 'super', '2011-06-12 03:58:29', '2013-10-28 04:40:00');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (39, 103, 'super', '2012-03-21 03:11:07', '1994-08-17 20:17:11');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (39, 155, 'sorry', '1986-11-30 21:02:37', '1993-10-02 19:30:54');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (40, 106, 'sorry', '1992-04-19 22:06:41', '2014-02-13 12:02:19');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (40, 157, 'like', '2011-03-05 12:33:59', '1975-04-11 12:11:59');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (41, 107, 'scandal', '1981-03-24 13:27:06', '2018-09-30 08:03:50');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (41, 159, 'sorry', '2017-04-08 08:13:39', '1998-08-28 22:39:56');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (42, 108, 'dontlike', '1984-01-15 04:40:33', '1977-10-25 14:10:06');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (42, 161, 'super', '1983-01-19 21:09:14', '1979-11-02 00:45:01');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (43, 111, 'dontlike', '1994-01-08 22:21:46', '2004-02-29 21:02:40');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (43, 162, 'like', '2020-03-03 13:00:21', '1986-06-19 20:44:35');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (44, 112, 'scandal', '2001-08-09 18:25:34', '1971-05-11 03:02:11');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (44, 163, 'super', '1994-09-07 09:18:52', '2006-10-08 12:19:43');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (45, 114, 'sorry', '1999-08-03 04:54:42', '2003-09-20 18:08:27');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (45, 165, 'dontlike', '2009-02-19 16:05:49', '1993-02-17 02:38:25');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (46, 116, 'scandal', '1978-02-21 17:33:24', '2007-01-23 07:30:35');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (46, 166, 'scandal', '1987-07-28 02:45:46', '1975-09-06 21:22:44');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (47, 117, 'scandal', '1999-06-27 07:26:00', '1980-05-09 12:25:18');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (47, 167, 'like', '1971-02-11 15:12:45', '2002-07-13 16:07:08');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (48, 118, 'dontlike', '1971-06-25 09:08:56', '2008-05-30 21:30:40');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (48, 168, 'super', '1981-02-07 03:21:11', '1972-11-28 06:24:45');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (49, 119, 'like', '1986-06-20 17:34:46', '1986-10-25 20:35:14');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (49, 169, 'dontlike', '1982-12-01 01:33:53', '2009-03-30 00:07:07');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (50, 120, 'like', '2007-03-17 05:11:27', '2004-02-22 01:55:02');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (50, 171, 'scandal', '2019-04-15 09:32:50', '2001-10-28 07:19:20');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (51, 121, 'like', '2014-09-24 11:17:41', '2009-05-21 06:41:48');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (51, 172, 'sorry', '1986-12-03 08:41:19', '1978-07-12 02:31:22');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (52, 123, 'super', '1989-05-15 08:01:27', '2011-05-28 12:09:06');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (52, 173, 'super', '2004-01-11 13:34:56', '1972-11-14 13:36:32');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (53, 124, 'super', '1993-01-23 21:11:11', '1972-09-04 12:07:37');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (53, 175, 'super', '2016-12-14 22:47:35', '2011-07-04 01:03:37');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (54, 126, 'super', '2003-11-03 01:07:20', '1980-05-07 03:46:31');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (54, 176, 'super', '2004-01-05 11:26:12', '1992-08-12 13:33:54');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (55, 130, 'scandal', '2015-05-07 00:15:52', '1998-03-13 08:28:49');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (55, 177, 'like', '2003-01-19 12:14:23', '1989-01-22 15:14:39');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (56, 132, 'super', '2001-06-03 12:59:59', '1986-08-19 07:08:29');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (56, 179, 'sorry', '1995-04-12 16:03:58', '1989-02-11 18:45:12');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (57, 133, 'sorry', '1981-09-11 16:49:52', '1994-09-26 02:43:04');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (57, 181, 'like', '2006-12-07 16:25:58', '2018-08-30 04:40:40');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (58, 135, 'sorry', '2013-01-22 20:17:12', '2019-12-29 00:05:42');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (58, 183, 'dontlike', '1979-06-08 01:57:59', '1976-10-15 03:59:29');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (59, 136, 'scandal', '1991-04-12 00:50:46', '1992-12-13 11:51:10');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (59, 185, 'scandal', '2005-07-22 21:37:04', '1992-12-08 12:10:11');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (60, 137, 'scandal', '1983-06-10 16:11:30', '1986-04-09 12:10:39');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (60, 186, 'sorry', '2008-11-08 07:10:02', '1976-08-08 19:30:52');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (61, 188, 'sorry', '2019-02-01 22:36:23', '1981-10-12 16:03:06');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (62, 191, 'super', '1977-01-07 15:12:34', '1981-04-20 00:27:08');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (63, 193, 'sorry', '1977-05-18 18:16:22', '2014-02-20 07:03:06');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (64, 194, 'dontlike', '1975-12-13 05:35:12', '1997-01-27 12:42:02');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (65, 195, 'sorry', '1971-08-22 20:26:00', '1973-05-12 21:56:04');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (66, 197, 'sorry', '1995-12-14 23:28:21', '2016-05-21 19:32:58');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (67, 198, 'sorry', '1973-03-27 04:56:23', '2009-07-09 20:02:41');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (68, 199, 'super', '1973-08-12 09:38:24', '1981-03-12 03:46:24');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (69, 101, 'scandal', '2001-09-23 15:04:58', '1978-04-06 03:10:14');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (70, 102, 'sorry', '1979-05-16 13:03:32', '1982-09-24 04:38:27');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (71, 103, 'super', '1992-08-19 06:32:45', '1998-02-03 04:46:58');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (72, 106, 'sorry', '1994-12-20 09:14:34', '2014-11-05 11:28:23');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (73, 107, 'scandal', '1993-12-07 23:12:09', '1998-01-22 13:01:00');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (74, 108, 'sorry', '2011-02-01 03:58:51', '2017-10-12 09:47:23');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (75, 111, 'dontlike', '1986-04-14 16:23:57', '2011-08-12 15:20:40');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (76, 112, 'dontlike', '1992-05-03 16:14:03', '2001-04-21 08:37:42');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (77, 114, 'sorry', '1980-05-21 08:45:56', '2000-07-09 03:41:07');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (78, 116, 'like', '1998-03-04 00:09:52', '2003-08-05 05:31:56');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (79, 117, 'super', '2009-02-28 08:30:27', '2001-05-09 12:51:33');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (80, 118, 'dontlike', '1970-04-10 17:54:34', '1973-12-16 11:38:42');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (81, 119, 'like', '1985-02-03 01:57:43', '2017-01-31 02:58:23');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (82, 120, 'sorry', '2019-10-19 04:58:57', '1982-02-22 03:29:16');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (83, 121, 'sorry', '2007-04-09 15:00:47', '1982-01-18 19:35:39');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (84, 123, 'sorry', '1977-02-17 09:02:52', '1988-12-27 15:36:05');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (85, 124, 'sorry', '2008-06-03 01:16:47', '2004-05-21 23:15:04');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (86, 126, 'scandal', '2017-06-19 17:14:07', '2015-09-11 02:27:01');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (87, 130, 'scandal', '1987-07-27 01:17:49', '1981-11-02 15:35:33');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (88, 132, 'scandal', '2015-03-27 22:58:47', '1983-06-19 00:21:41');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (89, 133, 'super', '1991-01-15 01:33:35', '1983-12-08 07:30:51');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (90, 135, 'scandal', '1998-02-02 12:41:46', '2001-11-02 21:39:59');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (91, 136, 'scandal', '1992-03-12 15:42:03', '1973-09-30 22:55:18');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (92, 137, 'like', '1975-05-05 13:22:58', '1999-09-30 09:21:44');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (93, 138, 'super', '2010-05-16 19:35:49', '1973-08-07 20:11:28');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (94, 139, 'like', '2001-02-01 12:35:01', '2016-03-09 07:49:09');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (95, 140, 'super', '1983-08-16 03:35:53', '2002-07-30 11:26:21');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (96, 141, 'scandal', '2004-02-06 03:28:53', '1990-10-15 16:23:43');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (97, 142, 'super', '2010-12-24 02:08:09', '2012-04-09 07:15:44');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (98, 143, 'scandal', '2012-03-16 16:11:19', '2008-01-08 14:15:14');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (99, 145, 'scandal', '2002-12-07 19:37:59', '2001-11-10 12:04:47');
INSERT INTO `media_likes` (`to_object_id`, `from_users_id`, `status`, `created_at`, `updated_at`) VALUES (100, 146, 'like', '2009-03-06 11:29:47', '1994-10-12 06:40:43');


