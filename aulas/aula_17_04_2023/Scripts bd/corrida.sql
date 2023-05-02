-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 08-Nov-2022 às 22:33
-- Versão do servidor: 10.4.18-MariaDB
-- versão do PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `corrida`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_circuito`
--

CREATE TABLE `tb_circuito` (
  `ID_CIRCUITO` int(11) NOT NULL,
  `NM_CIRCUITO` varchar(30) DEFAULT NULL,
  `NR_EXTENSAO` int(11) DEFAULT NULL,
  `ID_PAIS` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_circuito`
--

INSERT INTO `tb_circuito` (`ID_CIRCUITO`, `NM_CIRCUITO`, `NR_EXTENSAO`, `ID_PAIS`) VALUES
(1, 'Hockenheim', 4574, 1),
(2, 'Red Bull Ring', 4326, 2),
(3, 'Monza Circuit', 5793, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_equipe`
--

CREATE TABLE `tb_equipe` (
  `ID_EQUIPE` int(11) NOT NULL,
  `NM_EQUIPE` varchar(30) DEFAULT NULL,
  `ID_PAIS` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_equipe`
--

INSERT INTO `tb_equipe` (`ID_EQUIPE`, `NM_EQUIPE`, `ID_PAIS`) VALUES
(1, 'Mercedes', 1),
(2, 'Red Bull', 2),
(3, 'Ferrari', 3),
(4, 'Alfa Romeo', 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_pais`
--

CREATE TABLE `tb_pais` (
  `ID_PAIS` int(11) NOT NULL,
  `NM_PAIS` varchar(30) DEFAULT NULL,
  `NR_POPULACAO` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_pais`
--

INSERT INTO `tb_pais` (`ID_PAIS`, `NM_PAIS`, `NR_POPULACAO`) VALUES
(1, 'Alemanha', 82175700),
(2, 'Austria', 8387491),
(3, 'Italia', 60317000),
(4, 'Suica', 8508898),
(5, 'Reino Unido', 66723447);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_piloto`
--

CREATE TABLE `tb_piloto` (
  `ID_PILOTO` int(11) NOT NULL,
  `NM_PILOTO` varchar(40) DEFAULT NULL,
  `DT_NASCIMENTO` date DEFAULT NULL,
  `ID_PAIS` int(11) DEFAULT NULL,
  `ID_EQUIPE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_piloto`
--

INSERT INTO `tb_piloto` (`ID_PILOTO`, `NM_PILOTO`, `DT_NASCIMENTO`, `ID_PAIS`, `ID_EQUIPE`) VALUES
(1, 'Sebastian Vettel', '1987-07-03', 1, 3),
(2, 'Antonio Giovinazzi', '1993-12-14', 4, 4),
(3, 'Charles Leclerc', '1997-10-16', 3, 3),
(4, 'Lewis Hamilton', '1985-01-07', 5, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_prova`
--

CREATE TABLE `tb_prova` (
  `ID_PROVA` int(11) NOT NULL,
  `DT_PROVA` date DEFAULT NULL,
  `NM_SITUACAO` varchar(15) DEFAULT NULL,
  `ID_CIRCUITO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_prova`
--

INSERT INTO `tb_prova` (`ID_PROVA`, `DT_PROVA`, `NM_SITUACAO`, `ID_CIRCUITO`) VALUES
(1, '2019-07-28', 'Realizada', 1),
(2, '2019-06-30', 'Realizada', 2),
(3, '2019-09-08', 'Realizada', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_resultado`
--

CREATE TABLE `tb_resultado` (
  `ID_PROVA` int(11) NOT NULL,
  `ID_PILOTO` int(11) NOT NULL,
  `NR_TEMPO_PROVA` time DEFAULT NULL,
  `NR_COLOC_FINAL` int(11) DEFAULT NULL,
  `NR_POSICAO_GRID` int(11) DEFAULT NULL,
  `NR_MELHOR_VOLTA` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_resultado`
--

INSERT INTO `tb_resultado` (`ID_PROVA`, `ID_PILOTO`, `NR_TEMPO_PROVA`, `NR_COLOC_FINAL`, `NR_POSICAO_GRID`, `NR_MELHOR_VOLTA`) VALUES
(1, 1, '01:44:31', 5, 2, 20),
(2, 3, '01:22:01', 2, 1, 16),
(3, 4, '01:15:26', 3, 2, 44);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tb_circuito`
--
ALTER TABLE `tb_circuito`
  ADD PRIMARY KEY (`ID_CIRCUITO`),
  ADD KEY `ID_PAIS` (`ID_PAIS`);

--
-- Índices para tabela `tb_equipe`
--
ALTER TABLE `tb_equipe`
  ADD PRIMARY KEY (`ID_EQUIPE`),
  ADD KEY `ID_PAIS` (`ID_PAIS`);

--
-- Índices para tabela `tb_pais`
--
ALTER TABLE `tb_pais`
  ADD PRIMARY KEY (`ID_PAIS`);

--
-- Índices para tabela `tb_piloto`
--
ALTER TABLE `tb_piloto`
  ADD PRIMARY KEY (`ID_PILOTO`),
  ADD KEY `ID_PAIS` (`ID_PAIS`),
  ADD KEY `ID_EQUIPE` (`ID_EQUIPE`);

--
-- Índices para tabela `tb_prova`
--
ALTER TABLE `tb_prova`
  ADD PRIMARY KEY (`ID_PROVA`),
  ADD KEY `ID_CIRCUITO` (`ID_CIRCUITO`);

--
-- Índices para tabela `tb_resultado`
--
ALTER TABLE `tb_resultado`
  ADD PRIMARY KEY (`ID_PROVA`,`ID_PILOTO`),
  ADD KEY `ID_PILOTO` (`ID_PILOTO`);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `tb_circuito`
--
ALTER TABLE `tb_circuito`
  ADD CONSTRAINT `tb_circuito_ibfk_1` FOREIGN KEY (`ID_PAIS`) REFERENCES `tb_pais` (`ID_PAIS`);

--
-- Limitadores para a tabela `tb_equipe`
--
ALTER TABLE `tb_equipe`
  ADD CONSTRAINT `tb_equipe_ibfk_1` FOREIGN KEY (`ID_PAIS`) REFERENCES `tb_pais` (`ID_PAIS`);

--
-- Limitadores para a tabela `tb_piloto`
--
ALTER TABLE `tb_piloto`
  ADD CONSTRAINT `tb_piloto_ibfk_1` FOREIGN KEY (`ID_PAIS`) REFERENCES `tb_pais` (`ID_PAIS`),
  ADD CONSTRAINT `tb_piloto_ibfk_2` FOREIGN KEY (`ID_EQUIPE`) REFERENCES `tb_equipe` (`ID_EQUIPE`);

--
-- Limitadores para a tabela `tb_prova`
--
ALTER TABLE `tb_prova`
  ADD CONSTRAINT `tb_prova_ibfk_1` FOREIGN KEY (`ID_CIRCUITO`) REFERENCES `tb_circuito` (`ID_CIRCUITO`);

--
-- Limitadores para a tabela `tb_resultado`
--
ALTER TABLE `tb_resultado`
  ADD CONSTRAINT `tb_resultado_ibfk_1` FOREIGN KEY (`ID_PROVA`) REFERENCES `tb_prova` (`ID_PROVA`),
  ADD CONSTRAINT `tb_resultado_ibfk_2` FOREIGN KEY (`ID_PILOTO`) REFERENCES `tb_piloto` (`ID_PILOTO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
