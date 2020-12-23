-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 21-Out-2019 às 14:10
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
-- Database: `estacionamento`
--
CREATE DATABASE IF NOT EXISTS `estacionamento` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `estacionamento`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `codCliente` int(11) NOT NULL,
  `cpf` varchar(30) DEFAULT NULL,
  `dtNasc` date DEFAULT NULL,
  `nome` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`codCliente`, `cpf`, `dtNasc`, `nome`) VALUES
(1, '09346591099', '2000-05-12', 'Emanuel Pascoal'),
(2, '52886838080', '1998-10-25', 'Amanda Torres'),
(3, '42203370084', '1982-01-28', 'Cauã Costa'),
(4, '39210078012', '1975-07-26', 'Luiza Rodrigues'),
(5, '41547403004', '2001-11-25', 'Guilherme Gomes'),
(6, '24960993049', '1966-12-30', 'Frances Dunbar'),
(7, '52317869002', '1999-03-11', 'Beatrice Cardoso'),
(8, '22688696017', '1995-05-06', 'Leonor Martins'),
(9, '79848453016', '1994-10-24', 'Garland Myers'),
(10, '38187569026', '1978-06-12', 'Melissa Oliveira');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estaciona`
--

CREATE TABLE `estaciona` (
  `dtEntrada` date DEFAULT NULL,
  `hrSaida` time DEFAULT NULL,
  `hrEntrada` time DEFAULT NULL,
  `dtSaida` date DEFAULT NULL,
  `codEstaciona` int(11) NOT NULL,
  `codVeic` int(11) DEFAULT NULL,
  `num` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `estaciona`
--

INSERT INTO `estaciona` (`dtEntrada`, `hrSaida`, `hrEntrada`, `dtSaida`, `codEstaciona`, `codVeic`, `num`) VALUES
('2019-10-21', '12:35:00', '11:35:00', '2019-10-21', 1, 2, 5),
('2019-10-12', '00:49:00', '00:14:00', '2019-10-12', 2, 8, 3),
('2019-10-10', '12:06:00', '09:54:00', '2019-10-10', 3, 1, 4),
('2019-10-20', '02:23:00', '00:21:00', '2019-10-21', 4, 9, 2),
('2019-10-21', '12:20:00', '10:10:00', '2019-10-21', 5, 10, 1),
('2019-10-22', '16:20:19', '14:24:00', '2019-10-22', 6, 7, 1),
('2019-10-22', '12:20:00', '07:50:00', '2019-10-22', 7, 3, 3),
('2019-10-10', '14:50:00', '08:30:00', '2019-10-10', 8, 6, 4),
('2019-10-12', '09:01:00', '06:12:00', '2019-10-12', 9, 4, 5),
('2019-10-21', '04:20:00', '03:02:00', '2019-10-21', 10, 5, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `modelo`
--

CREATE TABLE `modelo` (
  `codModelo` int(11) NOT NULL,
  `desc_2` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `modelo`
--

INSERT INTO `modelo` (`codModelo`, `desc_2`) VALUES
(1, 'gol'),
(2, 'uno'),
(3, 'palio'),
(4, 'fox'),
(5, 'siena');

-- --------------------------------------------------------

--
-- Estrutura da tabela `patio`
--

CREATE TABLE `patio` (
  `num` int(11) NOT NULL,
  `ender` varchar(40) DEFAULT NULL,
  `capacidade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `patio`
--

INSERT INTO `patio` (`num`, `ender`, `capacidade`) VALUES
(1, '5', 15),
(2, '4', 20),
(3, '3', 30),
(4, '2', 50),
(5, '1', 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculo`
--

CREATE TABLE `veiculo` (
  `codVeic` int(11) NOT NULL,
  `placa` varchar(8) DEFAULT NULL,
  `cor` varchar(20) DEFAULT NULL,
  `codCliente` int(11) DEFAULT NULL,
  `codModelo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `veiculo`
--

INSERT INTO `veiculo` (`codVeic`, `placa`, `cor`, `codCliente`, `codModelo`) VALUES
(1, 'JJJ-2020', 'verde', 1, 1),
(2, 'JEG-1010', 'vermelho', 2, 2),
(3, 'LVK-1461', 'prata', 3, 3),
(4, 'LNT-9289', 'preto', 4, 4),
(5, 'JRI-6732', 'azul', 5, 5),
(6, 'MRB-5608', 'branco', 6, 1),
(7, 'MXC-7374', 'preto', 7, 2),
(8, 'MMB-5209', 'verde', 8, 3),
(9, 'MYJ-7421', 'vermelho', 9, 4),
(10, 'NEM-9218', 'preto', 10, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`codCliente`);

--
-- Indexes for table `estaciona`
--
ALTER TABLE `estaciona`
  ADD PRIMARY KEY (`codEstaciona`),
  ADD KEY `codVeic` (`codVeic`),
  ADD KEY `num` (`num`);

--
-- Indexes for table `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`codModelo`);

--
-- Indexes for table `patio`
--
ALTER TABLE `patio`
  ADD PRIMARY KEY (`num`);

--
-- Indexes for table `veiculo`
--
ALTER TABLE `veiculo`
  ADD PRIMARY KEY (`codVeic`),
  ADD KEY `codCliente` (`codCliente`),
  ADD KEY `codModelo` (`codModelo`);

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `estaciona`
--
ALTER TABLE `estaciona`
  ADD CONSTRAINT `estaciona_ibfk_1` FOREIGN KEY (`codVeic`) REFERENCES `veiculo` (`codVeic`),
  ADD CONSTRAINT `estaciona_ibfk_2` FOREIGN KEY (`num`) REFERENCES `patio` (`num`);

--
-- Limitadores para a tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD CONSTRAINT `veiculo_ibfk_1` FOREIGN KEY (`codCliente`) REFERENCES `cliente` (`codCliente`),
  ADD CONSTRAINT `veiculo_ibfk_2` FOREIGN KEY (`codModelo`) REFERENCES `modelo` (`codModelo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
