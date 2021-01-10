DROP TABLE IF EXISTS `users`; 
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(145) NOT NULL COMMENT 'имя',
  `lastname` varchar(145) NOT NULL COMMENT 'фамилия',
  `email` varchar(245) NOT NULL,
  `phone` bigint NOT NULL,
  `password_hash` char(65) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `phone_UNIQUE` (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;		

DROP TABLE IF EXISTS `friend_requests`; 
CREATE TABLE `friend_requests` (
  `from_users_id` int unsigned NOT NULL,
  `to_users_id` int unsigned NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '-1 - отклонен, 0 - запрос, 1 - принят',
  `created_ad` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`from_users_id`,`to_users_id`),
  KEY `fk_friend_requests_users1_idx` (`from_users_id`),
  KEY `fk_friend_requests_users2_idx` (`to_users_id`),
  CONSTRAINT `fk_friend_requests_users1` FOREIGN KEY (`from_users_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_friend_requests_users2` FOREIGN KEY (`to_users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;		

DROP TABLE IF EXISTS `communities`; 
CREATE TABLE `communities` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(145) NOT NULL,
  `desc` varchar(245) DEFAULT NULL,
  `admin_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_communities_users1_idx` (`admin_id`),
  CONSTRAINT `fk_communities_users1` FOREIGN KEY (`admin_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;		

DROP TABLE IF EXISTS `media_types`; 
CREATE TABLE `media_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;		

DROP TABLE IF EXISTS `media`; 
CREATE TABLE `media` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `users_id` int unsigned NOT NULL,
  `media_types_id` int unsigned NOT NULL,
  `name` varchar(45) NOT NULL,
  `url` varchar(45) DEFAULT NULL COMMENT '/files/file.jpg',
  `blob` blob,
  `size` bigint NOT NULL DEFAULT '0',
  `metadata` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_media_users1_idx` (`users_id`),
  KEY `fk_media_media_types1_idx` (`media_types_id`),
  CONSTRAINT `fk_media_media_types1` FOREIGN KEY (`media_types_id`) REFERENCES `media_types` (`id`),
  CONSTRAINT `fk_media_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;		

DROP TABLE IF EXISTS `messages`; 
CREATE TABLE `messages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `from_users_id` int unsigned NOT NULL,
  `to_users_id` int unsigned NOT NULL,
  `text` varchar(245) DEFAULT NULL,
  `media_id` int unsigned NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `from_users_idx` (`from_users_id`) /*!80000 INVISIBLE */,
  KEY `fk_messages_users1_idx` (`to_users_id`),
  KEY `fk_messages_media1_idx` (`media_id`),
  CONSTRAINT `fk_messages_media1` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`),
  CONSTRAINT `fk_messages_users_from` FOREIGN KEY (`from_users_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_messages_users_to` FOREIGN KEY (`to_users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;		

DROP TABLE IF EXISTS `posts`; 
CREATE TABLE `posts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `users_id` int unsigned NOT NULL,
  `communities_id` int unsigned DEFAULT NULL,
  `text` text,
  `media_id` int unsigned NOT NULL,
  KEY `fk_profiles_users_idx` (`users_id`),
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_posts_users1_idx` (`users_id`),
  KEY `fk_posts_communities1_idx` (`communities_id`),
  KEY `fk_posts_media1_idx` (`media_id`),
  CONSTRAINT `fk_posts_communities1` FOREIGN KEY (`communities_id`) REFERENCES `communities` (`id`),
  CONSTRAINT `fk_posts_media1` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`),
  CONSTRAINT `fk_posts_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;		

DROP TABLE IF EXISTS `profiles`; 
CREATE TABLE `profiles` (
  `users_id` int unsigned NOT NULL,
  `gender` enum('m','f','x') NOT NULL,
  `birthday` date NOT NULL,
  `adress` varchar(245) DEFAULT NULL,
  `photo_id` int unsigned DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`users_id`),
  KEY `fk_profiles_media1_idx` (`photo_id`),
  CONSTRAINT `fk_profiles_media1` FOREIGN KEY (`photo_id`) REFERENCES `media` (`id`),
  CONSTRAINT `fk_profiles_users` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;		

DROP TABLE IF EXISTS `users_communities`; 
CREATE TABLE `users_communities` (
  `communities_id` int unsigned NOT NULL,
  `users_id` int unsigned NOT NULL,
  PRIMARY KEY (`communities_id`, `users_id`),
  KEY `fk_users_communities_communities1_idx` (`communities_id`),
  KEY `fk_users_communities_users1_idx` (`users_id`),
  CONSTRAINT `fk_users_communities_communities1` FOREIGN KEY (`communities_id`) REFERENCES `communities` (`id`),
  CONSTRAINT `fk_users_communities_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;		

DROP TABLE IF EXISTS `media_likes`; 
CREATE TABLE `media_likes` (
	`to_object_id` INT UNSIGNED NOT NULL,
	`from_users_id` INT UNSIGNED NOT NULL,	  
	`status` enum('like','super','sorry','dontlike','scandal') NOT NULL DEFAULT 'like', 
    `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` datetime NULL DEFAULT NULL,
    PRIMARY KEY (`to_object_id`, `from_users_id`) ,
    KEY `fk_media_likes_media_idx` (`to_object_id`),
    KEY `fk_likes_users_idx` (`from_users_id`),
    CONSTRAINT `fk_media_likes_media_id` FOREIGN KEY (`to_object_id`) REFERENCES media (`id`),
    CONSTRAINT `fk_likes_users_id` FOREIGN KEY (`from_users_id`) REFERENCES users (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS `post_likes`; 
CREATE TABLE `post_likes` (
	`to_object_id` INT UNSIGNED NOT NULL,
	`from_users_id` INT UNSIGNED NOT NULL,	  
	`status` enum('like','super','sorry','dontlike','scandal') NOT NULL DEFAULT 'like', 
    `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` datetime NULL DEFAULT NULL,
    PRIMARY KEY (`to_object_id`, `from_users_id`) ,
    KEY `fk_post_likes_posts_idx` (`to_object_id`),
    KEY `fk_post_likes_users_idx` (`from_users_id`),
    CONSTRAINT `fk_post_likes_posts_id` FOREIGN KEY (`to_object_id`) REFERENCES posts (`id`),
    CONSTRAINT `fk_post_likes_users_id` FOREIGN KEY (`from_users_id`) REFERENCES users (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS `user_likes`; 
CREATE TABLE `user_likes` (
	`to_object_id` INT UNSIGNED NOT NULL,
	`from_users_id` INT UNSIGNED NOT NULL,	  
	`status` enum('like','super','dontlike') NOT NULL DEFAULT 'like', 
    `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` datetime NULL DEFAULT NULL,
    PRIMARY KEY (`to_object_id`, `from_users_id`) ,
    KEY `fk_user_likes_users1_idx` (`to_object_id`),
    KEY `fk_user_likes_users2_idx` (`from_users_id`),
    CONSTRAINT `fk_user_likes_users1_id` FOREIGN KEY (`to_object_id`) REFERENCES users (`id`),
    CONSTRAINT `fk_user_likes_users2_id` FOREIGN KEY (`from_users_id`) REFERENCES users (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
