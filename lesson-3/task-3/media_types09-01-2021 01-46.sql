#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

INSERT INTO `media_types` (`id`, `name`) VALUES (1, 'dolor');
INSERT INTO `media_types` (`id`, `name`) VALUES (2, 'optio');
INSERT INTO `media_types` (`id`, `name`) VALUES (3, 'aut');
INSERT INTO `media_types` (`id`, `name`) VALUES (4, 'numquam');
INSERT INTO `media_types` (`id`, `name`) VALUES (5, 'eum');


