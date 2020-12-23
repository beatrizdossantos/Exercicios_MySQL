-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 02-Maio-2020 às 20:24
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
-- Database: `dbpratika`
--
CREATE DATABASE IF NOT EXISTS `dbpratika` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `dbpratika`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `administradores`
--

CREATE TABLE `administradores` (
  `dia` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL,
  `senha` varchar(15) DEFAULT NULL,
  `codAdmin` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `alugam`
--

CREATE TABLE `alugam` (
  `diaD` int(11) DEFAULT NULL,
  `mesD` int(11) DEFAULT NULL,
  `anoD` int(11) DEFAULT NULL,
  `diaA` int(11) DEFAULT NULL,
  `mesA` int(11) DEFAULT NULL,
  `anoA` int(11) DEFAULT NULL,
  `codEquip` int(11) DEFAULT NULL,
  `codUsuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `areavippost`
--

CREATE TABLE `areavippost` (
  `codPost` int(11) NOT NULL,
  `assunto` varchar(90) DEFAULT NULL,
  `nome` varchar(40) DEFAULT NULL,
  `conteudoPost` varchar(5000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `atividade`
--

CREATE TABLE `atividade` (
  `dia` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `modalidade` varchar(50) DEFAULT NULL,
  `codAtividade` int(11) NOT NULL,
  `horario` time DEFAULT NULL,
  `preco` decimal(7,2) DEFAULT NULL,
  `aula` bit(1) DEFAULT NULL,
  `codLocal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ensinam`
--

CREATE TABLE `ensinam` (
  `codProfessor` int(11) DEFAULT NULL,
  `codAtividade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `equipamentos`
--

CREATE TABLE `equipamentos` (
  `codEquip` int(11) NOT NULL,
  `nome` varchar(40) DEFAULT NULL,
  `preço` decimal(7,2) DEFAULT NULL,
  `tempoHoras` int(11) DEFAULT NULL,
  `descrição` varchar(300) DEFAULT NULL,
  `codUsuario` int(11) DEFAULT NULL,
  `codProfessor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `especialistas`
--

CREATE TABLE `especialistas` (
  `codEspecialista` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `senha` varchar(15) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL,
  `formacao` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `locais`
--

CREATE TABLE `locais` (
  `nome` varchar(50) DEFAULT NULL,
  `codLocal` int(11) NOT NULL,
  `precoAluguel` decimal(7,2) DEFAULT NULL,
  `rua` varchar(30) DEFAULT NULL,
  `cep` int(11) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `bairro` varchar(70) DEFAULT NULL,
  `estado` varchar(30) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `codProfessor` int(11) DEFAULT NULL,
  `codUsuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `monitoram`
--

CREATE TABLE `monitoram` (
  `codAdmin` int(11) DEFAULT NULL,
  `codUsuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `postam`
--

CREATE TABLE `postam` (
  `codEspecialista` int(11) DEFAULT NULL,
  `codPost` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `praticam`
--

CREATE TABLE `praticam` (
  `codUsuario` int(11) DEFAULT NULL,
  `codAtividade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `professores`
--

CREATE TABLE `professores` (
  `ano` int(11) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `codProfessor` int(11) NOT NULL AUTO_INCREMENT,
  `modalidadeAula` varchar(50) DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `formacao` varchar(70) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `senha` varchar(30) DEFAULT NULL,
  `estado` varchar(30) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  primary key (codProfessor)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usam`
--

CREATE TABLE `usam` (
  `codPost` int(11) DEFAULT NULL,
  `codUsuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `codUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `mes` int(11) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL,
  `estado` varchar(30) DEFAULT NULL,
  `senha` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `premium` bit(1) DEFAULT NULL,
  PRIMARY KEY (CodUsuario)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`codAdmin`);

--
-- Indexes for table `alugam`
--
ALTER TABLE `alugam`
  ADD KEY `codEquip` (`codEquip`),
  ADD KEY `codUsuario` (`codUsuario`);

--
-- Indexes for table `areavippost`
--
ALTER TABLE `areavippost`
  ADD PRIMARY KEY (`codPost`);

--
-- Indexes for table `atividade`
--
ALTER TABLE `atividade`
  ADD PRIMARY KEY (`codAtividade`),
  ADD KEY `codLocal` (`codLocal`);

--
-- Indexes for table `ensinam`
--
ALTER TABLE `ensinam`
  ADD KEY `codProfessor` (`codProfessor`),
  ADD KEY `codAtividade` (`codAtividade`);

--
-- Indexes for table `equipamentos`
--
ALTER TABLE `equipamentos`
  ADD PRIMARY KEY (`codEquip`),
  ADD KEY `codUsuario` (`codUsuario`),
  ADD KEY `codProfessor` (`codProfessor`);

--
-- Indexes for table `especialistas`
--
ALTER TABLE `especialistas`
  ADD PRIMARY KEY (`codEspecialista`);

--
-- Indexes for table `locais`
--
ALTER TABLE `locais`
  ADD PRIMARY KEY (`codLocal`),
  ADD KEY `codProfessor` (`codProfessor`),
  ADD KEY `codUsuario` (`codUsuario`);

--
-- Indexes for table `monitoram`
--
ALTER TABLE `monitoram`
  ADD KEY `codAdmin` (`codAdmin`),
  ADD KEY `codUsuario` (`codUsuario`);

--
-- Indexes for table `postam`
--
ALTER TABLE `postam`
  ADD KEY `codEspecialista` (`codEspecialista`),
  ADD KEY `codPost` (`codPost`);

--
-- Indexes for table `praticam`
--
ALTER TABLE `praticam`
  ADD KEY `codUsuario` (`codUsuario`),
  ADD KEY `codAtividade` (`codAtividade`);

--
-- Indexes for table `professores`
--
--
-- Indexes for table `usam`
--
ALTER TABLE `usam`
  ADD KEY `codPost` (`codPost`),
  ADD KEY `codUsuario` (`codUsuario`);

--
-- Indexes for table `usuarios`
--

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `alugam`
--
ALTER TABLE `alugam`
  ADD CONSTRAINT `alugam_ibfk_1` FOREIGN KEY (`codEquip`) REFERENCES `equipamentos` (`codEquip`),
  ADD CONSTRAINT `alugam_ibfk_2` FOREIGN KEY (`codUsuario`) REFERENCES `usuarios` (`codUsuario`);

--
-- Limitadores para a tabela `atividade`
--
ALTER TABLE `atividade`
  ADD CONSTRAINT `atividade_ibfk_1` FOREIGN KEY (`codLocal`) REFERENCES `locais` (`codLocal`);

--
-- Limitadores para a tabela `ensinam`
--
ALTER TABLE `ensinam`
  ADD CONSTRAINT `ensinam_ibfk_1` FOREIGN KEY (`codProfessor`) REFERENCES `professores` (`codProfessor`),
  ADD CONSTRAINT `ensinam_ibfk_2` FOREIGN KEY (`codAtividade`) REFERENCES `atividade` (`codAtividade`);

--
-- Limitadores para a tabela `equipamentos`
--
ALTER TABLE `equipamentos`
  ADD CONSTRAINT `equipamentos_ibfk_1` FOREIGN KEY (`codUsuario`) REFERENCES `usuarios` (`codUsuario`),
  ADD CONSTRAINT `equipamentos_ibfk_2` FOREIGN KEY (`codProfessor`) REFERENCES `professores` (`codProfessor`);

--
-- Limitadores para a tabela `locais`
--
ALTER TABLE `locais`
  ADD CONSTRAINT `locais_ibfk_1` FOREIGN KEY (`codProfessor`) REFERENCES `professores` (`codProfessor`),
  ADD CONSTRAINT `locais_ibfk_2` FOREIGN KEY (`codUsuario`) REFERENCES `usuarios` (`codUsuario`);

--
-- Limitadores para a tabela `monitoram`
--
ALTER TABLE `monitoram`
  ADD CONSTRAINT `monitoram_ibfk_1` FOREIGN KEY (`codAdmin`) REFERENCES `administradores` (`codAdmin`),
  ADD CONSTRAINT `monitoram_ibfk_2` FOREIGN KEY (`codUsuario`) REFERENCES `usuarios` (`codUsuario`);

--
-- Limitadores para a tabela `postam`
--
ALTER TABLE `postam`
  ADD CONSTRAINT `postam_ibfk_1` FOREIGN KEY (`codEspecialista`) REFERENCES `especialistas` (`codEspecialista`),
  ADD CONSTRAINT `postam_ibfk_2` FOREIGN KEY (`codPost`) REFERENCES `areavippost` (`codPost`);

--
-- Limitadores para a tabela `praticam`
--
ALTER TABLE `praticam`
  ADD CONSTRAINT `praticam_ibfk_1` FOREIGN KEY (`codUsuario`) REFERENCES `usuarios` (`codUsuario`),
  ADD CONSTRAINT `praticam_ibfk_2` FOREIGN KEY (`codAtividade`) REFERENCES `atividade` (`codAtividade`);

--
-- Limitadores para a tabela `usam`
--
ALTER TABLE `usam`
  ADD CONSTRAINT `usam_ibfk_1` FOREIGN KEY (`codPost`) REFERENCES `areavippost` (`codPost`),
  ADD CONSTRAINT `usam_ibfk_2` FOREIGN KEY (`codUsuario`) REFERENCES `usuarios` (`codUsuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
