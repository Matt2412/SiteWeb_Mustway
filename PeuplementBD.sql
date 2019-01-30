/* LES PRODUITS 1 */
INSERT INTO produit VALUES ('blanc','pain',NULL); /*LES PAINS*/
INSERT INTO produit VALUES ('avoine et miel','pain',NULL);
INSERT INTO produit VALUES ('complet','pain',NULL);
INSERT INTO produit VALUES ('parmesan et origan','pain',NULL);
INSERT INTO produit VALUES ('thon','viande',NULL); /*LES VIANDES*/
INSERT INTO produit VALUES ('saucisson','viande',NULL);
INSERT INTO produit VALUES ('jambon','viande',NULL);
INSERT INTO produit VALUES ('steak hache','viande',NULL);
INSERT INTO produit VALUES ('oeuf en tranche','viande',NULL);
INSERT INTO produit VALUES ('olive en tranche','legume',NULL);/*LES LEGUMES*/
INSERT INTO produit VALUES ('cornichon en tranche','legume',NULL);
INSERT INTO produit VALUES ('tomate en tranche','legume',NULL);
INSERT INTO produit VALUES ('puree de mais','legume',NULL);
INSERT INTO produit VALUES ('carotte en tranche','legume',NULL);
INSERT INTO produit VALUES ('poivron en tranche','legume',NULL);
INSERT INTO produit VALUES ('salade verte','legume',NULL);
INSERT INTO produit VALUES ('pomme de terre en tranche','legume',NULL);
INSERT INTO produit VALUES ('puree de noix','legume',NULL);
INSERT INTO produit VALUES ('puree de ail et oignon','legume',NULL);
INSERT INTO produit VALUES ('emmental','fromage',NULL);     /*LES FROMAGES*/
INSERT INTO produit VALUES ('mozarella','fromage',NULL);
INSERT INTO produit VALUES ('munster','fromage',NULL);
INSERT INTO produit VALUES ('barbecue','sauce',NULL);    /*LES SAUCES*/
INSERT INTO produit VALUES ('moutarde et miel','sauce',NULL);
INSERT INTO produit VALUES ('oignon doux','sauce',NULL);
INSERT INTO produit VALUES ('brownie','dessert',NULL);    /*LES DESSERTS*/ 
INSERT INTO produit VALUES ('cookie chocolat blanc','dessert',NULL);
INSERT INTO produit VALUES ('cookie noix de macadamia','dessert',NULL);
INSERT INTO produit VALUES ('coca-cola','boisson',NULL);    /* LES BOISSONS*/
INSERT INTO produit VALUES ('ice Tea','boisson',NULL);
INSERT INTO produit VALUES ('fanta','boisson',NULL);
INSERT INTO produit VALUES ('chips nature','entree',NULL);    /* LES ENTREES*/
INSERT INTO produit VALUES ('tartine de pate de campagne','entree',NULL);


/* LES INGREDIENTS 2 */
INSERT INTO ingredient VALUES ('ble','cereale',NULL); /* LES PAINS*/
INSERT INTO ingredient VALUES ('avoine','cereale',NULL);
INSERT INTO ingredient VALUES ('mais','cereale',NULL);
INSERT INTO ingredient VALUES ('porc','animal',NULL); /* LA VIANDE*/
INSERT INTO ingredient VALUES ('poisson','animal',NULL);
INSERT INTO ingredient VALUES ('poulet','animal',NULL);
INSERT INTO ingredient VALUES ('boeuf','animal',NULL);
INSERT INTO ingredient VALUES ('salade','plante',NULL); /*LES LEGUMES*/
INSERT INTO ingredient VALUES ('olive','plante',NULL);
INSERT INTO ingredient VALUES ('cornichon','plante',NULL);
INSERT INTO ingredient VALUES ('tomate','plante',NULL);
INSERT INTO ingredient VALUES ('oignon','plante',NULL);
INSERT INTO ingredient VALUES ('carotte','plante',NULL);
INSERT INTO ingredient VALUES ('graine de moutarde','assaisonnement',NULL); /*LES SAUCES*/
INSERT INTO ingredient VALUES ('eau','liquide',NULL); /*LES BOISSONS*/
INSERT INTO ingredient VALUES ('acide phosphorique','liquide',NULL);
INSERT INTO ingredient VALUES ('feuille de cola','liquide',NULL);
INSERT INTO ingredient VALUES ('jus dagrume','liquide',NULL);
INSERT INTO ingredient VALUES ('feuille de the','liquide',NULL);
INSERT INTO ingredient VALUES ('lait de vache','liquide',NULL);  
INSERT INTO ingredient VALUES ('lait de bufflonne','liquide',NULL);
INSERT INTO ingredient VALUES ('ail','ingBase',NULL); /* LES INGREDIENTS DE BASE*/
INSERT INTO ingredient VALUES ('ciboulette','ingBase',NULL);
INSERT INTO ingredient VALUES ('sucre','ingBase',NULL);
INSERT INTO ingredient VALUES ('noix','ingBase',NULL);
INSERT INTO ingredient VALUES ('pomme de terre','ingBase',NULL);
INSERT INTO ingredient VALUES ('oeuf','ingBase',NULL);
INSERT INTO ingredient VALUES ('cacao','ingBase',NULL);
INSERT INTO ingredient VALUES ('alcool','ingBase',NULL);
INSERT INTO ingredient VALUES ('poivron','ingBase',NULL);
INSERT INTO ingredient VALUES ('poivre','ingBase',NULL);
INSERT INTO ingredient VALUES ('sel','ingBase',NULL);
INSERT INTO ingredient VALUES ('miel','ingBase',NULL);

/* LIEU 3 */
INSERT INTO lieu VALUES (48.85661400000001,2.3522219000000177,1);/*paris*/
INSERT INTO lieu VALUES (45.764043,4.835658999999964,2);/*lyon*/
INSERT INTO lieu VALUES (47.7510741,-120.74013860000002,3);/*washington*/
INSERT INTO lieu VALUES (51.5073509,-0.12775829999998223,4);/*londres*/
INSERT INTO lieu VALUES (52.52000659999999,13.404953999999975,5);/*berlin*/
INSERT INTO lieu VALUES (41.90278349999999,12.496365500000024,6);/*rome*/
INSERT INTO lieu VALUES (40.4167754,-3.7037901999999576,7);/*madrid*/
INSERT INTO lieu VALUES (50.8503396,4.351710300000036,8);/*bruxelles*/
INSERT INTO lieu VALUES (35.6894875,139.69170639999993,9);/*tokyo*/
INSERT INTO lieu VALUES (39.904211,116.40739499999995,10);/*pekin*/
INSERT INTO lieu VALUES (-22.4543984,-49.231652,11);/*brasilia*/
INSERT INTO lieu VALUES (55.755826,37.6173,12);/*moscou*/
INSERT INTO lieu VALUES (41.0082376,28.97835889999999,13);/*istanbul*/
INSERT INTO lieu VALUES (45.5016889,-73.56725599999999,14);/*montreal*/
INSERT INTO lieu VALUES (19.4326077,-99.13320799999997,15);/*mexico*/
INSERT INTO lieu VALUES (38.7222524,-9.139336599999979,16);/*lisbonne*/
INSERT INTO lieu VALUES (38.9613433,125.82799590000002,17);/*pyongyang*/
INSERT INTO lieu VALUES (37.566535,126.97796919999996,18);/*seoul*/
INSERT INTO lieu VALUES (-26.2041028,28.047305100000017,19);/*johannesburg*/
INSERT INTO lieu VALUES (-35.3075,149.124417,20);/*canberra*/

/* LES UNITES 4 */
INSERT INTO unite VALUES ('gramme','g'); /* LES SOLIDES*/
INSERT INTO unite VALUES ('piece','pi');
INSERT INTO unite VALUES ('pot de yahourt','py');
INSERT INTO unite VALUES ('litre','l'); /* LES LIQUIDES*/
INSERT INTO unite VALUES ('cuillere a soupe','cs'); /* LES DEUX*/
INSERT INTO unite VALUES ('cuillere a cafe','cc');

/* UTILISER 5 */
INSERT INTO utiliser VALUES (1,'couteau');
INSERT INTO utiliser VALUES (2,'cuillere');
INSERT INTO utiliser VALUES (2,'econome');
INSERT INTO utiliser VALUES (3,'four');
INSERT INTO utiliser VALUES (3,'moule');
INSERT INTO utiliser VALUES (4,'cuillere');
INSERT INTO utiliser VALUES (4,'econome');
INSERT INTO utiliser VALUES (4,'moule');
INSERT INTO utiliser VALUES (5,'couteau');
INSERT INTO utiliser VALUES (6,'moule');

/* LES ETAPES 6 */
INSERT INTO etape VALUES (1,"Couper horizontalement le pain suivant : ",NULL);
INSERT INTO etape VALUES (2,"Deposer du ",NULL);
INSERT INTO etape VALUES (3,"Rechauffer le sandwich.",NULL);
INSERT INTO etape VALUES (4,"Assaisonner de ",NULL);
INSERT INTO etape VALUES (5,"Coupez le sandwich en deux. ",NULL);
INSERT INTO etape VALUES (6,"Degustez !" ,NULL);
/*L'ID C'EST POUR LISTER LES ETAPES, LE NUMERO C'EST POUR NUMEROTER*/

/* LES USTENSILES 7 */
INSERT INTO ustensile VALUES ('four');
INSERT INTO ustensile VALUES ('couteau');
INSERT INTO ustensile VALUES ('cuillere');
INSERT INTO ustensile VALUES ('econome');
INSERT INTO ustensile VALUES ('moule');

/* LES IMPORTATIONS 8 */
INSERT INTO importation VALUES ("Importation de pain",1,"2016-12-01");
INSERT INTO importation VALUES ("Importation de viande",2,"2016-12-01");
INSERT INTO importation VALUES ("Importation de legume",3,"2016-11-29");
INSERT INTO importation VALUES ("Importation de fromage",4,"2016-01-01");
INSERT INTO importation VALUES ("Importation de sauce",5,"2016-12-17");
INSERT INTO importation VALUES ("Importation de dessert",6,"2016-11-31"); 
INSERT INTO importation VALUES ("Importation de boisson",7,"2016-11-28");
INSERT INTO importation VALUES ("Importation de entree",8,"2016-11-15");
INSERT INTO importation VALUES ("Importation de ingredient",9,"2016-11-27");

/* TRANSFORMER 9 */
INSERT INTO transformer VALUES (50.0,'ble','blanc','gramme');    /*LES PAINS*/
INSERT INTO transformer VALUES (0.5,'eau','blanc','litre'); 
INSERT INTO transformer VALUES (0.1,'sel','blanc','cuillere a soupe');
INSERT INTO transformer VALUES (50.0,'avoine','avoine et miel','gramme');
INSERT INTO transformer VALUES (0.2, 'miel','avoine et miel', 'cuillere a cafe');
INSERT INTO transformer VALUES (0.5,'eau','avoine et miel','litre'); 
INSERT INTO transformer VALUES (0.1,'sel','avoine et miel','cuillere a soupe');
INSERT INTO transformer VALUES (50.0,'ble','complet','gramme');
INSERT INTO transformer VALUES (0.5,'eau','complet','litre'); 
INSERT INTO transformer VALUES (50.0,'poisson','thon','piece');     /*LES VIANDES*/
INSERT INTO transformer VALUES (0.1,'sel','thon','gramme');
INSERT INTO transformer VALUES (50.0,'porc','saucisson','piece');
INSERT INTO transformer VALUES (10.0,'sel','saucisson','pot de yahourt');
INSERT INTO transformer VALUES (50.0,'porc','jambon','piece');
INSERT INTO transformer VALUES (5.0,'sel','jambon','pot de yahourt');
INSERT INTO transformer VALUEs (50.0,'boeuf','steak hache','piece');
INSERT INTO transformer VALUES (5.0,'sel','steak hache','pot de yahourt');
INSERT INTO transformer VALUES (0.1,'ciboulette','steak hache','gramme');
INSERT INTO transformer VALUES (4.0,'oeuf','oeuf en tranche','piece');
INSERT INTO transformer VALUES (0.1,'miel','oeuf en tranche','pot de yahourt');
INSERT INTO transformer VALUES (10.0,'olive','olive en tranche','gramme');      /*LES LEGUMES*/
INSERT INTO transformer VALUES (1.0,'miel','olive en tranche','cuillere a cafe');
INSERT INTO transformer VALUES (20.0,'cornichon','cornichon en tranche','gramme');
INSERT INTO transformer VALUES (1.0,'eau','cornichon en tranche','litre');
INSERT INTO transformer VALUES (20.0,'tomate','tomate en tranche','gramme');
INSERT INTO transformer VALUES (0.1,'eau','tomate en tranche','litre');
INSERT INTO transformer VALUES (20.0,'mais','puree de mais','pot de yahourt');
INSERT INTO transformer VALUES (40.0,'pomme de terre','puree de mais','pot de yahourt');
INSERT INTO transformer VALUES (30.0,'carotte','carotte en tranche','gramme');
INSERT INTO transformer VALUES (0.1,'eau','carotte en tranche','litre');
INSERT INTO transformer VALUES (20.0,'poivron','poivron en tranche','gramme');
INSERT INTO transformer VALUES (0.1,'eau','poivron en tranche','cuillere a cafe');
INSERT INTO transformer VALUES (20.0,'salade','salade verte','gramme');
INSERT INTO transformer VALUES (1.0,'oignon','salade verte','gramme');
INSERT INTO transformer VALUES (20.0,'pomme de terre','pomme de terre en tranche','gramme');
INSERT INTO transformer VALUES (0.1,'sel','pomme de terre en tranche','cuillere a soupe');
INSERT INTO transformer VALUES (10.0,'noix','puree de noix','gramme');
INSERT INTO transformer VALUES (0.1,'sel','puree de noix','cuillere a cafe');
INSERT INTO transformer VALUES (10.0,'oignon','puree de ail et oignon','gramme');
INSERT INTO transformer VALUES (10.0,'ail','puree de ail et oignon','gramme');
INSERT INTO transformer VALUES (10.0,'lait de vache','emmental','litre');   /*LES FROMAGES*/
INSERT INTO transformer VALUES (0.1,'eau','emmental','litre');
INSERT INTO transformer VALUES (10.0,'lait de vache','mozarella','litre');
INSERT INTO transformer VALUES (10.0,'lait de bufflonne','mozarella','litre');
INSERT INTO transformer VALUES (0.1,'eau','mozarella','litre');
INSERT INTO transformer VALUES (10.0,'lait de vache', 'munster','litre');
INSERT INTO transformer VALUES (0.1,'eau','munster','litre');
INSERT INTO transformer VALUES (50.0,'tomate','barbecue','gramme'); /*LES SAUCES*/
INSERT INTO transformer VALUES (1.0,'miel','barbecue','cuillere a cafe');
INSERT INTO transformer VALUES (2.0,'ail','barbecue','gramme');
INSERT INTO transformer VALUES (2.0,'oignon','barbecue','gramme');
INSERT INTO transformer VALUES (1.0,'olive','barbecue','cuillere a soupe');
INSERT INTO transformer VALUES (0.2,'alcool','barbecue','litre');
INSERT INTO transformer VALUES (3.0,'graine de moutarde','moutarde et miel','gramme');
INSERT INTO transformer VALUES (2.0,'miel','moutarde et miel','cuillere a soupe');
INSERT INTO transformer VALUES (1.0,'eau','moutarde et miel','litre');
INSERT INTO transformer VALUES (5.0,'oignon','oignon doux','gramme');
INSERT INTO transformer VALUES (0.1,'alcool','oignon doux','cuillere a cafe');
INSERT INTO transformer VALUES (0.1,'jus dagrume','oignon doux','cuillere a cafe');
INSERT INTO transformer VALUES (0.1,'sel','oignon doux','cuillere a cafe');
INSERT INTO transformer VALUES (0.5,'lait de vache','brownie','litre');                  /*LES DESSERTS*/ 
INSERT INTO transformer VALUES (20.0,'cacao','brownie','gramme');
INSERT INTO transformer VALUES (2.0,'oeuf','brownie','gramme');
INSERT INTO transformer VALUES (3.0,'sucre','brownie','gramme');
INSERT INTO transformer VALUES (0.5,'lait de vache','cookie chocolat blanc','litre');
INSERT INTO transformer VALUES (5.0,'oeuf','cookie chocolat blanc','gramme');
INSERT INTO transformer VALUES (2.0,'sucre','cookie chocolat blanc','gramme');
INSERT INTO transformer VALUES (6.0,'cacao','cookie chocolat blanc','gramme');
INSERT INTO transformer VALUES (1.0,'sel','cookie chocolat blanc','cuillere a cafe');
INSERT INTO transformer VALUES (0.5,'lait de vache','cookie noix de macadamia','litre');
INSERT INTO transformer VALUES (5.0,'oeuf','cookie noix de macadamia','gramme');
INSERT INTO transformer VALUES (2.0,'sucre','cookie noix de macadamia','gramme');
INSERT INTO transformer VALUES (6.0,'cacao','cookie noix de macadamia','gramme');
INSERT INTO transformer VALUES (1.0,'sel','cookie noix de macadamia','cuillere a cafe');
INSERT INTO transformer VALUES (2.0,'noix','cookie noix de macadamia','gramme');
INSERT INTO transformer VALUES (5.0,'eau','coca-cola','litre');                        /*LES BOISSONS*/
INSERT INTO transformer VALUES (1.0,'acide phosphorique','coca-cola','litre');
INSERT INTO transformer VALUES (0.5,'feuille de cola','coca-cola','gramme');
INSERT INTO transformer VALUES (5.0,'eau','ice tea','litre'); 
INSERT INTO transformer VALUES (0.5,'feuille de the','ice tea','gramme');
INSERT INTO transformer VALUES (5.0,'eau','fanta','litre');
INSERT INTO transformer VALUES (1.0,'acide phosphorique','fanta','litre');
INSERT INTO transformer VALUES (2.0,'jus dagrume','fanta','litre');
INSERT INTO transformer VALUES (20.0,'pomme de terre','chips nature','gramme');  /*LES ENTREES*/
INSERT INTO transformer VALUES (0.5,'sel','chips nature','gramme');
INSERT INTO transformer VALUES (5.0,'ble','tartine de pate de campagne','gramme');
INSERT INTO transformer VALUES (3.0,'porc','tartine de pate de campagne','gramme');

/* COMPOSER 10 */
INSERT INTO composer VALUES (0.1,'sel',' sandwich au thon','gramme');
INSERT INTO composer VALUES (0.1,'poivre','sandwich au thon','gramme');
INSERT INTO composer VALUES (0.2,'ciboulette','sandwich vegetarien','gramme');
INSERT INTO composer VALUES (0.2,'ail','sandwich vegetarien','gramme');
INSERT INTO composer VALUES (0.2,'sel','sandwich au jambon','gramme');

/* CONTENIR 11 */
INSERT INTO contenir VALUES (100.0,'blanc','sandwich thon crudite','gramme'); /*SANDWICH THON*/
INSERT INTO contenir VALUES (25.0,'thon','sandwich thon crudite','gramme');
INSERT INTO contenir VALUES (12.0,'oeuf en tranche','sandwich thon crudite','gramme');
INSERT INTO contenir VALUES (5.0,'salade verte','sandwich thon crudite','gramme');
INSERT INTO contenir VALUES (2.0,'tomate en tranche','sandwich thon crudite','gramme');
INSERT INTO contenir VALUES (1.0,'emmental','sandwich thon crudite','gramme');
INSERT INTO contenir VALUES (1.0,'moutarde et miel','sandwich thon crudite','cuillere a cafe');
INSERT INTO contenir VALUES (100.0,'complet','sandwich vegetarien','gramme'); /*SANDWICH VEGETARIEN*/
INSERT INTO contenir VALUES (25.0,'salade verte','sandwich vegetarien','gramme');
INSERT INTO contenir VALUES (5.0,'olive en tranche','sandwich vegetarien','gramme');
INSERT INTO contenir VALUES (10.0,'tomate en tranche','sandwich vegetarien','gramme');
INSERT INTO contenir VALUES (10.0,'puree de mais','sandwich vegetarien','gramme');
INSERT INTO contenir VALUES (10.0,'poivron en tranche','sandwich vegetarien','gramme');
INSERT INTO contenir VALUES (2.0,'puree de ail et oignon','sandwich vegetarien','gramme');
INSERT INTO contenir VALUES (1.0,'oignon doux','sandwich vegetarien','cuillere a cafe');
INSERT INTO contenir VALUES (100.0,'blanc','sandwich au jambon','gramme'); /*SANDWICH AU JAMBON*/
INSERT INTO contenir VALUES (25.0,'jambon','sandwich au jambon','gramme');
INSERT INTO contenir VALUES (5.0,'cornichon en tranche','sandwich au jambon','gramme');
INSERT INTO contenir VALUES (1.0,'emmental','sandwich au jambon','gramme');
INSERT INTO contenir VALUES (1.0,'moutarde et miel','sandwich au jambon','cuillere a cafe');

/* RECETTE 12 */
INSERT INTO recette VALUES ('sandwich vegetarien','plat','Un plat garanti sans OGM',1,NULL,NULL);
INSERT INTO recette VALUES ('sandwich thon crudite','plat',"Un sandwich classique",2,NULL,NULL);
INSERT INTO recette VALUES ('sandwich au jambon','plat',"Un sandwich simple mais delicieux",3,NULL,NULL);
/*plat,dessert,boisson,entree*/

/* PROVENIR 13 */ 
INSERT INTO provenir VALUES (NULL,1,9,'ble');
INSERT INTO provenir VALUES (NULL,2,9,'avoine');
INSERT INTO provenir VALUES (NULL,3,9,'mais');
INSERT INTO provenir VALUES (NULL,4,9,'porc');
INSERT INTO provenir VALUES (NULL,5,9,'poisson');
INSERT INTO provenir VALUES (NULL,6,9,'poulet');
INSERT INTO provenir VALUES (NULL,7,9,'boeuf');
INSERT INTO provenir VALUES (NULL,8,9,'salade');
INSERT INTO provenir VALUES (NULL,19,9,'salade');
INSERT INTO provenir VALUES (NULL,18,9,'olive');
INSERT INTO provenir VALUES (NULL,17,9,'cornichon');
INSERT INTO provenir VALUES (NULL,6,9,'tomate');
INSERT INTO provenir VALUES (NULL,5,9,'tomate');
INSERT INTO provenir VALUES (NULL,15,9,'oignon');
INSERT INTO provenir VALUES (NULL,14,9,'carotte');
INSERT INTO provenir VALUES (NULL,10,9,'graine de moutarde');
INSERT INTO provenir VALUES (NULL,2,9,'eau');
INSERT INTO provenir VALUES (NULL,20,9,'eau');
INSERT INTO provenir VALUES (NULL,11,9,'acide phosphorique');
INSERT INTO provenir VALUES (NULL,12,9,'feuille de cola');
INSERT INTO provenir VALUES (NULL,13,9,'jus dagrume');
INSERT INTO provenir VALUES (NULL,14,9,'feuille de the');
INSERT INTO provenir VALUES (NULL,4,9,'feuille de the');
INSERT INTO provenir VALUES (NULL,19,9,'lait de vache');
INSERT INTO provenir VALUES (NULL,6,9,'lait de bufflonne');
INSERT INTO provenir VALUES (NULL,1,9,'ail');
INSERT INTO provenir VALUES (NULL,5,9,'ciboulette');
INSERT INTO provenir VALUES (NULL,13,9,'sucre');
INSERT INTO provenir VALUES (NULL,18,9,'noix');
INSERT INTO provenir VALUES (NULL,17,9,'pomme de terre');
INSERT INTO provenir VALUES (NULL,9,9,'oeuf');
INSERT INTO provenir VALUES (NULL,10,9,'cacao');
INSERT INTO provenir VALUES (NULL,12,9,'alcool');
INSERT INTO provenir VALUES (NULL,8,9,'poivron');
INSERT INTO provenir VALUES (NULL,1,9,'sel');
INSERT INTO provenir VALUES (NULL,2,9,'sel');
INSERT INTO provenir VALUES (NULL,7,9,'sel');
INSERT INTO provenir VALUES (NULL,13,9,'sel');
INSERT INTO provenir VALUES (NULL,14,9,'sel');
INSERT INTO provenir VALUES (NULL,9,9,'sel');
INSERT INTO provenir VALUES (NULL,20,9,'sel');
INSERT INTO provenir VALUES (NULL,19,9,'sel');
INSERT INTO provenir VALUES (NULL,15,9,'miel');


/* FABRIQUER 14 */
INSERT INTO fabriquer VALUES (NULL,'blanc',1,1);
INSERT INTO fabriquer VALUES (NULL,'avoine et miel',18,1);
INSERT INTO fabriquer VALUES (NULL,'complet',19,1);
INSERT INTO fabriquer VALUES (NULL,'parmesan et origan',4,1);
INSERT INTO fabriquer VALUES (NULL,'thon',3,2);
INSERT INTO fabriquer VALUES (NULL,'saucisson',2,2);
INSERT INTO fabriquer VALUES (NULL,'jambon',19,2);
INSERT INTO fabriquer VALUES (NULL,'steak hache',16,2);
INSERT INTO fabriquer VALUES (NULL,'oeuf en tranche',14,2);
INSERT INTO fabriquer VALUES (NULL,'olive en tranche',12,3);
INSERT INTO fabriquer VALUES (NULL,'cornichon en tranche',10,3);
INSERT INTO fabriquer VALUES (NULL,'tomate en tranche',9,3);
INSERT INTO fabriquer VALUES (NULL,'puree de mais',17,3);
INSERT INTO fabriquer VALUES (NULL,'carotte en tranche',1,3);
INSERT INTO fabriquer VALUES (NULL,'salade verte',20,3);
INSERT INTO fabriquer VALUES (NULL,'poivron en tranche',3,3);
INSERT INTO fabriquer VALUES (NULL,'pomme de terre en tranche',6,3);
INSERT INTO fabriquer VALUES (NULL,'puree de noix',19,3);
INSERT INTO fabriquer VALUES (NULL,'puree de ail et oignon',8,3);
INSERT INTO fabriquer VALUES (NULL,'emmental',13,4);
INSERT INTO fabriquer VALUES (NULL,'mozarella',6,4);
INSERT INTO fabriquer VALUES (NULL,'munster',5,4);
INSERT INTO fabriquer VALUES (NULL,'barbecue',19,5);
INSERT INTO fabriquer VALUES (NULL,'moutarde et miel',17,5);
INSERT INTO fabriquer VALUES (NULL,'oignon doux',12,5);
INSERT INTO fabriquer VALUES (NULL,'brownie',11,6);
INSERT INTO fabriquer VALUES (NULL,'cookie chocolat blanc',20,6);
INSERT INTO fabriquer VALUES (NULL,'cookie noix de macadamia',20,6);
INSERT INTO fabriquer VALUES (NULL,'coca-cola',7,7);
INSERT INTO fabriquer VALUES (NULL,'ice tea',4,7);
INSERT INTO fabriquer VALUES (NULL,'fanta',8,7);
INSERT INTO fabriquer VALUES (NULL,'chips nature',18,8);
INSERT INTO fabriquer VALUES (NULL,'tartine de pate de campagne',2,8);

/* ELABORER 15 */
INSERT INTO elaborer VALUES ('sandwich vegetarien',1);
INSERT INTO elaborer VALUES ('sandwich vegetarien',2);
INSERT INTO elaborer VALUES ('sandwich vegetarien',3);
INSERT INTO elaborer VALUES ('sandwich vegetarien',4);
INSERT INTO elaborer VALUES ('sandwich vegetarien',5);
INSERT INTO elaborer VALUES ('sandwich vegetarien',6);
INSERT INTO elaborer VALUES ('sandwich thon crudite',1);
INSERT INTO elaborer VALUES ('sandwich thon crudite',2);
INSERT INTO elaborer VALUES ('sandwich thon crudite',3);
INSERT INTO elaborer VALUES ('sandwich thon crudite',4);
INSERT INTO elaborer VALUES ('sandwich thon crudite',5);
INSERT INTO elaborer VALUES ('sandwich thon crudite',6);
INSERT INTO elaborer VALUES ('sandwich au jambon',1);
INSERT INTO elaborer VALUES ('sandwich au jambon',2);
INSERT INTO elaborer VALUES ('sandwich au jambon',3);
INSERT INTO elaborer VALUES ('sandwich au jambon',4);
INSERT INTO elaborer VALUES ('sandwich au jambon',5);
INSERT INTO elaborer VALUES ('sandwich au jambon',6);

/* ADRESSE 16*/
INSERT INTO adresse VALUES ('paris',75001,'place du trocadero et du 11 novembre',3,'france',1);
INSERT INTO adresse VALUES ('lyon',69001,'rue de la poulaillerie',20,'france',2);
INSERT INTO adresse VALUES ('washington',98826,'winton rd',17632,'etats-unis',3);
INSERT INTO adresse VALUES ('londres',NULL,'whitehall',NULL,'angleterre',4);
INSERT INTO adresse VALUES ('berlin',10178,'karl-liebknecht-str.',NULL,'allemagne',5);
INSERT INTO adresse VALUES ('rome',00185,'piazza della repubblica',10,'italie',6);
INSERT INTO adresse VALUES ('madrid',28013,'plaza puerta del sol',11,'espagne',7);
INSERT INTO adresse VALUES ('bruxelles',1000,'rue de leveque',14,'belgique',8);
INSERT INTO adresse VALUES ('tokyo',1600023,'chome nishishinjuku',2,'japon',9);
INSERT INTO adresse VALUES ('pekin',NULL,'jing shi ren min zheng fu',NULL,'chine',10);
INSERT INTO adresse VALUES ('brasilia',17490000,NULL,NULL,'bresil',11);
INSERT INTO adresse VALUES ('moscou',109012,'voskresenskiye vorota',NULL,'russie',12);
INSERT INTO adresse VALUES ('istanbul',34110,'alemdar mh.',NULL,'turquie',13);
INSERT INTO adresse VALUES ('montreal',NULL,'boulevard robert-bourassa',1100,'canada',14);
INSERT INTO adresse VALUES ('mexico',06000,'jose maria pino suarez',29,'mexique',15);
INSERT INTO adresse VALUES ('lisbonne',1150,'campo martires da patria',125,'portugal',16);
INSERT INTO adresse VALUES ('pyongyang',NULL,NULL,NULL,'coree du nord',17);
INSERT INTO adresse VALUES ('seoul',NULL,'myeong-dong',NULL,'coree du sud',18);
INSERT INTO adresse VALUES ('johannesburg',2000,'albertina sisulu rd',107,'afrique du sud',19);
INSERT INTO adresse VALUES ('camberra',2600,'capital hill',NULL,'australie',20);

/* ZONE GEOGRAPHIQUE 17 */
INSERT INTO zone_geographique VALUES ('europe','france',1);
INSERT INTO zone_geographique VALUES ('europe','france',2);
INSERT INTO zone_geographique VALUES ('amerique','etats-unis',3);
INSERT INTO zone_geographique VALUES ('europe','angleterre',4);
INSERT INTO zone_geographique VALUES ('europe','allemagne',5);
INSERT INTO zone_geographique VALUES ('europe','italie',6);
INSERT INTO zone_geographique VALUES ('europe','espagne',7);
INSERT INTO zone_geographique VALUES ('europe','belgique',8);
INSERT INTO zone_geographique VALUES ('asie','japon',9);
INSERT INTO zone_geographique VALUES ('asie','chine',10);
INSERT INTO zone_geographique VALUES ('amerique','bresil',11);
INSERT INTO zone_geographique VALUES ('asie','russie',12);
INSERT INTO zone_geographique VALUES ('asie','turquie',13);
INSERT INTO zone_geographique VALUES ('amerique','canada',14);
INSERT INTO zone_geographique VALUES ('amerique','mexique',15);
INSERT INTO zone_geographique VALUES ('europe','portugal',16);
INSERT INTO zone_geographique VALUES ('asie','coree du nord',17);
INSERT INTO zone_geographique VALUES ('asie','coree du sud',18);
INSERT INTO zone_geographique VALUES ('afrique','afrique du sud',19);
INSERT INTO zone_geographique VALUES ('oceanie','australie',20);

/* UTILISATRICE 18 */
INSERT INTO utilisatrice VALUES ('matthieu','cherrier',"1998-09-03",0,'matthieu@mail.fr',"2000-01-21",2);
INSERT INTO utilisatrice VALUES ('yohan','michelland',NULL,0,'yohan@mail.com',"1849-12-14",1);

