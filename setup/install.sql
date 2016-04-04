CREATE TABLE `cards` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

INSERT INTO `cards` (`id`, `name`)
  VALUES
  (1, 'First Card');

CREATE TABLE `tasks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `marked` tinyint(1) NOT NULL DEFAULT '0',
  `priority` int(3) NOT NULL DEFAULT '500',
  `cardId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

INSERT INTO `tasks` (`id`, `name`, `marked`, `priority`, `cardId`)
  VALUES
  (1, 'add some tasks to the new card', 0, 500, 1),
  (2, 'add a new card', 0, 900, 1),
  (3, 'complete all tasks of the new card', 0, 100, 1);