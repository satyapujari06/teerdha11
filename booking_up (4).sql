-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2024 at 08:30 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `booking_up`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add cab_booking', 7, 'add_cab_booking'),
(26, 'Can change cab_booking', 7, 'change_cab_booking'),
(27, 'Can delete cab_booking', 7, 'delete_cab_booking'),
(28, 'Can view cab_booking', 7, 'view_cab_booking'),
(29, 'Can add naviagtion_bar', 8, 'add_naviagtion_bar'),
(30, 'Can change naviagtion_bar', 8, 'change_naviagtion_bar'),
(31, 'Can delete naviagtion_bar', 8, 'delete_naviagtion_bar'),
(32, 'Can view naviagtion_bar', 8, 'view_naviagtion_bar'),
(33, 'Can add home_carousel', 9, 'add_home_carousel'),
(34, 'Can change home_carousel', 9, 'change_home_carousel'),
(35, 'Can delete home_carousel', 9, 'delete_home_carousel'),
(36, 'Can view home_carousel', 9, 'view_home_carousel'),
(37, 'Can add hotel_offers', 10, 'add_hotel_offers'),
(38, 'Can change hotel_offers', 10, 'change_hotel_offers'),
(39, 'Can delete hotel_offers', 10, 'delete_hotel_offers'),
(40, 'Can view hotel_offers', 10, 'view_hotel_offers'),
(41, 'Can add contact', 11, 'add_contact'),
(42, 'Can change contact', 11, 'change_contact'),
(43, 'Can delete contact', 11, 'delete_contact'),
(44, 'Can view contact', 11, 'view_contact'),
(45, 'Can add faq item', 12, 'add_faqitem'),
(46, 'Can change faq item', 12, 'change_faqitem'),
(47, 'Can delete faq item', 12, 'delete_faqitem'),
(48, 'Can view faq item', 12, 'view_faqitem'),
(49, 'Can add hotel_faq item', 12, 'add_hotel_faqitem'),
(50, 'Can change hotel_faq item', 12, 'change_hotel_faqitem'),
(51, 'Can delete hotel_faq item', 12, 'delete_hotel_faqitem'),
(52, 'Can view hotel_faq item', 12, 'view_hotel_faqitem'),
(53, 'Can add blog', 13, 'add_blog'),
(54, 'Can change blog', 13, 'change_blog'),
(55, 'Can delete blog', 13, 'delete_blog'),
(56, 'Can view blog', 13, 'view_blog'),
(57, 'Can add deg', 14, 'add_deg'),
(58, 'Can change deg', 14, 'change_deg'),
(59, 'Can delete deg', 14, 'delete_deg'),
(60, 'Can view deg', 14, 'view_deg'),
(61, 'Can add facilities', 15, 'add_facilities'),
(62, 'Can change facilities', 15, 'change_facilities'),
(63, 'Can delete facilities', 15, 'delete_facilities'),
(64, 'Can view facilities', 15, 'view_facilities'),
(65, 'Can add facilities1', 16, 'add_facilities1'),
(66, 'Can change facilities1', 16, 'change_facilities1'),
(67, 'Can delete facilities1', 16, 'delete_facilities1'),
(68, 'Can view facilities1', 16, 'view_facilities1'),
(69, 'Can add footer', 17, 'add_footer'),
(70, 'Can change footer', 17, 'change_footer'),
(71, 'Can delete footer', 17, 'delete_footer'),
(72, 'Can view footer', 17, 'view_footer'),
(73, 'Can add footer1', 18, 'add_footer1'),
(74, 'Can change footer1', 18, 'change_footer1'),
(75, 'Can delete footer1', 18, 'delete_footer1'),
(76, 'Can view footer1', 18, 'view_footer1'),
(77, 'Can add footer2', 19, 'add_footer2'),
(78, 'Can change footer2', 19, 'change_footer2'),
(79, 'Can delete footer2', 19, 'delete_footer2'),
(80, 'Can view footer2', 19, 'view_footer2'),
(81, 'Can add footer3', 20, 'add_footer3'),
(82, 'Can change footer3', 20, 'change_footer3'),
(83, 'Can delete footer3', 20, 'delete_footer3'),
(84, 'Can view footer3', 20, 'view_footer3'),
(85, 'Can add footer4', 21, 'add_footer4'),
(86, 'Can change footer4', 21, 'change_footer4'),
(87, 'Can delete footer4', 21, 'delete_footer4'),
(88, 'Can view footer4', 21, 'view_footer4'),
(89, 'Can add footer5', 22, 'add_footer5'),
(90, 'Can change footer5', 22, 'change_footer5'),
(91, 'Can delete footer5', 22, 'delete_footer5'),
(92, 'Can view footer5', 22, 'view_footer5'),
(93, 'Can add footer6', 23, 'add_footer6'),
(94, 'Can change footer6', 23, 'change_footer6'),
(95, 'Can delete footer6', 23, 'delete_footer6'),
(96, 'Can view footer6', 23, 'view_footer6'),
(97, 'Can add hotels', 24, 'add_hotels'),
(98, 'Can change hotels', 24, 'change_hotels'),
(99, 'Can delete hotels', 24, 'delete_hotels'),
(100, 'Can view hotels', 24, 'view_hotels'),
(101, 'Can add hotels1', 25, 'add_hotels1'),
(102, 'Can change hotels1', 25, 'change_hotels1'),
(103, 'Can delete hotels1', 25, 'delete_hotels1'),
(104, 'Can view hotels1', 25, 'view_hotels1'),
(105, 'Can add hotels2', 26, 'add_hotels2'),
(106, 'Can change hotels2', 26, 'change_hotels2'),
(107, 'Can delete hotels2', 26, 'delete_hotels2'),
(108, 'Can view hotels2', 26, 'view_hotels2'),
(109, 'Can add faq', 27, 'add_faq'),
(110, 'Can change faq', 27, 'change_faq'),
(111, 'Can delete faq', 27, 'delete_faq'),
(112, 'Can view faq', 27, 'view_faq'),
(113, 'Can add card1_offerdetailes', 28, 'add_card1_offerdetailes'),
(114, 'Can change card1_offerdetailes', 28, 'change_card1_offerdetailes'),
(115, 'Can delete card1_offerdetailes', 28, 'delete_card1_offerdetailes'),
(116, 'Can view card1_offerdetailes', 28, 'view_card1_offerdetailes'),
(117, 'Can add card1_offers', 29, 'add_card1_offers'),
(118, 'Can change card1_offers', 29, 'change_card1_offers'),
(119, 'Can delete card1_offers', 29, 'delete_card1_offers'),
(120, 'Can view card1_offers', 29, 'view_card1_offers'),
(121, 'Can add card1_terms_conditions', 30, 'add_card1_terms_conditions'),
(122, 'Can change card1_terms_conditions', 30, 'change_card1_terms_conditions'),
(123, 'Can delete card1_terms_conditions', 30, 'delete_card1_terms_conditions'),
(124, 'Can view card1_terms_conditions', 30, 'view_card1_terms_conditions'),
(125, 'Can add choosing_content', 31, 'add_choosing_content'),
(126, 'Can change choosing_content', 31, 'change_choosing_content'),
(127, 'Can delete choosing_content', 31, 'delete_choosing_content'),
(128, 'Can view choosing_content', 31, 'view_choosing_content'),
(129, 'Can add faqs', 32, 'add_faqs'),
(130, 'Can change faqs', 32, 'change_faqs'),
(131, 'Can delete faqs', 32, 'delete_faqs'),
(132, 'Can view faqs', 32, 'view_faqs'),
(133, 'Can add flight_offer_first', 33, 'add_flight_offer_first'),
(134, 'Can change flight_offer_first', 33, 'change_flight_offer_first'),
(135, 'Can delete flight_offer_first', 33, 'delete_flight_offer_first'),
(136, 'Can view flight_offer_first', 33, 'view_flight_offer_first'),
(137, 'Can add flight_offer_first1', 34, 'add_flight_offer_first1'),
(138, 'Can change flight_offer_first1', 34, 'change_flight_offer_first1'),
(139, 'Can delete flight_offer_first1', 34, 'delete_flight_offer_first1'),
(140, 'Can view flight_offer_first1', 34, 'view_flight_offer_first1'),
(141, 'Can add flight_offers7', 35, 'add_flight_offers7'),
(142, 'Can change flight_offers7', 35, 'change_flight_offers7'),
(143, 'Can delete flight_offers7', 35, 'delete_flight_offers7'),
(144, 'Can view flight_offers7', 35, 'view_flight_offers7'),
(145, 'Can add flight_offers8', 36, 'add_flight_offers8'),
(146, 'Can change flight_offers8', 36, 'change_flight_offers8'),
(147, 'Can delete flight_offers8', 36, 'delete_flight_offers8'),
(148, 'Can view flight_offers8', 36, 'view_flight_offers8'),
(149, 'Can add flights_offercards', 37, 'add_flights_offercards'),
(150, 'Can change flights_offercards', 37, 'change_flights_offercards'),
(151, 'Can delete flights_offercards', 37, 'delete_flights_offercards'),
(152, 'Can view flights_offercards', 37, 'view_flights_offercards'),
(153, 'Can add hdfc_logo', 38, 'add_hdfc_logo'),
(154, 'Can change hdfc_logo', 38, 'change_hdfc_logo'),
(155, 'Can delete hdfc_logo', 38, 'delete_hdfc_logo'),
(156, 'Can view hdfc_logo', 38, 'view_hdfc_logo'),
(157, 'Can add hdfc_offer', 39, 'add_hdfc_offer'),
(158, 'Can change hdfc_offer', 39, 'change_hdfc_offer'),
(159, 'Can delete hdfc_offer', 39, 'delete_hdfc_offer'),
(160, 'Can view hdfc_offer', 39, 'view_hdfc_offer'),
(161, 'Can add icic_offer', 40, 'add_icic_offer'),
(162, 'Can change icic_offer', 40, 'change_icic_offer'),
(163, 'Can delete icic_offer', 40, 'delete_icic_offer'),
(164, 'Can view icic_offer', 40, 'view_icic_offer'),
(165, 'Can add icic_terms', 41, 'add_icic_terms'),
(166, 'Can change icic_terms', 41, 'change_icic_terms'),
(167, 'Can delete icic_terms', 41, 'delete_icic_terms'),
(168, 'Can view icic_terms', 41, 'view_icic_terms'),
(169, 'Can add kotak_offer', 42, 'add_kotak_offer'),
(170, 'Can change kotak_offer', 42, 'change_kotak_offer'),
(171, 'Can delete kotak_offer', 42, 'delete_kotak_offer'),
(172, 'Can view kotak_offer', 42, 'view_kotak_offer'),
(173, 'Can add kotak_offer1', 43, 'add_kotak_offer1'),
(174, 'Can change kotak_offer1', 43, 'change_kotak_offer1'),
(175, 'Can delete kotak_offer1', 43, 'delete_kotak_offer1'),
(176, 'Can view kotak_offer1', 43, 'view_kotak_offer1'),
(177, 'Can add kotak_terms', 44, 'add_kotak_terms'),
(178, 'Can change kotak_terms', 44, 'change_kotak_terms'),
(179, 'Can delete kotak_terms', 44, 'delete_kotak_terms'),
(180, 'Can view kotak_terms', 44, 'view_kotak_terms'),
(181, 'Can add policy', 45, 'add_policy'),
(182, 'Can change policy', 45, 'change_policy'),
(183, 'Can delete policy', 45, 'delete_policy'),
(184, 'Can view policy', 45, 'view_policy'),
(185, 'Can add policy1', 46, 'add_policy1'),
(186, 'Can change policy1', 46, 'change_policy1'),
(187, 'Can delete policy1', 46, 'delete_policy1'),
(188, 'Can view policy1', 46, 'view_policy1'),
(189, 'Can add sbiimage', 47, 'add_sbiimage'),
(190, 'Can change sbiimage', 47, 'change_sbiimage'),
(191, 'Can delete sbiimage', 47, 'delete_sbiimage'),
(192, 'Can view sbiimage', 47, 'view_sbiimage'),
(193, 'Can add sbioffer', 48, 'add_sbioffer'),
(194, 'Can change sbioffer', 48, 'change_sbioffer'),
(195, 'Can delete sbioffer', 48, 'delete_sbioffer'),
(196, 'Can view sbioffer', 48, 'view_sbioffer'),
(197, 'Can add sbiterms', 49, 'add_sbiterms'),
(198, 'Can change sbiterms', 49, 'change_sbiterms'),
(199, 'Can delete sbiterms', 49, 'delete_sbiterms'),
(200, 'Can view sbiterms', 49, 'view_sbiterms'),
(201, 'Can add why_choose', 50, 'add_why_choose'),
(202, 'Can change why_choose', 50, 'change_why_choose'),
(203, 'Can delete why_choose', 50, 'delete_why_choose'),
(204, 'Can view why_choose', 50, 'view_why_choose'),
(205, 'Can add zero_cancellation_offer', 51, 'add_zero_cancellation_offer'),
(206, 'Can change zero_cancellation_offer', 51, 'change_zero_cancellation_offer'),
(207, 'Can delete zero_cancellation_offer', 51, 'delete_zero_cancellation_offer'),
(208, 'Can view zero_cancellation_offer', 51, 'view_zero_cancellation_offer'),
(209, 'Can add zero_cancellation_terms', 52, 'add_zero_cancellation_terms'),
(210, 'Can change zero_cancellation_terms', 52, 'change_zero_cancellation_terms'),
(211, 'Can delete zero_cancellation_terms', 52, 'delete_zero_cancellation_terms'),
(212, 'Can view zero_cancellation_terms', 52, 'view_zero_cancellation_terms'),
(213, 'Can add axis_offer', 53, 'add_axis_offer'),
(214, 'Can change axis_offer', 53, 'change_axis_offer'),
(215, 'Can delete axis_offer', 53, 'delete_axis_offer'),
(216, 'Can view axis_offer', 53, 'view_axis_offer'),
(217, 'Can add axis_offer1', 54, 'add_axis_offer1'),
(218, 'Can change axis_offer1', 54, 'change_axis_offer1'),
(219, 'Can delete axis_offer1', 54, 'delete_axis_offer1'),
(220, 'Can view axis_offer1', 54, 'view_axis_offer1'),
(221, 'Can add axis_policy', 55, 'add_axis_policy'),
(222, 'Can change axis_policy', 55, 'change_axis_policy'),
(223, 'Can delete axis_policy', 55, 'delete_axis_policy'),
(224, 'Can view axis_policy', 55, 'view_axis_policy'),
(225, 'Can add cards', 56, 'add_cards'),
(226, 'Can change cards', 56, 'change_cards'),
(227, 'Can delete cards', 56, 'delete_cards'),
(228, 'Can view cards', 56, 'view_cards'),
(229, 'Can add faq item', 57, 'add_faqitem'),
(230, 'Can change faq item', 57, 'change_faqitem'),
(231, 'Can delete faq item', 57, 'delete_faqitem'),
(232, 'Can view faq item', 57, 'view_faqitem'),
(233, 'Can add federal_offer', 58, 'add_federal_offer'),
(234, 'Can change federal_offer', 58, 'change_federal_offer'),
(235, 'Can delete federal_offer', 58, 'delete_federal_offer'),
(236, 'Can view federal_offer', 58, 'view_federal_offer'),
(237, 'Can add federal_offer1', 59, 'add_federal_offer1'),
(238, 'Can change federal_offer1', 59, 'change_federal_offer1'),
(239, 'Can delete federal_offer1', 59, 'delete_federal_offer1'),
(240, 'Can view federal_offer1', 59, 'view_federal_offer1'),
(241, 'Can add federal_policy', 60, 'add_federal_policy'),
(242, 'Can change federal_policy', 60, 'change_federal_policy'),
(243, 'Can delete federal_policy', 60, 'delete_federal_policy'),
(244, 'Can view federal_policy', 60, 'view_federal_policy'),
(245, 'Can add hotel_kotakoffer', 61, 'add_hotel_kotakoffer'),
(246, 'Can change hotel_kotakoffer', 61, 'change_hotel_kotakoffer'),
(247, 'Can delete hotel_kotakoffer', 61, 'delete_hotel_kotakoffer'),
(248, 'Can view hotel_kotakoffer', 61, 'view_hotel_kotakoffer'),
(249, 'Can add hotel_kotakoffer1', 62, 'add_hotel_kotakoffer1'),
(250, 'Can change hotel_kotakoffer1', 62, 'change_hotel_kotakoffer1'),
(251, 'Can delete hotel_kotakoffer1', 62, 'delete_hotel_kotakoffer1'),
(252, 'Can view hotel_kotakoffer1', 62, 'view_hotel_kotakoffer1'),
(253, 'Can add hotel_kotakpolicy', 63, 'add_hotel_kotakpolicy'),
(254, 'Can change hotel_kotakpolicy', 63, 'change_hotel_kotakpolicy'),
(255, 'Can delete hotel_kotakpolicy', 63, 'delete_hotel_kotakpolicy'),
(256, 'Can view hotel_kotakpolicy', 63, 'view_hotel_kotakpolicy'),
(257, 'Can add hsbc_offer', 64, 'add_hsbc_offer'),
(258, 'Can change hsbc_offer', 64, 'change_hsbc_offer'),
(259, 'Can delete hsbc_offer', 64, 'delete_hsbc_offer'),
(260, 'Can view hsbc_offer', 64, 'view_hsbc_offer'),
(261, 'Can add hsbc_offer1', 65, 'add_hsbc_offer1'),
(262, 'Can change hsbc_offer1', 65, 'change_hsbc_offer1'),
(263, 'Can delete hsbc_offer1', 65, 'delete_hsbc_offer1'),
(264, 'Can view hsbc_offer1', 65, 'view_hsbc_offer1'),
(265, 'Can add hsbc_policy', 66, 'add_hsbc_policy'),
(266, 'Can change hsbc_policy', 66, 'change_hsbc_policy'),
(267, 'Can delete hsbc_policy', 66, 'delete_hsbc_policy'),
(268, 'Can view hsbc_policy', 66, 'view_hsbc_policy'),
(269, 'Can add icici_offer', 67, 'add_icici_offer'),
(270, 'Can change icici_offer', 67, 'change_icici_offer'),
(271, 'Can delete icici_offer', 67, 'delete_icici_offer'),
(272, 'Can view icici_offer', 67, 'view_icici_offer'),
(273, 'Can add icici_offer1', 68, 'add_icici_offer1'),
(274, 'Can change icici_offer1', 68, 'change_icici_offer1'),
(275, 'Can delete icici_offer1', 68, 'delete_icici_offer1'),
(276, 'Can view icici_offer1', 68, 'view_icici_offer1'),
(277, 'Can add icici_policy', 69, 'add_icici_policy'),
(278, 'Can change icici_policy', 69, 'change_icici_policy'),
(279, 'Can delete icici_policy', 69, 'delete_icici_policy'),
(280, 'Can view icici_policy', 69, 'view_icici_policy'),
(281, 'Can add quary', 70, 'add_quary'),
(282, 'Can change quary', 70, 'change_quary'),
(283, 'Can delete quary', 70, 'delete_quary'),
(284, 'Can view quary', 70, 'view_quary'),
(285, 'Can add sbi_offer', 71, 'add_sbi_offer'),
(286, 'Can change sbi_offer', 71, 'change_sbi_offer'),
(287, 'Can delete sbi_offer', 71, 'delete_sbi_offer'),
(288, 'Can view sbi_offer', 71, 'view_sbi_offer'),
(289, 'Can add sbi_offer1', 72, 'add_sbi_offer1'),
(290, 'Can change sbi_offer1', 72, 'change_sbi_offer1'),
(291, 'Can delete sbi_offer1', 72, 'delete_sbi_offer1'),
(292, 'Can view sbi_offer1', 72, 'view_sbi_offer1'),
(293, 'Can add sbi_policy', 73, 'add_sbi_policy'),
(294, 'Can change sbi_policy', 73, 'change_sbi_policy'),
(295, 'Can delete sbi_policy', 73, 'delete_sbi_policy'),
(296, 'Can view sbi_policy', 73, 'view_sbi_policy'),
(297, 'Can add hotel_axisoffer', 53, 'add_hotel_axisoffer'),
(298, 'Can change hotel_axisoffer', 53, 'change_hotel_axisoffer'),
(299, 'Can delete hotel_axisoffer', 53, 'delete_hotel_axisoffer'),
(300, 'Can view hotel_axisoffer', 53, 'view_hotel_axisoffer'),
(301, 'Can add hotel_axisoffer1', 54, 'add_hotel_axisoffer1'),
(302, 'Can change hotel_axisoffer1', 54, 'change_hotel_axisoffer1'),
(303, 'Can delete hotel_axisoffer1', 54, 'delete_hotel_axisoffer1'),
(304, 'Can view hotel_axisoffer1', 54, 'view_hotel_axisoffer1'),
(305, 'Can add hotel_axispolicy', 55, 'add_hotel_axispolicy'),
(306, 'Can change hotel_axispolicy', 55, 'change_hotel_axispolicy'),
(307, 'Can delete hotel_axispolicy', 55, 'delete_hotel_axispolicy'),
(308, 'Can view hotel_axispolicy', 55, 'view_hotel_axispolicy'),
(309, 'Can add hotel_cards', 56, 'add_hotel_cards'),
(310, 'Can change hotel_cards', 56, 'change_hotel_cards'),
(311, 'Can delete hotel_cards', 56, 'delete_hotel_cards'),
(312, 'Can view hotel_cards', 56, 'view_hotel_cards'),
(313, 'Can add hotel_federaloffer', 71, 'add_hotel_federaloffer'),
(314, 'Can change hotel_federaloffer', 71, 'change_hotel_federaloffer'),
(315, 'Can delete hotel_federaloffer', 71, 'delete_hotel_federaloffer'),
(316, 'Can view hotel_federaloffer', 71, 'view_hotel_federaloffer'),
(317, 'Can add hotel_federaloffer1', 65, 'add_hotel_federaloffer1'),
(318, 'Can change hotel_federaloffer1', 65, 'change_hotel_federaloffer1'),
(319, 'Can delete hotel_federaloffer1', 65, 'delete_hotel_federaloffer1'),
(320, 'Can view hotel_federaloffer1', 65, 'view_hotel_federaloffer1'),
(321, 'Can add hotel_federalpolicy', 60, 'add_hotel_federalpolicy'),
(322, 'Can change hotel_federalpolicy', 60, 'change_hotel_federalpolicy'),
(323, 'Can delete hotel_federalpolicy', 60, 'delete_hotel_federalpolicy'),
(324, 'Can view hotel_federalpolicy', 60, 'view_hotel_federalpolicy'),
(325, 'Can add hotel_hsbcoffer', 64, 'add_hotel_hsbcoffer'),
(326, 'Can change hotel_hsbcoffer', 64, 'change_hotel_hsbcoffer'),
(327, 'Can delete hotel_hsbcoffer', 64, 'delete_hotel_hsbcoffer'),
(328, 'Can view hotel_hsbcoffer', 64, 'view_hotel_hsbcoffer'),
(329, 'Can add hotel_hsbcoffer1', 59, 'add_hotel_hsbcoffer1'),
(330, 'Can change hotel_hsbcoffer1', 59, 'change_hotel_hsbcoffer1'),
(331, 'Can delete hotel_hsbcoffer1', 59, 'delete_hotel_hsbcoffer1'),
(332, 'Can view hotel_hsbcoffer1', 59, 'view_hotel_hsbcoffer1'),
(333, 'Can add hotel_hsbcpolicy', 73, 'add_hotel_hsbcpolicy'),
(334, 'Can change hotel_hsbcpolicy', 73, 'change_hotel_hsbcpolicy'),
(335, 'Can delete hotel_hsbcpolicy', 73, 'delete_hotel_hsbcpolicy'),
(336, 'Can view hotel_hsbcpolicy', 73, 'view_hotel_hsbcpolicy'),
(337, 'Can add hotel_icicioffer', 58, 'add_hotel_icicioffer'),
(338, 'Can change hotel_icicioffer', 58, 'change_hotel_icicioffer'),
(339, 'Can delete hotel_icicioffer', 58, 'delete_hotel_icicioffer'),
(340, 'Can view hotel_icicioffer', 58, 'view_hotel_icicioffer'),
(341, 'Can add hotel_icicioffer1', 68, 'add_hotel_icicioffer1'),
(342, 'Can change hotel_icicioffer1', 68, 'change_hotel_icicioffer1'),
(343, 'Can delete hotel_icicioffer1', 68, 'delete_hotel_icicioffer1'),
(344, 'Can view hotel_icicioffer1', 68, 'view_hotel_icicioffer1'),
(345, 'Can add hotel_icicipolicy', 69, 'add_hotel_icicipolicy'),
(346, 'Can change hotel_icicipolicy', 69, 'change_hotel_icicipolicy'),
(347, 'Can delete hotel_icicipolicy', 69, 'delete_hotel_icicipolicy'),
(348, 'Can view hotel_icicipolicy', 69, 'view_hotel_icicipolicy'),
(349, 'Can add hotel_sbioffer', 67, 'add_hotel_sbioffer'),
(350, 'Can change hotel_sbioffer', 67, 'change_hotel_sbioffer'),
(351, 'Can delete hotel_sbioffer', 67, 'delete_hotel_sbioffer'),
(352, 'Can view hotel_sbioffer', 67, 'view_hotel_sbioffer'),
(353, 'Can add hotel_sbioffer1', 72, 'add_hotel_sbioffer1'),
(354, 'Can change hotel_sbioffer1', 72, 'change_hotel_sbioffer1'),
(355, 'Can delete hotel_sbioffer1', 72, 'delete_hotel_sbioffer1'),
(356, 'Can view hotel_sbioffer1', 72, 'view_hotel_sbioffer1'),
(357, 'Can add hotel_sbipolicy', 66, 'add_hotel_sbipolicy'),
(358, 'Can change hotel_sbipolicy', 66, 'change_hotel_sbipolicy'),
(359, 'Can delete hotel_sbipolicy', 66, 'delete_hotel_sbipolicy'),
(360, 'Can view hotel_sbipolicy', 66, 'view_hotel_sbipolicy'),
(361, 'Can add hotel_quary', 70, 'add_hotel_quary'),
(362, 'Can change hotel_quary', 70, 'change_hotel_quary'),
(363, 'Can delete hotel_quary', 70, 'delete_hotel_quary'),
(364, 'Can view hotel_quary', 70, 'view_hotel_quary'),
(365, 'Can add hotel_boboffer', 74, 'add_hotel_boboffer'),
(366, 'Can change hotel_boboffer', 74, 'change_hotel_boboffer'),
(367, 'Can delete hotel_boboffer', 74, 'delete_hotel_boboffer'),
(368, 'Can view hotel_boboffer', 74, 'view_hotel_boboffer'),
(369, 'Can add hotel_boboffer1', 75, 'add_hotel_boboffer1'),
(370, 'Can change hotel_boboffer1', 75, 'change_hotel_boboffer1'),
(371, 'Can delete hotel_boboffer1', 75, 'delete_hotel_boboffer1'),
(372, 'Can view hotel_boboffer1', 75, 'view_hotel_boboffer1'),
(373, 'Can add hotel_bobpolicy', 76, 'add_hotel_bobpolicy'),
(374, 'Can change hotel_bobpolicy', 76, 'change_hotel_bobpolicy'),
(375, 'Can delete hotel_bobpolicy', 76, 'delete_hotel_bobpolicy'),
(376, 'Can view hotel_bobpolicy', 76, 'view_hotel_bobpolicy'),
(377, 'Can add flights_kotak_offer', 42, 'add_flights_kotak_offer'),
(378, 'Can change flights_kotak_offer', 42, 'change_flights_kotak_offer'),
(379, 'Can delete flights_kotak_offer', 42, 'delete_flights_kotak_offer'),
(380, 'Can view flights_kotak_offer', 42, 'view_flights_kotak_offer'),
(381, 'Can add flights_kotak_offer1', 43, 'add_flights_kotak_offer1'),
(382, 'Can change flights_kotak_offer1', 43, 'change_flights_kotak_offer1'),
(383, 'Can delete flights_kotak_offer1', 43, 'delete_flights_kotak_offer1'),
(384, 'Can view flights_kotak_offer1', 43, 'view_flights_kotak_offer1'),
(385, 'Can add flights_kotak_terms', 44, 'add_flights_kotak_terms'),
(386, 'Can change flights_kotak_terms', 44, 'change_flights_kotak_terms'),
(387, 'Can delete flights_kotak_terms', 44, 'delete_flights_kotak_terms'),
(388, 'Can view flights_kotak_terms', 44, 'view_flights_kotak_terms'),
(389, 'Can add flights_policy', 45, 'add_flights_policy'),
(390, 'Can change flights_policy', 45, 'change_flights_policy'),
(391, 'Can delete flights_policy', 45, 'delete_flights_policy'),
(392, 'Can view flights_policy', 45, 'view_flights_policy'),
(393, 'Can add flights_policy1', 46, 'add_flights_policy1'),
(394, 'Can change flights_policy1', 46, 'change_flights_policy1'),
(395, 'Can delete flights_policy1', 46, 'delete_flights_policy1'),
(396, 'Can view flights_policy1', 46, 'view_flights_policy1'),
(397, 'Can add anytime', 77, 'add_anytime'),
(398, 'Can change anytime', 77, 'change_anytime'),
(399, 'Can delete anytime', 77, 'delete_anytime'),
(400, 'Can view anytime', 77, 'view_anytime'),
(401, 'Can add cab_cards', 78, 'add_cab_cards'),
(402, 'Can change cab_cards', 78, 'change_cab_cards'),
(403, 'Can delete cab_cards', 78, 'delete_cab_cards'),
(404, 'Can view cab_cards', 78, 'view_cab_cards'),
(405, 'Can add cab_faq', 79, 'add_cab_faq'),
(406, 'Can change cab_faq', 79, 'change_cab_faq'),
(407, 'Can delete cab_faq', 79, 'delete_cab_faq'),
(408, 'Can view cab_faq', 79, 'view_cab_faq'),
(409, 'Can add cab booking', 80, 'add_cabbooking'),
(410, 'Can change cab booking', 80, 'change_cabbooking'),
(411, 'Can delete cab booking', 80, 'delete_cabbooking'),
(412, 'Can view cab booking', 80, 'view_cabbooking'),
(413, 'Can add cabwhycontents', 81, 'add_cabwhycontents'),
(414, 'Can change cabwhycontents', 81, 'change_cabwhycontents'),
(415, 'Can delete cabwhycontents', 81, 'delete_cabwhycontents'),
(416, 'Can view cabwhycontents', 81, 'view_cabwhycontents'),
(417, 'Can add easy', 82, 'add_easy'),
(418, 'Can change easy', 82, 'change_easy'),
(419, 'Can delete easy', 82, 'delete_easy'),
(420, 'Can view easy', 82, 'view_easy'),
(421, 'Can add familyfun', 83, 'add_familyfun'),
(422, 'Can change familyfun', 83, 'change_familyfun'),
(423, 'Can delete familyfun', 83, 'delete_familyfun'),
(424, 'Can view familyfun', 83, 'view_familyfun'),
(425, 'Can add festive', 84, 'add_festive'),
(426, 'Can change festive', 84, 'change_festive'),
(427, 'Can delete festive', 84, 'delete_festive'),
(428, 'Can view festive', 84, 'view_festive'),
(429, 'Can add offer_card', 85, 'add_offer_card'),
(430, 'Can change offer_card', 85, 'change_offer_card'),
(431, 'Can delete offer_card', 85, 'delete_offer_card'),
(432, 'Can view offer_card', 85, 'view_offer_card'),
(433, 'Can add paytm_card', 86, 'add_paytm_card'),
(434, 'Can change paytm_card', 86, 'change_paytm_card'),
(435, 'Can delete paytm_card', 86, 'delete_paytm_card'),
(436, 'Can view paytm_card', 86, 'view_paytm_card'),
(437, 'Can add rental', 87, 'add_rental'),
(438, 'Can change rental', 87, 'change_rental'),
(439, 'Can delete rental', 87, 'delete_rental'),
(440, 'Can view rental', 87, 'view_rental'),
(441, 'Can add ride', 88, 'add_ride'),
(442, 'Can change ride', 88, 'change_ride'),
(443, 'Can delete ride', 88, 'delete_ride'),
(444, 'Can view ride', 88, 'view_ride'),
(445, 'Can add cab_anytime', 83, 'add_cab_anytime'),
(446, 'Can change cab_anytime', 83, 'change_cab_anytime'),
(447, 'Can delete cab_anytime', 83, 'delete_cab_anytime'),
(448, 'Can view cab_anytime', 83, 'view_cab_anytime'),
(449, 'Can add cab_easy', 82, 'add_cab_easy'),
(450, 'Can change cab_easy', 82, 'change_cab_easy'),
(451, 'Can delete cab_easy', 82, 'delete_cab_easy'),
(452, 'Can view cab_easy', 82, 'view_cab_easy'),
(453, 'Can add cab_familyfun', 77, 'add_cab_familyfun'),
(454, 'Can change cab_familyfun', 77, 'change_cab_familyfun'),
(455, 'Can delete cab_familyfun', 77, 'delete_cab_familyfun'),
(456, 'Can view cab_familyfun', 77, 'view_cab_familyfun'),
(457, 'Can add cab_festive', 85, 'add_cab_festive'),
(458, 'Can change cab_festive', 85, 'change_cab_festive'),
(459, 'Can delete cab_festive', 85, 'delete_cab_festive'),
(460, 'Can view cab_festive', 85, 'view_cab_festive'),
(461, 'Can add cab_offer_card', 86, 'add_cab_offer_card'),
(462, 'Can change cab_offer_card', 86, 'change_cab_offer_card'),
(463, 'Can delete cab_offer_card', 86, 'delete_cab_offer_card'),
(464, 'Can view cab_offer_card', 86, 'view_cab_offer_card'),
(465, 'Can add cab_paytm_card', 84, 'add_cab_paytm_card'),
(466, 'Can change cab_paytm_card', 84, 'change_cab_paytm_card'),
(467, 'Can delete cab_paytm_card', 84, 'delete_cab_paytm_card'),
(468, 'Can view cab_paytm_card', 84, 'view_cab_paytm_card'),
(469, 'Can add cab_rental', 88, 'add_cab_rental'),
(470, 'Can change cab_rental', 88, 'change_cab_rental'),
(471, 'Can delete cab_rental', 88, 'delete_cab_rental'),
(472, 'Can view cab_rental', 88, 'view_cab_rental'),
(473, 'Can add cab_ride', 87, 'add_cab_ride'),
(474, 'Can change cab_ride', 87, 'change_cab_ride'),
(475, 'Can delete cab_ride', 87, 'delete_cab_ride'),
(476, 'Can view cab_ride', 87, 'view_cab_ride'),
(477, 'Can add bus_faq', 89, 'add_bus_faq'),
(478, 'Can change bus_faq', 89, 'change_bus_faq'),
(479, 'Can delete bus_faq', 89, 'delete_bus_faq'),
(480, 'Can view bus_faq', 89, 'view_bus_faq'),
(481, 'Can add bus_offercards', 90, 'add_bus_offercards'),
(482, 'Can change bus_offercards', 90, 'change_bus_offercards'),
(483, 'Can delete bus_offercards', 90, 'delete_bus_offercards'),
(484, 'Can view bus_offercards', 90, 'view_bus_offercards'),
(485, 'Can add bus_whychoose', 91, 'add_bus_whychoose'),
(486, 'Can change bus_whychoose', 91, 'change_bus_whychoose'),
(487, 'Can delete bus_whychoose', 91, 'delete_bus_whychoose'),
(488, 'Can view bus_whychoose', 91, 'view_bus_whychoose'),
(489, 'Can add bus_special_terms4', 92, 'add_bus_special_terms4'),
(490, 'Can change bus_special_terms4', 92, 'change_bus_special_terms4'),
(491, 'Can delete bus_special_terms4', 92, 'delete_bus_special_terms4'),
(492, 'Can view bus_special_terms4', 92, 'view_bus_special_terms4'),
(493, 'Can add bus_busday_image6', 93, 'add_bus_busday_image6'),
(494, 'Can change bus_busday_image6', 93, 'change_bus_busday_image6'),
(495, 'Can delete bus_busday_image6', 93, 'delete_bus_busday_image6'),
(496, 'Can view bus_busday_image6', 93, 'view_bus_busday_image6'),
(497, 'Can add bus_busday_terms6', 94, 'add_bus_busday_terms6'),
(498, 'Can change bus_busday_terms6', 94, 'change_bus_busday_terms6'),
(499, 'Can delete bus_busday_terms6', 94, 'delete_bus_busday_terms6'),
(500, 'Can view bus_busday_terms6', 94, 'view_bus_busday_terms6'),
(501, 'Can add bus_easeday7', 95, 'add_bus_easeday7'),
(502, 'Can change bus_easeday7', 95, 'change_bus_easeday7'),
(503, 'Can delete bus_easeday7', 95, 'delete_bus_easeday7'),
(504, 'Can view bus_easeday7', 95, 'view_bus_easeday7'),
(505, 'Can add bus_fest10', 96, 'add_bus_fest10'),
(506, 'Can change bus_fest10', 96, 'change_bus_fest10'),
(507, 'Can delete bus_fest10', 96, 'delete_bus_fest10'),
(508, 'Can view bus_fest10', 96, 'view_bus_fest10'),
(509, 'Can add bus_festival3', 97, 'add_bus_festival3'),
(510, 'Can change bus_festival3', 97, 'change_bus_festival3'),
(511, 'Can delete bus_festival3', 97, 'delete_bus_festival3'),
(512, 'Can view bus_festival3', 97, 'view_bus_festival3'),
(513, 'Can add bus_firstbus_code5', 98, 'add_bus_firstbus_code5'),
(514, 'Can change bus_firstbus_code5', 98, 'change_bus_firstbus_code5'),
(515, 'Can delete bus_firstbus_code5', 98, 'delete_bus_firstbus_code5'),
(516, 'Can view bus_firstbus_code5', 98, 'view_bus_firstbus_code5'),
(517, 'Can add bus_firstbus_get5', 99, 'add_bus_firstbus_get5'),
(518, 'Can change bus_firstbus_get5', 99, 'change_bus_firstbus_get5'),
(519, 'Can delete bus_firstbus_get5', 99, 'delete_bus_firstbus_get5'),
(520, 'Can view bus_firstbus_get5', 99, 'view_bus_firstbus_get5'),
(521, 'Can add bus_firstbus_terms5', 100, 'add_bus_firstbus_terms5'),
(522, 'Can change bus_firstbus_terms5', 100, 'change_bus_firstbus_terms5'),
(523, 'Can delete bus_firstbus_terms5', 100, 'delete_bus_firstbus_terms5'),
(524, 'Can view bus_firstbus_terms5', 100, 'view_bus_firstbus_terms5'),
(525, 'Can add bus_go_benefits2', 101, 'add_bus_go_benefits2'),
(526, 'Can change bus_go_benefits2', 101, 'change_bus_go_benefits2'),
(527, 'Can delete bus_go_benefits2', 101, 'delete_bus_go_benefits2'),
(528, 'Can view bus_go_benefits2', 101, 'view_bus_go_benefits2'),
(529, 'Can add bus_go_container2', 102, 'add_bus_go_container2'),
(530, 'Can change bus_go_container2', 102, 'change_bus_go_container2'),
(531, 'Can delete bus_go_container2', 102, 'delete_bus_go_container2'),
(532, 'Can view bus_go_container2', 102, 'view_bus_go_container2'),
(533, 'Can add bus_go_image2', 103, 'add_bus_go_image2'),
(534, 'Can change bus_go_image2', 103, 'change_bus_go_image2'),
(535, 'Can delete bus_go_image2', 103, 'delete_bus_go_image2'),
(536, 'Can view bus_go_image2', 103, 'view_bus_go_image2'),
(537, 'Can add bus_go_table2', 104, 'add_bus_go_table2'),
(538, 'Can change bus_go_table2', 104, 'change_bus_go_table2'),
(539, 'Can delete bus_go_table2', 104, 'delete_bus_go_table2'),
(540, 'Can view bus_go_table2', 104, 'view_bus_go_table2'),
(541, 'Can add bus_go_terms2', 105, 'add_bus_go_terms2'),
(542, 'Can change bus_go_terms2', 105, 'change_bus_go_terms2'),
(543, 'Can delete bus_go_terms2', 105, 'delete_bus_go_terms2'),
(544, 'Can view bus_go_terms2', 105, 'view_bus_go_terms2'),
(545, 'Can add bus_holiday12', 106, 'add_bus_holiday12'),
(546, 'Can change bus_holiday12', 106, 'change_bus_holiday12'),
(547, 'Can delete bus_holiday12', 106, 'delete_bus_holiday12'),
(548, 'Can view bus_holiday12', 106, 'view_bus_holiday12'),
(549, 'Can add bus_icici11', 107, 'add_bus_icici11'),
(550, 'Can change bus_icici11', 107, 'change_bus_icici11'),
(551, 'Can delete bus_icici11', 107, 'delete_bus_icici11'),
(552, 'Can view bus_icici11', 107, 'view_bus_icici11'),
(553, 'Can add bus_offer9', 108, 'add_bus_offer9'),
(554, 'Can change bus_offer9', 108, 'change_bus_offer9'),
(555, 'Can delete bus_offer9', 108, 'delete_bus_offer9'),
(556, 'Can view bus_offer9', 108, 'view_bus_offer9'),
(557, 'Can add bus_ride13', 109, 'add_bus_ride13'),
(558, 'Can change bus_ride13', 109, 'change_bus_ride13'),
(559, 'Can delete bus_ride13', 109, 'delete_bus_ride13'),
(560, 'Can view bus_ride13', 109, 'view_bus_ride13'),
(561, 'Can add bus_searchform', 110, 'add_bus_searchform'),
(562, 'Can change bus_searchform', 110, 'change_bus_searchform'),
(563, 'Can delete bus_searchform', 110, 'delete_bus_searchform'),
(564, 'Can view bus_searchform', 110, 'view_bus_searchform'),
(565, 'Can add bus_special_avail4', 111, 'add_bus_special_avail4'),
(566, 'Can change bus_special_avail4', 111, 'change_bus_special_avail4'),
(567, 'Can delete bus_special_avail4', 111, 'delete_bus_special_avail4'),
(568, 'Can view bus_special_avail4', 111, 'view_bus_special_avail4'),
(569, 'Can add bus_special_code4', 112, 'add_bus_special_code4'),
(570, 'Can change bus_special_code4', 112, 'change_bus_special_code4'),
(571, 'Can delete bus_special_code4', 112, 'delete_bus_special_code4'),
(572, 'Can view bus_special_code4', 112, 'view_bus_special_code4'),
(573, 'Can add bus_weekday8', 113, 'add_bus_weekday8'),
(574, 'Can change bus_weekday8', 113, 'change_bus_weekday8'),
(575, 'Can delete bus_weekday8', 113, 'delete_bus_weekday8'),
(576, 'Can view bus_weekday8', 113, 'view_bus_weekday8'),
(577, 'Can add bus_weekends1', 114, 'add_bus_weekends1'),
(578, 'Can change bus_weekends1', 114, 'change_bus_weekends1'),
(579, 'Can delete bus_weekends1', 114, 'delete_bus_weekends1'),
(580, 'Can view bus_weekends1', 114, 'view_bus_weekends1'),
(581, 'Can add bus_weekends_terms1', 115, 'add_bus_weekends_terms1'),
(582, 'Can change bus_weekends_terms1', 115, 'change_bus_weekends_terms1'),
(583, 'Can delete bus_weekends_terms1', 115, 'delete_bus_weekends_terms1'),
(584, 'Can view bus_weekends_terms1', 115, 'view_bus_weekends_terms1'),
(585, 'Can add bus_go_cancel', 116, 'add_bus_go_cancel'),
(586, 'Can change bus_go_cancel', 116, 'change_bus_go_cancel'),
(587, 'Can delete bus_go_cancel', 116, 'delete_bus_go_cancel'),
(588, 'Can view bus_go_cancel', 116, 'view_bus_go_cancel'),
(589, 'Can add navbar', 117, 'add_navbar'),
(590, 'Can change navbar', 117, 'change_navbar'),
(591, 'Can delete navbar', 117, 'delete_navbar'),
(592, 'Can view navbar', 117, 'view_navbar'),
(593, 'Can add flightfaqs', 118, 'add_flightfaqs'),
(594, 'Can change flightfaqs', 118, 'change_flightfaqs'),
(595, 'Can delete flightfaqs', 118, 'delete_flightfaqs'),
(596, 'Can view flightfaqs', 118, 'view_flightfaqs'),
(597, 'Can add crudoperations', 119, 'add_crudoperations'),
(598, 'Can change crudoperations', 119, 'change_crudoperations'),
(599, 'Can delete crudoperations', 119, 'delete_crudoperations'),
(600, 'Can view crudoperations', 119, 'view_crudoperations'),
(601, 'Can add sidebar', 120, 'add_sidebar'),
(602, 'Can change sidebar', 120, 'change_sidebar'),
(603, 'Can delete sidebar', 120, 'delete_sidebar'),
(604, 'Can view sidebar', 120, 'view_sidebar'),
(605, 'Can add flights_offerscrudoperations', 121, 'add_flights_offerscrudoperations'),
(606, 'Can change flights_offerscrudoperations', 121, 'change_flights_offerscrudoperations'),
(607, 'Can delete flights_offerscrudoperations', 121, 'delete_flights_offerscrudoperations'),
(608, 'Can view flights_offerscrudoperations', 121, 'view_flights_offerscrudoperations'),
(609, 'Can add buses_offerscrudoperations', 122, 'add_buses_offerscrudoperations'),
(610, 'Can change buses_offerscrudoperations', 122, 'change_buses_offerscrudoperations'),
(611, 'Can delete buses_offerscrudoperations', 122, 'delete_buses_offerscrudoperations'),
(612, 'Can view buses_offerscrudoperations', 122, 'view_buses_offerscrudoperations'),
(613, 'Can add cabs_offerscrudoperations', 123, 'add_cabs_offerscrudoperations'),
(614, 'Can change cabs_offerscrudoperations', 123, 'change_cabs_offerscrudoperations'),
(615, 'Can delete cabs_offerscrudoperations', 123, 'delete_cabs_offerscrudoperations'),
(616, 'Can view cabs_offerscrudoperations', 123, 'view_cabs_offerscrudoperations'),
(617, 'Can add hotels_offerscrudoperations', 124, 'add_hotels_offerscrudoperations'),
(618, 'Can change hotels_offerscrudoperations', 124, 'change_hotels_offerscrudoperations'),
(619, 'Can delete hotels_offerscrudoperations', 124, 'delete_hotels_offerscrudoperations'),
(620, 'Can view hotels_offerscrudoperations', 124, 'view_hotels_offerscrudoperations'),
(621, 'Can add dashboard_sidebar', 125, 'add_dashboard_sidebar'),
(622, 'Can change dashboard_sidebar', 125, 'change_dashboard_sidebar'),
(623, 'Can delete dashboard_sidebar', 125, 'delete_dashboard_sidebar'),
(624, 'Can view dashboard_sidebar', 125, 'view_dashboard_sidebar'),
(625, 'Can add cabs_offerscrud_dashboard', 126, 'add_cabs_offerscrud_dashboard'),
(626, 'Can change cabs_offerscrud_dashboard', 126, 'change_cabs_offerscrud_dashboard'),
(627, 'Can delete cabs_offerscrud_dashboard', 126, 'delete_cabs_offerscrud_dashboard'),
(628, 'Can view cabs_offerscrud_dashboard', 126, 'view_cabs_offerscrud_dashboard'),
(629, 'Can add cabs_secondpage_dashboard', 127, 'add_cabs_secondpage_dashboard'),
(630, 'Can change cabs_secondpage_dashboard', 127, 'change_cabs_secondpage_dashboard'),
(631, 'Can delete cabs_secondpage_dashboard', 127, 'delete_cabs_secondpage_dashboard'),
(632, 'Can view cabs_secondpage_dashboard', 127, 'view_cabs_secondpage_dashboard'),
(633, 'Can add buses_2ndpages', 128, 'add_buses_2ndpages'),
(634, 'Can change buses_2ndpages', 128, 'change_buses_2ndpages'),
(635, 'Can delete buses_2ndpages', 128, 'delete_buses_2ndpages'),
(636, 'Can view buses_2ndpages', 128, 'view_buses_2ndpages'),
(637, 'Can add flights_2ndpages', 129, 'add_flights_2ndpages'),
(638, 'Can change flights_2ndpages', 129, 'change_flights_2ndpages'),
(639, 'Can delete flights_2ndpages', 129, 'delete_flights_2ndpages'),
(640, 'Can view flights_2ndpages', 129, 'view_flights_2ndpages'),
(641, 'Can add hotels_2ndpages', 130, 'add_hotels_2ndpages'),
(642, 'Can change hotels_2ndpages', 130, 'change_hotels_2ndpages'),
(643, 'Can delete hotels_2ndpages', 130, 'delete_hotels_2ndpages'),
(644, 'Can view hotels_2ndpages', 130, 'view_hotels_2ndpages'),
(645, 'Can add flights_2npdpages_update', 131, 'add_flights_2npdpages_update'),
(646, 'Can change flights_2npdpages_update', 131, 'change_flights_2npdpages_update'),
(647, 'Can delete flights_2npdpages_update', 131, 'delete_flights_2npdpages_update'),
(648, 'Can view flights_2npdpages_update', 131, 'view_flights_2npdpages_update');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$XX265mEcnC1kRJydUab3Mw$J05KWizLXfzMjB+i+T1hOnldreDRsZOnhlb8KmeyiNg=', '2024-02-19 03:56:03.043369', 1, 'sanju', '', '', '', 1, 1, '2024-02-16 04:29:28.159069'),
(2, 'pbkdf2_sha256$720000$HwG9UWWKY3eowBSnj26lS7$gQNMGmomY5CGyXKkidZWhGQLyl6wHbvPK5LRh7eT24A=', '2024-06-20 11:38:30.299509', 1, 'Reecha', '', '', '', 1, 1, '2024-06-19 06:37:54.482952');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booking_buses_2ndpages`
--

CREATE TABLE `booking_buses_2ndpages` (
  `id` bigint(20) NOT NULL,
  `offer` varchar(100) NOT NULL,
  `inserturl` varchar(200) NOT NULL,
  `updateurl` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_buses_2ndpages`
--

INSERT INTO `booking_buses_2ndpages` (`id`, `offer`, `inserturl`, `updateurl`) VALUES
(1, 'Ayodhya Travel Guide.', '/bus_home1/', '/bus_update1/1/'),
(2, '', '/bus_home01/', '/bus_update0/1/'),
(3, 'Steal the Deal.', '/bus_home2/', '/bus_update2/1/'),
(4, '', '/bus_home3/', '/bus_update3/1/'),
(5, '', '/bus_home4/', '/bus_update4/1/'),
(6, '', '/bus_home5/', '/bus_update5/1/'),
(7, '', '/bus_home6/', '/bus_update6/1/'),
(8, '', '/bus_cancel/', '/bus_go_cancel_upd/1/'),
(9, 'Plan your Trip With Us!', '/bus_home7/', '/bus_update7/1/'),
(10, 'Travellings in India?', '/bus_home8/', '/bus_update8/1/'),
(11, '', '/bus_home9/', '/bus_update9/1/'),
(12, '', '/bus_home10/', '/bus_update10/1/'),
(13, 'New User Offer!', '/bus_home11/', '/bus_update11/1/'),
(14, '', '/bus_home12/', '/bus_update12/1/'),
(15, '', '/bus_home13/', '/bus_update13/1/'),
(16, 'Mega Deals on Booking!', '/bus_home14/', '/bus_update14/1/'),
(17, '', '/bus_home15/', '/bus_update15/1/'),
(18, 'Deal of the Day.', '/bus_home18/', '/bus_update18/1/'),
(19, 'Special Offer of the Week.', '/bus_home19/', '/bus_update19/1/'),
(20, 'Travel Party.', '/bus_home22/', '/bus_update21/1/'),
(21, 'Ganesha Offer !', '/bus_home20/', '/bus_update20/1/'),
(22, 'Bank Offer !', '/bus_home21/', '/bus_update22/1/'),
(23, 'Holiday Packages !', '/bus_home23/', '/bus_update23/1/'),
(24, 'Ride More Save More!', '/bus_home24/', '/bus_update24/1/');

-- --------------------------------------------------------

--
-- Table structure for table `booking_buses_offerscrudoperations`
--

CREATE TABLE `booking_buses_offerscrudoperations` (
  `id` bigint(20) NOT NULL,
  `offer` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_buses_offerscrudoperations`
--

INSERT INTO `booking_buses_offerscrudoperations` (`id`, `offer`, `url`) VALUES
(1, 'Ayodhya Travel Guide.', 'http://127.0.0.1:8000/bus_update/1/'),
(2, 'Steal the Deal.', 'http://127.0.0.1:8000/bus_update/2/'),
(3, 'Plan your Trip With Us!', 'http://127.0.0.1:8000/bus_update/3/'),
(4, 'Travellings in India?', 'http://127.0.0.1:8000/bus_update/4/'),
(5, 'New User Offer!', 'http://127.0.0.1:8000/bus_update/5/'),
(6, 'Mega Deals on Booking!', 'http://127.0.0.1:8000/bus_update/6/'),
(7, 'Deal of the Day.', 'http://127.0.0.1:8000/bus_update/7/'),
(8, 'Special Offer of the Week.', 'http://127.0.0.1:8000/bus_update/8/'),
(9, 'Travel Party.', 'http://127.0.0.1:8000/bus_update/9/'),
(10, 'Ganesha Offer !', 'http://127.0.0.1:8000/bus_update/10/'),
(11, 'Bank Offer !', 'http://127.0.0.1:8000/bus_update/11/'),
(12, 'Holiday Packages !', 'http://127.0.0.1:8000/bus_update/12/'),
(13, 'Ride More Save More!', 'http://127.0.0.1:8000/bus_update/13/');

-- --------------------------------------------------------

--
-- Table structure for table `booking_bus_busday_image6`
--

CREATE TABLE `booking_bus_busday_image6` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_bus_busday_image6`
--

INSERT INTO `booking_bus_busday_image6` (`id`, `image`) VALUES
(1, 'images/Mega_deals12.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `booking_bus_busday_terms6`
--

CREATE TABLE `booking_bus_busday_terms6` (
  `id` bigint(20) NOT NULL,
  `heading` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `point` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_bus_busday_terms6`
--

INSERT INTO `booking_bus_busday_terms6` (`id`, `heading`, `title`, `point`) VALUES
(1, '', 'What do you get?', 'Applicable for All Users Flat Rs.100.'),
(2, '', 'How do you get it?', 'Get 10% on your Bus Ticket Booking! For all Credit & Debit cardholders.'),
(3, '', '', 'To book the ticket use this code: BUSDAY.'),
(4, '', '', 'The discount coupon code is valid for bus bookings.'),
(5, '', '', 'Get 10% on your Bus Ticket Booking.'),
(6, '', '', 'The discounted amount will be deducted from the total payable amount.'),
(7, '', '', 'The offer is valid for bookings made on Teerdha\'s website, Mobile site, Android & iOS App.'),
(8, '', 'What else do you need to know?', 'The offers will be calculated on the base fare.'),
(9, '', '', 'Paytm announces free bus ticket cancellations post lockdown.'),
(10, '', '', 'In case of partial,full cancellation the offer stands void and discount will be rolled back before processing the refunds.'),
(11, '', '', 'Changes in names are not allowed.'),
(19, '', 'Conditions Incase of Cancellations:', 'When tickets are submitted prior to 12 hours before departure of the bus, refund shall be allowed after deducting 10% amount of tickets.'),
(20, '', '', 'Where tickets are submitted within 12 hours prior to departure of the bus, refund shall be allowed after deducting 25% amount of tickets.'),
(21, '', '', 'Where tickets are submitted within 2 hours after departure of the bus, refund shall be allowed after deducting 75% amount of tickets.'),
(22, '', '', 'Where tickets are submitted after 2 hours of departure of the bus, no refund shall be allowed.'),
(23, '', '', 'Reservation / Handling charges if any are not refundable.'),
(24, '', 'Terms & Conditions:', 'In the event of any misuse or abuse of the offer, Teerdha reserves the right to deny the offer to the customers.'),
(25, '', '', 'Teerdha is the sole authority for the interpretation of these terms.'),
(26, '', '', 'In addition, the standard booking, cancellation and privacy policies of Teerdha will apply.'),
(27, '', '', 'In the event of any dispute, the Courts of New Delhi will have jurisdiction.'),
(28, '', '', 'Travel agents by profession are barred from this offer.'),
(29, '', '', 'Teerdha reserves the right to disqualify any transaction or discontinue the offer promotion at any time without notice or liability of whatsoever nature.'),
(30, '', '', 'This offer cannot be combined with any other offer.'),
(31, '', '', 'Teerdha shall not be liable for any loss or damage arising due to force majeure.');

-- --------------------------------------------------------

--
-- Table structure for table `booking_bus_easeday7`
--

CREATE TABLE `booking_bus_easeday7` (
  `id` bigint(20) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `title1` varchar(100) NOT NULL,
  `point` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_bus_easeday7`
--

INSERT INTO `booking_bus_easeday7` (`id`, `photo`, `title1`, `point`) VALUES
(1, 'images/card7.jpeg', 'What do you get?', 'Users will get a minimum 10% offer on Bus Tickets.'),
(2, '', 'How do you get it?', 'To avail offers, users have to book bus tickets for their preferred destination by applying Promocode: EASEDAY.'),
(3, '', '', 'This offer is valid for only Sunday, Monday.'),
(4, '', '', 'All our new and existing customers can avail this offer.'),
(5, '', '', 'The Promocode is valid for bus bookings.'),
(6, '', '', 'The offer is valid for bookings made on Teerdha\'s website, Mobile site, Android & iOS App.'),
(7, '', 'What else do you need to know?', 'The offer can’t be clubbed with any other promotional offers.'),
(8, '', '', 'The offers will be calculated on the base fare.'),
(9, '', '', 'This offer is exclusive to bookings made with valid Promocodes.'),
(10, '', '', 'If a partial or full cancellation occurs, the offer becomes invalid, and any discount will be removed before refunds are processed.'),
(11, '', '', 'Changes in names are not allowed.'),
(22, '', 'Conditions Incase of Cancellations :', 'Cancellation fee will be deducted from the total collected amount.'),
(23, '', '', 'Cancellation slabs (% fare refund) are based on the time of cancellation with reference to the departure time of the service at the place of boarding.'),
(24, '', '', 'For cancellation of tickets, a cancellation fee is calculated on the journey fare applicable.'),
(25, '', '', 'Cancellation of tickets with discounts will be as per the above procedure. However, cancellation charges will be worked out on the basic fare payable by the passenger. Refund amount will be actual fare collected less a cancellation fee.'),
(26, '', '', 'The reservation fee is non-refundable.'),
(27, '', '', 'Bridge fee, User Fee, Toll Fee, Entry Fee, etc. will be completely refunded.'),
(28, '', 'Terms & Conditions :', 'If there is any misuse or abuse of the offer, Teerdha holds the authority to decline the offer for customers.'),
(29, '', '', 'The offer is valid for online booking and mobile booking.'),
(30, '', '', 'The discounted amount will be deducted from the total payable amount.'),
(31, '', '', 'One Promocode can be used by a user two times during the offer period.'),
(32, '', '', 'Enjoy booking and happy travelling.'),
(33, '', '', 'Additionally, the standard booking and privacy policies found at www.teerdha.com will be enforced by Teerdha.'),
(34, '', '', 'In the event of any dispute, the Courts of New Delhi will have jurisdiction.'),
(35, '', '', 'Teerdha retains the right, without prior notice, liability, or explanation, to adjust, amend, or replace all or part of these terms and conditions. This includes the option to substitute this offer with another, whether similar or not, or to extend or withdraw it completely.'),
(36, '', '', 'Teerdha holds absolute authority over the interpretation of these terms.'),
(37, '', '', 'Teerdha shall not be liable for any loss or damage arising due to force majeure.');

-- --------------------------------------------------------

--
-- Table structure for table `booking_bus_faq`
--

CREATE TABLE `booking_bus_faq` (
  `id` bigint(20) NOT NULL,
  `description1` longtext NOT NULL,
  `description2` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_bus_faq`
--

INSERT INTO `booking_bus_faq` (`id`, `description1`, `description2`) VALUES
(1, 'What is Teerdha Bus?', 'Teerdha Bus is an online bus ticketing platform that allows users to book bus tickets for various routes and operators across multiple countries.'),
(2, 'How do I book a bus ticket on Teerdha?', 'To book a bus ticket on Teerdha, simply visit their website or mobile app, enter your travel details (such as origin, destination, date of travel, and number of passengers), choose from available bus options, and complete the booking process by making payment.'),
(3, 'Is it safe to book bus tickets on Teerdha?', 'Yes, Teerdha employs advanced security measures to ensure the safety of users\' personal and payment information. Additionally, Teerdha partners with reputed bus operators to provide safe and reliable travel.'),
(4, 'Can I cancel or modify my bus ticket booked on Teerdha?', 'Yes, you can cancel or modify your bus ticket booked on Teerdha, subject to the cancellation and modification policies of the respective bus operator. You can initiate cancellations or modifications through your Teerdha account or by contacting Teerdha customer support.'),
(5, 'How do I get my bus ticket after booking on Teerdha?', 'After booking a bus ticket on Teerdha, you will receive a confirmation email and/or SMS containing your ticket details and a unique booking ID. You can either print the e-ticket or show the SMS/email confirmation to the bus operator at the time of boarding.'),
(6, 'What payment methods are accepted on Teerdha?', 'Teerdha accepts various payment methods, including credit/debit cards, net banking, digital wallets, and UPI (Unified Payments Interface), depending on your country of booking.'),
(7, 'Are there any discounts or offers available on Teerdha?', 'Teerdha frequently offers discounts, cashback, and promotional offers on bus bookings. You can check their website or mobile app for the latest deals and offers.'),
(8, 'How can I contact Teerdha customer support?', 'Teerdha provides customer support via phone, email, and live chat. You can find the contact details on their website or mobile app.'),
(9, 'Can I track my bus in real-time on Teerdha?', 'Yes, Teerdha offers real-time tracking of buses for select routes and operators. You can track your bus using the \"Track My Bus\" feature on the Teerdha website or mobile app.'),
(10, 'What should I do if I face any issues during my journey booked through Teerdha?', 'If you encounter any issues during your journey, such as delays, cancellations or other concerns, you can reach out to Teerdha customer support for assistance. They will help to resolve your issue and ensure smooth travel.');

-- --------------------------------------------------------

--
-- Table structure for table `booking_bus_fest10`
--

CREATE TABLE `booking_bus_fest10` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_bus_fest10`
--

INSERT INTO `booking_bus_fest10` (`id`, `title`, `content`, `photo`) VALUES
(1, 'How do you get it?', 'To avail the discount, users have to book bus tickets for their preferred destination by applying coupon that is displaying on the page.', ''),
(2, '', 'Users get an Instant discount Rs.500 on Bus ticket booking.', ''),
(3, '', 'Minimum order value - Rs.250.', ''),
(4, '', 'All our new and existing customers can avail this offer.', ''),
(5, '', 'The coupon code is only valid for bus bookings.', ''),
(6, '', 'The offer is valid for bookings made on Teerdha\'s website, Mobile site, Android & iOS App.', ''),
(7, 'What else do you need to know?', 'The minimum transaction value required to avail the discount is INR 500.', ''),
(8, '', 'This offer is valid for transactions made through Mobile wallets, UPI, Debit\\Credit cards, cash and much more.', ''),
(9, '', 'The offer is valid on bus bookings made with Teerdha.', ''),
(10, '', 'The offer can\'t be clubbed with any other promotional offers.', ''),
(11, '', 'Bookings with the valid Promocodes will be only eligible for this offer.', ''),
(12, '', 'In case of partial/full cancellation, the offer stands void and discount will be rolled back before processing the refunds.', ''),
(13, '', 'Changes in names are not allowed.', ''),
(28, '', '', 'images/Bus.JPG'),
(29, 'Conditions Incase of Cancellations :', 'If the customer cancels the travel service purchase after the discount is credited,Teerdha will deduct the discount amount from the refund and cancellation charges shall apply.', ''),
(30, '', 'In case of partial cancellation, the offer stands void if the revised booking amount is not eligible for the discount or cashback, then it will be appropriately reduced basis the booking amount.', ''),
(31, '', 'In case of full cancellation, the offer stands void and the customer will not be eligible for a discount.', ''),
(32, '', 'On Cancellation, refund will be credited in three to ten working days in source payment.', ''),
(33, '', 'A ticket once transferred cannot to transfer or cancelled again.', ''),
(34, 'Terms & Conditions:', 'To avail the discount, the user needs to have a verified mobile number on Teerdha.', ''),
(35, '', 'The Offer is open to all customers who book bus tickets through our website (Teerdha)   or mobile app.', ''),
(36, '', 'Cancelled orders will not be eligible for a discount.', ''),
(37, '', 'To avail the cashback, you need to enter the code displayed in the booking screen. Cashback will be in the form of Via points which will be credited to your Teerdha account.', ''),
(38, '', 'We reserve the right to modify, suspend or terminate the offer at any time without prior notice.', ''),
(39, '', 'We shall not be liable for any loss, damage, or injury resulting from participation in the offer.', ''),
(40, '', 'Any disputes arising out of or in connection with the offer shall be resolved through negotiation. If negotiation fails, the parties agree to submit to the exclusive jurisdiction of the courts.', ''),
(41, '', 'By participating in the offer, you accept and agree to comply with these terms and conditions.', ''),
(42, '', 'Additionally, the standard bookings & privacy policies will get at www.teerdha.com enforced by Teerdha.', ''),
(43, '', 'Teerdha holds absolute authority over the interpretation of these terms.', '');

-- --------------------------------------------------------

--
-- Table structure for table `booking_bus_festival3`
--

CREATE TABLE `booking_bus_festival3` (
  `id` bigint(20) NOT NULL,
  `heading` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `point` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_bus_festival3`
--

INSERT INTO `booking_bus_festival3` (`id`, `heading`, `image`, `title`, `point`) VALUES
(1, '', 'images/plan_your_next_trip_with_us.jpg', 'How can you obtain it?', 'Offer on Festival Save Upto Rs.900.'),
(2, '', '', '', 'Get 30% on your Bus Ticket Booking! For all Credit & Debit Cardholders.'),
(3, '', '', '', 'Get 30% on your Bus Ticket Booking.'),
(4, '', '', '', 'To book the ticket use this code: FESTIVALBUS.'),
(5, '', '', '', 'The discount coupon code is valid for bus bookings.'),
(6, '', '', '', 'Discounted amount will be deducted from the total payable amount.'),
(7, '', '', '', 'The offer is valid for bookings made on Teerdha\'s website, Mobile site, Android & iOS App.'),
(8, '', '', 'Is there any additional information you require?', 'The discount will be calculated on the base fare.'),
(9, '', '', '', 'Paytm announces free bus ticket cancellations post-lockdown.'),
(10, '', '', '', 'In case of partial/full cancellation, the offer stands void and the discount will be rolled back before processing the refunds.'),
(11, '', '', '', 'Changes in names are not allowed.'),
(12, '', '', 'In the event of cancellation, the same conditions will apply:', 'If there is a full or partial cancellation, the offer becomes null and void, and the customer will no longer qualify for the Instant discount offer or Interest subvention.'),
(13, '', '', 'Terms & Condition:', 'In the event of any misuse or abuse of the offer, Teerdha reserves the right to deny the offer to the customers.'),
(14, '', '', '', 'Teerdha is the sole authority for the interpretation of these terms.'),
(15, '', '', '', 'In addition, the standard booking, cancellation, and privacy policies of Teerdha will apply.'),
(16, '', '', '', 'In the event of any dispute, Courts of New Delhi will have jurisdiction.'),
(17, '', '', '', 'Travel agents by profession are barred from this offer.'),
(18, '', '', '', 'Teerdha shall not be liable for any loss or damage arising due to force majeure.');

-- --------------------------------------------------------

--
-- Table structure for table `booking_bus_firstbus_code5`
--

CREATE TABLE `booking_bus_firstbus_code5` (
  `id` bigint(20) NOT NULL,
  `heading` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `code` varchar(100) NOT NULL,
  `Image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_bus_firstbus_code5`
--

INSERT INTO `booking_bus_firstbus_code5` (`id`, `heading`, `title`, `code`, `Image`) VALUES
(1, 'New User Offer!', 'Validity Until: All Days Except Monday.', 'Coupon Code: FIRSTBUS.', 'images/new_user1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `booking_bus_firstbus_get5`
--

CREATE TABLE `booking_bus_firstbus_get5` (
  `id` bigint(20) NOT NULL,
  `heading` varchar(100) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_bus_firstbus_get5`
--

INSERT INTO `booking_bus_firstbus_get5` (`id`, `heading`, `title`) VALUES
(1, 'What do you get?', 'Users will get a minimum 20% offer on Bus Tickets.'),
(2, '', 'To avail the offers, users have to book bus tickets for their preferred destination by applying Promocode: FIRSTBUS.'),
(3, '', 'This offer is valid for all days except Monday.'),
(4, '', 'The promocode is valid for bus bookings.'),
(5, '', 'The offer is valid for bookings made on Teerdha\'s website, Mobile site, Android & iOS App.'),
(6, '', 'The offer can’t be clubbed with any other promotional offers.'),
(7, '', 'The offers will be calculated on the base fare.'),
(8, '', 'This offer is exclusive to bookings made with valid Promocodes.'),
(9, '', 'If a partial or full cancellation occurs, the offer becomes invalid, and any discount will be removed before refunds are processed.'),
(10, '', 'Changes in names are not allowed.'),
(11, 'Conditions Incase of Cancellations :', 'Partial Cancellation Is Possible.'),
(12, '', 'Partial cancellations will be refunded immediately.'),
(13, '', 'It is the right of Teerdha to change cancellation Policies any time without prior notice'),
(14, '', 'On Cancellation, refund will be credited in three to ten working days in source payment.'),
(15, '', 'A ticket once transferred cannot to transfer or cancelled  again.');

-- --------------------------------------------------------

--
-- Table structure for table `booking_bus_firstbus_terms5`
--

CREATE TABLE `booking_bus_firstbus_terms5` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `point` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_bus_firstbus_terms5`
--

INSERT INTO `booking_bus_firstbus_terms5` (`id`, `title`, `point`) VALUES
(1, 'Terms & Conditions :', 'Use code FIRSTBUS to get a 20% discount upto Rs.200 on bus ticket bookings.'),
(2, '', 'FIRSTBUS is exclusively for valued bus customers and routes.'),
(3, '', 'To avail the discount, the total seat amount must exceed ₹210. Bookings below this value are not eligible for the offer.'),
(4, '', 'The \"FIRSTBUS\" coupon code can be redeemed a maximum of two times per customer.'),
(5, '', 'The offer is available only for first time users.'),
(6, '', 'The offer is applicable once per customer email or mobile number.'),
(7, '', 'The offer is valid only for logged in users who verify their mobile number with an OTP (one time password).'),
(8, '', 'The offer is valid for new users, once per user during the offer period.'),
(9, '', 'This offer cannot be combined with any other offer.'),
(10, '', 'Teerdha reserves the right to disqualify any transaction or discontinue the offer promotion at any time without notice or liability of whatsoever nature.'),
(11, '', 'Teerdha is the sole authority for the interpretation of these terms.');

-- --------------------------------------------------------

--
-- Table structure for table `booking_bus_go_benefits2`
--

CREATE TABLE `booking_bus_go_benefits2` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_bus_go_benefits2`
--

INSERT INTO `booking_bus_go_benefits2` (`id`, `title`) VALUES
(1, 'Book Now, Pay Later'),
(2, 'Free Cancellation Policy'),
(3, 'Live Tracking'),
(4, 'Favorite Seat Collection');

-- --------------------------------------------------------

--
-- Table structure for table `booking_bus_go_cancel`
--

CREATE TABLE `booking_bus_go_cancel` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `point` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_bus_go_cancel`
--

INSERT INTO `booking_bus_go_cancel` (`id`, `title`, `point`) VALUES
(1, 'Conditions Incase of Cancellations:', 'Cancellation of tickets with discounts will be as per the above procedure. However, cancellation charges will be worked out on the basic fare payable by the passenger. Refund amount will be actual fare collected less a cancellation fee.'),
(2, '', 'Bridge fee, User Fee, Toll Fee, Entry Fee, etc. will be completely refunded.'),
(3, '', 'For cancellation of tickets, cancellation fee is calculated on the journey fare applicable.'),
(4, '', 'Partial Cancellation Is Possible.'),
(5, '', 'Partial cancellations will be refunded immediately.');

-- --------------------------------------------------------

--
-- Table structure for table `booking_bus_go_container2`
--

CREATE TABLE `booking_bus_go_container2` (
  `id` bigint(20) NOT NULL,
  `heading` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_bus_go_container2`
--

INSERT INTO `booking_bus_go_container2` (`id`, `heading`, `title`) VALUES
(1, 'Offers', 'FLAT 50% OFF (up to ₹300 OFF)'),
(2, 'Valid on Buses Starting From', 'Hyderabad,Guntur, Benguluru, Chennai, Mysore, Tirupathi'),
(3, 'Promocode', 'GO50');

-- --------------------------------------------------------

--
-- Table structure for table `booking_bus_go_image2`
--

CREATE TABLE `booking_bus_go_image2` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_bus_go_image2`
--

INSERT INTO `booking_bus_go_image2` (`id`, `image`) VALUES
(1, 'images/steal_the_deal.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `booking_bus_go_table2`
--

CREATE TABLE `booking_bus_go_table2` (
  `id` bigint(20) NOT NULL,
  `heading` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_bus_go_table2`
--

INSERT INTO `booking_bus_go_table2` (`id`, `heading`, `title`) VALUES
(1, 'Applicable On', 'BUS BOOKINGS'),
(2, 'Booking Period', 'OPEN'),
(3, 'Travel Period', 'OPEN'),
(4, 'Promocode', 'GO50');

-- --------------------------------------------------------

--
-- Table structure for table `booking_bus_go_terms2`
--

CREATE TABLE `booking_bus_go_terms2` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `point1` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_bus_go_terms2`
--

INSERT INTO `booking_bus_go_terms2` (`id`, `title`, `point1`) VALUES
(1, 'Terms & Conditions:', 'To avail the offer, the customer must enter the correct promocode GO50.'),
(2, '', 'The offer is only valid on the Bus only.'),
(3, '', 'The offer is valid for both one-way or return Bus booking.'),
(4, '', 'The discount will be credited instantly to the booking amount while making the transaction.'),
(5, '', 'The offer is valid for bookings made on Teerdha\'s app (both Android & iOS), PWA and desktop platforms.'),
(6, '', 'If the customer cancels the travel service purchase after the discount is credited,Teerdha will deduct the discount amount from the refund and cancellation charges shall apply.'),
(7, '', 'In case of partial cancellation, the offer stands void if the revised booking amount is not eligible for the discount or cashback, then it will be appropriately reduced basis the booking amount.'),
(8, '', 'In case of full cancellation, the offer stands void and the customer will not be eligible for discount.'),
(9, '', 'This offer cannot be clubbed with any other offer from Teerdha.'),
(10, '', 'The user agreement and privacy policy of Teerdha shall apply.'),
(11, '', 'Teerdha reserves the right, at any time, without prior notice and liability and without assigning any reason whatsoever, to add/alter/modify/change or vary all of these terms and conditions or to replace, wholly or in part, this offer by another offer, whether similar to this offer or not, or to extend or withdraw it altogether.'),
(12, '', 'Teerdha shall not be liable for any loss or damage arising due to force majeure event.'),
(13, '', 'For any card related claims, the customer shall approach the relevant bank and Teerdha shall not entertain any such claims.'),
(14, '', 'Disputes, if any, arising out of or in connection with this offer shall be subjected to the exclusive jurisdiction of the competent courts in Delhi.'),
(15, '', 'Teerdha is the sole authority for the interpretation of these terms.');

-- --------------------------------------------------------

--
-- Table structure for table `booking_bus_holiday12`
--

CREATE TABLE `booking_bus_holiday12` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_bus_holiday12`
--

INSERT INTO `booking_bus_holiday12` (`id`, `title`, `description`, `image`) VALUES
(1, 'What you will get?', 'Use code HOLIDAY20.', ''),
(2, '', 'Customers can save ₹2000 per person & customers can get a 20% discount on bus tickets.', ''),
(3, 'How do you get it?', 'To avail the discounts, users have to book bus tickets for their preferred holiday tour by applying Promocode: HOLIDAY20', ''),
(4, '', 'Use code to get a 20% discount up to Rs.2000 + Rs.100 cashback on bus ticket bookings.', ''),
(5, '', 'Teerdha(HOLIDAY20) applicable for a minimum ticket value of Rs.5000.', ''),
(6, '', 'All our new & existing customers can avail this offer.', ''),
(7, '', 'The offer is valid for bookings made on Teerdha\'s website, mobile site & much more.', ''),
(8, 'What else do you need to know?', 'The offer can\'t be clubbed with any other promotional offers.', ''),
(9, '', 'Teerdha offer is applicable on all channels.', ''),
(10, '', 'Teerdha cashback will be credited to Teerdha wallet within 48 working hours after date of the journey.', ''),
(11, '', 'The offer cash is valid for 6 months from the day it is credited into the wallet, after which it will expire and cannot be used.', ''),
(12, '', 'If a partial or full cancellation occurs, the offer becomes invalid & discounts will be removed before refunds are processed.', ''),
(26, '', '', 'images/bcd.png'),
(27, 'Conditions Incase of Cancellations :', 'Cancellation has per a cancellation policy of respective ticket.', ''),
(28, '', 'Partial cancellation is possible.', ''),
(29, '', 'Partial cancellations will be refunded immediately.', ''),
(30, '', 'We do allow cancellation of current tickets up to five hours before departure of bus from its starting point. And this time is not to be confused with the boarding time printed on your booking.', ''),
(31, '', 'Bookings from this site will be eligible for cancellation through Cancellation Form on this site only, In case e-ticket is booked through an agent, please contact the respective agent for cancellations.', ''),
(32, '', 'A ticket once transferred cannot to transfer or cancelled again.', ''),
(33, 'Terms & Conditions :', 'Sure, here are some typical terms and conditions for bus booking offer:', ''),
(34, '', 'Verification: Teerdha offer is valid only for logged in users who verify their mobile number with an OTP (one time password).', ''),
(35, '', 'Validity: This offer is valid from [1st May 2024] to [1st June 2024].', ''),
(36, '', 'Eligibility: The offer is open to individuals aged 18 & above.', ''),
(37, '', 'Requirement: To qualify for the offer, customers must book through Teerdha.', ''),
(38, '', 'Offer Details: The offer includes a flat 20% off, which may vary depending on the holiday package.', ''),
(39, '', 'Non-Refundable: In some cases, bookings made under this offer may be non-refundable or subject to stricter cancellation policies.', ''),
(40, '', 'Limitations: The offer is subject to availability & may be limited to a certain number of bookings or until a specified quota is reached.', ''),
(41, '', 'Redemption: Customers must follow the redemption process to avail the offer, include entering a promocode or a presenting voucher.', ''),
(42, '', 'Non-transferable: The offer is non-transferable & may not be exchanged for cash or any other alternative.', ''),
(43, '', 'Modification/Termination: Teerdha India Pvt.Ltd reserves the right to end any or all offers at its discretion without any prior notice.', ''),
(44, '', 'Compliance: Customers must comply with all applicable laws & regulations.', ''),
(45, '', 'Liability: The issuing authority is not liable for any losses, damages or expenses incurred as a result of participating in the offer.', '');

-- --------------------------------------------------------

--
-- Table structure for table `booking_bus_icici11`
--

CREATE TABLE `booking_bus_icici11` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_bus_icici11`
--

INSERT INTO `booking_bus_icici11` (`id`, `title`, `description`, `image`) VALUES
(1, '', '', 'images/travel.png'),
(2, 'What do you get?', 'Applicable for all users on ticket bookings.', ''),
(3, '', 'Users will get a minimum 15% offer on Bus Tickets.', ''),
(4, 'How do you get it?', 'Get 15% on your Bus Ticket Booking! For all Credit card cardholders.', ''),
(5, '', 'To book the ticket use this code: OFFER12.', ''),
(6, '', 'The discount coupon code is valid for bus bookings.', ''),
(7, '', 'The discounted amount will be deducted from the total payable amount.', ''),
(8, '', 'The offer is valid for bookings made on Teerdha\'s website, Mobile site, Android & iOS App.', ''),
(9, '', 'All our new and existing customers can avail this offer.', ''),
(10, 'What else do you need to know?', 'Changes in names are not allowed.', ''),
(11, '', 'The offers will be calculated on the base fare.', ''),
(12, '', 'In case of partial/full cancellation, the offer stands void and discount will be rolled back before processing the refunds.', ''),
(13, '', 'This offer is exclusive to bookings made with valid Promocodes.', ''),
(14, '', 'The offer can’t be clubbed with any other promotional offers.', ''),
(26, 'Conditions Incase of Cancellations :', 'When tickets are submitted prior to 12 hours before departure of the bus, refund shall be allowed after deducting 10% amount of tickets.', ''),
(27, '', 'Where tickets are submitted within 12 hours prior to departure of the bus, refund shall be allowed after deducting 25% amount of tickets.', ''),
(28, '', 'Where tickets are submitted within 2 hours after departure of the bus, refund shall be allowed after deducting 75% amount of tickets.', ''),
(29, '', 'Where tickets are submitted after 2 hours of departure of the bus, no refund shall be allowed.', ''),
(30, '', 'The Reservation / Handling charges if any are not refundable.', ''),
(31, 'Terms & Condition:', 'Teerdha is the sole authority for the interpretation of these terms.', ''),
(32, '', 'To avail the offer, the customer must enter the correct deal code OFFER12 in the \'Deal code\' field.', ''),
(33, '', 'The discount will be credited instantly to the booking amount while making the transaction.', ''),
(34, '', 'Offer is only valid on the Bus.', ''),
(35, '', 'Travel agents by profession are barred from this offer.', ''),
(36, '', 'The offer is valid for both one-way or return Bus booking.', ''),
(37, '', 'If the customer cancels the travel service purchase after the discount is credited,Teerdha will deduct the discount amount from the refund and cancellation charges shall apply.', ''),
(38, '', 'Additionally, the standard booking and privacy policies found at www.teerdha.com will be enforced by Teerdha.', ''),
(39, '', 'Teerdha retains the right, without prior notice, liability, or explanation, to adjust, amend, or replace all or part of these terms and conditions. This includes the option to substitute this offer with another, whether similar or not, or to extend or withdraw it completely.', ''),
(40, '', 'In the event of any dispute, the Courts of New Delhi will have jurisdiction.', ''),
(41, '', 'Teerdha shall not be liable for any loss or damage arising due to force majeure.', '');

-- --------------------------------------------------------

--
-- Table structure for table `booking_bus_offer9`
--

CREATE TABLE `booking_bus_offer9` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_bus_offer9`
--

INSERT INTO `booking_bus_offer9` (`id`, `title`, `description`, `image`) VALUES
(1, 'How do you get it ?', 'To avail the discount, users have to book bus tickets for their preferred destination by applying coupon code that is displaying on the page.', ''),
(2, '', 'This offer is valid on bookings made from 20th to 31st April 2024.', ''),
(3, '', 'Users get 40% cashback upto Rs.1000 on Bus ticket booking.', ''),
(4, '', 'Minimum order value - Rs.500.', ''),
(5, '', 'All our new and existing customers can avail this offer.', ''),
(6, '', 'The coupon code is only valid for bus bookings.', ''),
(7, '', 'The offer is valid for bookings made on Teerdha\'s website, Mobile site, Android & iOS App.', ''),
(8, 'Steps To Redeem The Bus Offer:', 'Open the Teerdha app.', ''),
(9, '', 'Scroll through the app and go to the \'Ticket Booking\' section.', ''),
(10, '', 'Click on \'Bus Tickets\', select your itinerary as per your travel plan.', ''),
(11, '', 'Enter \'Unique Coupon Code\' in the Promocode section of the offers and click apply.', ''),
(12, '', 'Proceed to the payment page and complete the transaction using your ICICI Bank Net Banking payment mode or much more.', ''),
(13, 'What else do we need to know?', 'Bookings with the ICICI bank will be only eligible to get the discount.', ''),
(14, '', 'This offer is valid for transactions made through Mobile wallets, UPI, Debit\\Credit cards, cash and much more.', ''),
(15, '', 'The offer can\'t be clubbed with any other promotional offers.', ''),
(16, '', 'The offers will be calculated on the base fare.', ''),
(17, '', 'Bookings with the valid Promocodes will be only eligible for this offer.', ''),
(18, '', 'The offer is valid on bus bookings made with Teerdha.', ''),
(19, '', 'In case of partial/full cancellation, the offer stands void and discount will be rolled back before processing the refunds.', ''),
(20, '', 'This booking via SMS facility is free of cost. All you have to pay will be the normal charges as applicable for Internet booking.', ''),
(21, 'Terms and Conditions:', 'The offer will only be applicable to transactions made via ICICI Net-banking only.', ''),
(22, '', 'An Instant discount shall be provided to the customer at the time of booking.', ''),
(23, '', 'The offer will be applicable every Thursday during the offer period for the transaction through Net-banking only.', ''),
(24, '', 'An Instant discount will be calculated on total bus fare which is Base + Tax (excluding ancillaries, insurance, convenience fees).', ''),
(25, '', 'The following transactions will not qualify for meeting the spends criteria: ATM cash withdrawals, fee payments, transactions which is either unsuccessful or cancelled/rejected by the ICICI Bank, transactions which are followed up with partial or full reversals or transactions that are cancelled by the net banking user.', ''),
(26, '', 'In all matters relating to this offer, the decision of the ICICI Bank shall be final and binding.', ''),
(27, '', 'In case a customer pays through reward points partly for the order, the customer shall be eligible to get the benefit of Instant discount only if the “Paid amount through Net banking + value of the Discount availed\" is greater than or equal to the minimum transaction value applicable to the particular offer.', ''),
(28, '', 'In case of partial/full cancellation, the offer stands void and the customer will not be eligible for the discount.', ''),
(29, '', 'In case of cancellation of a booking purchased using a voucher/coupon code, the discount provided will be deducted/settled from the refund amount as per the eligibility of the offer.', ''),
(30, '', 'The offer is not available wherever prohibited and / or on products / services for which such offers cannot be made available for any reason whatsoever.', ''),
(31, '', 'ICICI Bank & Service Provider reserves the right to disqualify the user\'s from the benefits of the offer, if any fraudulent activity is identified as being carried out for the purpose of availing the benefits under the said offer.', ''),
(32, '', '', 'images/icici_banner_3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `booking_bus_offercards`
--

CREATE TABLE `booking_bus_offercards` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `heading` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `discount` longtext NOT NULL,
  `valid` longtext NOT NULL,
  `code` longtext NOT NULL,
  `Link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_bus_offercards`
--

INSERT INTO `booking_bus_offercards` (`id`, `image`, `heading`, `title`, `discount`, `valid`, `code`, `Link`) VALUES
(1, 'images/POTO.PNG', 'Ayodhya Travel Guide.', 'Upto Rs.500 off on Bus Bookings.', 'Discount: 5% offer.', 'Valid Until: Every Fri,Sat,Sun.', 'BUSWEEKENDS', 'http://127.0.0.1:8000/bus_main1/'),
(2, 'images/IMAGE2.png', 'Steal the Deal.', 'Save Upto Rs.300 on Bus Bookings.', 'Discount: Get 50% Cashback.', 'Valid Until: Limited Period.', 'GO50', 'http://127.0.0.1:8000/bus_main2/'),
(3, 'images/IMAGE6666.png', 'Plan your Trip With Us!', 'Offer on Festival Save Upto Rs.900.', 'Discount 30% offer.', 'Valid Until: February 25, 2024.', 'FESTIVALBUS', 'http://127.0.0.1:8000/bus_main3/'),
(4, 'images/IMAGE7.png', 'Travellings in India?', 'Get FLAT Rs. 250 OFF on Buses.', 'Discount: 15% offer.', 'Valid Until: Limited Period.', 'SPECIAL25', 'http://127.0.0.1:8000/bus_main4/'),
(5, 'images/IMAGE44.png', 'New User Offer!', 'Upto Rs.210 off on First Booking.', 'Discount: 20% offer.', 'Valid Until: All Days Except Monday.', 'FIRSTBUS', 'http://127.0.0.1:8000/bus_main5/'),
(6, 'images/IMAGE1.png', 'Mega Deals on Booking!', 'Applicable For All Users FLAT Rs.100.', 'Discount: 10% offer.', 'Valid Until: Limited Period Offer.', 'BUSDAY', 'http://127.0.0.1:8000/bus_main6/'),
(7, 'images/IMAGE9.png', 'Deal of the Day.', 'Enjoy Different Deals Each Day.', 'Discount: Minimum 10% offer.', 'Valid until: Only Sunday, Monday.', 'EASEDAY', 'http://127.0.0.1:8000/bus_main8/'),
(8, 'images/IMAGE10.png', 'Special Offer of the Week.', 'Flat ₹120 offer + 100 Cashback.', 'Discount: 12% offer.', 'Valid until: Limited Time Period.', 'WEEKDAY', 'http://127.0.0.1:8000/bus_main9/'),
(9, 'images/IMAGE11.png', 'Travel Party.', 'Upto 15% on all Bus Booking.', 'Discount: 15% offer.', 'Valid Until: Only this month.', 'OFFER12', 'http://127.0.0.1:8000/bus_main11/'),
(10, 'images/V1.png', 'Ganesha Offer !', 'Upto ₹500/-* on Bus Tickets.', 'Discount: Get Instant discount.', 'Valid Until: Limited period.', 'FEST24', 'http://127.0.0.1:8000/bus_main13/'),
(11, 'images/IMAGE14.png', 'Bank Offer !', 'Grab Upto ₹1000/-* on Bus Tickets.', 'Discount: Get 40% offer.', 'Valid Until: Limited period.', 'ICICITD', 'http://127.0.0.1:8000/bus_main14/'),
(12, 'images/IMAGE15.png', 'Holiday Packages !', 'Save Upto ₹2000 Per Person.', 'Discount: 20% offer.', 'Valid Until: Limited period.', 'HOLIDAY20', 'http://127.0.0.1:8000/bus_main15/'),
(13, 'images/Image77.png', 'Ride More Save More!', 'Instant Discount ₹300 on Bus Booking.', 'Discount: 8% offer.', 'Valid until: Limited Time Period.', 'RIDE10', 'http://127.0.0.1:8000/bus_main7/');

-- --------------------------------------------------------

--
-- Table structure for table `booking_bus_ride13`
--

CREATE TABLE `booking_bus_ride13` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_bus_ride13`
--

INSERT INTO `booking_bus_ride13` (`id`, `title`, `description`, `image`) VALUES
(1, 'What do you get?', 'Users will get a minimum 8% offer on Bus Tickets.', ''),
(2, '', 'Instant discount ₹300 on Bus Booking.', ''),
(3, 'How to avail offer ?', 'Get 8% offer.', ''),
(4, 'How do you get it?', 'To avail the offers, users have to book bus tickets for their preferred destination by applying Promocode: RIDE10.', ''),
(5, '', 'This offer is valid for Limited Period.', ''),
(6, '', 'All our new and existing customers can avail this offer.', ''),
(7, '', 'The Promocode is valid for bus bookings.', ''),
(8, '', 'The offer is valid for bookings made on Teerdha\'s website, Mobile site, Android & iOS App.', ''),
(9, 'What else do you need to know?', 'This offer is exclusive to bookings made with valid promocodes.', ''),
(10, '', 'The offers will be calculated on the base fare.', ''),
(11, '', 'The offer can’t be clubbed with any other promotional offers.', ''),
(12, '', 'If a partial or full cancellation occurs, the offer becomes invalid, and any discount will be removed before refunds are processed.', ''),
(13, '', 'Changes in names are not allowed.', ''),
(24, '', '', 'images/ride.jpeg'),
(25, 'Conditions Incase of Cancellations :', 'When tickets are submitted prior to 12 hours before departure of the bus, refund shall be allowed after deducting 10% amount of tickets.', ''),
(26, '', 'Where tickets are submitted within 12 hours prior to departure of the bus, refund shall be allowed after deducting 25% amount of tickets.', ''),
(27, '', 'Where tickets are submitted within 2 hours after departure of the bus, refund shall be allowed after deducting 75% amount of tickets.', ''),
(28, '', 'Where tickets are submitted after 2 hours of departure of the bus, no refund shall be allowed.', ''),
(29, '', 'The Reservation / Handling charges if any are not refundable.', ''),
(30, 'Terms & Conditions :', 'Offer is valid for online booking and mobile booking.', ''),
(31, '', 'The discounted amount will be deducted from the total payable amount.', ''),
(32, '', 'One Promocode can be used by a user two times during the offer period.', ''),
(33, '', 'Enjoy booking and happy travelling.', ''),
(34, '', 'Teerdha retains the right, without prior notice, liability, or explanation, to adjust, amend, or replace all or part of these terms and conditions. This includes the option to substitute this offer with another, whether similar or not, or to extend or withdraw it completely.', ''),
(35, '', 'If there is any misuse or abuse of the offer, Teerdha holds the authority to decline the offer for customers.', ''),
(36, '', 'Teerdha holds absolute authority over the interpretation of these terms.', ''),
(37, '', 'Teerdha shall not be liable for any loss or damage arising due to force majeure.', '');

-- --------------------------------------------------------

--
-- Table structure for table `booking_bus_searchform`
--

CREATE TABLE `booking_bus_searchform` (
  `id` bigint(20) NOT NULL,
  `From` varchar(100) NOT NULL,
  `To` varchar(100) NOT NULL,
  `Departure` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booking_bus_special_avail4`
--

CREATE TABLE `booking_bus_special_avail4` (
  `id` bigint(20) NOT NULL,
  `heading` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_bus_special_avail4`
--

INSERT INTO `booking_bus_special_avail4` (`id`, `heading`, `title`) VALUES
(1, 'How to avail Offer?', 'Get 15% Offer.'),
(2, '', 'This offer is valid for Limited Period.'),
(3, '', 'The discount coupon code is valid for bus bookings.'),
(4, '', 'The discounted amount will be deducted from the total payable amount.'),
(5, '', 'All our new and existing customers can avail this offer.');

-- --------------------------------------------------------

--
-- Table structure for table `booking_bus_special_code4`
--

CREATE TABLE `booking_bus_special_code4` (
  `id` bigint(20) NOT NULL,
  `heading` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_bus_special_code4`
--

INSERT INTO `booking_bus_special_code4` (`id`, `heading`, `image`, `title`) VALUES
(1, '', 'images/trip.jpg', 'Coupon Code: SPECIAL25');

-- --------------------------------------------------------

--
-- Table structure for table `booking_bus_special_terms4`
--

CREATE TABLE `booking_bus_special_terms4` (
  `id` bigint(20) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `point` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_bus_special_terms4`
--

INSERT INTO `booking_bus_special_terms4` (`id`, `heading`, `point`) VALUES
(1, 'Conditions Incase of Cancellations:', 'In case of partial cancellation, the seat no. of the passenger who will not travel has to be cancelled.'),
(2, '', 'In case of partial cancellations, If the number of passengers after cancellations reduces to less than four, the group discount for all seats will be withdrawn.'),
(3, '', 'In case of cancellation of onward journey ticket, discount on return journey ticket will be withdrawn.'),
(4, '', 'Passengers are requested to keep information regarding the availability of counters at service originating places and the time at which trip sheets are generated to ensure that they get adequate time for ticket cancellation.'),
(5, 'Terms & Conditions:', 'The offer is valid for bookings made on Teerdha\'s app (both Android & iOS), PWA and desktop platforms.'),
(6, '', 'The user agreement and privacy policy of Teerdha shall apply.'),
(7, '', 'For any card related claims, the customer shall approach the relevant bank and Teerdha shall not entertain any such claims.'),
(8, '', 'Teerdha reserves the right, at any time, without prior notice and liability and without assigning any reason whatsoever, to add/alter/modify/change or vary all of these terms and conditions or to replace, wholly or in part, this offer by another offer, whether similar to this offer or not, or to extend or withdraw it altogether.'),
(9, '', 'This offer cannot be clubbed with any other offer from Teerdha.'),
(10, '', 'Disputes, if any, arising out of or in connection with this offer shall be subjected to the exclusive jurisdiction of the competent courts in Delhi.'),
(11, '', 'Teerdha shall not be liable for any loss or damage arising due to force majeure.'),
(12, '', 'Teerdha is the sole authority for the interpretation of these terms.'),
(13, '', 'In addition, the standard booking, cancellation and privacy policies of Teerdha will apply.'),
(14, '', 'Travel agents by profession are barred from this offer.');

-- --------------------------------------------------------

--
-- Table structure for table `booking_bus_weekday8`
--

CREATE TABLE `booking_bus_weekday8` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `heading` varchar(100) NOT NULL,
  `heading1` varchar(100) NOT NULL,
  `heading2` varchar(100) NOT NULL,
  `offer` varchar(100) NOT NULL,
  `promocode` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `point` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_bus_weekday8`
--

INSERT INTO `booking_bus_weekday8` (`id`, `image`, `heading`, `heading1`, `heading2`, `offer`, `promocode`, `title`, `point`) VALUES
(1, 'images/card8.jpeg', 'Offer Details', 'Offer', 'Promocode', 'Flat ₹120 offer + 100 cashback & Discount : 12% offer', 'WEEKDAY', '', ''),
(2, '', '', '', '', '', '', 'What do you get?', 'Users will get a flat ₹120 offer + 100 cashback and discount 12% off on bus tickets.'),
(3, '', '', '', '', '', '', 'How do you get it?', 'To avail discounts, users have to book bus tickets for their preferred destination by applying  Promocode: WEEKDAY.'),
(4, '', '', '', '', '', '', '', 'All our new and existing customers can avail this offer.'),
(5, '', '', '', '', '', '', '', 'The Promocode is valid for bus bookings.'),
(6, '', '', '', '', '', '', '', 'The offer is valid for bookings made on Teerdha\'s website, Mobile site, Android & iOS App.'),
(7, '', '', '', '', '', '', 'What else do you need to know?', 'The offer can’t be clubbed with any other promotional offers.'),
(8, '', '', '', '', '', '', '', 'The offers will be calculated on the base fare.'),
(9, '', '', '', '', '', '', '', 'This offer is exclusive to bookings made with valid Promocodes.'),
(22, '', '', '', '', '', '', 'Conditions Incase of Cancellations:', 'The cancellation has per cancellation policy of the respective ticket.'),
(23, '', '', '', '', '', '', '', 'Partial cancellation is possible.'),
(24, '', '', '', '', '', '', '', 'Partial cancellations will be refunded immediately.'),
(25, '', '', '', '', '', '', '', 'It is a right of Teerdha to change cancellation policy any time without prior to notice.'),
(26, '', '', '', '', '', '', '', 'Bookings from this site will be eligible for cancellation through Cancellation Form on this site only, In case e-ticket is booked through an agent, please contact the respective agent for cancellations.'),
(27, '', '', '', '', '', '', '', 'On Cancellation, Refund will be credited in three to ten working days in source payment.'),
(28, '', '', '', '', '', '', '', 'We do allow cancellation of current tickets up to five hours before departure of bus from its starting point. And this time is not to be confused with the boarding time printed on your booking.'),
(29, '', '', '', '', '', '', '', 'A ticket once transferred cannot to transfer or cancelled again.'),
(30, '', '', '', '', '', '', 'Terms & Conditions :', 'If there is any misuse or abuse of the offer, Teerdha holds the authority to decline the offer for customers.'),
(31, '', '', '', '', '', '', '', 'Teerdha holds absolute authority over the interpretation of these terms.'),
(32, '', '', '', '', '', '', '', 'The offer is valid for online booking and mobile booking.'),
(33, '', '', '', '', '', '', '', 'The discounted amount will be deducted from the total payable amount.'),
(34, '', '', '', '', '', '', '', 'One promocode can be used by a user two times during the offer period.'),
(35, '', '', '', '', '', '', '', 'Enjoy booking and happy travelling.'),
(36, '', '', '', '', '', '', '', 'Additionally, the standard booking and privacy policy found at www.teerdha.com will be enforced by Teerdha.'),
(37, '', '', '', '', '', '', '', 'In the event of any dispute, the Courts of New Delhi will have jurisdiction.'),
(38, '', '', '', '', '', '', '', 'Teerdha retains the right, without prior notice, liability, or explanation, to adjust, amend, or replace all or part of these terms and conditions. This includes the option to substitute this offer with another, whether similar or not, or to extend or withdraw it completely.'),
(39, '', '', '', '', '', '', '', 'Teerdha shall not be liable for any loss or damage arising due to force majeure.');

-- --------------------------------------------------------

--
-- Table structure for table `booking_bus_weekends1`
--

CREATE TABLE `booking_bus_weekends1` (
  `id` bigint(20) NOT NULL,
  `heading` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `point` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_bus_weekends1`
--

INSERT INTO `booking_bus_weekends1` (`id`, `heading`, `image`, `title`, `point`) VALUES
(1, 'Ayodhya Travel Guide', '', 'Limited Time Offer', 'Apply coupon code BUSWEEKENDS and save Rs.500 on your booking.'),
(2, '', '', '', 'The offer is valid once per user during the offer period.'),
(3, '', '', '', 'The offer also valid for payments made through select Credit cards & Debit cards.'),
(4, '', '', '', 'Users should be logged in to Teerdha to avail the offer.'),
(5, '', '', '', 'Offer is valid every Fri,Sat,Sun.'),
(6, '', '', '', 'The offer cannot be combined with any other offer.'),
(7, '', '', '', 'Users will get ₹10 - ₹100 cashback on completing a payment at select shops using Paytm.'),
(8, '', '', '', 'Users have to make a payment of ₹50 or more to make that payment eligible for cashback.'),
(9, '', '', '', 'The offer can be availed only once during the campaign\'s validity.'),
(10, '', '', '', 'On making the eligible payment, users will receive a scratch card post payment.'),
(11, '', '', '', 'On scratching this scratchcard, users will get cashback.'),
(12, '', '', '', 'If users don\'t scratch the card immediately after making a payment.'),
(13, '', '', '', 'They have the option to do so by accessing the cashback & offers section.'),
(14, '', '', '', 'The offer is also applicable on paying through Paytm at selected merchants registered with Paytm.'),
(15, '', '', '', 'For UPI payments, the user needs to use their own Paytm registered UPI to get cashback.'),
(16, '', '', '', 'Teerdha maintains the authority to invalidate any transaction.'),
(17, '', '', '', 'Teerdha has the prerogative to cease the offer at any time without prior notice or accepting any liability.'),
(18, '', 'images/Mega_deals22.jpg', '', ''),
(19, '', '', 'Conditions Incase of Cancellations:', 'Cancellation fee will be deducted from the total collected amount.'),
(20, '', '', '', 'Cancellation slabs (% fare refund) are based on the time of cancellation with reference to the departure time of the service at the place of boarding.'),
(21, '', '', '', 'For cancellation of tickets, cancellation fee is calculated on the journey fare applicable.'),
(22, '', '', '', 'The reservation fee is non-refundable.');

-- --------------------------------------------------------

--
-- Table structure for table `booking_bus_weekends_terms1`
--

CREATE TABLE `booking_bus_weekends_terms1` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `point` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_bus_weekends_terms1`
--

INSERT INTO `booking_bus_weekends_terms1` (`id`, `title`, `point`) VALUES
(1, 'Terms and Conditions', 'The offer is valid for bookings made on Teerdha\'s app (both Android & iOS), PWA and desktop platforms.'),
(2, '', 'This offer cannot be clubbed with any other offer from Teerdha.'),
(3, '', 'Teerdha reserves the right, at any time, without prior notice and liability and without assigning any reason whatsoever, to add/alter/modify/change or vary all of these terms and conditions or to replace, wholly or in part, this offer by another offer, whether similar to this offer or not, or to extend or withdraw it altogether.'),
(5, '', 'The user agreement and privacy policy of Teerdha shall apply.'),
(6, '', 'For any card related claims, the customer shall approach the relevant bank and Teerdha shall not entertain any such claims.'),
(7, '', 'Disputes, if any, arising out of or in connection with this offer shall be subjected to the exclusive jurisdiction of the competent courts in Delhi.'),
(10, '', 'Teerdha is the sole authority for the interpretation of these terms.'),
(11, '', 'Teerdha shall not be liable for any loss or damage arising due to force majeure.');

-- --------------------------------------------------------

--
-- Table structure for table `booking_bus_whychoose`
--

CREATE TABLE `booking_bus_whychoose` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_bus_whychoose`
--

INSERT INTO `booking_bus_whychoose` (`id`, `title`, `content`) VALUES
(1, 'We Are About Teerdha', 'Teerdha is the best platform for booking bus tickets online. Teerdha is serving around the country and will be launching bus ticket booking services in more countries. Trusted by over 17 million customers, Teerdha offers an easy, fast, and secure platform for booking cheap bus tickets. You only need to select your origin, destination, and date of departure and you will find plenty of buses to travel by within a few seconds. You can book a bus based on your preferred schedule, choose a pick-up and drop-off, your preferred bus type and book a bus ticket online with just a few clicks!'),
(2, 'Why Teerdha for Bus Booking?', 'The leading player in online Bus bookings in India, Teerdha offers the lowest fares, exclusive discounts and a seamless online booking experience. A desktop or mobile site is a delightfully customer friendly experience and with just a few clicks, you can complete your booking.'),
(3, 'Online Bus Ticket Booking at the Lowest Price', 'With Teerdha, travellers can book bus tickets online at the lowest ticket fares. Travellers can choose their favorite bus for online bus booking. Teerdha is the right place for reserving bus tickets as you will find a wide range of private buses and SRTC (State Road Transport Corporation) buses available for bus booking online on Teerdha. It provides you with a wide range of facilities, right from choosing your pickup point to your preferred choice of seat (for instance, luxury buses with sleeper berths). You can also choose from the widest range of available buses like Mercedes, Volvo, Volvo AC, AC luxury, Deluxe, Sleeper, Express and other private buses. The payment options are easier to you can use either debit/credit card facility or net-banking. Not just that, in case of any change in your travel plan, bus tickets can be cancelled online. You can directly book bus tickets online with teerdha.com and stay assured.'),
(4, 'Open 24/7 for reservations', 'This is the most important reason why you should book bus tickets online. You can book anytime from anywhere you wish to. You can also use your Teerdha bus offer code anytime to avail a discount on your bus booking. Commission fee, When you book tickets through a travel agency or a travel agent then you have to pay some additional amount as a commission fee but if you book online you get a commission fee booking. They will also let you know about various bus ticket offers so that you can get discounts on your bus booking.'),
(5, 'Advantages of booking Teerdha', 'Teerdha buses are renowned for their outstanding levels of safety, comfort, and environmental sustainability. This makes them the favourite options for both passengers and operators. A few benefits of the Teerdha bus are: Safety is the top priority and these buses are fitted with the latest safety features. It is determined to reduce its carbon footprint. The buses are designed to get maximum fuel efficiency with minimum emissions. AC buses give passengers a relaxing travel experience even in humid and hot temperatures. This is particularly important when travelling long distances, during which passengers spend a long time on the bus.'),
(6, 'More bookings, fewer cancellations!', 'There is an endless back and forth in managing bookings manually with always the possibility of a cancellation or a no-show. An online booking(Teerdha), can lift that weight from your shoulders making the entire process effortless and efficient. Another feature that can further increase the chances for your customers to show up is the automated reminders to their phones and emails.'),
(7, 'Secure and fast payments!', 'In simple words, an online booking system will put money in your pocket quicker and will have the capability to detect fraud and solve any disputes. Many times we are faced with a challenge when a customer creates a booking but doesn’t show up, especially if there is no prepayment involved. With the Teerdha booking system, you can opt for a partial or a full upfront deposit to secure your bookings. An automated system will make it a seamless process to handle payments with a secure payment gateway. In the event of a no-show, It even allows you to keep a certain amount as compensation, which can minimize your losses.'),
(8, 'No more human errors', 'Mistakes are inevitable if you are doing things manually. An 8 that looks like a 6 or that missing note from your notepad, can all cost you money or a potential customer. An automated tool like a Teerdha online reservation will make these mistakes a thing of the past. However, If a customer makes a mistake, It is possible that the system might not detect it but at least you are safe from your end.'),
(9, 'Say hello to the new Teerdha Application!', 'It takes a while and a lot of work from your end as well as the Teerdha Online Booking system support team to customize the system based on what works best for your business. But once all that hard work is done, it provides all the features of a Teerdha Bus Booking Application that will provide your customers with the top-notch personalized service that they desire from a Tour and Activity Service provider. You might still need customer care service to handle some special scenarios. But as you keep customizing your system to manage those unique cases, the customer support queries will become few and far between.');

-- --------------------------------------------------------

--
-- Table structure for table `booking_cabs_offerscrud_dashboard`
--

CREATE TABLE `booking_cabs_offerscrud_dashboard` (
  `id` bigint(20) NOT NULL,
  `offer` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_cabs_offerscrud_dashboard`
--

INSERT INTO `booking_cabs_offerscrud_dashboard` (`id`, `offer`, `url`) VALUES
(1, 'Festive Offer', '/cab_update/1'),
(2, 'Get 10% Discount', '/cab_update/2'),
(3, 'Anytime, Anywhere Travel', '/cab_update/3'),
(4, 'Get Rs.100 offer', '/cab_update/4'),
(5, 'Family Travel Savings', '/cab_update/5'),
(6, 'Airport Travel Made Easy', '/cab_update/6'),
(7, 'Ride More, Save More', '/cab_update/7'),
(8, 'paytm cashback', '/cab_update/8');

-- --------------------------------------------------------

--
-- Table structure for table `booking_cabwhycontents`
--

CREATE TABLE `booking_cabwhycontents` (
  `id` bigint(20) NOT NULL,
  `ctitle` longtext NOT NULL,
  `heading1` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_cabwhycontents`
--

INSERT INTO `booking_cabwhycontents` (`id`, `ctitle`, `heading1`) VALUES
(1, 'Why do we choose Teerdha for booking cabs?', 'With the rise of technology, booking a cab online has never been easier. It provides a wide range of benefits that can make your travel experience smoother and more enjoyable.'),
(2, 'Why do we choose Teerdha for booking cabs?', 'You can book a cab quickly and easily from the comfort of your home, using a mobile app or website. No longer waiting on hold or struggling to communicate over the phone.'),
(3, 'Why do we choose Teerdha for booking cabs?', 'In India, we are a certified and established prominent supplier of the car rental and hire services.'),
(4, 'Why do we choose Teerdha for booking cabs?', 'Furnished as a unique, scalable, and creative solution provider along with more than 10 years of experience in the market as a top corporate company. '),
(5, 'Why do we choose Teerdha for booking cabs?', 'We are the one revolutionizing easy and simple online taxi booking in India. We are committed to providing 100% customer-satisfactory rides along with ensuring safety.'),
(6, 'Is Teerdha cabs available 24/7 ?', 'The right way to get through your everyday travel needs.'),
(7, 'Is Teerdha cabs available 24/7 ?', 'Teerdha cabs are available 24/7.'),
(8, 'Is Teerdha cabs available 24/7 ?', 'So, you can book at anytime and travel in a moment. As cab services are available 24/7, you can enjoy a cab ride any time or during transportation emergencies. Whether you are traveling in a new place or in emergency situations, cab services will help you to reach your destination safely and on time.'),
(9, 'Can Teerdha track your cab live location ?', 'When you book your Teerdha ride, you’re assigned a driver, whose confirmation comes to you with a ride tracking link.'),
(10, 'Can Teerdha track your cab live location ?', 'The same link can be used to track your driver. And using the same link, even without the Teerdha app, your parents & loved ones can track your ride movements.'),
(11, 'Can Teerdha track your cab live location ?', 'You don’t have to wait as you can always track the movement of your driver and plan accordingly.'),
(12, 'Can Teerdha track your cab live location ?', 'While your journey is ongoing, your parents and loved ones can access your movements.'),
(13, 'Can Teerdha track your cab live location ?', 'There is no limitation to the number of people who can use the GPS tracking link.'),
(14, 'Can Teerdha track your cab live location ?', 'Teerdha app is not mandatory for you or your loved ones to use the GPS tracking link.'),
(15, 'What kind of payment methods are available ?', 'These platforms offer a range of simple and secure payment methods, including cash, credit cards, and digital wallets.  This eliminates the need to carry cash, ensuring a hassle-free experience from start to finish. '),
(16, 'What kind of payment methods are available ?', ' People can view the fare and pay for the ride in advance, which ensures transparency and eliminates any confusion or disagreements.'),
(17, 'Visit Teerdha.com for more info ', ' Book cabs for your daily routines and also for holiday round trips.'),
(18, 'Visit Teerdha.com for more info ', 'Here you can tailor your trip from end-to-end by scouring for suitable cabs and making your cab booking before proceeding with your hotel bookings.'),
(19, 'Visit Teerdha.com for more info ', 'Look up well-researched holiday packages, go through cab packages and finalize your entire trip on just one platform.'),
(20, 'Visit Teerdha.com for more info ', 'Taxi fares are very reasonably priced. They are just little more than bus or train expenses. However, the comfort and personal space you get in a taxi is not available on the bus or train.'),
(21, 'Visit Teerdha.com for more info ', 'The prices are lower than those of Uber, and the cabs are usually of better quality.');

-- --------------------------------------------------------

--
-- Table structure for table `booking_cab_anytime`
--

CREATE TABLE `booking_cab_anytime` (
  `id` bigint(20) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `heading` varchar(100) NOT NULL,
  `content` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `point1` longtext NOT NULL,
  `point2` longtext NOT NULL,
  `point3` longtext NOT NULL,
  `point4` longtext NOT NULL,
  `point5` longtext NOT NULL,
  `point6` longtext NOT NULL,
  `point7` longtext NOT NULL,
  `point8` longtext NOT NULL,
  `point9` longtext NOT NULL,
  `point10` longtext NOT NULL,
  `point11` longtext NOT NULL,
  `point12` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_cab_anytime`
--

INSERT INTO `booking_cab_anytime` (`id`, `photo`, `heading`, `content`, `title`, `point1`, `point2`, `point3`, `point4`, `point5`, `point6`, `point7`, `point8`, `point9`, `point10`, `point11`, `point12`) VALUES
(1, '', 'Exclusive Offer: ANYTIME24', 'Enjoy 5% off upto Rs.150 and receive an additional 5% cashback upto Rs.150 on your bookings.', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2, '', '', '', 'What do You Get ?', 'Avail a 5% discount on your bookings, upto Rs.150.', 'Receive an extra 5% cashback, upto Rs.150, on your bookings.', 'This offer is applicable anytime, allowing you to book cabs at your convenience while enjoying the benefits.', '', '', '', '', '', '', '', '', ''),
(3, '', '', '', 'How do You Get  ?', 'Use the promo code ANYTIME24 during checkout to enjoy a 5% discount on your booking, with a maximum discount of Rs.150.', 'After completing your booking, you\'ll receive an additional 5% cashback upto Rs.150, credited to your account.', 'This offer is applicable to all bookings made within the specified period and can be redeemed multiple times per user.', 'Check our website regularly for new offers and discounts available exclusively to our subscribers.', 'Follow our social media channels for special announcements and limited-time deals.', '', '', '', '', '', '', ''),
(4, '', '', '', 'What else do you need to know ?', 'Ensure you are aware of the validity period of the offer. Check the start and end dates to make sure your booking falls within this timeframe.', 'Confirm which booking platforms or channels are eligible for this offer. Some offers may only be valid on specific websites or mobile apps.', 'Read and understand the terms and conditions associated with the offer. Pay attention to any exclusions, minimum booking amounts, or specific requirements to qualify for the discount and cashback.', 'Understand how to apply the promo code ANYTIME24 correctly during the booking process to activate the discount and cashback benefits.', 'Be aware of the maximum discount and cashback limits. In this case, the offer provides a 5% discount upto Rs.150 and an additional 5% cashback upto Rs.150. Ensure your booking meets these criteria.', 'Check if there are any specific payment methods required to avail of the offer. Some promotions may be limited to certain payment options such as credit/debit cards, net banking, or digital wallets.', 'Familiarize yourself with the customer support channels available in case you encounter any issues while redeeming the offer. Having access to timely assistance can help resolve any queries or concerns related to the promotion.', '', '', '', '', ''),
(5, '', '', '', 'Terms and Conditions ', 'Check the validity period of the offer to ensure your bookings fall within the specified dates.', 'Understand the correct procedure for applying the promo code ANYTIME24 during the booking process to activate the discount and cashback benefits.', 'Determine if there is a minimum booking amount required to be eligible for the offer.', 'Note the maximum discount and cashback limits. In this case, it provides a 5% discount upto Rs.150 and an additional 5% cashback upto Rs.150.', 'Check if specific payment methods are required to avail of the offer. Some promotions may be limited to certain payment options such as credit/debit cards, net banking, or digital wallets.', 'Verify which types of bookings qualify for the offer. It may apply to flights, hotels, packages, or specific destinations.', 'Be aware of any exclusions or restrictions that apply to certain bookings, destinations, or travel periods.', 'Clarify if the offer can be combined with other promotions or discounts offered by the platform or travel provider.', 'Understand the implications of canceling or modifying bookings made under this offer. Review the refund policy to ensure you are aware of any applicable charges or penalties.', 'Familiarize yourself with the customer support channels available in case you encounter any issues or have inquiries regarding the offer. Having access to timely assistance can help address any concerns efficiently.', '', ''),
(6, 'images/S-anywhere.jpeg', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `booking_cab_easy`
--

CREATE TABLE `booking_cab_easy` (
  `id` bigint(20) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `point1` longtext NOT NULL,
  `point2` longtext NOT NULL,
  `point3` longtext NOT NULL,
  `point4` longtext NOT NULL,
  `point5` longtext NOT NULL,
  `point6` longtext NOT NULL,
  `point7` longtext NOT NULL,
  `point8` longtext NOT NULL,
  `point9` longtext NOT NULL,
  `point10` longtext NOT NULL,
  `point11` longtext NOT NULL,
  `point12` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_cab_easy`
--

INSERT INTO `booking_cab_easy` (`id`, `photo`, `title`, `point1`, `point2`, `point3`, `point4`, `point5`, `point6`, `point7`, `point8`, `point9`, `point10`, `point11`, `point12`) VALUES
(1, '', 'What do You Get ?', 'Get upto 25%  instant discount on airport travel by using code EASY25.', 'The customer will receive instant discounts as per the above details.', '', '', '', '', '', '', '', '', '', ''),
(2, '', 'How do You Get ?', 'Use the code \"EASY25\" during the booking process to avail the offer upto 25% discount.', 'The discount will be automatically applied to your total booking amount once you enter the code.', 'Easily book our services through our Teerdha website or mobile app.', 'Receive instant confirmation of your booking along with details of your cab and driver.', '', '', '', '', '', '', '', ''),
(3, '', 'What else do you need to know ?', 'The discount code \"EASY25\" is valid for a limited time. Check the expiration date before booking.', '', '', '', '', '', '', '', '', '', '', ''),
(4, '', 'Terms and Conditions', 'The discount of up to 25% is applicable only on the base fare and does not include additional charges such as tolls, parking fees, or extra services.', 'The promotional code EASY25 must be applied at the time of booking to avail of the discount.', 'The offer is subject to availability and may be withdrawn or modified at any time without prior notice.', 'The discount cannot be combined with any other promotions, discounts, or offers.', 'Bookings made using this offer are non-transferable and cannot be exchanged for cash or any other services.', 'The discount is applicable only on airport transfer services and not on any other cab services.', 'The offer is valid for a limited period and may expire at the discretion of the company.', 'The discount is applicable only for bookings within the specified geographical area served by our cab services.', 'The company reserves the right to cancel any booking that violates the terms and conditions of this offer.', 'The discount is not applicable on bookings made through third-party platforms or agencies.', 'Any changes or cancellations to bookings made under this offer are subject to our standard cancellation policy.', 'The company is not liable for any delays or cancellations due to unforeseen circumstances such as traffic congestion, road closures, or adverse weather conditions.'),
(5, 'images/S-airport.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `booking_cab_familyfun`
--

CREATE TABLE `booking_cab_familyfun` (
  `id` bigint(20) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `heading` varchar(100) NOT NULL,
  `content` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `point1` longtext NOT NULL,
  `point2` longtext NOT NULL,
  `point3` longtext NOT NULL,
  `point4` longtext NOT NULL,
  `point5` longtext NOT NULL,
  `point6` longtext NOT NULL,
  `point7` longtext NOT NULL,
  `point8` longtext NOT NULL,
  `point9` longtext NOT NULL,
  `point10` longtext NOT NULL,
  `point11` longtext NOT NULL,
  `point12` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_cab_familyfun`
--

INSERT INTO `booking_cab_familyfun` (`id`, `photo`, `heading`, `content`, `title`, `point1`, `point2`, `point3`, `point4`, `point5`, `point6`, `point7`, `point8`, `point9`, `point10`, `point11`, `point12`) VALUES
(1, '', 'Exclusive Offer: FAMILYFUN30', 'Exclusive savings are  available only with the promo code \"FAMILYFUN30\".', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2, '', '', '', 'What Users Get ?', 'A 30% discount on cab rides specifically tailored for family travel.', 'Convenient and affordable travel options for families.', 'Exclusive savings available only with the promo code \"FAMILYFUN30\".', 'Opportunity to create memorable family moments without breaking the budget.', '', '', '', '', '', '', '', ''),
(3, '', '', '', 'How to Avail the Offer ?', 'Enter the promo code \"FAMILYFUN30\" during the cab booking process.', 'Ensure that the code is applied before finalizing the booking.', 'The 30% discount will be automatically applied to the total fare.', 'Confirm the discounted amount before completing the booking transaction.', 'The offer is applicable to all cab rides booked using the promo code.', '', '', '', '', '', '', ''),
(4, '', '', '', 'What Else You Need to Know ?', 'The offer is valid for a limited period. Check the expiration date for eligibility.', 'Users can use the promo code \"FAMILYFUN30\" for multiple family rides within the offer period.', 'The discount may vary based on the fare and distance of the cab ride.', 'Additional charges such as tolls or surcharges may apply and are not included in the discount.', 'The offer cannot be combined with other ongoing promotions or discounts.', 'Management reserves the right to modify or cancel the offer without prior notice.', 'Users must ensure the correct entry of the promo code to avail of the discount.', '', '', '', '', ''),
(5, '', '', '', 'Terms and Conditions', 'This offer is valid for a limited time period and subject to availability.', 'The promo code \"FAMILYFUN30\" must be entered correctly to avail of the discount.', 'This offer is valid for a limited time period and subject to availability.', 'The discount applies to the base fare and may not cover additional charges.', 'This offer is applicable to all cab rides booked for family travel.', 'Users must confirm the application for the discount before completing the booking.', 'Use of the promo code implies acceptance of all terms and conditions related to the offer.', '', '', '', '', ''),
(6, 'images/S-family_1.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `booking_cab_festive`
--

CREATE TABLE `booking_cab_festive` (
  `id` bigint(20) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `point1` longtext NOT NULL,
  `point2` longtext NOT NULL,
  `point3` longtext NOT NULL,
  `point4` longtext NOT NULL,
  `point5` longtext NOT NULL,
  `point6` longtext NOT NULL,
  `point7` longtext NOT NULL,
  `point8` longtext NOT NULL,
  `point9` longtext NOT NULL,
  `point10` longtext NOT NULL,
  `point11` longtext NOT NULL,
  `point12` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_cab_festive`
--

INSERT INTO `booking_cab_festive` (`id`, `photo`, `title`, `point1`, `point2`, `point3`, `point4`, `point5`, `point6`, `point7`, `point8`, `point9`, `point10`, `point11`, `point12`) VALUES
(1, '', 'What do you get ?', 'Get upto Rs.200 instant discount on your first booking.', '', '', '', '', '', '', '', '', '', '', ''),
(2, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(3, 'images/S-festival.jpeg', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(4, '', 'How do you get it ?', 'To avail this offer, you need to use the code MAKARA20 during your booking process.', '', '', '', '', '', '', '', '', '', '', ''),
(5, '', 'What else do you need to know ?', 'This offer is valid only for your first booking.', '', '', '', 'The discount will be applied instantly upon entering the code MAKARA20 during the booking process.', 'This offer may have certain terms and conditions, such as minimum booking amount, validity period etc. Make sure to check them before availing the offer.', '', '', '', '', '', ''),
(6, '', 'Terms and Conditions', 'This offer valid only on your first booking.', '', '', '', 'The discount is applicable only when the code MAKARA20 is used during the booking process.', 'A minimum booking amount may be required to get the discount.', 'This offer is subjected to availability and may be withdrawn at any time without prior notice.', 'This offer cannot be combined with any other promotions or discounts.', 'Other terms and conditions may apply. Please refer to the specific offer details for more information.', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `booking_cab_offer_card`
--

CREATE TABLE `booking_cab_offer_card` (
  `id` bigint(20) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `point1` longtext NOT NULL,
  `point2` longtext NOT NULL,
  `point3` longtext NOT NULL,
  `point4` longtext NOT NULL,
  `point5` longtext NOT NULL,
  `point6` longtext NOT NULL,
  `point7` longtext NOT NULL,
  `point8` longtext NOT NULL,
  `point9` longtext NOT NULL,
  `point10` longtext NOT NULL,
  `point11` longtext NOT NULL,
  `point12` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_cab_offer_card`
--

INSERT INTO `booking_cab_offer_card` (`id`, `photo`, `title`, `point1`, `point2`, `point3`, `point4`, `point5`, `point6`, `point7`, `point8`, `point9`, `point10`, `point11`, `point12`) VALUES
(1, '', 'What do You Get ?', 'Enjoy a upto 15% discount on your cab bookings.', 'Save upto Rs.150 on each booking.', '', '', '', '', '', '', '', '', '', ''),
(2, '', 'How to Avail ?', 'Use the code \"OFFER15\" during checkout to apply for the discount.', 'The discount will be automatically calculated and deducted from your total fare.', '', '', '', '', '', '', '', '', '', ''),
(3, '', 'What else do you need to know ?', 'This offer is valid for a limited time only.', 'It can be used multiple times by the same user.', 'The discount applies to all types of cab bookings, including one-way and round trips.', '', '', '', '', '', '', '', '', ''),
(4, '', 'Terms and Conditions', 'The \"Ride More, Save More\" offer is valid for cab bookings made through our official website or mobile application.', 'Customers can be able to avail upto 15% discount on their cab bookings using the promo code \"offer15\".', 'The maximum discount amount per booking is Rs.150.', 'This offer is applicable only on the base fare and does not include additional charges such as tolls, parking fees or extra services.', 'The discount is non-transferable and cannot be exchanged for cash or any other services.', 'The offer is subject to availability and may be withdrawn or modified at any time without prior notice.', 'The discount cannot be combined with any other promotions, discounts or offers.', 'Bookings made using this offer are subject to our standard cancellation policy.', 'The offer is valid for a limited period and may expire at the discretion of the company.', 'The discount is applicable only for rides within the specified geographical area served by our cab services.', 'The company reserves the right to cancel any booking that violates the terms and conditions of this offer.', 'The discount is not applicable on bookings made through third-party platforms or agencies.'),
(5, 'images/S-ride.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `booking_cab_paytm_card`
--

CREATE TABLE `booking_cab_paytm_card` (
  `id` bigint(20) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `point1` longtext NOT NULL,
  `point2` longtext NOT NULL,
  `point3` longtext NOT NULL,
  `point4` longtext NOT NULL,
  `point5` longtext NOT NULL,
  `point6` longtext NOT NULL,
  `point7` longtext NOT NULL,
  `point8` longtext NOT NULL,
  `point9` longtext NOT NULL,
  `point10` longtext NOT NULL,
  `point11` longtext NOT NULL,
  `point12` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_cab_paytm_card`
--

INSERT INTO `booking_cab_paytm_card` (`id`, `photo`, `title`, `point1`, `point2`, `point3`, `point4`, `point5`, `point6`, `point7`, `point8`, `point9`, `point10`, `point11`, `point12`) VALUES
(1, '', 'What do You Get ?', 'Users can receive cashback of upto Rs.250 when they pay for taxi rides using the Paytm app.', 'The cashback amount is determined based on the transaction value and offer terms.', 'Cashback is credited directly to the user\'s Paytm wallet after a successful payment transaction.', 'The offer provides a convenient way for users to save money on their cab expenses.', 'Users can track their cashback rewards in the Paytm app\'s transaction history.', 'This offer encourages users to adopt digital payment methods for their cab rides.', '', '', '', '', '', ''),
(2, '', 'How to Avail the Offer ?', 'Open the Paytm app and navigate to the \'Scan & Pay\' option.', 'Scan the QR code displayed in the taxi or enter the recipient\'s mobile number for payment.', 'Enter the transaction amount and proceed to the payment page.', 'Apply the code \'PAYTM25\' during the payment process to avail of the cashback offer.', 'Complete the payment using your Paytm wallet or linked payment method.', 'Ensure that the payment is successful to qualify for the cashback.', 'Users can avail of the offer multiple times during the offer period.', 'Cashback is credited instantly or within a specified timeframe after the transaction.', 'Users can check the offer details and eligibility criteria in the Paytm app\'s offers section.', '', '', ''),
(3, '', 'What else do you need to know ?', 'The cashback offer is valid for a limited period, subject to Paytm\'s discretion.', 'Users must comply with the offer terms and conditions to qualify for cashback rewards.', 'Cashback amounts may vary based on transaction amounts, offer duration and other factors.', 'Paytm reserves the right to modify or withdraw the offer without prior notice.', 'Users are encouraged to update their Paytm app to access the latest offers and features.', 'This offer is applicable only on eligible cab rides paid through the Paytm app.', 'Cashback is non-transferable and cannot be exchanged for cash or vouchers.', 'In case of payment failure or cancellation, cashback eligibility may be affected.', 'Paytm may impose additional terms for specific user segments or transaction types.', 'For any queries or assistance regarding the cashback offer, users can contact Paytm customer support.', '', ''),
(4, '', 'Terms and Conditions', 'This offer is valid for Paytm users who make payments for cab rides using the Paytm app.', 'Users must enter the code \'PAYTM25\' during the payment process to avail of the cashback offer.', 'The cashback amount is subject to a maximum limit of Rs.250 per transaction.', 'Cashback will be credited to the user\'s Paytm wallet within a specified period after a successful transaction.', 'This offer is applicable only on eligible taxi rides booked and paid through the Paytm app.', 'Users can avail of the offer multiple times during the offer period, subject to the maximum cashback limit.', 'Paytm reserves the right to modify or withdraw the offer at any time without prior notice.', 'Cashback amounts may vary based on the transaction amount, offer duration and other factors.', 'Cashback is non-transferable and cannot be exchanged for cash or vouchers.', 'In case of payment failure or cancellation, cashback eligibility may be affected.', 'Any fraudulent or suspicious activities may lead to the cancellation of cashback rewards and account suspension.', 'Paytm may impose additional terms and conditions for specific user segments or transaction types.'),
(5, 'images/paytm4.png', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `booking_cab_ride`
--

CREATE TABLE `booking_cab_ride` (
  `id` bigint(20) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `point1` longtext NOT NULL,
  `point2` longtext NOT NULL,
  `point3` longtext NOT NULL,
  `point4` longtext NOT NULL,
  `point5` longtext NOT NULL,
  `point6` longtext NOT NULL,
  `point7` longtext NOT NULL,
  `point8` longtext NOT NULL,
  `point9` longtext NOT NULL,
  `point10` longtext NOT NULL,
  `point11` longtext NOT NULL,
  `point12` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_cab_ride`
--

INSERT INTO `booking_cab_ride` (`id`, `photo`, `title`, `point1`, `point2`, `point3`, `point4`, `point5`, `point6`, `point7`, `point8`, `point9`, `point10`, `point11`, `point12`) VALUES
(1, '', 'What do You Get ?', 'Save Rs.100 on your next ride.', 'Enjoy convenient and affordable travel.', 'Redeemable with the code \"RIDE100\".', '', '', '', '', '', '', '', '', ''),
(2, '', 'How to Avail ?', 'Enter the code \"RIDE100\" into the designated field during the booking process for your next ride.', 'Ensure that you meet the eligibility criteria for the offer. This may include being a new user, a certain minimum booking amount, or specific ride types.', 'Proceed with booking your ride as usual after applying the code. The discount should be automatically applied to your total fare.', 'Verify that the discount has been successfully applied before completing the booking. If not, double-check the terms and conditions of the offer or contact customer support for assistance.', '', '', '', '', '', '', '', ''),
(3, '', 'What else do you need to know ?', 'Check the validity period of the offer to ensure it is still active and applicable for your next ride.', 'Verify if there are any specific eligibility criteria such as being a new user, a minimum booking amount, or specific ride types required to avail the discount.', 'Determine if there are any limitations on how many times you can use the RIDE100 code to get the Rs.100 discount.', 'Confirm if the offer is applicable across all booking platforms or limited to specific ones like app bookings, website bookings or partner platforms.', 'Review the terms and conditions associated with the offer, including any blackout dates, geographical restrictions, or other limitations.', 'Check if the RIDE100 offer can be combined with other promotions, discounts or loyalty rewards for additional savings.', 'Understand the process of applying the RIDE100 code during the booking to ensure the discount is properly applied to your fare.', 'Familiarize yourself with how to contact customer support in case you encounter any issues or have questions regarding the offer.', 'Consider reading reviews or feedback from other users who have utilized the RIDE100 offer to gauge their experiences and any potential pitfalls.', 'Take note of the expiration date of the discount to avoid missing out on the opportunity to save Rs.100 on your next ride.', '', ''),
(4, '', 'Terms and Conditions', 'This offer is valid for a limited time period. Check the expiration date to ensure eligibility.', 'The offer is applicable to all users of the cab service platform.', 'Users can save Rs.100 on their next ride using the code \"RIDE100\".', 'The code can be used only once per user account.', 'This offer cannot be combined with other ongoing promotions or discounts.', 'For any queries or assistance regarding the offer, users can contact customer support.', 'Users must ensure the correct entry of the code \"RIDE100\" to avail of the discount.', 'The offer may have specific limitations or restrictions not listed here.', '', '', '', ''),
(5, 'images/S-get100.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `booking_card1_offerdetailes`
--

CREATE TABLE `booking_card1_offerdetailes` (
  `id` bigint(20) NOT NULL,
  `type` varchar(200) DEFAULT NULL,
  `PromoCode` varchar(400) NOT NULL,
  `offer` varchar(300) NOT NULL,
  `Applicable_on` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_card1_offerdetailes`
--

INSERT INTO `booking_card1_offerdetailes` (`id`, `type`, `PromoCode`, `offer`, `Applicable_on`) VALUES
(1, 'Domestic Flights Offer\n', 'GOYES', 'Upto 12% Instant Discount (upto Rs. 1,500)', 'Every Thursday and Saturday'),
(2, 'International Flights Offer\n', 'GOYESINT', 'Flat 10% instant discount (upto Rs.5,000)', 'Every Thursday and Saturday');

-- --------------------------------------------------------

--
-- Table structure for table `booking_card1_offers`
--

CREATE TABLE `booking_card1_offers` (
  `id` bigint(20) NOT NULL,
  `logo1` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `logo2` varchar(100) DEFAULT NULL,
  `title` varchar(400) NOT NULL,
  `content` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_card1_offers`
--

INSERT INTO `booking_card1_offers` (`id`, `logo1`, `image`, `logo2`, `title`, `content`) VALUES
(1, '', 'images/yes_bank.PNG', 'images/Yes_Bank.png', 'Flat 12% OFF*', 'YES Bank Credit Cards');

-- --------------------------------------------------------

--
-- Table structure for table `booking_card1_terms_conditions`
--

CREATE TABLE `booking_card1_terms_conditions` (
  `id` bigint(20) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_card1_terms_conditions`
--

INSERT INTO `booking_card1_terms_conditions` (`id`, `title`, `content`) VALUES
(1, 'What do you get?', 'When a consumer uses a YES Bank Credit card to book a flight, they will receive an instant discount as shown in the table above.'),
(8, 'How do you get it?', 'The customer must input E-Coupon in the E-Coupon field, as indicated in the above table, Inorder to take advantage of the offer.'),
(9, 'How do you get it?', 'Offer available on YES Bank Credit cards.'),
(10, 'How do you get it?', 'Bookings are made every Thursday and Saturday from 4th January 2024 to 30th March 2024 (between 00:00hr and 23:59hr).'),
(11, 'How do you get it?', 'This offer is also valid on the booking made though YES Bank Credit card EMI option.'),
(12, 'What more information is necessary?', 'Payments made via gift cards, net banking, third-party wallets, and Teerdha wallet are not eligible for the promotion.'),
(13, 'What more information is necessary?', 'Offer valid only on specific BINs of YES Bank cards.'),
(18, 'Other Terms & Conditions:', 'This offer cannot be clubbed with any other offer for Teerdha.'),
(19, 'Other Terms & Conditions:', 'Discount offer is only valid on the eligible BINs shared by YES Bank. If the BIN series of the card does not match with the one provided by YES Bank to Teerdha, then the card holder shall approach YES Bank.'),
(20, 'Other Terms & Conditions:', 'The discount will be eligible only after the promo code has been successfully entered before making the payment.'),
(21, 'Other Terms & Conditions:', 'For any card related claims, the customer shall approach the Bank and Teerdha shall not entertain any such claims.'),
(22, 'Other Terms & Conditions:', 'Teerdha shall not be liable for any loss or damage arising due to a force majeure event.'),
(23, 'Other Terms & Conditions:', 'In the event of any misuse or abuse of the offer by the customer or travel agent, Teerdha reserves the right to deny the offer or cancel the booking.'),
(24, 'Other Terms & Conditions:', 'Teerdha shall not be liable for any indirect, punitive, special, incidental or consequential damages arising out of or in connection with the offer.'),
(25, 'Other Terms & Conditions:', 'The customers agree to be bound by the terms & conditions contained herein. Without a customer being required to do any further act, he/she shall be deemed to have read, understood and unconditionally accepted the terms & conditions herein.'),
(26, 'Other Terms & Conditions:', 'The user Agreement and Privacy Policy at Teerdha website shall apply.');

-- --------------------------------------------------------

--
-- Table structure for table `booking_contact`
--

CREATE TABLE `booking_contact` (
  `id` bigint(20) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Email` varchar(500) NOT NULL,
  `Phonenumber` bigint(20) NOT NULL,
  `Message` longtext NOT NULL,
  `Subject` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booking_crudoperations`
--

CREATE TABLE `booking_crudoperations` (
  `id` bigint(20) NOT NULL,
  `card` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booking_dashboard_sidebar`
--

CREATE TABLE `booking_dashboard_sidebar` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `url` varchar(255) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_dashboard_sidebar`
--

INSERT INTO `booking_dashboard_sidebar` (`id`, `title`, `url`, `icon`, `category`) VALUES
(1, 'Flights offers', '/flight_offertb', '<i class=\"bi bi-airplane-fill\"></i>', 'Flights'),
(2, 'Flights Why choose us', 'http://127.0.0.1:8000/WhyChoose_home', '<i class=\"bi bi-airplane-fill\"></i>', 'Flights'),
(3, 'Flights faq update', 'http://127.0.0.1:8000/faq_home/', '<i class=\"bi bi-airplane-fill\"></i>', 'Flights'),
(4, 'Buses offers insert form', 'http://127.0.0.1:8000/bus_home/', '<i class=\"bi bi-bus-front-fill\"></i>', 'Buses'),
(5, 'Buses offers update', 'http://127.0.0.1:8000/bus_update/1/', '<i class=\"bi bi-bus-front-fill\"></i>', 'Buses'),
(6, 'Buses Why choose us table', 'http://127.0.0.1:8000/bus_whychoose_op/', '<i class=\"bi bi-bus-front-fill\"></i>', 'Buses'),
(7, 'Buses faq table', 'http://127.0.0.1:8000/bus_faq_op/', '<i class=\"bi bi-bus-front-fill\"></i>', 'Buses'),
(8, 'Cabs offers insert form', 'http://127.0.0.1:8000/cab_insert/', '<i class=\"bi bi-taxi-front-fill\"></i>', 'Cabs'),
(9, 'Cabs offers update', 'http://127.0.0.1:8000/cab_update/1/', '<i class=\"bi bi-taxi-front-fill\"></i>', 'Cabs'),
(10, 'Cabs Why Choose Us table', 'http://127.0.0.1:8000/cabs_whychoose', '<i class=\"bi bi-taxi-front-fill\"></i>', 'Cabs'),
(11, 'Cabs faqs table', 'http://127.0.0.1:8000/cabfaq_home', '<i class=\"bi bi-taxi-front-fill\"></i>', 'Cabs'),
(12, 'Hotel offers insert form', 'http://127.0.0.1:8000/cardsapi/', '<i class=\"bi bi-buildings-fill\"></i>', 'Hotels'),
(13, 'Hotel offers update', 'http://127.0.0.1:8000/cardsapi2/1/', '<i class=\"bi bi-buildings-fill\"></i>', 'Hotels'),
(14, 'Hotel Why Choose Us table', 'http://127.0.0.1:8000/hotel_cardstb/', '<i class=\"bi bi-buildings-fill\"></i>', 'Hotels'),
(15, 'Hotel faqs table', 'http://127.0.0.1:8000/hotel_faqtab/', '<i class=\"bi bi-buildings-fill\"></i>', 'Hotels');

-- --------------------------------------------------------

--
-- Table structure for table `booking_flightfaqs`
--

CREATE TABLE `booking_flightfaqs` (
  `id` bigint(20) NOT NULL,
  `question` varchar(250) NOT NULL,
  `answer` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_flightfaqs`
--

INSERT INTO `booking_flightfaqs` (`id`, `question`, `answer`) VALUES
(1, 'How can i book flight tickets online?', 'Booking all types of airlines is now easier than ever, with simple steps, and the ability to pay via UPI, net banking, credit cards, and debit cards.'),
(2, 'How much time will it take for my ticket to be confirmed?', 'Confirmation of your flight ticket will be sent to your email and registered mobile number within seconds.'),
(3, 'Why should I choose Teerdha for booking tickets?', 'Attractive deals on flight booking and cashback offers on promo code discounts and amazing discounts , instant refunds are book options and price comparisons and many more features and options.'),
(4, 'What about this Teerdha site?', '24/7 customer support, payment security, refundable choices, and terms and conditions services are all provided. Since achieving client satisfaction is our main goal, supplying more than 5 million satisfied clients.'),
(5, 'How much luggage can i carry on my flight journey?', 'As per regulations, please ensure that both your checked bags and cabin baggage comply with the specified security requirements.'),
(6, 'Which flight ticket booking can be better?', 'My suggestion is that the economy and business class flight tickets are better.'),
(7, 'Can I pay the amount later flight ticket booking ?', 'No, the entire payment for reserving the airline tickets was made during the booking process.'),
(8, 'How many tickets can be booked at once?', 'You can book flight tickets upto 9 persons in single account.'),
(9, 'Anything I want to show as identification when I check in?', 'During the check-in process, customers are required to present a valid form of identification like Driving licence or PAN Card.'),
(10, 'How can I get boarding pass for my flight ticket?', 'You can receive a confirmation of your flight ticket via email, either through the airport check-in counter or by using the web check-in feature on the airline\'s website. Once you arrive at the airport, the boarding pass will be issued by the airport authority, you can print it out for boarding.');

-- --------------------------------------------------------

--
-- Table structure for table `booking_flights_2ndpages`
--

CREATE TABLE `booking_flights_2ndpages` (
  `id` bigint(20) NOT NULL,
  `offer` varchar(100) NOT NULL,
  `inserturl` varchar(200) NOT NULL,
  `updateurl` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_flights_2ndpages`
--

INSERT INTO `booking_flights_2ndpages` (`id`, `offer`, `inserturl`, `updateurl`) VALUES
(1, 'First Booking', '/flight_offerfirst_lc/', '/flight_offerfirst_rud/1/'),
(2, '', '/flight_offerfirst1_lc/', '/flight_2ndpagesupdate/'),
(3, 'Yes Bank Offer', '/card1_offerapi/', '/card1_offerup/1/'),
(4, '', '/card1_offerdetailesapi/', '/card1_offerdetailes_up/1/'),
(5, '', '/card1_offer_termsapi/', '/card1_offerterms_up/1/'),
(6, 'ICICI Bank offer', '/icic_offerapi/', '/icic_offer_update/2'),
(7, '', '/icic_termsapi/', '/icic_terms_update/1'),
(8, 'SBI Bank offer', '/sbiimageapi/', '/sbiimage_up/1'),
(9, '', '/sbiofferapi/', '/sbioffer_up/1/'),
(10, '', '/sbitermsapi/', '/sbiterms_up/1/'),
(11, 'Refund Offer', '/zc_offerapi/', '/zc_offer_update/1/'),
(12, '', '/zc_termsapi/', '/zc_terms_update/1/'),
(13, 'Kotak Bank Offer', '/kotak_api/', '/kotak_update/1/'),
(14, '', '/kotak_api1/', '/kotak_update1/1/'),
(15, '', '/kotakterms_api/', '/kotakterms_update/1/'),
(16, '', '/kotakpolicy_api/', '/kotakpolicy_update/1/'),
(17, '', '/kotakpolicy_api1/', '/kotakpolicy_update1/1/'),
(18, 'HDFC Bank offer', '/hdfc_logo_lc/', '/hdfc_logo_rud/1'),
(19, '', '/hdfc_offer_lc/', '/hdfc_offer_rud/1');

-- --------------------------------------------------------

--
-- Table structure for table `booking_flights_2npdpages_update`
--

CREATE TABLE `booking_flights_2npdpages_update` (
  `id` bigint(20) NOT NULL,
  `offer` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_flights_2npdpages_update`
--

INSERT INTO `booking_flights_2npdpages_update` (`id`, `offer`, `url`) VALUES
(1, 'What do you get?', '/flight_offerfirst1_rud/1/'),
(2, 'What do you get?', '/flight_offerfirst1_rud/2/'),
(3, 'What do you get?', '/flight_offerfirst1_rud/4/'),
(4, 'How will you  get?', '/flight_offerfirst1_rud/5/'),
(5, 'How will you  get?', '/flight_offerfirst1_rud/6/'),
(6, 'You need to know :', '/flight_offerfirst1_rud/7/'),
(7, 'You need to know :', '/flight_offerfirst1_rud/8/'),
(8, 'You need to know :', '/flight_offerfirst1_rud/9/'),
(9, 'You need to know :', '/flight_offerfirst1_rud/10/'),
(10, 'You need to know :', '/flight_offerfirst1_rud/11/'),
(11, 'You need to know :', '/flight_offerfirst1_rud/12/'),
(12, 'You need to know :', '/flight_offerfirst1_rud/13/'),
(13, 'You need to know :', '/flight_offerfirst1_rud/14/'),
(14, 'You need to know :', '/flight_offerfirst1_rud/15/'),
(15, 'You need to know :', '/flight_offerfirst1_rud/16/'),
(16, 'You need to know :', '/flight_offerfirst1_rud/17/'),
(17, 'Terms and Conditions', '/flight_offerfirst1_rud/18/'),
(18, 'Terms and Conditions', '/flight_offerfirst1_rud/19/'),
(19, 'Terms and Conditions', '/flight_offerfirst1_rud/20/'),
(20, 'Terms and Conditions', '/flight_offerfirst1_rud/21/'),
(21, 'Terms and Conditions', '/flight_offerfirst1_rud/22/');

-- --------------------------------------------------------

--
-- Table structure for table `booking_flights_offercards`
--

CREATE TABLE `booking_flights_offercards` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_flights_offercards`
--

INSERT INTO `booking_flights_offercards` (`id`, `title`, `content`, `image`, `logo`, `url`) VALUES
(1, 'New user offer on your 1st flight.', 'USECODE: TEDFB1', 'images/bank_offer3.png', '', 'http://127.0.0.1:8000/flight_offer_1'),
(2, 'Grab 12% OFF* on Yesbank Credit cards.', 'USECODE: TRDYB', 'images/bank_offer4.png', '', '/yes_bank_offercard'),
(3, 'FLAT 12% OFF* on Domestic Flights.', 'USECODE: TRDICICI', 'images/bankoffer5.png', '', '/icic'),
(4, 'Grab FLAT 10% OFF* on Domestic Flights.', 'USECODE: TRDSBI', 'images/bankoffer7.png', '', '/sbi'),
(5, 'Book flights with 100% refund on cancellation.', 'USECODE: TRDDOM', 'images/bankoffer6.png', '', '/zerocancellation'),
(6, 'Kotak: Grab up to 12% OFF* on Flights.', 'USECODE: TRDKOTAK', 'images/kotak_card.PNG', '', 'http://127.0.0.1:8000/kotak/'),
(7, 'HDFC Up to 2000/- on domestic flights.', 'USECODE: TRDHDFC', 'images/bank_offer1.png', '', '/hdfc_offer_card'),
(12, 'Enjoy Discounts on Flights with Axis Bank.', 'USECODE: TEDAXIS', 'images/axis_card.PNG', '', '/flight_offers_card_page_2');

-- --------------------------------------------------------

--
-- Table structure for table `booking_flights_offerscrudoperations`
--

CREATE TABLE `booking_flights_offerscrudoperations` (
  `id` bigint(20) NOT NULL,
  `offer` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_flights_offerscrudoperations`
--

INSERT INTO `booking_flights_offerscrudoperations` (`id`, `offer`, `url`) VALUES
(1, 'New user offer on your 1st flight.', '/flight_update/1'),
(2, 'Grab 12% OFF* on Yesbank Credit cards.', '/flight_update/2'),
(3, 'FLAT 12% OFF* on Domestic Flights.', '/flight_update/3'),
(4, 'Grab FLAT 10% OFF* on Domestic Flights.', '/flight_update/4'),
(5, 'Book flights with 100% refund on cancellation.', '/flight_update/5'),
(6, 'Kotak: Grab up to 12% OFF* on Flights.', '/flight_update/6'),
(7, 'HDFC Up to 2000/- on domestic flights.', '/flight_update/7'),
(8, 'Enjoy Discounts on Flights with Axis Bank.', '/flight_update/12');

-- --------------------------------------------------------

--
-- Table structure for table `booking_flight_offers7`
--

CREATE TABLE `booking_flight_offers7` (
  `id` bigint(20) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `heading` varchar(100) NOT NULL,
  `content` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `point` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_flight_offers7`
--

INSERT INTO `booking_flight_offers7` (`id`, `photo`, `heading`, `content`, `title`, `point`) VALUES
(4, 'images/axis_bank_img4567.jpg', 'Enjoy Huge Discounts on Flights with Axis Bank Debit/Credit Cards!', 'Promocode : TEDAXIS', '', ''),
(5, '', '', '', 'What do you get?', 'Customers of this offer will get an attractive discount on Flight Booking using Axis Bank Credit Cards/Debit cards.'),
(6, '', '', '', 'How do you get it?', 'To enjoy discounts, users should reserve Domestic Flights as per their preference and utilize the coupon code: TEDAXIS.'),
(7, '', '', '', '', 'Offer valid on Flight bookings only.'),
(8, '', '', '', '', 'This offer is valid for transactions done through Axis Bank Debit/Credit card only.'),
(9, '', '', '', '', 'Both new and existing customers have the opportunity to benefit from this offer.'),
(10, '', '', '', '', 'The offer is valid for bookings made on Teerdha\'s website, Mobile site, Android & iOS App.'),
(11, '', '', '', 'What else you need to know?', 'A convenience fee will be applied as necessary.'),
(12, '', '', '', '', 'This offer cannot be combined with any other promotional offers.'),
(13, '', '', '', '', 'Only bookings made with valid promo codes will qualify for this offer.'),
(14, '', '', '', '', 'If there is a partial or full cancellation, the offer will become void, and any discounts will be reversed before refunds are processed.'),
(15, '', '', '', '', 'Name changes are not permitted.'),
(16, '', '', '', 'Terms & Conditions', 'If the offer is misused or abused, Teerdha retains the authority to reject the offer for customers.'),
(17, '', '', '', '', 'Teerdha is the sole authority for the interpretation of these terms.'),
(18, '', '', '', '', 'In addition, Teerdha standard booking and privacy policy on www.teerdha.com shall apply.'),
(19, '', '', '', '', 'In the event of any dispute, The Court of New Delhi will have jurisdiction.'),
(20, '', '', '', '', 'Teerdha retains the right, at its discretion and without prior notice or liability, to amend, modify, alter, or replace all or part of these terms and conditions, or to substitute this offer with another offer, whether similar or not, or to extend or withdraw it entirely, without providing any reason whatsoever.'),
(21, '', '', '', '', '\r\nTeerdha shall not be held responsible for any loss or damage incurred as a result of force majeure events.');

-- --------------------------------------------------------

--
-- Table structure for table `booking_flight_offers8`
--

CREATE TABLE `booking_flight_offers8` (
  `id` bigint(20) NOT NULL,
  `heading` varchar(100) NOT NULL,
  `photo1` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_flight_offers8`
--

INSERT INTO `booking_flight_offers8` (`id`, `heading`, `photo1`, `title`, `description`) VALUES
(3, '', 'media/axisbank_offerscard1.jpg', 'Axis bank offers', 'Get flat up to 15% off on domestic & International flights with axis credit & debit bank Cards.'),
(6, '', 'media/axisbank_offerscard2.png', 'Axis bank domestic and international flight offers', 'Flat 20% off on domestic & flat 15% off on International flights with axis bank.'),
(7, '', 'media/axisbank_offerscard3.jpg', 'Axis bank flight booking offers', 'Get 10% instant discount on domestic and international flight booking.'),
(9, '', 'media/axisbank_offerscard4.png', 'Get exclusive discounts on International flights', 'Get a flat 7% off up to INR 4500 on International flight booking with axis bank.'),
(10, '', 'media/axisbank_offerscard5.png', 'Get exclusive discounts on domestic flights', 'Get a flat 8% off up to INR 1500 on domestic flight booking with axis bank.'),
(11, 'Don\'t Miss Out on Exciting Travel Deals with Axis Bank', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `booking_flight_offer_first`
--

CREATE TABLE `booking_flight_offer_first` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `content` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_flight_offer_first`
--

INSERT INTO `booking_flight_offer_first` (`id`, `image`, `content`) VALUES
(1, 'images/fstbook-transformed.jpeg', 'Join Now to Receive a Discount on Your First Flight Ticket with Us');

-- --------------------------------------------------------

--
-- Table structure for table `booking_flight_offer_first1`
--

CREATE TABLE `booking_flight_offer_first1` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_flight_offer_first1`
--

INSERT INTO `booking_flight_offer_first1` (`id`, `title`, `content`) VALUES
(1, 'What do you get?', 'Customers who take advantage of this deal will receive a tempting discount on flights.'),
(2, 'What do you get?', 'Flight Minimum booking amount is RS.3000 then you will get flat 10% discount.'),
(4, 'How will you  get?', 'To get this discount, User\'s have to register/sign-up for booking flight tickets for their preferred destination by applying coupon code.'),
(5, 'How will you  get?', 'This offer is valid for limited period.'),
(6, 'How will you  get?', 'Bookings made through the Teerdha website, mobile site, and iOS and Android apps are eligible for the promotion.'),
(7, 'You need to know :', 'Customer\'s under this offer will get up to Rs.750 on flight.'),
(8, 'You need to know :', 'Convenience fee will be charged as per the applicability.'),
(9, 'You need to know :', 'The offer can\'t be clubbed with any other promotional offers.'),
(10, 'You need to know :', 'Bookings with the valid promo codes will be only eligible for this offer.'),
(11, 'You need to know :', 'Only new customers can avail this offer by making first bookings on the platform. In case, if users have previously made any bookings from the website, Mobile site, Android & iOS App, then that user will not be eligible to avail the offer.'),
(12, 'You need to know :', 'This offer cannot be clubbed with any other offer running on Teerdha.'),
(13, 'You need to know :', 'To avail this offer customer\'s need to process his booking with their registered mail id.'),
(14, 'You need to know :', 'In case of partial/full cancellation the offer stands void and discount will be rolled back before processing the refunds.'),
(15, 'You need to know :', 'Child / infant discount, date or flight change, refund charges, weekend surcharge, black out period, travel restrictions and flight restriction will be also applicable as per the fare rule.'),
(16, 'You need to know :', 'Changes in flights and dates are allowed with change fees and fare difference.'),
(17, 'You need to know :', 'Changes in names are not allowed.'),
(18, 'Terms and Conditions :', 'In the event of any misuse or abuse of the offer, Teerdha reserves the right to deny the offer to the customers.'),
(19, 'Terms and Conditions :', 'Teerdha is the sole authority for interpretation of these terms.'),
(20, 'Terms and Conditions :', 'In addition, Teerdha standard booking and privacy policy on www.teerdha.com shall apply.'),
(21, 'Terms and Conditions :', 'Teerdha reserves the right, at any time, without prior notice and liability and without assigning any reason whatsoever,\n to add/alter/modify/change or vary all of these terms and conditions or to replace, wholly or in part, this offer \nwith another offer, whether similar to this offer or not, or to extend or withdraw it altogether.'),
(22, 'Terms and Conditions :', 'Teerdha shall not be liable for any loss or damage arising due to force majeure.');

-- --------------------------------------------------------

--
-- Table structure for table `booking_hdfc_logo`
--

CREATE TABLE `booking_hdfc_logo` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_hdfc_logo`
--

INSERT INTO `booking_hdfc_logo` (`id`, `title`) VALUES
(1, 'images/hdfc_offer.PNG');

-- --------------------------------------------------------

--
-- Table structure for table `booking_hdfc_offer`
--

CREATE TABLE `booking_hdfc_offer` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_hdfc_offer`
--

INSERT INTO `booking_hdfc_offer` (`id`, `title`, `content`) VALUES
(1, 'Domestic flight Offer', 'Only for HDFC Bank Credit cards'),
(2, 'Domestic flight Offer', 'USE CODE: HDFCTED'),
(3, 'Offer details', 'Follow these steps: Avail upto 2000/- instant discount on domestic flight bookings on all days, All transactions are available.'),
(4, 'About the offer', 'Enter the passenger details and select preferred payment methods, Teerdha Website, Mobile Website, Android apps and IOS apps only. Get the Best flight fares & Existing offers on flight ticket, when tour booking with Teerdha more deals like travel max sale, big travel sale etc. Offer never seen before discounts that helps you books flights at affordable rates and best flight discounts with HDFC cards holders only. Every month one existing offer is available through net banking.'),
(5, 'Terms and Conditions', 'This offer can\'t be combine to other offer.'),
(6, 'Terms and Conditions', 'The passengers shall pay the rest of the amount at least 14 days before the journey begins.'),
(7, 'Terms and Conditions', 'The offer is only valid for selected travel sectors and Airlines.'),
(8, 'Terms and Conditions', 'The promotion is valid where prohibited by law.'),
(9, 'Terms and Conditions', 'Booking must be made through UPI and Online Transactions to quality of discounts.'),
(10, 'Terms and Conditions', 'Booking of promotions not refundable and non-transferable.'),
(11, 'Terms and Conditions', 'The Bank refers to HDFC Bank Ltd., a banking company incorporated in India under the companies Act 1956 and having its registered office at HDFC Bank House, Senapati Bapat Marg, Lower Parel, Mumbai-400013.'),
(12, 'Terms and Conditions', 'Incomplete ,invalid and unauthorized transactions will not be considered.');

-- --------------------------------------------------------

--
-- Table structure for table `booking_hotels_2ndpages`
--

CREATE TABLE `booking_hotels_2ndpages` (
  `id` bigint(20) NOT NULL,
  `offer` varchar(100) NOT NULL,
  `inserturl` varchar(200) NOT NULL,
  `updateurl` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_hotels_2ndpages`
--

INSERT INTO `booking_hotels_2ndpages` (`id`, `offer`, `inserturl`, `updateurl`) VALUES
(1, 'Axis Bank Offer ', '/axis_api/', '/axis_update/2/'),
(2, '', '/axis_api1/', '/aixs_update1/1/'),
(3, '', '/axispolicy_api/', '/axispolicy_update/1/'),
(4, 'ICICI Bank offer', '/icici_api/', '/icici_update/1/'),
(5, '', '/icici_api1/', '/icici_update1/1/'),
(6, '', '/icicipolicy_api/', '/icicipolicy_update/1/'),
(7, 'HSBC Bank offer', '/hsbc_api/', '/hsbc_update/1/'),
(8, '', '/hsbc_api1/', '/hsbc_update1/1/'),
(9, '', '/hsbcpolicy_api/', '/hsbcpolicy_update/1/'),
(10, 'BOB Bank offer', '/hotel_bobapi/', '/hotel_bobupdate/1/'),
(11, '', '/hotel_bobapi1/', '/hotel_bobupdate1/1/'),
(12, '', '/hotel_bobpolicyapi/', '/hotel_bobpolicyupdate/1/'),
(13, 'KOTAK Bank offer', '/hotel_kotakapi/', '/hotel_kotakupdate/1/'),
(14, '', '/hotel_kotakapi1/', '/hotel_kotakupdate1/1/'),
(15, '', '/hotel_kotakpolicyapi/', '/hotel_kotakpolicyupdate/1/'),
(16, 'Federal Bank offer', '/federal_api/', '/federal_update/1/'),
(17, '', '/federal_api1/', '/federal_update1/1/'),
(18, '', '/federalpolicy_api/', '/federalpolicy_update/1/'),
(19, 'SBI Bank offer', '/sbi_api/', '/sbi_update/1/'),
(20, '', '/sbi_api1/', '/sbi_update1/1/'),
(21, '', '/sbipolicy_api/', '/sbipolicy_update/1/');

-- --------------------------------------------------------

--
-- Table structure for table `booking_hotels_offerscrudoperations`
--

CREATE TABLE `booking_hotels_offerscrudoperations` (
  `id` bigint(20) NOT NULL,
  `offer` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_hotels_offerscrudoperations`
--

INSERT INTO `booking_hotels_offerscrudoperations` (`id`, `offer`, `url`) VALUES
(1, 'Hassle-Free Trips With Max Savings:', '/cardsapi2/1'),
(2, 'FLAT 15% OFF* on 3, 4 & 5-star hotel stays in India.', '/cardsapi2/2'),
(3, '20% OFF* on International Hotel Bookings.', '/cardsapi2/3'),
(4, 'Explore the World with ease Booking', '/cardsapi2/4'),
(5, '18% OFF* on Domestic & Int\'l Hotels', '/cardsapi2/5'),
(6, 'FLAT 24% OFF* on International Hotels!', '/cardsapi2/6'),
(7, 'Big discounts on Hotels.', '/cardsapi2/7');

-- --------------------------------------------------------

--
-- Table structure for table `booking_hotel_cards`
--

CREATE TABLE `booking_hotel_cards` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `image` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL,
  `Book_now` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_hotel_cards`
--

INSERT INTO `booking_hotel_cards` (`id`, `title`, `content`, `image`, `url`, `Book_now`) VALUES
(1, 'Hassle-Free Trips With Max Savings:', 'Grab Upto 35% OFF* + No-cost EMI.', 'media/hotel-offers-card-axis-img_1.jpg', '/hotel_axisform', 'Book Now'),
(2, '15% OFF* on 3, 4 & 5-star hotel stays in India.', 'Start dreaming of your next destination!', 'media/hotel-offer-cards-icic-img_1.png', '/hotel_iciciform', 'Book Now'),
(3, 'Get Upto 20% OFF* on Int\'l Hotel Bookings.', 'Relaxing stay with super big savings!', 'media/hotel-offer-cards-hsbc-img_1.jpg', '/hotel_hsbcform', 'Book Now'),
(4, 'Explore the World with ease Booking', 'Upto 18% OFF* on BOB Credit cards.', 'media/bob_Fmn6LFs.jpg', '/hotel_bobform', 'Book Now'),
(5, '18% OFF* on Domestic & Int\'l Hotels', 'unwind and enjoy a truly memorable stay!', 'media/kotak_Uqc6tqE.jpg', '/hotel_kotakform', 'Book Now'),
(6, 'Get Upto 24% OFF* on Int\'l Hotels!', 'Enjoy big savings on your dream trip.', 'media/hotel-offer-cards-federal-img_1.png', '/hotel_federalform', 'Book Now'),
(7, 'Get big discounts on Hotels.', '& more with SBI Credit card for your next refreshing break.', 'media/hotel-offer-cards-sbi-img_1.jpg', '/hotel_sbiform', 'Book Now');

-- --------------------------------------------------------

--
-- Table structure for table `booking_icic_offer`
--

CREATE TABLE `booking_icic_offer` (
  `id` bigint(20) NOT NULL,
  `title` varchar(250) NOT NULL,
  `image` varchar(100) NOT NULL,
  `content1` varchar(250) NOT NULL,
  `content2` varchar(250) NOT NULL,
  `logo1` varchar(100) NOT NULL,
  `logo2` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_icic_offer`
--

INSERT INTO `booking_icic_offer` (`id`, `title`, `image`, `content1`, `content2`, `logo1`, `logo2`) VALUES
(2, 'About The Offer', 'images/icici_terdha.png', 'Book your domestic flight and get flat 12% off on payments via ICICI Bank Credit\r\ncards.', 'TRDICICI', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `booking_icic_terms`
--

CREATE TABLE `booking_icic_terms` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_icic_terms`
--

INSERT INTO `booking_icic_terms` (`id`, `title`, `content`) VALUES
(1, 'How to avail the offer?', 'Open the Teerdha app/ web/ mobile-web, search and choose your preferred flight.'),
(3, 'How to avail the offer?', 'Proceed to the payments page and pay via ICICI Bank Credit card.'),
(4, 'How to avail the offer?', 'You will get flat 12% off  on your booking.'),
(5, 'Terms & Conditions:', 'If the card holder doesn\'t receive the discount, he/she can claim for the same within 3 months from the booking date. In the event the card holder fails to do so, he/she will not be eligible for any discount.'),
(6, 'Terms & Conditions:', 'Discount offer is only valid on the eligible BINs shared by ICICI BANK. If the BIN series of the card does not match with the one provided by ICICI BANK to Teerdha, then the card holder shall approach ICICI BANK and ICICI BANK shall be entitled to withhold or deny the offer to the customer.'),
(7, 'Terms & Conditions:', 'This offer cannot be clubbed with any other offer of Teerdha.'),
(8, 'Terms & Conditions:', 'Minimum booking amount excluding ancillaries, Insurance, etc.'),
(9, 'Terms & Conditions:', 'Teerdha and ICICI Bank reserves the right, at any time, without prior notice and liability and without assigning any reason whatsoever, to add/alter/modify/change or vary all of these terms and conditions or to replace, wholly or in part, this offer by another offer, whether similar to this offer or not, or to extend or withdraw it altogether.'),
(10, 'Terms & Conditions:', 'For any card related claims, the customer shall approach ICICI Bank and Teerdha shall not entertain any such claims.'),
(11, 'Terms & Conditions:', 'For any card related issue arising due to technology, the customer shall approach Teerdha and ICICI Bank shall not entertain any such claims.'),
(12, 'Terms & Conditions:', 'Teerdha and ICICI Bank are the sole authority for interpretation of these terms.'),
(13, 'Terms & Conditions:', 'Teerdha and ICICI Bank shall not be liable for any loss or damage arising due to a force majeure event.'),
(14, 'Terms & Conditions:', 'Customers, who are travel agents by occupation, are barred from making bookings for their customers and Teerdha reserves the right to deny the offer against such bookings and to cancel such bookings. For such cases, Teerdha will not refund the booking amount. In such events, ICICI Bank shall neither be liable nor responsible for refund of the booking amount.'),
(15, 'Terms & Conditions:', 'In no event, the entire liability of Teerdha and ICICI Bank under this offer shall exceed the amount of promotional discount under this offer.'),
(16, 'Terms & Conditions:', 'Teerdha and ICICI Bank shall not be liable to for any indirect, punitive, special, incidental or consequential damages arising out of or in connection with the offer.'),
(17, 'Terms & Conditions:', 'Disputes, if any, arising out of or in connection with this offer shall be subject to the exclusive jurisdiction of the competent courts in Delhi.'),
(18, 'Terms & Conditions:', 'User agreement and privacy policy at Teerdha website shall apply.');

-- --------------------------------------------------------

--
-- Table structure for table `booking_navbar`
--

CREATE TABLE `booking_navbar` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_navbar`
--

INSERT INTO `booking_navbar` (`id`, `title`, `url`, `icon`, `photo`) VALUES
(1, 'Flights', '/', 'bi bi-airplane-fill', ''),
(2, 'Buses', '/bus_main/', 'bi bi-bus-front-fill', ''),
(3, 'Cabs', '/cab_main/', 'bi bi-taxi-front-fill', ''),
(4, 'Hotels', '/hotelform/', 'bi bi-buildings-fill', '');

-- --------------------------------------------------------

--
-- Table structure for table `booking_naviagtion_bar`
--

CREATE TABLE `booking_naviagtion_bar` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL,
  `icon` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_naviagtion_bar`
--

INSERT INTO `booking_naviagtion_bar` (`id`, `name`, `url`, `icon`) VALUES
(3, 'Home', 'https://www.instagram.com/reel/CmJ8p6bBjhR7fb39stkrosakCpJIXruVuvckgA0/?igsh=MXJpM2ptZWoyZHhrbw==', ''),
(4, 'About Us', 'https://www.instagram.com/reel/CmJ8p6bBjhR7fb39stkrosakCpJIXruVuvckgA0/?igsh=MXJpM2ptZWoyZHhrbw==', ''),
(5, 'Flight', '/', 'media/flight1.png'),
(6, 'Bus', 'https://www.instagram.com/reel/CmJ8p6bBjhR7fb39stkrosakCpJIXruVuvckgA0/?igsh=MXJpM2ptZWoyZHhrbw==', 'media/bus-icon.png'),
(7, 'Cab', 'https://www.instagram.com/reel/CmJ8p6bBjhR7fb39stkrosakCpJIXruVuvckgA0/?igsh=MXJpM2ptZWoyZHhrbw==', 'media/tax.png'),
(8, 'Hotel', 'https://www.flaticon.com/free-icon/taxi-cab_7804371', 'media/hotel1.png'),
(9, 'Contact', 'https://www.instagram.com/reel/CmJ8p6bBjhR7fb39stkrosakCpJIXruVuvckgA0/?igsh=MXJpM2ptZWoyZHhrbw==', 'media/contact.png'),
(11, 'My Account', 'https://www.instagram.com/reel/CmJ8p6bBjhR7fb39stkrosakCpJIXruVuvckgA0/?igsh=MXJpM2ptZWoyZHhrbw==', '');

-- --------------------------------------------------------

--
-- Table structure for table `booking_sbioffer`
--

CREATE TABLE `booking_sbioffer` (
  `id` bigint(20) NOT NULL,
  `type` varchar(100) NOT NULL,
  `offer` varchar(200) NOT NULL,
  `min_amt` varchar(100) NOT NULL,
  `Promo_Code` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_sbioffer`
--

INSERT INTO `booking_sbioffer` (`id`, `type`, `offer`, `min_amt`, `Promo_Code`) VALUES
(1, 'DOMESTIC FLIGHTS', 'Upto Rs.750', 'Rs. 4,000', 'TRDSBIDOM'),
(2, 'INTERNATIONAL FLIGHTS', 'Upto Rs.2500', 'Rs. 15,000', 'TRDSBIINT');

-- --------------------------------------------------------

--
-- Table structure for table `booking_sbiterms`
--

CREATE TABLE `booking_sbiterms` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_sbiterms`
--

INSERT INTO `booking_sbiterms` (`id`, `title`, `content`) VALUES
(1, 'Steps to avail this offer?', 'Select & book flights on Teerdha.'),
(2, 'Steps to avail this offer?', 'Use the promo code “SBIDOM” for Domestic Flights & “SBIINT” for International Flights.'),
(3, 'Steps to avail this offer?', 'Make Online payment via UPI, Wallets & Debit/Credit card.'),
(4, 'Eligible Cards', 'Only on SBI Signature Corporate card, SBI Platinum Corporate card & Tata Corporate card.'),
(5, 'What else do you need to know ?', 'For flights, discount will be calculated on the booking amount (excluding convenience fee and any ancillaries purchased e.g. meals, insurance).'),
(6, 'What else do you need to know ?', 'The offer is not applicable on payments made through SBI Debit card, Go Tribe points, 3rd party wallets, Gift cards and net banking payments.'),
(7, 'What else do you need to know ?', 'The offer is also valid on SBI Credit card EMI bookings.'),
(8, 'Conditions in case of cancellation?', 'In case of partial/full cancellation the offer stands void and customer will not be eligible for the discount.'),
(9, 'Conditions in case of cancellation?', 'If the customer cancels the travel service purchase after the discount amount is availed, Teerdha will deduct the discount amount from the refund and cancellation charges shall apply.'),
(10, 'Conditions in case of cancellation?', 'If there is any rescheduling or cancellation, customer has to bear the fare difference (regardless of whether the component is in the base fare or in tax + surcharge) and other rescheduling/cancellation fees.');

-- --------------------------------------------------------

--
-- Table structure for table `booking_why_choose`
--

CREATE TABLE `booking_why_choose` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `content` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_why_choose`
--

INSERT INTO `booking_why_choose` (`id`, `image`, `content`) VALUES
(1, 'images/easy_booking.png', 'We provide simple, convenient flight booking together with appealing deals.'),
(2, 'images/resonable_price.png', 'We guarantee low prices on airline tickets, hotel reservations, and vacation packages.'),
(3, 'images/amazing.png', 'Take advantage of fantastic discounts on travel packages, hotels, cars, and flights.'),
(4, 'images/support.png', 'Get help with any kind of travel-related question, 24/7. We are happy to assist you.');

-- --------------------------------------------------------

--
-- Table structure for table `booking_zero_cancellation_offer`
--

CREATE TABLE `booking_zero_cancellation_offer` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `image` varchar(100) NOT NULL,
  `content1` varchar(200) NOT NULL,
  `content2` varchar(200) NOT NULL,
  `logo1` varchar(100) NOT NULL,
  `logo2` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_zero_cancellation_offer`
--

INSERT INTO `booking_zero_cancellation_offer` (`id`, `title`, `image`, `content1`, `content2`, `logo1`, `logo2`) VALUES
(1, 'Safeguard yourself against last-minute plan changes with our ‘ZERO Cancellation’ feature on domestic flights. Buy now starting @ Rs. 199 ONLY and enjoy.', 'images/flight_cancel_aqCg9LO.png', 'No Extra Charges on Cancellation.', '100% Money Back Guarantee on Cancellation.', 'images/no_mot.PNG', 'images/refu.PNG');

-- --------------------------------------------------------

--
-- Table structure for table `booking_zero_cancellation_terms`
--

CREATE TABLE `booking_zero_cancellation_terms` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_zero_cancellation_terms`
--

INSERT INTO `booking_zero_cancellation_terms` (`id`, `title`, `content`) VALUES
(1, 'What do you get?', 'Select the \'ZERO Cancellation\' option when booking and pay an extra fee of Rs.199/- per passenger to avoid any penalties.'),
(2, 'What do you get?', 'Under ZC Services, all airline and MMT penalties will be eliminated, but the convenience fee that was charged at the time of booking cannot be refunded.'),
(3, 'What do you get?', 'To cancel without any penalty, go to support.teerdha.com and proceed with the cancellation process. A waiver will be applied for your cancellation.'),
(4, 'What do you get?', 'To receive a 100% refund, the customer must cancel at least 24 hours before the flight departs.'),
(5, 'What do you get?', 'To receive a 100% refund only if the cancellation is done on Teerdha website or mobile apps.'),
(6, 'What do you get?', 'Depending on your airline, flight fare, and fare type, The exact price of ZC, which varies from 199 to 1199, will be shown on the review page for flight selection.'),
(7, 'How do you get tt?', 'During the booking process, select \'ZERO Cancellation\' option by paying an additional fee starting from Rs.199/- per passenger & enjoy ZERO penalty in case you wish to cancel the booking.'),
(8, 'What else do you need to know?', 'Only certain domestic one-way and return flight reservations made through the Teerdha mobile app and website are eligible for this service.'),
(11, 'What else do you need to know?', 'The money received to use the cancellation service is not refundable.'),
(12, 'What else do you need to know?', 'The customer can only receive the full waiver if he cancels the ticket at least 24 hours before departure.'),
(13, 'What else do you need to know?', 'Zero Cancellation is only available for pure cancellations; date changes will not be accepted.\nOnly FULL cancellations that is, cancellations of every flight a certain traveller has scheduled for any or all passengers are eligible for the waiver.'),
(14, 'Terms & Conditions', 'Teerdha reserves the right to reject the offer or cancel the booking in the case that a travel agent customer misuses or abuses the offer. In certain situations, Teerdha will not reimburse the reservation fee.'),
(15, 'Terms & Conditions', 'You must cancel online on Teerdha in order to receive the benefits of Zero Cancellation. If you cancel directly with the airline, you won\'t be qualified for a waiver.'),
(16, 'Terms & Conditions', 'It is prohibited for customers who work as travel agents to make reservations on behalf of other people. Teerdha retains the right to reject an offer or cancel a reservation. In certain situations, Teerdha will not reimburse the reservation fee.'),
(17, 'Terms & Conditions', 'Teerdha reserves the right to add, alter, modify, change, or vary all of these terms and conditions at any time, without prior notice or liability, and without assigning any reason whatsoever. It also reserves the right to replace this offer, in whole or in part, with another offer that may or may not be similar to this one, or to extend or withdraw it completely.'),
(18, 'Terms & Conditions', 'The only person with the authority to interpret these terms is Teerdha.'),
(19, 'Terms & Conditions', 'Teerdha disclaims any liability for any loss or damage brought on by a force majeure situation.'),
(20, 'Terms & Conditions', 'Teerdha disclaims all liability for any losses or additional costs resulting from delays or cancellations of flights, missed connections, illness, inclement weather, strikes, quarantine, modifications to government laws and regulations, or other causes, regardless of how they were caused.'),
(21, 'Terms & Conditions', 'Teerdha retains the right to reject the offer or cancel the reservation in the case that the client or travel agency abuses the service.'),
(22, 'Terms & Conditions', 'Under no circumstances will Teerdha\'s total liability under this offer exceed the promotional discount amount.'),
(23, 'Terms & Conditions', 'Teerdha disclaims all liability for any incidental, consequential, punitive, special, or indirect damages resulting from or related to the service.'),
(24, 'Terms & Conditions', 'Any disputes arising out of or related to this offer will only be heard by the Delhi courts with the necessary jurisdiction.'),
(25, 'Terms & Conditions', 'This program shall be subject to all additional terms and conditions as specified in the User Agreement and the Privacy Policy.');

-- --------------------------------------------------------

--
-- Table structure for table `cabbooking`
--

CREATE TABLE `cabbooking` (
  `id` bigint(20) NOT NULL,
  `from_city` varchar(100) NOT NULL,
  `to_city` varchar(100) NOT NULL,
  `departure_date` date NOT NULL,
  `return_date` date DEFAULT NULL,
  `pickup_time` time(6) DEFAULT NULL,
  `drop_time` time(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cabs_secondpage_dashboard`
--

CREATE TABLE `cabs_secondpage_dashboard` (
  `id` bigint(20) NOT NULL,
  `offer` varchar(100) NOT NULL,
  `url_insert` varchar(200) NOT NULL,
  `offer_data` varchar(100) NOT NULL,
  `url_update` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cabs_secondpage_dashboard`
--

INSERT INTO `cabs_secondpage_dashboard` (`id`, `offer`, `url_insert`, `offer_data`, `url_update`) VALUES
(1, 'Festive Offer', '/festive_insert/', 'What do You Get?', '/festive_update/1/'),
(2, '', '', 'Image', '/festive_update/3/'),
(3, '', '', 'How do you get it?', '/festive_update/4/'),
(4, '', '', 'What else do you need to know?', '/festive_update/5/'),
(5, '', '', 'Terms and Conditions:', '/festive_update/6/'),
(6, 'Get 10% Discount', '/rental_insert/', 'Image', '/rental_update/1/'),
(7, '', '', 'What do you get?', '/rental_update/2/'),
(8, '', '', 'How to get the discount?', '/rental_update/3/'),
(9, '', '', 'What else you need to know:', '/rental_update/4/'),
(10, '', '', 'Terms and Conditions', '/rental_update/5/'),
(11, 'Anytime, Anywhere Travel', '/anytime_insert/', 'About the offer', '/anytime_update/1/'),
(12, '', '', 'What do You Get?', '/anytime_update/2/'),
(13, '', '', ' How do You Get?', '/anytime_update/3/'),
(14, '', '', 'What else do you need to know?', '/anytime_update/4/'),
(15, '', '', 'Terms and Conditions:', '/anytime_update/5/'),
(16, '', '', 'Image', '/anytime_update/6/'),
(17, 'Get RS.100 offer', '/ride_insert/', 'What do You Get?', '/ride_update/1/'),
(18, '', '', 'How to Avail?', '/ride_update/2/'),
(19, '', '', 'What else do you need to know?', '/ride_update/3/'),
(20, '', '', 'Terms and conditions', '/ride_update/4/'),
(21, '', '', 'Image', '/ride_update/5/'),
(22, 'Family Travel Savings', '/familyfun_insert/', 'About the offer', '/familyfun_update/1/'),
(23, '', '', 'What Users Get:', '/familyfun_update/2/'),
(24, '', '', 'How to Avail the Offer:', '/familyfun_update/3/'),
(25, '', '', 'What Else You Need to Know:', '/familyfun_update/4/'),
(26, '', '', 'Terms and Conditions:', '/familyfun_update/5/'),
(27, '', '', 'Image', '/familyfun_update/6/'),
(28, 'Airport Travel Made Easy', '/easy_insert/', 'What do You Get?', '/easy_update/1/'),
(29, '', '', 'How do You Get?', '/easy_update/2/'),
(30, '', '', 'What else do you need to know?', '/easy_update/3/'),
(31, '', '', 'Terms and Conditions:', '/easy_update/4/'),
(32, '', '', 'Image', '/easy_update/5/'),
(39, 'Ride More, Save More', '/offer15_insert/', 'What do You Get?', '/offer15_update/1/'),
(40, '', '', 'How to Avail?', '/offer15_update/2/'),
(41, '', '', 'What else do you need to know?', '/offer15_update/3/'),
(42, '', '', 'Terms and Conditions:', '/offer15_update/4/'),
(43, '', '', 'image:', '/offer15_update/5/'),
(44, 'paytm cashback', 'paytm_card_insert/', 'What do You Get?', 'paytm_card_update/1/'),
(45, '', '', 'How to Avail?', 'paytm_card_update/2/'),
(46, '', '', 'What else do you need to know?', 'paytm_card_update/3/'),
(47, '', '', 'Terms and Conditions:', 'paytm_card_update/4/'),
(48, '', '', 'image', 'paytm_card_update/5/');

-- --------------------------------------------------------

--
-- Table structure for table `cab_cards`
--

CREATE TABLE `cab_cards` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `code` varchar(100) NOT NULL,
  `Link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cab_cards`
--

INSERT INTO `cab_cards` (`id`, `title`, `description`, `photo`, `code`, `Link`) VALUES
(1, 'Festive Offer', 'Get Rs.200 Instant Discount only your 1st booking!', 'images/makara201.png', 'MAKARA20', 'http://127.0.0.1:8000/festive_main/'),
(2, 'Get 10% Discount', 'Enjoy a flat 10% discount on your cab bookings, upto Rs.150.', 'images/emtcab102.jpg', 'EMTCAB10', 'http://127.0.0.1:8000/rental_main/'),
(3, 'Anytime, Anywhere Travel', 'Get 5% off upto Rs.150 + 5% upto Rs.150 Cashback.', 'images/anytime242.jpg', 'ANYTIME24', 'http://127.0.0.1:8000/anytime_main/'),
(4, 'Get Rs.100 offer', 'Get Rs.100 off on your next ride and travel conveniently!', 'images/RIDE2.png', 'RIDE100', 'http://127.0.0.1:8000/ride_main/'),
(5, 'Family Travel Savings', 'Save 30% on cab rides with our family-friendly offers.', 'images/fam2.png', 'FAMILYFUN30', 'http://127.0.0.1:8000/familyfun_main/'),
(6, 'Airport Travel Made Easy', 'Book our reliable cab services and save upto 25%.', 'images/easy25.jpg', 'EASY25', 'http://127.0.0.1:8000/easy_main/'),
(7, 'Ride More, Save More', 'Enjoy a flat 15% discount on your cab bookings, upto Rs.150.', 'images/offer15.jpg', 'OFFER15', 'http://127.0.0.1:8000/offer15_main/'),
(8, 'Paytm Cashback', 'Scan and pay using paytm and get upto  Rs.250 cashback .', 'images/paytm.jpg', 'PAYTM25', 'http://127.0.0.1:8000/paytm_card_main/');

-- --------------------------------------------------------

--
-- Table structure for table `cab_faq`
--

CREATE TABLE `cab_faq` (
  `id` bigint(20) NOT NULL,
  `content` varchar(100) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cab_faq`
--

INSERT INTO `cab_faq` (`id`, `content`, `Title`, `description`) VALUES
(1, 'Cab Booking FAQ\'s', 'How do cab services work?', 'Cab services typically involve passengers requesting a ride either through a mobile app, phone call, or hailing a cab on the street. The nearest available cab or driver accepts the request and transports the passenger to their destination.'),
(2, '', 'How are cab fares calculated?', 'Cab fares are typically calculated based on factors such as distance traveled, time taken, base fare, and any additional surcharges or fees.'),
(3, '', 'What safety measures do cab services implement for passengers?', 'Safety measures may include background checks for drivers, GPS tracking, real-time trip monitoring, driver identification, and in-app emergency assistance features.'),
(4, '', 'What types of vehicles are used for cab services?', 'Cab services may use various types of vehicles, including sedans, minivans, SUVs, and sometimes specialized vehicles for individuals with disabilities.'),
(5, '', 'Are cab services available 24/7?', 'Many cab services operate 24 hours a day, seven days a week, offering round-the-clock transportation options to passengers.'),
(6, '', 'Can passengers request specific types of cabs, such as wheelchair-accessible vehicles?', 'Yes, many cab services offer options for passengers to request specific types of vehicles, including wheelchair-accessible cabs, through their mobile apps or customer service channels.'),
(7, '', 'What payment methods are accepted by cab services?', 'Cab services typically accept various payment methods, including credit/debit cards, cash, mobile wallets, and digital payment platforms integrated into their apps.'),
(8, '', 'Are cab services environmentally friendly?', 'Some cab services offer eco-friendly vehicle options, such as hybrid or electric vehicles, and may implement sustainability initiatives to reduce their environmental impact.'),
(9, '', 'What kind of cabs you can book from Teerdha?', 'You can book the following kinds of cabs from Teerdha: Airport cabs and intercity cabs / outstation cabs. You can book outstation cabs for both one-way transfers & round-trip transfers.'),
(10, '', 'What if the cab doesn\'t show up?', 'Since we work with the best operators, the vehicles are usually reliable. In case of a breakdown, it is the operator\'s responsibility to replace the vehicle during the journey.'),
(11, '', 'What if I need to cancel my trip?', 'The cancellation policy is specific to each operator and is listed against the quotes on the quotations page.');

-- --------------------------------------------------------

--
-- Table structure for table `cab_rental`
--

CREATE TABLE `cab_rental` (
  `id` bigint(20) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `point1` longtext NOT NULL,
  `point2` longtext NOT NULL,
  `point3` longtext NOT NULL,
  `point4` longtext NOT NULL,
  `point5` longtext NOT NULL,
  `point6` longtext NOT NULL,
  `point7` longtext NOT NULL,
  `point8` longtext NOT NULL,
  `point9` longtext NOT NULL,
  `point10` longtext NOT NULL,
  `point11` longtext NOT NULL,
  `point12` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cab_rental`
--

INSERT INTO `cab_rental` (`id`, `photo`, `title`, `point1`, `point2`, `point3`, `point4`, `point5`, `point6`, `point7`, `point8`, `point9`, `point10`, `point11`, `point12`) VALUES
(1, 'images/S-discount_R75hvXo.jpg', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2, '', 'What do You Get?', 'Flat 10% discount on your cab bookings, savings of upto Rs.150 on your booking.', '', '', '', 'Exclusive discounts are available only with the code \"EMTCAB10\".', '', '', '', '', '', '', ''),
(3, '', 'How to Get the Discount?', 'Enter the code \"EMTCAB10\" during the cab booking process.', '', '', '', 'Ensure that the code is applied before completing the payment.', 'The discount will be automatically applied to the booking total.', 'Confirm the discounted amount before finalizing the booking.', 'The 10% discount will be deducted from the total fare.', '', '', '', ''),
(4, '', 'What Else You Need to Know?', 'Offer valid for a limited time period.', '', '', '', 'Applicable on select cab services and routes.', 'Discount may vary based on the booking amount.', 'The code can be used only once per user.', 'The discount is non-transferable and cannot be exchanged for cash.', '', '', '', ''),
(5, '', 'Terms and Conditions:', 'In case of misuse or abuse of the offer, Teerdha reserves the right to deny the offer.', '', '', '', 'Teerdha\'s standard booking and privacy policy apply.', 'Teerdha reserves the right to modify or withdraw the offer at any time.', 'The offer may only be valid for cab bookings within certain geographical areas or regions specified by Teerdha.', 'Teerdha may impose restrictions on the number of times the offer can be redeemed per user account or booking.', 'For any queries or clarifications, please contact customer support.', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `choosing_content`
--

CREATE TABLE `choosing_content` (
  `id` bigint(20) NOT NULL,
  `question` varchar(100) NOT NULL,
  `answer` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `choosing_content`
--

INSERT INTO `choosing_content` (`id`, `question`, `answer`) VALUES
(1, 'How can I find the best flight deals?', 'Search for flights, but don’t enter a departure date. Instead, hit ‘Whole month\', then select ‘Cheapest month’. You’ll see exactly which days are cheapest to fly out and then return back to India. Be spontaneous and bag a flight deal anywhere! If you know when you want to travel but you\'re flexible on where, Everywhere Search shows you the best airfare deals from your chosen location. Simply enter your departure city or airport, select your dates and search ‘Everywhere’. If you already have a destination and dates in mind, get notified whenever fares rise or fall by setting up a Price Alert.'),
(2, 'How can I stay updated on flight deals and low fares?', 'If you’ve got a trip in mind, but you’re not ready to book, there\'s no pressure. You can keep an eye on prices in two ways. Set up a Price Alert – we’ll watch fares for you, and let you know via email if they rise or fall. Go one step further, download our app, so you can also get Price Alerts straight to your phone. Sign up for our weekly deals emails to get flight deals and travel updates sent straight to your inbox.'),
(3, 'How do I find the cheapest flights on Teerdha.com?', 'You can sort flights by price to see them from the cheapest to the most expensive. To find the cheapest flights, you also need to consider factors like when you\'re booking and want to travel.'),
(4, 'What is a flexible ticket?', 'A flexible ticket allows you to change your flight with the same airline by only paying the fare and tax difference. It can only be used for one confirmed change. You can add the flexible ticket when booking your flight.'),
(5, 'Does Teerdha.com charge credit card fees?', 'No, we don\'t charge any credit card fees. You can always see exactly what you’re paying for in the price breakdown when reviewing your booking.'),
(8, 'Avoiding extra fees:', 'Airlines will charge for just about anything these days. Some have even toyed around with charging customers for using the restroom. All those extra fees can certainly add up, but there\'s no reason to pay them if you don\'t have to. Here are some tips to keep money in your wallet once you get to the airport.'),
(9, 'Fly during the least popular times:', 'Tuesday, Wednesday and Saturday are the slowest days to fly, which means cheaper deals than the rest of the week. You can also find reduced rates on early morning flights, since many people don\'t like to get up before the sun to get to the airport. Earlier boarding times can also considerably cut down your chances of getting bumped on an overbooked flight or delayed because of other delayed flights or mechanical issues.'),
(10, 'Fly carry-on only. Baggage fees vary wildly:', 'Almost all airlines charge them and charge big. Why pay for your clothes to fly with you? If everyone in your travel party checks a bag, your bill can be astronomical before you ever even get to your destination. It\'s easy to reduce the amount of stuff you pack. Make sure all your clothing coordinates, so you can take less and still make more outfit combinations, take only two pairs of shoes, plan to do a bit of laundry on your trip and bring only travel-sized toiletries.'),
(11, 'Choose your seat later:', 'Some airlines charge you to pick your seat when you book online, adding even more to the bottom line of your ticket cost. If you show up early on your travel day, you can still get suitable seats. Some of the best seats get held back until flight day, unless others are willing to pay extra for them ahead of time, so you still have the chance at one of those.'),
(12, 'Book Domestic and International Flight Tickets:', 'Booking flights is now easier than before as the interface, whether app or the website, has been made more lucid with abundant addon features and payment options. In addition to that you can look up the latest ongoing discounts and deals. It would show you exclusive airline discounts and offers on payment with a specific bank or EWallet.'),
(13, 'Multiple Payment Options for Flight Booking:', 'You have the option of paying with multiple modes on your air ticket booking. The payment gateway offers you the option to pay with credit and debit Cards,Netbanking, EWallet\'s, UPI whether you make full payment or on EMI basis. This flexibility makes it easy to close your flight booking, and not make you feel restricted, such as when the mode of payment you have chosen is not listed in the options.');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-02-16 04:31:44.810235', '8', 'Naviagtion_bar object (8)', 1, '[{\"added\": {}}]', 8, 1),
(2, '2024-02-19 04:00:47.827173', '9', 'Hotel_offers object (9)', 1, '[{\"added\": {}}]', 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(13, 'booking', 'blog'),
(128, 'booking', 'buses_2ndpages'),
(122, 'booking', 'buses_offerscrudoperations'),
(93, 'booking', 'bus_busday_image6'),
(94, 'booking', 'bus_busday_terms6'),
(95, 'booking', 'bus_easeday7'),
(89, 'booking', 'bus_faq'),
(96, 'booking', 'bus_fest10'),
(97, 'booking', 'bus_festival3'),
(98, 'booking', 'bus_firstbus_code5'),
(99, 'booking', 'bus_firstbus_get5'),
(100, 'booking', 'bus_firstbus_terms5'),
(101, 'booking', 'bus_go_benefits2'),
(116, 'booking', 'bus_go_cancel'),
(102, 'booking', 'bus_go_container2'),
(103, 'booking', 'bus_go_image2'),
(104, 'booking', 'bus_go_table2'),
(105, 'booking', 'bus_go_terms2'),
(106, 'booking', 'bus_holiday12'),
(107, 'booking', 'bus_icici11'),
(108, 'booking', 'bus_offer9'),
(90, 'booking', 'bus_offercards'),
(109, 'booking', 'bus_ride13'),
(110, 'booking', 'bus_searchform'),
(111, 'booking', 'bus_special_avail4'),
(112, 'booking', 'bus_special_code4'),
(92, 'booking', 'bus_special_terms4'),
(113, 'booking', 'bus_weekday8'),
(114, 'booking', 'bus_weekends1'),
(115, 'booking', 'bus_weekends_terms1'),
(91, 'booking', 'bus_whychoose'),
(80, 'booking', 'cabbooking'),
(123, 'booking', 'cabs_offerscrudoperations'),
(126, 'booking', 'cabs_offerscrud_dashboard'),
(127, 'booking', 'cabs_secondpage_dashboard'),
(81, 'booking', 'cabwhycontents'),
(83, 'booking', 'cab_anytime'),
(7, 'booking', 'cab_booking'),
(78, 'booking', 'cab_cards'),
(82, 'booking', 'cab_easy'),
(77, 'booking', 'cab_familyfun'),
(79, 'booking', 'cab_faq'),
(85, 'booking', 'cab_festive'),
(86, 'booking', 'cab_offer_card'),
(84, 'booking', 'cab_paytm_card'),
(88, 'booking', 'cab_rental'),
(87, 'booking', 'cab_ride'),
(28, 'booking', 'card1_offerdetailes'),
(29, 'booking', 'card1_offers'),
(30, 'booking', 'card1_terms_conditions'),
(31, 'booking', 'choosing_content'),
(11, 'booking', 'contact'),
(119, 'booking', 'crudoperations'),
(125, 'booking', 'dashboard_sidebar'),
(14, 'booking', 'deg'),
(15, 'booking', 'facilities'),
(16, 'booking', 'facilities1'),
(27, 'booking', 'faq'),
(57, 'booking', 'faqitem'),
(32, 'booking', 'faqs'),
(118, 'booking', 'flightfaqs'),
(129, 'booking', 'flights_2ndpages'),
(131, 'booking', 'flights_2npdpages_update'),
(42, 'booking', 'flights_kotak_offer'),
(43, 'booking', 'flights_kotak_offer1'),
(44, 'booking', 'flights_kotak_terms'),
(37, 'booking', 'flights_offercards'),
(121, 'booking', 'flights_offerscrudoperations'),
(45, 'booking', 'flights_policy'),
(46, 'booking', 'flights_policy1'),
(35, 'booking', 'flight_offers7'),
(36, 'booking', 'flight_offers8'),
(33, 'booking', 'flight_offer_first'),
(34, 'booking', 'flight_offer_first1'),
(17, 'booking', 'footer'),
(18, 'booking', 'footer1'),
(19, 'booking', 'footer2'),
(20, 'booking', 'footer3'),
(21, 'booking', 'footer4'),
(22, 'booking', 'footer5'),
(23, 'booking', 'footer6'),
(38, 'booking', 'hdfc_logo'),
(39, 'booking', 'hdfc_offer'),
(9, 'booking', 'home_carousel'),
(24, 'booking', 'hotels'),
(25, 'booking', 'hotels1'),
(26, 'booking', 'hotels2'),
(130, 'booking', 'hotels_2ndpages'),
(124, 'booking', 'hotels_offerscrudoperations'),
(53, 'booking', 'hotel_axisoffer'),
(54, 'booking', 'hotel_axisoffer1'),
(55, 'booking', 'hotel_axispolicy'),
(74, 'booking', 'hotel_boboffer'),
(75, 'booking', 'hotel_boboffer1'),
(76, 'booking', 'hotel_bobpolicy'),
(56, 'booking', 'hotel_cards'),
(12, 'booking', 'hotel_faqitem'),
(71, 'booking', 'hotel_federaloffer'),
(65, 'booking', 'hotel_federaloffer1'),
(60, 'booking', 'hotel_federalpolicy'),
(64, 'booking', 'hotel_hsbcoffer'),
(59, 'booking', 'hotel_hsbcoffer1'),
(73, 'booking', 'hotel_hsbcpolicy'),
(58, 'booking', 'hotel_icicioffer'),
(68, 'booking', 'hotel_icicioffer1'),
(69, 'booking', 'hotel_icicipolicy'),
(61, 'booking', 'hotel_kotakoffer'),
(62, 'booking', 'hotel_kotakoffer1'),
(63, 'booking', 'hotel_kotakpolicy'),
(10, 'booking', 'hotel_offers'),
(70, 'booking', 'hotel_quary'),
(67, 'booking', 'hotel_sbioffer'),
(72, 'booking', 'hotel_sbioffer1'),
(66, 'booking', 'hotel_sbipolicy'),
(40, 'booking', 'icic_offer'),
(41, 'booking', 'icic_terms'),
(117, 'booking', 'navbar'),
(8, 'booking', 'naviagtion_bar'),
(47, 'booking', 'sbiimage'),
(48, 'booking', 'sbioffer'),
(49, 'booking', 'sbiterms'),
(120, 'booking', 'sidebar'),
(50, 'booking', 'why_choose'),
(51, 'booking', 'zero_cancellation_offer'),
(52, 'booking', 'zero_cancellation_terms'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-02-15 06:14:49.601934'),
(2, 'auth', '0001_initial', '2024-02-15 06:14:50.004369'),
(3, 'admin', '0001_initial', '2024-02-15 06:14:50.088838'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-02-15 06:14:50.096383'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-02-15 06:14:50.101949'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-02-15 06:14:50.162146'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-02-15 06:14:50.211430'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-02-15 06:14:50.225360'),
(9, 'auth', '0004_alter_user_username_opts', '2024-02-15 06:14:50.233047'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-02-15 06:14:50.272492'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-02-15 06:14:50.274583'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-02-15 06:14:50.282773'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-02-15 06:14:50.295714'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-02-15 06:14:50.306312'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-02-15 06:14:50.318058'),
(16, 'auth', '0011_update_proxy_permissions', '2024-02-15 06:14:50.324578'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-02-15 06:14:50.335631'),
(18, 'booking', '0001_initial', '2024-02-15 06:14:50.349596'),
(19, 'sessions', '0001_initial', '2024-02-15 06:14:50.375659'),
(20, 'booking', '0002_delete_cab_booking', '2024-02-15 06:27:08.949890'),
(21, 'booking', '0003_initial', '2024-02-15 12:56:56.855598'),
(22, 'booking', '0004_naviagtion_bar_icon', '2024-02-16 04:15:16.014191'),
(23, 'booking', '0005_home_carousel', '2024-02-16 05:52:11.626019'),
(24, 'booking', '0006_hotel_offers', '2024-02-16 11:17:11.018202'),
(25, 'booking', '0007_contact', '2024-02-20 09:28:54.969353'),
(26, 'booking', '0008_faqitem', '2024-02-20 10:54:17.285120'),
(27, 'booking', '0009_rename_faqitem_hotel_faqitem', '2024-02-20 11:06:20.404649'),
(28, 'booking', '0010_blog_deg_facilities_facilities1_footer_footer1_and_more', '2024-02-22 10:59:11.098073'),
(29, 'booking', '0011_faq', '2024-02-23 08:30:39.315290'),
(30, 'booking', '0012_card1_offerdetailes_card1_offers_and_more', '2024-02-29 13:28:04.682948'),
(31, 'booking', '0013_axis_offer_axis_offer1_axis_policy_cards_faqitem_and_more', '2024-03-21 04:39:39.664428'),
(32, 'booking', '0014_rename_axis_offer_hotel_axisoffer_and_more', '2024-03-21 05:44:21.101076'),
(33, 'booking', '0015_rename_faqitem_hotel_faqitem_and_more', '2024-03-21 05:57:49.450635'),
(34, 'booking', '0016_alter_hotel_cards_table_alter_hotel_quary_table', '2024-03-21 06:02:01.989059'),
(35, 'booking', '0017_hotel_boboffer_hotel_boboffer1_hotel_bobpolicy', '2024-03-25 04:58:48.337632'),
(36, 'booking', '0018_rename_kotak_offer_flights_kotak_offer_and_more', '2024-03-27 07:29:49.091246'),
(37, 'booking', '0019_anytime_cab_cards_cab_faq_cabbooking_cabwhycontents_and_more', '2024-04-03 12:02:38.156656'),
(38, 'booking', '0020_delete_anytime_delete_cab_cards_delete_cab_faq_and_more', '2024-04-03 12:30:32.864925'),
(39, 'booking', '0021_alter_flight_offers8_photo', '2024-04-08 08:55:30.765590'),
(40, 'booking', '0022_rename_photo_flight_offers8_photo1', '2024-04-08 09:00:15.351767'),
(41, 'booking', '0023_anytime_cab_cards_cab_faq_cabbooking_cabwhycontents_and_more', '2024-04-15 04:31:49.799592'),
(42, 'booking', '0024_rename_familyfun_cab_anytime_rename_easy_cab_easy_and_more', '2024-04-15 04:43:51.115002'),
(43, 'booking', '0025_bus_faq_bus_offercards_bus_trending01_bus_trending1_and_more', '2024-06-12 11:13:14.207518'),
(44, 'booking', '0026_delete_bus_faq_delete_bus_offercards_and_more', '2024-06-12 11:13:14.328776'),
(45, 'booking', '0027_bus_faq_bus_offercards_bus_trending01_bus_trending1_and_more', '2024-06-12 11:13:14.562623'),
(46, 'booking', '0028_bus_special_terms4_and_more', '2024-06-12 11:13:15.944893'),
(47, 'booking', '0029_bus_go_cancel', '2024-06-12 11:13:15.955387'),
(48, 'booking', '0030_navbar', '2024-06-12 11:13:15.965225'),
(49, 'booking', '0031_navbar_icon', '2024-06-12 11:13:15.978799'),
(50, 'booking', '0032_hotel_cards_book_now_alter_hotel_cards_table', '2024-06-12 11:13:16.004544'),
(51, 'booking', '0033_navbar_photo', '2024-06-12 11:13:16.015514'),
(52, 'booking', '0034_flightfaqs_delete_faqs_alter_hotel_faqitem_table', '2024-06-12 11:13:16.033740'),
(53, 'booking', '0035_flight_offers_update', '2024-06-12 11:13:16.042459'),
(54, 'booking', '0036_rename_flight_offers_update_flight_offersupdate_and_more', '2024-06-12 11:13:16.120054'),
(55, 'booking', '0037_delete_flight_offersupdate', '2024-06-12 11:13:16.128843'),
(56, 'booking', '0038_flight_crudoperations', '2024-06-12 11:13:16.138540'),
(57, 'booking', '0039_crudoperations_delete_flight_crudoperations', '2024-06-12 11:13:16.156634'),
(58, 'booking', '0040_sidebar', '2024-06-12 12:20:35.421748'),
(59, 'booking', '0041_flights_offerscrudoperations', '2024-06-12 12:39:54.323248'),
(60, 'booking', '0042_buses_offerscrudoperations_cabs_offerscrudoperations_and_more', '2024-06-19 06:35:39.138399'),
(61, 'booking', '0043_dashboard_sidebar_delete_sidebar', '2024-06-19 12:02:21.714612'),
(62, 'booking', '0044_cabs_offerscrud_dashboard_cabs_secondpage_dashboard', '2024-06-20 08:51:56.474827'),
(63, 'booking', '0045_buses_2ndpages', '2024-06-20 11:34:26.684472'),
(64, 'booking', '0046_delete_cabs_offerscrudoperations', '2024-06-20 11:58:22.709674'),
(65, 'booking', '0047_flights_2ndpages_hotels_2ndpages', '2024-06-20 12:34:38.202454'),
(66, 'booking', '0048_flights_2npdpages_update', '2024-06-20 12:36:02.382507');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('4tkwhj1ff67xsmol82uxrezgp6kqsng0', '.eJxVjEEOwiAURO_C2hBo68e6dO8ZyMD_SNVAUtqV8e7apAvdzntvXspjXbJfm8x-YnVWVh1-t4D4kLIBvqPcqo61LPMU9KbonTZ9rSzPy-7-HWS0_K0FwQDRkRAfnbFClAxsAA9Dh1GCpBPDAWQNCI5Sbxy5zobIcYy9en8AFhY5Bg:1raprX:0NjC7MWrBw5He-DujCdSBV50nV7LcVbV_e3TJ3Qc36A', '2024-03-01 04:30:11.780877'),
('hhzdjr5lnu69rd7ftylydnflq4iwwwmu', '.eJxVjEEOwiAQRe_C2hCYggWX7j0DmYFBqgaS0q6Md7dNutDtf-_9twi4LiWsnecwJXERIE6_G2F8ct1BemC9NxlbXeaJ5K7Ig3Z5a4lf18P9OyjYy1Y7DQRIYI0fQA8A0TtwxibvkjqPrPyoM2mGTECWc1SOFABG7Tdosvh8AbbwNzU:1sKG7a:-sDHKXdGCIt6vYlhzyGM-pHHDzAXHXMFgs7T95bCM34', '2024-07-04 11:38:30.355050'),
('ohf4fj93wpkiedijp92plea9ih0zdxkb', '.eJxVjEEOwiAURO_C2hBo68e6dO8ZyMD_SNVAUtqV8e7apAvdzntvXspjXbJfm8x-YnVWVh1-t4D4kLIBvqPcqo61LPMU9KbonTZ9rSzPy-7-HWS0_K0FwQDRkRAfnbFClAxsAA9Dh1GCpBPDAWQNCI5Sbxy5zobIcYy9en8AFhY5Bg:1rbul9:Cd61aYk1pjIrrukFuhF2zHq97KclTt79S2XmOKCk7Zo', '2024-03-04 03:56:03.045280');

-- --------------------------------------------------------

--
-- Table structure for table `flights_kotak_offer`
--

CREATE TABLE `flights_kotak_offer` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `text` varchar(100) NOT NULL,
  `text1` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flights_kotak_offer`
--

INSERT INTO `flights_kotak_offer` (`id`, `image`, `text`, `text1`) VALUES
(1, 'media/kotak1.png', 'Grab Up to 12% OFF* on Domestic & International Flights.', 'Offer valid on Sunday\'s till 29th Feb ‘24');

-- --------------------------------------------------------

--
-- Table structure for table `flights_kotak_offer1`
--

CREATE TABLE `flights_kotak_offer1` (
  `id` bigint(20) NOT NULL,
  `image1` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `couponcode` varchar(100) NOT NULL,
  `offer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flights_kotak_offer1`
--

INSERT INTO `flights_kotak_offer1` (`id`, `image1`, `category`, `couponcode`, `offer`) VALUES
(1, 'media/indigo.png', 'Domestic Flights', 'TRDKOTAK*', 'Flat 12% Instant Discount* (upto ₹ 1,500) Minimum Transaction Value: ₹5,000.'),
(2, 'media/inter.png', 'International Flights', 'TRDKOTAKINT*', 'Flat 10% Instant Discount* (upto ₹ 5,000) Minimum Transaction Value: ₹ 10,000.');

-- --------------------------------------------------------

--
-- Table structure for table `flights_kotak_terms`
--

CREATE TABLE `flights_kotak_terms` (
  `id` bigint(20) NOT NULL,
  `terms` longtext NOT NULL,
  `condition` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flights_kotak_terms`
--

INSERT INTO `flights_kotak_terms` (`id`, `terms`, `condition`) VALUES
(1, 'Add-on cards will be handled as distinct cards. This offer is not valid for Kotak Bank corporate cards.', 'Should the customer cancel their order in part or in full, the offer is null and void, and they will not be entitled to the discount.'),
(2, 'You cannot combine this offer with any other Teerdha offer.', 'The customer is responsible for paying any additional rescheduling/cancellation costs as well as the fare difference in the event of any changes to the itinerary (whether or not the component is part of the base fare or includes tax and surcharge).'),
(3, 'Teerdha & Kotak Bank reserves the right to add, alter, modify, change, or vary all of these terms and conditions at any time, without prior notice or liability, and without assigning any reason whatsoever.', ''),
(4, 'Teerdha & Kotak Bank may also choose to extend or withdraw this offer entirely and replace it entirely with another offer that may or may not be similar to this one.', ''),
(5, 'The customer must contact Kotak Bank with any card-related claims. Teerdha won\'t take such accusations into consideration.', ''),
(6, 'The only person qualified to comprehend these phrases is Teerdha.', ''),
(7, 'Teerdha will not be responsible for any damage or losses brought on by a force majeure incident.', ''),
(8, 'Teerdha shall not be liable for any indirect, punitive, special, incidental, or consequential damages arising out of or in connection with the offer.', ''),
(9, 'Teerdha reserves the right to deny the offer or cancel the booking in the event that the customer or travel agent misuses or abuses the offer.', ''),
(10, 'Teerdha\'s entire liability under this offer shall not exceed the amount of promotional discount under this offer.', ''),
(11, 'The Delhi courts\' exclusive jurisdiction will apply to any disputes, if any, arising out of or related to this offer. The Teerdha website\'s User Agreement and Privacy Policy will be in effect.', ''),
(12, 'Teerdha maintains the right to reject the offer against such bookings or to cancel such bookings.', ''),
(13, 'Customers who work as travel brokers are prohibited from making reservations for their clients.', ''),
(14, 'Teerdha will not reimburse the booking amount in these circumstances. Offer is only good for BINs that Kotak Bank has shared that are eligible.', ''),
(15, 'The cardholder must contact Kotak Bank if the card\'s BIN series does not match the one Teerdha received from Kotak Bank.', ''),
(16, 'Teerdha has the right to refuse the customer\'s offer or withhold it. Any customer who qualifies for the Offer will be considered to have read, comprehended, and agreed to these terms and conditions as well as the usual terms and conditions of the Bank.', '');

-- --------------------------------------------------------

--
-- Table structure for table `flights_policy`
--

CREATE TABLE `flights_policy` (
  `id` bigint(20) NOT NULL,
  `content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flights_policy`
--

INSERT INTO `flights_policy` (`id`, `content`) VALUES
(1, 'As per the information above, the customer will receive discounts or advantages (referred to as \"Offers\").'),
(2, 'This offer is extended to Kotak Mahindra Bank Limited (\"Bank\") customers who possess Kotak credit cards (\"Customers\" or \"Cardholders\") in collaboration with Teerdha India Private Limited (\"Teerdha\").');

-- --------------------------------------------------------

--
-- Table structure for table `flights_policy1`
--

CREATE TABLE `flights_policy1` (
  `id` bigint(20) NOT NULL,
  `content1` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flights_policy1`
--

INSERT INTO `flights_policy1` (`id`, `content1`) VALUES
(1, 'To avail the offer, customer must enter E-Coupon as per the offer mentioned table in the E-Coupon field.'),
(2, 'The offer will remain valid on every Sunday from 28th January ’24 to 29th February ’24.'),
(3, 'This offer is valid on payment made through Kotak Bank Credit only.'),
(4, 'The offer is valid for bookings made on Teerdha’ s website, Mobile site, Android & iOS App.'),
(5, 'The instant discount offer is valid for only 1 booking per card per category per calendar month.');

-- --------------------------------------------------------

--
-- Table structure for table `home_carousel`
--

CREATE TABLE `home_carousel` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_carousel`
--

INSERT INTO `home_carousel` (`id`, `image`) VALUES
(1, 'media/busoffer.png'),
(2, 'media/caboffers.jpg'),
(3, 'media/holiday.jpg'),
(4, 'media/hoteloffers.jpg'),
(5, 'media/services.png'),
(6, 'media/flightoffer.png'),
(7, 'media/flightoffer_0vDXH3l.png');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_axisoffer`
--

CREATE TABLE `hotel_axisoffer` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotel_axisoffer`
--

INSERT INTO `hotel_axisoffer` (`id`, `image`) VALUES
(2, 'media/axis_bank_img_2025.png');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_axisoffer1`
--

CREATE TABLE `hotel_axisoffer1` (
  `id` bigint(20) NOT NULL,
  `product` varchar(100) NOT NULL,
  `offer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotel_axisoffer1`
--

INSERT INTO `hotel_axisoffer1` (`id`, `product`, `offer`) VALUES
(1, 'Domestic Hotels', 'Get 35% offer on booking these hotels.'),
(2, 'International Hotels', 'Get 35% offer on booking these hotels.');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_axispolicy`
--

CREATE TABLE `hotel_axispolicy` (
  `id` bigint(20) NOT NULL,
  `content` longtext NOT NULL,
  `content1` longtext NOT NULL,
  `content2` longtext NOT NULL,
  `content3` longtext NOT NULL,
  `content4` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotel_axispolicy`
--

INSERT INTO `hotel_axispolicy` (`id`, `content`, `content1`, `content2`, `content3`, `content4`) VALUES
(1, 'The customer will receive discounts as per the details mentioned in the table above.\r\nFor hotels, discount is to be calculated on basic property price (pre-tax price).\r\n', 'To avail the offer, customer must enter E-Coupon as per aforementioned table in the           E-Coupon field.', 'The offer is not applicable on payments made through Axis Debit cards, 3rd party wallets, COD, Pay Pal, Gift card and net banking payments.', 'In case of partial/full cancellation the offer stands void and customer will not be eligible for the discount.', ''),
(2, 'The offer is valid on select hotels.', 'This offer is valid on payment made through Axis Cards only.', 'The offer is also valid on Axis Cards EMI bookings.', 'If there is any rescheduling or cancellation, the customer has to bear the fare difference (regardless of whether the component is in the base fare or in tax + surcharge) and other rescheduling/cancellation fees.', ''),
(3, 'Domestic hotels offer is not applicable if the property is booked using the pay-at-hotel or Book Now Pay Later option.', 'The offer is valid for bookings made on Teerdha\'s website, Mobile site, Android & iOS App.', '', '', ''),
(4, '', '', '', '', 'This offer cannot be clubbed with any other offer of Teerdha.'),
(5, '', '', '', '', 'Teerdha reserves the right, at any time, without prior notice and liability and without assigning any reason whatsoever, to add/alter/modify/change or vary all of these terms and conditions or to replace, wholly or in part, this offer by another offer, whether similar to this offer or not, or to extend or withdraw it altogether.'),
(6, '', '', '', '', 'For any card related claims, the customer will need to approach the Axis Cards. Teerdha shall not entertain any such claims.'),
(7, '', '', '', '', 'Teerdha is the sole authority for the interpretation of these terms.'),
(8, '', '', '', '', 'Teerdha shall not be liable for any loss or damage arising due to force majeure event. In the event of any misuse or abuse of the offer by the customer or travel agent, Teerdha reserves the right to deny the offer or cancel the booking.\r\n'),
(9, '', '', '', '', 'In no event will the entire liability of Teerdha under this offer exceed the amount of promotional discount under this offer.'),
(10, '', '', '', '', 'Teerdha shall not be liable to for any indirect, punitive, special, incidental or consequential damages arising out of or in connection with the offer.');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_boboffer`
--

CREATE TABLE `hotel_boboffer` (
  `id` bigint(20) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `cpncode` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotel_boboffer`
--

INSERT INTO `hotel_boboffer` (`id`, `photo`, `title`, `cpncode`) VALUES
(1, 'media/image_7_RvIlOGd.png', 'Grab Upto 18% OFF* on Domestic and International Hotels.', 'CODE : TRDBOB');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_boboffer1`
--

CREATE TABLE `hotel_boboffer1` (
  `id` bigint(20) NOT NULL,
  `category` varchar(100) NOT NULL,
  `couponcode` varchar(100) NOT NULL,
  `offer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotel_boboffer1`
--

INSERT INTO `hotel_boboffer1` (`id`, `category`, `couponcode`, `offer`) VALUES
(1, 'Domestic Hotels', 'BOBDOM', ' Flat 18% on domestic hotels (upto  ₹10000).'),
(2, 'International Hotels', 'BOBINT', '  Flat 15% on international hotels(upto ₹20000).');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_bobpolicy`
--

CREATE TABLE `hotel_bobpolicy` (
  `id` bigint(20) NOT NULL,
  `term` longtext NOT NULL,
  `term1` longtext NOT NULL,
  `term2` longtext NOT NULL,
  `term3` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotel_bobpolicy`
--

INSERT INTO `hotel_bobpolicy` (`id`, `term`, `term1`, `term2`, `term3`) VALUES
(1, 'As per the information above, the customers will receive discounts or advantages (referred to as \"Offers\").', 'To avail the offer, customer must enter E-Coupon as per the offer mentioned table in the E-Coupon field.', 'Should the customer cancel their order in part or in full, the offer is null and void, and they will not be entitled for the discount.', 'Should the customer cancel their order in part or in full, the offer is null and void, and they will not be entitled to the discount.'),
(2, 'This offer is extended to Bank Of Baroda Limited (\"Bank\") customers who possess BOB credit cards (\"Customers\" or \"Cardholders\") in collaboration with Teerdha India Private Limited (\"Teerdha\").', 'This offer is valid on payment made through BOB Credit card only.', 'The customer is responsible for paying any additional rescheduling/cancellation costs as well as the fare difference in the event of any changes to the itinerary (whether the component is part of the base fare or includes tax and surcharge).', 'You cannot combine this offer with any other Teerdha offer.'),
(3, '', 'The offer is valid for bookings made on Teerdha’s website, Mobile site, Android & iOS App.', '', 'Teerdha & BOB Bank reserves the right to add, alter, modify, change, or vary all of these terms and conditions at any time, without prior notice or liability, and without assigning any reason whatsoever.'),
(4, '', 'The instant discount offer is valid for only 1 booking per card per category per calendar month.', '', 'Teerdha & BOB Bank may also choose to extend or withdraw this offer entirely and replace it entirely with another offer that may or may not be similar to this one.'),
(5, '', '', '', 'The customer must contact BOB Bank with any card-related claims. Teerdha won\'t take such accusations into consideration.'),
(6, '', '', '', 'The only person qualified to comprehend these phrases is Teerdha.'),
(7, '', '', '', 'Teerdha will not be responsible for any damage or losses brought on by a force majeure incident.'),
(8, '', '', '', 'Teerdha shall not be liable for any indirect, punitive, special, incidental, or consequential damages arising out of or in connection with the offer.'),
(9, '', '', '', 'Teerdha reserves the right to deny the offer or cancel the booking in the event that the customer or travel agent misuses or abuses the offer.'),
(10, '', '', '', 'Teerdha\'s entire liability under this offer shall not exceed the amount of promotional discount under this offer.'),
(11, '', '', '', 'The Delhi courts exclusive jurisdiction will apply to any disputes, if any, arising out of or related to this offer. The Teerdha website\'s User Agreement and Privacy Policy will be in effect.'),
(12, '', '', '', 'Teerdha maintains the right to reject the offer against such bookings or to cancel such bookings.'),
(13, '', '', '', 'Customers who work as travel brokers are prohibited from making reservations for their clients.'),
(14, '', '', '', 'Teerdha will not reimburse the booking amount in these circumstances. This offer is only good for BINs that BOB Bank has shared that are eligible.'),
(15, '', '', '', 'The cardholder must contact BOB Bank if the card\'s BIN series does not match the one Teerdha received from BOB Bank.'),
(16, '', '', '', 'Teerdha has the right to refuse the customer\'s offer or withhold it. Any customer who qualifies for the Offer will be considered to have read, comprehended, and agreed to these terms and conditions as well as the usual terms and conditions of the Bank.');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_faqitem`
--

CREATE TABLE `hotel_faqitem` (
  `id` bigint(20) NOT NULL,
  `question` longtext NOT NULL,
  `answer` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotel_faqitem`
--

INSERT INTO `hotel_faqitem` (`id`, `question`, `answer`) VALUES
(1, 'Q)  How to book a hotel online with Teerdha?', 'Booking a hotel online is easy through Teerdha. All you need to do first is to download our app on your Android or iOS device or simply use your computer. On the app, tap on the Hotels section  enter the details of the city, the area or the hotel. Fill out the check-In and check-Out dates, along with the other details and tap Search. You can also choose hotels according to user reviews and ratings.'),
(2, 'Q) How to find the best hotels near me?', 'To find the best hotels near you, use our website or app. Whether you\'re headed to Goa for its beaches or Mumbai for business or leisure, simply input your location to receive curated listings. We offer insights into areas suitable for couples or families in Goa and options near key districts, tourist spots, and transportation hubs in Mumbai. Our platform streamlines the process, making it effortless to discover accommodations tailored to your needs, ensuring a comfortable stay wherever you go.\r\n\r\n'),
(3, 'Q)  How can i get early Check-In or late Check-Out in a Hotel?', 'The early Check-In\'s or late Check-Out\'s in hotels are subject to availability and customers have to ask about this directly from the respective hotels. If a hotel reception is accommodating, they can provide their guests with both early Check-In and late Check-Out or at least any of these. However, It also depends if rooms are available in the hotel or not. Usually, guests can enjoy free early Check-In or late Check-Out up to 2 hours.'),
(4, 'Q) Are hotel rooms cheaper last minute?', 'No, It is quite opposite. But in some cases, there are last-minute cancellations and hotels instead of taking the loss give out the rooms at a cheaper price. Last-minute hotel sales are often an outcome of rooms going vacant for a long period. This could be true of some hotels in the low season, depending on their location.'),
(5, 'Q) Where can I check the deals, discounts and offers on Teerdha ?', 'You can open the Teerdha Hotels section and look up all the discounts and offers running presently in a single scroll. Just go under the title \'Hotel discounts for you\' and you will be able to browse all manner of offers, deals, and discounts.'),
(6, 'Q) What are the advantages of online hotel booking?', 'You can book hotels sitting at home in a few simple clicks, you can quickly check reviews, images, ratings and amenities of all the hotels at one place. Compare hotels to suit your preferences for hotel bookings. You can avail great discounts and offers on hotel booking through Teerdha and to avoid the last-minute hotel search in an unknown city with high prices. You can book a suitable stay for yourself at reasonable prices online.'),
(7, 'Q) How can I book hotels at lowest price through Teerdha?', 'Teerdha offers a smooth and hassle-free hotel booking process at the lowest prices. Visit the Teerdha website or app and enter the city name, check-in and check-out date and room requirements under the hotel section. A range of hotels from luxury to budget ones will be displayed. You can customize your search basis the price range, star category, location and other relevant filters and book the best-suited hotel as per your preference and Teerdha presents offers exciting offers and discounts on hotel booking. The discount codes are updated regularly under various deals.'),
(8, 'Q) Do hotel price change?', 'Hotel room availability is in constant flux, leading to fluctuating prices influenced by supply and demand dynamics. When bookings surge, hotels are inclined to raise their rates accordingly.');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_federaloffer`
--

CREATE TABLE `hotel_federaloffer` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `couponcode` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotel_federaloffer`
--

INSERT INTO `hotel_federaloffer` (`id`, `image`, `title`, `couponcode`) VALUES
(1, 'media/image_bhjgTsW.png', 'UPTO 24% off on hotels with Federal Bank', 'CODE : TRDFDRL');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_federaloffer1`
--

CREATE TABLE `hotel_federaloffer1` (
  `id` bigint(20) NOT NULL,
  `applicable` varchar(100) NOT NULL,
  `offer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotel_federaloffer1`
--

INSERT INTO `hotel_federaloffer1` (`id`, `applicable`, `offer`) VALUES
(1, 'Both Domestic & International Hotels.', 'UPTO 24% off on Domestic/ International Hotels with Federal Bank Credit & Debit cards.');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_federalpolicy`
--

CREATE TABLE `hotel_federalpolicy` (
  `id` bigint(20) NOT NULL,
  `cntnt` longtext NOT NULL,
  `cntnt1` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotel_federalpolicy`
--

INSERT INTO `hotel_federalpolicy` (`id`, `cntnt`, `cntnt1`) VALUES
(1, 'Visit teerdha.com or download the teerdha Mobile App available for iOS on App Store & for Android on Google Play Store.', 'This offer is valid only Federal bank cards.'),
(2, 'Book any Domestic/ International Hotels of your choice.', 'To avail the discount, simply enter the coupon code TRDFDRL before making the payment with your Federal Bank cards, and the discount amount shall be deducted from the amount payable by you. This discount is not applicable for payments made in cash, Teerdha Wallet or any other mode of payment.'),
(3, 'Simply enter coupon code TRDFDRL before making the payment with your Federal Bank Credit or Debit card.', 'The discount is valid per booking. In case you book more than one adult/ ticket/ segment/ room in a single transaction, you will still receive the discount on a per booking basis only.'),
(4, 'Federal Bank Credit cards  are applicable on every Tuesday & Wednesday.', 'The offer cannot be clubbed with any other offer on teerdha.com.'),
(5, 'Federal Bank Debit cards are applicable only on every Tuesday.', ''),
(6, 'The applicable discount amount as per the above table will be instantly deducted from the total amount payable.', 'All bookings are subject to availability.'),
(7, 'Valid for transactions made every Tuesday & Wednesday.', 'If you book any non-eligible hotel, your booking will be confirmed but you will not receive any discount for this booking'),
(8, 'The offer is valid once per card & once per product every week.', 'Discount percentage will be calculated on Base Fare (rate exclusive of taxes and hotel discounts). Check-in and Check-out time is applicable as confirmed by the hotel.'),
(10, '', 'The discount can only be availed on teerdha.com desktop website, Android and iOS apps, and mobile website.'),
(12, '', 'In case of cancellations of booking (in part or full), the instant savings amount will not be refunded and standard cancellation policy of Teerdha (as specified on Teerdha website) will apply.'),
(13, '', 'Customers who are Travel Agents by occupation, are barred from making bookings for their customers with this offer and Teerdha reserves the right to deny the offer against such bookings or to cancel such bookings.\r\n'),
(14, '', ''),
(17, '', ''),
(18, '', ''),
(19, '', ''),
(20, '', ''),
(21, '', ''),
(22, '', ''),
(23, '', ''),
(24, '', ''),
(25, '', ''),
(26, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_hsbcoffer`
--

CREATE TABLE `hotel_hsbcoffer` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `couponcode` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotel_hsbcoffer`
--

INSERT INTO `hotel_hsbcoffer` (`id`, `image`, `title`, `couponcode`) VALUES
(1, 'media/image_13.png', 'Upto 20% OFF On International Hotel Bookings Using HSBC credit cards.', 'CODE : TRDHSBC');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_hsbcoffer1`
--

CREATE TABLE `hotel_hsbcoffer1` (
  `id` bigint(20) NOT NULL,
  `applicable` varchar(100) NOT NULL,
  `offer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotel_hsbcoffer1`
--

INSERT INTO `hotel_hsbcoffer1` (`id`, `applicable`, `offer`) VALUES
(1, 'Flat 20% Off (upto INR 5000) on select hotels.', 'HSBC Credit cards ');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_hsbcpolicy`
--

CREATE TABLE `hotel_hsbcpolicy` (
  `id` bigint(20) NOT NULL,
  `data` longtext NOT NULL,
  `data1` longtext NOT NULL,
  `data2` longtext NOT NULL,
  `data3` longtext NOT NULL,
  `data4` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotel_hsbcpolicy`
--

INSERT INTO `hotel_hsbcpolicy` (`id`, `data`, `data1`, `data2`, `data3`, `data4`) VALUES
(1, 'The customer will receive discounts as per the details mentioned in the table above.For hotels, discount is to be calculated on basic property price (pre-tax price).\n', 'To avail the offer, customer must enter E-Coupon as per the offer mentioned table in the E-Coupon field.', '', 'In case of partial/full cancellation the offer stands void and customers will not be eligible for the discount.', 'This offer cannot be clubbed with any other offer of Teerdha.'),
(2, 'Offer is valid on select hotels.', 'This offer is valid on payment made through HSBC Credit cards only.', 'This offer is not applicable on payments made through HSBC Credit cards, 3rd party wallets, COD, Pay Pal, Gift card and net banking payments.', 'If there is any rescheduling or cancellation, customers has to bear the fare difference (regardless of whether the component is in the base fare or in tax + surcharge) and other rescheduling/cancellation fees.', 'Teerdha reserves the right, at any time, without prior notice and liability and without assigning any reason whatsoever, to add/alter/modify/change or vary all of these terms and conditions or to replace, wholly or in part, this offer by another offer, whether similar to this offer or not, or to extend or withdraw it altogether.'),
(3, 'Domestic hotels offer is not applicable if the property is booked using the pay-at-hotel or Book Now Pay Later option.', 'The offer is valid for bookings made on Teerdha\'s website, Mobile site, Android & iOS App.', '', '', 'For any card related claims, the customer will need to approach the HSBC Credit cards. Teerdha shall not entertain any such claims.'),
(4, '', 'The offer is valid once per card per category per month.', '', '', 'Teerdha is the sole authority for the interpretation of these terms.'),
(5, '', '', '', '', 'Teerdha shall not be liable for any loss or damage arising due to force majeure event\r\nIn the event of any misuse or abuse of the offer by the customer or travel agent, Teerdha   reserves the right to deny the offer or cancel the booking.\r\n'),
(6, '', '', '', '', 'In no event will the entire liability of Teerdha under this offer exceed the amount of promotional discount under this offer.'),
(7, '', '', '', '', 'Teerdha shall not be liable for any indirect, punitive, special, incidental or consequential damages arising out of or in connection with the offer.');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_icicioffer`
--

CREATE TABLE `hotel_icicioffer` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `couponcode` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotel_icicioffer`
--

INSERT INTO `hotel_icicioffer` (`id`, `image`, `title`, `couponcode`) VALUES
(1, 'media/icic_bank_2025.png', 'Grab FLAT 20% OFF* Upto Rs.8,000 on 3, 4 & 5-star hotel stays in India.', 'CODE: TRDICICI');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_icicioffer1`
--

CREATE TABLE `hotel_icicioffer1` (
  `id` bigint(20) NOT NULL,
  `applicable` varchar(100) NOT NULL,
  `offer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotel_icicioffer1`
--

INSERT INTO `hotel_icicioffer1` (`id`, `applicable`, `offer`) VALUES
(1, 'ICICI Bank Credit Cards', 'Flat 20% instant discount Upto INR 8,000\r\nmin. \r\n');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_icicipolicy`
--

CREATE TABLE `hotel_icicipolicy` (
  `id` bigint(20) NOT NULL,
  `content` longtext NOT NULL,
  `content1` longtext NOT NULL,
  `content2` longtext NOT NULL,
  `content3` longtext NOT NULL,
  `content4` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotel_icicipolicy`
--

INSERT INTO `hotel_icicipolicy` (`id`, `content`, `content1`, `content2`, `content3`, `content4`) VALUES
(1, 'The customer will receive discounts as per the details mentioned in the table above.', 'To avail the offer, customer must enter E-Coupon as per the offer mentioned table in the E-Coupon field.', 'The discount is to be calculated on hotel base price (pre-tax price).', 'In case of partial/full cancellation, the offer stands void and customer will not be eligible for the discount.', 'If the customer doesn\'t receive discount, he/she must raise the claim at https://support.teerdha.com/ within 3 months from the booking date. In the event the card holder fails to do so, he/she will not be eligible for the discount amount.'),
(2, '', 'The offer will remain valid every week from Monday to Wednesday.', 'The offer is not applicable if the hotel is booked using the ‘Book Now Pay Later’ or ‘Book Now @ just ₹0’ option.', 'If there is any rescheduling or cancellation, customer has to bear the fare difference (regardless of whether the component is in the base fare or in tax + surcharge) and other rescheduling/cancellation fees.', 'This offer is not applicable on ICICI Bank corporate cards.'),
(3, '', 'This offer is valid on payment made through ICICI bank Credit cards only.', 'This offer is not applicable on payments made through Teerdha Gift Card, My Wallet or Third Party Wallet.', '', 'Add-on cards will be treated as separate cards.'),
(4, '', 'The offer is valid for bookings made on Teerdha website, Mobile site, Android & iOS App.', 'The offer is also valid on ICICI bank Credit card EMI bookings. However, the offer is not applicable on No Cost EMI.', '', 'This offer cannot be clubbed with any other offer of Teerdha'),
(5, '', 'The offer is applicable only on select properties.', 'The offer is not applicable on payments made using ICICI Bank Debit cards or ICICI Bank Internet banking.', '', 'Teerdha & ICICI Bank reserves the right, at any time, without prior notice and liability and without assigning any reason whatsoever, to add/alter/modify/change or vary all of these terms and conditions or to replace, wholly or in part, this offer by another offer, whether similar to this offer or not, or to extend or withdraw it altogether.'),
(6, '', 'The offer is valid for 1 booking per card per category per edition (Mon-Wed).', '', '', 'For any card related claims, the customer will need to approach the Bank. Teerdha shall not entertain any such claims.'),
(7, '', '', '', '', 'Teerdha is the sole authority for the interpretation of these terms.'),
(8, '', '', '', '', 'Teerdha shall not be liable for any loss or damage arising due to force majeure event.'),
(9, '', '', '', '', 'In the event of any misuse or abuse of the offer by the customer or travel agent, Teerdha reserves the right to deny the offer or cancel the booking.'),
(10, '', '', '', '', 'In no event will the entire liability of Teerdha under this offer exceed the amount of promotional discount under this offer.'),
(11, '', '', '', '', 'Teerdha shall not be liable to for any indirect, punitive, special, incidental or consequential damages arising out of or in connection with the offer.'),
(12, '', '', '', '', 'Disputes, if any, arising out of or in connection with this offer shall be subject to the exclusive jurisdiction of the competent court in Delhi.'),
(13, '', '', '', '', 'Customers who are travel agents by occupation are barred from making bookings for their customers and Teerdha reserves the right to deny the offer against such bookings or to cancel such bookings. For such cases, Teerdha shall not refund the booking amount.'),
(14, '', '', '', '', 'Offer is only valid on the eligible BINs shared by ICICI Bank. If the BIN series of the card does not match with the one provided by ICICI Bank to Teerdha, then the cardholder will need to approach ICICI Bank and Teerdha will be entitled to withhold or deny the offer to the customer.');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_kotakoffer`
--

CREATE TABLE `hotel_kotakoffer` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `couponcode` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotel_kotakoffer`
--

INSERT INTO `hotel_kotakoffer` (`id`, `image`, `title`, `couponcode`) VALUES
(1, 'media/image_5_HHswTs8.png', 'Grab Upto 18% OFF* on Domestic and International Hotels.', 'CODE : TRDKOTK');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_kotakoffer1`
--

CREATE TABLE `hotel_kotakoffer1` (
  `id` bigint(20) NOT NULL,
  `applicable` varchar(100) NOT NULL,
  `offer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotel_kotakoffer1`
--

INSERT INTO `hotel_kotakoffer1` (`id`, `applicable`, `offer`) VALUES
(1, 'TRDKOTK', 'Flat 12% Instant Discount* (Upto ₹3000)');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_kotakpolicy`
--

CREATE TABLE `hotel_kotakpolicy` (
  `id` bigint(20) NOT NULL,
  `cntnt` longtext NOT NULL,
  `cntnt1` longtext NOT NULL,
  `cntnt2` longtext NOT NULL,
  `cntnt3` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotel_kotakpolicy`
--

INSERT INTO `hotel_kotakpolicy` (`id`, `cntnt`, `cntnt1`, `cntnt2`, `cntnt3`) VALUES
(1, 'As per the information above, the customer will receive discounts or advantages (referred to as \"Offers\").', 'To avail the offer, customers must enter E-Coupon as per the offer mentioned table in the E-Coupon field.', 'Should the customer cancel their order in part or in full, the offer is null and void, and they will not be entitled for the discount.', 'Add-on cards will be handled as distinct cards. This offer is not valid for Kotak Bank corporate cards.'),
(2, 'This offer is extended to Kotak Mahindra Bank Limited (\"Bank\") customers who possess Kotak credit cards (\"Customers\" or \"Cardholders\") in collaboration with Teerdha India Private Limited (\"Teerdha\").', 'The offer will remain valid upto 31st March.', 'The customer is responsible for paying any additional rescheduling/cancellation costs as well as the fare difference in the event of any changes to the itinerary (whether the component is part of the base fare or includes tax and surcharge).', 'You cannot combine this offer with any other Teerdha offer.'),
(3, '', 'This offer is valid on payment made through Kotak Bank Credit card only.', '', 'Teerdha & Kotak Bank reserves the right to add, alter, modify, change, or vary all of these terms and conditions at any time, without prior notice or liability, and without assigning any reason whatsoever.'),
(4, '', 'The offer is valid for bookings made on Teerdha’s website, Mobile site, Android & iOS App.', '', 'Teerdha & Kotak Bank may also choose to extend or withdraw this offer entirely, replace it entirely with another offer that may or may not be similar to this one.'),
(5, '', 'The instant discount offer is valid for only 1 booking per card per category per calendar month.', '', 'The customer must contact Kotak Bank with any card-related claims. Teerdha won\'t take such accusations into consideration.'),
(6, '', '', '', 'The only person qualified to comprehend these phrases is Teerdha.'),
(7, '', '', '', 'Teerdha will not be responsible for any damage or losses brought on by a force majeure incident.'),
(8, '', '', '', 'Teerdha shall not be liable for any indirect, punitive, special, incidental, or consequential damages arising out of or in connection with the offer.'),
(9, '', '', '', 'Teerdha reserves the right to deny the offer or cancel the booking in the event that the customer or travel agent misuses or abuses the offer.'),
(10, '', '', '', 'Teerdha\'s entire liability under this offer shall not exceed the amount of promotional discount under this offer.'),
(11, '', '', '', 'The Delhi courts\' exclusive jurisdiction will apply to any disputes, if any, arising out of or related to this offer. The Teerdha website\'s User Agreement and Privacy Policy will be in effect.'),
(12, '', '', '', 'Teerdha maintains the right to reject the offer against such bookings or to cancel such bookings.'),
(13, '', '', '', 'Customers who work as travel brokers are prohibited from making reservations for their clients.'),
(14, '', '', '', 'Teerdha will not reimburse the booking amount in these circumstances.The offer is only good for BINs that Kotak Bank has shared that are eligible.'),
(15, '', '', '', 'The cardholder must contact Kotak Bank if the card\'s BIN series does not match the one Teerdha received from Kotak Bank.'),
(16, '', '', '', 'Teerdha has the right to refuse the customer\'s offer or withhold it. Any customer who qualifies for the offer will be considered to have read, comprehended, and agreed to these terms and conditions as well as the usual terms and conditions of the Bank.');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_quary`
--

CREATE TABLE `hotel_quary` (
  `id` bigint(20) NOT NULL,
  `ques` longtext NOT NULL,
  `ans` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotel_quary`
--

INSERT INTO `hotel_quary` (`id`, `ques`, `ans`) VALUES
(1, 'How can I find the best hotel deals?', 'Figuring out the best time to book a hotel isn\'t an exact science there\'s plenty of variation throughout the industry. But if we\'re looking at statistics, the lowest prices for hotel rooms are typically found just 15 days before you stay. Yes, last-minute bookings are (usually) better.'),
(2, 'How do I find the cheapest hotels in Teerdha.com?', 'You can sort hotels by price to see them from cheapest to the most expensive. To find the cheapest hotels, you also need to consider factors like when you\'re booking and want to travel.'),
(3, 'What is a flexible ticket?', 'Flexible ticket allows you to change your hotels by only paying the fare and tax difference. It can only be used for one confirmed change. You can add the flexible ticket when booking your hotel.'),
(4, 'Does Teerdha.com charge credit card fees?', 'No, we don\'t charge any credit card fees. You can always see exactly what you’re paying for in the price breakdown when reviewing your booking.'),
(5, 'Process of booking a hotel:', 'The online booking system follows a few simple steps: The customer visits the business\'s website or mobile application, selects the type of service they want to book, confirms their selected date and time are available, enters their contact information such as name, email address and phone number.'),
(6, 'How can I stay updated on hotel deals and low fares in our website?', 'Some travel websites allow users to set up price alerts for specific destinations, dates and types of accommodations. Enable these alerts on Teerdha to receive notifications when there are price drops or special offers that match your criteria.'),
(7, 'How to avoid extra fees on hotel bookings in our website?', 'Compare prices on Teerdha with other travel websites and the hotel\'s official site. Sometimes, hotels offer lower rates when booked directly and you can avoid extra fees that third-party platforms may charge.'),
(8, 'Multiple Payment Options for hotel Booking:', 'You have the option of paying with multiple modes on your hotel booking. The payment gateway offers you the option to pay with credit and debit cards, Netbanking, E-Wallet, UPI whether you make full payment or an EMI basis. This flexibility makes it easy to close your hotel booking and not make you feel restricted, such as when the mode of payment you have choosen is not listed in the options.');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_sbioffer`
--

CREATE TABLE `hotel_sbioffer` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `couponcode` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotel_sbioffer`
--

INSERT INTO `hotel_sbioffer` (`id`, `image`, `title`, `couponcode`) VALUES
(1, 'media/image_4_Ptl50Gx.png', 'Grab Flat 12% OFF* on Hotels & Homestays in India.', 'CODE : TRDSBI');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_sbioffer1`
--

CREATE TABLE `hotel_sbioffer1` (
  `id` bigint(20) NOT NULL,
  `applicable` varchar(100) NOT NULL,
  `offer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotel_sbioffer1`
--

INSERT INTO `hotel_sbioffer1` (`id`, `applicable`, `offer`) VALUES
(1, 'Offer Valid on SBI Credit card.', 'Flat 10% Instant Discount* (Upto ₹3000).');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_sbipolicy`
--

CREATE TABLE `hotel_sbipolicy` (
  `id` bigint(20) NOT NULL,
  `cnt` longtext NOT NULL,
  `cnt1` longtext NOT NULL,
  `cnt2` longtext NOT NULL,
  `cnt3` longtext NOT NULL,
  `cnt4` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotel_sbipolicy`
--

INSERT INTO `hotel_sbipolicy` (`id`, `cnt`, `cnt1`, `cnt2`, `cnt3`, `cnt4`) VALUES
(1, 'The customer will receive discounts as per the details mentioned in the table above\r\nFor hotels, discount is to be calculated on basic property price (pre-tax price).\r\n', 'To avail the offer, customer must enter E-Coupon as per the aforementioned table in the E-Coupon field.', 'Offer is not applicable on payments made through SBI Debit card, 3rd party wallets, COD, Pay Pal, Gift card and net banking payments.', 'In case of partial/full cancellation the offer stands void and customer will not be eligible for the discount.', 'This offer is NOT applicable on SBI corporate cards and Paytm SBI Credit cards\r\nAdd-on cards will be treated as separate cards.\r\n'),
(2, 'Domestic hotels offer is not applicable if the property is booked using the pay-at-hotel or Book Now Pay Later option.', 'This offer is valid on payment made through SBI Credit cards only.', 'Offer is also valid on SBI Credit card EMI bookings.', 'If there is any rescheduling or cancellation, customer has to bear the fare difference (regardless of whether the component is in the base fare or in tax + surcharge) and other rescheduling/cancellation fees.', 'This offer cannot be clubbed with any other offer of Theerdha.'),
(3, 'The offer is not applicable on payments made directly at the hotel or through PayPal, MMT Gift Card, My Wallet, Cash on Delivery (COD) and net banking.', 'The offer is valid for bookings made on Teerdha\'s website, Mobile site, Android & iOS App.', '', '', 'Teerdha reserves the right, at any time, without prior notice and liability and without assigning any reason whatsoever, to add/alter/modify/change or vary all of these terms and conditions or to replace, wholly or in part, this offer by another offer, whether similar to this offer or not, or to extend or withdraw it altogether.'),
(4, '', 'The offer is valid once per card per category per month.', '', '', 'For any card related claims, the customer will need to approach the SBI card. Teerdha shall not entertain any such claims.'),
(5, '', '', '', '', 'Teerdha is the sole authority for the interpretation of these terms.'),
(6, '', '', '', '', 'Teerdha shall not be liable for any loss or damage arising due to force majeure event.\r\nIn the event of any misuse or abuse of the offer by the customer or travel agent, Teerdha   reserves the right to deny the offer or cancel the booking.\r\n'),
(7, '', '', '', '', 'In no event will the entire liability of Teerdha under this offer exceed the amount of promotional discount under this offer.'),
(8, '', '', '', '', 'Teerdha shall not be liable for any indirect, punitive, special, incidental or consequential damages arising out of or in connection with the offer.');

-- --------------------------------------------------------

--
-- Table structure for table `sbiimage`
--

CREATE TABLE `sbiimage` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sbiimage`
--

INSERT INTO `sbiimage` (`id`, `image`) VALUES
(1, 'images/sbi_teerdha-transformed.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `booking_buses_2ndpages`
--
ALTER TABLE `booking_buses_2ndpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_buses_offerscrudoperations`
--
ALTER TABLE `booking_buses_offerscrudoperations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_bus_busday_image6`
--
ALTER TABLE `booking_bus_busday_image6`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_bus_busday_terms6`
--
ALTER TABLE `booking_bus_busday_terms6`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_bus_easeday7`
--
ALTER TABLE `booking_bus_easeday7`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_bus_faq`
--
ALTER TABLE `booking_bus_faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_bus_fest10`
--
ALTER TABLE `booking_bus_fest10`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_bus_festival3`
--
ALTER TABLE `booking_bus_festival3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_bus_firstbus_code5`
--
ALTER TABLE `booking_bus_firstbus_code5`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_bus_firstbus_get5`
--
ALTER TABLE `booking_bus_firstbus_get5`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_bus_firstbus_terms5`
--
ALTER TABLE `booking_bus_firstbus_terms5`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_bus_go_benefits2`
--
ALTER TABLE `booking_bus_go_benefits2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_bus_go_cancel`
--
ALTER TABLE `booking_bus_go_cancel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_bus_go_container2`
--
ALTER TABLE `booking_bus_go_container2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_bus_go_image2`
--
ALTER TABLE `booking_bus_go_image2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_bus_go_table2`
--
ALTER TABLE `booking_bus_go_table2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_bus_go_terms2`
--
ALTER TABLE `booking_bus_go_terms2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_bus_holiday12`
--
ALTER TABLE `booking_bus_holiday12`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_bus_icici11`
--
ALTER TABLE `booking_bus_icici11`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_bus_offer9`
--
ALTER TABLE `booking_bus_offer9`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_bus_offercards`
--
ALTER TABLE `booking_bus_offercards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_bus_ride13`
--
ALTER TABLE `booking_bus_ride13`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_bus_searchform`
--
ALTER TABLE `booking_bus_searchform`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_bus_special_avail4`
--
ALTER TABLE `booking_bus_special_avail4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_bus_special_code4`
--
ALTER TABLE `booking_bus_special_code4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_bus_special_terms4`
--
ALTER TABLE `booking_bus_special_terms4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_bus_weekday8`
--
ALTER TABLE `booking_bus_weekday8`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_bus_weekends1`
--
ALTER TABLE `booking_bus_weekends1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_bus_weekends_terms1`
--
ALTER TABLE `booking_bus_weekends_terms1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_bus_whychoose`
--
ALTER TABLE `booking_bus_whychoose`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_cabs_offerscrud_dashboard`
--
ALTER TABLE `booking_cabs_offerscrud_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_cabwhycontents`
--
ALTER TABLE `booking_cabwhycontents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_cab_anytime`
--
ALTER TABLE `booking_cab_anytime`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_cab_easy`
--
ALTER TABLE `booking_cab_easy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_cab_familyfun`
--
ALTER TABLE `booking_cab_familyfun`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_cab_festive`
--
ALTER TABLE `booking_cab_festive`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_cab_offer_card`
--
ALTER TABLE `booking_cab_offer_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_cab_paytm_card`
--
ALTER TABLE `booking_cab_paytm_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_cab_ride`
--
ALTER TABLE `booking_cab_ride`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_card1_offerdetailes`
--
ALTER TABLE `booking_card1_offerdetailes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_card1_offers`
--
ALTER TABLE `booking_card1_offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_card1_terms_conditions`
--
ALTER TABLE `booking_card1_terms_conditions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_contact`
--
ALTER TABLE `booking_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_crudoperations`
--
ALTER TABLE `booking_crudoperations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_dashboard_sidebar`
--
ALTER TABLE `booking_dashboard_sidebar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_flightfaqs`
--
ALTER TABLE `booking_flightfaqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_flights_2ndpages`
--
ALTER TABLE `booking_flights_2ndpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_flights_2npdpages_update`
--
ALTER TABLE `booking_flights_2npdpages_update`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_flights_offercards`
--
ALTER TABLE `booking_flights_offercards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_flights_offerscrudoperations`
--
ALTER TABLE `booking_flights_offerscrudoperations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_flight_offers7`
--
ALTER TABLE `booking_flight_offers7`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_flight_offers8`
--
ALTER TABLE `booking_flight_offers8`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_flight_offer_first`
--
ALTER TABLE `booking_flight_offer_first`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_flight_offer_first1`
--
ALTER TABLE `booking_flight_offer_first1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_hdfc_logo`
--
ALTER TABLE `booking_hdfc_logo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_hdfc_offer`
--
ALTER TABLE `booking_hdfc_offer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_hotels_2ndpages`
--
ALTER TABLE `booking_hotels_2ndpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_hotels_offerscrudoperations`
--
ALTER TABLE `booking_hotels_offerscrudoperations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_hotel_cards`
--
ALTER TABLE `booking_hotel_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_icic_offer`
--
ALTER TABLE `booking_icic_offer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_icic_terms`
--
ALTER TABLE `booking_icic_terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_navbar`
--
ALTER TABLE `booking_navbar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_naviagtion_bar`
--
ALTER TABLE `booking_naviagtion_bar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_sbioffer`
--
ALTER TABLE `booking_sbioffer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_sbiterms`
--
ALTER TABLE `booking_sbiterms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_why_choose`
--
ALTER TABLE `booking_why_choose`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_zero_cancellation_offer`
--
ALTER TABLE `booking_zero_cancellation_offer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_zero_cancellation_terms`
--
ALTER TABLE `booking_zero_cancellation_terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cabbooking`
--
ALTER TABLE `cabbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cabs_secondpage_dashboard`
--
ALTER TABLE `cabs_secondpage_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cab_cards`
--
ALTER TABLE `cab_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cab_faq`
--
ALTER TABLE `cab_faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cab_rental`
--
ALTER TABLE `cab_rental`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `choosing_content`
--
ALTER TABLE `choosing_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `flights_kotak_offer`
--
ALTER TABLE `flights_kotak_offer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flights_kotak_offer1`
--
ALTER TABLE `flights_kotak_offer1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flights_kotak_terms`
--
ALTER TABLE `flights_kotak_terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flights_policy`
--
ALTER TABLE `flights_policy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flights_policy1`
--
ALTER TABLE `flights_policy1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_carousel`
--
ALTER TABLE `home_carousel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_axisoffer`
--
ALTER TABLE `hotel_axisoffer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_axisoffer1`
--
ALTER TABLE `hotel_axisoffer1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_axispolicy`
--
ALTER TABLE `hotel_axispolicy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_boboffer`
--
ALTER TABLE `hotel_boboffer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_boboffer1`
--
ALTER TABLE `hotel_boboffer1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_bobpolicy`
--
ALTER TABLE `hotel_bobpolicy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_faqitem`
--
ALTER TABLE `hotel_faqitem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_federaloffer`
--
ALTER TABLE `hotel_federaloffer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_federaloffer1`
--
ALTER TABLE `hotel_federaloffer1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_federalpolicy`
--
ALTER TABLE `hotel_federalpolicy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_hsbcoffer`
--
ALTER TABLE `hotel_hsbcoffer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_hsbcoffer1`
--
ALTER TABLE `hotel_hsbcoffer1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_hsbcpolicy`
--
ALTER TABLE `hotel_hsbcpolicy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_icicioffer`
--
ALTER TABLE `hotel_icicioffer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_icicioffer1`
--
ALTER TABLE `hotel_icicioffer1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_icicipolicy`
--
ALTER TABLE `hotel_icicipolicy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_kotakoffer`
--
ALTER TABLE `hotel_kotakoffer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_kotakoffer1`
--
ALTER TABLE `hotel_kotakoffer1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_kotakpolicy`
--
ALTER TABLE `hotel_kotakpolicy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_quary`
--
ALTER TABLE `hotel_quary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_sbioffer`
--
ALTER TABLE `hotel_sbioffer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_sbioffer1`
--
ALTER TABLE `hotel_sbioffer1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_sbipolicy`
--
ALTER TABLE `hotel_sbipolicy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sbiimage`
--
ALTER TABLE `sbiimage`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=649;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `booking_buses_2ndpages`
--
ALTER TABLE `booking_buses_2ndpages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `booking_buses_offerscrudoperations`
--
ALTER TABLE `booking_buses_offerscrudoperations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `booking_bus_busday_image6`
--
ALTER TABLE `booking_bus_busday_image6`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking_bus_busday_terms6`
--
ALTER TABLE `booking_bus_busday_terms6`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `booking_bus_easeday7`
--
ALTER TABLE `booking_bus_easeday7`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `booking_bus_faq`
--
ALTER TABLE `booking_bus_faq`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `booking_bus_fest10`
--
ALTER TABLE `booking_bus_fest10`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `booking_bus_festival3`
--
ALTER TABLE `booking_bus_festival3`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `booking_bus_firstbus_code5`
--
ALTER TABLE `booking_bus_firstbus_code5`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking_bus_firstbus_get5`
--
ALTER TABLE `booking_bus_firstbus_get5`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `booking_bus_firstbus_terms5`
--
ALTER TABLE `booking_bus_firstbus_terms5`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `booking_bus_go_benefits2`
--
ALTER TABLE `booking_bus_go_benefits2`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `booking_bus_go_cancel`
--
ALTER TABLE `booking_bus_go_cancel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `booking_bus_go_container2`
--
ALTER TABLE `booking_bus_go_container2`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `booking_bus_go_image2`
--
ALTER TABLE `booking_bus_go_image2`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking_bus_go_table2`
--
ALTER TABLE `booking_bus_go_table2`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `booking_bus_go_terms2`
--
ALTER TABLE `booking_bus_go_terms2`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `booking_bus_holiday12`
--
ALTER TABLE `booking_bus_holiday12`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `booking_bus_icici11`
--
ALTER TABLE `booking_bus_icici11`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `booking_bus_offer9`
--
ALTER TABLE `booking_bus_offer9`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `booking_bus_offercards`
--
ALTER TABLE `booking_bus_offercards`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `booking_bus_ride13`
--
ALTER TABLE `booking_bus_ride13`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `booking_bus_searchform`
--
ALTER TABLE `booking_bus_searchform`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `booking_bus_special_avail4`
--
ALTER TABLE `booking_bus_special_avail4`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `booking_bus_special_code4`
--
ALTER TABLE `booking_bus_special_code4`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking_bus_special_terms4`
--
ALTER TABLE `booking_bus_special_terms4`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `booking_bus_weekday8`
--
ALTER TABLE `booking_bus_weekday8`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `booking_bus_weekends1`
--
ALTER TABLE `booking_bus_weekends1`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `booking_bus_weekends_terms1`
--
ALTER TABLE `booking_bus_weekends_terms1`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `booking_bus_whychoose`
--
ALTER TABLE `booking_bus_whychoose`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `booking_cabs_offerscrud_dashboard`
--
ALTER TABLE `booking_cabs_offerscrud_dashboard`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `booking_cabwhycontents`
--
ALTER TABLE `booking_cabwhycontents`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `booking_cab_anytime`
--
ALTER TABLE `booking_cab_anytime`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `booking_cab_easy`
--
ALTER TABLE `booking_cab_easy`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `booking_cab_familyfun`
--
ALTER TABLE `booking_cab_familyfun`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `booking_cab_festive`
--
ALTER TABLE `booking_cab_festive`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `booking_cab_offer_card`
--
ALTER TABLE `booking_cab_offer_card`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `booking_cab_paytm_card`
--
ALTER TABLE `booking_cab_paytm_card`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `booking_cab_ride`
--
ALTER TABLE `booking_cab_ride`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `booking_card1_offerdetailes`
--
ALTER TABLE `booking_card1_offerdetailes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `booking_card1_offers`
--
ALTER TABLE `booking_card1_offers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking_card1_terms_conditions`
--
ALTER TABLE `booking_card1_terms_conditions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `booking_contact`
--
ALTER TABLE `booking_contact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `booking_crudoperations`
--
ALTER TABLE `booking_crudoperations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `booking_dashboard_sidebar`
--
ALTER TABLE `booking_dashboard_sidebar`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `booking_flightfaqs`
--
ALTER TABLE `booking_flightfaqs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `booking_flights_2ndpages`
--
ALTER TABLE `booking_flights_2ndpages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `booking_flights_2npdpages_update`
--
ALTER TABLE `booking_flights_2npdpages_update`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `booking_flights_offercards`
--
ALTER TABLE `booking_flights_offercards`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `booking_flights_offerscrudoperations`
--
ALTER TABLE `booking_flights_offerscrudoperations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `booking_flight_offers7`
--
ALTER TABLE `booking_flight_offers7`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `booking_flight_offers8`
--
ALTER TABLE `booking_flight_offers8`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `booking_flight_offer_first`
--
ALTER TABLE `booking_flight_offer_first`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking_flight_offer_first1`
--
ALTER TABLE `booking_flight_offer_first1`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `booking_hdfc_logo`
--
ALTER TABLE `booking_hdfc_logo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking_hdfc_offer`
--
ALTER TABLE `booking_hdfc_offer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `booking_hotels_2ndpages`
--
ALTER TABLE `booking_hotels_2ndpages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `booking_hotels_offerscrudoperations`
--
ALTER TABLE `booking_hotels_offerscrudoperations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `booking_hotel_cards`
--
ALTER TABLE `booking_hotel_cards`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `booking_icic_offer`
--
ALTER TABLE `booking_icic_offer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `booking_icic_terms`
--
ALTER TABLE `booking_icic_terms`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `booking_navbar`
--
ALTER TABLE `booking_navbar`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `booking_naviagtion_bar`
--
ALTER TABLE `booking_naviagtion_bar`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `booking_sbioffer`
--
ALTER TABLE `booking_sbioffer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `booking_sbiterms`
--
ALTER TABLE `booking_sbiterms`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `booking_why_choose`
--
ALTER TABLE `booking_why_choose`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `booking_zero_cancellation_offer`
--
ALTER TABLE `booking_zero_cancellation_offer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking_zero_cancellation_terms`
--
ALTER TABLE `booking_zero_cancellation_terms`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `cabbooking`
--
ALTER TABLE `cabbooking`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cabs_secondpage_dashboard`
--
ALTER TABLE `cabs_secondpage_dashboard`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `cab_cards`
--
ALTER TABLE `cab_cards`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cab_faq`
--
ALTER TABLE `cab_faq`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `cab_rental`
--
ALTER TABLE `cab_rental`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `choosing_content`
--
ALTER TABLE `choosing_content`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `flights_kotak_offer`
--
ALTER TABLE `flights_kotak_offer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `flights_kotak_offer1`
--
ALTER TABLE `flights_kotak_offer1`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `flights_kotak_terms`
--
ALTER TABLE `flights_kotak_terms`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `flights_policy`
--
ALTER TABLE `flights_policy`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `flights_policy1`
--
ALTER TABLE `flights_policy1`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `home_carousel`
--
ALTER TABLE `home_carousel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `hotel_axisoffer`
--
ALTER TABLE `hotel_axisoffer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hotel_axisoffer1`
--
ALTER TABLE `hotel_axisoffer1`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hotel_axispolicy`
--
ALTER TABLE `hotel_axispolicy`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `hotel_boboffer`
--
ALTER TABLE `hotel_boboffer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hotel_boboffer1`
--
ALTER TABLE `hotel_boboffer1`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hotel_bobpolicy`
--
ALTER TABLE `hotel_bobpolicy`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `hotel_faqitem`
--
ALTER TABLE `hotel_faqitem`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `hotel_federaloffer`
--
ALTER TABLE `hotel_federaloffer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hotel_federaloffer1`
--
ALTER TABLE `hotel_federaloffer1`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hotel_federalpolicy`
--
ALTER TABLE `hotel_federalpolicy`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `hotel_hsbcoffer`
--
ALTER TABLE `hotel_hsbcoffer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hotel_hsbcoffer1`
--
ALTER TABLE `hotel_hsbcoffer1`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hotel_hsbcpolicy`
--
ALTER TABLE `hotel_hsbcpolicy`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `hotel_icicioffer`
--
ALTER TABLE `hotel_icicioffer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hotel_icicioffer1`
--
ALTER TABLE `hotel_icicioffer1`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hotel_icicipolicy`
--
ALTER TABLE `hotel_icicipolicy`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `hotel_kotakoffer`
--
ALTER TABLE `hotel_kotakoffer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hotel_kotakoffer1`
--
ALTER TABLE `hotel_kotakoffer1`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hotel_kotakpolicy`
--
ALTER TABLE `hotel_kotakpolicy`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `hotel_quary`
--
ALTER TABLE `hotel_quary`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `hotel_sbioffer`
--
ALTER TABLE `hotel_sbioffer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hotel_sbioffer1`
--
ALTER TABLE `hotel_sbioffer1`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hotel_sbipolicy`
--
ALTER TABLE `hotel_sbipolicy`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sbiimage`
--
ALTER TABLE `sbiimage`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
