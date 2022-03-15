

CREATE TABLE `text` (
  `id_text` int(10) NOT NULL,
  `text_en` varchar(1000) NOT NULL,
  `text_es` varchar(1000) DEFAULT NULL,
  `path_1` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Classic',
  `path_2` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'The Burning Crusade',
  `path_3` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Wrath of the Lich King',
  `path_4` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Cataclysm',
  `path_5` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Mists of Pandaria',
  `path_6` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Warlords of Draenor',
  `path_7` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Legion',
  `path_8` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Battle for Azeroth',
  `path_9` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Shadowlands'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


ALTER TABLE `text`
  ADD PRIMARY KEY (`id_text`),
  ADD UNIQUE KEY `id_text` (`id_text`),
  ADD UNIQUE KEY `text_en` (`text_en`) USING HASH;

ALTER TABLE `text`
  MODIFY `id_text` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;
COMMIT;

