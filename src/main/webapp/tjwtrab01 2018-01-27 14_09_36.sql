-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           5.7.9-log - MySQL Community Server (GPL)
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              9.4.0.5186
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para tjwtrab01
CREATE DATABASE IF NOT EXISTS `tjwtrab01` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `tjwtrab01`;
-- Copiando estrutura para tabela tjwtrab01.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `username` varchar(50) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `senha` varchar(10) NOT NULL,
  `nivel` varchar(20) NOT NULL,
  PRIMARY KEY (`username`),
  
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabela que ficarão salvos os usuários';

-- Copiando dados para a tabela tjwtrab01.usuarios: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT IGNORE INTO `usuarios` (`username`, `nome`, `email`, `senha`, `nivel`) VALUES
	('mm', 'Matheus Moreira', 'imatheusmoreira@gmail.com', '1234', 'ADMINISTRADOR');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
