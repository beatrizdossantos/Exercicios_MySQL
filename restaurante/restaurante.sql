-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 23-Set-2019 às 14:13
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
-- Database: `restaurante`
--
CREATE DATABASE IF NOT EXISTS `restaurante` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `restaurante`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `consume`
--

CREATE TABLE `consume` (
  `qtde_itens` int(11) NOT NULL,
  `valor_total_itens` decimal(7,2) NOT NULL,
  `cod_reserva` int(11) NOT NULL,
  `cod_item` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `consume`
--

INSERT INTO `consume` (`qtde_itens`, `valor_total_itens`, `cod_reserva`, `cod_item`) VALUES
(3, '30.00', 1, 4),
(1, '5.00', 1, 2),
(1, '12.50', 3, 3),
(2, '20.00', 4, 4),
(5, '16.50', 2, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `garcons`
--

CREATE TABLE `garcons` (
  `nome_garcom` varchar(50) NOT NULL,
  `cod_garcom` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `garcons`
--

INSERT INTO `garcons` (`nome_garcom`, `cod_garcom`) VALUES
('Pablo Otávio', 1),
('Caio Silva Reis', 2),
('Regina Kim', 3),
('Kimberly Lipson', 4),
('Viviano Cezar', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `itens`
--

CREATE TABLE `itens` (
  `cod_item` int(11) NOT NULL,
  `preco` decimal(7,2) NOT NULL,
  `nome_item` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `itens`
--

INSERT INTO `itens` (`cod_item`, `preco`, `nome_item`) VALUES
(1, '15.00', 'Batata Fritas'),
(2, '5.00', 'Refrigerante de Groselha'),
(3, '12.50', 'Sorvete'),
(4, '10.00', 'Sanduíche'),
(5, '3.30', 'Coxinha');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mesas`
--

CREATE TABLE `mesas` (
  `ocupada` bit(1) NOT NULL,
  `num_mesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `mesas`
--

INSERT INTO `mesas` (`ocupada`, `num_mesa`) VALUES
(b'1', 1),
(b'0', 2),
(b'1', 3),
(b'0', 4),
(b'1', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `reserva`
--

CREATE TABLE `reserva` (
  `mes` int(11) NOT NULL,
  `dia` int(11) NOT NULL,
  `ano` int(11) NOT NULL,
  `valor_total` decimal(7,2) NOT NULL,
  `cod_reserva` int(11) NOT NULL,
  `qtde_pessoas` int(11) NOT NULL,
  `valor_pessoa` decimal(7,2) NOT NULL,
  `hr_saida` time NOT NULL,
  `hr_entrada` time NOT NULL,
  `num_mesa` int(11) NOT NULL,
  `cod_garcom` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `reserva`
--

INSERT INTO `reserva` (`mes`, `dia`, `ano`, `valor_total`, `cod_reserva`, `qtde_pessoas`, `valor_pessoa`, `hr_saida`, `hr_entrada`, `num_mesa`, `cod_garcom`) VALUES
(5, 22, 2019, '35.00', 1, 3, '11.67', '13:45:00', '12:14:00', 2, 3),
(5, 10, 2019, '50.00', 2, 4, '12.50', '18:05:00', '20:00:00', 1, 5),
(6, 3, 2019, '12.50', 3, 1, '12.50', '06:01:00', '07:03:00', 3, 4),
(10, 12, 2019, '20.00', 4, 2, '10.00', '08:57:00', '09:46:00', 5, 1),
(10, 12, 2019, '150.00', 5, 5, '30.00', '15:00:00', '16:00:00', 4, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `consume`
--
ALTER TABLE `consume`
  ADD KEY `cod_reserva` (`cod_reserva`),
  ADD KEY `cod_item` (`cod_item`);

--
-- Indexes for table `garcons`
--
ALTER TABLE `garcons`
  ADD PRIMARY KEY (`cod_garcom`);

--
-- Indexes for table `itens`
--
ALTER TABLE `itens`
  ADD PRIMARY KEY (`cod_item`);

--
-- Indexes for table `mesas`
--
ALTER TABLE `mesas`
  ADD PRIMARY KEY (`num_mesa`);

--
-- Indexes for table `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`cod_reserva`),
  ADD KEY `num_mesa` (`num_mesa`),
  ADD KEY `cod_garcom` (`cod_garcom`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `garcons`
--
ALTER TABLE `garcons`
  MODIFY `cod_garcom` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `itens`
--
ALTER TABLE `itens`
  MODIFY `cod_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `reserva`
--
ALTER TABLE `reserva`
  MODIFY `cod_reserva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `consume`
--
ALTER TABLE `consume`
  ADD CONSTRAINT `consume_ibfk_1` FOREIGN KEY (`cod_reserva`) REFERENCES `reserva` (`cod_reserva`),
  ADD CONSTRAINT `consume_ibfk_2` FOREIGN KEY (`cod_item`) REFERENCES `itens` (`cod_item`);

--
-- Limitadores para a tabela `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `reserva_ibfk_1` FOREIGN KEY (`num_mesa`) REFERENCES `mesas` (`num_mesa`),
  ADD CONSTRAINT `reserva_ibfk_2` FOREIGN KEY (`cod_garcom`) REFERENCES `garcons` (`cod_garcom`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
