-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 12-Ago-2019 às 15:07
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
-- Database: `imobiliaria`
--
CREATE DATABASE IF NOT EXISTS `imobiliaria` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `imobiliaria`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluguel`
--

CREATE TABLE `aluguel` (
  `CodAlu` int(11) NOT NULL,
  `dataAluguel` date NOT NULL,
  `dataTermino` date NOT NULL,
  `TempoContrato` int(11) NOT NULL,
  `comissao` decimal(7,2) DEFAULT NULL,
  `CodImovel` int(11) NOT NULL,
  `CodCor` int(11) NOT NULL,
  `CodInq` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `aluguel`
--

INSERT INTO `aluguel` (`CodAlu`, `dataAluguel`, `dataTermino`, `TempoContrato`, `comissao`, `CodImovel`, `CodCor`, `CodInq`) VALUES
(1, '2019-08-12', '2021-08-12', 2, '120.00', 1, 5, 3),
(2, '2019-10-21', '2022-10-21', 3, '80.00', 2, 4, 4),
(3, '2019-01-02', '2020-01-02', 1, '70.00', 3, 3, 5),
(4, '2018-08-12', '2023-08-12', 5, '130.00', 4, 2, 1),
(5, '2018-08-12', '2019-08-12', 1, '200.00', 5, 1, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `corretor`
--

CREATE TABLE `corretor` (
  `CodCor` int(11) NOT NULL,
  `NomeCor` varchar(20) NOT NULL,
  `dataNasc` date NOT NULL,
  `Celular` varchar(30) NOT NULL,
  `Telefone` varchar(20) DEFAULT NULL,
  `email` varchar(20) NOT NULL,
  `CPF` varchar(20) NOT NULL,
  `RG` varchar(20) NOT NULL,
  `Rua` varchar(30) NOT NULL,
  `Numero` int(11) NOT NULL,
  `Bairro` varchar(30) NOT NULL,
  `Cidade` varchar(30) NOT NULL,
  `Complemento` varchar(50) DEFAULT NULL,
  `Estado` varchar(30) NOT NULL,
  `cep` varchar(10) NOT NULL,
  `uf` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `corretor`
--

INSERT INTO `corretor` (`CodCor`, `NomeCor`, `dataNasc`, `Celular`, `Telefone`, `email`, `CPF`, `RG`, `Rua`, `Numero`, `Bairro`, `Cidade`, `Complemento`, `Estado`, `cep`, `uf`) VALUES
(1, 'Amanda Pereira', '1985-03-28', '998427692', '1125684370', 'amandp@gmail.com', '111.555.222-04', '11 333 774-9', 'Rua Paraíba', 789, 'Bairro Canoagem', 'São Paulo', '', 'São Paulo', '04576-064', 'SP'),
(2, 'Lineu Pereira', '1960-11-11', '912345677', '1123458796', 'lilineu@gmail.com', '253.545.242-03', '10 569 478-2', 'Rua Piando', 1999, 'Bairro Galinha', 'Serra', '', 'Espírito Santo', '12345-002', 'ES'),
(3, 'Giovani Aamdeus', '1974-07-25', '912340678', '1123456789', 'gigigod@gmail.com', '141.565.252-05', '15 343 784-1', 'Claudio Pires', 3, 'Vila do Mal', 'Rio de Janeiro', '', 'Rio de Janeiro', '25879-123', 'RJ'),
(4, 'Luana Paes ', '1983-06-02', '901234567', '1147896524', 'lulupaes@gmail.com', '888.585.224-09', '18 384 777-2', 'Rua Step', 759, 'Bairro Margem', 'São Paulo', '', 'São Paulo', '00885-111', 'SP'),
(5, 'Sofia Aquino', '1996-01-08', '900011136', '1148567792', 'sofififi@gmail.com', '221.655.222-03', '45 483 477-0', 'Rua Tubar', 9, 'Mar Azul', 'São Paulo', '', 'São Paulo', '35611-014', 'SP');

-- --------------------------------------------------------

--
-- Estrutura da tabela `imovel`
--

CREATE TABLE `imovel` (
  `CodImovel` int(11) NOT NULL,
  `Preco` decimal(7,2) NOT NULL,
  `QtdeComodos` int(11) NOT NULL,
  `QtdeQuartos` int(11) NOT NULL,
  `QtdeBanheiros` int(11) NOT NULL,
  `tamanho` int(11) NOT NULL,
  `temGaragem` bit(1) NOT NULL,
  `QtdeCarrosGaragem` int(11) NOT NULL,
  `temLavanderia` bit(1) NOT NULL,
  `temVaranda` bit(1) NOT NULL,
  `temQuintal` bit(1) NOT NULL,
  `suite` bit(1) NOT NULL,
  `ocupado` bit(1) NOT NULL,
  `Rua` varchar(30) NOT NULL,
  `Numero` int(11) NOT NULL,
  `Bairro` varchar(30) NOT NULL,
  `Complemento` varchar(50) DEFAULT NULL,
  `Cidade` varchar(30) NOT NULL,
  `Estado` varchar(20) NOT NULL,
  `cep` varchar(10) NOT NULL,
  `uf` varchar(10) NOT NULL,
  `CodPro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `imovel`
--

INSERT INTO `imovel` (`CodImovel`, `Preco`, `QtdeComodos`, `QtdeQuartos`, `QtdeBanheiros`, `tamanho`, `temGaragem`, `QtdeCarrosGaragem`, `temLavanderia`, `temVaranda`, `temQuintal`, `suite`, `ocupado`, `Rua`, `Numero`, `Bairro`, `Complemento`, `Cidade`, `Estado`, `cep`, `uf`, `CodPro`) VALUES
(1, '750.00', 6, 2, 2, 90, b'1', 2, b'0', b'1', b'0', b'1', b'0', 'Rua Cruzeiro', 478, 'Bairro Rosas', '', 'São Paulo', 'São Paulo', '03881-000', 'SP', 1),
(2, '1100.00', 7, 4, 3, 120, b'1', 3, b'1', b'1', b'1', b'1', b'0', 'Rua das Amêndoas', 23, 'Vila Lua Cheia', '', 'Caçapava', 'São Paulo', '12951-000', 'SP', 2),
(3, '600.00', 4, 1, 1, 45, b'1', 1, b'1', b'0', b'1', b'0', b'1', 'Lívia Alberto', 123, 'Cruzada Cristã', '', 'Extrema', 'Minas Gerais', '32751-000', 'MG', 3),
(4, '4000.00', 15, 5, 5, 300, b'0', 0, b'1', b'1', b'1', b'1', b'0', 'Rua Reis', 662, 'Bairro Chique', '', 'Extrema', 'Minas Gerais', '32251-000', 'MG', 4),
(5, '1200.00', 7, 1, 1, 55, b'1', 1, b'1', b'1', b'0', b'1', b'1', 'Capitão Rubens', 74, 'Marechal Hermes', '', 'Rio de Janeiro', 'Rio de Janeiro', '2548-000', 'RJ', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `inquilino`
--

CREATE TABLE `inquilino` (
  `CodInq` int(11) NOT NULL,
  `NomeInq` varchar(20) NOT NULL,
  `dataNasc` date NOT NULL,
  `Celular` varchar(20) NOT NULL,
  `Telefone` varchar(20) DEFAULT NULL,
  `CPF` varchar(20) NOT NULL,
  `RG` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `fiador` bit(1) DEFAULT NULL,
  `Numero` int(11) NOT NULL,
  `Rua` varchar(30) NOT NULL,
  `Bairro` varchar(30) NOT NULL,
  `Cidade` varchar(30) NOT NULL,
  `Estado` varchar(30) NOT NULL,
  `Complemento` varchar(50) DEFAULT NULL,
  `cep` varchar(10) NOT NULL,
  `uf` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `inquilino`
--

INSERT INTO `inquilino` (`CodInq`, `NomeInq`, `dataNasc`, `Celular`, `Telefone`, `CPF`, `RG`, `email`, `fiador`, `Numero`, `Rua`, `Bairro`, `Cidade`, `Estado`, `Complemento`, `cep`, `uf`) VALUES
(1, 'Alberto Roberto', '2000-10-21', '998756412', '1145789623', '352.947.256-08', '21 435 879-2', 'alb.rob3@gmail.com', b'1', 1089, 'Rua Pinheiro', 'Vila dos Coqueiros', 'Uberlândia', 'Minas Gerais', '', '15076-610', 'MG'),
(2, 'Luzia Cristina', '2000-01-01', '974589632', '1198756213', '154.125.364-07', '47 145 235-7', 'lucris68@gmail.com', b'0', 888, 'Rua Capim', 'Vila Verde', 'Mauá', 'São Paulo', 'Apt.03', '03973-060', 'SP'),
(3, 'Alexandre Marcos', '2001-12-13', '948975621', '1169785671', '203.014.047-06', '48 745 170-1', 'alema@hotmail.com', b'1', 65, 'Rua Iodo', 'Vila Bonita', 'Ribeirão Pires', 'São Paulo', '', '09580-690', 'SP'),
(4, 'Beatriz Marinho', '2001-02-26', '948971421', '1187785671', '025.145.017-09', '12 255 190-0', 'bia4389@hotmail.com', b'0', 123, 'Rua Park', 'Vila Han', 'Manaus', 'Amazonas', '', '32065-060', 'AM'),
(5, 'Catarina Amoedo', '1999-05-04', '912357896', '1168745921', '012.358.015-04', '47 455 100-3', 'cat.pro@hotmail.com', b'1', 1871, 'Rua Lenovo', 'Vila Laranja', 'Itajaí', 'Santa Catarina', '', '84093-073', 'SC');

-- --------------------------------------------------------

--
-- Estrutura da tabela `proprietario`
--

CREATE TABLE `proprietario` (
  `CodPro` int(11) NOT NULL,
  `NomePro` varchar(20) NOT NULL,
  `dataNasc` date NOT NULL,
  `Telefone` varchar(20) DEFAULT NULL,
  `Celular` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `CPF` varchar(20) NOT NULL,
  `RG` varchar(20) NOT NULL,
  `Rua` varchar(30) NOT NULL,
  `Numero` int(11) NOT NULL,
  `Cidade` varchar(30) NOT NULL,
  `Bairro` varchar(30) NOT NULL,
  `Complemento` varchar(50) NOT NULL,
  `Estado` varchar(20) NOT NULL,
  `Cep` varchar(10) NOT NULL,
  `UF` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `proprietario`
--

INSERT INTO `proprietario` (`CodPro`, `NomePro`, `dataNasc`, `Telefone`, `Celular`, `email`, `CPF`, `RG`, `Rua`, `Numero`, `Cidade`, `Bairro`, `Complemento`, `Estado`, `Cep`, `UF`) VALUES
(1, 'Marta Ribeiro', '1975-08-14', '1148278956', '995795842', 'martaee@gmail.com', '148.589.258-02', '12 345 678-9', 'Madalena Nogueira', 67, 'Mauá', 'Bairro Padeiro', '', 'São Paulo', '03165-000', 'SP'),
(2, 'Renata Cristina da S', '1975-09-05', '1148237720', '997104112', 're.cris@gmail.com', '149.265.476-72', '18 456 124-3', 'Ângelo Pavani', 73, 'Ribeirão Pires', 'Vila Aurora', '', 'São Paulo', '03457-000', 'SP'),
(3, 'João Alvoredo', '1980-11-27', '1112345678', '987456247', 'jo.arvore@gmail.com', '258.145.398-47', '02 786 127-1', 'Rua 5 Patinhos', 5, 'Coimbra', 'Arnaldo Cruz', '', 'Minas Gerais', '33547-000', 'MG'),
(4, 'José Aristides', '1963-03-09', '1143214785', '964178579', 'aristidesj@gmail.com', '415.145.445-11', '03 746 324-7', 'Rua Cruzeiro', 36, 'Viçosa', 'Vila Amaro', 'Apt.12', 'Minas Gerais', '33487-000', 'MG'),
(5, 'Beatriz Silva', '1998-12-26', '1148237721', '998427695', 'biazinhac@gmail.com', '123.456.789-10', '12 345 789-0', 'Rua Prata', 33, 'Santo André', 'Vila D\'ouro', 'Apt.22', 'São Paulo', '02347-000', 'SP');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aluguel`
--
ALTER TABLE `aluguel`
  ADD PRIMARY KEY (`CodAlu`),
  ADD KEY `CodImovel` (`CodImovel`),
  ADD KEY `CodCor` (`CodCor`),
  ADD KEY `CodInq` (`CodInq`);

--
-- Indexes for table `corretor`
--
ALTER TABLE `corretor`
  ADD PRIMARY KEY (`CodCor`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `CPF` (`CPF`),
  ADD UNIQUE KEY `RG` (`RG`);

--
-- Indexes for table `imovel`
--
ALTER TABLE `imovel`
  ADD PRIMARY KEY (`CodImovel`),
  ADD KEY `CodPro` (`CodPro`);

--
-- Indexes for table `inquilino`
--
ALTER TABLE `inquilino`
  ADD PRIMARY KEY (`CodInq`),
  ADD UNIQUE KEY `CPF` (`CPF`),
  ADD UNIQUE KEY `RG` (`RG`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `proprietario`
--
ALTER TABLE `proprietario`
  ADD PRIMARY KEY (`CodPro`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `CPF` (`CPF`),
  ADD UNIQUE KEY `RG` (`RG`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aluguel`
--
ALTER TABLE `aluguel`
  MODIFY `CodAlu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `corretor`
--
ALTER TABLE `corretor`
  MODIFY `CodCor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `imovel`
--
ALTER TABLE `imovel`
  MODIFY `CodImovel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `inquilino`
--
ALTER TABLE `inquilino`
  MODIFY `CodInq` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `proprietario`
--
ALTER TABLE `proprietario`
  MODIFY `CodPro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `aluguel`
--
ALTER TABLE `aluguel`
  ADD CONSTRAINT `aluguel_ibfk_1` FOREIGN KEY (`CodImovel`) REFERENCES `imovel` (`CodImovel`),
  ADD CONSTRAINT `aluguel_ibfk_2` FOREIGN KEY (`CodCor`) REFERENCES `corretor` (`CodCor`),
  ADD CONSTRAINT `aluguel_ibfk_3` FOREIGN KEY (`CodInq`) REFERENCES `inquilino` (`CodInq`);

--
-- Limitadores para a tabela `imovel`
--
ALTER TABLE `imovel`
  ADD CONSTRAINT `imovel_ibfk_1` FOREIGN KEY (`CodPro`) REFERENCES `proprietario` (`CodPro`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
