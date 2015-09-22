-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2015 at 02:17 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `m_status`
--

CREATE TABLE IF NOT EXISTS `m_status` (
  `code` int(1) NOT NULL COMMENT 'Kode status',
  `desc` varchar(50) NOT NULL COMMENT 'Deskripsi status',
  `color` varchar(8) NOT NULL COMMENT 'Warna legenda',
  `addby` varchar(20) NOT NULL COMMENT 'Dibuat oleh',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Tgl buat',
  `chby` varchar(20) NOT NULL COMMENT 'Diubah oleh',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Tgl Ubah'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabel Master Status';

--
-- Dumping data for table `m_status`
--

INSERT INTO `m_status` (`code`, `desc`, `color`, `addby`, `created_at`, `chby`, `updated_at`) VALUES
(0, 'Disable', '', 'imam', '2015-09-21 09:48:46', '', '2015-09-21 09:48:46'),
(1, 'Enable', '', 'imam', '2015-09-21 09:48:46', '', '2015-09-21 09:48:46');

-- --------------------------------------------------------

--
-- Table structure for table `m_user`
--

CREATE TABLE IF NOT EXISTS `m_user` (
  `usrid` varchar(20) NOT NULL COMMENT 'User ID',
  `id_grp` int(2) NOT NULL,
  `password` text COMMENT 'Password',
  `dispname` varchar(100) DEFAULT NULL COMMENT 'Nama user',
  `email` varchar(50) DEFAULT NULL COMMENT 'Email',
  `foto` varchar(100) NOT NULL COMMENT 'Foto user',
  `status` int(1) DEFAULT NULL COMMENT '0 = tidak aktif, 1 = aktif',
  `last_login` datetime NOT NULL COMMENT 'Login terakhir',
  `addby` varchar(20) NOT NULL COMMENT 'Dibuat oleh',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Tgl buat',
  `chby` varchar(20) NOT NULL COMMENT 'Diubah oleh',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Tgl ubah',
  `remember_token` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabel master user';

--
-- Dumping data for table `m_user`
--

INSERT INTO `m_user` (`usrid`, `id_grp`, `password`, `dispname`, `email`, `foto`, `status`, `last_login`, `addby`, `created_at`, `chby`, `updated_at`, `remember_token`) VALUES
('dian', 1, '$2y$10$fSVUpSnHB6Fxep/og.OHIOJwuupM9qOeljXBpl0aM8mNwuRAlglUO', 'Dian', 'imam@gmail.com', 'public/uploads/users/19092015143626.smlogo.png', 1, '0000-00-00 00:00:00', 'imam', '2015-09-19 15:39:12', 'imam', '2015-09-21 23:08:31', 'wb7mb49PmQQdN3IGsoTdjQ9mtEJMhtOk8BvWgvldldCKQ1MJq8TeW31pa66c'),
('imamwiguna', 1, '$2y$10$qPTLFikSrpxMzi4ifgQD0OM0Q.cb9T6ojWzEuAIKeeDUnPGf15gAS', 'Imam Wiguna', 'imam@gmail.com', 'public/uploads/users/18092015161534.avatar.fw.png', 0, '0000-00-00 00:00:00', '', '2015-09-18 17:25:10', '', '2015-09-18 09:15:34', ''),
('imamwiguna3', 1, '$2y$10$qyWyfXTLGWKE8NxHOqCwBux8iYxhextMkzCbbnh3TBHXLZfjwGf26', 'Imam Wiguna', 'imam@gmail.com', 'public/uploads/users/21092015082945.logoui.jpg', 0, '0000-00-00 00:00:00', 'imam', '2015-09-21 08:42:53', '', '2015-09-21 01:42:53', ''),
('yuan', 2, '$2y$10$tzZcAWdiQDuUZolzJbqzVeYATxweNUbynVsl9zvV7OdOeClNs5ENO', 'Yuan1', 'imam1@gmail.com', 'public/uploads/users/21092015081525.logo_baru_wgi_lengkap1.png', 0, '0000-00-00 00:00:00', 'imam', '2015-09-21 09:38:49', 'imam', '2015-09-21 08:05:54', '');

-- --------------------------------------------------------

--
-- Table structure for table `m_user_grp`
--

CREATE TABLE IF NOT EXISTS `m_user_grp` (
  `id_grp` int(2) NOT NULL,
  `grp_desc` varchar(50) NOT NULL,
  `addby` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Tgl buat',
  `chby` varchar(20) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Tgl Ubah'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabel.user group';

--
-- Dumping data for table `m_user_grp`
--

INSERT INTO `m_user_grp` (`id_grp`, `grp_desc`, `addby`, `created_at`, `chby`, `updated_at`) VALUES
(1, 'Administrator', 'imam', '2015-09-21 08:53:31', '', '0000-00-00 00:00:00'),
(2, 'Contributor', 'imam', '2015-09-21 08:54:19', '', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `m_status`
--
ALTER TABLE `m_status`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `m_user`
--
ALTER TABLE `m_user`
  ADD PRIMARY KEY (`usrid`);

--
-- Indexes for table `m_user_grp`
--
ALTER TABLE `m_user_grp`
  ADD PRIMARY KEY (`id_grp`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
