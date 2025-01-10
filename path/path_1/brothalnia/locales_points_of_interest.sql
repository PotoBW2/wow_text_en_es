/*
 Navicat Premium Dump SQL

 Source Server         : mangos 22
 Source Server Type    : MySQL
 Source Server Version : 50562 (5.5.62)
 Source Host           : 127.0.0.1:3306
 Source Schema         : mangos

 Target Server Type    : MySQL
 Target Server Version : 50562 (5.5.62)
 File Encoding         : 65001

 Date: 09/01/2025 22:02:33
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
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of locales_points_of_interest
-- ----------------------------
INSERT INTO `locales_points_of_interest` VALUES (658, '라이온스 프라이드 인', 'L\'auberge de la Fierté du Lion', 'Gasthaus Zur H?hle des L?wen', '狮王之傲旅店', NULL, 'Posada Orgullo de León', 'Posada Orgullo de León', 'Таверна \"Гордость льва\"');
INSERT INTO `locales_points_of_interest` VALUES (652, '잘디마르 웨펠트', 'Zaldimar Wefhellt', 'Zaldimar Wefhellt', '札尔迪玛·维夫希尔特', NULL, 'Zaldimar Wefhellt', 'Zaldimar Wefhellt', 'Залдимар Вефхеллт');
INSERT INTO `locales_points_of_interest` VALUES (660, '빌헬름 형제', 'Frère Wilhelm', 'Bruder Wilhelm', '维尔海姆修士', NULL, 'Hermano Wilhelm', 'Hermano Wilhelm', 'Брат Вильгельм');
INSERT INTO `locales_points_of_interest` VALUES (653, '여사제 조세타', 'Prêtresse Josetta', 'Priesterin Josetta', '女牧师洁塞塔', NULL, 'Sacerdotisa Josetta', 'Sacerdotisa Josetta', 'Жрица Жозетта');
INSERT INTO `locales_points_of_interest` VALUES (657, '케린 실비우스', 'Keryn Sylvius', 'Keryn Sylvius', '科瑞恩·塞尔留斯', NULL, 'Keryn Sylvius', 'Keryn Sylvius', 'Керин Сильвиус');
INSERT INTO `locales_points_of_interest` VALUES (656, '막시밀리안 크로우', 'Maximillian Crowe', 'Maximillian Raab', '玛克西米利安·克洛文', NULL, 'Maximillian Crowe', 'Maximillian Crowe', 'Максимилиан Кроу');
INSERT INTO `locales_points_of_interest` VALUES (661, '리리아 뒤 락', 'Lyria Du Lac', 'Lyria Du Lac', '里瑞亚·杜拉克', NULL, 'Lyria Du Lac', 'Lyria Du Lac', 'Лирия дю Лак');
INSERT INTO `locales_points_of_interest` VALUES (663, '연금술사 말로리', 'Alchimiste Mallory', 'Alchemist Mallory', '炼金术士玛洛瑞', NULL, 'Alquimista Mallory', 'Alquimista Mallory', 'Алхимик Маллори');
INSERT INTO `locales_points_of_interest` VALUES (659, '스미스 아거스', 'Argus le forgeron', 'Schmied Argus', '铁匠阿古斯', NULL, 'Herrero Argus', 'Herrero Argus', 'Кузнец Аргус');
INSERT INTO `locales_points_of_interest` VALUES (655, '토마스', 'Tomas', 'Tomas', '汤马斯', NULL, 'Tomas', 'Tomas', 'Томас');
INSERT INTO `locales_points_of_interest` VALUES (654, '미셸 벨', 'Michelle Belle', 'Michelle Belle', '密雪儿·贝莉', NULL, 'Michelle Belle', 'Michelle Belle', 'Мишель Белль');
INSERT INTO `locales_points_of_interest` VALUES (649, '리 브라운', 'Lee Brown', 'Lee Braun', '李·布朗', NULL, 'Lee Brown', 'Lee Brown', 'Ли Браун');
INSERT INTO `locales_points_of_interest` VALUES (650, '아델 필더', 'Adele Fielder', 'Adele F?dler', '艾德勒·费欧德', NULL, 'Adele Fielder', 'Adele Fielder', 'Адель Филдер');
INSERT INTO `locales_points_of_interest` VALUES (651, '헬렌 펠츠키너', 'Helene Tannepeau', 'Helene Pelzschneider', '海伦尼·派特斯金纳', NULL, 'Helene Desollapieles', 'Helene Desollapieles', 'Хелена Меховяз');
INSERT INTO `locales_points_of_interest` VALUES (647, '엘드린', 'Eldrin', 'Eldrin', '艾尔丁', NULL, 'Eldrin', 'Eldrin', 'Элдрин');
INSERT INTO `locales_points_of_interest` VALUES (869, '에르마', 'Erma', 'Erma', '艾玛', NULL, 'Erma', 'Erma', 'Ирма');
INSERT INTO `locales_points_of_interest` VALUES (527, '스톰윈드 경매장', 'Autel des ventes de Hurlevent', 'Auktionshaus von Sturmwind', '暴风城拍卖行', NULL, 'Casa de subastas de Stormwind', NULL, 'Штормград: аукционный дом');
INSERT INTO `locales_points_of_interest` VALUES (47, '스톰윈드 은행', 'Banque de Hurlevent', 'Bank von Sturmwind', '暴风城银行', NULL, 'Banco de Stormwind', NULL, 'Штормград: банк');
INSERT INTO `locales_points_of_interest` VALUES (532, '딥런 트램', 'Le Tram des profondeurs', 'Die Tiefenbahn', '矿道地铁', NULL, 'El tranvía de Deeprun', NULL, 'Подземный поезд');
INSERT INTO `locales_points_of_interest` VALUES (529, '더 길디드 로즈', 'La Rose dorée', 'Die güldene Rose', '镶金玫瑰', NULL, 'La rosa dorada', NULL, 'Позолоченная роза');
INSERT INTO `locales_points_of_interest` VALUES (535, '스톰윈드 그리핀 조련사', 'Maître des griffons de Hurlevent', 'Greifenmeister von Sturmwind', '暴风城狮鹫管理员', NULL, 'Maestro grifón de Stormwind', NULL, 'Штормград: укротитель грифонов');
INSERT INTO `locales_points_of_interest` VALUES (87, '스톰윈드 방문자 센터', 'Centre d\'accueil des visiteurs de Hurlevent', 'Besucherzentrum von Sturmwind', '暴风城接待中心', NULL, 'Centro de Visitantes de Stormwind', NULL, 'Гостевые покои Штормграда');
INSERT INTO `locales_points_of_interest` VALUES (870, '제노바 스톤쉴드', 'Jenova Targe-pierre', 'Jenova Steinschild', '耶诺瓦·石盾', NULL, 'Escudo de piedra de Jenova', NULL, 'Дженова Камнещит');
INSERT INTO `locales_points_of_interest` VALUES (808, '우핑', 'Woo Ping', 'Woo Ping', '吴平', NULL, NULL, NULL, 'Ву Пинг');
INSERT INTO `locales_points_of_interest` VALUES (1467, '챔피언스 홀', 'Hall des Champions', 'Die Halle der Champions', '勇士大厅', NULL, 'Sala de Campeones', NULL, 'Зал Защитника');
INSERT INTO `locales_points_of_interest` VALUES (72, '공원', 'Le Parc', 'Der Park', '花园', NULL, 'El Parque', NULL, 'Парк');
INSERT INTO `locales_points_of_interest` VALUES (74, '헌터 로지', 'Gîte des chasseurs', 'J?gerlodge', '猎人大厅', NULL, 'Albergue Hunter', NULL, 'Охотничья Избушка');
INSERT INTO `locales_points_of_interest` VALUES (71, '마법사의 성소', 'Sanctum des sorciers', 'Magiersanktum', '精灵圣殿', NULL, 'Santuario del Mago', NULL, 'Башня магов');
INSERT INTO `locales_points_of_interest` VALUES (73, '빛의 대성당', 'Chapelle de la Lumière', 'Kathedrale des Lichts', '圣光大教堂', NULL, 'Catedral de la Luz', NULL, 'Собор Света');
INSERT INTO `locales_points_of_interest` VALUES (69, '스톰윈드 - 도적의 집', 'Hurlevent - Maison des voleurs', 'Schurkenhaus von Sturmwind', '暴风城 - 盗贼之家', NULL, 'Stormwind - Casa Rogue', NULL, 'Штормград: дом разбойников');
INSERT INTO `locales_points_of_interest` VALUES (75, '도살된 어린 양', 'L\'Agneau assassiné', 'Zum geschlachteten Lamm', '已宰的羔羊', NULL, 'El cordero degollado', NULL, 'Таверна \"Забитый ягненок\"');
INSERT INTO `locales_points_of_interest` VALUES (70, '스톰윈드 병영', 'Caserne de Hurlevent', 'Kaserne von Sturmwind', '暴风城军营', NULL, 'Cuartel de Stormwind', NULL, 'Казармы Штормграда');
INSERT INTO `locales_points_of_interest` VALUES (91, '연금술 필요', 'Tout pour l\'alchimiste', 'Alchemiebedarf', '炼金材料店', NULL, 'Necesidades de alquimia', NULL, 'Все для алхимика');
INSERT INTO `locales_points_of_interest` VALUES (94, '테룸 딥포지', 'Therum Forge-profonde', 'Therum Tiefenschmied', '瑟鲁姆·深炉', NULL, 'Therum Forja Profunda', NULL, 'Терум Подземная Кузня');
INSERT INTO `locales_points_of_interest` VALUES (68, '돼지와 호루라기 선술집', 'Taverne du Cochon siffleur', 'Taverne Zum pfeifenden Schwein', '猪与哨声旅店', NULL, 'Taberna Pig and Whistle', NULL, 'Таверна \"Свинья и свисток\"');
INSERT INTO `locales_points_of_interest` VALUES (108, '루칸 코델', 'Lucan Cordell', 'Lucan Cordell', '鲁坎·考迪尔', NULL, NULL, NULL, 'Лукан Корделл');
INSERT INTO `locales_points_of_interest` VALUES (93, '릴리암 스파크스핀들', 'Lilliam Fusétincelle', 'Lilliam Spindelfunks', '廉姆·火轴', NULL, NULL, NULL, 'Лилиам Шпиндель');
INSERT INTO `locales_points_of_interest` VALUES (1427, '샤이나 풀러', 'Shaina Fuller', 'Shaina Fuller', '珊娜·费勒', NULL, NULL, NULL, 'Шайна Корпия');
INSERT INTO `locales_points_of_interest` VALUES (107, '아놀드 릴랜드', 'Arnold Leland', 'Arnold Leland', '阿诺德·利兰', NULL, NULL, NULL, 'Арнольд Лиланд');
INSERT INTO `locales_points_of_interest` VALUES (90, '보호 가죽', 'Au cuir protecteur', 'Der schützende Balg', '护体皮甲', NULL, 'La piel protectora', NULL, 'Прочная шкура');
INSERT INTO `locales_points_of_interest` VALUES (95, '겔만 스톤핸드', 'Gelman Main-de-pierre', 'Gelman Steinhand', '吉尔曼·石手', NULL, NULL, NULL, 'Гельман Камнерук');
INSERT INTO `locales_points_of_interest` VALUES (92, '던컨의 직물', 'Textiles Duncan', 'Duncans Textilien', '邓肯布料店', NULL, 'Textiles Duncan', NULL, 'Ткани Дункана');
INSERT INTO `locales_points_of_interest` VALUES (418, '아이언포지 경매장', 'Hôtel des ventes de Forgefer', 'Auktionshaus von Eisenschmiede', '铁炉堡拍卖行', NULL, 'Casa de subastas Ironforge', NULL, 'Стальгорн: аукционный дом');
INSERT INTO `locales_points_of_interest` VALUES (415, '금고', 'Le Caveau', 'Das Gew?lbe', '平民区', NULL, 'La Bóveda', NULL, 'Свод');
INSERT INTO `locales_points_of_interest` VALUES (547, '딥런 트램', 'Tram des profondeurs', 'Die Tiefenbahn', '矿道地铁', NULL, 'Tranvía de Deeprun', NULL, 'Подземный поезд');
INSERT INTO `locales_points_of_interest` VALUES (407, '아이언포지 그리핀 조련사', 'Maître des griffons de Forgefer', 'Greifenmeister von Eisenschmiede', '铁炉堡狮鹫管理员', NULL, 'Maestro grifón de Ironforge', NULL, 'Стальгорн: укротитель грифонов');
INSERT INTO `locales_points_of_interest` VALUES (424, '아이언포지 방문자 센터', 'Centre des Visiteurs de Forgefer', 'Besucherzentrum von Eisenschmiede', '铁炉堡访客中心', NULL, 'Centro de visitantes de Ironforge', NULL, 'Гостевые покои Стальгорна');
INSERT INTO `locales_points_of_interest` VALUES (417, '스톤파이어 선술집', 'La taverne de Brûlepierre', 'Steinfeuertaverne', '石火旅店', NULL, 'Taberna Stonefire', NULL, 'Таверна \"Горючий камень\"');
INSERT INTO `locales_points_of_interest` VALUES (416, '아이언포지 우편함', 'Boîte aux lettres de Forgefer', 'Briefkasten von Eisenschmiede', '铁炉堡邮箱', NULL, 'Buzón Ironforge', NULL, 'Стальгорн: почта');
INSERT INTO `locales_points_of_interest` VALUES (867, '울브렉 파이어핸드', 'Ulbrek Brasemain', 'Ulbrek Feuerhand', '乌布雷克·火拳', NULL, 'Mano de fuego de Ulbrek', NULL, 'Ульбрек Огненная Длань');
INSERT INTO `locales_points_of_interest` VALUES (928, '빅시와 불리위프', 'Bixi et Buliwyf', 'Bixi und Buliwyf', '密林武器店', NULL, 'Bixi y Buliwyf', NULL, 'Бикси и Бульвайф');
INSERT INTO `locales_points_of_interest` VALUES (413, '팔의 전당', 'Hall des Armes', 'Halle der Waffen', '武器大厅', NULL, 'Sala de Armas', NULL, 'Оружейная');
INSERT INTO `locales_points_of_interest` VALUES (412, '신비의 전당', 'Hall des Mystères', 'Halle der Mysterien', '谜之大厅', NULL, 'Sala de Misterios', NULL, 'Зал Тайн');
INSERT INTO `locales_points_of_interest` VALUES (427, '아이언포지 도적 조련사', 'Maître des voleurs de Forgefer', 'Schurkenlehrer von Eisenschmiede', '铁炉堡盗贼训练师', NULL, 'Entrenador de pícaros de Ironforge', NULL, 'Стальгорн: наставник разбойников');
INSERT INTO `locales_points_of_interest` VALUES (426, '아이언포지 흑마법사 조련사', 'Maître des démonistes de Forgefer', 'Hexenmeisterlehrer von Eisenschmiede', '铁炉堡术士训练师', NULL, 'Entrenador de brujos de Ironforge', NULL, 'Стальгорн: наставник чернокнижников');
INSERT INTO `locales_points_of_interest` VALUES (419, '탈리 베리피즈 물약과 혼합 음료', 'Potions et mixtures de Baiedesbulles', 'Brausefitz\' Tr?nke und Mischgetr?nke', '浆泡的药水饮料店', NULL, 'Pociones y combinados de Berryfizz', NULL, 'Снадобья и микстуры от Гонобобельзз');
INSERT INTO `locales_points_of_interest` VALUES (423, '위대한 대장간', 'La Grande Forge', 'Die gro?e Schmiede', '大锻炉', NULL, 'La Gran Fragua', NULL, 'Великая Кузня');
INSERT INTO `locales_points_of_interest` VALUES (410, '청동 주전자', 'La Bouilloire de bronze', 'Zum Bronzekessel', '铜壶铁罐店', NULL, 'La tetera de bronce', NULL, 'Бронзовый котелок');
INSERT INTO `locales_points_of_interest` VALUES (409, '티슬퍼즈 아캐너리', 'Arcanes de Duvechardon', 'Arkanarien Distelflaum', '草须魔法用品店', NULL, 'Arcanería Thistlefuzz', NULL, 'Колдовские штучки Чертополуша');
INSERT INTO `locales_points_of_interest` VALUES (408, '아이언포지 의사', 'Médecin de Forgefer', 'Heiler von Eisenschmiede', '铁炉堡医师协会', NULL, 'Médico de Forjaz', 'Médico de Forjaz', 'Стальгорн: целитель');
INSERT INTO `locales_points_of_interest` VALUES (425, '여행하는 어부', 'Pêcheur itinérant', 'Reisender Angler', '旅行渔具店', NULL, 'Pescador viajero', NULL, 'Странствующий рыбак');
INSERT INTO `locales_points_of_interest` VALUES (987, '봄부스 파인스핀들의 가죽 제품', 'Cuirs de Finfuseau', 'Lederwaren Feinspindel', '皮甲用品店', NULL, 'Marroquinería Finespindle', NULL, 'Кожевенная лавка Остроигла');
INSERT INTO `locales_points_of_interest` VALUES (411, '깊은산 광산 길드', 'Guilde des mineurs de la montagne profonde', 'Tiefenbergbaugilde', '深山矿工协会', NULL, 'Gremio minero de Deepmountain', NULL, 'Гильдия рудокопов Темной Горы');
INSERT INTO `locales_points_of_interest` VALUES (422, '스톤브로우의 옷상인', 'Vêtements de Front-de-pierre', 'Tuchmacherei Steinbraue', '石眉布衣店', NULL, NULL, NULL, 'Лавка одежды Камнелоба');
INSERT INTO `locales_points_of_interest` VALUES (671, '썬더브루 양조장', 'Distillerie de Tonnebière', 'Brauerei Donnerbr?u', '雷酒酿制厂', NULL, 'Destilería Cebatruenos', 'Destilería Cebatruenos', 'Таверна \"Громоварка\"');
INSERT INTO `locales_points_of_interest` VALUES (868, '셸비 스톤플린트', 'Shelby Pierre-à-feu', 'Shelby Steinsplint', '谢尔比·石火', NULL, 'Shelby Petrepiedra', 'Shelby Petrepiedra', 'Шелби Щебенка');
INSERT INTO `locales_points_of_interest` VALUES (674, '그리프 와일드하트', 'Grif Cœur-sauvage', 'Grif Wildherz', '格瑞夫', NULL, 'Grif Corazón Salvaje', 'Grif Corazón Salvaje', 'Гриф Дикое Сердце');
INSERT INTO `locales_points_of_interest` VALUES (664, 'Magis 스파크맨틀', 'Magis Mantincelle', 'Magis Funkelmantel', '玛济斯·石衣', NULL, NULL, NULL, 'Магис Искроплащ');
INSERT INTO `locales_points_of_interest` VALUES (665, '아자르 스트롱해머', 'Azar Fortmartel', 'Azar Hammerkraft', '阿札尔·战锤', NULL, 'Azar Martillo Fuerte', NULL, 'Азар Мощный Молот');
INSERT INTO `locales_points_of_interest` VALUES (666, '막산 안볼', 'Maxan Anvol', 'Maxan Anvol', '马克萨恩', NULL, NULL, NULL, 'Максан Анвол');
INSERT INTO `locales_points_of_interest` VALUES (669, '호그랄 바칸', 'Hogral Bakkan', 'Hogral Bakkan', '霍格拉尔·巴坎', NULL, NULL, NULL, 'Хограл Баккан');
INSERT INTO `locales_points_of_interest` VALUES (677, '김리즈 섀도우코그', 'Gimrizz Sombrouage', 'Gimrizz Schattenrad', '吉姆瑞兹', NULL, NULL, NULL, 'Гимризз Которышка');
INSERT INTO `locales_points_of_interest` VALUES (667, '그래니스 스위프트액스', 'Granis Vivehache', 'Granis Flinkaxt', '兰尼斯·快斧', NULL, NULL, NULL, 'Гранис Свист Топора');
INSERT INTO `locales_points_of_interest` VALUES (672, '토그누스 플린트파이어', 'Tognus Flammesilex', 'Tognus Funkenfeuer', '托格努斯', NULL, NULL, NULL, 'Тогнус Огниво');
INSERT INTO `locales_points_of_interest` VALUES (670, '그렘록 필스노어', 'Gremlock Pilsnor', 'Gremlock Pilsnor', '格雷姆罗克', NULL, NULL, NULL, 'Гремлок Пилзнор');
INSERT INTO `locales_points_of_interest` VALUES (668, '탐너 폴', 'Thamner Pol', 'Thamner Pol', '萨姆诺·普尔', NULL, 'Thamner Pol', 'Thamner Pol', 'Тамнер Пол');
INSERT INTO `locales_points_of_interest` VALUES (747, '팩스톤 간터', 'Paxton Ganter', 'Paxton Ganter', '帕克斯顿·冈特', NULL, NULL, NULL, 'Пакстон Гантер');
INSERT INTO `locales_points_of_interest` VALUES (1693, '다르나서스 경매장', 'Autel des ventes de Darnassus', 'Auktionshaus Darnassus', '达纳苏斯拍卖行', NULL, 'Casa de subastas de Darnassus', NULL, 'Аукционный дом Дарнаса');
INSERT INTO `locales_points_of_interest` VALUES (465, '다르나서스 은행', 'Banque de Darnassus', 'Bank von Darnassus', '达纳苏斯银行', NULL, 'Banco Darnassus', NULL, 'Дарнас: банк');
INSERT INTO `locales_points_of_interest` VALUES (467, '루테란 마을', 'Maître des hippogriffes de Darnassus', 'Rut\'theran', '达纳苏斯角鹰兽管理员', NULL, 'Pueblo Rut\'theran', NULL, 'Дарнас: укротитель грифонов');
INSERT INTO `locales_points_of_interest` VALUES (490, '다르나서스 길드 마스터', 'Maître des guildes de Darnassus', 'Gildenmeister von Darnassus', '达纳苏斯公会', NULL, 'Maestro gremial de Darnassus', NULL, 'Дарнас: регистрация гильдий');
INSERT INTO `locales_points_of_interest` VALUES (468, '다르나서스 인', 'Auberge de Darnassus', 'Gasthaus von Darnassus', '达纳苏斯旅馆', NULL, 'Posada Darnassus', NULL, 'Дарнасская таверна');
INSERT INTO `locales_points_of_interest` VALUES (1474, '다르나서스 우체통', 'Boîte aux lettres de Darnassus', 'Briefkasten von Darnassus', '达纳苏斯邮箱', NULL, 'Buzón Darnassus', NULL, 'Дарнас: почта');
INSERT INTO `locales_points_of_interest` VALUES (872, '알라신', 'Alassin', 'Alassin', '阿拉辛', NULL, NULL, NULL, 'Алассин');
INSERT INTO `locales_points_of_interest` VALUES (750, '일리에니아 문파이어', 'Ilyenia Lunéclat', 'Ilyenia Mondfeuer', '伊琳尼雅·月火', NULL, NULL, NULL, 'Илиения Лунное Пламя');
INSERT INTO `locales_points_of_interest` VALUES (486, '다르나서스 드루이드 조련사', 'Maître des druides de Darnassus', 'Druidenlehrer von Darnassus', '达纳苏斯德鲁训练师', NULL, 'Darnassus Druida Entrenador', NULL, 'Дарнас: наставник друидов');
INSERT INTO `locales_points_of_interest` VALUES (479, '다르나서스 사냥꾼 조련사', 'Maître des chasseurs de Darnassus', 'J?gerlehrer von Darnassus', '达纳苏斯猎人训练师', NULL, 'Darnassus Cazador Entrenador', NULL, 'Дарнас: наставник охотников');
INSERT INTO `locales_points_of_interest` VALUES (507, '다르나서스 도적 조련사', 'Maître des voleurs de Darnassus', 'Schurkenlehrer von Darnassus', '达纳苏斯盗贼训练师', NULL, 'Entrenador de granujas de Darnassus', NULL, 'Дарнас: наставник разбойников');
INSERT INTO `locales_points_of_interest` VALUES (461, '전사의 테라스', 'La terrasse des guerriers', 'Die Terrasse der Krieger', '战士区', NULL, 'Terraza del Guerrero', NULL, 'Терраса Воинов');
INSERT INTO `locales_points_of_interest` VALUES (476, '다르나서스 연금술 조련사', 'Maître des alchimistes de Darnassus', 'Alchemielehrer von Darnassus', '达纳苏斯炼金术师', NULL, 'Entrenador de alquimia de Darnassus', NULL, 'Дарнасский учитель алхимии');
INSERT INTO `locales_points_of_interest` VALUES (478, '다르나서스 요리 조련사', 'Maître des cuisiniers de Darnassus', 'Kochkunstlehrer von Darnassus', '达纳苏斯烹饪训练师', NULL, 'Entrenador de cocina de Darnassus', NULL, 'Дарнас: Учитель кулинарии');
INSERT INTO `locales_points_of_interest` VALUES (473, '다르나서스 인챈팅 트레이너', 'Maître des enchanteurs de Darnassus', 'Verzauberkunstlehrer von Darnassus', '达纳苏斯附魔训练师', NULL, 'Entrenador de Encantadores de Darnassus', NULL, 'Дарнасский учитель наложения чар');
INSERT INTO `locales_points_of_interest` VALUES (474, '다르나서스 응급 처치 트레이너', 'Maître des secouristes de Darnassus', 'Lehrer für Erste Hilfe von Darnassus', '达纳苏斯急救训练师', NULL, 'Formador de primeros auxilios de Darnassus', NULL, 'Дарнас: учитель первой помощи');
INSERT INTO `locales_points_of_interest` VALUES (489, '다르나서스 낚시 조련사', 'Maître des pêcheurs de Darnassus', 'Angellehrer von Darnassus', '达纳苏斯钓鱼训练师', NULL, 'Entrenador de pesca Darnassus', NULL, 'Дарнасский учитель рыбной ловли');
INSERT INTO `locales_points_of_interest` VALUES (471, '다르나서스 가죽세공 조련사', 'Maître des travailleurs du cuir de Darnassus', 'Lederverarbeitungslehrer von Darnassus', '达纳苏斯制皮训练师', NULL, 'Entrenador de marroquinería de Darnassus', NULL, 'Дарнасский учитель кожевничества');
INSERT INTO `locales_points_of_interest` VALUES (472, '다르나서스 무두질 조련사', 'Maître des dépeceurs de Darnassus', 'Kürschnerlehrer von Darnassus', '达纳苏斯剥皮训练师', NULL, 'Entrenador de despellejadores de Darnassus', NULL, 'Дарнасский учитель снятия шкур');
INSERT INTO `locales_points_of_interest` VALUES (470, '다르나서스 재단사', 'Tailleur de Darnassus', 'Schneider von Darnassus', '达纳苏斯裁缝', NULL, 'Sastre Darnassus', NULL, 'Дарнасский портной');
INSERT INTO `locales_points_of_interest` VALUES (698, '돌라나르 인', 'Auberge de Dolanaar', 'Gasthaus Dolanaar', '多兰纳尔旅店', NULL, 'Posada de Dolanaar', 'Posada de Dolanaar', 'Таверна Доланаара');
INSERT INTO `locales_points_of_interest` VALUES (871, '세리아드네', 'Seriadne', 'Seriadne', '瑟里亚迪', NULL, 'Seriadne', 'Seriadne', 'Сериадна');
INSERT INTO `locales_points_of_interest` VALUES (697, '칼', 'Kal', 'Kal', '卡尔', NULL, 'Kal', 'Kal', 'Каль');
INSERT INTO `locales_points_of_interest` VALUES (693, '다잘라', 'Dazalar', 'Dazalar', '达札拉', NULL, 'Dazalar', 'Dazalar', 'Дазалар');
INSERT INTO `locales_points_of_interest` VALUES (690, '로나 모닝라이트', 'Laurna Clairematin', 'Laurna Morgenglanz', '露娜·晨光', NULL, 'Laurna Luzdelalba', 'Laurna Luzdelalba', 'Лорна Утренний Свет');
INSERT INTO `locales_points_of_interest` VALUES (692, '잔녹 브리제송', 'Jannok Chantebrise', 'Jannok Windsang', '詹诺克·柔歌', NULL, 'Jannok Brisón', 'Jannok Brisón', 'Джаннок Поющий Ветерок');
INSERT INTO `locales_points_of_interest` VALUES (691, '키라 윈드블레이드', 'Kyra Lamevent', 'Kyra Windklinge', '凯拉·风刃', NULL, 'Kyra Espada del Viento', 'Kyra Espada del Viento', 'Кайра Ветрорез');
INSERT INTO `locales_points_of_interest` VALUES (696, '신드라 카인드위스퍼', 'Cyndra Murmegent', 'Cyndra Samtwisper', '塞恩德拉·细语者', NULL, 'Cyndra Susurro', 'Cyndra Susurro', 'Циндра Ласковый Шепот');
INSERT INTO `locales_points_of_interest` VALUES (694, '자린', 'Zarrin', 'Zarrin', '札瑞恩', NULL, 'Zarrin', 'Zarrin', 'Заррин');
INSERT INTO `locales_points_of_interest` VALUES (699, '알라나 레이븐아이', 'Alanna Oeil-de-corbeau', 'Alanna Rabenauge', '奥兰纳·鸦眼', NULL, 'Alanna Cuervojo', 'Alanna Cuervojo', 'Аланна Око Ворона');
INSERT INTO `locales_points_of_interest` VALUES (689, '비앙시', 'Byancie', 'Byancie', '拜恩希', NULL, 'Byancie', 'Byancie', 'Бьянси');
INSERT INTO `locales_points_of_interest` VALUES (695, '말로른 블레이드리프', 'Malorne Feuillelame', 'Malorne Messerblatt', '玛洛尼·刃叶', NULL, 'Malorne Filohoja', 'Malorne Filohoja', 'Малорн Остролист');
INSERT INTO `locales_points_of_interest` VALUES (688, '나디아 매뉴버', 'Nadyia Tissecrin', 'Nadyia Schopfweber', '纳迪娅·织发', NULL, 'Nadyia Tejecrín', 'Nadyia Tejecrín', 'Надайя Гривопряд');
INSERT INTO `locales_points_of_interest` VALUES (687, '라드나알 매뉴버', 'Radnaal Tissecrin', 'Radnaal Schopfweber', '拉德纳尔·织发', NULL, 'Radnaal Tejecrín', 'Radnaal Tejecrín', 'Раднаал Гривопряд');
INSERT INTO `locales_points_of_interest` VALUES (267, '오그리마 은행', 'Banque d\'Orgrimmar', 'Bank von Orgrimmar', '奥格玛银行', NULL, 'Banco de Orgrimmar', NULL, 'Банк Оргриммара');
INSERT INTO `locales_points_of_interest` VALUES (268, '스카이타워', 'Tour des Cieux', 'Der Himmelsturm', '飞行塔', NULL, 'La Torre Sky', NULL, 'Башня Небес');
INSERT INTO `locales_points_of_interest` VALUES (269, '호드 대사관', 'Ambassade de la Horde', 'Botschaft der Horde', '部落大使馆', NULL, 'Embajada de la Horda', NULL, 'Посольство Орды');
INSERT INTO `locales_points_of_interest` VALUES (270, '오그리마 인', 'Auberge d\'Orgrimmar', 'Gasthaus von Orgrimmar', '奥格玛旅馆', NULL, 'Posada de Orgrimmar', NULL, 'Таверна Оргриммара');
INSERT INTO `locales_points_of_interest` VALUES (271, '오그리마 우편함', 'Boîte aux lettres d\'Orgrimmar', 'Briefkasten von Orgrimmar', '奥格玛邮箱', NULL, 'Buzón de Orgrimmar', NULL, 'Оргриммар: почта');
INSERT INTO `locales_points_of_interest` VALUES (347, '오그리마 경매장', 'Autel des ventes d\'Orgrimmar', 'Auktionshaus von Orgrimmar', '奥格玛拍卖行', NULL, 'Casa de subastas de Orgrimmar', NULL, 'Оргриммар: аукционный дом');
INSERT INTO `locales_points_of_interest` VALUES (809, '사욕 & 하나시', 'Sayoc & Hanashi', 'Sayoc und Hanashi', '塞尤克和哈纳什', NULL, 'Sayoc y Hanashi', NULL, 'Сайок и Ханаши');
INSERT INTO `locales_points_of_interest` VALUES (848, '손차', 'Xon\'cha', 'Xon\'cha', '克苏卡', NULL, NULL, NULL, 'Ксон\'ча');
INSERT INTO `locales_points_of_interest` VALUES (1468, '전설의 전당', 'Hall des Légendes', 'Die Halle der Legenden', '传说大厅', NULL, 'Salón de las Leyendas', NULL, 'Зал Легенд');
INSERT INTO `locales_points_of_interest` VALUES (604, '블러드후프 빌리지 인', NULL, NULL, NULL, NULL, 'Posada Bloodhoof Village', NULL, 'Безделушки Пружиннера');
INSERT INTO `locales_points_of_interest` VALUES (601, '크룬', NULL, NULL, NULL, NULL, NULL, NULL, 'Вилла Салтерила: портной');
INSERT INTO `locales_points_of_interest` VALUES (475, '언더시티 인챈팅 트레이너', NULL, NULL, NULL, NULL, 'Entrenador de Encantamiento de la Ciudad Subterránea', NULL, 'Ярр Камнедроб');
INSERT INTO `locales_points_of_interest` VALUES (460, '언더시티 요리 조련사', NULL, NULL, NULL, NULL, NULL, NULL, 'Таверна в Деревне Кровавого Копыта');
INSERT INTO `locales_points_of_interest` VALUES (458, '언더시티 대장기술 조련사', NULL, NULL, NULL, NULL, 'Entrenador de herrería', NULL, 'Сейква');
INSERT INTO `locales_points_of_interest` VALUES (455, '언더시티 전사 조련사', NULL, NULL, NULL, NULL, 'Entrenadores Undercity Warrior', NULL, 'Йо Колкая Грива');
INSERT INTO `locales_points_of_interest` VALUES (457, '아포테카리움', NULL, NULL, NULL, NULL, 'El Boticario', NULL, 'Генния Рунический Тотем');
INSERT INTO `locales_points_of_interest` VALUES (453, '언더시티 흑마법사 조련사', NULL, NULL, NULL, NULL, 'Entrenadores de brujos de Undercity', NULL, 'Нарм Небесный Охотник');
INSERT INTO `locales_points_of_interest` VALUES (454, '언더시티 사제 조련사', NULL, NULL, NULL, NULL, 'Undercity Sacerdote Formador', NULL, 'Кранг Каменное Копыто');
INSERT INTO `locales_points_of_interest` VALUES (452, '언더시티 마법사 조련사', NULL, NULL, NULL, NULL, 'Entrenadores de magos de Undercity', NULL, 'Пиалл Тихая Поступь');
INSERT INTO `locales_points_of_interest` VALUES (451, '언더시티 비행선', NULL, NULL, NULL, NULL, NULL, NULL, 'Утан Тихая Заводь');
INSERT INTO `locales_points_of_interest` VALUES (852, '안야 마울레이', NULL, NULL, NULL, NULL, NULL, NULL, 'Чоу Толстая Шкура');
INSERT INTO `locales_points_of_interest` VALUES (450, '언더시티 우체통', NULL, NULL, NULL, NULL, 'Buzón Undercity', NULL, 'Йонн Глубокий Надрез');
INSERT INTO `locales_points_of_interest` VALUES (449, '언더시티 인', NULL, NULL, NULL, NULL, 'Posada Undercity', NULL, 'Гнездо ветрокрылов');
INSERT INTO `locales_points_of_interest` VALUES (448, '언더시티 길드 마스터', NULL, NULL, NULL, NULL, 'Maestro gremial de la ciudad subterránea', NULL, 'Громовой Утес: городская информация');
INSERT INTO `locales_points_of_interest` VALUES (447, '언더시티 박쥐 조련사', NULL, NULL, NULL, NULL, 'Manipulador de murciélagos', NULL, 'Громовой Утес: почта');
INSERT INTO `locales_points_of_interest` VALUES (488, '언더시티 은행', NULL, NULL, NULL, NULL, 'Banco Suburbano', NULL, 'Ансеква');
INSERT INTO `locales_points_of_interest` VALUES (1691, '언더시티 경매장', NULL, NULL, NULL, NULL, 'Casa de subastas Undercity', NULL, 'Балруг');
INSERT INTO `locales_points_of_interest` VALUES (289, '마가르의 옷감 잡화', NULL, NULL, NULL, NULL, NULL, NULL, 'Громовой Утес: военачальники');
INSERT INTO `locales_points_of_interest` VALUES (287, '코도가죽 가죽세공인', NULL, NULL, NULL, NULL, 'Marroquineros de Kodohide', NULL, 'Зал Старейшин');
INSERT INTO `locales_points_of_interest` VALUES (288, '레드 캐년 광업', NULL, NULL, NULL, NULL, 'Minas de Red Canyon', NULL, 'Пруды Видений');
INSERT INTO `locales_points_of_interest` VALUES (285, '잔디의 수목원', NULL, NULL, NULL, NULL, 'Arboreto de Jandi', NULL, 'Зал Духов');
INSERT INTO `locales_points_of_interest` VALUES (284, '루막의 낚시', NULL, NULL, NULL, NULL, 'Pesca en Lumak', NULL, 'Зал Охотников');
INSERT INTO `locales_points_of_interest` VALUES (283, '적자 생존', NULL, NULL, NULL, NULL, 'La supervivencia del más fuerte', NULL, 'Лаборатория Бены');
INSERT INTO `locales_points_of_interest` VALUES (307, '노그의 기계 공장', NULL, NULL, NULL, NULL, 'Taller mecánico Nogg\'s', NULL, 'Кузня Карна');
INSERT INTO `locales_points_of_interest` VALUES (282, '고단의 룬워크', NULL, NULL, NULL, NULL, 'Obras de Godan', NULL, 'Кухня Аски');
INSERT INTO `locales_points_of_interest` VALUES (281, '보스탄의 화덕', NULL, NULL, NULL, NULL, 'Hoguera de Borstan', NULL, 'Чародеи Утренних Путников');
INSERT INTO `locales_points_of_interest` VALUES (280, '불타는 모루', NULL, NULL, NULL, NULL, 'El yunque en llamas', NULL, 'Духовное исцеление');
INSERT INTO `locales_points_of_interest` VALUES (279, '옐막의 연금술과 물약', NULL, NULL, NULL, NULL, 'Alquimia y pociones de Yelmak', NULL, 'Снасти и наживка с горных вершин');
INSERT INTO `locales_points_of_interest` VALUES (275, '용감한 홀', NULL, NULL, NULL, NULL, 'Sala de los Valientes', NULL, 'Общее травничество');
INSERT INTO `locales_points_of_interest` VALUES (277, '쉐도우 스위프트 브라더후드', NULL, NULL, NULL, NULL, 'Hermandad Shadowswift', NULL, 'Громовой Утес: оружейники');
INSERT INTO `locales_points_of_interest` VALUES (274, '스피릿 로지', NULL, NULL, NULL, NULL, 'Albergue Spirit', NULL, 'Муранта');
INSERT INTO `locales_points_of_interest` VALUES (276, '스랄의 요새', NULL, NULL, NULL, NULL, 'Fortaleza de Thrall', NULL, 'Лавка Геолога');
INSERT INTO `locales_points_of_interest` VALUES (273, '다크브라이어 로지', NULL, NULL, NULL, NULL, 'Albergue Darkbriar', NULL, 'Громовой Утес: оружейники');
INSERT INTO `locales_points_of_interest` VALUES (567, '무란타', NULL, NULL, NULL, NULL, NULL, NULL, 'Таверна \"Петля висельника\"');
INSERT INTO `locales_points_of_interest` VALUES (157, '스톤후프 지질학', NULL, NULL, NULL, NULL, 'Geología Stonehoof', NULL, 'Кейн Песнь Пламени');
INSERT INTO `locales_points_of_interest` VALUES (154, '썬더 블러프 방어구 장화', NULL, NULL, NULL, NULL, 'Armeros de Thunder Bluff', NULL, 'Темный священник Берил');
INSERT INTO `locales_points_of_interest` VALUES (151, '전체론적 약초학', NULL, NULL, NULL, NULL, 'Herboristería holística', NULL, 'Марион Зов');
INSERT INTO `locales_points_of_interest` VALUES (160, '산꼭대기 미끼 및 태클', NULL, NULL, NULL, NULL, NULL, NULL, 'Руперт Бош');
INSERT INTO `locales_points_of_interest` VALUES (153, '새벽길잡이 마법부여사', NULL, NULL, NULL, NULL, 'Encantadores Dawnstrider', NULL, 'Каролай Аниса');
INSERT INTO `locales_points_of_interest` VALUES (162, '영적인 치유', NULL, NULL, NULL, NULL, 'Curación espiritual', NULL, 'Остил де Мон');
INSERT INTO `locales_points_of_interest` VALUES (187, '아스카의 부엌', NULL, NULL, NULL, NULL, 'Cocina de Aska', NULL, 'Ванс Мрачнейший');
INSERT INTO `locales_points_of_interest` VALUES (155, '카른의 대장간', NULL, NULL, NULL, NULL, 'Herrería de Karn', NULL, 'Сиделка Нила');
INSERT INTO `locales_points_of_interest` VALUES (152, '베나의 연금술', NULL, NULL, NULL, NULL, 'Alquimia de Bena', NULL, 'Клайд Келлен');
INSERT INTO `locales_points_of_interest` VALUES (148, '영혼의 전당', NULL, NULL, NULL, NULL, 'Sala de los Espíritus', NULL, 'Фаруза');
INSERT INTO `locales_points_of_interest` VALUES (161, '비전의 웅덩이', NULL, NULL, NULL, NULL, 'Piscinas de visión', NULL, 'Шелена Робарт');
INSERT INTO `locales_points_of_interest` VALUES (149, '헌터스 홀', NULL, NULL, NULL, NULL, 'Sala Hunter', NULL, 'Рэнд Робарт');
INSERT INTO `locales_points_of_interest` VALUES (150, '장로의 전당', NULL, NULL, NULL, NULL, 'Sala de los Ancianos', NULL, 'Боуэн Брисбойс');
INSERT INTO `locales_points_of_interest` VALUES (810, '안세화', NULL, NULL, NULL, NULL, NULL, NULL, 'Подгород: дрессировщик нетопырей');
INSERT INTO `locales_points_of_interest` VALUES (1692, '썬더 블러프 경매장', NULL, NULL, NULL, NULL, 'Casa de subastas Thunder Bluff', NULL, 'Подгород: военачальники');
INSERT INTO `locales_points_of_interest` VALUES (368, '썬더 블러프 우편함', NULL, NULL, NULL, NULL, 'Buzón Thunder Bluff', NULL, 'Подгород: регистрация гильдий');
INSERT INTO `locales_points_of_interest` VALUES (367, '썬더 블러프 인', NULL, NULL, NULL, NULL, 'Posada Thunder Bluff', NULL, 'Подгородская таверна');
INSERT INTO `locales_points_of_interest` VALUES (167, '윈드 라이더 루스트', NULL, NULL, NULL, NULL, 'Refugio del Jinete del Viento', NULL, 'Подгород: почта');
INSERT INTO `locales_points_of_interest` VALUES (168, '썬더 블러프 은행', NULL, NULL, NULL, NULL, 'Banco Thunder Bluff', NULL, 'Аня Молрэ');
INSERT INTO `locales_points_of_interest` VALUES (662, '약초학자 포메로이', NULL, NULL, NULL, NULL, 'Botánico Pomeroy', 'Botánico Pomeroy', 'Подгород: наставник разбойников');
INSERT INTO `locales_points_of_interest` VALUES (463, '다르나서스 약초채집 조련사', NULL, NULL, NULL, NULL, 'Entrenador de Herboristería de Darnassus', NULL, 'Подгород: наставники чернокнижников');
INSERT INTO `locales_points_of_interest` VALUES (464, '달의 사원', NULL, NULL, NULL, NULL, 'Templo de la Luna', NULL, 'Подгород: наставник воинов');
INSERT INTO `locales_points_of_interest` VALUES (849, '세이과', NULL, NULL, NULL, NULL, NULL, NULL, 'Зал Охотников');
INSERT INTO `locales_points_of_interest` VALUES (606, '제니아 룬토템', NULL, NULL, NULL, NULL, NULL, NULL, 'Пристанище Темнотерна');
INSERT INTO `locales_points_of_interest` VALUES (608, '요 샤프메인', NULL, NULL, NULL, NULL, NULL, NULL, 'Обитель Духов');
INSERT INTO `locales_points_of_interest` VALUES (607, '남 스카이체이서', NULL, NULL, NULL, NULL, NULL, NULL, 'Крепость Тралла');
INSERT INTO `locales_points_of_interest` VALUES (609, '크랑 스톤후프', NULL, NULL, NULL, NULL, NULL, NULL, 'Братство Теней');
INSERT INTO `locales_points_of_interest` VALUES (610, '파이올 사일런트스트라이드', NULL, NULL, NULL, NULL, NULL, NULL, 'Анклав Темного Пламени');
INSERT INTO `locales_points_of_interest` VALUES (605, '비라 영후프', NULL, NULL, NULL, NULL, NULL, NULL, 'Зал Отважных');
INSERT INTO `locales_points_of_interest` VALUES (613, '우단 스틸워터', NULL, NULL, NULL, NULL, NULL, NULL, 'Алхимия и Эликсиры Йелмака');
INSERT INTO `locales_points_of_interest` VALUES (611, '차우 스트롱하이드', NULL, NULL, NULL, NULL, NULL, NULL, 'Пылающая наковальня');
INSERT INTO `locales_points_of_interest` VALUES (612, '욘 딥컷', NULL, NULL, NULL, NULL, 'Yonn Corte Profundo', NULL, 'Жаровня Борстана');
INSERT INTO `locales_points_of_interest` VALUES (615, '교수대의 끝 선술집', NULL, NULL, NULL, NULL, 'Taberna Gallows\' End', NULL, 'Чародейские товары Годана');
INSERT INTO `locales_points_of_interest` VALUES (851, '모르가누스', NULL, NULL, NULL, NULL, NULL, NULL, 'Естественный отбор');
INSERT INTO `locales_points_of_interest` VALUES (616, '케인 파이어송', NULL, NULL, NULL, NULL, 'Canto de Caín', NULL, 'Рыбное место Лумака');
INSERT INTO `locales_points_of_interest` VALUES (617, '다크 클레릭 베릴', NULL, NULL, NULL, NULL, 'Clérigo oscuro Beryl', NULL, 'Дендрарий Джанди');
INSERT INTO `locales_points_of_interest` VALUES (618, '매리언 콜', NULL, NULL, NULL, NULL, NULL, NULL, 'Рудник Ржавого каньона');
INSERT INTO `locales_points_of_interest` VALUES (619, '루퍼트 보흐', NULL, NULL, NULL, NULL, NULL, NULL, 'Выделка шкур кодо');
INSERT INTO `locales_points_of_interest` VALUES (620, '오스틸 드 몬', NULL, NULL, NULL, NULL, NULL, NULL, 'Портняжное ателье Магара');
INSERT INTO `locales_points_of_interest` VALUES (623, '간호사 닐라', NULL, NULL, NULL, NULL, 'Enfermera Neela', NULL, 'Дарнасский учитель травничества');

SET FOREIGN_KEY_CHECKS = 1;
