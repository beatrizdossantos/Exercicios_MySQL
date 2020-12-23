-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 18-Nov-2019 às 13:59
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
-- Database: `uniao`
--
CREATE DATABASE IF NOT EXISTS `uniao` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `uniao`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `departamento`
--

CREATE TABLE `departamento` (
  `codDep` varchar(10) NOT NULL,
  `nomeDep` varchar(30) DEFAULT NULL,
  `numSala` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `departamento`
--

INSERT INTO `departamento` (`codDep`, `nomeDep`, `numSala`) VALUES
('COM', 'COMPRAS', 102),
('DIR', 'DIRETORIA', 201),
('QUA', 'QUALIDADE', 202),
('VEND', 'VENDAS', 101);

-- --------------------------------------------------------

--
-- Estrutura da tabela `empregado`
--

CREATE TABLE `empregado` (
  `cod` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `idade` int(11) DEFAULT NULL,
  `sal` decimal(7,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `empregado`
--

INSERT INTO `empregado` (`cod`, `nome`, `idade`, `sal`) VALUES
(1, 'CARLOS', 39, '1000.00'),
(2, 'CINTIA', 38, '1500.00'),
(3, 'VERONICA', 23, '2500.00'),
(4, 'GABRIELA', 18, '4000.00'),
(5, 'Pietro', 25, '5000.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `registro`
--

CREATE TABLE `registro` (
  `numReg` int(11) NOT NULL,
  `codEmp` int(11) DEFAULT NULL,
  `codDep` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `registro`
--

INSERT INTO `registro` (`numReg`, `codEmp`, `codDep`) VALUES
(1, 1, 'QUA'),
(2, 2, 'VEND'),
(3, 3, 'VEND'),
(4, 5, 'DIR');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`codDep`);

--
-- Indexes for table `empregado`
--
ALTER TABLE `empregado`
  ADD PRIMARY KEY (`cod`);

--
-- Indexes for table `registro`
--
ALTER TABLE `registro`
  ADD PRIMARY KEY (`numReg`),
  ADD KEY `codEmp` (`codEmp`),
  ADD KEY `codDep` (`codDep`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `empregado`
--
ALTER TABLE `empregado`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `registro`
--
ALTER TABLE `registro`
  MODIFY `numReg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `registro`
--
ALTER TABLE `registro`
  ADD CONSTRAINT `registro_ibfk_1` FOREIGN KEY (`codEmp`) REFERENCES `empregado` (`cod`),
  ADD CONSTRAINT `registro_ibfk_2` FOREIGN KEY (`codDep`) REFERENCES `departamento` (`codDep`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
