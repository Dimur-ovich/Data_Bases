#
# TABLE STRUCTURE FOR: users_communities
#

DROP TABLE IF EXISTS `users_communities`;

CREATE TABLE `users_communities` (
  `communities_id` int(10) unsigned NOT NULL,
  `users_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`communities_id`,`users_id`),
  KEY `fk_users_communities_communities1_idx` (`communities_id`),
  KEY `fk_users_communities_users1_idx` (`users_id`),
  CONSTRAINT `fk_users_communities_communities1` FOREIGN KEY (`communities_id`) REFERENCES `communities` (`id`),
  CONSTRAINT `fk_users_communities_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (1, 101);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (1, 147);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (2, 102);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (2, 148);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (3, 103);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (3, 150);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (4, 106);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (4, 151);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (5, 107);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (5, 152);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (6, 108);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (6, 153);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (7, 111);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (7, 155);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (8, 112);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (8, 157);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (9, 114);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (9, 159);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (10, 116);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (10, 161);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (11, 117);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (11, 162);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (12, 118);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (12, 163);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (13, 119);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (13, 165);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (14, 120);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (14, 166);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (15, 121);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (15, 167);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (16, 123);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (16, 168);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (17, 124);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (17, 169);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (18, 126);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (18, 171);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (19, 130);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (19, 172);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (20, 132);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (20, 173);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (21, 133);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (21, 175);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (22, 135);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (22, 176);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (23, 136);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (23, 177);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (24, 137);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (24, 179);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (25, 138);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (25, 181);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (26, 139);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (26, 183);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (27, 140);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (27, 185);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (28, 141);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (28, 186);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (29, 142);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (29, 188);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (30, 143);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (30, 191);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (31, 145);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (31, 193);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (32, 146);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (32, 194);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (33, 147);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (33, 195);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (34, 148);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (34, 197);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (35, 150);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (35, 198);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (36, 151);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (36, 199);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (37, 101);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (37, 152);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (38, 102);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (38, 153);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (39, 103);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (39, 155);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (40, 106);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (40, 157);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (41, 107);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (41, 159);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (42, 108);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (42, 161);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (43, 111);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (43, 162);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (44, 112);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (44, 163);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (45, 114);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (45, 165);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (46, 116);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (46, 166);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (47, 117);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (47, 167);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (48, 118);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (48, 168);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (49, 119);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (49, 169);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (50, 120);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (50, 171);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (51, 121);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (51, 172);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (52, 123);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (52, 173);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (53, 124);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (53, 175);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (54, 126);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (54, 176);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (55, 130);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (55, 177);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (56, 132);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (56, 179);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (57, 133);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (57, 181);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (58, 135);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (58, 183);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (59, 136);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (59, 185);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (60, 137);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (60, 186);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (61, 138);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (61, 188);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (62, 139);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (62, 191);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (63, 140);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (63, 193);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (64, 141);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (64, 194);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (65, 142);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (65, 195);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (66, 143);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (66, 197);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (67, 145);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (67, 198);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (68, 146);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (68, 199);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (69, 101);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (69, 147);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (70, 102);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (70, 148);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (71, 103);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (71, 150);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (72, 106);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (72, 151);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (73, 107);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (73, 152);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (74, 108);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (74, 153);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (75, 111);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (75, 155);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (76, 112);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (76, 157);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (77, 114);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (77, 159);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (78, 116);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (78, 161);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (79, 117);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (79, 162);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (80, 118);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (80, 163);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (81, 119);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (81, 165);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (82, 120);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (82, 166);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (83, 121);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (83, 167);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (84, 123);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (84, 168);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (85, 124);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (85, 169);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (86, 126);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (86, 171);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (87, 130);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (87, 172);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (88, 132);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (88, 173);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (89, 133);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (89, 175);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (90, 135);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (90, 176);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (91, 136);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (91, 177);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (92, 137);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (92, 179);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (93, 138);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (93, 181);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (94, 139);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (94, 183);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (95, 140);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (95, 185);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (96, 141);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (96, 186);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (97, 142);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (97, 188);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (98, 143);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (98, 191);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (99, 145);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (99, 193);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (100, 146);
INSERT INTO `users_communities` (`communities_id`, `users_id`) VALUES (100, 194);

