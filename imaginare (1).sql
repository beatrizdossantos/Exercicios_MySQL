-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 02-Dez-2019 às 08:49
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
-- Database: `imaginare`
--
CREATE DATABASE IF NOT EXISTS `imaginare` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `imaginare`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `administradores`
--

CREATE TABLE `administradores` (
  `senha` varchar(20) NOT NULL,
  `mesNasc` int(11) NOT NULL,
  `diaNasc` int(11) NOT NULL,
  `anoNasc` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `codAdmin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `administradores`
--

INSERT INTO `administradores` (`senha`, `mesNasc`, `diaNasc`, `anoNasc`, `email`, `nome`, `codAdmin`) VALUES
('1234', 11, 26, 2003, 'jujukbibi@gmail.com', 'Beatriz dos Santos Silva', 1),
('5678', 9, 25, 2003, 'beatriz.estudo@gmail.com', 'Beatriz Ribeiro da Silva', 2),
('9101', 2, 7, 2003, 'claudia.galindo@gmail.com', 'Claudia Galindo dos Santos', 3),
('1121', 10, 9, 2003, 'giuliatprando@gmail.com', 'Giulia Prando', 4),
('3141', 5, 3, 2003, 'gu.jja.08@gmail.com', 'Gustavo Ferreira dos Santos', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `comprampac`
--

CREATE TABLE `comprampac` (
  `qtdeAlunos` int(11) NOT NULL,
  `qtdePacotes` int(11) NOT NULL,
  `valorTotal` decimal(7,2) NOT NULL,
  `codPacote` int(11) NOT NULL,
  `codEscola` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `contemlivrospac`
--

CREATE TABLE `contemlivrospac` (
  `qtdeLivros` int(11) NOT NULL,
  `codLivro` int(11) NOT NULL,
  `codPacote` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `criaforum`
--

CREATE TABLE `criaforum` (
  `mesInicio` int(11) NOT NULL,
  `anoInicio` int(11) NOT NULL,
  `diaInicio` int(11) NOT NULL,
  `codAdmin` int(11) NOT NULL,
  `codForum` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `escolas`
--

CREATE TABLE `escolas` (
  `email` varchar(30) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `codEscola` int(11) NOT NULL,
  `fixo` varchar(15) DEFAULT NULL,
  `celular` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `escrever`
--

CREATE TABLE `escrever` (
  `anoP` int(11) NOT NULL,
  `diaP` int(11) NOT NULL,
  `mesP` int(11) NOT NULL,
  `mesF` int(11) NOT NULL,
  `diaF` int(11) NOT NULL,
  `anoF` int(11) NOT NULL,
  `codEscritor` int(11) NOT NULL,
  `codLivro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `escritores`
--

CREATE TABLE `escritores` (
  `codEscritor` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(20) NOT NULL,
  `mesNasc` int(11) NOT NULL,
  `diaNasc` int(11) NOT NULL,
  `anoNasc` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `mesCadastro` int(11) NOT NULL,
  `diaCadastro` int(11) NOT NULL,
  `anoCadastro` int(11) NOT NULL,
  `condição` varchar(50) NOT NULL,
  `Premium` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `escritores`
--

INSERT INTO `escritores` (`codEscritor`, `email`, `senha`, `mesNasc`, `diaNasc`, `anoNasc`, `nome`, `mesCadastro`, `diaCadastro`, `anoCadastro`, `condição`, `Premium`) VALUES
(1, 'jubeakpoper@gmail.com', '1234', 5, 23, 2003, 'k_zill', 10, 20, 2019, 'nenhuma', b'0');

-- --------------------------------------------------------

--
-- Estrutura da tabela `forum`
--

CREATE TABLE `forum` (
  `titulo` varchar(30) NOT NULL,
  `codForum` int(11) NOT NULL,
  `codLivro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `leitores`
--

CREATE TABLE `leitores` (
  `condição` varchar(50) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `senha` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `codLeitor` int(11) NOT NULL,
  `mesNasc` int(11) NOT NULL,
  `diaNasc` int(11) NOT NULL,
  `anoNasc` int(11) NOT NULL,
  `mesCad` int(11) NOT NULL,
  `anoCad` int(11) NOT NULL,
  `diaCad` int(11) NOT NULL,
  `Premium` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `leitores`
--

INSERT INTO `leitores` (`condição`, `nome`, `senha`, `email`, `codLeitor`, `mesNasc`, `diaNasc`, `anoNasc`, `mesCad`, `anoCad`, `diaCad`, `Premium`) VALUES
('nenhuma', 'Loreninhamega12', '123456', 'loreninhamega12@gmail.com', 12, 8, 26, 2003, 11, 19, 25, b'1'),
('autista', 'Beatriz', '1234', 'jubeakpoper@gmail.com', 14, 1, 5, 2004, 12, 19, 1, b'1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `lercomprarlivros`
--

CREATE TABLE `lercomprarlivros` (
  `valorTotal` decimal(7,2) NOT NULL,
  `codLeitor` int(11) NOT NULL,
  `codLivro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `livros`
--

CREATE TABLE `livros` (
  `genero` varchar(30) NOT NULL,
  `codLivro` int(11) NOT NULL,
  `autor` varchar(50) NOT NULL,
  `sinopse` varchar(3000) NOT NULL,
  `qtdeCapitulos` int(11) NOT NULL,
  `tags` varchar(50) NOT NULL,
  `titulo` varchar(30) NOT NULL,
  `livro` varchar(8000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `livros`
--

INSERT INTO `livros` (`genero`, `codLivro`, `autor`, `sinopse`, `qtdeCapitulos`, `tags`, `titulo`, `livro`) VALUES
('Romance', 1, 'Elza Kigei', 'Lorem Ipsum Odio sed id eos et laboriosam consequatur eos earum soluta. \r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\nAut dolor id. Sint aliquam consequatur ex ex labore. Et quis qui dolor nulla dolores neque. Aspernatur consectetur omnis numquam quaerat. \r\nSed fugiat nisi. Officiis veniam molestiae. Et vel ut quidem alias veritatis repudiandae ut fugit. Est ut eligendi aspernatur nulla voluptates veniam \r\niusto vel quisquam. Fugit ut maxime incidunt accusantium totam repellendus eum error. Et repudiandae eum iste qui et ut ab alias.\r\nUllamco laboris nisi ut aliquip ex ea commodo consequat.\r\n Duis aute irure dolor in reprehenderit in voluptate velit.\r\n Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate trideta storacalaperda mastiro dolore eu fugiat nulla pariatur.', 5, '#romance #aventura #imaginare', 'Livro 1', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nWhy do we use it?\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n\r\nWhere does it come from?\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.\r\n\r\nWhere can I get some?\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.'),
('Romance', 2, 'Keitlyn Dias', '\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"  1914 translation by H. Rackham \"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"', 5, '#imaginare #books', 'Livro 2', 'The standard Lorem Ipsum passage, used since the 1500s \"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"  Section 1.10.32 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC \"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"  1914 translation by H. Rackham \"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"  Section 1.10.33 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC \"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"  1914 translation by H. Rackham \"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"'),
('FICÇAO', 3, 'ASDASD', 'JHASDHGASDGHASGDH', 34, 'JAHSDJHS', 'GHFGFGF', 'BLBALBA'),
('Romance', 4, 'bia', 'aaa', 1, 'aaaa', 'aaaa', 'Desespero'),
('romance', 5, 'biazinha', 'era um belo dia', 1, 'aaa', 'desespero', 'nada belo nao'),
('romance', 6, 'aaa', 'aaaaa', 1, 'aaa', 'aaaa', 'aaaaa');

-- --------------------------------------------------------

--
-- Estrutura da tabela `monitoramlivros`
--

CREATE TABLE `monitoramlivros` (
  `qtdeLivros` int(11) NOT NULL,
  `codLivro` int(11) NOT NULL,
  `codAdmin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pacotes`
--

CREATE TABLE `pacotes` (
  `codPacote` int(11) NOT NULL,
  `titulo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usamforum`
--

CREATE TABLE `usamforum` (
  `qtdeLeitores` int(11) NOT NULL,
  `mensagem` varchar(100) DEFAULT NULL,
  `codLeitor` int(11) NOT NULL,
  `codForum` int(11) NOT NULL
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
-- Indexes for table `comprampac`
--
ALTER TABLE `comprampac`
  ADD KEY `codPacote` (`codPacote`),
  ADD KEY `codEscola` (`codEscola`);

--
-- Indexes for table `contemlivrospac`
--
ALTER TABLE `contemlivrospac`
  ADD KEY `codLivro` (`codLivro`),
  ADD KEY `codPacote` (`codPacote`);

--
-- Indexes for table `criaforum`
--
ALTER TABLE `criaforum`
  ADD KEY `codAdmin` (`codAdmin`),
  ADD KEY `codForum` (`codForum`);

--
-- Indexes for table `escolas`
--
ALTER TABLE `escolas`
  ADD PRIMARY KEY (`codEscola`);

--
-- Indexes for table `escrever`
--
ALTER TABLE `escrever`
  ADD KEY `codEscritor` (`codEscritor`);

--
-- Indexes for table `escritores`
--
ALTER TABLE `escritores`
  ADD PRIMARY KEY (`codEscritor`);

--
-- Indexes for table `forum`
--
ALTER TABLE `forum`
  ADD PRIMARY KEY (`codForum`),
  ADD KEY `codLivro` (`codLivro`);

--
-- Indexes for table `leitores`
--
ALTER TABLE `leitores`
  ADD PRIMARY KEY (`codLeitor`);

--
-- Indexes for table `lercomprarlivros`
--
ALTER TABLE `lercomprarlivros`
  ADD KEY `codLeitor` (`codLeitor`),
  ADD KEY `codLivro` (`codLivro`);

--
-- Indexes for table `livros`
--
ALTER TABLE `livros`
  ADD PRIMARY KEY (`codLivro`);

--
-- Indexes for table `monitoramlivros`
--
ALTER TABLE `monitoramlivros`
  ADD KEY `codLivro` (`codLivro`),
  ADD KEY `codAdmin` (`codAdmin`);

--
-- Indexes for table `pacotes`
--
ALTER TABLE `pacotes`
  ADD PRIMARY KEY (`codPacote`);

--
-- Indexes for table `usamforum`
--
ALTER TABLE `usamforum`
  ADD KEY `codLeitor` (`codLeitor`),
  ADD KEY `codForum` (`codForum`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administradores`
--
ALTER TABLE `administradores`
  MODIFY `codAdmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `escolas`
--
ALTER TABLE `escolas`
  MODIFY `codEscola` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `escritores`
--
ALTER TABLE `escritores`
  MODIFY `codEscritor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `forum`
--
ALTER TABLE `forum`
  MODIFY `codForum` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leitores`
--
ALTER TABLE `leitores`
  MODIFY `codLeitor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `livros`
--
ALTER TABLE `livros`
  MODIFY `codLivro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pacotes`
--
ALTER TABLE `pacotes`
  MODIFY `codPacote` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `comprampac`
--
ALTER TABLE `comprampac`
  ADD CONSTRAINT `comprampac_ibfk_1` FOREIGN KEY (`codPacote`) REFERENCES `pacotes` (`codPacote`),
  ADD CONSTRAINT `comprampac_ibfk_2` FOREIGN KEY (`codEscola`) REFERENCES `escolas` (`codEscola`);

--
-- Limitadores para a tabela `contemlivrospac`
--
ALTER TABLE `contemlivrospac`
  ADD CONSTRAINT `contemlivrospac_ibfk_1` FOREIGN KEY (`codLivro`) REFERENCES `livros` (`codLivro`),
  ADD CONSTRAINT `contemlivrospac_ibfk_2` FOREIGN KEY (`codPacote`) REFERENCES `pacotes` (`codPacote`);

--
-- Limitadores para a tabela `criaforum`
--
ALTER TABLE `criaforum`
  ADD CONSTRAINT `criaforum_ibfk_1` FOREIGN KEY (`codAdmin`) REFERENCES `administradores` (`codAdmin`),
  ADD CONSTRAINT `criaforum_ibfk_2` FOREIGN KEY (`codForum`) REFERENCES `forum` (`codForum`);

--
-- Limitadores para a tabela `forum`
--
ALTER TABLE `forum`
  ADD CONSTRAINT `forum_ibfk_1` FOREIGN KEY (`codLivro`) REFERENCES `livros` (`codLivro`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
