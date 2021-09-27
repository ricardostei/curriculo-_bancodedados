-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27-Set-2021 às 19:41
-- Versão do servidor: 10.4.6-MariaDB
-- versão do PHP: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `curriculo_2`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `info_curriculo`
--

CREATE TABLE `info_curriculo` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cargo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `experiencia` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `educacao` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `contato` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `imagem` varchar(255) NOT NULL,
  `formacao` varchar(255) NOT NULL,
  `ferramentas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `info_curriculo`
--

INSERT INTO `info_curriculo` (`id`, `nome`, `cargo`, `experiencia`, `educacao`, `contato`, `telefone`, `imagem`, `formacao`, `ferramentas`) VALUES
(1, 'Ricardo ', 'Consultor de TI', 'Analista de Suporte, Desenvolvedor, Tester\r\n', 'Técnico em informática', 'ricardo.steilein@prof.senac.sc.br', '47(99951-9962)', 'img/peixe.jpg', '', ''),
(2, 'João', 'Analista de RH', 'Recrutamento e Seleção', 'Formado em Gestão de RH e Pós Graduado', 'joao@gmail.com', '4794446554', 'img/pinguim.png', '', ''),
(3, 'teste', 'teste', 'sdadsasda', 'sdasdasda', 'sdasdasda', '4794446554', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `nome` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `permissao` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`nome`, `senha`, `permissao`) VALUES
('admin', 'admin', 1),
('leitura', 'leitura', 2);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `info_curriculo`
--
ALTER TABLE `info_curriculo`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
