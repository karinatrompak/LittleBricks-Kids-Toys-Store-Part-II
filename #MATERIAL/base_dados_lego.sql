-- --------------------------------------------------------
-- Anfitrião:                    127.0.0.1
-- Versão do servidor:           10.4.32-MariaDB - mariadb.org binary distribution
-- SO do servidor:               Win64
-- HeidiSQL Versão:              12.6.0.6765
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
CREATE DATABASE IF NOT EXISTS `store` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- A despejar dados para tabela store.admins: ~0 rows (aproximadamente)
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- A despejar dados para tabela store.clientes: ~2 rows (aproximadamente)
INSERT INTO `clientes` (`id_cliente`, `email`, `senha`, `nome_completo`, `morada`, `cidade`, `telefone`, `purl`, `ativo`, `created_at`, `updated_at`, `delete_at`) VALUES
	(1, 'davidgomes1247985@gmail.com', '$2y$10$WQnCC6YHOgDa3/jCWdvB2OIHmcerXXIf3Aoz2yxGqz1dxMS3mjQM6', 'David Gomes', 'Edifício BeiraBloco lote 47 2ºesq, Cruz. Alcaria', 'Alcaria', '', NULL, 1, '2022-06-09 19:41:28', '2022-06-09 19:41:37', NULL),
	(2, 'davidgomes2003@hotmail.com', '$2y$10$Vr64.LvTRtNj43.AOd1M/OozbgqiP3P6PgTFw.IXEwCor9wMCmDiW', 'David Miguel Pereira Gomes', 'Edifício BeiraBloco lote 47 2ºesq, Cruz. Alcaria', 'Alcaria', '964554836', NULL, 1, '2023-12-05 10:04:19', '2023-12-05 10:04:35', NULL);

-- A despejar estrutura para tabela store.contactos
DROP TABLE IF EXISTS `contactos`;
CREATE TABLE IF NOT EXISTS `contactos` (
  `id_cliente` int(10) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) DEFAULT NULL,
  `nome_completo` varchar(50) DEFAULT NULL,
  `mensagem` varchar(250) DEFAULT NULL,
  `purl` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- A despejar dados para tabela store.contactos: ~3 rows (aproximadamente)
INSERT INTO `contactos` (`id_cliente`, `email`, `nome_completo`, `mensagem`, `purl`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'davidgomes2003@hotmail.com', 'David Miguel Pereira Gomes', '123', '9rEP4MSScaYh', '2023-12-07 20:22:17', '2023-12-07 20:22:17', NULL),
	(2, 'davidgomes2003@hotmail.com', 'David Miguel Gomes', 'Ola, estou ok!', 'JzRDtYq5Cl1x', '2023-12-07 20:24:08', '2023-12-07 20:24:08', NULL),
	(3, 'davidgomes2003@hotmail.com', 'David Miguel Gomes', 'Ola, estou ok!', 'Kebr69rNFDL3', '2023-12-07 20:27:09', '2023-12-07 20:27:09', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- A despejar dados para tabela store.encomendas: ~0 rows (aproximadamente)
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- A despejar dados para tabela store.encomenda_produto: ~0 rows (aproximadamente)
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- A despejar dados para tabela store.produtos: ~26 rows (aproximadamente)
INSERT INTO `produtos` (`id_produto`, `categoria`, `nome_produto`, `descricao`, `imagem`, `preco`, `stock`, `visivel`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'Harry Potter', 'Harry, Hermione, Ron e Hagrid', 'Recriações LEGO® BrickHeadz™ de 4 das personagens mais famosas dos filmes de Harry Potter™: Harry Potter, Hermione Granger™, Ron Weasley™ e Rubeus Hagrid.', 'Fig7.png', 24.99, 1, 1, '2022-06-06 22:49:15', '2022-06-06 22:49:17', '2022-06-06 22:49:17'),
	(2, 'Arquitetura', 'Taj Mahal', 'Construa a expressão máxima do amor na arquitetura com este encantador modelo do Taj Mahal. Saboreie a experiência de construção rica enquanto recria a cripta em que Mumtaz e Shah Jahan terão juntos o', 'Fig1.png', 119.99, 1, 1, '2022-06-06 22:50:18', '2022-06-06 22:50:19', '2022-06-06 22:50:19'),
	(3, 'Arquitetura', 'Londres', 'Celebra a diversidade arquitetónica de Londres com este pormenorizado modelo de peças LEGO®. A coleção LEGO Architecture Skyline oferece modelos adequados para exibir em casa e no escritório e foi des', 'Fig2.png', 39.99, 1, 1, '2022-06-06 22:51:19', '2022-06-06 22:51:19', '2022-06-06 22:51:19'),
	(4, 'Icons', 'Lego Titanic', 'Preste homenagem ao navio mais famoso da história, enquanto constrói uma réplica LEGO® do RMS Titanic. Este set LEGO que deixa qualquer boquiaberto oferece muitas horas de construção de atenção plena ', 'Fig3.png', 679.99, 1, 1, '2022-06-06 22:52:07', '2022-06-06 22:52:07', '2022-06-06 22:52:07'),
	(5, 'Icons', 'Buquê de Flores', 'Surpreenda um amigo ou alguém de quem goste com um lindo buquê de flores fora do comum. Este Buquê de Flores LEGO® é composto por flores bonitas com uma diversidade de cores surpreendentes – todas fei', 'Fig4.png', 59.99, 1, 1, '2022-06-06 22:53:19', '2022-06-06 22:53:19', '2022-06-06 22:53:19'),
	(6, 'Icons', 'Real Madrid - Estádio Santiago Bernabéu', 'O rugido da multidão. A alegria de um golo. Enorme satisfação quando os seus heróis metem um golo. Celebre todos os pontos altos de um dia de jogo com este kit de modelo para adultos LEGO® Estádio do ', 'Fig5.png', 399.99, 0, 1, '2022-06-06 22:54:14', '2022-06-06 22:54:14', '2022-06-06 22:54:14'),
	(7, 'Icons', 'Ghostbusters™ ECTO-1', 'Prepare-se e equipe-se com a sua arma de protões desta versão de peças LEGO® do veículo icónico Ghostbusters™ ECTO-1. Quer seja um apaixonado pelos Ghostbusters ou pelas peças LEGO, ou quer esteja ape', 'Fig6.png', 239.99, 1, 1, '2022-06-06 22:55:04', '2022-06-06 22:55:05', '2022-06-06 22:55:05'),
	(8, 'Harry Potter', 'Castelo de Hogwarts', 'Bem-vindo ao icónico LEGO® Harry Potter™ 71043 Castelo de Hogwarts™! Constrói e exibe este modelo pormenorizado LEGO® em microescala, com mais de 6000 peças. Descobre o design complexo das câmaras, to', 'Fig8.png', 469.99, 1, 1, '2022-06-06 22:57:25', '2022-06-06 22:57:26', '2022-06-06 22:57:26'),
	(9, 'Harry Potter', 'Hogwarts Express™ - Edição para Colecionadores', 'Capture a magia das histórias do Harry Potter™ com uma réplica à escala 1:32 do veículo mais icónico do Mundo Feiticeiro. O LEGO® Harry Potter™ Hogwarts Express™ - Edição para Colecionadores (76405) é', 'Fig9.png', 499.99, 1, 1, '2022-06-06 22:58:50', '2022-06-06 22:58:50', '2022-06-06 22:58:50'),
	(10, 'Speed Champions', 'Velocidade Furiosa Nissan Skyline GT-R (R34)', 'Este modelo réplica do LEGO® Speed Champions Nissan Skyline GT-R (R34) (76917) foi inspirado no icónico carro do filme Velocidade Furiosa. As crianças a partir dos 9 anos, os amantes de carros e os fã', 'Fig10.png', 24.99, 1, 1, '2022-06-06 22:59:47', '2022-06-06 22:59:47', '2022-06-06 22:59:47'),
	(11, 'Speed Champions', 'Fast & Furious 1970 Dodge Charger R/T', 'Este modelo réplica colecionável do LEGO® Speed Champions Fast & Furious 1970 Dodge Charger R/T (76912) capta o aspeto do icónico carro musculado. Perfeito para crianças com mais de 8 anos, entusiasta', 'Fig11.png', 24.99, 1, 1, '2023-12-05 11:22:50', '2023-12-05 11:22:52', '2023-12-05 11:22:54'),
	(12, 'Speed Champions', 'Lamborghini Countach', 'Prepara-te para experimentar o lendário Lamborghini Countach – o icónico super carro desportivo dos anos setenta venerado pelos fãs de todo o mundo pelo seu fascinante design e performance de primeira', 'Fig12.png', 24.99, 0, 1, '2023-12-05 11:23:31', '2023-12-05 11:23:31', '2023-12-05 11:23:34'),
	(13, 'Star Wars', 'Millennium Falcon', 'Bem-vindo ao modelo LEGO® Star Wars maior e mais pormenorizado alguma vez criado—com efeito, com 7.500 peças é um dos maiores modelos LEGO de sempre! Esta incrível interpretação LEGO do inesquecível c', 'Fig13.png', 849.99, 1, 1, '2023-12-05 11:27:03', '2023-12-05 11:27:05', '2023-12-05 11:27:06'),
	(14, 'Star Wars', 'Venator-Class Republic Attack Cruiser', 'Reviva as memórias de aventuras épicas da Guerra dos Clones com esta versão LEGO® Star Wars™ Série Ultimate Collector do Venator-Class Republic Attack Cruiser (75367). Deixe que a sua mente se transpo', 'Fig14.png', 649.99, 1, 1, '2023-12-05 11:27:52', '2023-12-05 11:27:53', '2023-12-05 11:27:54'),
	(15, 'Star Wars', 'Capacete de Darth Vader', 'Icónico colecionável Star Wars™;Suscite memórias de cenas clássicas de Star Wars™ e melhore a decoração de qualquer divisão com esta peça central da cultura pop.;Impressionante modelo de exposição;Est', 'Fig15.png', 79.99, 1, 1, '2023-12-05 11:30:06', '2023-12-05 11:30:07', '2023-12-05 11:30:08'),
	(16, 'Technic', 'Guindaste de Lagartas Liebherr LR 13000', 'É grande. É poderoso. É o seu próximo desafio de construção. Este modelo LEGO® Technic Guindaste de Lagartas Liebherr LR 13000 (42146) para adultos tem cerca de 99 cm de altura e é um dos maiores mode', 'Fig16.png', 679.99, 1, 1, '2023-12-05 11:31:06', '2023-12-05 11:31:09', '2023-12-05 11:31:10'),
	(17, 'Technic', '2022 Ford GT', 'Descubra uma atenção surpreendente aos detalhes e uma aparência icónica, tudo envolvido num projeto imersivo para adultos com o set de modelos LEGO® Technic 2022 Ford GT (42154). Monte tudo com calma:', 'Fig17.png', 119.99, 1, 1, '2023-12-05 11:31:54', '2023-12-05 11:31:56', '2023-12-05 11:31:57'),
	(18, 'Technic', 'Ferrari 488 GTE “AF Corse #51”', 'Junta-te ao mundo de prestígio da corrida de resistência enquanto constróis o LEGO® Technic Ferrari 488 GTE “AF Corse #51”. Este kit de modelo proporciona muitas horas de diversão enquanto constróis o', 'Fig18.png', 199.99, 1, 1, '2023-12-05 11:32:46', '2023-12-05 11:32:49', '2023-12-05 11:32:50'),
	(19, 'Bebés', 'Animais Bebés', 'Estas criaturas fofinhas da coleção LEGO DUPLO À Volta do Mundo são perfeitas para as crianças desenvolverem desde cedo as suas habilidades de brincar com animais. Enquanto cuidam dos seus novos amigo', 'Fig19.png', 39.99, 1, 1, '2023-12-07 18:59:24', '2023-12-07 18:59:24', '2023-12-07 18:59:25'),
	(20, 'Bebés', 'Comboio Aniversário', 'Dê a descobrir às crianças em idade pré-escolar a diversão com números, a construção criativa e a magia Disney! Há imensas atividades de desenvolvimento para aproveitar com Mickey Mouse, Minnie Mouse ', 'Fig20.png', 34.99, 1, 1, '2023-12-07 19:07:27', '2023-12-07 19:07:29', '2023-12-07 19:07:30'),
	(21, 'Bebés', 'Caixa de Peças', 'Quando abre este sortido colorido de peças LEGO® DUPLO®, abre um mundo de brincadeira criativa e benefícios para o desenvolvimento. Este set versátil traz ideias e inspiração para os bebés. Inclui um ', 'Fig21.png', 29.99, 1, 1, '2023-12-07 19:09:06', '2023-12-07 19:09:06', '2023-12-07 19:09:07'),
	(22, 'Bebés', 'Camião', 'Um gato ficou preso no cimo de uma árvore alta! O camião dos bombeiros acorre ao local com as luzes a piscar e as sirenes a tocar. O seu pequeno herói pode empurrar e rodar a alavanca do camião para e', 'Fig22.png', 29.99, 1, 1, '2023-12-07 19:11:06', '2023-12-07 19:11:06', '2023-12-07 19:11:07'),
	(23, 'Crianças', 'Trator', 'Parte para o campo no inconfundível Trator LEGO City. Conduzir por terreno agreste não é problema com os enormes pneus traseiros do trator. Carrega os fardos de feno e grade com uma abóbora, maçã e ce', 'Fig23.png', 19.99, 1, 1, '2023-12-07 19:19:43', '2023-12-07 19:19:43', '2023-12-07 19:19:44'),
	(24, 'Crianças', 'Esquadra da Polícia ', 'Combina o set Esquadra da Polícia (60316) com outros da linha LEGO City (vendido separadamente) para aventuras cheias de ação!', 'Fig24.png', 64.99, 1, 1, '2023-12-07 19:31:20', '2023-12-07 19:31:20', '2023-12-07 19:31:21'),
	(25, 'Crianças', 'Yamaha MT-10 SP', 'Deixe-se envolver no mundo das motas Hyper Naked com este kit de construção LEGO Technic Yamaha MT-10 SP para adultos.', 'Fig25.png', 229.99, 1, 1, '2023-12-07 19:33:42', '2023-12-07 19:33:43', '2023-12-07 19:33:44'),
	(26, 'Crianças', 'Montanha-Russa', 'Os fãs do espaço a partir dos 9 anos desfrutam de uma emocionante viagem a um parque de diversões com esta LEGO Creator 3 em 1 Montanha-Russa do Espaço (31142) altamente detalhada.', 'Fig26.png', 104.99, 1, 1, '2023-12-07 19:35:36', '2023-12-07 19:35:37', '2023-12-07 19:35:38');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
