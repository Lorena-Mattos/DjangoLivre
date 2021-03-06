CREATE DATABASE  IF NOT EXISTS `djangolivre` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `djangolivre`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: djangolivre
-- ------------------------------------------------------
-- Server version	8.0.27

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

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` int NOT NULL AUTO_INCREMENT,
  `street` varchar(50) DEFAULT NULL,
  `building_number` varchar(5) DEFAULT NULL,
  `address_complement` varchar(100) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  `zip_code` varchar(20) NOT NULL,
  `city` varchar(30) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  `country` varchar(30) DEFAULT 'Brazil',
  `client_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `client_id` (`client_id`),
  CONSTRAINT `address_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'Pátio Bruno Ferreira','576','Ao lado do Bar do Chico','Providencia','93824219','Teixeira Grande','MA','Brasil',1),(2,'Campo Melo','28','Casa dos fundos','Maria Helena','59387784','Vieira','AC','Brasil',2),(3,'Passarela Almeida','475',NULL,'Vila Olhos D\'água','13933287','Cardoso','MT','Brasil',3),(4,'Residencial de Cavalcanti','58',NULL,'Vila Nossa Senhora Do Rosário','85839894','Carvalho de Nogueira','MT','Brasil',4),(5,'Feira de Gonçalves','33','Em frente a Escola Flores de Verão','Andiroba','7112-018','Souza Paulista','PE','Brasil',5),(6,'Favela Peixoto','847',NULL,'Vila Ecológica','1591-953','Aragão','SC','Brasil',6),(7,'Condomínio Mariane das Neves','62',NULL,'Novo Glória','12309891','Costa','RS','Brasil',7),(8,'Trevo Costa','61',NULL,'Vila De Sá','09032173','Aragão','PI','Brasil',8),(9,'Vale Eduardo Ferreira','4','Ao lado da Padaria DuPão','Biquinhas','56208-709','Novaes','DF','Brasil',9),(10,'Morro Nicole Ribeiro','123',NULL,'Vila Suzana Primeira Seção','25841972','Ribeiro','RO','Brasil',10),(11,'Travessa Daniela Lima','56',NULL,'Conjunto Califórnia I','71508423','Moraes de Gomes','RO','Brasil',11),(12,'Trecho Luana Costela','76','Ao lado da Churrascaria Boizão','Palmares','09352337','Peixoto do Norte','MG','Brasil',12),(13,'Travessa de Peixoto','3',NULL,'Parque São José','42787890','Sales','MT','Brasil',13),(14,'Quadra Caio Peixoto','28',NULL,'Anchieta','06650300',' Mota','AM','Brasil',14),(15,'Via de da Paz','34','Casa B','Caiçara','61047-142','Correia Grande','GO','Brasil',15),(16,'Área Barbosa','94',NULL,'Lagoa','90977-658','Rocha','MG','Brasil',16),(17,'Lago de Alves','52',NULL,'Lorena','51590-042','Gonçalves','MS','Brasil',17),(18,'Sítio Francisco Gonçalves','8','Condomio Santa Rita','Vila Ouro Minas','04281465','Peixoto do Campo','AM','Brasil',18),(19,'Recanto de Ribeiro','25',NULL,'Ribeiro De Abreu','76045229','Carvalho de Minas','SE','Brasil',19),(20,'Estrada das Neves','7','Rua atrás da Avenida São Retorno','Aeroporto','68847793','Cardoso da Praia','ES','Brasil',20),(21,'Trecho Sophie da Cunha','63',NULL,'Canaã','08731764','Barbosa','SE','Brasil',21),(22,'Vale da Conceição','4','Bloco-D, Condomio das Mangueiras','Pilar','58219-729','Pereira do Galho','PR','Brasil',22),(23,'Largo de Sales','93',NULL,'Vera Cruz','05550824','Nascimento','RJ','Brasil',23),(24,'Recanto Cauê Cardoso','401','Casa de esquina antes da rotatoria','Cenaculo','40752275','Souza do Galho','AL','Brasil',24),(25,'Chácara de Silveira','416',NULL,'Jardim Dos Comerciarios','76993-002','Santos Verde','GO','Brasil',25),(26,'Campo Catarina Ferreira','76',NULL,'Xangri-Lá','02234-500','Peixoto de da Conceição','PR','Brasil',26),(27,'Chácara de da Costa','16',NULL,'Vila Aeroporto','67017-200','Martins','AM','Brasil',27),(28,'Sítio de Monteiro','86',NULL,'Camponesa 1ª Seção','97951942','Gonçalves do Campo','PE','Brasil',28),(29,'Área Novaes','45',NULL,'Petropolis','10074-089','Dias','AP','Brasil',29),(30,'Rodovia de Souza','58',NULL,'Canaã','69611611','Costa do Sul','SE','Brasil',30),(31,'Praça Maria Luiza Peixoto','8',NULL,'Sion','41511-505','Luz do Sul','TO','Brasil',31),(32,'Núcleo Cardoso','123',NULL,'Dom Joaquim','04509322','Correia de Rocha','MS','Brasil',32),(33,'Jardim de Costela','4','Em frente a Imobiliaria Personal','Marieta 1ª Seção','74485-291','Teixeira','RJ','Brasil',33),(34,'Esplanada Vitor Gabriel da Conceição','63',NULL,'Santa Terezinha','32456029','Novaes','AP','Brasil',34),(35,'Campo de Costela','94',NULL,'Nova Floresta','96451375','Nascimento','PA','Brasil',35),(36,'Pátio Martins','28',NULL,'Jardim Guanabara','12141-892','Nunes de da Mata','SP','Brasil',36),(37,'Praça João Felipe Farias','95',NULL,'Comiteco','71734-079','Almeida de  Rosa','MA','Brasil',37),(38,'Vereda Jesus','792',NULL,'Vila Nossa Senhora Do Rosário','17386-401','Barbosa do Sul','GO','Brasil',38),(39,'Rua Isadora Novaes','51','Perto do Shopping Sul','Maria Helena','39101-448','Costa do Galho','ES','Brasil',39),(40,'Campo Peixoto','94',NULL,'Chácara Leonina','81686447','Cunha da Serra','AM','Brasil',40),(41,'Condomínio de Nascimento','89',NULL,'Batistinha','57637-785','Caldeira de Pires','MA','Brasil',41),(42,'Residencial Barros','630',NULL,'Pongelupe','08116-050','Almeida','GO','Brasil',42),(43,'Vila de Gonçalves','52',NULL,'Custodinha','67562566','Porto','RR','Brasil',43),(44,'Rua Lopes','33',NULL,'Paraíso','66763-373','Nogueira','AL','Brasil',44),(45,'Vereda Cardoso','15',NULL,'Vila Piratininga','39491845','Ramos do Norte','RS','Brasil',45),(46,'Rua de Vieira','89',NULL,'Santa Cecilia','73540-002','Almeida da Mata','RS','Brasil',46),(47,'Conjunto Campos','73',NULL,'Saudade','73591915','Teixeira dos Dourados','MT','Brasil',47),(48,'Alameda Eloah Barbosa','25',NULL,'Embaúbas','33444-864','Monteiro de Duarte','AL','Brasil',48),(49,'Sítio Alves','87',NULL,'Bairro Das Indústrias Ii','77711-131','Oliveira','DF','Brasil',49),(50,'Vale Davi Lucas Pereira','360',NULL,'Graça','32455-618','Viana do Oeste','RR','Brasil',50);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank_account`
--

DROP TABLE IF EXISTS `bank_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bank_account` (
  `id` int NOT NULL AUTO_INCREMENT,
  `agency` varchar(10) NOT NULL DEFAULT '0001',
  `account_number` varchar(7) NOT NULL,
  `account_type` enum('001','013') DEFAULT NULL,
  `balance` float DEFAULT NULL,
  `client_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `number_account` (`account_number`),
  UNIQUE KEY `account_number` (`account_number`),
  KEY `client_id` (`client_id`),
  CONSTRAINT `bank_account_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_account`
--

LOCK TABLES `bank_account` WRITE;
/*!40000 ALTER TABLE `bank_account` DISABLE KEYS */;
INSERT INTO `bank_account` VALUES (1,'0001','90177-8','001',102.5,1),(2,'0001','31182-8','001',2346,2),(3,'0001','73069-8','013',234,3),(4,'0001','59251-8','013',18,4),(5,'0001','11499-8','001',55,5),(6,'0001','19523-8','001',34,6),(7,'0001','98026-8','013',12345,7),(8,'0001','61619-8','013',23,8),(9,'0001','69481-8','001',245,9),(10,'0001','54187-8','013',6678,10),(11,'0001','84682-8','001',4231,11),(12,'0001','40694-8','013',234,12),(13,'0001','72654-8','013',667,13),(14,'0001','32255-8','013',346,14),(15,'0001','82586-8','013',864,15),(16,'0001','09270-8','001',13456,16),(17,'0001','12738-8','001',2455,17),(18,'0001','13231-8','001',346,18),(19,'0001','47504-8','001',2346,19),(20,'0001','39574-8','001',811,20),(21,'0001','23350-8','013',9000,21),(22,'0001','67469-8','001',712,22),(23,'0001','08796-8','001',5677,23),(24,'0001','41934-8','001',3452,24),(25,'0001','12472-8','001',1345,25),(26,'0001','24157-8','001',777,26),(27,'0001','89121-8','013',99,27),(28,'0001','86308-8','013',996,28),(29,'0001','64570-8','013',123,29),(30,'0001','60859-8','001',2435,30),(31,'0001','51097-8','013',4684,31),(32,'0001','61865-8','013',3578,32),(33,'0001','21922-8','013',1,33),(34,'0001','11355-8','001',345,34),(35,'0001','35552-8','001',345,35),(36,'0001','77321-8','001',2456,36),(37,'0001','66858-8','001',2345,37),(38,'0001','56847-8','013',2346,38),(39,'0001','84230-8','013',234,39),(40,'0001','91525-8','013',245,40),(41,'0001','84941-8','001',235,41),(42,'0001','91173-8','001',2435,42),(43,'0001','44746-8','001',2434,43),(44,'0001','51130-8','001',257,44),(45,'0001','68322-8','001',74,45),(46,'0001','65007-8','001',779,46),(47,'0001','05078-8','013',470,47),(48,'0001','95947-8','001',9978,48),(49,'0001','98200-8','001',66,49),(50,'0001','31624-8','013',774,50);
/*!40000 ALTER TABLE `bank_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `id` int NOT NULL AUTO_INCREMENT,
  `given_name` varchar(50) NOT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `cpf` varchar(14) NOT NULL,
  `birth_date` date DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `nationality` varchar(20) DEFAULT 'Brazil',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'Vitor','Peixoto','56072067655','1970-03-16','vitorpeixoto@gmail.com','+5548976475938','Brasil'),(2,'Guilherme','Gomes','30293687963','1999-06-08','guilhermegomes@gmail.com','+5519948924115','Brasil'),(3,'Brenda','Castro','49542915974','1968-02-01','brendacastro@gmail.com','+5565993877840','Brasil'),(4,'Gabriela','Alves','99665674049','1981-06-15','gabrielaalves@gmail.com','+5569975351399','Brasil'),(5,'Leonardo','Duarte','42457819895','1976-12-24','leonardoduarte@gmail.com','+5587911587148','Brasil'),(6,'Nathan','Costa','56933642562','1993-04-06','nathancosta@gmail.com','+5558939894719','Brasil'),(7,'Vitor','Lopes','45420521206','1982-12-02','vitorlopes@gmail.com','+5534923209471','Brasil'),(8,'Davi','Costela','83557952292','1959-07-12','davicostela@gmail.com','+5501986848339','Brasil'),(9,'Ana Beatriz','Freitas','70114190354','1998-12-09','anabeatrizfreitas@gmail.com','+5575915917953','Brasil'),(10,'Luigi','Aragão','52212908655','1946-09-02','luigiaragao@gmail.com','+5513952560123','Brasil'),(11,'Bryan','Teixeira','44764895704','1962-09-23','bryanteixeira@gmail.com','+5510913991615','Brasil'),(12,'Enzo','Azevedo','90324424605','1950-08-26','enzoazevedo@gmail.com','+5503921730086','Brasil'),(13,'Lavínia','Castro','45071503555','1970-07-21','laviniacastro@gmail.com','+5513914562087','Brasil'),(14,'Bruno','Castro','42168463938','2000-02-28','brunocastro@gmail.com','+5534957923022','Brasil'),(15,'Rodrigo','Souza','71207453911','1991-07-03','rodrigosouza@gmail.com','+5519972076984','Brasil'),(16,'Maitê','Moraes','97165100296','1983-04-21','maitemoraes@gmail.com','+5542980715084','Brasil'),(17,'Gabriel','Duarte','59541375012','1952-03-11','gabrielduarte@gmail.com','+5559945992466','Brasil'),(18,'Maitê','Cardoso','40095737426','1948-10-07','maitecardoso@gmail.com','+5593952337696','Brasil'),(19,'Bernardo','Nunes','65630939534','1948-10-07','bernardonunes@gmail.com','+5560927142787','Brasil'),(20,'Helena','Almeida','68127650472','1977-07-24','helenaalmeida@gmail.com','+5575947063812','Brasil'),(21,'Antônio','Nunes','84954193906','1972-03-22','antônionunes@gmail.com','+5550930089131','Brasil'),(22,'Lara','Paz','87738557887','1970-01-03','laradapaz@gmail.com','+5542917610471','Brasil'),(23,'Luiz Gustavo','Cunha','60253595249','1952-03-11','luizgustavocunha@gmail.com','+5551924000348','Brasil'),(24,'Pedro Lucas ','Moreira','34263736745','1944-10-27','pedrolucasmoreira@gmail.com','+5509977658236','Brasil'),(25,'Joana','Gonçalves','47087369164','1984-03-18','joanagonçalves@gmail.com','+5522945551590','Brasil'),(26,'Bruno ','Fogaça','79459863250','1957-04-03','brunofogaça@gmail.com','+5529945682417','Brasil'),(27,'Nicole','Duarte','67632354904','1957-04-03','nicoleduarte@gmail.com','+5542981465461','Brasil'),(28,'Eduardo','Rocha','81722671264','1945-01-16','eduardorocha@gmail.com','+5555917176045','Brasil'),(29,'Nina','Costa','52802443461','1954-10-19','ninadacosta@gmail.com','+5596911133060','Brasil'),(30,'Eduardo','Novaes','38056948671','1975-11-15','eduardonovaes@gmail.com','+5584977936153','Brasil'),(31,'Luiz Henrique','Cunha','64674361630','1946-02-09','luizhenriquedacunha@gmail.com','+5535911087317','Brasil'),(32,'Agatha','Fernandes','36485279144','1963-07-21','agathafernandes@gmail.com','+5503992137658','Brasil'),(33,'Heitor','Cavalcanti','74235449271','1947-06-02','heitorcavalcanti@gmail.com','+5572996687577','Brasil'),(34,'Luana','da Paz','34465106807','1941-10-12','luanadapaz@gmail.com','+5593905550824','Brasil'),(35,'Kamilly','da Costa','87674594832','1964-07-18','kamillydacosta@gmail.com','+5594971180132','Brasil'),(36,'Bruno','Jesus','74717524318','1952-11-08','brunojesus@gmail.com','+5575922758688','Brasil'),(37,'Bernardo','Carvalho','40475104988','1944-01-29','bernardocarvalho@gmail.com','+5591963489676','Brasil'),(38,'Lara','Dias','31939929754','1955-12-24','laradias@gmail.com','+5502948945174','Brasil'),(39,'Otávio','Oliveira','33988016631','1986-11-27','otaviooliveira@gmail.com','+5560922345007','Brasil'),(40,'Amanda','da Conceição','85771560174','1944-12-02','amandadaconceiçao@gmail.com','+5591925609767','Brasil'),(41,'Caio','Castro','40991410177','1959-01-15','caiocastro@gmail.com','+5520909925185','Brasil'),(42,'João Pedro','Nogueira','56644644567','1993-07-01','joaopedronogueira@gmail.com','+5510997951942','Brasil'),(43,'Yago','Gonçalves','92704752077','1968-04-29','yagogonçalves@gmail.com','+5583906753751','Brasil'),(44,'Bryan','Barbosa','30671606078','1961-11-07','bryanbarbosa@gmail.com','+5540989933188','Brasil'),(45,'Ana Beatriz','Santos','73838532865','1977-04-16','anabeatrizsantos@gmail.com','+5512969611611','Brasil'),(46,'Amanda','Costa','47716370597','1979-12-04','amandadacosta@gmail.com','+5576960754151','Brasil'),(47,'Felipe','Moraes','69635549042','1976-08-17','felipemoraes@gmail.com','+5555920351923','Brasil'),(48,'Alexandre','Rocha','50615441084','1942-11-29','alexandredarocha@gmail.com','+5504950932271','Brasil'),(49,'Bárbara','Monteiro','86166610828','1976-09-27','barbaramonteiro@gmail.com','+5520935574485','Brasil'),(50,'João Lucas ','Cardoso','93924560021','1980-10-14','joaolucascardoso@gmail.com','+5589942622358','Brasil');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `transaction_type` enum('PIX','TED','DOC') DEFAULT NULL,
  `recipient_id` int DEFAULT NULL,
  `sender_id` int DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `id_conta_recebedor` (`recipient_id`),
  KEY `id_conta_pagador` (`sender_id`),
  CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`recipient_id`) REFERENCES `client` (`id`),
  CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`sender_id`) REFERENCES `client` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-02 21:39:56
