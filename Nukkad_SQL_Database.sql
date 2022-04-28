-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: nukkad
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `CustomerID` bigint NOT NULL,
  `Customer_Name` text,
  `Customer_Mail` text,
  `Customer_Num` bigint DEFAULT NULL,
  `Customer_Pass` text,
  `Customer_address` text,
  `Customer_Pincode` bigint DEFAULT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (101,'Violet','mstephenson@fernandez.com',9929563213,'adrian','835 Frank Tunnel\nWrightmouth, MI 82180-9605',302000),(102,'DarkGreen','hduke@hotmail.com',9918085544,'alexander','4547 Archer Common\nDiazchester, CA 06566-8576',302014),(103,'Bisque','pallen@yahoo.com',9145932154,'destiny','24645 Valerie Unions Suite 582\nCobbborough, DC 99414-7564',302019),(104,'SaddleBrown','riverarebecca@gmail.com',7727151079,'christian','1414 David Throughway\nPort Jason, OH 22070-1220',302010),(105,'MediumAquaMarine','mstephens@davidson-herman.com',9796785636,'121212','14023 Rodriguez Passage\nPort Jacobville, PR 37242-1057',302019),(106,'FloralWhite','alvareznancy@lucas.biz',9297820316,'sayang','645 Martha Park Apt. 611\nJeffreychester, MN 67218-7250',302005),(107,'DarkSlateBlue','katherine20@yahoo.com',9858106929,'america','68388 Reyes Lights Suite 692\nJosephbury, WV 92213-0247',302011),(108,'Aqua','awatkins@yahoo.com',7168965615,'dancer','Unit 6538 Box 8980\nDPO AP 09026-4941',302057),(109,'Salmon','vchurch@walter-martinez.com',7854877761,'monica','860 Lee Key\nWest Debra, SD 97450-0495',302024),(110,'Brown','bonnie69@lin.biz',9765978659,'richard','PSC 2734, Box 5255\nAPO AA 98456-7482',302050),(111,'Tomato','andrew06@peterson.com',8761905577,'112233','26104 Alexander Groves\nAlexandriaport, WY 28244-9149',302038),(112,'Tomato','ryanwerner@freeman.biz',9988672672,'princess1','Unit 2413 Box 0347\nDPO AA 07580-2652',302011),(113,'RoyalBlue','knelson@gmail.com',9436635031,'555555','6705 Miller Orchard Suite 186\nLake Shanestad, MO 75696-5051',302055),(114,'Bisque','wrightpeter@yahoo.com',7547842824,'diamond','05302 Dunlap Ferry\nNew Stephaniehaven, MP 42268',302021),(115,'DarkBlue','taylormason@gmail.com',7912699833,'carolina','7773 Powell Springs Suite 190\nSamanthaland, ND 44358',302028),(116,'Peru','jstark@anderson.com',9594433036,'steven','49558 Ramirez Road Suite 399\nPhillipstad, OH 35641-3238',302045),(117,'PowderBlue','wjennings@gmail.com',8199712751,'rangers','6362 Wilson Mountain\nJohnsonfurt, GA 15169',302037),(118,'OliveDrab','rebecca45@hale-bauer.biz',9463994339,'louise','8982 Burton Row\nWilsonton, PW 88606',302045),(119,'Cyan','alejandro75@hotmail.com',7354765967,'orange','64475 Andre Club Apt. 795\nPort Dannytown, PW 63227',302008),(120,'LightSeaGreen','samuel46@love-west.net',8247604511,'789456','544 Alexander Heights Suite 768\nNorth Johnview, MT 57912',302043),(121,'PeachPuff','megan33@gmail.com',9000077319,'999999','84426 Julia Vista\nNorth Teresa, KY 50756',302008),(122,'Black','agolden@yahoo.com',9000074219,'shorty','PSC 2490, Box 2120\nAPO AE 15445-2876',302055),(123,'Olive','vstafford@hotmail.com',9000082511,'11111','PSC 5723, Box 8159\nAPO AA 74738',302018),(124,'Silver','denise22@hernandez-townsend.com',9000097782,'nathan','USNS Cardenas\nFPO AA 85439-9449',302018),(125,'Wheat','youngbarbara@yahoo.com',9000086098,'snoopy','019 Elliott Tunnel Suite 190\nNicholsbury, WV 60804-4440',302013),(126,'Teal','william25@mcconnell.com',9000079646,'gabriel','9495 Mary Fall Apt. 777\nGlassport, ND 17957-5596',302014),(127,'Linen','ijones@schaefer-carr.net',9000099642,'hunter','657 Judith Crossroad\nHancockchester, VI 75658-5788',302001),(128,'MediumSlateBlue','heatherhall@yahoo.com',9000071551,'cherry','8522 Regina Port Suite 782\nPort Kaitlin, TX 50501-7264',302049),(129,'LemonChiffon','tinasmith@martinez.info',9000084678,'killer','40000 Ann Port Suite 474\nYoungberg, MS 03651',302020),(130,'DarkOrchid','chasejennifer@hotmail.com',9000088216,'sandra','9507 Robert Prairie Apt. 601\nEast Crystalview, SC 56814',302002),(131,'SeaGreen','jenniferbarnett@gmail.com',9000097292,'alejandro','0772 Michael Isle Suite 617\nMeyerstown, WA 45449-6768',302001),(132,'SteelBlue','jared39@hotmail.com',9000087303,'buster','739 David Isle Suite 818\nChandlertown, DC 34587',302042),(133,'DarkMagenta','briancarlson@page-fleming.com',9000090186,'george','USCGC Gill\nFPO AA 26496',302020),(134,'DarkGoldenRod','joshuaodom@gmail.com',9000084120,'brittany','5277 Patel Brook\nEast Audrey, NJ 19075',302013),(135,'DarkSeaGreen','vickie90@lee-wilson.com',9000091096,'alejandra','9135 Rodriguez Dam\nRamirezberg, MS 77223',302059),(136,'Gainsboro','duane56@hotmail.com',9000074114,'patricia','24373 Mcgee Drive Apt. 990\nNew Mariahaven, NH 14470',302003),(137,'HotPink','enash@gmail.com',9000083768,'rachel','997 Campbell Flat Suite 970\nEast Amanda, PW 22048',302027),(138,'LightSeaGreen','sandraharrison@bailey-gordon.net',9000079895,'tequiero','7835 Rogers Roads\nEast Amberhaven, MI 70835-2286',302019),(139,'HoneyDew','cunninghamwilliam@hotmail.com',9000090798,'7777777','4589 Dan Fords\nBeasleyburgh, ME 96590-8272',302028),(140,'WhiteSmoke','teresaallen@hill-leach.info',9000084814,'cheese','1958 Robert Bridge Apt. 250\nMalloryland, ID 03393-5336',302057),(141,'GhostWhite','rhonda96@little.org',9000099588,'159753','2977 Perez Row\nLake Jack, TN 45336-9436',302031),(142,'DarkSlateBlue','lisacabrera@yahoo.com',9000072857,'arsenal','9801 Thomas Pike Suite 058\nBrandishire, AK 88122-1314',302017),(143,'Chocolate','jasonrichardson@elliott.com',9000086404,'dolphin','18372 Matthew Fork Suite 705\nNorth Matthewmouth, KY 99737',302050),(144,'HoneyDew','hoovernicole@dorsey.net',9000080906,'antonio','69403 Hernandez Knolls\nMarciashire, DE 36417-5667',302039),(145,'Snow','christopher20@gmail.com',9000095338,'heather','USNV Fuller\nFPO AE 32122-5711',302051),(146,'BurlyWood','brianwilson@yahoo.com',9000082111,'david','448 Stewart Divide\nNew Ashleyfort, FM 84050',302002),(147,'Moccasin','gonzaleskatie@gmail.com',9000074428,'ginger','70129 Darrell Spring\nThomasmouth, HI 39319-2739',302008),(148,'BlueViolet','lsmith@chung.com',9000071782,'stephanie','412 Jackson River\nKleinburgh, KS 52039-7404',302054),(149,'MediumBlue','dongarcia@hotmail.com',9000097126,'peanut','546 Benjamin Lights Suite 421\nRomerofurt, NC 43746-4501',302048),(150,'GreenYellow','kimberly46@garcia-nelson.biz',9000094746,'blink182','4066 Gonzalez Dam Apt. 277\nWest Jessica, TN 36880',302023),(151,'SandyBrown','william82@gmail.com',9000078654,'sweetie','11143 Park Squares\nSamanthatown, UT 97073',302049),(152,'MediumVioletRed','brenda82@maldonado-gonzalez.net',9000086363,'222222','645 Elizabeth Pass\nWilliamview, MS 51544',302046),(153,'DarkBlue','josephgould@west.info',9000090024,'beauty','861 Annette Stream Suite 771\nNorth Miguel, CA 33824-1610',302042),(154,'SandyBrown','wbrady@yahoo.com',9000091274,'987654','044 Riggs Expressway\nLake Stevenchester, AL 22283',302019),(155,'DarkOliveGreen','smithtracey@mcgee.com',9000079945,'victoria','PSC 4508, Box 7961\nAPO AA 55271-2375',302011),(156,'GreenYellow','amberchase@fowler.info',9000093936,'honey','1867 Gregory Isle Suite 022\nPort Tammy, LA 52305-9696',302043),(157,'DarkSalmon','gregoryholmes@hotmail.com',9000091266,'0','2891 Martin Plain Suite 197\nMelaniestad, NE 65650-8529',302018),(158,'DarkSeaGreen','jeffreydawson@gmail.com',9000098395,'fernando','9944 Trevor Expressway\nRobinsonstad, OR 34630-1840',302039),(159,'DeepPink','rjohns@gmail.com',9000090482,'pokemon','264 Derek Dam Apt. 680\nWest Danielle, SD 91517-8611',302000),(160,'Olive','john85@martin-morgan.com',9000092761,'maggie','USNV Reese\nFPO AA 73568-0730',302021),(161,'SkyBlue','vcoleman@yahoo.com',9000081437,'corazon','7761 Hughes Curve Apt. 880\nRodriguezberg, MN 96206-5317',302022),(162,'Magenta','floresarthur@yahoo.com',9000079467,'chicken','12612 Johnson Skyway Suite 764\nJessicaville, CT 14968-6590',302015),(163,'DarkTurquoise','ryan36@gmail.com',9000072332,'pepper','5379 Rhonda Prairie Apt. 696\nBrownland, WA 87027',302030),(164,'Silver','chris67@ryan.biz',9000093719,'cristina','716 Bush Greens Apt. 098\nTrevorton, MA 17817-8000',302009),(165,'SpringGreen','katie25@gmail.com',9000088091,'rainbow','6861 Lopez Fork Apt. 114\nSouth Jamiechester, DE 63993',302053),(166,'OliveDrab','kyang@diaz.org',9000085925,'kisses','223 Love Trail Suite 831\nPort Jeffrey, IN 46849',302027),(167,'Aqua','tadams@contreras.info',9000095787,'manuel','049 Matthew Terrace\nLake Matthew, MS 20210',302058),(168,'OrangeRed','craigcastro@burgess.com',9000094893,'myspace','65407 Warner Forges Suite 071\nNew Lori, AZ 30132-2395',302059),(169,'LimeGreen','ellen24@anthony.com',9000078699,'rebelde','PSC 3408, Box 3353\nAPO AE 05113-1257',302028),(170,'SkyBlue','davisrobert@hicks-smith.com',9000086059,'angel1','95967 Pitts Burgs\nWest Sarah, MH 27817-5147',302030),(171,'LightGreen','walkerlaura@peterson-yates.com',9000095237,'ricardo','89154 Jones Stream Suite 311\nEast Katie, NC 72742-1516',302018),(172,'SandyBrown','marc54@hotmail.com',9000080754,'babygurl','Unit 6174 Box 1949\nDPO AP 27478',302008),(173,'Teal','gregoryrussell@yahoo.com',9000085515,'heaven','55436 Devon Plain\nWest Kendraberg, HI 18826-3623',302002),(174,'LightYellow','williamsjohnny@ferguson.info',9000074895,'55555','51920 Kent Junctions Apt. 352\nWalkerport, NY 11257-6647',302000),(175,'MintCream','haydenrebecca@gmail.com',9000083042,'baseball','10022 Wilson Orchard Suite 107\nHarrisstad, MH 99272',302002),(176,'DimGray','langmatthew@hotmail.com',9000085009,'martin','606 Perez Drives\nMaryside, CO 94387-5877',302007),(177,'Indigo','david43@richards.com',9000077692,'greenday','967 Andrew Spurs\nMathistown, CO 28230',302056),(178,'LightSalmon','paulkemp@yahoo.com',9000078886,'november','PSC 9698, Box 5466\nAPO AE 75496-3580',302003),(179,'GreenYellow','fbryant@gmail.com',9000096988,'alyssa','284 Jennifer Curve\nLake Hollyberg, IN 05228',302004),(180,'DeepSkyBlue','kimberlyfrederick@gmail.com',9000097653,'madison','71299 Jessica Shoals\nEast Mark, IA 48085-1070',302059),(181,'DarkGreen','sharon82@saunders.info',9000098999,'mother','873 Clay Flats Apt. 810\nLake Kyle, GU 48782',302038),(182,'LimeGreen','fishermichael@ramos.com',9000077388,'123321','565 Duarte Keys Suite 293\nTraceytown, IN 17797',302052),(183,'DarkGoldenRod','ilawson@hotmail.com',9000073800,'123abc','19018 Christopher Neck Apt. 963\nMcintoshchester, IA 66908-2456',302010),(184,'Turquoise','shafferdaniel@murphy-harris.info',9000078711,'mahalkita','USCGC Thomas\nFPO AP 43708-2468',302020),(185,'LightGreen','stevenanderson@yahoo.com',9000084348,'batman','5401 Holt Corner Apt. 195\nHannahstad, NC 86693-3595',302010),(186,'LightSteelBlue','richard16@boyer-pratt.com',9000089852,'september','4568 Jeffrey Lane Apt. 512\nSouth Jason, WV 78116-0966',302043),(187,'Cornsilk','hyoung@jones.info',9000098104,'december','73469 Baker Forest Apt. 550\nAllenbury, TX 63791',302018),(188,'LemonChiffon','erik46@hotmail.com',9000091084,'morgan','20711 Martin Harbors Apt. 582\nNew Justinborough, AK 40834-2664',302046),(189,'DarkKhaki','rojasmichael@wagner-thomas.com',9000073198,'mariposa','7602 Scott Plaza Apt. 158\nLake Amberland, VI 10516-3276',302011),(190,'FireBrick','lance88@briggs.com',9000083663,'maria','16001 Wilkins Island Suite 852\nJonathanfort, AL 88541-7817',302015),(191,'LightSeaGreen','anthony09@hotmail.com',9000096156,'gabriela','5118 Madden Views Apt. 738\nNorth Barryport, AS 28731-2270',302053),(192,'SlateGray','audreyjohnson@rosales.com',9000076769,'iloveyou2','USCGC Nicholson\nFPO AE 43987-0470',302036),(193,'Crimson','beth76@yahoo.com',9000087433,'bailey','4522 Paul Heights Suite 851\nAdamsland, RI 08981',302005),(194,'MidnightBlue','larrywest@davis.com',9000085338,'jeremy','21918 Gail Glens\nBarbershire, SD 45790-8387',302035),(195,'DarkGoldenRod','raylopez@hotmail.com',9000092987,'pamela','3600 Amber Plains Suite 002\nNorth Jamesburgh, VA 07917',302023),(196,'DarkCyan','middletonrenee@gmail.com',9000099513,'kimberly','71757 David Freeway Apt. 851\nWest Carriefurt, NC 27106-3364',302021),(197,'SteelBlue','grichardson@ryan.info',9000097810,'gemini','79139 Boone Common\nStewartstad, DE 63633-1812',302036),(198,'OldLace','esmith@gmail.com',9000097042,'shannon','USS Johnson\nFPO AE 35617-5384',302036),(199,'MediumBlue','michael53@munoz.com',9000079287,'pictures','USNS Mitchell\nFPO AP 92946',302030),(200,'Gray','jacqueline46@mcdonald-smith.biz',9000099444,'assbvhhole','3794 Michael Forest Apt. 750\nNew Stephenberg, MD ',302012);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `SellerID` bigint DEFAULT NULL,
  `ProductID` bigint DEFAULT NULL,
  `Product_Name` text,
  `Product_Categrory` text,
  `Product_Rate` bigint DEFAULT NULL,
  `Product_Qty` bigint DEFAULT NULL,
  `Product_Ratings` double DEFAULT NULL,
  KEY `SellerID` (`SellerID`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`SellerID`) REFERENCES `sellers` (`SellerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (123,12301,'Wheat Flour','Grocery & Home Essentials',350,24,3.3),(123,12302,'Water Bottle','Grocery & Home Essentials',40,0,0),(123,12303,'Spices','Grocery & Home Essentials',50,18,5),(123,12304,'Sugar','Grocery & Home Essentials',100,26,4),(123,12305,'Tea Leaves','Grocery & Home Essentials',400,26,3.3),(123,12306,'Onion','Grocery & Home Essentials',30,8,4),(129,12901,'Dal','Grocery & Home Essentials',100,29,3),(129,12902,'Dry Fruits','Grocery & Home Essentials',800,17,1),(129,12903,'Corriander','Grocery & Home Essentials',180,20,2),(129,12904,'Brown Nut','Grocery & Home Essentials',150,2,4),(129,12905,'Turmeric','Grocery & Home Essentials',200,10,5),(129,12906,'Salt','Grocery & Home Essentials',40,8,2),(129,12907,'Red Chilli Powder','Grocery & Home Essentials',280,3,2),(134,13401,'Pepper','Grocery & Home Essentials',800,33,4),(134,13402,'Jeera','Grocery & Home Essentials',220,14,0),(134,13403,'Funnel Seeds','Grocery & Home Essentials',250,11,3),(134,13404,'Rajma','Grocery & Home Essentials',170,2,3),(134,13405,'Cinnamon','Grocery & Home Essentials',200,10,5),(134,13406,'Rice','Grocery & Home Essentials',100,39,0),(134,13407,'Soup','Grocery & Home Essentials',200,0,2),(134,13408,'Corn','Grocery & Home Essentials',50,13,2),(167,16701,'HP Laptop','Electronics & Accessories',50000,11,5),(167,16702,'Dell Laptop','Electronics & Accessories',60000,16,0),(167,16703,'iPhone','Electronics & Accessories',150000,30,2),(167,16704,'Samsung Mobile','Electronics & Accessories',80000,3,5),(167,16705,'Redmi Mobile','Electronics & Accessories',10000,17,2),(167,16706,'Sony TV','Electronics & Accessories',200000,23,0),(167,16707,'Mi TV','Electronics & Accessories',80000,2,4),(167,16708,'TCL TV','Electronics & Accessories',160000,18,0),(167,16709,'Aiwa TV','Electronics & Accessories',50000,2,3),(188,18801,'Sony Camera','Electronics & Accessories',80000,17,2),(188,18802,'Nikon Camera','Electronics & Accessories',90000,5,1),(188,18803,'Canon Camera','Electronics & Accessories',120000,12,4),(188,18804,'Batteries','Electronics & Accessories',100,26,1),(188,18805,'Charger','Electronics & Accessories',200,1,2),(188,18806,'Power Bank','Electronics & Accessories',800,5,3),(188,18807,'Stylus','Electronics & Accessories',4000,11,3),(188,18808,'Webcam','Electronics & Accessories',3000,0,5),(196,19601,'Router','Electronics & Accessories',3000,23,4),(196,19602,'Smart Pencil','Electronics & Accessories',15000,0,3),(196,19603,'Notebook','Electronics & Accessories',9000,20,4),(196,19604,'MacBook','Electronics & Accessories',140000,39,2),(196,19605,'Refigerator','Electronics & Accessories',15000,11,5),(196,19606,'Mixer','Electronics & Accessories',1500,35,3),(196,19607,'Heater','Electronics & Accessories',600,39,0),(196,19608,'Air Purifier','Electronics & Accessories',5000,33,0),(196,19609,'Water Purifier','Electronics & Accessories',8000,40,0),(196,19610,'Grinder','Electronics & Accessories',900,17,5),(196,19611,'Smart Lock','Electronics & Accessories',8000,1,2),(245,24501,'Facewash','Skin Care & Beauty',150,29,1),(245,24502,'Moisturizer','Skin Care & Beauty',260,39,1),(245,24503,'Shampoo','Skin Care & Beauty',370,19,1),(245,24504,'Conditioner','Skin Care & Beauty',350,1,2),(245,24505,'Hair Oil','Skin Care & Beauty',245,28,4),(266,26601,'Body Oil','Skin Care & Beauty',250,34,1),(266,26602,'Cream','Skin Care & Beauty',320,24,2),(266,26603,'Hair Color','Skin Care & Beauty',100,36,2),(266,26604,'Menstrual Pads','Skin Care & Beauty',400,14,5),(266,26605,'Lipstick','Skin Care & Beauty',500,5,3),(343,34301,'Foundation','Skin Care & Beauty',450,30,4),(343,34302,'Kajal','Skin Care & Beauty',230,37,3),(343,34303,'Compact','Skin Care & Beauty',340,35,3),(343,34304,'Primer','Skin Care & Beauty',600,36,3),(343,34305,'Nail Polish','Skin Care & Beauty',120,30,3),(343,34306,'Lip Balm','Skin Care & Beauty',100,11,2),(512,51201,'Raymond Blazer','Fashion',5500,34,5),(512,51202,'Arvind Blazer','Fashion',4000,25,3),(512,51203,'Raymond Shirt','Fashion',6000,14,3),(512,51204,'Arvind Shirt','Fashion',3000,16,0),(512,51205,'Cadini Shirt','Fashion',4000,5,2),(512,51206,'Cadini Blazer','Fashion',3500,11,5),(555,55501,'Ghaghra','Fashion',700,20,0),(555,55502,'Choli','Fashion',2500,2,0),(555,55503,'Suit','Fashion',3000,23,0),(555,55504,'Saree','Fashion',5000,39,3),(555,55505,'Skirt','Fashion',300,7,0),(555,55506,'Jeans','Fashion',2500,5,3),(555,55507,'Socks','Fashion',400,15,1),(582,58201,'Belt','Fashion',2000,22,5),(582,58202,'Shoes','Fashion',10000,4,5),(582,58203,'Slippers','Fashion',500,29,2),(582,58204,'Sandals','Fashion',1500,25,2),(582,58205,'Bow tie','Fashion',500,23,2),(582,58206,'Neck tie','Fashion',600,17,1),(582,58207,'Vest','Fashion',100,30,3),(597,59701,'Pen','Stationary',20,35,3),(597,59702,'Eraser','Stationary',5,2,5),(597,59703,'Sharpner','Stationary',5,11,4),(597,59704,'Pencil','Stationary',5,37,1),(597,59705,'Notebook','Stationary',70,39,1),(597,59706,'Diary','Stationary',80,32,3),(601,60101,'Books','Stationary',200,3,1),(601,60102,'Charts','Stationary',20,38,1),(601,60103,'Board Pins','Stationary',5,29,5),(601,60104,'Staple Pins','Stationary',5,24,2),(601,60105,'Stapler','Stationary',80,21,2),(601,60106,'Folder','Stationary',100,4,2),(601,60107,'Black Board','Stationary',1000,26,4),(601,60108,'Drawing Board','Stationary',200,28,2),(624,62401,'Paints','Stationary',50,32,5),(624,62402,'Sticky Notes','Stationary',90,22,5),(624,62403,'Notepad','Stationary',80,14,3),(624,62404,'Markers','Stationary',25,18,2),(624,62405,'White Board','Stationary',2000,25,3),(655,65501,'Basketball','Sports',700,6,4),(655,65502,'Football','Sports',800,28,5),(655,65503,'Gaurds','Sports',900,9,0),(655,65504,'Half Jersey','Sports',900,16,3),(655,65505,'Full Jersey','Sports',1600,23,0),(666,66601,'Basket ','Sports',800,15,3),(666,66602,'Cones','Sports',1000,6,4),(666,66603,'Racquet','Sports',2000,15,5),(666,66604,'Tennis Ball','Sports',50,17,4),(666,66605,'Bat ','Sports',4000,30,2),(724,72401,'Bed','Home & Office Furnishing',10000,21,4),(724,72402,'Table','Home & Office Furnishing',5000,22,5),(724,72403,'Chair','Home & Office Furnishing',2000,28,5),(724,72404,'Dining Set','Home & Office Furnishing',15000,39,3),(724,72405,'Cupboard','Home & Office Furnishing',7000,26,0),(888,88801,'Study Table','Home & Office Furnishing',5000,8,2),(888,88802,'Racks','Home & Office Furnishing',2000,28,4),(888,88803,'Lights','Home & Office Furnishing',700,18,1),(888,88804,'Shelves','Home & Office Furnishing',900,39,5),(999,99901,'Hooks','Home & Office Furnishing',500,16,5),(999,99902,'Rice Lights','Home & Office Furnishing',100,15,3),(999,99903,'Door','Home & Office Furnishing',1000,25,0);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `SalesID` int DEFAULT NULL,
  `CustomerID` int DEFAULT NULL,
  `ProductID` int DEFAULT NULL,
  `Salesdate` date DEFAULT NULL,
  `Product_Qty` int DEFAULT NULL,
  `Product_Rate` int DEFAULT NULL,
  `Product_Name` varchar(20) DEFAULT NULL,
  `Product_Cost` int DEFAULT NULL,
  `SellerID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (11212901,112,12901,'2020-11-25',3,100,'Dal',300,129),(11099903,110,99903,'2020-11-25',5,1000,'Door',5000,129),(10113406,101,13406,'2020-11-26',1,100,'Rice',100,134);
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sellers`
--

DROP TABLE IF EXISTS `sellers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sellers` (
  `SellerID` bigint NOT NULL,
  `Seller_Name` text,
  `Seller_Mail` text,
  `Seller_Num` bigint DEFAULT NULL,
  `Seller_Pass` text,
  `Seller_Address` text,
  `Seller_Pincode` bigint DEFAULT NULL,
  PRIMARY KEY (`SellerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sellers`
--

LOCK TABLES `sellers` WRITE;
/*!40000 ALTER TABLE `sellers` DISABLE KEYS */;
INSERT INTO `sellers` VALUES (123,'Ramprakash Stores','ramprakash@gmail.com',8172121880,'rampk1234','b17, gangotri marg, nehru road. Jaipur',302019),(129,'Ganesh Kirana Store','ganeshiji@yahoo.in',9126570545,'ganpan@123','2, b road sector 9, jaipur',302020),(134,'ABC Departmental Store','abciji@yahoo.in',9586951511,'ab$csd','hostel mohalla, ward 5, jaipur',302021),(167,'Ganpati Electronics','ganpati@goutlook.com',7593178165,'aani1267','chanderi villas, gadh ke peechhe, balaji nagar, jaipur',302022),(188,'Maya Cicuitry','maya@gmail.com',8668698137,'ma23ya','456/78, pratap nagar, jaipur',302023),(196,'Light \'em Up Shop','lightiji@yahoo.in',9292402630,'lish9888','12/44A, gangotri marg, nehru road, jaipur',302024),(245,'Care4Skin Store','care@gmail.com',8962438682,'caref3','chiriliyon ki gali, haldi road, jaipur',302025),(266,'Sumitra Store','sumitra@gmail.com',7649591576,'su23yasd','35A, manyawas, ajmer bypass, jaipur',302026),(343,'Sanwariya Care Products','sanwariyaiji@yahoo.in',8622541993,'lish988ac8','sanwariya house, kale mandir ke saamne, suwana, jaipur',302027),(512,'Mukesh Suits and Boots','mukeshiji@yahoo.in',9691205033,'mukesh00','in front of hotel rishi, main kukas road, jaipur',302028),(555,'Namami Tailors','namami@gmail.com',8858188607,'na23ya','g m towers, near metro pillar 45, sodala, jaipur',302029),(582,'Rukmani Emporim','rukmani@gmail.com',9628794603,'ru23yasdc','shop no 67, shopppers chowk, babu mohalla, jaipur',302030),(597,'Birla Stationers','birla@outlook.com',7825603160,'bewi23ya','rajat path, shipra nagar, mansarovar jaipur',302031),(601,'Kalyan Books Depot','kalyaniji@yahoo.in',9759187133,'kal77aan','c9, 3rd floor,galgoriya mahal, saovar lake, jaipur',302032),(624,'Jyoti World of Stationary','jyotiiji@yahoo.in',8383699602,'jyoti88','hathini narg, ganag marriage garden, hardana, jaipur',302039),(655,'PJB Sports Equipments','pjbiji@yahoo.in',8278384072,'pjb@sports','67/23A, johari bazaar, city palace, jaipur',302034),(666,'Khel Kood Sports Shop','kheliji@yahoo.in',9220365237,'khel!!99','arihant sports complex, hanari kile kek peechhe, haldi ghati gate, jaipur',302035),(724,'Kasani Carpentry','kasani@gmail.com',7221041239,'ka23yae3','wood world, pink square, malviya nagar, jaipur',302036),(888,'Homes and More Store','homesiji@yahoo.in',8302887110,'home!!23','Shop number 456, behind dena bank, chirauligarh, jaipur',302037),(999,'Beauty Furniture Shop','beautyiji@yahoo.in',9703092785,'b_uaty','toakoria basti, in front of dorema public school, kalwar road, jaipur',302038);
/*!40000 ALTER TABLE `sellers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-01 13:29:25
