-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 20-Maio-2019 às 14:05
-- Versão do servidor: 10.1.32-MariaDB
-- PHP Version: 7.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `produtoravinho`
--
CREATE DATABASE IF NOT EXISTS `produtoravinho` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `produtoravinho`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `castas`
--

CREATE TABLE `castas` (
  `codCasta` int(11) NOT NULL,
  `casta` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `castas`
--

INSERT INTO `castas` (`codCasta`, `casta`) VALUES
(1, 'Touriga Nacional'),
(2, 'Tinta Roriz'),
(3, 'Tinta Barroca'),
(4, 'Touriga France'),
(5, 'Sousão'),
(6, 'Trincadeira'),
(7, 'Aragonês'),
(8, 'Castelão'),
(9, 'Moreto'),
(10, 'Carbenet Sauvignon');

-- --------------------------------------------------------

--
-- Estrutura da tabela `casta_vinho`
--

CREATE TABLE `casta_vinho` (
  `codVinho` int(11) DEFAULT NULL,
  `codCasta` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `casta_vinho`
--

INSERT INTO `casta_vinho` (`codVinho`, `codCasta`) VALUES
(7, 1),
(1, 2),
(10, 3),
(11, 3),
(9, 4),
(6, 5),
(8, 7),
(1, 8),
(3, 9),
(5, 10),
(12, 3),
(13, 2),
(14, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtor`
--

CREATE TABLE `produtor` (
  `idProdutor` int(11) NOT NULL,
  `nomeProdutor` varchar(50) DEFAULT NULL,
  `moradaProdutor` varchar(50) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `codRegiao` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produtor`
--

INSERT INTO `produtor` (`idProdutor`, `nomeProdutor`, `moradaProdutor`, `telefone`, `email`, `codRegiao`) VALUES
(1, 'Qt. Vallado', 'Régua', '254323147', 'vallado@mail.telepac.pt', 1),
(2, 'Qt. Pacheco', 'Lamengo', '254313228', 'pacheco@mail.telepac.pt', 1),
(3, 'Finagra', 'Renguengos', '266509270', 'esporao@esporao.com', 2),
(4, 'Dão Sul', 'Carregal do Sal', '232960140', 'daosul@daosul.com', 3),
(5, 'Fund. Eug. Almeida', NULL, NULL, NULL, 2),
(6, 'Kolheita ideias', NULL, '259351397', NULL, 1),
(7, 'Anselmo Mendes', NULL, NULL, NULL, 4),
(8, 'Adriano Ramos Pinto', 'Gaia', '223707000', 'ramospinto@ramospinto.pt', 1),
(9, 'Domingos Alves Souza', 'Cumieira', '254822111', NULL, 1),
(10, 'Provam', 'Barbeita', '251534207', 'pq@provam.com', 2),
(11, 'Sogrape', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `regio`
--

CREATE TABLE `regio` (
  `idRegiao` int(11) NOT NULL,
  `descricao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `regio`
--

INSERT INTO `regio` (`idRegiao`, `descricao`) VALUES
(1, 'Douro'),
(2, 'Alentejo'),
(3, 'Dão'),
(4, 'Vinho Verde'),
(5, 'Estremadura');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vinho`
--

CREATE TABLE `vinho` (
  `idVinho` int(11) NOT NULL,
  `nomeVinho` varchar(30) DEFAULT NULL,
  `ano_vinho` int(11) DEFAULT NULL,
  `cor` varchar(20) DEFAULT NULL,
  `grau` decimal(7,2) DEFAULT NULL,
  `preco` decimal(7,2) DEFAULT NULL,
  `codProdutor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `vinho`
--

INSERT INTO `vinho` (`idVinho`, `nomeVinho`, `ano_vinho`, `cor`, `grau`, `preco`, `codProdutor`) VALUES
(1, 'Esporão Reserva', 2004, 'Tinto', '14.50', '6.50', 4),
(2, 'Quinta do Vallado', 2004, 'Tinto', '13.50', '12.50', 6),
(3, 'Muros Antigos', 2006, 'Branco', '13.00', '20.50', 3),
(4, 'EA', 2005, 'Tinto', '12.50', '33.00', 7),
(5, 'K', 2002, 'Branco', '12.70', '40.50', 6),
(6, 'Kolheita', 2003, 'Tinto', '13.50', '25.00', 1),
(7, 'Esboço', 2001, 'Branco', '12.50', '34.50', 2),
(8, 'Duas Quintas', 2003, 'Tinto', '14.00', '80.40', 2),
(9, 'Pera Manca', 1995, 'Tinto', '13.50', '102.50', 5),
(10, 'Quinta de Cabriz', 2005, 'Tinto', '14.00', '50.00', 8),
(11, 'Quinta de Cabriz Reserva', 1993, 'Tinto', '13.50', '150.50', 8),
(12, 'Casa de Santar', 2006, 'Branco', '12.50', '90.50', 10),
(13, 'Casa de Santar', 2004, 'Tinto', '13.50', '130.60', 10),
(14, 'Casa de Santar Reserva', 1999, 'Tinto', '14.00', '250.00', 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `castas`
--
ALTER TABLE `castas`
  ADD PRIMARY KEY (`codCasta`);

--
-- Indexes for table `casta_vinho`
--
ALTER TABLE `casta_vinho`
  ADD KEY `codVinho` (`codVinho`),
  ADD KEY `codCasta` (`codCasta`);

--
-- Indexes for table `produtor`
--
ALTER TABLE `produtor`
  ADD PRIMARY KEY (`idProdutor`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `codRegiao` (`codRegiao`);

--
-- Indexes for table `regio`
--
ALTER TABLE `regio`
  ADD PRIMARY KEY (`idRegiao`);

--
-- Indexes for table `vinho`
--
ALTER TABLE `vinho`
  ADD PRIMARY KEY (`idVinho`),
  ADD KEY `codProdutor` (`codProdutor`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `castas`
--
ALTER TABLE `castas`
  MODIFY `codCasta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `produtor`
--
ALTER TABLE `produtor`
  MODIFY `idProdutor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `regio`
--
ALTER TABLE `regio`
  MODIFY `idRegiao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vinho`
--
ALTER TABLE `vinho`
  MODIFY `idVinho` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `casta_vinho`
--
ALTER TABLE `casta_vinho`
  ADD CONSTRAINT `casta_vinho_ibfk_1` FOREIGN KEY (`codVinho`) REFERENCES `vinho` (`idVinho`),
  ADD CONSTRAINT `casta_vinho_ibfk_2` FOREIGN KEY (`codCasta`) REFERENCES `castas` (`codCasta`);

--
-- Limitadores para a tabela `produtor`
--
ALTER TABLE `produtor`
  ADD CONSTRAINT `produtor_ibfk_1` FOREIGN KEY (`codRegiao`) REFERENCES `regio` (`idRegiao`);

--
-- Limitadores para a tabela `vinho`
--
ALTER TABLE `vinho`
  ADD CONSTRAINT `vinho_ibfk_1` FOREIGN KEY (`codProdutor`) REFERENCES `produtor` (`idProdutor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
