/*
 Navicat Premium Data Transfer

 Source Server         : nueva_conexion_de_prueba
 Source Server Type    : MySQL
 Source Server Version : 50562
 Source Host           : localhost:3306
 Source Schema         : mangos

 Target Server Type    : MySQL
 Target Server Version : 50562
 File Encoding         : 65001

 Date: 29/03/2022 17:16:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for locales_points_of_interest
-- ----------------------------
DROP TABLE IF EXISTS `locales_points_of_interest`;
CREATE TABLE `locales_points_of_interest`  (
  `entry` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `icon_name_loc1` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `icon_name_loc2` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `icon_name_loc3` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `icon_name_loc4` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `icon_name_loc5` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `icon_name_loc6` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `icon_name_loc7` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `icon_name_loc8` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`entry`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of locales_points_of_interest
-- ----------------------------
INSERT INTO `locales_points_of_interest` VALUES (658, NULL, 'L\'auberge de la Fierté du Lion', 'Gasthaus Zur H?hle des L?wen', '狮王之傲旅店', NULL, 'Posada Orgullo del León', NULL, 'Таверна \"Гордость льва\"');
INSERT INTO `locales_points_of_interest` VALUES (652, NULL, 'Zaldimar Wefhellt', 'Zaldimar Wefhellt', '札尔迪玛·维夫希尔特', NULL, 'Zaldimar Wefhellt', NULL, 'Залдимар Вефхеллт');
INSERT INTO `locales_points_of_interest` VALUES (660, NULL, 'Frère Wilhelm', 'Bruder Wilhelm', '维尔海姆修士', NULL, 'Hermano Fijalontad', NULL, 'Брат Вильгельм');
INSERT INTO `locales_points_of_interest` VALUES (653, NULL, 'Prêtresse Josetta', 'Priesterin Josetta', '女牧师洁塞塔', NULL, 'Sacerdotisa Josetta', NULL, 'Жрица Жозетта');
INSERT INTO `locales_points_of_interest` VALUES (657, NULL, 'Keryn Sylvius', 'Keryn Sylvius', '科瑞恩·塞尔留斯', NULL, 'Keryn Sylvius', NULL, 'Керин Сильвиус');
INSERT INTO `locales_points_of_interest` VALUES (656, NULL, 'Maximillian Crowe', 'Maximillian Raab', '玛克西米利安·克洛文', NULL, 'Maximillian Crowe', NULL, 'Максимилиан Кроу');
INSERT INTO `locales_points_of_interest` VALUES (661, NULL, 'Lyria Du Lac', 'Lyria Du Lac', '里瑞亚·杜拉克', NULL, 'Lyria Du Lac', NULL, 'Лирия дю Лак');
INSERT INTO `locales_points_of_interest` VALUES (663, NULL, 'Alchimiste Mallory', 'Alchemist Mallory', '炼金术士玛洛瑞', NULL, 'Alquimista Mallory', NULL, 'Алхимик Маллори');
INSERT INTO `locales_points_of_interest` VALUES (659, NULL, 'Argus le forgeron', 'Schmied Argus', '铁匠阿古斯', NULL, 'Herrero Argus', NULL, 'Кузнец Аргус');
INSERT INTO `locales_points_of_interest` VALUES (655, NULL, 'Tomas', 'Tomas', '汤马斯', NULL, 'Tomas', NULL, 'Томас');
INSERT INTO `locales_points_of_interest` VALUES (654, NULL, 'Michelle Belle', 'Michelle Belle', '密雪儿·贝莉', NULL, 'Michelle Belle', NULL, 'Мишель Белль');
INSERT INTO `locales_points_of_interest` VALUES (649, NULL, 'Lee Brown', 'Lee Braun', '李·布朗', NULL, 'Lee Brown', NULL, 'Ли Браун');
INSERT INTO `locales_points_of_interest` VALUES (650, NULL, 'Adele Fielder', 'Adele F?dler', '艾德勒·费欧德', NULL, 'Adele Fielder', NULL, 'Адель Филдер');
INSERT INTO `locales_points_of_interest` VALUES (651, NULL, 'Helene Tannepeau', 'Helene Pelzschneider', '海伦尼·派特斯金纳', NULL, 'Helene Desollapelambres', NULL, 'Хелена Меховяз');
INSERT INTO `locales_points_of_interest` VALUES (647, NULL, 'Eldrin', 'Eldrin', '艾尔丁', NULL, 'Eldrin', NULL, 'Элдрин');
INSERT INTO `locales_points_of_interest` VALUES (869, NULL, 'Erma', 'Erma', '艾玛', NULL, 'Erma', NULL, 'Ирма');
INSERT INTO `locales_points_of_interest` VALUES (527, NULL, 'Autel des ventes de Hurlevent', 'Auktionshaus von Sturmwind', '暴风城拍卖行', NULL, 'Casa de subastas de Ventormenta', NULL, 'Штормград: аукционный дом');
INSERT INTO `locales_points_of_interest` VALUES (47, NULL, 'Banque de Hurlevent', 'Bank von Sturmwind', '暴风城银行', NULL, 'Banco de Ventormenta', NULL, 'Штормград: банк');
INSERT INTO `locales_points_of_interest` VALUES (532, NULL, 'Le Tram des profondeurs', 'Die Tiefenbahn', '矿道地铁', NULL, 'El tranvía de Carrera Profunda', NULL, 'Подземный поезд');
INSERT INTO `locales_points_of_interest` VALUES (529, NULL, 'La Rose dorée', 'Die güldene Rose', '镶金玫瑰', NULL, 'La Rosa Áurea', NULL, 'Позолоченная роза');
INSERT INTO `locales_points_of_interest` VALUES (535, NULL, 'Maître des griffons de Hurlevent', 'Greifenmeister von Sturmwind', '暴风城狮鹫管理员', NULL, 'Maestro de grifos de Ventormenta', NULL, 'Штормград: укротитель грифонов');
INSERT INTO `locales_points_of_interest` VALUES (87, NULL, 'Centre d\'accueil des visiteurs de Hurlevent', 'Besucherzentrum von Sturmwind', '暴风城接待中心', NULL, 'Centro del visitante de Ventormenta', NULL, 'Гостевые покои Штормграда');
INSERT INTO `locales_points_of_interest` VALUES (870, NULL, 'Jenova Targe-pierre', 'Jenova Steinschild', '耶诺瓦·石盾', NULL, 'Jenova Petrescudo', NULL, 'Дженова Камнещит');
INSERT INTO `locales_points_of_interest` VALUES (808, NULL, 'Woo Ping', 'Woo Ping', '吴平', NULL, 'Woo Ping', NULL, 'Ву Пинг');
INSERT INTO `locales_points_of_interest` VALUES (1467, NULL, 'Hall des Champions', 'Die Halle der Champions', '勇士大厅', NULL, 'Salón de los Campeones', NULL, 'Зал Защитника');
INSERT INTO `locales_points_of_interest` VALUES (72, NULL, 'Le Parc', 'Der Park', '花园', NULL, 'El Parque', NULL, 'Парк');
INSERT INTO `locales_points_of_interest` VALUES (74, NULL, 'Gîte des chasseurs', 'J?gerlodge', '猎人大厅', NULL, 'Presentador de Cazadores', NULL, 'Охотничья Избушка');
INSERT INTO `locales_points_of_interest` VALUES (71, NULL, 'Sanctum des sorciers', 'Magiersanktum', '精灵圣殿', NULL, 'Santuario del mago', NULL, 'Башня магов');
INSERT INTO `locales_points_of_interest` VALUES (73, NULL, 'Chapelle de la Lumière', 'Kathedrale des Lichts', '圣光大教堂', NULL, 'Catedral de la Luz', NULL, 'Собор Света');
INSERT INTO `locales_points_of_interest` VALUES (69, NULL, 'Hurlevent - Maison des voleurs', 'Schurkenhaus von Sturmwind', '暴风城 - 盗贼之家', NULL, 'Ventormenta - Casa de los pícaros', NULL, 'Штормград: дом разбойников');
INSERT INTO `locales_points_of_interest` VALUES (75, NULL, 'L\'Agneau assassiné', 'Zum geschlachteten Lamm', '已宰的羔羊', NULL, 'El Cordero Degollado', NULL, 'Таверна \"Забитый ягненок\"');
INSERT INTO `locales_points_of_interest` VALUES (70, NULL, 'Caserne de Hurlevent', 'Kaserne von Sturmwind', '暴风城军营', NULL, 'Cuartel de Ventormenta', NULL, 'Казармы Штормграда');
INSERT INTO `locales_points_of_interest` VALUES (91, NULL, 'Tout pour l\'alchimiste', 'Alchemiebedarf', '炼金材料店', NULL, 'El Rincón del Alquimista', NULL, 'Все для алхимика');
INSERT INTO `locales_points_of_interest` VALUES (94, NULL, 'Therum Forge-profonde', 'Therum Tiefenschmied', '瑟鲁姆·深炉', NULL, 'Therum Forjahonda', NULL, 'Терум Подземная Кузня');
INSERT INTO `locales_points_of_interest` VALUES (68, NULL, 'Taverne du Cochon siffleur', 'Taverne Zum pfeifenden Schwein', '猪与哨声旅店', NULL, 'El Cerdo Borracho', NULL, 'Таверна \"Свинья и свисток\"');
INSERT INTO `locales_points_of_interest` VALUES (108, NULL, 'Lucan Cordell', 'Lucan Cordell', '鲁坎·考迪尔', NULL, 'Lucan Cordell', NULL, 'Лукан Корделл');
INSERT INTO `locales_points_of_interest` VALUES (93, NULL, 'Lilliam Fusétincelle', 'Lilliam Spindelfunks', '廉姆·火轴', NULL, 'Lilliam Chispeje', NULL, 'Лилиам Шпиндель');
INSERT INTO `locales_points_of_interest` VALUES (1427, NULL, 'Shaina Fuller', 'Shaina Fuller', '珊娜·费勒', NULL, 'Shaina Fuller', NULL, 'Шайна Корпия');
INSERT INTO `locales_points_of_interest` VALUES (107, NULL, 'Arnold Leland', 'Arnold Leland', '阿诺德·利兰', NULL, 'Arnold Leland', NULL, 'Арнольд Лиланд');
INSERT INTO `locales_points_of_interest` VALUES (90, NULL, 'Au cuir protecteur', 'Der schützende Balg', '护体皮甲', NULL, 'La Piel Protectora', NULL, 'Прочная шкура');
INSERT INTO `locales_points_of_interest` VALUES (95, NULL, 'Gelman Main-de-pierre', 'Gelman Steinhand', '吉尔曼·石手', NULL, 'Gelman Petramano', NULL, 'Гельман Камнерук');
INSERT INTO `locales_points_of_interest` VALUES (92, NULL, 'Textiles Duncan', 'Duncans Textilien', '邓肯布料店', NULL, 'Telas de Duncan', NULL, 'Ткани Дункана');
INSERT INTO `locales_points_of_interest` VALUES (418, NULL, 'Hôtel des ventes de Forgefer', 'Auktionshaus von Eisenschmiede', '铁炉堡拍卖行', NULL, 'Casa de subastas de Forjaz', NULL, 'Стальгорн: аукционный дом');
INSERT INTO `locales_points_of_interest` VALUES (415, NULL, 'Le Caveau', 'Das Gew?lbe', '平民区', NULL, 'La Bóveda', NULL, 'Свод');
INSERT INTO `locales_points_of_interest` VALUES (547, NULL, 'Tram des profondeurs', 'Die Tiefenbahn', '矿道地铁', NULL, 'Tranvía Carrera Profunda', NULL, 'Подземный поезд');
INSERT INTO `locales_points_of_interest` VALUES (407, NULL, 'Maître des griffons de Forgefer', 'Greifenmeister von Eisenschmiede', '铁炉堡狮鹫管理员', NULL, 'Maestro de Grifos de Forjaz', NULL, 'Стальгорн: укротитель грифонов');
INSERT INTO `locales_points_of_interest` VALUES (424, NULL, 'Centre des Visiteurs de Forgefer', 'Besucherzentrum von Eisenschmiede', '铁炉堡访客中心', NULL, 'Ironforge Visitor\'s Center', NULL, 'Гостевые покои Стальгорна');
INSERT INTO `locales_points_of_interest` VALUES (417, NULL, 'La taverne de Brûlepierre', 'Steinfeuertaverne', '石火旅店', NULL, 'Taberna de Fuego de Piedra', NULL, 'Таверна \"Горючий камень\"');
INSERT INTO `locales_points_of_interest` VALUES (416, NULL, 'Boîte aux lettres de Forgefer', 'Briefkasten von Eisenschmiede', '铁炉堡邮箱', NULL, 'Buzón de Forjaz', NULL, 'Стальгорн: почта');
INSERT INTO `locales_points_of_interest` VALUES (867, NULL, 'Ulbrek Brasemain', 'Ulbrek Feuerhand', '乌布雷克·火拳', NULL, 'Ulbrek Manofuego', NULL, 'Ульбрек Огненная Длань');
INSERT INTO `locales_points_of_interest` VALUES (928, NULL, 'Bixi et Buliwyf', 'Bixi und Buliwyf', '密林武器店', NULL, 'Bixi y Buliwyf', NULL, 'Бикси и Бульвайф');
INSERT INTO `locales_points_of_interest` VALUES (413, NULL, 'Hall des Armes', 'Halle der Waffen', '武器大厅', NULL, 'Hall of Arms', NULL, 'Оружейная');
INSERT INTO `locales_points_of_interest` VALUES (412, NULL, 'Hall des Mystères', 'Halle der Mysterien', '谜之大厅', NULL, 'Hall of Mysteries', NULL, 'Зал Тайн');
INSERT INTO `locales_points_of_interest` VALUES (427, NULL, 'Maître des voleurs de Forgefer', 'Schurkenlehrer von Eisenschmiede', '铁炉堡盗贼训练师', NULL, 'Entrenador de pícaros Forjaz', NULL, 'Стальгорн: наставник разбойников');
INSERT INTO `locales_points_of_interest` VALUES (426, NULL, 'Maître des démonistes de Forgefer', 'Hexenmeisterlehrer von Eisenschmiede', '铁炉堡术士训练师', NULL, 'Entrenador de brujos Forjaz', NULL, 'Стальгорн: наставник чернокнижников');
INSERT INTO `locales_points_of_interest` VALUES (419, NULL, 'Potions et mixtures de Baiedesbulles', 'Brausefitz\' Tr?nke und Mischgetr?nke', '浆泡的药水饮料店', NULL, 'Pociones y cócteles de Burbubaya', NULL, 'Снадобья и микстуры от Гонобобельзз');
INSERT INTO `locales_points_of_interest` VALUES (423, NULL, 'La Grande Forge', 'Die gro?e Schmiede', '大锻炉', NULL, 'The Great Forge', NULL, 'Великая Кузня');
INSERT INTO `locales_points_of_interest` VALUES (410, NULL, 'La Bouilloire de bronze', 'Zum Bronzekessel', '铜壶铁罐店', NULL, 'The Bronze Kettle', NULL, 'Бронзовый котелок');
INSERT INTO `locales_points_of_interest` VALUES (409, NULL, 'Arcanes de Duvechardon', 'Arkanarien Distelflaum', '草须魔法用品店', NULL, 'Arcanería Cardopelusa', NULL, 'Колдовские штучки Чертополуша');
INSERT INTO `locales_points_of_interest` VALUES (408, NULL, 'Médecin de Forgefer', 'Heiler von Eisenschmiede', '铁炉堡医师协会', NULL, 'Médico de Forjaz', NULL, 'Стальгорн: целитель');
INSERT INTO `locales_points_of_interest` VALUES (425, NULL, 'Pêcheur itinérant', 'Reisender Angler', '旅行渔具店', NULL, 'Traveling Fisherman', NULL, 'Странствующий рыбак');
INSERT INTO `locales_points_of_interest` VALUES (987, NULL, 'Cuirs de Finfuseau', 'Lederwaren Feinspindel', '皮甲用品店', NULL, 'Finespindle\'s Leather Goods', NULL, 'Кожевенная лавка Остроигла');
INSERT INTO `locales_points_of_interest` VALUES (411, NULL, 'Guilde des mineurs de la montagne profonde', 'Tiefenbergbaugilde', '深山矿工协会', NULL, 'Gremio de mineros de la Montaña Profunda', NULL, 'Гильдия рудокопов Темной Горы');
INSERT INTO `locales_points_of_interest` VALUES (422, NULL, 'Vêtements de Front-de-pierre', 'Tuchmacherei Steinbraue', '石眉布衣店', NULL, 'Stonebrow\'s Clothier', NULL, 'Лавка одежды Камнелоба');
INSERT INTO `locales_points_of_interest` VALUES (671, NULL, 'Distillerie de Tonnebière', 'Brauerei Donnerbr?u', '雷酒酿制厂', NULL, 'Destilería Cerveza Trueno', NULL, 'Таверна \"Громоварка\"');
INSERT INTO `locales_points_of_interest` VALUES (868, NULL, 'Shelby Pierre-à-feu', 'Shelby Steinsplint', '谢尔比·石火', NULL, 'Shelby Petrepiedra', NULL, 'Шелби Щебенка');
INSERT INTO `locales_points_of_interest` VALUES (674, NULL, 'Grif Cœur-sauvage', 'Grif Wildherz', '格瑞夫', NULL, 'Grif Corazón Salvaje', NULL, 'Гриф Дикое Сердце');
INSERT INTO `locales_points_of_interest` VALUES (664, NULL, 'Magis Mantincelle', 'Magis Funkelmantel', '玛济斯·石衣', NULL, 'Magis Chispamanto', NULL, 'Магис Искроплащ');
INSERT INTO `locales_points_of_interest` VALUES (665, NULL, 'Azar Fortmartel', 'Azar Hammerkraft', '阿札尔·战锤', NULL, 'Azar Martillopujante', NULL, 'Азар Мощный Молот');
INSERT INTO `locales_points_of_interest` VALUES (666, NULL, 'Maxan Anvol', 'Maxan Anvol', '马克萨恩', NULL, 'Maxan Anvol', NULL, 'Максан Анвол');
INSERT INTO `locales_points_of_interest` VALUES (669, NULL, 'Hogral Bakkan', 'Hogral Bakkan', '霍格拉尔·巴坎', NULL, 'Hogral Bakkan', NULL, 'Хограл Баккан');
INSERT INTO `locales_points_of_interest` VALUES (677, NULL, 'Gimrizz Sombrouage', 'Gimrizz Schattenrad', '吉姆瑞兹', NULL, 'Gimrizz Molaro', NULL, 'Гимризз Которышка');
INSERT INTO `locales_points_of_interest` VALUES (667, NULL, 'Granis Vivehache', 'Granis Flinkaxt', '兰尼斯·快斧', NULL, 'Granis Hachaveloz', NULL, 'Гранис Свист Топора');
INSERT INTO `locales_points_of_interest` VALUES (672, NULL, 'Tognus Flammesilex', 'Tognus Funkenfeuer', '托格努斯', NULL, 'Tognus Fuegosílex', NULL, 'Тогнус Огниво');
INSERT INTO `locales_points_of_interest` VALUES (670, NULL, 'Gremlock Pilsnor', 'Gremlock Pilsnor', '格雷姆罗克', NULL, 'Gremlock Pilsnor', NULL, 'Гремлок Пилзнор');
INSERT INTO `locales_points_of_interest` VALUES (668, NULL, 'Thamner Pol', 'Thamner Pol', '萨姆诺·普尔', NULL, 'Thamner Pol', NULL, 'Тамнер Пол');
INSERT INTO `locales_points_of_interest` VALUES (747, NULL, 'Paxton Ganter', 'Paxton Ganter', '帕克斯顿·冈特', NULL, 'Paxton Ganter', NULL, 'Пакстон Гантер');
INSERT INTO `locales_points_of_interest` VALUES (1693, NULL, 'Autel des ventes de Darnassus', 'Auktionshaus Darnassus', '达纳苏斯拍卖行', NULL, 'Darnassus Auction House', NULL, 'Аукционный дом Дарнаса');
INSERT INTO `locales_points_of_interest` VALUES (465, NULL, 'Banque de Darnassus', 'Bank von Darnassus', '达纳苏斯银行', NULL, 'Banco Darnassus', NULL, 'Дарнас: банк');
INSERT INTO `locales_points_of_interest` VALUES (467, NULL, 'Maître des hippogriffes de Darnassus', 'Rut\'theran', '达纳苏斯角鹰兽管理员', NULL, 'Pueblo de Rut\'theran', NULL, 'Дарнас: укротитель грифонов');
INSERT INTO `locales_points_of_interest` VALUES (490, NULL, 'Maître des guildes de Darnassus', 'Gildenmeister von Darnassus', '达纳苏斯公会', NULL, 'Maestro del gremio de Darnassus', NULL, 'Дарнас: регистрация гильдий');
INSERT INTO `locales_points_of_interest` VALUES (468, NULL, 'Auberge de Darnassus', 'Gasthaus von Darnassus', '达纳苏斯旅馆', NULL, 'Posada Darnassus', NULL, 'Дарнасская таверна');
INSERT INTO `locales_points_of_interest` VALUES (1474, NULL, 'Boîte aux lettres de Darnassus', 'Briefkasten von Darnassus', '达纳苏斯邮箱', NULL, 'Buzón de Darnassus', NULL, 'Дарнас: почта');
INSERT INTO `locales_points_of_interest` VALUES (872, NULL, 'Alassin', 'Alassin', '阿拉辛', NULL, 'Alassin', NULL, 'Алассин');
INSERT INTO `locales_points_of_interest` VALUES (750, NULL, 'Ilyenia Lunéclat', 'Ilyenia Mondfeuer', '伊琳尼雅·月火', NULL, 'Ilyenia Fuegolunar', NULL, 'Илиения Лунное Пламя');
INSERT INTO `locales_points_of_interest` VALUES (486, NULL, 'Maître des druides de Darnassus', 'Druidenlehrer von Darnassus', '达纳苏斯德鲁训练师', NULL, 'Entrenador de druidas Darnassus', NULL, 'Дарнас: наставник друидов');
INSERT INTO `locales_points_of_interest` VALUES (479, NULL, 'Maître des chasseurs de Darnassus', 'J?gerlehrer von Darnassus', '达纳苏斯猎人训练师', NULL, 'Entrenador Darnassus Hunter', NULL, 'Дарнас: наставник охотников');
INSERT INTO `locales_points_of_interest` VALUES (507, NULL, 'Maître des voleurs de Darnassus', 'Schurkenlehrer von Darnassus', '达纳苏斯盗贼训练师', NULL, 'Entrenador de pícaros de Darnassus', NULL, 'Дарнас: наставник разбойников');
INSERT INTO `locales_points_of_interest` VALUES (461, NULL, 'La terrasse des guerriers', 'Die Terrasse der Krieger', '战士区', NULL, 'Terraza del Guerrero', NULL, 'Терраса Воинов');
INSERT INTO `locales_points_of_interest` VALUES (476, NULL, 'Maître des alchimistes de Darnassus', 'Alchemielehrer von Darnassus', '达纳苏斯炼金术师', NULL, 'Entrenador de alquimia de Darnassus', NULL, 'Дарнасский учитель алхимии');
INSERT INTO `locales_points_of_interest` VALUES (478, NULL, 'Maître des cuisiniers de Darnassus', 'Kochkunstlehrer von Darnassus', '达纳苏斯烹饪训练师', NULL, 'Entrenador de cocina Darnassus', NULL, 'Дарнас: Учитель кулинарии');
INSERT INTO `locales_points_of_interest` VALUES (473, NULL, 'Maître des enchanteurs de Darnassus', 'Verzauberkunstlehrer von Darnassus', '达纳苏斯附魔训练师', NULL, 'Entrenador encantador de Darnassus', NULL, 'Дарнасский учитель наложения чар');
INSERT INTO `locales_points_of_interest` VALUES (474, NULL, 'Maître des secouristes de Darnassus', 'Lehrer für Erste Hilfe von Darnassus', '达纳苏斯急救训练师', NULL, 'Instructor de primeros auxilios de Darnassus', NULL, 'Дарнас: учитель первой помощи');
INSERT INTO `locales_points_of_interest` VALUES (489, NULL, 'Maître des pêcheurs de Darnassus', 'Angellehrer von Darnassus', '达纳苏斯钓鱼训练师', NULL, 'Entrenador de pesca Darnassus', NULL, 'Дарнасский учитель рыбной ловли');
INSERT INTO `locales_points_of_interest` VALUES (471, NULL, 'Maître des travailleurs du cuir de Darnassus', 'Lederverarbeitungslehrer von Darnassus', '达纳苏斯制皮训练师', NULL, 'Entrenador de peletería Darnassus', NULL, 'Дарнасский учитель кожевничества');
INSERT INTO `locales_points_of_interest` VALUES (472, NULL, 'Maître des dépeceurs de Darnassus', 'Kürschnerlehrer von Darnassus', '达纳苏斯剥皮训练师', NULL, 'Instructor de desuello de Darnassus', NULL, 'Дарнасский учитель снятия шкур');
INSERT INTO `locales_points_of_interest` VALUES (470, NULL, 'Tailleur de Darnassus', 'Schneider von Darnassus', '达纳苏斯裁缝', NULL, 'Sastre de Darnassus', NULL, 'Дарнасский портной');
INSERT INTO `locales_points_of_interest` VALUES (698, NULL, 'Auberge de Dolanaar', 'Gasthaus Dolanaar', '多兰纳尔旅店', NULL, 'Posada Dolanaar', NULL, 'Таверна Доланаара');
INSERT INTO `locales_points_of_interest` VALUES (871, NULL, 'Seriadne', 'Seriadne', '瑟里亚迪', NULL, 'Seriadne', NULL, 'Сериадна');
INSERT INTO `locales_points_of_interest` VALUES (697, NULL, 'Kal', 'Kal', '卡尔', NULL, 'Kal', NULL, 'Каль');
INSERT INTO `locales_points_of_interest` VALUES (693, NULL, 'Dazalar', 'Dazalar', '达札拉', NULL, 'Dazalar', NULL, 'Дазалар');
INSERT INTO `locales_points_of_interest` VALUES (690, NULL, 'Laurna Clairematin', 'Laurna Morgenglanz', '露娜·晨光', NULL, 'Laurna Luzdelalba', NULL, 'Лорна Утренний Свет');
INSERT INTO `locales_points_of_interest` VALUES (692, NULL, 'Jannok Chantebrise', 'Jannok Windsang', '詹诺克·柔歌', NULL, 'Jannok Brisón', NULL, 'Джаннок Поющий Ветерок');
INSERT INTO `locales_points_of_interest` VALUES (691, NULL, 'Kyra Lamevent', 'Kyra Windklinge', '凯拉·风刃', NULL, 'Kyra Espada del Viento', NULL, 'Кайра Ветрорез');
INSERT INTO `locales_points_of_interest` VALUES (696, NULL, 'Cyndra Murmegent', 'Cyndra Samtwisper', '塞恩德拉·细语者', NULL, 'Cyndra Suavesurro', NULL, 'Циндра Ласковый Шепот');
INSERT INTO `locales_points_of_interest` VALUES (694, NULL, 'Zarrin', 'Zarrin', '札瑞恩', NULL, 'Zarrin', NULL, 'Заррин');
INSERT INTO `locales_points_of_interest` VALUES (699, NULL, 'Alanna Oeil-de-corbeau', 'Alanna Rabenauge', '奥兰纳·鸦眼', NULL, 'Alanna Cuervojo', NULL, 'Аланна Око Ворона');
INSERT INTO `locales_points_of_interest` VALUES (689, NULL, 'Byancie', 'Byancie', '拜恩希', NULL, 'Byancie', NULL, 'Бьянси');
INSERT INTO `locales_points_of_interest` VALUES (695, NULL, 'Malorne Feuillelame', 'Malorne Messerblatt', '玛洛尼·刃叶', NULL, 'Malorne Filohoja', NULL, 'Малорн Остролист');
INSERT INTO `locales_points_of_interest` VALUES (688, NULL, 'Nadyia Tissecrin', 'Nadyia Schopfweber', '纳迪娅·织发', NULL, 'Nadyia Tejecrín', NULL, 'Надайя Гривопряд');
INSERT INTO `locales_points_of_interest` VALUES (687, NULL, 'Radnaal Tissecrin', 'Radnaal Schopfweber', '拉德纳尔·织发', NULL, 'Radnaal Tejecrín', NULL, 'Раднаал Гривопряд');
INSERT INTO `locales_points_of_interest` VALUES (267, NULL, 'Banque d\'Orgrimmar', 'Bank von Orgrimmar', '奥格玛银行', NULL, 'Banco de Orgrimmar', NULL, 'Банк Оргриммара');
INSERT INTO `locales_points_of_interest` VALUES (268, NULL, 'Tour des Cieux', 'Der Himmelsturm', '飞行塔', NULL, 'La torre del cielo', NULL, 'Башня Небес');
INSERT INTO `locales_points_of_interest` VALUES (269, NULL, 'Ambassade de la Horde', 'Botschaft der Horde', '部落大使馆', NULL, 'Embajada de la Horda', NULL, 'Посольство Орды');
INSERT INTO `locales_points_of_interest` VALUES (270, NULL, 'Auberge d\'Orgrimmar', 'Gasthaus von Orgrimmar', '奥格玛旅馆', NULL, 'Posada de Orgrimmar', NULL, 'Таверна Оргриммара');
INSERT INTO `locales_points_of_interest` VALUES (271, NULL, 'Boîte aux lettres d\'Orgrimmar', 'Briefkasten von Orgrimmar', '奥格玛邮箱', NULL, 'Buzón de Orgrimmar', NULL, 'Оргриммар: почта');
INSERT INTO `locales_points_of_interest` VALUES (347, NULL, 'Autel des ventes d\'Orgrimmar', 'Auktionshaus von Orgrimmar', '奥格玛拍卖行', NULL, 'Casa de subastas de Orgrimmar', NULL, 'Оргриммар: аукционный дом');
INSERT INTO `locales_points_of_interest` VALUES (809, NULL, 'Sayoc & Hanashi', 'Sayoc und Hanashi', '塞尤克和哈纳什', NULL, 'Sayoc y Hanashi', NULL, 'Сайок и Ханаши');
INSERT INTO `locales_points_of_interest` VALUES (848, NULL, 'Xon\'cha', 'Xon\'cha', '克苏卡', NULL, 'Xon\'cha', NULL, 'Ксон\'ча');
INSERT INTO `locales_points_of_interest` VALUES (1468, NULL, 'Hall des Légendes', 'Die Halle der Legenden', '传说大厅', NULL, 'Salón de las Leyendas', NULL, 'Зал Легенд');
INSERT INTO `locales_points_of_interest` VALUES (604, NULL, NULL, NULL, NULL, NULL, 'Posada del Pueblo Pezuña de Sangre', NULL, 'Безделушки Пружиннера');
INSERT INTO `locales_points_of_interest` VALUES (601, NULL, NULL, NULL, NULL, NULL, 'Krunn', NULL, 'Вилла Салтерила: портной');
INSERT INTO `locales_points_of_interest` VALUES (475, NULL, NULL, NULL, NULL, NULL, 'Instructor de encantamiento de Entrañas', NULL, 'Ярр Камнедроб');
INSERT INTO `locales_points_of_interest` VALUES (460, NULL, NULL, NULL, NULL, NULL, 'Entrenador de cocina de Entrañas', NULL, 'Таверна в Деревне Кровавого Копыта');
INSERT INTO `locales_points_of_interest` VALUES (458, NULL, NULL, NULL, NULL, NULL, 'Entrenador de herrería de Entrañas', NULL, 'Сейква');
INSERT INTO `locales_points_of_interest` VALUES (455, NULL, NULL, NULL, NULL, NULL, 'Entrenadores de guerreros de Entrañas', NULL, 'Йо Колкая Грива');
INSERT INTO `locales_points_of_interest` VALUES (457, NULL, NULL, NULL, NULL, NULL, 'El Apothecarium', NULL, 'Генния Рунический Тотем');
INSERT INTO `locales_points_of_interest` VALUES (453, NULL, NULL, NULL, NULL, NULL, 'Entrenadores de brujos de Entrañas', NULL, 'Нарм Небесный Охотник');
INSERT INTO `locales_points_of_interest` VALUES (454, NULL, NULL, NULL, NULL, NULL, 'Entrenadores de sacerdotes de Entrañas', NULL, 'Кранг Каменное Копыто');
INSERT INTO `locales_points_of_interest` VALUES (452, NULL, NULL, NULL, NULL, NULL, 'Entrenadores de mago de Entrañas', NULL, 'Пиалл Тихая Поступь');
INSERT INTO `locales_points_of_interest` VALUES (451, NULL, NULL, NULL, NULL, NULL, 'Zeppelin de Entrañas', NULL, 'Утан Тихая Заводь');
INSERT INTO `locales_points_of_interest` VALUES (852, NULL, NULL, NULL, NULL, NULL, 'Anya Maulray', NULL, 'Чоу Толстая Шкура');
INSERT INTO `locales_points_of_interest` VALUES (450, NULL, NULL, NULL, NULL, NULL, 'Buzón de Entrañas', NULL, 'Йонн Глубокий Надрез');
INSERT INTO `locales_points_of_interest` VALUES (449, NULL, NULL, NULL, NULL, NULL, 'Posada de Entrañas', NULL, 'Гнездо ветрокрылов');
INSERT INTO `locales_points_of_interest` VALUES (448, NULL, NULL, NULL, NULL, NULL, 'Maestro del gremio de Entrañas', NULL, 'Громовой Утес: городская информация');
INSERT INTO `locales_points_of_interest` VALUES (447, NULL, NULL, NULL, NULL, NULL, 'Manejador de murciélagos de Entrañas', NULL, 'Громовой Утес: почта');
INSERT INTO `locales_points_of_interest` VALUES (488, NULL, NULL, NULL, NULL, NULL, 'Banco de Entrañas', NULL, 'Ансеква');
INSERT INTO `locales_points_of_interest` VALUES (1691, NULL, NULL, NULL, NULL, NULL, 'Casa de subastas de Entrañas', NULL, 'Балруг');
INSERT INTO `locales_points_of_interest` VALUES (289, NULL, NULL, NULL, NULL, NULL, 'Indumentarias Magar', NULL, 'Громовой Утес: военачальники');
INSERT INTO `locales_points_of_interest` VALUES (287, NULL, NULL, NULL, NULL, NULL, 'Peleteros de piel de kodo', NULL, 'Зал Старейшин');
INSERT INTO `locales_points_of_interest` VALUES (288, NULL, NULL, NULL, NULL, NULL, 'Mina del Cañón Rojo', NULL, 'Пруды Видений');
INSERT INTO `locales_points_of_interest` VALUES (285, NULL, NULL, NULL, NULL, NULL, 'Arboreto de Jandi', NULL, 'Зал Духов');
INSERT INTO `locales_points_of_interest` VALUES (284, NULL, NULL, NULL, NULL, NULL, 'Aparejos Lumak', NULL, 'Зал Охотников');
INSERT INTO `locales_points_of_interest` VALUES (283, NULL, NULL, NULL, NULL, NULL, 'Supervivencia del más fuerte', NULL, 'Лаборатория Бены');
INSERT INTO `locales_points_of_interest` VALUES (307, NULL, NULL, NULL, NULL, NULL, 'Rincón de la Maquinaria de Nogg', NULL, 'Кузня Карна');
INSERT INTO `locales_points_of_interest` VALUES (282, NULL, NULL, NULL, NULL, NULL, 'Creaciones rúnicas de Godan', NULL, 'Кухня Аски');
INSERT INTO `locales_points_of_interest` VALUES (281, NULL, NULL, NULL, NULL, NULL, 'Fosa de lava de Borstan', NULL, 'Чародеи Утренних Путников');
INSERT INTO `locales_points_of_interest` VALUES (280, NULL, NULL, NULL, NULL, NULL, 'El Yunque Ardiente', NULL, 'Духовное исцеление');
INSERT INTO `locales_points_of_interest` VALUES (279, NULL, NULL, NULL, NULL, NULL, 'Alquimia y pociones de Yelmak', NULL, 'Снасти и наживка с горных вершин');
INSERT INTO `locales_points_of_interest` VALUES (275, NULL, NULL, NULL, NULL, NULL, 'Bastión de los Valientes', NULL, 'Общее травничество');
INSERT INTO `locales_points_of_interest` VALUES (277, NULL, NULL, NULL, NULL, NULL, 'Hermandad Sombrágil', NULL, 'Громовой Утес: оружейники');
INSERT INTO `locales_points_of_interest` VALUES (274, NULL, NULL, NULL, NULL, NULL, 'Recinto de los Espíritus', NULL, 'Муранта');
INSERT INTO `locales_points_of_interest` VALUES (276, NULL, NULL, NULL, NULL, NULL, 'Fortaleza de Thrall', NULL, 'Лавка Геолога');
INSERT INTO `locales_points_of_interest` VALUES (273, NULL, NULL, NULL, NULL, NULL, 'Cabaña de Brezo', NULL, 'Громовой Утес: оружейники');
INSERT INTO `locales_points_of_interest` VALUES (567, NULL, NULL, NULL, NULL, NULL, 'Mooranta', NULL, 'Таверна \"Петля висельника\"');
INSERT INTO `locales_points_of_interest` VALUES (157, NULL, NULL, NULL, NULL, NULL, 'Geólogos Pezuña Pétrea', NULL, 'Кейн Песнь Пламени');
INSERT INTO `locales_points_of_interest` VALUES (154, NULL, NULL, NULL, NULL, NULL, 'Armeros de Cima del Trueno', NULL, 'Темный священник Берил');
INSERT INTO `locales_points_of_interest` VALUES (151, NULL, NULL, NULL, NULL, NULL, 'Herboristería Holística', NULL, 'Марион Зов');
INSERT INTO `locales_points_of_interest` VALUES (160, NULL, NULL, NULL, NULL, NULL, 'Anzuelos y Aparejos La Cumbre', NULL, 'Руперт Бош');
INSERT INTO `locales_points_of_interest` VALUES (153, NULL, NULL, NULL, NULL, NULL, 'Encantadores Caminalba', NULL, 'Каролай Аниса');
INSERT INTO `locales_points_of_interest` VALUES (162, NULL, NULL, NULL, NULL, NULL, 'Curación Espiritual', NULL, 'Остил де Мон');
INSERT INTO `locales_points_of_interest` VALUES (187, NULL, NULL, NULL, NULL, NULL, 'La Cocina de Aska', NULL, 'Ванс Мрачнейший');
INSERT INTO `locales_points_of_interest` VALUES (155, NULL, NULL, NULL, NULL, NULL, 'Herrería de Karn', NULL, 'Сиделка Нила');
INSERT INTO `locales_points_of_interest` VALUES (152, NULL, NULL, NULL, NULL, NULL, 'La Alquimia de Bena', NULL, 'Клайд Келлен');
INSERT INTO `locales_points_of_interest` VALUES (148, NULL, NULL, NULL, NULL, NULL, 'Sala de los Espíritus', NULL, 'Фаруза');
INSERT INTO `locales_points_of_interest` VALUES (161, NULL, NULL, NULL, NULL, NULL, 'Charcos de visión', NULL, 'Шелена Робарт');
INSERT INTO `locales_points_of_interest` VALUES (149, NULL, NULL, NULL, NULL, NULL, 'Recinto de los Cazadores', NULL, 'Рэнд Робарт');
INSERT INTO `locales_points_of_interest` VALUES (150, NULL, NULL, NULL, NULL, NULL, 'Sala de los Ancestros', NULL, 'Боуэн Брисбойс');
INSERT INTO `locales_points_of_interest` VALUES (810, NULL, NULL, NULL, NULL, NULL, 'Ansekhwa', NULL, 'Подгород: дрессировщик нетопырей');
INSERT INTO `locales_points_of_interest` VALUES (1692, NULL, NULL, NULL, NULL, NULL, 'Casa de subastas de Cima del Trueno', NULL, 'Подгород: военачальники');
INSERT INTO `locales_points_of_interest` VALUES (368, NULL, NULL, NULL, NULL, NULL, 'Buzón de Cima del Trueno', NULL, 'Подгород: регистрация гильдий');
INSERT INTO `locales_points_of_interest` VALUES (367, NULL, NULL, NULL, NULL, NULL, 'Posada Cima del Trueno', NULL, 'Подгородская таверна');
INSERT INTO `locales_points_of_interest` VALUES (167, NULL, NULL, NULL, NULL, NULL, 'Gallinero del jinete del viento', NULL, 'Подгород: почта');
INSERT INTO `locales_points_of_interest` VALUES (168, NULL, NULL, NULL, NULL, NULL, 'Banco de Cima del Trueno', NULL, 'Аня Молрэ');
INSERT INTO `locales_points_of_interest` VALUES (662, NULL, NULL, NULL, NULL, NULL, 'Herborista Pomarrosa', NULL, 'Подгород: наставник разбойников');
INSERT INTO `locales_points_of_interest` VALUES (463, NULL, NULL, NULL, NULL, NULL, 'Instructor de herboristería de Darnassus', NULL, 'Подгород: наставники чернокнижников');
INSERT INTO `locales_points_of_interest` VALUES (464, NULL, NULL, NULL, NULL, NULL, 'Templo de la luna', NULL, 'Подгород: наставник воинов');
INSERT INTO `locales_points_of_interest` VALUES (849, NULL, NULL, NULL, NULL, NULL, 'Seikwa', NULL, 'Зал Охотников');
INSERT INTO `locales_points_of_interest` VALUES (606, NULL, NULL, NULL, NULL, NULL, 'Gennia Runatótem', NULL, 'Пристанище Темнотерна');
INSERT INTO `locales_points_of_interest` VALUES (608, NULL, NULL, NULL, NULL, NULL, 'Guin Crinafilada', NULL, 'Обитель Духов');
INSERT INTO `locales_points_of_interest` VALUES (607, NULL, NULL, NULL, NULL, NULL, 'Narm Cazacielo', NULL, 'Крепость Тралла');
INSERT INTO `locales_points_of_interest` VALUES (609, NULL, NULL, NULL, NULL, NULL, 'Krang Pezuñapétrea', NULL, 'Братство Теней');
INSERT INTO `locales_points_of_interest` VALUES (610, NULL, NULL, NULL, NULL, NULL, 'Pyall Trancosilencio', NULL, 'Анклав Темного Пламени');
INSERT INTO `locales_points_of_interest` VALUES (605, NULL, NULL, NULL, NULL, NULL, 'Vira Jovenpezuña', NULL, 'Зал Отважных');
INSERT INTO `locales_points_of_interest` VALUES (613, NULL, NULL, NULL, NULL, NULL, 'Uthan Aguasmansas', NULL, 'Алхимия и Эликсиры Йелмака');
INSERT INTO `locales_points_of_interest` VALUES (611, NULL, NULL, NULL, NULL, NULL, 'Chaw Pellejofuerte', NULL, 'Пылающая наковальня');
INSERT INTO `locales_points_of_interest` VALUES (612, NULL, NULL, NULL, NULL, NULL, 'Yonn Llagaprofunda', NULL, 'Жаровня Борстана');
INSERT INTO `locales_points_of_interest` VALUES (615, NULL, NULL, NULL, NULL, NULL, 'Taberna del Final de la Horca', NULL, 'Чародейские товары Годана');
INSERT INTO `locales_points_of_interest` VALUES (851, NULL, NULL, NULL, NULL, NULL, 'Morganus', NULL, 'Естественный отбор');
INSERT INTO `locales_points_of_interest` VALUES (616, NULL, NULL, NULL, NULL, NULL, 'Cain Pirosón', NULL, 'Рыбное место Лумака');
INSERT INTO `locales_points_of_interest` VALUES (617, NULL, NULL, NULL, NULL, NULL, 'Clérico oscuro Beryl', NULL, 'Дендрарий Джанди');
INSERT INTO `locales_points_of_interest` VALUES (618, NULL, NULL, NULL, NULL, NULL, 'Marion Call', NULL, 'Рудник Ржавого каньона');
INSERT INTO `locales_points_of_interest` VALUES (619, NULL, NULL, NULL, NULL, NULL, 'Rupert Boch', NULL, 'Выделка шкур кодо');
INSERT INTO `locales_points_of_interest` VALUES (620, NULL, NULL, NULL, NULL, NULL, 'Austil de Mon', NULL, 'Портняжное ателье Магара');
INSERT INTO `locales_points_of_interest` VALUES (623, NULL, NULL, NULL, NULL, NULL, 'Enfermera Neela', NULL, 'Дарнасский учитель травничества');

SET FOREIGN_KEY_CHECKS = 1;
