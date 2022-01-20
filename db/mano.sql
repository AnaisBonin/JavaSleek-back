DROP TABLE IF EXISTS `products_projet`;
DROP TABLE IF EXISTS `project_step`;
DROP TABLE IF EXISTS `products_keyword`;
DROP TABLE IF EXISTS `products_categories`;
DROP TABLE IF EXISTS `project_categories`;
DROP TABLE IF EXISTS `keyword_project`;
DROP TABLE IF EXISTS `products`;
DROP TABLE IF EXISTS `projects`;
DROP TABLE IF EXISTS `steps`;
DROP TABLE IF EXISTS `keyword`;
DROP TABLE IF EXISTS `categories`;
DROP TABLE IF EXISTS `user`;

CREATE TABLE `products`( 
    `id`INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `name`VARCHAR(255) NOT NULL,
    `brand` VARCHAR(255) NOT NULL,
    `shortedescription`VARCHAR (255) NOT NULL,
    `description` VARCHAR(255) NOT NULL,
    `price` float,
    `rating` numeric (5) NULL,
    `picture` VARCHAR(255) NOT NULL
);

INSERT INTO `products`(`id`,`name`, `brand`, `shortedescription`, `description`, `price`, `rating`, `picture`) VALUES 
(1,'rouleau microfibre 12mm', 'Microliss', 'Pour peintures murs et plafonds - Largeur 110mm', 'peintures glycréo ou acrylique, mur et plafond en mat, velours et satiné.', 1.26, 4.5/5, 'https://cdn.manomano.com/images/images_products/1595407/T/3698496_1.jpg'),
(2,'Rouleau peinture patte de lapin', 'Kibros', 'Manchon à poils courts, recommandé pour les murs lisses et donne un effet tendu', 'Monture avec poignée plastique et tige acier. Longueur de l-ensemble : 40 cm', 19.90, 4/5, 'https://cdn.manomano.com/images/images_products/18966809/T/34300282_1.jpg'  ),
(3,'Peinture Blanche 98% Monocouche', 'Delux', 'Ultra couvrant : 98% dopacité en une seule couche', 'Cette peinture avec son bel aspect mat et son excellente résistance aux lessivages et aux chocs assure une décoration durable de vos murs,', 84.90, 4.5/5, 'https://cdn.manomano.com/peinture-blanche-98-monocouche-pour-murs-plafonds-dulux-valentine-P-3199855-11334784_1.jpg'),
(4,'Peinture baignoire et lavabo', 'Arcane Industrie', 'Résine de rénovation pour émail',' lа pеinturе idéаlе аdаptéе à lа rénоvаtiоn dе vоtrе bаignоirе, lаvаbо еn sаnitаirеs.', 50.00, 4/5, 'https://cdn.manomano.com/peinture-baignoire-lavabo-resine-epoxy-forte-adherence-pour-renovation-de-baignoire-lavabo-salle-de-bain-P-191006-9893913_1.jpg'),
(5,'Cuvette design sans bride (rimless) ', 'Serel','Cuvette suspendue sans bride en céramique', 'Optez pour ce set de la marque SEREL comprenant une cuvette sans bride, ainsi qu-un abattant soft close.', 129.90, 4/5, 'https://cdn.manomano.com/images/images_products/646923/T/11671767_2.jpg' ),
(6,'Colonne de douche 1 jet', 'Hansgrohe Crometta','t Consomme jusquà 60 % deau en moins que les produits traditionnels', 'es dépôts calcaires et la saleté sur les mitigeurs et les douches hansgrohe disparaissent en un instant', 299.00, 4/5, 'https://cdn.manomano.com/images/images_products/5071444/T/26887113_2.jpg'  ),
(7,'Série Canaletto Nero 20x20', 'ManoMano','Carrelage pour sol ou mural au format 20x20', 'Décors différents mélangés sans aucun ordre 1er choix', 31.24, 4/5, 'https://cdn.manomano.com/images/images_products/9362134/T/19671751_2.jpg'  ),
(8,'Kit douche à italienne', 'SIKA','Étanchéité sous carrelage - 6m²', 'prêt à lemploi permettant de réaliser létanchéité sous protection dure rapprochée',52.99, 3/5, 'https://cdn.manomano.com/images/images_products/191104/T/8328905_2.jpg'  ),
(9,'Meuble de salle de bain suspendu', 'Nordik', '80 cm couleur Nordik avec miroir', 'Meuble de salle de bains suspendu Cotton avec 2 portes et une étagère en bas.', 249.00, 4/5, 'https://cdn.manomano.com/images/images_products/2841872/T/10549521_2.jpg'),
(10,'Canapé d-angle gauche convertible', 'Lisbona','L 252 x P 190cm Couleur - Bleu canard - Bleu canard', 'canapé d-angle gauche convertible avec appuis-têtes réglables et accoudoir ajustable', 749.00, 9/10, 'https://cdn.manomano.com/images/images_products/7888927/T/14222320_2.jpg'  ),
(11,'Étagère de cuisine métallique Vintage', 'VASAGLE', 'Étagère pour four à micro-ondes et mini four', 'Quoi de mieux que l’odeur de la pizza fraîchement préparée sortie du four avec un verre de votre soda préféré ?', 87.99, 3/5, 'https://cdn.manomano.com/images/images_products/8554702/T/27184599_2.jpg'),
(12,'Matelas 90x190 à mémoire de forme', 'Olympe','11 zones différenciées 21cm de hauteur', 'Le modèle Stratus est un matelas anatomique et de soutien en mousse à mémoire de forme.', 130.19, 9/10, 'https://cdn.manomano.com/images/images_products/8516523/T/15546107_1.jpg'),
(13,'Commode large chambre salon bureau  6 tiroirs', 'ASTER', 'Commode Aster à six tiroirs apportera une touche de modernité et harmonie', ' Avec sa matière, ses lignes épurées et ses détails', 179.99, 4/5,'https://cdn.manomano.com/images/images_products/21459895/T/43902112_1.jpg' ),
(14,'Tête de lit  165 CM design industriel', 'Detroit', 'mple et moderne, avec son design sobre et épuré', 'DETROIT s-intégrera parfaitement à votre chambre à coucher ', 139.99, 4/5, 'https://cdn.manomano.com/images/images_products/52751/T/30866631_1.jpg' ),
(15,'Binette Nanterre', 'Leborgne', 'Emmanché 1,50 m - Longueur 16 cm', 'Pour briser la croûte sèche de surface, désherber en coupant les racines Lame acier extra dur auto-affûtante', 17.36, 3/5, 'https://cdn.manomano.com/images/images_products/935903/T/2595826_1.jpg' ),
(16,'Kit outils de jardinage 9 pièces', 'ManoMano', 'Ensemble outils de jardin tout-en-un', 'Outils de jardinage de haute qualité : tous les outils de jardinage sont fabriqués en acier inoxydable', 68.44, 2/5, 'https://cdn.manomano.com/images/images_products/16821810/T/29715644_1.jpg'),
(17,'AÉROCOMPOST ','NATUROVERT LEBORGNE','Outil pour aérer le compost, idéal pour le jardin', 'Dents profilées : pour bien mélanger le compost à lhorizontale', 31.99, 3/5, 'https://cdn.manomano.com/images/images_products/273920/T/32481619_1.jpg'),
(18,'Mini pelle', 'SPEAR & JACKSON', ' tête en acier - 69cm', 'déale pour manipuler et déplacer la terre, le sable, le terreau.', 8.99, 3/5, 'https://cdn.manomano.com/images/images_products/191104/T/37530426_1.jpg'),
(19,'Abri de jardin en métal','ARTOIS', 'Cabane à outils avec deux grandes portes coulissantes.', 'Panneaux en acier galvanisé, ne nécessite aucun entretien et résiste dans le temps', 319.99, 4/5, 'https://cdn.manomano.com/images/images_products/152398/T/7213197_1.jpg'),
(20,'Scie à bois, règle intégrée - 500mm', 'SPARTA', 'Scie à bois classique', 'La scie à bois "égoïne" SPARTA est spécialement conçue pour les travaux de bucheronnage, de coupe de bois en général.', 8.51, 3/5,'https://cdn.manomano.com/images/images_products/20798290/T/41685990_1.jpg'),
(21,'Découpeur ponceur GOP 55-36 StarlockMax', 'BOSCH', 'Outil de la catégorie StarlockMax pour une progression de travail extrême', 'Interface 3D pour un transfert de puissance à faible perte appareil aux accessoires', 369.98, 6/10, 'https://cdn.manomano.com/images/images_products/12/T/2561860_1.jpg'),
(22,'Ponceuse excentrique 300 W Ø125 mm','Makita','Ponceuse excentrique filaire Makita pour les applications courantes','Sa conception ergonomique et sa poignée offrent une prise en main très facile.',152.48, 9/10,'https://cdn.manomano.com/images/images_products/666714/T/12043848_1.jpg' ),
(23,'perceuse visseuse', 'Makita', 'Perceuse visseuse 2 vitesses, compacte et légère','Réglage précis du couple en 16 positions + position perçage', 185, 3/5,'https://cdn.manomano.com/images/images_products/5307819/T/14708990_1.jpg' ),
(24,'Brosse à main, fil acier ondulé', 'OSBORN', 'Dépoussiérage, dérouillage, nettoyage', ' Elle peut être utilisée pour tous les travaux de nettoyage, même dans les endroits étroits.', 2.22, 2/5,'https://cdn.manomano.com/images/images_products/29087/T/421363_1.jpg')
;


CREATE TABLE `projects`(
    `id`INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(255) NOT NULL,
    `description` VARCHAR(255) NOT NULL,
    `rating` numeric NULL
);

INSERT INTO `projects`(`id`,`title`, `description`, `rating`) VALUES 
(26,'Dormir mieux la nuit', 'et si vous changiez votre matelas?', 4/5),
(27,'Ranger son jardin', 'avez vous de la place?', 4/5),
(28,'Changer de decoration', 'Quel style est fait pour vous?', 4/5),
(29,'Repeindre son plafond', 'prenez un pinceau et peignez', 4/5),
(30,'Refaire sa salle de bains', 'Quelque gadgets pour un nouveau look', 4/5)
;

CREATE TABLE `products_projet`(
`products_id` INT,
`projects_id` INT,
FOREIGN KEY (products_id) REFERENCES products(id),
FOREIGN KEY (projects_id) REFERENCES projects(id)
);

INSERT INTO `products_projet` (`products_id`,`projects_id` ) VALUES 
(1,29),
(2,29),
(3,29),
(4,29),
(5,29),
(6,30),
(7,30),
(8,30),
(9,30),
(10,28),
(11,28),
(12,28),
(13,28),
(14,28),
(15,27),
(16,27),
(17,27),
(18,27),
(19,27)
;

CREATE TABLE `steps`(
    `id`INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(255) NOT NULL,
    `description` VARCHAR(255) NOT NULL,
    `video` VARCHAR(255) NOT NULL
);

INSERT INTO `steps`(`id`,`title`, `description`, `video`) VALUES 
(30,'Dormir mieux la nuit', 'trouvez-nos conseils pour changer de matelas', 'https://www.youtube.com/watch?v=M7ilDD1gBYQ'),
(31,'Ranger son jardin', 'Voci la bonne astuce', 'https://www.youtube.com/watch?v=1QpM_b1vskw'),
(32,'Changer de decoration', 'Evitez le piege', 'https://www.youtube.com/watch?v=jJOB8UOJvYA'),
(33,'Repeindre son plafond', 'Soyez un pro', 'https://www.youtube.com/watch?v=QxdKlpA4lIw'),
(34,'Je reafais ma salle de bain', 'PAr ou commencer?', 'https://www.youtube.com/watch?v=V9bhfbhXtM4')
;

CREATE TABLE `project_step`(
`projects_id` INT,
`steps_id`INT,

FOREIGN KEY (projects_id) REFERENCES projects(id),
FOREIGN KEY (steps_id) REFERENCES steps(id)
);

INSERT INTO `project_step` ('projects_id', 'steps_id') VALUES 
(26,30),
(27,31),
(28,32),
(29,33),
(30,34)
;

CREATE TABLE `keyword`(
`id`INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
`word` VARCHAR(255) NOT NULL
);

INSERT INTO `keyword`(`word`, `id`) VALUES 
 ('Meubles', 1),
 ('outils', 2),
 ('jardin', 3),
 ('salle de bain', 4),
 ('peinture', 5)
 ;

CREATE TABLE `products_keyword`(
`products_id` INT,
`keyword_id`INT,

FOREIGN KEY (products_id) REFERENCES products(id),
FOREIGN KEY (keyword_id) REFERENCES keyword(id)
);

(1,5),
(2,5),
(3,5),
(4,5),
(6,4),
(7,4),
(8,4),
(9,4),
(10,1),
(11,1),
(12,1),
(13,1),
(14,1),
(15,3),
(16,3),
(17,3),
(18,3),
(19,3),
(20,2),
(21,2),
(22,2),
(23,2),
(24,2)
;


CREATE TABLE `categories`(
`id`INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
`name` VARCHAR(255) NOT NULL
);

CREATE TABLE `products_categories`(
`products_id` INT,
`categories_id`INT,

FOREIGN KEY (products_id) REFERENCES products(id),
FOREIGN KEY (categories_id) REFERENCES categories(id)
);


CREATE TABLE `project_categories`(
`projects_id` INT,
`categories_id`INT,

FOREIGN KEY (projects_id) REFERENCES projects(id),
FOREIGN KEY (categories_id) REFERENCES categories(id)
);

CREATE TABLE `keyword_project`(
`projects_id` INT,
`keyword_id`INT,

FOREIGN KEY (projects_id) REFERENCES projects(id),
FOREIGN KEY (keyword_id) REFERENCES keyword(id)
);

CREATE TABLE `user`(
`id`INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
`name` VARCHAR(255) NOT NULL
);