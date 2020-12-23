-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 20-Maio-2019 às 22:23
-- Versão do servidor: 10.1.40-MariaDB
-- versão do PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jornal`
--
CREATE DATABASE IF NOT EXISTS `jornal` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `jornal`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `codCategoria` int(11) NOT NULL,
  `nomeCategoria` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`codCategoria`, `nomeCategoria`) VALUES
(1, 'Esporte'),
(2, 'Política'),
(3, 'Educação'),
(4, 'Entretenimento'),
(5, 'Saúde');

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticias`
--

CREATE TABLE `noticias` (
  `idNoticias` int(11) NOT NULL,
  `tituloNoticia` varchar(50) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `redator` int(11) DEFAULT NULL,
  `categoria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `noticias`
--

INSERT INTO `noticias` (`idNoticias`, `tituloNoticia`, `descricao`, `data`, `redator`, `categoria`) VALUES
(1, 'Brasil ganha copa do mundo de 2022!', 'blablablablablablabla', '2022-10-10', 4, 1),
(2, 'É descoberto um vírus letal que pode dizimar a hum', 'Médicos e cientistas do mundo todo trabalham na busca pela cura', '2019-03-12', 5, 5),
(3, 'É inaugurado shopping em Ribeirão Pires', 'A população da cidade se anima e comemora pois finalmente isso aconteceu', '2020-12-02', 1, 4),
(4, 'Prefeito de Ribeirão Pires desaparece misteriosame', 'A população da cidade alega que ele nunca existiu', '2019-06-09', 2, 2),
(5, 'No dia 21 de maior será aplicada a OBMEP', 'Professora Marilene diz que a nota valerá para o bimestre e alunos se desesperam', '2019-03-04', 3, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `redator`
--

CREATE TABLE `redator` (
  `codRedator` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `dataNascimento` date DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `cpf` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `redator`
--

INSERT INTO `redator` (`codRedator`, `nome`, `dataNascimento`, `email`, `telefone`, `cpf`) VALUES
(1, 'Bia Ribeiro', '2003-02-01', 'biariso@gmail.com', '12345-6789', '123.456.789-10'),
(2, 'Marco Alvaro', '2001-07-30', 'alvaro.top@gmail.com', '56454-9529', '256.886.157-59'),
(3, 'Lorenzo Enzo', '1992-08-14', 'aaalor.enzo@gmail.com', '45894-2359', '899.236.156-78'),
(4, 'Joel Manoel', '1999-02-12', 'joelel@hotmail.com', '44823-7790', '455.022.132-97'),
(5, 'Marcos Alquimista', '2000-08-09', 'alq.mar@hotmail.com', '44853-9890', '310.784.892-13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`codCategoria`);

--
-- Indexes for table `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`idNoticias`),
  ADD KEY `redator` (`redator`),
  ADD KEY `categoria` (`categoria`);

--
-- Indexes for table `redator`
--
ALTER TABLE `redator`
  ADD PRIMARY KEY (`codRedator`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `cpf` (`cpf`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categorias`
--
ALTER TABLE `categorias`
  MODIFY `codCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `noticias`
--
ALTER TABLE `noticias`
  MODIFY `idNoticias` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `redator`
--
ALTER TABLE `redator`
  MODIFY `codRedator` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `noticias`
--
ALTER TABLE `noticias`
  ADD CONSTRAINT `noticias_ibfk_1` FOREIGN KEY (`redator`) REFERENCES `redator` (`codRedator`),
  ADD CONSTRAINT `noticias_ibfk_2` FOREIGN KEY (`categoria`) REFERENCES `categorias` (`codCategoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
