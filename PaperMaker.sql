-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.32-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              11.2.0.6265
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para paper_maker
CREATE DATABASE IF NOT EXISTS `paper_maker` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `paper_maker`;

-- Copiando estrutura para tabela paper_maker.carrinho
CREATE TABLE IF NOT EXISTS `carrinho` (
  `Cod_carrinho` int(11) NOT NULL,
  `Nome_carrinho` varchar(255) NOT NULL,
  `Preco_carrinho` decimal(10,2) NOT NULL DEFAULT 0.00,
  `QuantidadeC` int(11) NOT NULL,
  `Marca_carrinho` varchar(255) NOT NULL,
  PRIMARY KEY (`Cod_carrinho`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela paper_maker.produtos
CREATE TABLE IF NOT EXISTS `produtos` (
  `Cod_produto` int(11) NOT NULL AUTO_INCREMENT,
  `Nome_produto` varchar(255) NOT NULL,
  `Preco_produto` decimal(10,2) NOT NULL DEFAULT 0.00,
  `Quantidade` int(11) NOT NULL,
  `Marca_produto` varchar(255) NOT NULL,
  PRIMARY KEY (`Cod_produto`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela paper_maker.vendas
CREATE TABLE IF NOT EXISTS `vendas` (
  `Cod_venda` int(11) NOT NULL AUTO_INCREMENT,
  `Total_venda` decimal(10,2) NOT NULL,
  PRIMARY KEY (`Cod_venda`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Exportação de dados foi desmarcado.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
