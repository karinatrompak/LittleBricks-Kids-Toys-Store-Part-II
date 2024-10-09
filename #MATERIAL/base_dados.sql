-- --------------------------------------------------------
-- Anfitrião:                    127.0.0.1
-- Versão do servidor:           10.4.24-MariaDB - mariadb.org binary distribution
-- SO do servidor:               Win64
-- HeidiSQL Versão:              12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- A despejar estrutura da base de dados para store
DROP DATABASE IF EXISTS `store`;
CREATE DATABASE IF NOT EXISTS `store` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `store`;

-- A despejar estrutura para tabela store.admins
DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id_admin` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) DEFAULT NULL,
  `senha` varchar(200) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- A despejar dados para tabela store.admins: ~1 rows (aproximadamente)
INSERT INTO `admins` (`id_admin`, `usuario`, `senha`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'admin@admin.com', '$2y$10$42F4N3qtRPz.HESv9u4qr.yMJgvoUVYM7cl6AiX2Q3PZXh/Jq2rdm', '2022-06-09 01:31:56', '2022-06-09 01:31:56', NULL);

-- A despejar estrutura para tabela store.clientes
DROP TABLE IF EXISTS `clientes`;
CREATE TABLE IF NOT EXISTS `clientes` (
  `id_cliente` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(50) DEFAULT NULL,
  `senha` varchar(250) DEFAULT NULL,
  `nome_completo` varchar(250) DEFAULT NULL,
  `morada` varchar(250) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `telefone` varchar(50) DEFAULT NULL,
  `purl` varchar(50) DEFAULT NULL,
  `ativo` tinyint(4) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `delete_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- A despejar dados para tabela store.clientes: ~1 rows (aproximadamente)
INSERT INTO `clientes` (`id_cliente`, `email`, `senha`, `nome_completo`, `morada`, `cidade`, `telefone`, `purl`, `ativo`, `created_at`, `updated_at`, `delete_at`) VALUES
	(1, 'davidgomes1247985@gmail.com', '$2y$10$WQnCC6YHOgDa3/jCWdvB2OIHmcerXXIf3Aoz2yxGqz1dxMS3mjQM6', 'David Gomes', 'Edifício BeiraBloco lote 47 2ºesq, Cruz. Alcaria', 'Alcaria', '', NULL, 1, '2022-06-09 19:41:28', '2022-06-09 19:41:37', NULL);

-- A despejar estrutura para tabela store.encomendas
DROP TABLE IF EXISTS `encomendas`;
CREATE TABLE IF NOT EXISTS `encomendas` (
  `id_encomenda` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cliente` int(10) unsigned DEFAULT NULL,
  `data_encomenda` datetime DEFAULT NULL,
  `morada` varchar(200) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telefone` varchar(10) DEFAULT NULL,
  `codigo_encomenda` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `mensagem` varchar(1000) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id_encomenda`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- A despejar dados para tabela store.encomendas: ~1 rows (aproximadamente)
INSERT INTO `encomendas` (`id_encomenda`, `id_cliente`, `data_encomenda`, `morada`, `cidade`, `email`, `telefone`, `codigo_encomenda`, `status`, `mensagem`, `created_at`, `updated_at`) VALUES
	(1, 2, '2022-06-09 00:03:25', 'Edifício BeiraBloco lote 47 2ºesq, Cruz. Alcaria', 'Alcaria', 'davidgomes1247985@gmail.com', '1234', 'IN247338', 'EM PROCESSAMENTO', '', '2022-06-09 00:03:25', '2022-06-09 00:32:23');

-- A despejar estrutura para tabela store.encomenda_produto
DROP TABLE IF EXISTS `encomenda_produto`;
CREATE TABLE IF NOT EXISTS `encomenda_produto` (
  `id_encomenda_produto` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_encomenda` int(10) unsigned DEFAULT NULL,
  `designacao_produto` varchar(200) DEFAULT NULL,
  `preco_unidade` decimal(6,2) unsigned DEFAULT NULL,
  `quantidade` int(10) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id_encomenda_produto`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- A despejar dados para tabela store.encomenda_produto: ~1 rows (aproximadamente)
INSERT INTO `encomenda_produto` (`id_encomenda_produto`, `id_encomenda`, `designacao_produto`, `preco_unidade`, `quantidade`, `created_at`) VALUES
	(1, 1, 'BMW E46', 6000.00, 1, '2022-06-09 00:03:25');

-- A despejar estrutura para tabela store.produtos
DROP TABLE IF EXISTS `produtos`;
CREATE TABLE IF NOT EXISTS `produtos` (
  `id_produto` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `categoria` varchar(50) DEFAULT NULL,
  `nome_produto` varchar(50) DEFAULT NULL,
  `descricao` varchar(200) DEFAULT NULL,
  `imagem` varchar(200) DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `visivel` tinyint(4) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id_produto`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- A despejar dados para tabela store.produtos: ~10 rows (aproximadamente)
INSERT INTO `produtos` (`id_produto`, `categoria`, `nome_produto`, `descricao`, `imagem`, `preco`, `stock`, `visivel`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'ligeiro', 'Golf V', 'Carro de 2006 com 300 mil km. Em bom estado.', 'golf.jpg', 6000.00, 1, 1, '2022-06-06 22:49:15', '2022-06-06 22:49:17', '2022-06-06 22:49:17'),
	(2, 'ligeiro', 'BMW E46', 'Carro em excelente estado, boa mecânica.', 'bmw.jpg', 6000.00, 1, 1, '2022-06-06 22:50:18', '2022-06-06 22:50:19', '2022-06-06 22:50:19'),
	(3, 'ligeiro', 'Corsa B', 'Com alguns riscos nos parachoques mas em bom estado. Carro de 1999.', 'corsa.jpg', 2000.00, 1, 1, '2022-06-06 22:51:19', '2022-06-06 22:51:19', '2022-06-06 22:51:19'),
	(4, 'ligeiro', 'Mustang', 'Carro literalmente novo. Com todos os extras.', 'carro.jpg', 20000.00, 1, 1, '2022-06-06 22:52:07', '2022-06-06 22:52:07', '2022-06-06 22:52:07'),
	(5, 'ligeiro', 'Renault Megane', 'Com algum uso e desgaste, conta com 350 mil km.', 'megane.jpg', 4000.00, 0, 1, '2022-06-06 22:53:19', '2022-06-06 22:53:19', '2022-06-06 22:53:19'),
	(6, 'ligeiro', 'Renault Clio 3', 'Conta com algum desgaste em termos de estética.', 'clio3.jpg', 2500.00, 1, 1, '2022-06-06 22:54:14', '2022-06-06 22:54:14', '2022-06-06 22:54:14'),
	(7, 'ligeiro', 'Polo', 'Carro novo, conta com 100 mil km.', 'polo.jpg', 5000.00, 1, 1, '2022-06-06 22:55:04', '2022-06-06 22:55:05', '2022-06-06 22:55:05'),
	(8, 'pesado', 'Mercedes', 'Camião com 600 mil km. Está em perfeito estado.', 'pesado1.jpg', 40000.00, 1, 1, '2022-06-06 22:57:25', '2022-06-06 22:57:26', '2022-06-06 22:57:26'),
	(9, 'pesado', 'Carrinha', 'Carrinha em todo o terreno.', 'pesado2.jpg', 30000.00, 1, 1, '2022-06-06 22:58:50', '2022-06-06 22:58:50', '2022-06-06 22:58:50'),
	(10, 'ligeiro', 'Passat', 'Carro em bom estado. Conta com 200 mil km.', 'passat.jpg', 20000.00, 1, 1, '2022-06-06 22:59:47', '2022-06-06 22:59:47', '2022-06-06 22:59:47');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
testtesttestlogindinheiro