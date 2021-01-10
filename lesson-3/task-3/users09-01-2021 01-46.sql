#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(145) NOT NULL COMMENT 'имя',
  `lastname` varchar(145) NOT NULL COMMENT 'фамилия',
  `email` varchar(245) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `password_hash` char(65) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `phone_UNIQUE` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4;

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (101, 'Lucinda', 'Murazik', 'whand@example.net', '851164', '3184f67fb0812489652bd5744c9fa96589c9a2ea');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (102, 'Maya', 'Mueller', 'kmacejkovic@example.net', '297', '4ce3bfa706669ca1716c4e04aab0d2cf93a2e325');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (103, 'Allene', 'Orn', 'aufderhar.teagan@example.net', '1', '9bc93ccc3396d353b83ef35b464d1dad2f9d2381');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (106, 'Nasir', 'Koelpin', 'yshanahan@example.net', '87', 'f2f253015fb53a87849941af82ee097bfc5fbabf');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (107, 'Kendrick', 'Flatley', 'citlalli99@example.org', '167895', '669d228c1fa477510299b49205135ce03faf5201');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (108, 'Maureen', 'Crooks', 'lrowe@example.org', '739093', 'e26a927438d60f626485168a2f34f1bbb2770a65');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (111, 'Gonzalo', 'O\'Reilly', 'lucius13@example.com', '104', 'fe817b0bd06e29006e04c4b451ab49b7c7e5b6e3');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (112, 'Claude', 'Wiza', 'bbuckridge@example.net', '0', '05eada1c47688dbd51441de5070a29d1746235df');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (114, 'Ericka', 'Gusikowski', 'batz.damion@example.org', '617142', '63bd35fdc042dfaf1f7ba6cc9eb071b34e169d82');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (116, 'Jodie', 'Williamson', 'marcelle.beatty@example.net', '276926', 'b1091ed4cdca6f9177ebb79e55495871e925ba13');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (117, 'Alanis', 'Hansen', 'cydney66@example.net', '857159', '702f0dddd6041950efbc3f58ee1b30a182e38f2c');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (118, 'Breanna', 'Hermann', 'vance11@example.com', '850', 'cb0314cf9843d44c6d0f4864fbdb54bdf729a4d2');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (119, 'Theresa', 'Hane', 'lexi32@example.net', '261', 'aa8a56693940e1e1859af656926bfa6f40b0024b');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (120, 'Marjory', 'Waelchi', 'brielle.gerlach@example.com', '206068', '932793193f5c715a0c933d20d79879e142263c57');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (121, 'Jermain', 'Murazik', 'winifred.cassin@example.org', '2', 'ef3ffded6fbf99952b5e158f98bdd7a208f80d14');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (123, 'Arnulfo', 'Veum', 'sammie.bode@example.org', '331353', '8ea5a30bf65e158e4fcf53635d5a48089de68304');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (124, 'Asa', 'Feeney', 'delores71@example.net', '30', '5860bc0ef8bb80d8e776d337deb1496c97745e06');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (126, 'Jamison', 'Hilpert', 'wlabadie@example.net', '8677731164', '7a9142a4a25c5460ea4b0b20c80c4a67f94f420d');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (130, 'Logan', 'Walter', 'remington42@example.net', '255740', '2ab60cac5ea0956abe8a38144e19f69a44374e90');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (132, 'Unique', 'Stroman', 'bernier.garrett@example.org', '504900', '4641e209245362819b0d20ad8abd9e3a73fd79ad');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (133, 'Makayla', 'Gleichner', 'jschulist@example.net', '64', '8d379014b1f909ccd05a3d4ce454e38322b5f061');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (135, 'Dannie', 'Connelly', 'nicklaus63@example.org', '337', 'dec8b7e8b83956eaeb0b524e49086e46cbb8c2c1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (136, 'Carey', 'Brown', 'pearl75@example.com', '362', '50fbdbd5b0f7d07475aea3a0ac769d326bc82cfa');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (137, 'Joseph', 'Douglas', 'glenda61@example.net', '6149223080', '9a36e231e89e42f53a3cfa0e4c76b1feb9ce934f');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (138, 'Evan', 'Fahey', 'winona.lowe@example.net', '1168620971', '472a4cd3626c74ac947e8c6182449b6a89d0aef1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (139, 'Mandy', 'Mertz', 'wdare@example.com', '73', 'd7a87545f3ea4401d6fc457142ca8750464ad116');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (140, 'Forest', 'Sipes', 'zmills@example.net', '165', 'bad2aaf96b18180cc91c37a3fd0c6e46e43732fd');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (141, 'Robyn', 'Feest', 'nrohan@example.org', '93', 'd12f41a6d265bf91139ef5194be4da943207def9');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (142, 'Noble', 'Tillman', 'kmarquardt@example.net', '146', '5c7921af7346666603d83bef68482e134fcbbdee');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (143, 'Zena', 'Reichert', 'coy.cormier@example.org', '1828539041', 'e96e48a2ed0b72a51e1756f4520ce3d03ef358fa');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (145, 'Kiel', 'Fay', 'akuhic@example.com', '174', 'b785f510918e7cebdf943b73e913aa597f44ba02');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (146, 'Nyasia', 'Krajcik', 'blanche.rath@example.org', '2400683488', 'c9cd7603a20013c3fed1a94c981115b60594438f');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (147, 'Caterina', 'Nicolas', 'roman.labadie@example.org', '680', 'b80fc1b29cbd0ef597e49f13be36556fe569c731');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (148, 'Roxanne', 'Kreiger', 'eulalia.botsford@example.net', '395584', '1e412ea22d775460224b900cb9a5e86d1b515155');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (150, 'Chandler', 'Bins', 'lgrant@example.com', '198931', '58309389f677b2ebd5dd0a088db29ae2279e19d6');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (151, 'Melyssa', 'Smith', 'armstrong.dexter@example.org', '509105', '254b99cf943dbdfc00700ee86488ea242502d487');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (152, 'Flavie', 'Sipes', 'misty60@example.com', '683', 'e89701a58c20001a1baa66a7232af063a4cd5f3c');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (153, 'Abe', 'O\'Reilly', 'white.ahmad@example.net', '880517', '7277cdb9c57c86055b19ad384f6587ceacbb72d9');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (155, 'Micaela', 'Metz', 'vernie.mills@example.org', '8489672081', '2abec0716e5d821279ddb28c3aa0a1fd36cdeb71');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (157, 'Dillan', 'Ziemann', 'mcglynn.gertrude@example.net', '299957', '474903311d037bce842eea57f8175314c1253bf6');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (159, 'Verona', 'Durgan', 'oberbrunner.trycia@example.net', '405', '834671cf04624e8dcf5a25f2990472ffc57b2f0d');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (161, 'Ricardo', 'Koch', 'kelsie03@example.net', '736', '73137db1fb1683296402df3eae7a9d87351fe938');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (162, 'Stephan', 'Gulgowski', 'zora19@example.net', '1978082236', '0fc33d64b0923019f2967ee2bf41fa59fc8fdf0d');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (163, 'Raleigh', 'O\'Connell', 'raphael.sanford@example.com', '8427659207', '5fe94eb9712c556d34fda6861594e80a46b58f91');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (165, 'Malachi', 'King', 'hector.mohr@example.org', '386', '4b3534732aae53fb81572bcb44a87b71a14820b6');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (166, 'Eda', 'Gleason', 'lleffler@example.com', '595613', '574ef6613c68d2b13b98042b6ee7cafeb9fcdc15');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (167, 'Jarrell', 'Hammes', 'spinka.forrest@example.net', '932', '3539d779e7e86bad8181e16911eab0cb082b606a');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (168, 'Adrain', 'Nitzsche', 'dwehner@example.org', '859756', 'b354b5a6b1cf5434660e986d7a56551e0eb216e3');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (169, 'Quincy', 'Tromp', 'stan.langworth@example.org', '579369', '87351a34e0cfd57bcd794a0ea734916a0cf176fa');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (171, 'Tate', 'Murazik', 'chance.kozey@example.org', '70218', '77dbdf91b94550b218a0df458ea59b9d21f01fbc');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (172, 'Sabina', 'Powlowski', 'waino94@example.org', '78', '7440e665869c5122552c967ace33e22a6f270c7f');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (173, 'Boyd', 'Carter', 'bhowell@example.org', '395', '65b82a64b3bdaef972e5d842207180cba88fa57f');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (175, 'Marjolaine', 'Rath', 'muhammad24@example.com', '4312467301', '0f9a2a85025bbd43acd0aa30b840b2a44568a6f1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (176, 'Holly', 'Howell', 'sanford.murl@example.org', '13439', '8c67eec1093a5efd65d04749d9f6574495753d6e');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (177, 'Dagmar', 'Bergnaum', 'nicole.abshire@example.com', '3300849636', 'c4fbc5df4812a071edb68a6bc7e1af4ec48837d3');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (179, 'Ashleigh', 'Gottlieb', 'jenifer63@example.org', '511', 'e736dd8e7411719e1cf29b5ba25197966fcaa870');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (181, 'Viola', 'Mertz', 'titus17@example.net', '180', '5673be9434f881f84909f92008bd34f5ff44605b');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (183, 'Chet', 'Lebsack', 'hansen.terry@example.org', '966', '2021f1f6103a4d3e44e18eb64af5648ff6bad9dc');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (185, 'Bettye', 'Cassin', 'hane.jaylan@example.net', '322', '70bfe2522d554541fb03442e2c75e0ee2a8d7fb2');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (186, 'Taylor', 'Boyle', 'chanel.pollich@example.net', '799', 'c6df11c63af80989d9fa05cbf6c84a8105fbbac2');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (188, 'Waino', 'Ledner', 'jadyn45@example.org', '477349', '7449faef13227a4cc865525c344c055940bfc5bd');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (191, 'Clotilde', 'Ebert', 'vallie.senger@example.com', '431170', 'f51d19767149e2a846dc646b32918c059e43f29d');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (193, 'Mandy', 'Cummerata', 'german22@example.net', '188876', 'f86db3c645ff44fdef9b898b78af152a5c92ec7a');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (194, 'Lesly', 'Maggio', 'streich.maia@example.net', '576848', '1d90e644d42a2f649d42ad3be38ebc1ea2023632');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (195, 'Brianne', 'Gorczany', 'stevie.kautzer@example.net', '3175812908', '7cd6fc4b9f244f776dc6444dba9d190eadf5c2bb');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (197, 'Barbara', 'Hessel', 'brakus.imani@example.org', '671493', 'ba7096dab4825c63a2ac32ab63c814328dec9273');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (198, 'Kelvin', 'Kunde', 'green.rosalind@example.net', '7998677046', '02409a7811fb15827d94abbca5024dd1006c8f84');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`) VALUES (199, 'Eli', 'Wiegand', 'vking@example.org', '216668', '7f531dbbd4bdaf2e2a7de3c719eb191dbaa10d70');


