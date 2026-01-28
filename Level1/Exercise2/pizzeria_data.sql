CREATE DATABASE  IF NOT EXISTS `pizzeria_management` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `pizzeria_management`;
-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: pizzeria_management
-- ------------------------------------------------------
-- Server version	8.0.44

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'Barcelona',1),(2,'L\'Hospitalet de Llobregat',1),(3,'Badalona',1),(4,'Terrassa',1),(5,'Sabadell',1),(6,'Mataró',1),(7,'Girona',2),(8,'Figueres',2),(9,'Salt',2),(10,'Palafrugell',2),(11,'Roses',2),(12,'Tarragona',3),(13,'Reus',3),(14,'Lleida',4),(15,'Almacelles',4),(16,'Alpicat',4),(17,'Tàrrega',4),(18,'Balaguer',4),(19,'Barcelona',1),(20,'L\'Hospitalet de Llobregat',1),(21,'Badalona',1),(22,'Terrassa',1),(23,'Sabadell',1),(24,'Mataró',1),(25,'Girona',2),(26,'Figueres',2),(27,'Salt',2),(28,'Palafrugell',2),(29,'Roses',2),(30,'Tarragona',3),(31,'Reus',3),(32,'Lleida',4),(33,'Almacelles',4),(34,'Alpicat',4),(35,'Tàrrega',4),(36,'Balaguer',4);
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Carles','Garcia Pérez','Carrer Aragó 123','08015',1,'612345678'),(2,'Anna','Martínez López','Avinguda Diagonal 456','08017',1,'623456789'),(3,'Marc','Rodríguez Fernández','Carrer Gran Via 789','08013',1,'634567890'),(4,'Laura','Sánchez González','Plaça Catalunya 12','08002',1,'645678901'),(5,'Jordi','Pérez Ruiz','Carrer de la Força 34','17004',7,'656789012'),(6,'Marta','Gómez Díaz','Passeig Marítim 56','43004',11,'667890123'),(7,'Roger','Hernández Muñoz','Carrer Major 78','25007',14,'678901234'),(8,'Elena','Jiménez Álvarez','Rambla Catalunya 90','08008',1,'689012345'),(9,'Sergi','Moreno Romero','Carrer Balmes 111','08007',1,'690123456'),(10,'Cristina','Torres Navarro','Carrer Muntaner 222','08021',1,'601234567');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Joan','Martínez García','12345678A','666111222','cook',1),(2,'Maria','López Sánchez','87654321B','666222333','cook',1),(3,'Pere','González Ruiz','11223344C','666333444','delivery',1),(4,'Anna','Fernández Díaz','44332211D','666444555','delivery',1),(5,'Marc','Puig Soler','55667788E','666555666','cook',2),(6,'Laura','Torrent Serra','99887766F','666666777','delivery',2),(7,'David','Vila Mont','22334455G','666777888','cook',3),(8,'Carla','Roca Pujol','66778899H','666888999','delivery',3),(9,'Sergi','Navarro Bosch','33445566I','666999000','cook',4),(10,'Elena','Molina Ferrer','77889900J','667000111','delivery',4);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` (`order_item_id`, `order_id`, `product_id`, `quantity`, `unit_price`) VALUES (1,1,1,1,9.99),(2,1,7,2,8.99),(3,1,10,1,2.50),(4,2,3,1,12.99),(5,2,6,1,11.49),(6,2,11,3,3.00),(7,3,2,1,11.99),(8,3,10,2,2.50),(9,3,13,1,3.50),(10,4,4,1,10.99),(11,4,12,2,1.50),(12,4,9,1,8.49),(13,5,5,1,13.49),(14,5,10,1,2.50),(15,6,1,2,9.99),(16,6,2,1,11.99),(17,6,11,3,3.00),(18,7,3,2,12.99),(19,7,10,2,2.50),(20,8,6,2,11.49),(21,8,12,1,1.50),(22,8,13,1,3.50);
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2026-01-10 19:30:00','delivery',28.97,1,1,NULL,3,'2026-01-10 20:15:00',1),(2,'2026-01-10 20:15:00','pickup',35.47,2,1,NULL,NULL,'2026-01-10 20:45:00',2),(3,'2026-01-11 13:45:00','delivery',22.48,5,2,NULL,6,'2026-01-11 14:30:00',5),(4,'2026-01-11 21:00:00','delivery',18.49,6,3,NULL,8,'2026-01-11 21:40:00',7),(5,'2026-01-12 12:30:00','pickup',15.99,7,4,NULL,NULL,'2026-01-12 13:00:00',9),(6,'2026-01-12 20:45:00','delivery',42.96,3,1,NULL,4,'2026-01-12 21:30:00',1),(7,'2026-01-13 19:15:00','delivery',38.47,8,1,NULL,3,'2026-01-13 20:00:00',2),(8,'2026-01-14 14:20:00','delivery',26.98,5,2,NULL,6,'2026-01-14 15:05:00',5);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `pizza_categories` WRITE;
/*!40000 ALTER TABLE `pizza_categories` DISABLE KEYS */;
INSERT INTO `pizza_categories` VALUES (1,'Classic','2026-01-28 19:23:07'),(2,'Premium','2026-01-28 19:23:07'),(3,'Vegetarian','2026-01-28 19:23:07'),(4,'Spicy','2026-01-28 19:23:07'),(5,'Seasonal','2026-01-28 19:23:07');
/*!40000 ALTER TABLE `pizza_categories` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'pizza','Margherita','Tomato sauce, mozzarella, fresh basil',9.99,'margherita.jpg',1),(2,'pizza','Pepperoni','Tomato sauce, mozzarella, pepperoni',11.99,'pepperoni.jpg',1),(3,'pizza','4 Cheeses','Mozzarella, gorgonzola, parmesan, goat cheese',12.99,'4cheeses.jpg',2),(4,'pizza','Vegetarian','Tomato sauce, mozzarella, mushrooms, peppers, onions',10.99,'vegetarian.jpg',3),(5,'pizza','Diavola','Spicy tomato sauce, mozzarella, spicy salami, chili',13.49,'diavola.jpg',4),(6,'pizza','Hawaiian','Tomato sauce, mozzarella, ham, pineapple',11.49,'hawaiian.jpg',1),(7,'burger','Classic Burger','Beef, lettuce, tomato, onion, special sauce',8.99,'classic_burger.jpg',NULL),(8,'burger','Cheese Burger','Beef, cheddar, lettuce, tomato, pickles',9.99,'cheese_burger.jpg',NULL),(9,'burger','Chicken Burger','Grilled chicken, lettuce, mayo, tomato',8.49,'chicken_burger.jpg',NULL),(10,'drink','Coca-Cola 33cl','Regular Coca-Cola can',2.50,'cocacola.jpg',NULL),(11,'drink','Beer 33cl','Estrella Damm beer',3.00,'beer.jpg',NULL),(12,'drink','Water 50cl','Still mineral water',1.50,'water.jpg',NULL),(13,'drink','Orange Juice','Fresh orange juice 25cl',3.50,'juice.jpg',NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `provinces` WRITE;
/*!40000 ALTER TABLE `provinces` DISABLE KEYS */;
INSERT INTO `provinces` VALUES (1,'Barcelona'),(2,'Girona'),(3,'Tarragona'),(4,'Lleida');
/*!40000 ALTER TABLE `provinces` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `stores` WRITE;
/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
INSERT INTO `stores` VALUES (1,'Rambla Catalunya 123','08008',1,'Pizza Barcelona Centre'),(2,'Carrer de la Força 25','17004',7,'Pizza Girona Historic'),(3,'Passeig Marítim 45','43004',11,'Pizza Tarragona Beach'),(4,'Carrer Major 67','25007',14,'Pizza Lleida Central');
/*!40000 ALTER TABLE `stores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-28 20:29:12
