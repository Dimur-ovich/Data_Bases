#
# TABLE STRUCTURE FOR: communities
#

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(145) NOT NULL,
  `desc` varchar(245) DEFAULT NULL,
  `admin_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_communities_users1_idx` (`admin_id`),
  CONSTRAINT `fk_communities_users1` FOREIGN KEY (`admin_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4;

INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (1, 'consequatur', NULL, 101);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (2, 'quo', NULL, 102);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (3, 'nulla', NULL, 103);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (4, 'voluptatem', NULL, 106);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (5, 'nisi', NULL, 107);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (6, 'soluta', NULL, 108);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (7, 'voluptatem', NULL, 111);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (8, 'est', NULL, 112);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (9, 'dolores', NULL, 114);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (10, 'ut', NULL, 116);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (11, 'non', NULL, 117);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (12, 'eius', NULL, 118);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (13, 'occaecati', NULL, 119);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (14, 'unde', NULL, 120);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (15, 'nulla', NULL, 121);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (16, 'est', NULL, 123);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (17, 'aut', NULL, 124);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (18, 'tenetur', NULL, 126);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (19, 'possimus', NULL, 130);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (20, 'ipsa', NULL, 132);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (21, 'voluptas', NULL, 133);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (22, 'ut', NULL, 135);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (23, 'quisquam', NULL, 136);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (24, 'cupiditate', NULL, 137);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (25, 'in', NULL, 138);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (26, 'hic', NULL, 139);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (27, 'libero', NULL, 140);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (28, 'ut', NULL, 141);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (29, 'dolor', NULL, 142);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (30, 'quas', NULL, 143);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (31, 'veritatis', NULL, 145);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (32, 'esse', NULL, 146);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (33, 'sit', NULL, 147);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (34, 'corporis', NULL, 148);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (35, 'iste', NULL, 150);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (36, 'magni', NULL, 151);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (37, 'nihil', NULL, 152);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (38, 'saepe', NULL, 153);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (39, 'dolorem', NULL, 155);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (40, 'natus', NULL, 157);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (41, 'at', NULL, 159);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (42, 'quia', NULL, 161);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (43, 'quaerat', NULL, 162);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (44, 'ea', NULL, 163);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (45, 'dolorum', NULL, 165);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (46, 'magni', NULL, 166);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (47, 'rerum', NULL, 167);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (48, 'dolores', NULL, 168);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (49, 'in', NULL, 169);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (50, 'tenetur', NULL, 171);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (51, 'vitae', NULL, 172);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (52, 'quaerat', NULL, 173);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (53, 'rem', NULL, 175);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (54, 'est', NULL, 176);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (55, 'maxime', NULL, 177);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (56, 'nobis', NULL, 179);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (57, 'qui', NULL, 181);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (58, 'cumque', NULL, 183);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (59, 'vel', NULL, 185);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (60, 'et', NULL, 186);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (61, 'sit', NULL, 188);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (62, 'soluta', NULL, 191);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (63, 'quas', NULL, 193);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (64, 'ut', NULL, 194);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (65, 'sed', NULL, 195);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (66, 'ut', NULL, 197);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (67, 'et', NULL, 198);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (68, 'dolorum', NULL, 199);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (69, 'dolorem', NULL, 101);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (70, 'est', NULL, 102);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (71, 'id', NULL, 103);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (72, 'neque', NULL, 106);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (73, 'deserunt', NULL, 107);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (74, 'debitis', NULL, 108);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (75, 'perspiciatis', NULL, 111);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (76, 'deserunt', NULL, 112);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (77, 'debitis', NULL, 114);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (78, 'fuga', NULL, 116);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (79, 'omnis', NULL, 117);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (80, 'totam', NULL, 118);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (81, 'maxime', NULL, 119);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (82, 'ex', NULL, 120);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (83, 'vel', NULL, 121);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (84, 'laboriosam', NULL, 123);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (85, 'voluptatem', NULL, 124);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (86, 'dolorum', NULL, 126);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (87, 'numquam', NULL, 130);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (88, 'veritatis', NULL, 132);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (89, 'necessitatibus', NULL, 133);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (90, 'ipsum', NULL, 135);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (91, 'adipisci', NULL, 136);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (92, 'vitae', NULL, 137);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (93, 'cum', NULL, 138);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (94, 'officia', NULL, 139);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (95, 'cumque', NULL, 140);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (96, 'blanditiis', NULL, 141);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (97, 'odit', NULL, 142);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (98, 'eligendi', NULL, 143);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (99, 'beatae', NULL, 145);
INSERT INTO `communities` (`id`, `name`, `desc`, `admin_id`) VALUES (100, 'velit', NULL, 146);


