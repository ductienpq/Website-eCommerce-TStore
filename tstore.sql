--
-- Database: `tstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `ecom_assets`
--

CREATE TABLE `ecom_assets` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) UNSIGNED NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ecom_assets`
--

INSERT INTO `ecom_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 169, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 20, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 21, 22, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 23, 24, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 25, 26, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 27, 28, 1, 'com_login', 'com_login', '{}'),
(13, 1, 29, 30, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 31, 32, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 33, 34, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 35, 38, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 39, 40, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 41, 124, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 125, 128, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 129, 130, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 131, 132, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 133, 134, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 135, 136, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 137, 140, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(26, 1, 141, 142, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 19, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 126, 127, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 138, 139, 1, 'com_users.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 143, 144, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 145, 146, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(35, 1, 147, 148, 1, 'com_tags', 'com_tags', '{"core.admin":[],"core.manage":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(36, 1, 149, 150, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 151, 152, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 153, 154, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 42, 43, 2, 'com_modules.module.1', 'Main Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(40, 18, 44, 45, 2, 'com_modules.module.2', 'Login', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(41, 18, 46, 47, 2, 'com_modules.module.3', 'Popular Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(42, 18, 48, 49, 2, 'com_modules.module.4', 'Recently Added Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(43, 18, 50, 51, 2, 'com_modules.module.8', 'Toolbar', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(44, 18, 52, 53, 2, 'com_modules.module.9', 'Quick Icons', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(45, 18, 54, 55, 2, 'com_modules.module.10', 'Logged-in Users', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(46, 18, 56, 57, 2, 'com_modules.module.12', 'Admin Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(47, 18, 58, 59, 2, 'com_modules.module.13', 'Admin Submenu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(48, 18, 60, 61, 2, 'com_modules.module.14', 'User Status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(49, 18, 62, 63, 2, 'com_modules.module.15', 'Title', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(50, 18, 64, 65, 2, 'com_modules.module.16', 'Đăng nhập', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(51, 18, 66, 67, 2, 'com_modules.module.17', 'Breadcrumbs', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(52, 18, 68, 69, 2, 'com_modules.module.79', 'Multilanguage status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(53, 18, 70, 71, 2, 'com_modules.module.86', 'Joomla Version', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(54, 16, 36, 37, 2, 'com_menus.menu.1', 'Main Menu', '{}'),
(55, 1, 155, 156, 1, 'com_tcpdf', 'tcpdf', '{}'),
(56, 1, 157, 158, 1, 'com_virtuemart', 'VIRTUEMART', '{}'),
(57, 1, 159, 160, 1, 'com_virtuemart_allinone', 'VirtueMart_allinone', '{}'),
(58, 18, 72, 73, 2, 'com_modules.module.87', 'VM - Administrator Module', '{}'),
(59, 18, 74, 75, 2, 'com_modules.module.88', 'VM - Currencies Selector', '{}'),
(60, 18, 76, 77, 2, 'com_modules.module.89', 'VM - Featured products', '{}'),
(61, 18, 78, 79, 2, 'com_modules.module.90', 'VM - Search in Shop', '{}'),
(62, 18, 80, 81, 2, 'com_modules.module.91', 'VM - Manufacturer', '{}'),
(63, 18, 82, 83, 2, 'com_modules.module.92', 'VM - Shopping cart', '{}'),
(64, 18, 84, 85, 2, 'com_modules.module.93', 'VM - Category', '{}'),
(65, 18, 86, 87, 2, 'com_modules.module.94', 'T-Store: Nhất dáng, nhì da,... thứ ba quần áo :)', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(66, 18, 88, 89, 2, 'com_modules.module.95', 'Slide nền', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(67, 18, 90, 91, 2, 'com_modules.module.96', 'Poster', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(68, 1, 161, 162, 1, '#__languages.2', '#__languages.2', '{}'),
(69, 18, 92, 93, 2, 'com_modules.module.97', 'Giới thiệu BST Xuân Hạ 2017 - NTK Đức Tiến', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(70, 18, 94, 95, 2, 'com_modules.module.98', 'Kết nối với T-Store :D', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(71, 18, 96, 97, 2, 'com_modules.module.99', 'Đang bán chạy !', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(72, 18, 98, 99, 2, 'com_modules.module.100', 'T-Store', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(73, 18, 100, 101, 2, 'com_modules.module.101', 'Về T-Store', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(74, 18, 102, 103, 2, 'com_modules.module.102', '8 xu hướng thời trang & phụ kiện Xuân Hạ 2017', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(75, 18, 104, 105, 2, 'com_modules.module.103', 'Mod hỗ trợ trực tuyến', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(76, 18, 106, 107, 2, 'com_modules.module.104', 'Chat với T-Store', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(77, 18, 108, 109, 2, 'com_modules.module.105', 'Tư vấn phong cách phái mạnh', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(78, 18, 110, 111, 2, 'com_modules.module.106', 'Fanpage T-Store', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(79, 18, 112, 113, 2, 'com_modules.module.107', 'Vị trí cửa hàng T-Store', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(80, 18, 114, 115, 2, 'com_modules.module.108', 'Số lượt truy cập', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(81, 18, 116, 117, 2, 'com_modules.module.109', 'Chat với T-Store', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(82, 1, 163, 164, 1, 'com_mp_jigsaw', 'com_mp_jigsaw', '{}'),
(83, 18, 118, 119, 2, 'com_modules.module.110', 'MyPuzzle Jigsaw Puzzle', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(84, 1, 165, 166, 1, 'com_rsform', 'RSForm!', '{}'),
(85, 1, 167, 168, 1, 'com_fsf', 'COM_FSF', '{}'),
(86, 18, 120, 121, 2, 'com_modules.module.111', 'Freestyle FAQs: FAQ/KB category/product listing', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(87, 18, 122, 123, 2, 'com_modules.module.112', 'Freestyle FAQs: FAQs', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}');

-- --------------------------------------------------------

--
-- Table structure for table `ecom_associations`
--

CREATE TABLE `ecom_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ecom_banners`
--

CREATE TABLE `ecom_banners` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ecom_banner_clients`
--

CREATE TABLE `ecom_banner_clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ecom_banner_tracks`
--

CREATE TABLE `ecom_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) UNSIGNED NOT NULL,
  `banner_id` int(10) UNSIGNED NOT NULL,
  `count` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ecom_categories`
--

CREATE TABLE `ecom_categories` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ecom_categories`
--

INSERT INTO `ecom_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 11, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 114, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 114, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 114, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 114, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 114, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 114, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ecom_contact_details`
--

CREATE TABLE `ecom_contact_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` mediumtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if contact is featured.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ecom_content`
--

CREATE TABLE `ecom_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ecom_contentitem_tag_map`
--

CREATE TABLE `ecom_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Table structure for table `ecom_content_frontpage`
--

CREATE TABLE `ecom_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ecom_content_rating`
--

CREATE TABLE `ecom_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rating_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ecom_content_types`
--

CREATE TABLE `ecom_content_types` (
  `type_id` int(10) UNSIGNED NOT NULL,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ecom_content_types`
--

INSERT INTO `ecom_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special":{"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute', '{"formFile":"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(2, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute', '{"formFile":"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{"formFile":"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(4, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{}}', 'UsersHelperRoute::getUserRoute', ''),
(5, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(6, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(8, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute', '{"formFile":"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(9, 'Banner', 'com_banners.banner', '{"special":{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(10, 'Banners Category', 'com_banners.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(11, 'Banner Client', 'com_banners.client', '{"special":{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}'),
(12, 'User Notes', 'com_users.note', '{"special":{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(13, 'User Notes Category', 'com_users.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}');

-- --------------------------------------------------------

--
-- Table structure for table `ecom_core_log_searches`
--

CREATE TABLE `ecom_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ecom_extensions`
--

CREATE TABLE `ecom_extensions` (
  `extension_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ecom_extensions`
--

INSERT INTO `ecom_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":"","filename":"mailto"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":"","filename":"wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":"","filename":"banners"}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":"","save_history":"1","history_limit":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '{"show_contact_category":"hide","save_history":"1","history_limit":10,"show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"vi-VN","site":"vi-VN"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":"","filename":"media"}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"newsfeed_layout":"_:default","save_history":"1","history_limit":5,"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_character_count":"0","feed_display_order":"des","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_articles":"0","show_link":"1","show_pagination":"1","show_pagination_results":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":"","filename":"search"}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"0","upload_limit":"10","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","show_category":"1","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"1","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"1","show_item_navigation":"1","show_vote":"0","show_readmore":"1","show_readmore_title":"1","readmore_limit":"100","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"1","show_noauth":"0","show_publishing_options":"1","show_article_options":"1","save_history":"1","history_limit":10,"show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"9":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":"","filename":"users"}', '{"allowUserRegistration":"0","new_usertype":"2","guest_usergroup":"9","sendpassword":"1","useractivation":"2","mail_to_admin":"1","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","minimum_length":"4","minimum_integers":"0","minimum_symbols":"0","minimum_uppercase":"0","save_history":"1","history_limit":5,"mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.2","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"tag_layout":"_:default","save_history":"1","history_limit":5,"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","show_tag_num_items":"0","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":"","filename":"contenthistory"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 1, '{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":"","filename":"ajax"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'LIB_PHPUTF8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"LIB_PHPUTF8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":"","filename":"phputf8"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'LIB_JOOMLA', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"LIB_JOOMLA","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"https:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"mediaversion":"15d2aa41431c810a137d6103fe7b2b70"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 'LIB_IDNA', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"LIB_IDNA","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":"","filename":"idna_convert"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{"name":"FOF","type":"library","creationDate":"2015-04-22 13:15:32","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2015 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"2.4.3","description":"LIB_FOF_XML_DESCRIPTION","group":"","filename":"fof"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 'LIB_PHPASS', 'library', 'phpass', '', 0, 1, 1, 1, '{"name":"LIB_PHPASS","type":"library","creationDate":"2004-2006","author":"Solar Designer","copyright":"","authorEmail":"solar@openwall.com","authorUrl":"http:\\/\\/www.openwall.com\\/phpass\\/","version":"0.3","description":"LIB_PHPASS_XML_DESCRIPTION","group":"","filename":"phpass"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":"","filename":"mod_articles_archive"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_articles_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":"","filename":"mod_banners"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":"","filename":"mod_breadcrumbs"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":"","filename":"mod_footer"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_news"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":"","filename":"mod_random_image"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":"","filename":"mod_related_items"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":"","filename":"mod_search"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":"","filename":"mod_syndicate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":"","filename":"mod_users_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":"","filename":"mod_whosonline"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":"","filename":"mod_wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":"","filename":"mod_articles_category"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":"","filename":"mod_articles_categories"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":"","filename":"mod_languages"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":"","filename":"mod_finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":"","filename":"mod_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":"","filename":"mod_logged"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":"","filename":"mod_quickicon"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":"","filename":"mod_status"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":"","filename":"mod_submenu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":"","filename":"mod_title"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":"","filename":"mod_toolbar"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":"","filename":"mod_multilangstatus"}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":"","filename":"mod_version"}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats_admin"}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_tags_popular"}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":"","filename":"mod_tags_similar"}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":"","filename":"gmail"}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":"","filename":"ldap"}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{"name":"plg_content_contact","type":"plugin","creationDate":"January 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"PLG_CONTENT_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":"","filename":"emailcloak"}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":"","filename":"loadmodule"}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":"","filename":"pagenavigation"}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":"","filename":"vote"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"Copyright (C) 2014 by Marijn Haverbeke <marijnh@gmail.com> and others","authorEmail":"marijnh@gmail.com","authorUrl":"http:\\/\\/codemirror.net\\/","version":"5.18.0","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":"","filename":"codemirror"}', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"September 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":"","filename":"none"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2016","author":"Ephox Corporation","copyright":"Ephox Corporation","authorEmail":"N\\/A","authorUrl":"http:\\/\\/www.tinymce.com","version":"4.4.3","description":"PLG_TINY_XML_DESCRIPTION","group":"","filename":"tinymce"}', '{"mode":"1","skin":"0","mobile":"0","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","html_height":"550","html_width":"750","resizing":"1","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","colors":"1","table":"1","smilies":"1","hr":"1","link":"1","media":"1","print":"1","directionality":"1","fullscreen":"1","alignment":"1","visualchars":"1","visualblocks":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":"","filename":"article"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":"","filename":"image"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":"","filename":"readmore"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `ecom_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":"","filename":"languagefilter"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":"","filename":"p3p"}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":"","filename":"cache"}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":"","filename":"debug"}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":"","filename":"log"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION","group":"","filename":"redirect"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":"","filename":"remember"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":"","filename":"sef"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":"","filename":"logout"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":"","filename":"contactcreator"}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"autoregister":"1","mail_to_user":"1","forceLogout":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":"","filename":"profile"}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":"","filename":"languagecode"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":"","filename":"joomlaupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":"","filename":"extensionupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":"","filename":"recaptcha"}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":"","filename":"highlight"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(447, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_totp","type":"plugin","creationDate":"August 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION","group":"","filename":"totp"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_cookie","type":"plugin","creationDate":"July 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_COOKIE_XML_DESCRIPTION","group":"","filename":"cookie"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_yubikey","type":"plugin","creationDate":"September 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":"","filename":"yubikey"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{"name":"plg_search_tags","type":"plugin","creationDate":"March 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"search_limit":"50","show_tagged_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(452, 'plg_system_updatenotification', 'plugin', 'updatenotification', 'system', 0, 1, 1, 0, '{"name":"plg_system_updatenotification","type":"plugin","creationDate":"May 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION","group":"","filename":"updatenotification"}', '{"lastrun":1487558864}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(453, 'plg_editors-xtd_module', 'plugin', 'module', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_module","type":"plugin","creationDate":"October 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_MODULE_XML_DESCRIPTION","group":"","filename":"module"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(454, 'plg_system_stats', 'plugin', 'stats', 'system', 0, 1, 1, 0, '{"name":"plg_system_stats","type":"plugin","creationDate":"November 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_SYSTEM_STATS_XML_DESCRIPTION","group":"","filename":"stats"}', '{"mode":1,"lastrun":1487558868,"unique_id":"9b108698702fd3a527f40f967f06ca8c5cfc38be","interval":12}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(455, 'plg_installer_packageinstaller', 'plugin', 'packageinstaller', 'installer', 0, 1, 1, 1, '{"name":"plg_installer_packageinstaller","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"packageinstaller"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(456, 'PLG_INSTALLER_FOLDERINSTALLER', 'plugin', 'folderinstaller', 'installer', 0, 1, 1, 1, '{"name":"PLG_INSTALLER_FOLDERINSTALLER","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"folderinstaller"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(457, 'PLG_INSTALLER_URLINSTALLER', 'plugin', 'urlinstaller', 'installer', 0, 1, 1, 1, '{"name":"PLG_INSTALLER_URLINSTALLER","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"urlinstaller"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(503, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.1.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"December 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.5","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"December 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.5","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"December 2016","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.5","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(802, 'English (en-GB) Language Pack', 'package', 'pkg_en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB) Language Pack","type":"package","creationDate":"December 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.5.1","description":"en-GB language pack","group":"","filename":"pkg_en-GB"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 'Vietnamese-VN', 'language', 'vi-VN', '', 0, 1, 0, 0, '{"name":"Vietnamese-VN","type":"language","creationDate":"December 2013","author":"Vietnamese Translation Team Translation Team","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"info@joomlaviet.info","authorUrl":"http:\\/\\/joomlaviet.info","version":"3.2.1.1","description":"Vietnamese language pack for Joomla! 3.2","group":"","filename":"install"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 'Vietnamese-VN', 'language', 'vi-VN', '', 1, 1, 0, 0, '{"name":"Vietnamese-VN","type":"language","creationDate":"December 2013","author":"Vietnamese Translation Team","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"info@joomlaviet.info","authorUrl":"http:\\/\\/joomlaviet.info","version":"3.2.1.1","description":"Vietnamese administration language for Joomla! 3.2","group":"","filename":"install"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 'Vietnamese Language Pack', 'package', 'pkg_vi-VN', '', 0, 1, 1, 0, '{"name":"Vietnamese Language Pack","type":"package","creationDate":"December 2013","author":"Vietnamese Translation Team","copyright":"Copyright (C) 2013 joomlaviet.info and Open Source Matters. All rights reserved.","authorEmail":"info@joomlaviet.info","authorUrl":"http:\\/\\/joomlaviet.info","version":"3.2.1.1","description":"3.2.1.1 Joomla Vietnamese Language Package","group":"","filename":"pkg_vi-VN"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10003, 'tcpdf', 'component', 'com_tcpdf', '', 1, 1, 0, 0, '{"name":"tcpdf","type":"component","creationDate":"February 2015","author":"Nicola Asuni, The VirtueMart Development Team","copyright":"Copyright (c) 2001-2013 Nicola Asuni - Tecnick.com LTD - Tutti i diritti riservati - All Rights Reserved. 2015 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"1.0.2","description":"TCPDF 6.2.12 by Nicola Asuni. Joomla Installer by the VirtueMart Team","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, 'VIRTUEMART', 'component', 'com_virtuemart', '', 1, 1, 0, 0, '{"name":"VIRTUEMART","type":"component","creationDate":"September 20 2016","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004-2015 Virtuemart Team. All rights reserved.","authorEmail":"max|at|virtuemart.net","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.18","description":"","group":"","filename":"virtuemart"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10005, 'VirtueMart_allinone', 'component', 'com_virtuemart_allinone', '', 1, 1, 0, 0, '{"name":"VirtueMart_allinone","type":"component","creationDate":"September 20 2016","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004-2015 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.18","description":"","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 'VM Payment - Standard', 'plugin', 'standard', 'vmpayment', 0, 1, 1, 0, '{"name":"Standard","type":"plugin","creationDate":"September 20 2016","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004 - 2016 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.18","description":"Standard payment plugin","group":"","filename":"standard"}', '', '', '', 0, '0000-00-00 00:00:00', 20, 0),
(10009, 'VM Payment - Sofort Banking/Überweisung', 'plugin', 'sofort', 'vmpayment', 0, 0, 1, 0, '{"name":"Sofort","type":"plugin","creationDate":"September 20 2016","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004 - 2016 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.18","description":"<a href=\\"http:\\/www.sofort.com\\" target=\\"_blank\\">Sofort<\\/a> is a popular\\n\\tpayment provider and available in many countries. \\n    ","group":"","filename":"sofort"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(10010, 'VM Payment - PayPal', 'plugin', 'paypal', 'vmpayment', 0, 0, 1, 0, '{"name":"PayPal","type":"plugin","creationDate":"September 20 2016","author":"VirtueMart Development Team","copyright":"Copyright (C) 2004 - 2016 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.18","description":"PayPal","group":"","filename":"paypal"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10013, 'VM Payment - 2Checkout', 'plugin', 'tco', 'vmpayment', 0, 0, 1, 0, '{"name":"2Checkout","type":"plugin","creationDate":"October 2015","author":"Craig Christenson","copyright":"Copyright (C) 2004-2015 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.2checkout.com","version":"0.1","description":"<a href=\\"https:\\/\\/www.2checkout.com\\/referral?r=virtuemart\\" target=\\"_blank\\">2Checkout<\\/a> is a popular payment provider and available in many countries. \\n    ","group":"","filename":"tco"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(10014, 'VM Payment - Pay with Amazon', 'plugin', 'amazon', 'vmpayment', 0, 0, 1, 0, '{"name":"AMAZON","type":"plugin","creationDate":"September 20 2016","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004 - 2016 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.18","description":"AMAZON payment plugin","group":"","filename":"amazon"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(10015, 'System - Pay with Amazon', 'plugin', 'amazon', 'system', 0, 0, 1, 0, '{"name":"AMAZON","type":"plugin","creationDate":"September 20 2016","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004 - 2016 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.18","description":"AMAZON payment SYSTEM plugin","group":"","filename":"amazon"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(10016, 'VM Payment - Realex HPP & API', 'plugin', 'realex_hpp_api', 'vmpayment', 0, 0, 1, 0, '{"name":"realex_hpp_api","type":"plugin","creationDate":"September 20 2016","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004 - 2016 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.18","description":"Realex HPP and API","group":"","filename":"realex_hpp_api"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(10017, 'VM UserField - Realex HPP & API', 'plugin', 'realex_hpp_api', 'vmuserfield', 0, 0, 1, 0, '{"name":"Realex_hpp_api","type":"plugin","creationDate":"September 20 2016","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004 - 2016 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.18","description":"Card storage plugin for Realex","group":"","filename":"realex_hpp_api"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(10018, 'VM Payment - Skrill', 'plugin', 'skrill', 'vmpayment', 0, 0, 1, 0, '{"name":"Skrill","type":"plugin","creationDate":"September 20 2016","author":"Skrill Holdings Limited","copyright":"Copyright (C) 2004 - 2016 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.skrill.com","version":"3.0.18","description":"<a href=\\"http:\\/\\/www.skrill.com\\" target=\\"_blank\\">skrill<\\/a> is a popular\\n\\tpayment provider authorised by the Financial Services Authority of the United Kingdom (FSA). \\n    ","group":"","filename":"skrill"}', '', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(10019, 'VM Payment - Authorize.net', 'plugin', 'authorizenet', 'vmpayment', 0, 0, 1, 0, '{"name":"Authorize.net AIM","type":"plugin","creationDate":"September 20 2016","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004 - 2016 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.18","description":"Authorize.net AIM","group":"","filename":"authorizenet"}', '', '', '', 0, '0000-00-00 00:00:00', 20, 0),
(10020, 'VM Payment - Sofort iDeal', 'plugin', 'sofort_ideal', 'vmpayment', 0, 0, 1, 0, '{"name":"Sofort Ideal","type":"plugin","creationDate":"September 20 2016","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004 - 2016 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.18","description":"<a href=\\"http:\\/www.sofort.com\\" target=\\"_blank\\">Sofort<\\/a> is a popular\\n\\tpayment provider and available in many countries. \\n    ","group":"","filename":"sofort"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(10022, 'VM Shipment - By weight, ZIP and countries', 'plugin', 'weight_countries', 'vmshipment', 0, 1, 1, 0, '{"name":"By weight, ZIP and countries","type":"plugin","creationDate":"September 20 2016","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004 - 2016 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.18","description":"VMSHIPMENT_WEIGHT_COUNTRIES_PLUGIN_DESC","group":"","filename":"weight_countries"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10023, 'VM Custom - Customer text input', 'plugin', 'textinput', 'vmcustom', 0, 1, 1, 0, '{"name":"VMCustom - textinput","type":"plugin","creationDate":"September 20 2016","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004-2014 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.18","description":"text input plugin for product","group":"","filename":"textinput"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10024, 'VM Custom - Product specification', 'plugin', 'specification', 'vmcustom', 0, 1, 1, 0, '{"name":"plgvm_specification","type":"plugin","creationDate":"September 20 2016","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004-2014 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.18","description":"VMCustom - specification; text input plugin for product","group":"","filename":"specification"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10025, 'VM Calculation - Avalara Tax', 'plugin', 'avalara', 'vmcalculation', 0, 0, 1, 0, '{"name":"VM - Calculation Avalara Tax","type":"plugin","creationDate":"September 20 2016","author":"Max Milbers","copyright":"Copyright (C) 2013 iStraxx UG (haftungsbeschr\\u00e4nkt). All rights reserved","authorEmail":"","authorUrl":"http:\\/\\/virtuemart.net","version":"3.0.18","description":"VM - Calculation Avalara Tax; On demand tax calculation for whole U.S.A.","group":"","filename":"avalara"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10026, 'VirtueMart Product', 'plugin', 'virtuemart', 'search', 0, 0, 1, 0, '{"name":"Search - VirtueMart","type":"plugin","creationDate":"September 20 2016","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004 - 2016 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.18","description":"PLG_SEARCH_VIRTUEMART_XML_DESCRIPTION","group":"","filename":"virtuemart"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10027, 'mod_vmmenu', 'module', 'mod_vmmenu', '', 1, 1, 3, 0, '{"name":"VirtueMart Administrator Menu","type":"module","creationDate":"September 20 2016","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004-2013 Virtuemart Team. All rights reserved.","authorEmail":"max|at|virtuemart.net","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.18","description":"MOD_VMMENU_XML_DESCRIPTION","group":"","filename":"mod_vmmenu"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(10028, 'mod_virtuemart_currencies', 'module', 'mod_virtuemart_currencies', '', 0, 1, 1, 0, '{"name":"mod_virtuemart_currencies","type":"module","creationDate":"September 20 2016","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004 - 2016 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.18","description":"MOD_VIRTUEMART_CURRENCIES_DESC","group":"","filename":"mod_virtuemart_currencies"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(10029, 'mod_virtuemart_product', 'module', 'mod_virtuemart_product', '', 0, 1, 1, 0, '{"name":"mod_virtuemart_product","type":"module","creationDate":"September 20 2016","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004 - 2016 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.18","description":"MOD_VIRTUEMART_PRODUCT_DESC","group":"","filename":"mod_virtuemart_product"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(10030, 'mod_virtuemart_search', 'module', 'mod_virtuemart_search', '', 0, 1, 1, 0, '{"name":"mod_virtuemart_search","type":"module","creationDate":"September 20 2016","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004 - 2016 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.18","description":"MOD_VIRTUEMART_SEARCH_DESC","group":"","filename":"mod_virtuemart_search"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(10031, 'mod_virtuemart_manufacturer', 'module', 'mod_virtuemart_manufacturer', '', 0, 1, 1, 0, '{"name":"mod_virtuemart_manufacturer","type":"module","creationDate":"September 20 2016","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004 - 2016 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.18","description":"MOD_VIRTUEMART_MANUFACTURER_DESC","group":"","filename":"mod_virtuemart_manufacturer"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(10032, 'mod_virtuemart_cart', 'module', 'mod_virtuemart_cart', '', 0, 1, 1, 0, '{"name":"mod_virtuemart_cart","type":"module","creationDate":"September 20 2016","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004 - 2016 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.18","description":"MOD_VIRTUEMART_CART_DESC","group":"","filename":"mod_virtuemart_cart"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10033, 'mod_virtuemart_category', 'module', 'mod_virtuemart_category', '', 0, 1, 1, 0, '{"name":"mod_virtuemart_category","type":"module","creationDate":"September 20 2016","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004 - 2016 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.18","description":"MOD_VIRTUEMART_CATEGORY_DESC","group":"","filename":"mod_virtuemart_category"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(10034, 'com_virtuemart - vi-VN', 'file', 'com_virtuemart-vi-VN', '', 0, 1, 0, 0, '{"name":"com_virtuemart - vi-VN","type":"file","creationDate":"15.11.2016","author":"VirtueMart language team","copyright":"\\u00a9 2008-2016 - compojoom-com. All rights reserved!","authorEmail":"max@virtuemart.net","authorUrl":"https:\\/\\/virtuemart.net","version":"2016-11-15-06-11-39","description":"\\n        This package was auto generated with CTransifex(https:\\/\\/compojoom.com). We''ve grabbed the latest language files for our extension from transifex.com.\\n        Special thanks to our translation team at (https:\\/\\/www.transifex.com\\/projects\\/p\\/virtuemart\\/) for helping with this VirtueMart translation!\\n    ","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10035, 'JE Orbit SlideShow', 'module', 'mod_je_orbit', '', 0, 1, 0, 0, '{"name":"JE Orbit SlideShow","type":"module","creationDate":"February, 2015","author":"jExtensions.com","copyright":"Copyright 2015 - jExtensions.com","authorEmail":"support@jExtensions.com","authorUrl":"http:\\/\\/jExtensions.com","version":"3.3","description":"\\n\\t<h1 class=\\"sub-heading\\">JE Orbit - jQuery SlideShow Module<\\/h1>\\t\\n\\t<div class=\\"description\\">Download more free extensions from <a href=\\"http:\\/\\/jextensions.com\\/\\" target=\\"_blank\\">jExtensions.com<\\/a><br\\/>\\n\\tNeed help? <a href=\\"http:\\/\\/jextensions.com\\/orbit-jquery-slideshow-for-joomla-2.5\\/\\" target=\\"_blank\\">Click here to visit the support page<\\/a>.<br\\/>\\n\\t<span class=\\"credits\\">Credits: <a href=\\"http:\\/\\/www.zurb.com\\/playground\\/jquery_image_slider_plugin\\" target=\\"_blank\\" >Orbit<\\/a><\\/span>\\n\\t<\\/div>\\n\\t\\t\\n\\t","group":"","filename":"mod_je_orbit"}', '{"jQuery":"0","Animation":"fade","AnimationSpeed":"600","Repeat":"true","Timer":"true","TimerSpeed":"3000","pauseOnHover":"true","resumeNotHover":"true","slideNumbers":"true","navigation":"true","bullets":"true","linkTarget":"_self","Caption1":"","Caption2":"","Caption3":"","Caption4":"","Caption5":"","Caption6":"","Caption7":"","Caption8":"","Caption9":"","Caption10":"","Caption11":"","Caption12":"","Caption13":"","Caption14":"","Caption15":"","Caption16":"","Caption17":"","Caption18":"","Caption19":"","Caption20":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10036, 'JE Supersized Fullsceen Gallery', 'module', 'mod_je_fullscreengallery', '', 0, 1, 0, 0, '{"name":"JE Supersized Fullsceen Gallery","type":"module","creationDate":"February, 2015","author":"jExtensions.com","copyright":"Copyright 2015 - jExtensions.com","authorEmail":"support@jExtensions.com","authorUrl":"http:\\/\\/jExtensions.com","version":"3.4","description":"\\n\\t<h1 class=\\"sub-heading\\">JE Supersized Fullsceen Gallery<\\/h1>\\t\\n\\t<div class=\\"description\\">Download more free extensions from <a href=\\"http:\\/\\/jextensions.com\\/\\" target=\\"_blank\\">jExtensions.com<\\/a><br\\/>\\n\\tNeed help? <a href=\\"http:\\/\\/jextensions.com\\/fullscreen-image-gallery-joomla-2.5\\/\\" target=\\"_blank\\">Click here to visit the support page<\\/a>.<br\\/>\\n\\t<span class=\\"credits\\">Credits: <a href=\\"http:\\/\\/buildinternet.com\\/project\\/supersized\\" target=\\"_blank\\" >Supersized<\\/a><\\/span>\\n\\t<\\/div>\\n\\t\\t\\n\\t","group":"","filename":"mod_je_fullscreengallery"}', '{"jQuery":"0","SelectImage":"file","thumbNav":"0","arrowNav":"1","progressBar":"0","ctrlBar":"0","thumbWidth":"200","thumbHeight":"150","thumbQuality":"100","thumbAlign":"true","Text1":"","Text2":"","Text3":"","Text4":"","Text5":"","Text6":"","Text7":"","Text8":"","Text9":"","Text10":"","Text11":"","Text12":"","Text13":"","Text14":"","Text15":"","Text16":"","Text17":"","Text18":"","Text19":"","Text20":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10037, 'HHA_TaoQuangCao2Ben', 'module', 'mod_taoquangcao2ben', '', 0, 1, 0, 0, '{"name":"HHA_TaoQuangCao2Ben","type":"module","creationDate":"25\\/12\\/2012","author":"webquangnam","copyright":"Web and Graphic Design","authorEmail":"","authorUrl":"webquangnam.com","version":"2.5.0","description":"\\n\\t\\n\\t<img src=\\"..\\/modules\\/mod_TaoQuangCao2Ben\\/logo.png\\" \\/>\\n\\t<p style=\\"color:maroon;fload:left\\">\\n\\tmod t\\u1ea1o qu\\u1ea3ng c\\u00e1o hai b\\u00ean cho joomla 2.5 v\\u00e0 3x<br\\/>\\n\\t\\u0110\\u01b0\\u1ee3c ph\\u00e1t tri\\u1ec3n b\\u1edfi: <a href=\\"http:\\/\\/webquangnam.com\\/\\" target=\\"_blank\\" color=\\"red\\">Ho\\u00e0ng Anh IT<\\/a>\\n\\t<\\/p>\\n\\t\\n\\t\\t\\n\\t","group":"","filename":"mod_TaoQuangCao2Ben"}', '{"maincontentw":"1000","topadjust":"10","fspeed":"20","leftboxw":"100","leftadjust":"5","left_position":"\\u0110\\u01b0a h\\u00ecnh \\u1ea3nh , banner ho\\u1eb7c text v\\u00e0o","rightboxw":"100","rightadjust":"5","right_position":"\\u0110\\u01b0a h\\u00ecnh \\u1ea3nh , banner ho\\u1eb7c text v\\u00e0o","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10038, 'JE 3D SliceBox', 'module', 'mod_je_slicebox3d', '', 0, 1, 0, 0, '{"name":"JE 3D SliceBox","type":"module","creationDate":"February, 2015","author":"jExtensions.com","copyright":"Copyright 2015 - jExtensions.com","authorEmail":"support@jExtensions.com","authorUrl":"http:\\/\\/jExtensions.com","version":"3.4","description":"\\n\\t<h1 class=\\"sub-heading\\">JE 3D SliceBox Slideshow<\\/h1>\\t\\n\\t<div class=\\"description\\">Download more free extensions from <a href=\\"http:\\/\\/jextensions.com\\/\\" target=\\"_blank\\">jExtensions.com<\\/a><br\\/>\\n\\tNeed help? <a href=\\"http:\\/\\/jextensions.com\\/joomla-slicebox-3d-slideshow-module\\/\\" target=\\"_blank\\">Click here to visit the support page<\\/a>.<br\\/>\\n\\t<span class=\\"credits\\">Credits: <a href=\\"http:\\/\\/tympanus.net\\/codrops\\/2011\\/09\\/05\\/slicebox-3d-image-slider\\/\\" target=\\"_blank\\" >Slicebox<\\/a><\\/span>\\n\\t<\\/div>\\n\\t\\t\\n\\t","group":"","filename":"mod_je_slicebox3d"}', '{"jQuery":"0","fontStyle":"Open+Sans+Condensed:300","textColor":"#ffffff","bgColor":"#555555","linkColor":"#00baff","linkColorHover":"#ffffff","navDot":"#eeeeee","navDotActive":"#e95846","SlideArrows":"1","SlideDots":"1","SlideShadow":"1","playPause":"0","Orientation":"v","Perspective":"1200","cuboidsCount":"5","cuboidsRandom":"false","maxCuboidsCount":"5","disperseFactor":"0","colorHiddenSides":"#222","sequentialFactor":"150","Speed":"600","Autoplay":"true","Interval":"3000","fallbackFadeSpeed":"300","Caption1":"","Caption2":"","Caption3":"","Caption4":"","Caption5":"","Caption6":"","Caption7":"","Caption8":"","Caption9":"","Caption10":"","Caption11":"","Caption12":"","Caption13":"","Caption14":"","Caption15":"","Caption16":"","Caption17":"","Caption18":"","Caption19":"","Caption20":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10039, 'JE Social Icons', 'module', 'mod_je_social', '', 0, 1, 0, 0, '{"name":"JE Social Icons","type":"module","creationDate":"February, 2015","author":"jExtensions.com","copyright":"Copyright 2015 - jExtensions.com","authorEmail":"support@jExtensions.com","authorUrl":"http:\\/\\/jExtensions.com","version":"3.4","description":"\\n\\t<h1 class=\\"sub-heading\\">JE Social Icons<\\/h1>\\t\\n\\t<div class=\\"description\\">Download more free extensions from <a href=\\"http:\\/\\/jextensions.com\\/\\" target=\\"_blank\\">jExtensions.com<\\/a><br\\/>\\n\\tNeed help? <a href=\\"http:\\/\\/jextensions.com\\/social-icons-module\\" target=\\"_blank\\">Click here to visit the support page<\\/a>.<br\\/>\\n\\t<\\/div>\\n\\t\\t\\n\\t","group":"","filename":"mod_je_social"}', '{"iconStyle":"0","Icon1":"","Icon2":"","Icon3":"","Icon4":"","Icon5":"","Icon6":"","Icon7":"","Icon8":"","Icon9":"","Icon10":"","Icon11":"","Icon12":"","Icon13":"","Icon14":"","Icon15":"","Icon16":"","Icon17":"","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10040, 'JE Pricing Table', 'module', 'mod_je_pricingtable', '', 0, 1, 0, 0, '{"name":"JE Pricing Table","type":"module","creationDate":"April, 2015","author":"jExtensions.com","copyright":"Copyright 2015 - jExtensions.com","authorEmail":"support@jExtensions.com","authorUrl":"http:\\/\\/jExtensions.com","version":"3.3","description":"\\n\\t<h1 class=\\"sub-heading\\">JE Pricing Table<\\/h1>\\n\\t<div class=\\"description\\">Download more free extensions from <a href=\\"http:\\/\\/jextensions.com\\/\\" target=\\"_blank\\">jExtensions.com<\\/a><br\\/>\\n\\tNeed help? <a href=\\"http:\\/\\/jextensions.com\\/responsive-pricing-table-joomla\\/\\" target=\\"_blank\\">Click here to visit the support page<\\/a>.<br\\/>\\n\\t<span class=\\"credits\\">Credits: <a href=\\"http:\\/\\/wegraphics.net\\/downloads\\/free-responsive-pricing-table\\/\\" target=\\"_blank\\" >WeGraphics<\\/a><\\/span>\\n\\t<\\/div>\\n\\t\\t\\n\\t","group":"","filename":"mod_je_pricingtable"}', '{"fontStyle":"Open+Sans","tableBg":"#ffffff","tableText":"#979797","mainColor":"#3e4f6a","mainText":"#fffff","buttonBg":"#979797","buttonText":"#ffffff","featuredColor":"#F7814D","featuredText":"#ffffff","planTitleSize":"35px","planPriceSize":"25px","planFeaturesSize":"14px","planButtonSize":"20px","planBest1":"0","planFeatures1":"","planBest2":"0","planFeatures2":"","planBest3":"0","planFeatures3":"","planBest4":"0","planFeatures4":"","planBest5":"0","planFeatures5":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10041, 'JE Accordion', 'module', 'mod_je_accordion', '', 0, 1, 0, 0, '{"name":"JE Accordion","type":"module","creationDate":"February, 2015","author":"jExtensions.com","copyright":"Copyright 2015 - jExtensions.com","authorEmail":"support@jExtensions.com","authorUrl":"http:\\/\\/jExtensions.com","version":"3.3","description":"\\n\\t<h1 class=\\"sub-heading\\">JE Accordion<\\/h1>\\t\\n\\t<div class=\\"description\\">Download more free extensions from <a href=\\"http:\\/\\/jextensions.com\\/\\" target=\\"_blank\\">jExtensions.com<\\/a><br\\/>\\n\\tNeed help? <a href=\\"http:\\/\\/jextensions.com\\/joomla-jquery-accordion\\/\\" target=\\"_blank\\">Click here to visit the support page<\\/a>.<br\\/>\\n\\t<\\/div>\\n\\t\\t\\n\\t","group":"","filename":"mod_je_accordion"}', '{"jQuery":"0","ReadMoreText":"Read More...","fontStyle":"Open+Sans","titleBg":"#536376","titleText":"#eeeeee","contentBg":"#F7F7F7","contentText":"#333333","Title1":"","Text1":"","Link1":"","Title2":"","Text2":"","Link2":"","Title3":"","Text3":"","Link3":"","Title4":"","Text4":"","Link4":"","Title5":"","Text5":"","Link5":"","Title6":"","Text6":"","Link6":"","Title7":"","Text7":"","Link7":"","Title8":"","Text8":"","Link8":"","Title9":"","Text9":"","Link9":"","Title10":"","Text10":"","Link10":"","Title11":"","Text11":"","Link11":"","Title12":"","Text12":"","Link12":"","Title13":"","Text13":"","Link13":"","Title14":"","Text14":"","Link14":"","Title15":"","Text15":"","Link15":"","Title16":"","Text16":"","Link16":"","Title17":"","Text17":"","Link17":"","Title18":"","Text18":"","Link18":"","Title19":"","Text19":"","Link19":"","Title20":"","Text20":"","Link20":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `ecom_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(10042, 'JE Tabs', 'module', 'mod_je_tabs', '', 0, 1, 0, 0, '{"name":"JE Tabs","type":"module","creationDate":"February, 2015","author":"jExtensions.com","copyright":"Copyright 2015 - jExtensions.com","authorEmail":"support@jExtensions.com","authorUrl":"http:\\/\\/jExtensions.com","version":"3.3","description":"\\n\\t<h1 class=\\"sub-heading\\">JE Tabs<\\/h1>\\t\\n\\t<div class=\\"description\\">Download more free extensions from <a href=\\"http:\\/\\/jextensions.com\\/\\" target=\\"_blank\\">jExtensions.com<\\/a><br\\/>\\n\\tNeed help? <a href=\\"http:\\/\\/jextensions.com\\/joomla-jquery-tabs\\/\\" target=\\"_blank\\">Click here to visit the support page<\\/a>.<br\\/>\\n\\t<\\/div>\\n\\t\\t\\n\\t","group":"","filename":"mod_je_tabs"}', '{"jQuery":"0","tabsAnim":"0","fontStyle":"Open+Sans","tabBg":"#EEEEEE","tabText":"#333333","Title1":"","Text1":"","Title2":"","Text2":"","Title3":"","Text3":"","Title4":"","Text4":"","Title5":"","Text5":"","Title6":"","Text6":"","Title7":"","Text7":"","Title8":"","Text8":"","Title9":"","Text9":"","Title10":"","Text10":"","Title11":"","Text11":"","Title12":"","Text12":"","Title13":"","Text13":"","Title14":"","Text14":"","Title15":"","Text15":"","Title16":"","Text16":"","Title17":"","Text17":"","Title18":"","Text18":"","Title19":"","Text19":"","Title20":"","Text20":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10043, 'JE Parallax Slideshow', 'module', 'mod_je_parallax', '', 0, 1, 0, 0, '{"name":"JE Parallax Slideshow","type":"module","creationDate":"February, 2015","author":"jExtensions.com","copyright":"Copyright 2015 - jExtensions.com","authorEmail":"support@jExtensions.com","authorUrl":"http:\\/\\/jExtensions.com","version":"3.4","description":"\\n\\t<h1 class=\\"sub-heading\\">JE Parallax - Content Slideshow<\\/h1>\\t\\n\\t<div class=\\"description\\">Download more free extensions from <a href=\\"http:\\/\\/jextensions.com\\/\\" target=\\"_blank\\">jExtensions.com<\\/a><br\\/>\\n\\tNeed help? <a href=\\"http:\\/\\/jextensions.com\\/parallax-content-slider-joomla-2.5\\/\\" target=\\"_blank\\">Click here to visit the support page<\\/a>.<br\\/>\\n\\t<span class=\\"credits\\">Credits: <a href=\\"http:\\/\\/tympanus.net\\/codrops\\/2012\\/03\\/15\\/parallax-content-slider-with-css3-and-jquery\\/\\" target=\\"_blank\\" >Parallax<\\/a><\\/span>\\n\\t<\\/div>\\n\\t\\t\\n\\t","group":"","filename":"mod_je_parallax"}', '{"jQuery":"0","parallaxStyle":"1","imgHeight":"400","fontStyle":"Open+Sans","BgPosition":"100","Autoplay":"true","Interval":"4000","Text1":"","Text2":"","Text3":"","Text4":"","Text5":"","Text6":"","Text7":"","Text8":"","Text9":"","Text10":"","Text11":"","Text12":"","Text13":"","Text14":"","Text15":"","Text16":"","Text17":"","Text18":"","Text19":"","Text20":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10044, 'Mod hỗ trợ trực tuyến', 'module', 'mod_support_online', '', 0, 1, 0, 0, '{"name":"Mod h\\u1ed7 tr\\u1ee3 tr\\u1ef1c tuy\\u1ebfn","type":"module","creationDate":"April 2014","author":"HoangAnhIT","copyright":"HoangAnhIT","authorEmail":"webquangnam@gmail.com","authorUrl":"www.webquangnam.com","version":"1.0","description":"Module h\\u1ed7 tr\\u1ee3 tr\\u1ef1c tuy\\u1ebfn Yahoo - Skype","group":"","filename":"mod_support_online"}', '{"moduleclass_sfx":"","@spacer":"","yahooID":"","skypeID":"","nameYahoo":"","telYahoo":"","ClogoLink":"","showYahoo":"1","showSkype":"1","showName":"1","showTel":"0","Address":"","Phone":"","Fax":"","Email":"","Hotline":"","cache":"0","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10045, 'JE Quick Contact', 'module', 'mod_je_quickcontact', '', 0, 1, 0, 0, '{"name":"JE Quick Contact","type":"module","creationDate":"February, 2015","author":"jExtensions.com","copyright":"Copyright 2015 - jExtensions.com","authorEmail":"support@jExtensions.com","authorUrl":"http:\\/\\/jExtensions.com","version":"3.4","description":"\\n\\t<h1 class=\\"sub-heading\\">JE Quick Contact<\\/h1>\\t\\n\\t<div class=\\"description\\">Download more free extensions from <a href=\\"http:\\/\\/jextensions.com\\/\\" target=\\"_blank\\">jExtensions.com<\\/a><br\\/>\\n\\tNeed help? <a href=\\"http:\\/\\/jextensions.com\\/jquery-ajax-quick-contact-module\\/\\" target=\\"_blank\\">Click here to visit the support page<\\/a>.<br\\/>\\n\\t<\\/div>\\n\\t\\t\\n\\t","group":"","filename":"mod_je_quickcontact"}', '{"jQuery":"0","popUp":"0","popUpButton":"Quick Contact","name":"Name","email":"Email","message":"Message","captcha_label":"1","captcha":"Captcha","submit":"Send","recipient":"","subject":"JE Quick Contact","buttonBg":"#E60000","buttonBgH":"#333333","buttonText":"#ffffff","input_bg":"#F5F5F5","input_brd":"#dddddd","input_text":"#333333"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10046, 'POWr Video Gallery', 'module', 'mod_powrvideogallery', '', 0, 1, 0, 0, '{"name":"POWr Video Gallery","type":"module","creationDate":"Jan 2017","author":"POWr.io","copyright":"Copyright (\\u00a9) 2016 POWr. All rights reserved.","authorEmail":"info@powr.io","authorUrl":"https:\\/\\/powr.io","version":"3.0","description":"MOD_VIDEOGALLERY_DESCRIPTION","group":"","filename":"mod_powrvideogallery"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10047, 'POWr Shortcodes', 'plugin', 'powrshortcodes', 'content', 0, 1, 1, 0, '{"name":"POWr Shortcodes","type":"plugin","creationDate":"Aug 2014","author":"POWr.io","copyright":"Copyright (\\u00a9) 2016 POWr. All rights reserved.","authorEmail":"info@powr.io","authorUrl":"https:\\/\\/powr.io","version":"3.0","description":"PLG_CONTENT_POWRSHORTCODES_DESCRIPTION","group":"","filename":"powrshortcodes"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10048, 'POWr Icon', 'plugin', 'powricon', 'editors-xtd', 0, 1, 1, 0, '{"name":"POWr Icon","type":"plugin","creationDate":"Aug 2015","author":"POWr.io","copyright":"Copyright (\\u00a9) 2016 POWr. All rights reserved.","authorEmail":"info@powr.io","authorUrl":"https:\\/\\/www.powr.io","version":"1.0","description":"Adds an icon to easly add POWr Plugins to any Page or Post right from the Joomla text editor.","group":"","filename":"powricon"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10049, 'POWr Video Gallery', 'package', 'pkg_POWrVideoGallery', '', 0, 1, 1, 0, '{"name":"POWr Video Gallery","type":"package","creationDate":"Jan 2017","author":"POWr.io","copyright":"","authorEmail":"info@powr.io","authorUrl":"https:\\/\\/www.powr.io","version":"4.0","description":"Showcase YouTube and Vimeo videos in a beautiful gallery!","group":"","filename":"pkg_powrvideogallery"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10050, 'JE FaceBook FanBox', 'module', 'mod_je_facebookfanbox', '', 0, 1, 0, 0, '{"name":"JE FaceBook FanBox","type":"module","creationDate":"February, 2015","author":"jExtensions.com","copyright":"Copyright 2015 - jExtensions.com","authorEmail":"support@jExtensions.com","authorUrl":"http:\\/\\/jExtensions.com","version":"3.3","description":"\\n\\t<h1 class=\\"sub-heading\\">JE FaceBook FanBox<\\/h1>\\t\\n\\t<div class=\\"description\\">Download more free extensions from <a href=\\"http:\\/\\/jextensions.com\\/\\" target=\\"_blank\\">jExtensions.com<\\/a><br\\/>\\n\\tNeed help? <a href=\\"http:\\/\\/jextensions.com\\/facebook-fanbox-for-joomla\\/\\" target=\\"_blank\\">Click here to visit the support page<\\/a>.<br\\/>\\n\\t<\\/div>\\n\\t\\t\\n\\t","group":"","filename":"mod_je_facebookfanbox"}', '{"Language":"en_US","Url":"https:\\/\\/www.facebook.com\\/joomla\\/","Width":"200","Height":"300","Color":"light","bgColor":"none","Border":"true","Stream":"false","Faces":"true"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10051, 'TheGrue Maps', 'module', 'mod_gruemaps', '', 0, 1, 0, 0, '{"name":"TheGrue Maps","type":"module","creationDate":"September, 2015","author":"TheGrue.org","copyright":"Copyright 2015 - TheGrue.org","authorEmail":"support@TheGrue.org","authorUrl":"http:\\/\\/TheGrue.org","version":"1.0","description":"\\n\\n\\t<div id=\\"thegrue\\" class=\\"alert alert-success\\">\\n\\t\\t<h1>TheGrue Maps<\\/h1>\\t\\n\\t\\t<p>Developed by <a href=\\"http:\\/\\/thegrue.org\\/\\" target=\\"_blank\\">TheGrue.org<\\/a>, licensed under <a href=\\"http:\\/\\/www.gnu.org\\/licenses\\/gpl-2.0.html\\">GNU\\/GPL2<\\/a><\\/p>\\n\\t\\t<p>Nedd help? [<a href=\\"http:\\/\\/thegrue.org\\/google-maps-joomla-module\\/\\" target=\\"_blank\\"><strong>support \\/ documentaton<\\/strong><\\/a>]<\\/p>\\n\\t\\t<p>Useful: [<a href=\\"http:\\/\\/www.latlong.net\\/convert-address-to-lat-long.html\\" target=\\"_blank\\"><strong>Convert Address to Latitude\\/Longitude<\\/strong><\\/a>]<\\/p>\\n\\t\\t<p>Thanks to: [<a href=\\"http:\\/\\/codyhouse.co\\/gem\\/custom-google-map\\/\\" target=\\"_blank\\"><strong>CodyHouse.co<\\/strong><\\/a>] [<a href=\\"https:\\/\\/www.google.com\\/maps\\" target=\\"_blank\\"><strong>Google Maps<\\/strong><\\/a>]<\\/p>\\n\\t<\\/div>\\n\\n\\t\\n\\t","group":"","filename":"mod_gruemaps"}', '{"jQuery":"0","apikey":"","lat":"","long":"","address":"","showAddress":"1","mapH":"600px","zoom":"14","mapC":"#2d313f"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10052, 'Subiz live chat', 'plugin', 'subiz_live_chat', 'content', 0, 0, 1, 0, '{"name":"Subiz live chat","type":"plugin","creationDate":"march 13th, 2014","author":"Mrsubiz","copyright":"Subiz.com","authorEmail":"support@subiz.com","authorUrl":"http:\\/\\/subiz.com","version":"1.0","description":"Subiz is live chat software based on cloud service. With Subiz, you can support visitors in a quick and effective way. Enter Subiz license id into the form below to complete. <a target=\\"_blank\\" href=\\"https:\\/\\/subiz.freshdesk.com\\/support\\/solutions\\/articles\\/3000002936-frequently-asked#how_to_get_lincense_id\\">How to get Subiz license id?<\\/a>. <a target=\\"_blank\\" href=\\"http:\\/\\/subiz.com\\/?utm_source=plugin_joomla&utm_medium=link&utm_campaign=plugin_joomla1.0\\">Sigup Subiz <\\/a>","group":"","filename":"subiz_live_chat"}', '{"subiz_licence_id":"58568"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10053, 'Subiz', 'plugin', 'Subiz', 'system', 0, 1, 1, 0, '{"name":"Subiz","type":"plugin","creationDate":"02 Sep 2015","author":"Subiz","copyright":"Copyright Subiz 2015 - Live Chat Solution - All rights reserved.","authorEmail":"support@subiz.com","authorUrl":"http:\\/\\/www.subiz.com","version":"1.0.0","description":"PLG_SUBIZ_XML_DESCRIPTION","group":"","filename":"Subiz"}', '{"License_ID":"58568","idcode":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10054, 'plg_installer_webinstaller', 'plugin', 'webinstaller', 'installer', 0, 1, 1, 0, '{"name":"plg_installer_webinstaller","type":"plugin","creationDate":"17 February 2016","author":"Joomla! Project","copyright":"Copyright (C) 2013-2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.1.0","description":"PLG_INSTALLER_WEBINSTALLER_XML_DESCRIPTION","group":"","filename":"webinstaller"}', '{"tab_position":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10055, 'System - ZT Visitor Counter plugin', 'plugin', 'zt_visitor_counter', 'system', 0, 1, 1, 0, '{"name":"System - ZT Visitor Counter plugin","type":"plugin","creationDate":"March 2013","author":"ZooTemplate","copyright":"Copyright (C) 2008 - 2013 http:\\/\\/www.ZooTemplate.com. All rights reserved.","authorEmail":"support@ZooTemplate.com","authorUrl":"www.ZooTemplate.com","version":"1.0.1","description":"This ZT Visitor Counter plugin must be enabled to work with ZT Visitor Counter module","group":"","filename":"zt_visitor_counter"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10056, 'ZT Visitor Counter module', 'module', 'mod_zt_visitor_counter', '', 0, 1, 0, 0, '{"name":"ZT Visitor Counter module","type":"module","creationDate":"March, 2013","author":"ZooTemplate","copyright":"Copyright (C) 2008 - 2013 http:\\/\\/www.ZooTemplate.com. All rights reserved.","authorEmail":"support@ZooTemplate.com","authorUrl":"www.ZooTemplate.com","version":"1.0.1","description":"ZT_VISITOR_COUNTER_DESCRIPTION","group":"","filename":"mod_zt_visitor_counter"}', '{"moduleclass_sfx":"","width":"100","digit_style":"default","module_style":"default","showDigit":"1","minDigits":"7","showIcons":"1","showTitles":"1","showTotals":"1","showIp":"Your IP:","showOnline":"1","showAgent":"1","duration":"15","showGuestOnline":"1","showMemberOnline":"1","showAllOnline":"1","initialValue":"0","today":"Today","yesterday":"Yesterday","thisWeek":"This Week","lastWeek":"Last Week","thisMonth":"This Month","lastMonth":"Last Month","all":"All days","foreCast":"Forecast Today","firstDay":"0","cache":"0","cache_time":"900","cachemode":"static","zt-copyright":"ICAgIDxkaXYgY2xhc3M9Inp0dmMtY29weXJpZ2h0Ij48YSBocmVmPSJodHRwOi8vd3d3Lnpvb3RlbXBsYXRlLmNvbS8iIHRpdGxlPSJWaXNpdG9yIENvdW50ZXIiIHRhcmdldD0iX2JsYW5rIj5WaXNpdG9yDQogICAgICAgICAgICBDb3VudGVyPC9hPjwvZGl2Pg0KPC9kaXY+"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10057, 'ZT Visitor Counter package', 'package', 'pkg_zt_visitor_counter', '', 0, 1, 1, 0, '{"name":"ZT Visitor Counter package","type":"package","creationDate":"March, 2013","author":"ZooTemplate","copyright":"Copyright (C) 2008 - 2013 http:\\/\\/www.ZooTemplate.com. All rights reserved.","authorEmail":"support@ZooTemplate.com","authorUrl":"www.ZooTemplate.com","version":"1.0.1","description":"The simple visitor counter module and plugin for Joomla! 2.5 and Joomla! 3.0. Get more great extensions\\n        for Joomla! 2.5.x and Joomla! 3.x at ZooTemplate.\\n    ","group":"","filename":"pkg_zt_visitor_counter"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10058, 'plg_system_sl_scrolltotop', 'plugin', 'sl_scrolltotop', 'system', 0, 1, 1, 0, '{"name":"plg_system_sl_scrolltotop","type":"plugin","creationDate":"January 2012","author":"Pham Minh Tuan","copyright":"Copyright (c) 2013 Skyline. All rights reserved.","authorEmail":"admin@extstore.com","authorUrl":"http:\\/\\/extstore.com","version":"2.0.0","description":"\\n\\t\\n\\t\\tSkyline Scroll To Top Plugin For Joomla 1.7+<br \\/><br \\/>Developed by Skyline Software (<a target=\\"_blank\\" href=\\"http:\\/\\/extstore.com\\">http:\\/\\/extstore.com<\\/a>).\\n\\t\\n\\t","group":"","filename":"sl_scrolltotop"}', '{"admin_enable":"1","engine":"mootools","image":"","text":"L\\u00ean \\u0111\\u1ea7u trang","title":"L\\u00ean \\u0111\\u1ea7u trang","background_color":"#00ffaa","color":"#030303","hover_background_color":"#eeff00","hover_color":"#000000","position":"bottom_right","border_radius":"3","offset_x":"20","offset_y":"20","padding_x":"12","padding_y":"12","duration":"500","transition":"Fx.Transitions.linear","custom_css":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10061, 'Helix3 - Ajax', 'plugin', 'helix3', 'ajax', 0, 1, 1, 0, '{"name":"Helix3 - Ajax","type":"plugin","creationDate":"Jan 2015","author":"JoomShaper.com","copyright":"Copyright (C) 2010 - 2015 JoomShaper. All rights reserved.","authorEmail":"support@joomshaper.com","authorUrl":"www.joomshaper.com","version":"1.9","description":"Helix3 Framework - Joomla Template Framework by JoomShaper","group":"","filename":"helix3"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10062, 'System - Helix3 Framework', 'plugin', 'helix3', 'system', 0, 1, 1, 0, '{"name":"System - Helix3 Framework","type":"plugin","creationDate":"Jan 2015","author":"JoomShaper.com","copyright":"Copyright (C) 2010 - 2015 JoomShaper. All rights reserved.","authorEmail":"support@joomshaper.com","authorUrl":"www.joomshaper.com","version":"1.9","description":"Helix3 Framework - Joomla Template Framework by JoomShaper","group":"","filename":"helix3"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10063, 'Facebook Live Message', 'module', 'mod_facebook_live_message', '', 0, 1, 0, 0, '{"name":"Facebook Live Message","type":"module","creationDate":"October 2015","author":"Social Widgets","copyright":"All rights reserved by Social Widgets","authorEmail":"admin@socialwidgets.net","authorUrl":"http:\\/\\/www.socialwidgets.net","version":"1.0","description":"Thanks for installing Facebook Live Message","group":"","filename":"mod_facebook_live_message"}', '{"facebook_name":"Facebook","facebook_url":"https:\\/\\/www.facebook.com\\/facebook","width":"500","height":"300","face":"false","show_header":"false","hide":"false"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10064, 'com_mp_jigsaw', 'component', 'com_mp_jigsaw', '', 1, 1, 0, 0, '{"name":"com_mp_jigsaw","type":"component","creationDate":"December 2012","author":"Kh\\u00f4ng bi\\u1ebft","copyright":"(c)2012 mypuzzle.org - All rights reserved","authorEmail":"","authorUrl":"mypuzzle.org","version":"2.0.0","description":"COM_MP_JIGSAW_XML_DESCRIPTION","group":"","filename":"mp_jigsaw"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10065, 'MyPuzzle Jigsaw Puzzle', 'module', 'mod_mp_jigsaw', '', 0, 1, 0, 0, '{"name":"MyPuzzle Jigsaw Puzzle","type":"module","creationDate":"2012 September 02","author":"Mypuzzle.org","copyright":"Copyright (C) 2012. All rights reserved.","authorEmail":"tom@mypuzzle.org","authorUrl":"www.mypuzzle.org","version":"2.0.0","description":"Bring MyPuzzle Jigsaw Puzzles to your joomla website.","group":"","filename":"mod_mp_jigsaw"}', '{"size":"300","pieces":"3","bgcolor":"#FFFFFF","myimage":"","gallery":"modules\\/mod_mp_jigsaw\\/gallery","resizefolder":"images"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10066, 'Jigsaw Puzzle Package', 'package', 'pkg_mp_jigsaw', '', 0, 1, 1, 0, '{"name":"Jigsaw Puzzle Package","type":"package","creationDate":"December 2012","author":"Thomas Seidel","copyright":"","authorEmail":"","authorUrl":"","version":"2.0.0","description":"Mypuzzle Jigsaw Extension - Add Jigsaw Puzzles to your website","group":"","filename":"pkg_mp_jigsaw"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10067, 'RSForm!', 'component', 'com_rsform', '', 1, 1, 0, 0, '{"name":"RSForm!","type":"component","creationDate":"March 2013","author":"RSJoomla!","copyright":"(C) 2007-2013 www.rsjoomla.com","authorEmail":"support@rsjoomla.com","authorUrl":"www.rsjoomla.com","version":"1.4.0 R47","description":"COM_RSFORM_INSTALL_DESC","group":"","filename":"rsform"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10068, 'TCPDF', 'library', 'tcpdf', '', 0, 1, 1, 0, '{"name":"TCPDF","type":"library","creationDate":"28 January 2011","author":"Nicola Asuni","copyright":"http:\\/\\/www.tcpdf.org","authorEmail":"","authorUrl":"http:\\/\\/www.tcpdf.org","version":"2.5.0","description":"Class for generating PDF files on-the-fly without requiring external extensions.","group":"","filename":"tcpdf"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10069, 'COM_FSF', 'component', 'com_fsf', '', 1, 1, 0, 0, '{"name":"COM_FSF","type":"component","creationDate":"2015 01 23","author":"Freestyle Joomla","copyright":"Copyright Freestyle Joomla 2015","authorEmail":"support@freestyle-joomla.com","authorUrl":"http:\\/\\/www.freestyle-joomla.com","version":"1.11.18","description":"Freestyle FAQs","group":"","filename":"fsf"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10070, 'Freestyle FAQs: FAQ/KB category/product listing', 'module', 'mod_fsf_catprods', '', 0, 1, 0, 0, '{"name":"Freestyle FAQs: FAQ\\/KB category\\/product listing","type":"module","creationDate":"2014 01 08","author":"Freestyle Joomla","copyright":"","authorEmail":"","authorUrl":"","version":"1.11.9.1786","description":"Module to list your faq categories","group":"","filename":"mod_fsf_catprods"}', '{"listtype":"faqcat","show_images":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10071, 'Freestyle FAQs: FAQs', 'module', 'mod_fsf_faqs', '', 0, 1, 0, 0, '{"name":"Freestyle FAQs: FAQs","type":"module","creationDate":"2014 09 02","author":"Freestyle Joomla","copyright":"","authorEmail":"","authorUrl":"","version":"1.11.17","description":"List FAQs in a module","group":"","filename":"mod_fsf_faqs"}', '{"catid":"","dispcount":"10","maxheight":"0","listtype":"newpage"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10072, 'Content - Freestyle FAQs Glossary', 'plugin', 'fsf_glossary', 'content', 0, 0, 1, 0, '{"name":"Content - Freestyle FAQs Glossary","type":"plugin","creationDate":"2014-07-04","author":"Freestyle Joomla","copyright":"Copyright Freestyle Joomla 2010","authorEmail":"support@freestyle-joomla.com","authorUrl":"http:\\/\\/www.freestyle-joomla.com","version":"1.11.12","description":"Content - Freestyle FAQs Glossary","group":"","filename":"fsf_glossary"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10073, 'plg_finder_fsf_faq', 'plugin', 'fsf_faq', 'finder', 0, 0, 1, 0, '{"name":"plg_finder_fsf_faq","type":"plugin","creationDate":"2014 01 08","author":"Freestyle Joomla","copyright":"Copyright Freestyle Joomla 2010","authorEmail":"support@freestyle-joomla.com","authorUrl":"http:\\/\\/www.freestyle-joomla.com","version":"1.11.9.1786","description":"Smart Search - Freestyle FAQs: FAQs","group":"","filename":"fsf_faq"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10074, 'plg_finder_fsf_glossary', 'plugin', 'fsf_glossary', 'finder', 0, 0, 1, 0, '{"name":"plg_finder_fsf_glossary","type":"plugin","creationDate":"2014 01 08","author":"Freestyle Joomla","copyright":"Copyright Freestyle Joomla 2010","authorEmail":"support@freestyle-joomla.com","authorUrl":"http:\\/\\/www.freestyle-joomla.com","version":"1.11.9.1786","description":"Smart Search - Freestyle FAQs: Glossary","group":"","filename":"fsf_glossary"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10075, 'Search - Freestyle FAQs: FAQs', 'plugin', 'fsf_faqs', 'search', 0, 0, 1, 0, '{"name":"Search - Freestyle FAQs: FAQs","type":"plugin","creationDate":"2014 01 08","author":"Freestyle Joomla","copyright":"Copyright Freestyle Joomla 2010","authorEmail":"support@freestyle-joomla.com","authorUrl":"http:\\/\\/www.freestyle-joomla.com","version":"1.11.9.1786","description":"Search - Freestyle FAQs: FAQs","group":"","filename":"fsf_faqs"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10076, 'Search - Freestyle FAQs: Glossary', 'plugin', 'fsf_glossary', 'search', 0, 0, 1, 0, '{"name":"Search - Freestyle FAQs: Glossary","type":"plugin","creationDate":"2014 01 08","author":"Freestyle Joomla","copyright":"Copyright Freestyle Joomla 2010","authorEmail":"support@freestyle-joomla.com","authorUrl":"http:\\/\\/www.freestyle-joomla.com","version":"1.11.9.1786","description":"Search - Freestyle FAQs: Glossary","group":"","filename":"fsf_glossary"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ecom_finder_filters`
--

CREATE TABLE `ecom_finder_filters` (
  `filter_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ecom_finder_links`
--

CREATE TABLE `ecom_finder_links` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double UNSIGNED NOT NULL DEFAULT '0',
  `sale_price` double UNSIGNED NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ecom_finder_links_terms0`
--

CREATE TABLE `ecom_finder_links_terms0` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ecom_finder_links_terms1`
--

CREATE TABLE `ecom_finder_links_terms1` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ecom_finder_links_terms2`
--

CREATE TABLE `ecom_finder_links_terms2` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ecom_finder_links_terms3`
--

CREATE TABLE `ecom_finder_links_terms3` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ecom_finder_links_terms4`
--

CREATE TABLE `ecom_finder_links_terms4` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ecom_finder_links_terms5`
--

CREATE TABLE `ecom_finder_links_terms5` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ecom_finder_links_terms6`
--

CREATE TABLE `ecom_finder_links_terms6` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ecom_finder_links_terms7`
--

CREATE TABLE `ecom_finder_links_terms7` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ecom_finder_links_terms8`
--

CREATE TABLE `ecom_finder_links_terms8` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ecom_finder_links_terms9`
--

CREATE TABLE `ecom_finder_links_terms9` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ecom_finder_links_termsa`
--

CREATE TABLE `ecom_finder_links_termsa` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ecom_finder_links_termsb`
--

CREATE TABLE `ecom_finder_links_termsb` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ecom_finder_links_termsc`
--

CREATE TABLE `ecom_finder_links_termsc` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ecom_finder_links_termsd`
--

CREATE TABLE `ecom_finder_links_termsd` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ecom_finder_links_termse`
--

CREATE TABLE `ecom_finder_links_termse` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ecom_finder_links_termsf`
--

CREATE TABLE `ecom_finder_links_termsf` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ecom_finder_taxonomy`
--

CREATE TABLE `ecom_finder_taxonomy` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `access` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ecom_finder_taxonomy`
--

INSERT INTO `ecom_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ecom_finder_taxonomy_map`
--

CREATE TABLE `ecom_finder_taxonomy_map` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `node_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ecom_finder_terms`
--

CREATE TABLE `ecom_finder_terms` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ecom_finder_terms_common`
--

CREATE TABLE `ecom_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ecom_finder_terms_common`
--

INSERT INTO `ecom_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `ecom_finder_tokens`
--

CREATE TABLE `ecom_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '1',
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ecom_finder_tokens_aggregate`
--

CREATE TABLE `ecom_finder_tokens_aggregate` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `term_weight` float UNSIGNED NOT NULL,
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `context_weight` float UNSIGNED NOT NULL,
  `total_weight` float UNSIGNED NOT NULL,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ecom_finder_types`
--

CREATE TABLE `ecom_finder_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ecom_languages`
--

CREATE TABLE `ecom_languages` (
  `lang_id` int(11) UNSIGNED NOT NULL,
  `asset_id` int(11) NOT NULL,
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ecom_languages`
--

INSERT INTO `ecom_languages` (`lang_id`, `asset_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 0, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en_gb', '', '', '', '', 0, 1, 1),
(2, 68, 'vi-VN', 'Vietnam (VN)', 'Vietnam (VN)', 'vi', 'vi_vn', '', '', '', '', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ecom_menu`
--

CREATE TABLE `ecom_menu` (
  `id` int(11) NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ecom_menu`
--

INSERT INTO `ecom_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 129, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'menu', 'com_contact_contacts', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 20, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 21, 26, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 22, 23, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 24, 25, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 27, 28, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 29, 30, 0, '*', 1),
(18, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 31, 32, 0, '*', 1),
(19, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 33, 34, 0, '*', 1),
(20, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 0, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 35, 36, 0, '', 1),
(21, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 0, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 37, 38, 0, '*', 1),
(101, 'mainmenu', 'Trang Chủ', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","multi_column_order":"1","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"2","show_pagination_results":"1","show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"T-Store - Trang Ch\\u1ee7","show_page_heading":"1","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 39, 40, 1, '*', 0),
(102, 'main', 'TCPDF', 'tcpdf', '', 'tcpdf', 'index.php?option=com_tcpdf', 'component', 0, 1, 1, 10003, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 45, 46, 0, '', 1),
(103, 'main', 'COM_VIRTUEMART', 'com-virtuemart', '', 'com-virtuemart', 'index.php?option=com_virtuemart', 'component', 0, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 1, '../components/com_virtuemart/assets/images/vmgeneral/menu_icon.png', 0, '{}', 47, 72, 0, '', 1),
(104, 'main', 'COM_VIRTUEMART_CONTROL_PANEL', 'com-virtuemart-control-panel', '', 'com-virtuemart/com-virtuemart-control-panel', 'index.php?option=com_virtuemart&view=virtuemart', 'component', 0, 103, 2, 10004, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-report.png', 0, '{}', 48, 49, 0, '', 1),
(105, 'main', 'COM_VIRTUEMART_MENU_CATEGORIES', 'com-virtuemart-menu-categories', '', 'com-virtuemart/com-virtuemart-menu-categories', 'index.php?option=com_virtuemart&view=category', 'component', 0, 103, 2, 10004, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-categories.png', 0, '{}', 50, 51, 0, '', 1),
(106, 'main', 'COM_VIRTUEMART_MENU_PRODUCTS', 'com-virtuemart-menu-products', '', 'com-virtuemart/com-virtuemart-menu-products', 'index.php?option=com_virtuemart&view=product', 'component', 0, 103, 2, 10004, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-products.png', 0, '{}', 52, 53, 0, '', 1),
(107, 'main', 'COM_VIRTUEMART_MENU_ORDERS', 'com-virtuemart-menu-orders', '', 'com-virtuemart/com-virtuemart-menu-orders', 'index.php?option=com_virtuemart&view=orders', 'component', 0, 103, 2, 10004, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-orders.png', 0, '{}', 54, 55, 0, '', 1),
(108, 'main', 'COM_VIRTUEMART_MENU_REPORT', 'com-virtuemart-menu-report', '', 'com-virtuemart/com-virtuemart-menu-report', 'index.php?option=com_virtuemart&view=report', 'component', 0, 103, 2, 10004, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-report.png', 0, '{}', 56, 57, 0, '', 1),
(109, 'main', 'COM_VIRTUEMART_MENU_USERS', 'com-virtuemart-menu-users', '', 'com-virtuemart/com-virtuemart-menu-users', 'index.php?option=com_virtuemart&view=user', 'component', 0, 103, 2, 10004, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-shoppers.png', 0, '{}', 58, 59, 0, '', 1),
(110, 'main', 'COM_VIRTUEMART_MENU_MANUFACTURERS', 'com-virtuemart-menu-manufacturers', '', 'com-virtuemart/com-virtuemart-menu-manufacturers', 'index.php?option=com_virtuemart&view=manufacturer', 'component', 0, 103, 2, 10004, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-manufacturers.png', 0, '{}', 60, 61, 0, '', 1),
(111, 'main', 'COM_VIRTUEMART_MENU_STORE', 'com-virtuemart-menu-store', '', 'com-virtuemart/com-virtuemart-menu-store', 'index.php?option=com_virtuemart&view=user&task=editshop', 'component', 0, 103, 2, 10004, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-shop.png', 0, '{}', 62, 63, 0, '', 1),
(112, 'main', 'COM_VIRTUEMART_MENU_MEDIAFILES', 'com-virtuemart-menu-mediafiles', '', 'com-virtuemart/com-virtuemart-menu-mediafiles', 'index.php?option=com_virtuemart&view=media', 'component', 0, 103, 2, 10004, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-media.png', 0, '{}', 64, 65, 0, '', 1),
(113, 'main', 'COM_VIRTUEMART_MENU_SHIPMENTMETHODS', 'com-virtuemart-menu-shipmentmethods', '', 'com-virtuemart/com-virtuemart-menu-shipmentmethods', 'index.php?option=com_virtuemart&view=shipmentmethod', 'component', 0, 103, 2, 10004, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-shipmentmethods.png', 0, '{}', 66, 67, 0, '', 1),
(114, 'main', 'COM_VIRTUEMART_MENU_PAYMENTMETHODS', 'com-virtuemart-menu-paymentmethods', '', 'com-virtuemart/com-virtuemart-menu-paymentmethods', 'index.php?option=com_virtuemart&view=paymentmethod', 'component', 0, 103, 2, 10004, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-paymentmethods.png', 0, '{}', 68, 69, 0, '', 1),
(115, 'main', 'COM_VIRTUEMART_MENU_CONFIGURATION', 'com-virtuemart-menu-configuration', '', 'com-virtuemart/com-virtuemart-menu-configuration', 'index.php?option=com_virtuemart&view=config', 'component', 0, 103, 2, 10004, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-config.png', 0, '{}', 70, 71, 0, '', 1),
(116, 'main', 'VirtueMart AIO', 'virtuemart-aio', '', 'virtuemart-aio', 'index.php?option=com_virtuemart_allinone', 'component', 0, 1, 1, 10005, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 73, 74, 0, '', 1),
(117, 'mainmenu', 'Áo Khoác', 'aokhoac', '', 'aokhoac', 'index.php?option=com_virtuemart&view=category&virtuemart_category_id=3&virtuemart_manufacturer_id=0&categorylayout=0&showcategory=1&showproducts=1&showsearch=1&productsublayout=0&products_per_row=3&featured_rows=3&latest=0&topten=0&topten_rows=3&recent=0', 'component', 1, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 1, ' ', 7, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"T-Store - \\u00c1o Kho\\u00e1c","show_page_heading":"1","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 83, 84, 0, '*', 0),
(118, 'mainmenu', 'Áo Thun', 'aothun', '', 'aothun', 'index.php?option=com_virtuemart&view=category&virtuemart_category_id=2&virtuemart_manufacturer_id=0&categorylayout=0&showcategory=1&showproducts=1&showsearch=1&productsublayout=0&latest=0&topten=0&recent=0', 'component', 1, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"T-Store - \\u00c1o Thun","show_page_heading":"1","page_heading":"T-Store - \\u00c1o Thun","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"menulayout":"{\\"width\\":600,\\"menuItem\\":1,\\"menuAlign\\":\\"right\\",\\"layout\\":[{\\"type\\":\\"row\\",\\"attr\\":[{\\"type\\":\\"column\\",\\"colGrid\\":12,\\"menuParentId\\":\\"118\\",\\"moduleId\\":\\"\\"}]}]}","megamenu":"0","showmenutitle":"1","icon":"","class":"","enable_page_title":"0","page_title_alt":"","page_subtitle":"","page_title_bg_color":"","page_title_bg_image":""}', 75, 76, 0, '*', 0),
(119, 'mainmenu', 'Áo Sơ Mi', 'aosomi', '', 'aosomi', 'index.php?option=com_virtuemart&view=category&virtuemart_category_id=1&virtuemart_manufacturer_id=0&categorylayout=0&showcategory=0&showproducts=1&showsearch=1&productsublayout=0&latest=0&topten=0&recent=0', 'component', 1, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"T-Store - \\u00c1o S\\u01a1 Mi","show_page_heading":"1","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 77, 78, 0, '*', 0),
(120, 'mainmenu', 'Quần', 'quan', '', 'quan', 'index.php?option=com_virtuemart&view=category&virtuemart_category_id=5&virtuemart_manufacturer_id=0&categorylayout=0&showcategory=0&showproducts=1&showsearch=1&productsublayout=0&latest=0&topten=0&recent=0', 'component', 1, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"T-Store - Qu\\u1ea7n","show_page_heading":"1","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 85, 86, 0, '*', 0),
(121, 'mainmenu', 'Phụ Kiện', 'phukien', '', 'phukien', 'index.php?option=com_virtuemart&view=category&virtuemart_category_id=6&virtuemart_manufacturer_id=0&categorylayout=0&showcategory=0&showproducts=1&showsearch=1&productsublayout=0&latest=0&topten=0&recent=0', 'component', 1, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"T-Store - Ph\\u1ee5 Ki\\u1ec7n","show_page_heading":"1","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 87, 88, 0, '*', 0),
(122, 'mainmenu', 'Giày', 'giay', '', 'giay', 'index.php?option=com_virtuemart&view=category&virtuemart_category_id=4&virtuemart_manufacturer_id=0&categorylayout=0&showcategory=0&showproducts=1&showsearch=1&productsublayout=0&latest=0&topten=0&recent=0', 'component', 1, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"T-Store - Gi\\u00e0y","show_page_heading":"1","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 89, 90, 0, '*', 0),
(123, 'mainmenu', 'Danh mục sản phẩm', 'category', '', 'category', 'index.php?option=com_virtuemart&view=category&virtuemart_category_id=0&virtuemart_manufacturer_id=0&categorylayout=0&showcategory=1&showproducts=1&showsearch=1&productsublayout=0&latest=0&topten=0&recent=0', 'component', -2, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 79, 80, 0, '*', 0),
(124, 'mainmenu', 'Giỏ Hàng', 'cart', '', 'cart', 'index.php?option=com_virtuemart&view=cart', 'component', 1, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 1, ' ', 7, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"T-Store - Gi\\u1ecf H\\u00e0ng","show_page_heading":"1","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 91, 92, 0, '*', 0),
(125, 'mainmenu', 'Áo', 'ao', '', 'ao', 'index.php?option=com_content&view=featured', 'component', -2, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 81, 82, 0, '*', 0),
(126, 'mainmenu', 'Xu Hướng', 'trend', '', 'trend', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"T-Store - Xu H\\u01b0\\u1edbng","show_page_heading":"1","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 41, 42, 0, '*', 0),
(127, 'mainmenu', 'Tư Vấn', 'style', '', 'style', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"T-Store - Style Guide","show_page_heading":"1","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"menulayout":"{\\"width\\":600,\\"menuItem\\":1,\\"menuAlign\\":\\"right\\",\\"layout\\":[{\\"type\\":\\"row\\",\\"attr\\":[{\\"type\\":\\"column\\",\\"colGrid\\":12,\\"menuParentId\\":\\"127\\",\\"moduleId\\":\\"\\"}]}]}","megamenu":"0","showmenutitle":"1","icon":"","class":"","enable_page_title":"0","page_title_alt":"","page_subtitle":"","page_title_bg_color":"","page_title_bg_image":""}', 43, 44, 0, '*', 0),
(128, 'main', 'COM_MP_JIGSAW', 'com-mp-jigsaw', '', 'com-mp-jigsaw', 'index.php?option=com_mp_jigsaw', 'component', 0, 1, 1, 10064, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 93, 94, 0, '', 1),
(129, 'mainmenu', 'Đăng Ký', 'dangky', '', 'dangky', 'index.php?option=com_rsform&view=rsform&formId=3', 'component', 1, 1, 1, 10067, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"menulayout":"{\\"width\\":600,\\"menuItem\\":1,\\"menuAlign\\":\\"right\\",\\"layout\\":[{\\"type\\":\\"row\\",\\"attr\\":[{\\"type\\":\\"column\\",\\"colGrid\\":12,\\"menuParentId\\":\\"129\\",\\"moduleId\\":\\"\\"}]}]}","megamenu":"0","showmenutitle":"1","icon":"","class":"","enable_page_title":"0","page_title_alt":"","page_subtitle":"","page_title_bg_color":"","page_title_bg_image":""}', 95, 96, 0, '*', 0),
(130, 'main', 'RSFormPro', 'rsformpro', '', 'rsformpro', 'index.php?option=com_rsform', 'component', 0, 1, 1, 10067, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_rsform/assets/images/rsformpro.gif', 0, '{}', 97, 110, 0, '', 1),
(131, 'main', 'COM_RSFORM_MANAGE_FORMS', 'com-rsform-manage-forms', '', 'rsformpro/com-rsform-manage-forms', 'index.php?option=com_rsform&view=forms', 'component', 0, 130, 2, 10067, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 98, 99, 0, '', 1),
(132, 'main', 'COM_RSFORM_MANAGE_SUBMISSIONS', 'com-rsform-manage-submissions', '', 'rsformpro/com-rsform-manage-submissions', 'index.php?option=com_rsform&view=submissions', 'component', 0, 130, 2, 10067, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 100, 101, 0, '', 1),
(133, 'main', 'COM_RSFORM_CONFIGURATION', 'com-rsform-configuration', '', 'rsformpro/com-rsform-configuration', 'index.php?option=com_rsform&view=configuration', 'component', 0, 130, 2, 10067, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 102, 103, 0, '', 1),
(134, 'main', 'COM_RSFORM_BACKUP_RESTORE', 'com-rsform-backup-restore', '', 'rsformpro/com-rsform-backup-restore', 'index.php?option=com_rsform&view=backuprestore', 'component', 0, 130, 2, 10067, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 104, 105, 0, '', 1),
(135, 'main', 'COM_RSFORM_UPDATES', 'com-rsform-updates', '', 'rsformpro/com-rsform-updates', 'index.php?option=com_rsform&view=updates', 'component', 0, 130, 2, 10067, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 106, 107, 0, '', 1),
(136, 'main', 'COM_RSFORM_PLUGINS', 'com-rsform-plugins', '', 'rsformpro/com-rsform-plugins', 'index.php?option=com_rsform&task=goto.plugins', 'component', 0, 130, 2, 10067, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 108, 109, 0, '', 1),
(137, 'main', 'FREESTYLE_FAQS', 'freestyle-faqs', '', 'freestyle-faqs', 'index.php?option=com_fsf', 'component', 0, 1, 1, 10069, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_fsf/assets/menu_icon_s.png', 0, '{}', 111, 126, 0, '', 1),
(138, 'main', 'COM_FSF_SETTINGS', 'com-fsf-settings', '', 'freestyle-faqs/com-fsf-settings', 'index.php?option=com_fsf&view=settings', 'component', 0, 137, 2, 10069, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_fsf/assets/images/blank_16.png', 0, '{}', 112, 113, 0, '', 1),
(139, 'main', 'COM_FSF_TEMPLATES', 'com-fsf-templates', '', 'freestyle-faqs/com-fsf-templates', 'index.php?option=com_fsf&view=templates', 'component', 0, 137, 2, 10069, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_fsf/assets/images/blank_16.png', 0, '{}', 114, 115, 0, '', 1),
(140, 'main', 'COM_FSF_VIEW_SETTINGS', 'com-fsf-view-settings', '', 'freestyle-faqs/com-fsf-view-settings', 'index.php?option=com_fsf&view=settingsview', 'component', 0, 137, 2, 10069, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_fsf/assets/images/blank_16.png', 0, '{}', 116, 117, 0, '', 1),
(141, 'main', 'COM_FSF_FAQS', 'com-fsf-faqs', '', 'freestyle-faqs/com-fsf-faqs', 'index.php?option=com_fsf&view=faqs', 'component', 0, 137, 2, 10069, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_fsf/assets/images/blank_16.png', 0, '{}', 118, 119, 0, '', 1),
(142, 'main', 'COM_FSF_FAQ_CATEGORIES', 'com-fsf-faq-categories', '', 'freestyle-faqs/com-fsf-faq-categories', 'index.php?option=com_fsf&view=faqcats', 'component', 0, 137, 2, 10069, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_fsf/assets/images/blank_16.png', 0, '{}', 120, 121, 0, '', 1),
(143, 'main', 'COM_FSF_GLOSSARY', 'com-fsf-glossary', '', 'freestyle-faqs/com-fsf-glossary', 'index.php?option=com_fsf&view=glossarys', 'component', 0, 137, 2, 10069, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_fsf/assets/images/blank_16.png', 0, '{}', 122, 123, 0, '', 1),
(144, 'main', 'COM_FSF_ADMIN', 'com-fsf-admin', '', 'freestyle-faqs/com-fsf-admin', 'index.php?option=com_fsf&view=backup', 'component', 0, 137, 2, 10069, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_fsf/assets/images/blank_16.png', 0, '{}', 124, 125, 0, '', 1),
(145, 'mainmenu', 'FAQ', 'faqs', '', 'faqs', 'index.php?option=com_fsf&view=faq', 'component', 1, 1, 1, 10069, 0, '0000-00-00 00:00:00', 0, 1, ' ', 7, '{"always_show_faqs":"-1","hide_allfaqs":"-1","hide_tags":"-1","hide_search":"-1","show_featured":"-1","num_cat_colums":"-1","view_mode_cat":"-1","view_mode_incat":"-1","always_show_cats":"-1","view_mode":"-1","enable_pages":"-1","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"menulayout":"{\\"width\\":600,\\"menuItem\\":1,\\"menuAlign\\":\\"right\\",\\"layout\\":[{\\"type\\":\\"row\\",\\"attr\\":[{\\"type\\":\\"column\\",\\"colGrid\\":12,\\"menuParentId\\":\\"145\\",\\"moduleId\\":\\"\\"}]}]}","megamenu":"0","showmenutitle":"1","icon":"","class":"","enable_page_title":"0","page_title_alt":"","page_subtitle":"","page_title_bg_color":"","page_title_bg_image":""}', 127, 128, 0, '*', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ecom_menu_types`
--

CREATE TABLE `ecom_menu_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(11) NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ecom_menu_types`
--

INSERT INTO `ecom_menu_types` (`id`, `asset_id`, `menutype`, `title`, `description`) VALUES
(1, 0, 'mainmenu', 'Main Menu', 'The main menu for the site');

-- --------------------------------------------------------

--
-- Table structure for table `ecom_messages`
--

CREATE TABLE `ecom_messages` (
  `message_id` int(10) UNSIGNED NOT NULL,
  `user_id_from` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id_to` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ecom_messages_cfg`
--

CREATE TABLE `ecom_messages_cfg` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ecom_modules`
--

CREATE TABLE `ecom_modules` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ecom_modules`
--

INSERT INTO `ecom_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Main Menu', '', '', 1, 'position-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"mainmenu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":" nav-pills","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"nav","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(2, 40, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 41, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(4, 42, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(8, 43, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 44, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 45, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(12, 46, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 47, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 48, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 49, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 50, 'Đăng nhập', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{"pretext":"","posttext":"","login":"","logout":"","greeting":"1","name":"0","usesecure":"0","usetext":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(17, 51, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"moduleclass_sfx":"","showHome":"1","homeText":"","showComponent":"1","separator":"","cache":"0","cache_time":"0","cachemode":"itemid"}', 0, '*'),
(79, 52, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 53, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(87, 58, 'VM - Administrator Module', '', '', 5, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_vmmenu', 3, 1, '', 1, '*'),
(88, 59, 'VM - Currencies Selector', '', '', 5, 'position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_virtuemart_currencies', 1, 1, '', 0, '*'),
(89, 60, 'VM - Featured products', '', '', 3, 'position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_virtuemart_product', 1, 1, '', 0, '*'),
(90, 61, 'VM - Search in Shop', '', '', 2, 'position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_virtuemart_search', 1, 1, '', 0, '*'),
(91, 62, 'VM - Manufacturer', '', '', 8, 'position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_virtuemart_manufacturer', 1, 1, '', 0, '*'),
(92, 63, 'VM - Shopping cart', '', '', 0, 'position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_virtuemart_cart', 1, 1, '', 0, '*'),
(93, 64, 'VM - Category', '', '', 4, 'position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_virtuemart_category', 1, 1, '', 0, '*'),
(94, 65, 'T-Store: Nhất dáng, nhì da,... thứ ba quần áo :)', '', '', 3, 'position-3', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_je_orbit', 1, 1, '{"jQuery":"0","Animation":"fade","AnimationSpeed":"600","Repeat":"true","Timer":"true","TimerSpeed":"3000","pauseOnHover":"true","resumeNotHover":"true","slideNumbers":"true","navigation":"true","bullets":"true","linkTarget":"_self","Image1":"images\\/orbitslide\\/1.jpg","Link1":"http:\\/\\/localhost:8088\\/tstore\\/index.php\\/giay","Caption1":"","Image2":"images\\/orbitslide\\/2.JPG","Link2":"http:\\/\\/localhost:8088\\/tstore\\/index.php\\/phukien","Caption2":"","Image3":"images\\/orbitslide\\/3.jpg","Link3":"http:\\/\\/localhost:8088\\/tstore\\/index.php\\/quan","Caption3":"","Image4":"images\\/orbitslide\\/4.jpg","Link4":"http:\\/\\/localhost:8088\\/tstore\\/index.php\\/aosomi","Caption4":"","Image5":"images\\/orbitslide\\/5.jpg","Link5":"http:\\/\\/localhost:8088\\/tstore\\/index.php\\/giay","Caption5":"","Image6":"images\\/orbitslide\\/6.jpg","Link6":"http:\\/\\/localhost:8088\\/tstore\\/index.php\\/aothun","Caption6":"","Image7":"images\\/orbitslide\\/7.jpg","Link7":"http:\\/\\/localhost:8088\\/tstore\\/index.php\\/aokhoac","Caption7":"","Image8":"","Link8":"","Caption8":"","Image9":"","Link9":"","Caption9":"","Image10":"","Link10":"","Caption10":"","Image11":"","Link11":"","Caption11":"","Image12":"","Video12":"","Link12":"","Caption12":"","Image13":"","Link13":"","Caption13":"","Image14":"","Link14":"","Caption14":"","Image15":"","Link15":"","Caption15":"","Image16":"","Link16":"","Caption16":"","Image17":"","Link17":"","Caption17":"","Image18":"","Link18":"","Caption18":"","Image19":"","Link19":"","Caption19":"","Image20":"","Link20":"","Caption20":"","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(95, 66, 'Slide nền', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '2017-01-23 15:42:26', '0000-00-00 00:00:00', 1, 'mod_je_fullscreengallery', 1, 1, '{"jQuery":"0","SelectImage":"file","imageFolder":"-1","thumbNav":"0","arrowNav":"0","progressBar":"0","ctrlBar":"0","thumbWidth":"200","thumbHeight":"150","thumbQuality":"100","thumbAlign":"t","Image1":"images\\/Background\\/3.jpg","Text1":"","Image2":"","Text2":"","Image3":"","Text3":"","Image4":"","Text4":"","Image5":"","Text5":"","Image6":"","Text6":"","Image7":"","Text7":"","Image8":"","Text8":"","Image9":"","Text9":"","Image10":"","Text10":"","Image11":"","Text11":"","Image12":"","Text12":"","Image13":"","Text13":"","Image14":"","Text14":"","Image15":"","Text15":"","Image16":"","Text16":"","Image17":"","Text17":"","Image18":"","Text18":"","Image19":"","Text19":"","Image20":"","Text20":"","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(96, 67, 'Poster', '', '', 1, 'debug', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_taoquangcao2ben', 1, 1, '{"maincontentw":"1000","topadjust":"0","fspeed":"20","leftboxw":"175","leftadjust":"75","left_position":"<p><img src=\\"images\\/advleft.png\\" \\/><\\/p>","rightboxw":"175","rightadjust":"75","right_position":"<p><img src=\\"images\\/advright.png\\" \\/><\\/p>","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(97, 69, 'Giới thiệu BST Xuân Hạ 2017 - NTK Đức Tiến', '', '', 1, 'position-3', 0, '0000-00-00 00:00:00', '2017-02-01 03:43:15', '0000-00-00 00:00:00', 1, 'mod_je_slicebox3d', 1, 1, '{"jQuery":"0","fontStyle":"Open+Sans+Condensed:300","textColor":"#FFFFFF","bgColor":"#555555","linkColor":"#00BAFF","linkColorHover":"#FFFFFF","navDot":"#EEEEEE","navDotActive":"#E95846","SlideArrows":"1","SlideDots":"1","SlideShadow":"1","playPause":"0","Orientation":"v","Perspective":"1200","cuboidsCount":"5","cuboidsRandom":"false","maxCuboidsCount":"5","disperseFactor":"0","colorHiddenSides":"#222","sequentialFactor":"150","Speed":"600","Autoplay":"true","Interval":"3000","fallbackFadeSpeed":"300","Image1":"images\\/3dslide\\/01.jpg","Link1":"","Caption1":"","Image2":"images\\/3dslide\\/02.jpg","Link2":"","Caption2":"","Image3":"images\\/3dslide\\/03.jpg","Link3":"","Caption3":"","Image4":"images\\/3dslide\\/04.jpg","Link4":"","Caption4":"","Image5":"images\\/3dslide\\/05.jpg","Link5":"","Caption5":"","Image6":"images\\/3dslide\\/06.jpg","Link6":"","Caption6":"","Image7":"images\\/3dslide\\/07.jpg","Link7":"","Caption7":"","Image8":"images\\/3dslide\\/08.jpg","Link8":"","Caption8":"","Image9":"images\\/3dslide\\/09.jpg","Link9":"","Caption9":"","Image10":"images\\/3dslide\\/10.jpg","Link10":"","Caption10":"","Image11":"","Link11":"","Caption11":"","Image12":"","Video12":"","Link12":"","Caption12":"","Image13":"","Link13":"","Caption13":"","Image14":"","Link14":"","Caption14":"","Image15":"","Link15":"","Caption15":"","Image16":"","Link16":"","Caption16":"","Image17":"","Link17":"","Caption17":"","Image18":"","Link18":"","Caption18":"","Image19":"","Link19":"","Caption19":"","Image20":"","Link20":"","Caption20":"","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(98, 70, 'Kết nối với T-Store :D', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '2017-02-03 07:39:17', '0000-00-00 00:00:00', 1, 'mod_je_social', 1, 1, '{"iconStyle":"2","Icon1":"https:\\/\\/www.facebook.com\\/thoitrangtstore\\/","Icon2":"https:\\/\\/twitter.com\\/dr_congtri","Icon3":"https:\\/\\/plus.google.com\\/u\\/0\\/112953570891445680340","Icon4":"","Icon5":"","Icon6":"https:\\/\\/www.instagram.com\\/tstorevn\\/","Icon7":"","Icon8":"","Icon9":"","Icon10":"","Icon11":"","Icon12":"","Icon13":"","Icon14":"","Icon15":"","Icon16":"","Icon17":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(99, 71, 'Đang bán chạy !', '', '', 1, 'position-3', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_je_pricingtable', 1, 1, '{"fontStyle":"Open+Sans","tableBg":"#FFFFFF","tableText":"#7A7A7A","mainColor":"#3E4F6A","mainText":"#00FF00","buttonBg":"#979797","buttonText":"#FFFFFF","featuredColor":"#FFAC63","featuredText":"#FFFFFF","planTitleSize":"25px","planPriceSize":"25px","planFeaturesSize":"14px","planButtonSize":"20px","planName1":"\\u00c1o thun","planBest1":"1","planPrice1":"Ch\\u1ec9 t\\u1eeb 250k","planTerm1":"\\/s\\u1ea3n ph\\u1ea9m","planFeatures1":"Th\\u1ecfa s\\u1ee9c bi\\u1ebfn \\u0111\\u1ed5i phong c\\u00e1ch m\\u1ed7i ng\\u00e0y v\\u1edbi b\\u1ed9 s\\u01b0u t\\u1eadp \\u00e1o thun nam th\\u1eddi trang \\u0111a d\\u1ea1ng, c\\u00e1 t\\u00ednh v\\u00e0 tho\\u1ea3i m\\u00e1i.","planButton1":"Xem ngay","planLink1":"http:\\/\\/localhost:8088\\/tstore\\/index.php\\/aothun","planName2":"\\u00c1o s\\u01a1 mi","planBest2":"1","planPrice2":"Ch\\u1ec9 t\\u1eeb 300k","planTerm2":"\\/s\\u1ea3n ph\\u1ea9m","planFeatures2":"Nh\\u1eefng chi\\u1ebfc \\u00e1o s\\u01a1 mi nam thanh l\\u1ecbch l\\u00e0 trang ph\\u1ee5c kh\\u00f4ng th\\u1ec3 thi\\u1ebfu c\\u1ee7a c\\u00e1c ch\\u00e0ng trai hi\\u1ec7n \\u0111\\u1ea1i, nam t\\u00ednh.","planButton2":"Xem ngay","planLink2":"http:\\/\\/localhost:8088\\/tstore\\/index.php\\/aosomi","planName3":"Qu\\u1ea7n","planBest3":"1","planPrice3":"Ch\\u1ec9 t\\u1eeb 350k","planTerm3":"\\/s\\u1ea3n ph\\u1ea9m","planFeatures3":"Nh\\u1eefng chi\\u1ebfc qu\\u1ea7n th\\u1eddi trang, nam t\\u00ednh \\u0111\\u00f3ng vai tr\\u00f2 r\\u1ea5t quan tr\\u1ecdng v\\u1edbi ph\\u00e1i nam trong vi\\u1ec7c ph\\u1ed1i \\u0111\\u1ed3 h\\u1eb1ng ng\\u00e0y.","planButton3":"Xem ngay","planLink3":"http:\\/\\/localhost:8088\\/tstore\\/index.php\\/quan","planName4":"Gi\\u00e0y","planBest4":"1","planPrice4":"Ch\\u1ec9 t\\u1eeb 400k","planTerm4":"\\/s\\u1ea3n ph\\u1ea9m","planFeatures4":"Mang \\u0111\\u1ebfn s\\u1ef1 tho\\u1ea3i m\\u00e1i v\\u00e0 th\\u1eddi th\\u01b0\\u1ee3ng trong t\\u1eebng m\\u1eabu thi\\u1ebft k\\u1ebf \\u0111\\u1eb3ng c\\u1ea5p. S\\u1edf h\\u1eefu 1 \\u0111\\u00f4i ngay h\\u00f4m nay!","planButton4":"Xem ngay","planLink4":"http:\\/\\/localhost:8088\\/tstore\\/index.php\\/giay","planName5":"","planBest5":"0","planPrice5":"","planTerm5":"","planFeatures5":"","planButton5":"","planLink5":"","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(100, 72, 'T-Store', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '2017-02-03 14:56:27', '0000-00-00 00:00:00', -2, 'mod_je_accordion', 1, 0, '{"jQuery":"0","ReadMoreText":"Read More...","fontStyle":"Open+Sans","titleBg":"#536376","titleText":"#EEEEEE","contentBg":"#F7F7F7","contentText":"#333333","Title1":"V\\u1ec1 T-Store","Text1":"Ch\\u00e0o m\\u1eebng qu\\u00fd kh\\u00e1ch \\u0111\\u1ebfn v\\u1edbi T-STORE, web mua s\\u1eafm th\\u1eddi trang t\\u1ed1t nh\\u1ea5t Vi\\u1ec7t Nam.\\r\\nT-STORE h\\u00e2n h\\u1ea1nh mang \\u0111\\u1ebfn cho b\\u1ea1n m\\u1ed9t b\\u1ed9 s\\u01b0u t\\u1eadp th\\u1eddi trang kh\\u1ed5ng l\\u1ed3 t\\u1eeb nh\\u1eefng th\\u01b0\\u01a1ng hi\\u1ec7u n\\u1ed5i ti\\u1ebfng th\\u1ebf gi\\u1edbi v\\u00e0 Vi\\u1ec7t Nam. T\\u1ea5t c\\u1ea3 c\\u00e1c s\\u1ea3n ph\\u1ea9m \\u0111\\u1ec1u \\u0111\\u01b0\\u1ee3cT-STORE tuy\\u1ec3n l\\u1ef1a m\\u1ed9t c\\u00e1ch k\\u1ef9 l\\u01b0\\u1ee1ng sao cho th\\u1eadt h\\u1ee3p v\\u1edbi phong c\\u00e1ch \\u00c1 \\u0110\\u00f4ng m\\u00e0 c\\u0169ng b\\u1eaft nh\\u1ecbp c\\u00f9ng v\\u1edbi nh\\u1eefng xu h\\u01b0\\u1edbng m\\u1edbi nh\\u1ea5t \\u0111ang th\\u1ecbnh h\\u00e0nh kh\\u1eafp th\\u1ebf gi\\u1edbi.\\r\\nTrong l\\u0129nh v\\u1ef1c th\\u1eddi trang, T-STORE t\\u1ef1 h\\u00e0o v\\u1ec1 \\u0111\\u1ed9i ng\\u0169 stylist chuy\\u00ean nghi\\u1ec7p v\\u00e0 t\\u1eadn t\\u00ecnh gi\\u00fap ng\\u01b0\\u1eddi mua c\\u00f3 \\u0111\\u01b0\\u1ee3c nh\\u1eefng g\\u1ee3i \\u00fd s\\u00e1ng t\\u1ea1o cho m\\u1ed9t v\\u1ebb ngo\\u00e0i ho\\u00e0n h\\u1ea3o th\\u1eadt ph\\u00f9 h\\u1ee3p v\\u1edbi nhi\\u1ec1u ho\\u00e0n c\\u1ea3nh v\\u00e0 phong c\\u00e1ch \\u0111a d\\u1ea1ng c\\u1ee7a qu\\u00fd kh\\u00e1ch. D\\u00f9 b\\u1ea1n thanh l\\u1ecbch, qu\\u00fd ph\\u00e1i hay tr\\u1ebb trung, n\\u0103ng \\u0111\\u1ed9ng, b\\u1ea1n c\\u0169ng \\u0111\\u1ec1u c\\u00f3 th\\u1ec3 t\\u00ecm \\u0111\\u01b0\\u1ee3c nh\\u1eefng m\\u00f3n \\u0111\\u1ed3 \\u01b0ng \\u00fd tr\\u00ean T-STORE\\r\\nS\\u1ef1 s\\u00e0nh \\u0111i\\u1ec7u v\\u00e0 gout th\\u1ea9m m\\u1ef9 tinh t\\u1ebf c\\u1ee7a qu\\u00fd kh\\u00e1ch c\\u00f2n \\u0111\\u01b0\\u1ee3c th\\u1ec3 hi\\u1ec7n qua s\\u1ef1 l\\u1ef1a ch\\u1ecdn nh\\u1eefng m\\u00f3n \\u0111\\u1ed3 ph\\u1ee5 ki\\u1ec7n c\\u00f3 tr\\u00ean T-STORE. Ch\\u1eafc ch\\u1eafn qu\\u00fd kh\\u00e1ch s\\u1ebd r\\u1ea5t h\\u00e0i l\\u00f2ng.\\r\\n\\u1ede T-STORE, qu\\u00fd kh\\u00e1ch s\\u1ebd c\\u00f3 nh\\u1eefng tr\\u1ea3i nghi\\u1ec7m mua s\\u1eafm v\\u00f4 c\\u00f9ng th\\u00fa v\\u1ecb!","Link1":"","Title2":"Ch\\u01b0\\u01a1ng Tr\\u00ecnh Affiliate","Text2":"B\\u1ea1n c\\u00f3 th\\u1ec3 \\u0111\\u0103ng k\\u00fd tham gia T-Store Affiliate th\\u00f4ng qua h\\u1ec7 th\\u1ed1ng Commission Junction (CJ.com) v\\u00e0 T-Store ghi nh\\u1eadn b\\u1ea3n \\u0111\\u0103ng k\\u00fd, sau \\u0111\\u00f3 s\\u1ebd ti\\u1ebfn h\\u00e0nh li\\u00ean h\\u1ec7 v\\u1edbi b\\u1ea1n \\u0111\\u1ec3 x\\u00fac ti\\u1ebfn c\\u00e1c b\\u01b0\\u1edbc h\\u1ee3p t\\u00e1c ti\\u1ebfp theo. N\\u1ebfu website c\\u1ee7a b\\u1ea1n \\u0111\\u1ea1t doanh s\\u1ed1 cao, T-Store lu\\u00f4n lu\\u00f4n c\\u00f3 nh\\u1eefng m\\u1ee9c th\\u01b0\\u1edfng h\\u1ea5p d\\u1eabn v\\u00e0 ph\\u00f9 h\\u1ee3p t\\u1eeb ch\\u01b0\\u01a1ng tr\\u00ecnh Marketing Affiliate. V\\u1edbi c\\u00e1c s\\u1ea3n ph\\u1ea9m trang ph\\u1ee5c th\\u1eddi trang \\u0111a d\\u1ea1ng nh\\u01b0 \\u0111\\u1ea7m, \\u00e1o ki\\u1ec3u, qu\\u1ea7n n\\u1eef, ch\\u00e2n v\\u00e1y, jumpsuit,\\u2026 cho ph\\u00e1i \\u0111\\u1eb9p v\\u00e0 \\u00e1o polo nam, \\u00e1o ph\\u00f4ng nam, \\u00e1o s\\u01a1 mi nam,\\u2026 cho c\\u00e1nh m\\u00e0y r\\u00e2u t\\u1eeb T-Store, b\\u1ea1n s\\u1ebd d\\u1ec5 d\\u00e0ng c\\u00f3 nhi\\u1ec1u s\\u1ef1 l\\u1ef1a ch\\u1ecdn \\u0111\\u1ec3 qu\\u1ea3ng b\\u00e1 v\\u00e0 ki\\u1ebfm th\\u1eadt nhi\\u1ec1u ti\\u1ec1n th\\u01b0\\u1edfng, t\\u0103ng cao thu nh\\u1eadp c\\u00f9ng v\\u1edbi T-Store Affiliate.","Link2":"","Title3":"Tuy\\u1ec3n D\\u1ee5ng","Text3":"M\\u00f4i tr\\u01b0\\u1eddng l\\u00e0m vi\\u1ec7c t\\u1ea1i T-STORE lu\\u00f4n \\u0111\\u1ec1 cao s\\u1ef1 vui v\\u1ebb, hi\\u1ec7n \\u0111\\u1ea1i v\\u00e0 tr\\u1ebb trung. Khi v\\u1eeba b\\u01b0\\u1edbc v\\u00e0o v\\u0103n ph\\u00f2ng T-STORE, b\\u1ea1n s\\u1ebd c\\u1ea3m nh\\u1eadn ngay ngu\\u1ed3n n\\u0103ng l\\u01b0\\u1ee3ng m\\u1ea1nh m\\u1ebd t\\u1eeb c\\u00e1c nh\\u00e2n t\\u1ed1 tr\\u1ebb \\u0111\\u1ea7y t\\u00e0i n\\u0103ng v\\u00e0 s\\u00e1ng t\\u1ea1o. T\\u1ea5t c\\u1ea3 \\u0111\\u1ec1u \\u0111ang mang chung m\\u1ed9t nhi\\u1ec7t huy\\u1ebft mong mu\\u1ed1n thay \\u0111\\u1ed5i nh\\u1eadn th\\u1ee9c c\\u0169ng nh\\u01b0 c\\u00e1i nh\\u00ecn c\\u1ee7a kh\\u00e1ch h\\u00e0ng trong vi\\u1ec7c mua s\\u1eafm tr\\u1ef1c tuy\\u1ebfn.\\r\\nT\\u1ea1i T-STORE, nh\\u00e2n vi\\u00ean ch\\u00ednh l\\u00e0 nh\\u00e2n t\\u1ed1 ch\\u00ednh t\\u1ea1o n\\u00ean d\\u1ea5u \\u1ea5n c\\u1ee7a c\\u00f4ng ty. V\\u00ec v\\u1eady, ch\\u00fang t\\u00f4i kh\\u00f4ng ng\\u1eebng t\\u00ecm ki\\u1ebfm v\\u00e0 ch\\u00e0o \\u0111\\u00f3n nh\\u1eefng b\\u1ea1n tr\\u1ebb th\\u00f4ng minh, s\\u00e1ng t\\u1ea1o, bi\\u1ebft t\\u1ef1 th\\u00fac \\u0111\\u1ea9y b\\u1ea3n th\\u00e2n v\\u00e0 \\u0111am m\\u00ea h\\u1ecdc h\\u1ecfi v\\u00e0 t\\u00ecm ki\\u1ebfm nh\\u1eefng \\u0111i\\u1ec1u t\\u1ed1t h\\u01a1n. L\\u00e0m vi\\u1ec7c t\\u1ea1i \\u0111\\u00e2y, b\\u1ea1n \\u0111\\u01b0\\u1ee3c khuy\\u1ebfn kh\\u00edch \\u0111\\u00f3ng g\\u00f3p \\u00fd ki\\u1ebfn.\\r\\n\\u1ede T-STORE, ch\\u00fang t\\u00f4i c\\u00f3 c\\u00e1c chuy\\u00ean gia v\\u1ec1 th\\u1eddi trang, v\\u1eadn chuy\\u1ec3n, ph\\u00e2n t\\u00edch d\\u1eef li\\u1ec7u, ti\\u1ebfp th\\u1ecb v\\u00e0 thi\\u1ebft k\\u1ebf, \\u0111\\u01b0\\u1ee3c h\\u01b0\\u1edbng d\\u1eabn b\\u1edfi c\\u00e1c chuy\\u00ean gia t\\u01b0 v\\u1ea5n v\\u1ec1 kinh doanh v\\u00e0 c\\u00f4ng ngh\\u1ec7. \\u0110\\u00e2y l\\u00e0 m\\u1ed9t m\\u00f4i tr\\u01b0\\u1eddng \\u0111a v\\u0103n h\\u00f3a, ch\\u00ednh v\\u00ec th\\u1ebf \\u0111\\u00e3 t\\u1ea1o n\\u00ean m\\u1ed9t m\\u00f4i tr\\u01b0\\u1eddng l\\u00e0m vi\\u1ec7c n\\u0103ng \\u0111\\u1ed9ng v\\u1edbi c\\u00e1c \\u00fd t\\u01b0\\u1edfng s\\u00e1ng t\\u1ea1o \\u0111a d\\u1ea1ng v\\u00e0 phong ph\\u00fa.\\r\\nKhi k\\u1ebft h\\u1ee3p v\\u1edbi nhau, ch\\u00fang t\\u00f4i nh\\u1eadn ra r\\u1eb1ng v\\u1edbi th\\u1ebf m\\u1ea1nh chuy\\u00ean ng\\u00e0nh c\\u1ee7a m\\u1ed7i ng\\u01b0\\u1eddi, t\\u1ea5t c\\u1ea3 c\\u00f9ng chung tay \\u0111\\u01b0a T-STORE tr\\u1edf th\\u00e0nh c\\u00e1i t\\u00ean ph\\u1ed5 bi\\u1ebfn m\\u1ed7i khi ngh\\u0129 \\u0111\\u1ebfn l\\u0129nh v\\u1ef1c mua s\\u1eafm th\\u1eddi trang tr\\u1ef1c tuy\\u1ebfn. V\\u1ec1 qu\\u00e1 tr\\u00ecnh ph\\u00e1t tri\\u1ec3n c\\u00e1c d\\u1ef1 \\u00e1n, ch\\u00fang t\\u00f4i th\\u1ef1c hi\\u1ec7n d\\u1ef1a tr\\u00ean nh\\u1eefng bu\\u1ed5i th\\u1ea3o lu\\u1eadn m\\u1edf, trao \\u0111\\u1ed5i \\u0111\\u00f3ng g\\u00f3p \\u0111\\u1ec3 c\\u00f9ng t\\u00ecm ra nh\\u1eefng \\u00fd t\\u01b0\\u1edfng t\\u00e1o b\\u1ea1o nh\\u1ea5t, \\u0111\\u1ed9c \\u0111\\u00e1o nh\\u1ea5t. V\\u00e0 \\u0111\\u00f3 ch\\u00ednh l\\u00e0 m\\u1ed9t trong nh\\u1eefng y\\u1ebfu t\\u1ed1 l\\u00e0m n\\u00ean s\\u1ef1 th\\u00e0nh c\\u00f4ng c\\u1ee7a T-STORE.","Link3":"","Title4":"H\\u1ee3p T\\u00e1c B\\u00e1n H\\u00e0ng","Text4":"B\\u1ea1n c\\u00f3 mu\\u1ed1n tr\\u1ea3i nghi\\u1ec7m c\\u1ea3m gi\\u00e1c tuy\\u1ec7t v\\u1eddi khi tr\\u1edf th\\u00e0nh \\u0111\\u1ed1i t\\u00e1c c\\u1ee7a T-STORE - Website mua s\\u1eafm th\\u1eddi trang h\\u00e0ng \\u0111\\u1ea7u Vi\\u1ec7t Nam? V\\u1edbi h\\u00ecnh th\\u1ee9c c\\u00f9ng kinh doanh v\\u1edbi T-STORE, \\u0111\\u00e2y l\\u00e0 c\\u01a1 h\\u1ed9i t\\u1ed1t \\u0111\\u1ec3 s\\u1ea3n ph\\u1ea9m c\\u1ee7a b\\u1ea1n \\u0111\\u01b0\\u1ee3c ch\\u00fa \\u00fd v\\u00e0 mua s\\u1eafm b\\u1edfi h\\u00e0ng tr\\u0103m ng\\u00e0n kh\\u00e1ch h\\u00e0ng tr\\u00ean kh\\u1eafp c\\u1ea3 n\\u01b0\\u1edbc th\\u00f4ng qua trang web c\\u1ee7a ch\\u00fang t\\u00f4i.B\\u1ea5t k\\u1ec3 b\\u1ea1n \\u0111ang kinh doanh m\\u1eb7t h\\u00e0ng n\\u00e0o: t\\u1eeb h\\u00e0ng th\\u1ee7 c\\u00f4ng, ph\\u1ee5 ki\\u1ec7n \\u0111\\u1ed9c \\u0111\\u00e1o hay s\\u1ea3n ph\\u1ea9m th\\u1eddi trang t\\u1ef1 thi\\u1ebft k\\u1ebf,...\\u0111\\u1eebng ch\\u1ea7n ch\\u1edd, h\\u00e3y n\\u1eafm b\\u1eaft ngay th\\u1eddi \\u0111i\\u1ec3m v\\u00e0ng v\\u00e0 s\\u1edf h\\u1eefu c\\u1eeda h\\u00e0ng tr\\u1ef1c tuy\\u1ebfn cho ri\\u00eang m\\u00ecnh. B\\u1ea1n kh\\u00f4ng c\\u1ea7n ph\\u1ea3i l\\u00e3ng ph\\u00ed qu\\u00e1 nhi\\u1ec1u ti\\u1ec1n cho vi\\u1ec7c qu\\u1ea3ng c\\u00e1o v\\u00e0 x\\u00e2y d\\u1ef1ng th\\u01b0\\u01a1ng hi\\u1ec7u, v\\u1edbi s\\u1ed1 l\\u01b0\\u1ee3ng truy c\\u1eadp kh\\u1ed5ng l\\u1ed3 tr\\u00ean trang web, ch\\u00fang t\\u00f4i s\\u1ebd gi\\u00fap b\\u1ea1n t\\u00ecm ki\\u1ebfm th\\u1eadt nhi\\u1ec1u kh\\u00e1ch h\\u00e0ng khi b\\u1ea1n tham gia b\\u00e1n h\\u00e0ng c\\u00f9ng T-STORE.","Link4":"","Title5":"\\u0110i\\u1ec1u Kho\\u1ea3n Mua B\\u00e1n","Text5":"Khi \\u0111\\u1eb7t h\\u00e0ng, Qu\\u00fd kh\\u00e1ch ph\\u1ea3i t\\u1ea1o t\\u00e0i kho\\u1ea3n c\\u00e1 nh\\u00e2n tr\\u00ean trang Web, v\\u00e0 Qu\\u00fd kh\\u00e1ch ph\\u1ea3i theo h\\u01b0\\u1edbng d\\u1eabn tr\\u00ean trang Web v\\u1ec1 c\\u00e1ch \\u0111\\u1eb7t h\\u00e0ng v\\u00e0 \\u0111\\u01b0a ra thay \\u0111\\u1ed5i cho nh\\u1eefng \\u0110\\u01a1n h\\u00e0ng k\\u1ebf ti\\u1ebfp tr\\u01b0\\u1edbc khi g\\u1eedi t\\u1edbi trang Web. \\u0110\\u1ed3ng th\\u1eddi Qu\\u00fd kh\\u00e1chc\\u00f3 nhi\\u1ec7m v\\u1ee5 c\\u1eadp nh\\u1eadt th\\u00f4ng tin c\\u1ee7a m\\u00ecnh th\\u01b0\\u1eddng xuy\\u00ean b\\u1eb1ng c\\u00e1ch th\\u00f4ng b\\u00e1o cho ch\\u00fang t\\u00f4i b\\u1ea5t k\\u1ef3 thay \\u0111\\u1ed5i n\\u00e0o, b\\u1eb1ng c\\u00e1ch s\\u1eed d\\u1ee5ng nh\\u1eefng m\\u1ee5c li\\u00ean quan c\\u1ee7a trang Web.\\r\\nM\\u1eb7c d\\u00f9 ch\\u00fang t\\u00f4i c\\u1ed1 g\\u1eafng t\\u1ed1t nh\\u1ea5t \\u0111\\u1ec3 b\\u1ea3o \\u0111\\u1ea3m r\\u1eb1ng t\\u1ea5t c\\u1ea3 c\\u00e1c chi ti\\u1ebft, mi\\u00eau t\\u1ea3 v\\u00e0 gi\\u00e1 hi\\u1ec3n th\\u1ecb tr\\u00ean trang Web l\\u00e0 ch\\u00ednh x\\u00e1c, \\u0111\\u00f4i khi s\\u1ebd c\\u00f3 m\\u1ed9t s\\u1ed1 tr\\u01b0\\u1eddng h\\u1ee3p b\\u1ecb l\\u1ed7i. N\\u1ebfu ch\\u00fang t\\u00f4i ph\\u00e1t hi\\u1ec7n l\\u1ed7i v\\u1ec1 gi\\u00e1 c\\u1ee7a b\\u1ea5t k\\u1ef3 S\\u1ea3n ph\\u1ea9m n\\u00e0o m\\u00e0 Qu\\u00fd kh\\u00e1ch \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng ch\\u00fang t\\u00f4i s\\u1ebd th\\u00f4ng b\\u00e1o cho Qu\\u00fd kh\\u00e1ch trong th\\u1eddi gian s\\u1edbm nh\\u1ea5t c\\u00f3 th\\u1ec3 v\\u00e0 g\\u1eedi \\u0111\\u1ebfn Quy kh\\u00e1ch l\\u1ef1a ch\\u1ecdn \\u0111\\u1ec3 x\\u00e1c nh\\u1eadn l\\u1ea1i \\u0110\\u01a1n h\\u00e0ng v\\u1edbi gi\\u00e1 ch\\u00ednh x\\u00e1c hay l\\u00e0 h\\u1ee7y \\u0110\\u01a1n h\\u00e0ng. N\\u1ebfu ch\\u00fang t\\u00f4i kh\\u00f4ng th\\u1ec3 li\\u00ean l\\u1ea1c v\\u1edbi Qu\\u00fd kh\\u00e1ch, ch\\u00fang t\\u00f4i s\\u1ebd t\\u1ef1 \\u0111\\u1ed9ng h\\u1ee7y \\u0110\\u01a1n h\\u00e0ng. N\\u1ebfu Qu\\u00fd kh\\u00e1ch h\\u1ee7y \\u0110\\u01a1n h\\u00e0ng tr\\u01b0\\u1edbc khi ch\\u00fang t\\u00f4i v\\u1eadn chuy\\u1ec3n \\u0111\\u1ebfn cho Qu\\u00fd kh\\u00e1ch, v\\u00e0 Qu\\u00fd kh\\u00e1ch \\u0111\\u00e3 thanh to\\u00e1n cho \\u0110\\u01a1n h\\u00e0ng tr\\u01b0\\u1edbc \\u0111\\u00f3, ch\\u00fang t\\u00f4i s\\u1ebd ho\\u00e0n l\\u1ea1i ti\\u1ec1n \\u0111\\u00e3 thanh to\\u00e1n cho Qu\\u00fd kh\\u00e1ch.\\r\\nCh\\u00fang t\\u00f4i c\\u00f3 thu h\\u1ed3i b\\u1ea5t k\\u1ef3 S\\u1ea3n ph\\u1ea9m n\\u00e0o tr\\u00ean trang Web t\\u1ea1i b\\u1ea5t k\\u1ef3 th\\u1eddi \\u0111i\\u1ec3m n\\u00e0o v\\u00e0\\/ ho\\u1eb7c th\\u00e1o b\\u1ecf ho\\u1eb7c ch\\u1ec9nh s\\u1eeda b\\u1ea5t k\\u1ef3 t\\u00e0i li\\u1ec7u ho\\u1eb7c n\\u1ed9i dung n\\u00e0o tr\\u00ean trang Web. Ch\\u00fang t\\u00f4i s\\u1ebd c\\u1ed1 g\\u1eafng \\u0111\\u1ec3 lu\\u00f4n c\\u00f3 th\\u1ec3 th\\u1ef1c hi\\u1ec7n t\\u1ea5t c\\u1ea3 \\u0110\\u01a1n h\\u00e0ng nh\\u01b0ng c\\u00f3 th\\u1ec3 s\\u1ebd c\\u00f3 nh\\u1eefng tr\\u01b0\\u1eddng h\\u1ee3p ngo\\u1ea1i l\\u1ec7 m\\u00e0 ch\\u00fang t\\u00f4i c\\u1ea7n ph\\u1ea3i t\\u1eeb ch\\u1ed1i th\\u1ef1c hi\\u1ec7n \\u0110\\u01a1n h\\u00e0ng sau khi ch\\u00fang t\\u00f4i \\u0111\\u00e3 g\\u1eedi X\\u00e1c Nh\\u1eadn \\u0110\\u01a1n H\\u00e0ng, v\\u00e0 \\u0111\\u1ed3ng th\\u1eddi \\u0111\\u00f3 c\\u0169ng l\\u00e0 quy\\u1ec1n l\\u1ee3i c\\u1ee7a ch\\u00fang t\\u00f4i \\u0111\\u1ec3 th\\u1ef1c hi\\u1ec7n vi\\u1ec7c \\u0111\\u00f3 v\\u00e0o b\\u1ea5t k\\u1ef3 th\\u1eddi \\u0111i\\u1ec3m n\\u00e0o, t\\u00f9y theo quy\\u1ebft \\u0111\\u1ecbnh c\\u1ee7a ch\\u00fang t\\u00f4i.","Link5":"","Title6":"Ch\\u00ednh S\\u00e1ch B\\u1ea3o M\\u1eadt","Text6":"B\\u1ea3o v\\u1ec7 d\\u1eef li\\u1ec7u l\\u00e0 v\\u1ea5n \\u0111\\u1ec1 c\\u1ee7a s\\u1ef1 tin t\\u01b0\\u1edfng v\\u00e0 b\\u1ea3o m\\u1eadt danh t\\u00ednh c\\u1ee7a qu\\u00fd kh\\u00e1ch v\\u00f4 c\\u00f9ng quan tr\\u1ecdng v\\u1edbi ch\\u00fang t\\u00f4i. V\\u00ec th\\u1ebf, ch\\u00fang t\\u00f4i ch\\u1ec9 s\\u1ebd s\\u1eed d\\u1ee5ng t\\u00ean v\\u00e0 m\\u1ed9t s\\u1ed1 th\\u00f4ng tin kh\\u00e1c c\\u1ee7a qu\\u00fd kh\\u00e1ch theo c\\u00e1ch \\u0111\\u01b0\\u1ee3c \\u0111\\u1ec1 ra trong Ch\\u00ednh s\\u00e1ch B\\u1ea3o m\\u1eadt n\\u00e0y. Ch\\u00fang t\\u00f4i ch\\u1ec9 s\\u1ebd thu th\\u1eadp nh\\u1eefng th\\u00f4ng tin c\\u1ea7n thi\\u1ebft v\\u00e0 c\\u00f3 li\\u00ean quan \\u0111\\u1ebfn giao d\\u1ecbch gi\\u1eefa ch\\u00fang t\\u00f4i v\\u00e0 qu\\u00fd kh\\u00e1ch.\\r\\nCh\\u00fang t\\u00f4i ch\\u1ec9 gi\\u1eef th\\u00f4ng tin c\\u1ee7a qu\\u00fd kh\\u00e1ch trong th\\u1eddi gian lu\\u1eadt ph\\u00e1p y\\u00eau c\\u1ea7u ho\\u1eb7c cho m\\u1ee5c \\u0111\\u00edch m\\u00e0 th\\u00f4ng tin \\u0111\\u00f3 \\u0111\\u01b0\\u1ee3c thu th\\u1eadp.\\r\\nQu\\u00fd kh\\u00e1ch c\\u00f3 th\\u1ec3 gh\\u00e9 th\\u0103m trang web m\\u00e0 kh\\u00f4ng c\\u1ea7n ph\\u1ea3i cung c\\u1ea5p b\\u1ea5t k\\u1ef3 th\\u00f4ng tin c\\u00e1 nh\\u00e2n n\\u00e0o. Khi vi\\u1ebfng th\\u0103m trang web, qu\\u00fd kh\\u00e1ch s\\u1ebd lu\\u00f4n \\u1edf trong t\\u00ecnh tr\\u1ea1ng v\\u00f4 danh tr\\u1eeb khi qu\\u00fd kh\\u00e1ch c\\u00f3 t\\u00e0i kho\\u1ea3n tr\\u00ean trang web v\\u00e0 \\u0111\\u0103ng nh\\u1eadp v\\u00e0o b\\u1eb1ng t\\u00ean v\\u00e0 m\\u1eadt kh\\u1ea9u c\\u1ee7a m\\u00ecnh.","Link6":"","Title7":"Quy Ch\\u1ebf Qu\\u1ea3n L\\u00fd","Text7":"T-Store l\\u00e0 S\\u00e0n giao d\\u1ecbch TM\\u0110T v\\u00e0 l\\u00e0 Website khuy\\u1ebfn m\\u1ea1i tr\\u1ef1c tuy\\u1ebfn ph\\u1ee5c v\\u1ee5 th\\u01b0\\u01a1ng nh\\u00e2n, t\\u1ed5 ch\\u1ee9c, c\\u00e1c nh\\u00e2n c\\u00f3 nhu c\\u1ea7u gi\\u1edbi thi\\u1ec7u, mua b\\u00e1n tr\\u1ef1c tuy\\u1ebfn, bao g\\u1ed3m: \\u0111\\u0103ng tin rao v\\u1eb7t tr\\u1ef1c tuy\\u1ebfn, m\\u1edf c\\u00e1c gian h\\u00e0ng \\u0111\\u1ec3 tr\\u01b0ng b\\u00e0y, gi\\u1edbi thi\\u1ec7u h\\u00e0ng h\\u00f3a, d\\u1ecbch v\\u1ee5 v\\u00e0 th\\u1ef1c hi\\u1ec7n khuy\\u1ebfn m\\u1ea1i b\\u1eb1ng c\\u00e1c h\\u00ecnh th\\u1ee9c phi\\u1ebfu mua h\\u00e0ng gi\\u1ea3m gi\\u00e1 (voucher), b\\u00e1n h\\u00e0ng v\\u1edbi gi\\u00e1 th\\u1ea5p h\\u01a1n gi\\u00e1 b\\u00e1n h\\u00e0ng tr\\u01b0\\u1edbc \\u0111\\u00f3 \\u0111\\u01b0\\u1ee3c \\u00e1p d\\u1ee5ng trong m\\u1ed9t th\\u1eddi gian nh\\u1ea5t \\u0111\\u1ecbnh ho\\u1eb7c v\\u1edbi m\\u1ed9t s\\u1ed1 l\\u01b0\\u1ee3ng kh\\u00e1ch h\\u00e0ng nh\\u1ea5t \\u0111\\u1ecbnh.\\r\\nS\\u1ee9 m\\u1ec7nh m\\u00e0 T-Store h\\u01b0\\u1edbng t\\u1edbi l\\u00e0 s\\u1ebd tr\\u1edf th\\u00e0nh S\\u00e0n giao d\\u1ecbch TM\\u0110T v\\u00e0 Website khuy\\u1ebfn m\\u1ea1i tr\\u1ef1c tuy\\u1ebfn tin c\\u1eady trong th\\u1ecb tr\\u01b0\\u1eddng th\\u01b0\\u01a1ng m\\u1ea1i \\u0111i\\u1ec7n t\\u1eed v\\u00e0 l\\u00e0 c\\u1ea7u n\\u1ed1i th\\u01b0\\u01a1ng m\\u1ea1i gi\\u1eefa nh\\u00e0 cung c\\u1ea5p d\\u1ecbch v\\u1ee5 v\\u1ec1 s\\u00e0n giao d\\u1ecbch th\\u01b0\\u01a1ng m\\u1ea1i \\u0111i\\u1ec7n t\\u1eed v\\u00e0 khuy\\u1ebfn m\\u1ea1i \\u0111\\u1ebfn v\\u1edbi th\\u00e0nh vi\\u00ean.","Link7":"","Title8":"","Text8":"","Link8":"","Title9":"","Text9":"","Link9":"","Title10":"","Text10":"","Link10":"","Title11":"","Text11":"","Link11":"","Title12":"","Text12":"","Link12":"","Title13":"","Text13":"","Link13":"","Title14":"","Text14":"","Link14":"","Title15":"","Text15":"","Link15":"","Title16":"","Text16":"","Link16":"","Title17":"","Text17":"","Link17":"","Title18":"","Text18":"","Link18":"","Title19":"","Text19":"","Link19":"","Title20":"","Text20":"","Link20":"","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(101, 73, 'Về T-Store', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_je_tabs', 1, 0, '{"jQuery":"0","tabsAnim":"1","fontStyle":"Open+Sans","tabBg":"#007599","tabText":"#FFFFFF","Title1":"V\\u1ec1 T-Store","Text1":"Ch\\u00e0o m\\u1eebng qu\\u00fd kh\\u00e1ch \\u0111\\u1ebfn v\\u1edbi T-STORE, web mua s\\u1eafm th\\u1eddi trang t\\u1ed1t nh\\u1ea5t Vi\\u1ec7t Nam.\\r\\nT-STORE h\\u00e2n h\\u1ea1nh mang \\u0111\\u1ebfn cho b\\u1ea1n m\\u1ed9t b\\u1ed9 s\\u01b0u t\\u1eadp th\\u1eddi trang kh\\u1ed5ng l\\u1ed3 t\\u1eeb nh\\u1eefng th\\u01b0\\u01a1ng hi\\u1ec7u n\\u1ed5i ti\\u1ebfng th\\u1ebf gi\\u1edbi v\\u00e0 Vi\\u1ec7t Nam. T\\u1ea5t c\\u1ea3 c\\u00e1c s\\u1ea3n ph\\u1ea9m \\u0111\\u1ec1u \\u0111\\u01b0\\u1ee3cT-STORE tuy\\u1ec3n l\\u1ef1a m\\u1ed9t c\\u00e1ch k\\u1ef9 l\\u01b0\\u1ee1ng sao cho th\\u1eadt h\\u1ee3p v\\u1edbi phong c\\u00e1ch \\u00c1 \\u0110\\u00f4ng m\\u00e0 c\\u0169ng b\\u1eaft nh\\u1ecbp c\\u00f9ng v\\u1edbi nh\\u1eefng xu h\\u01b0\\u1edbng m\\u1edbi nh\\u1ea5t \\u0111ang th\\u1ecbnh h\\u00e0nh kh\\u1eafp th\\u1ebf gi\\u1edbi.\\r\\nTrong l\\u0129nh v\\u1ef1c th\\u1eddi trang, T-STORE t\\u1ef1 h\\u00e0o v\\u1ec1 \\u0111\\u1ed9i ng\\u0169 stylist chuy\\u00ean nghi\\u1ec7p v\\u00e0 t\\u1eadn t\\u00ecnh gi\\u00fap ng\\u01b0\\u1eddi mua c\\u00f3 \\u0111\\u01b0\\u1ee3c nh\\u1eefng g\\u1ee3i \\u00fd s\\u00e1ng t\\u1ea1o cho m\\u1ed9t v\\u1ebb ngo\\u00e0i ho\\u00e0n h\\u1ea3o th\\u1eadt ph\\u00f9 h\\u1ee3p v\\u1edbi nhi\\u1ec1u ho\\u00e0n c\\u1ea3nh v\\u00e0 phong c\\u00e1ch \\u0111a d\\u1ea1ng c\\u1ee7a qu\\u00fd kh\\u00e1ch. D\\u00f9 b\\u1ea1n thanh l\\u1ecbch, qu\\u00fd ph\\u00e1i hay tr\\u1ebb trung, n\\u0103ng \\u0111\\u1ed9ng, b\\u1ea1n c\\u0169ng \\u0111\\u1ec1u c\\u00f3 th\\u1ec3 t\\u00ecm \\u0111\\u01b0\\u1ee3c nh\\u1eefng m\\u00f3n \\u0111\\u1ed3 \\u01b0ng \\u00fd tr\\u00ean T-STORE\\r\\nS\\u1ef1 s\\u00e0nh \\u0111i\\u1ec7u v\\u00e0 gout th\\u1ea9m m\\u1ef9 tinh t\\u1ebf c\\u1ee7a qu\\u00fd kh\\u00e1ch c\\u00f2n \\u0111\\u01b0\\u1ee3c th\\u1ec3 hi\\u1ec7n qua s\\u1ef1 l\\u1ef1a ch\\u1ecdn nh\\u1eefng m\\u00f3n \\u0111\\u1ed3 ph\\u1ee5 ki\\u1ec7n c\\u00f3 tr\\u00ean T-STORE. Ch\\u1eafc ch\\u1eafn qu\\u00fd kh\\u00e1ch s\\u1ebd r\\u1ea5t h\\u00e0i l\\u00f2ng.\\r\\n\\u1ede T-STORE, qu\\u00fd kh\\u00e1ch s\\u1ebd c\\u00f3 nh\\u1eefng tr\\u1ea3i nghi\\u1ec7m mua s\\u1eafm v\\u00f4 c\\u00f9ng th\\u00fa v\\u1ecb!","Title2":"Ch\\u0103m s\\u00f3c kh\\u00e1ch h\\u00e0ng","Text2":"T\\u1ed4NG \\u0110\\u00c0I CH\\u0102M S\\u00d3C KH\\u00c1CH H\\u00c0NG 1900 1007  \\r\\n\\u0110\\u1eb6T H\\u00c0NG QUA \\u0110I\\u1ec6N THO\\u1ea0I 0948278451 (Th\\u1ee9 2 - CN: 7h - 21h) \\r\\nTrung t\\u00e2m DVKH: T\\u1ea7ng 10, T\\u00f2a nh\\u00e0 \\u0110\\u1ee9c Ti\\u1ebfn. S\\u1ed1 99 Tr\\u1ea7n Ph\\u00fa, P. L\\u1ed9c Th\\u1ecd, TP. Nha Trang, t\\u1ec9nh Kh\\u00e1nh H\\u00f2a. (Th\\u1ee9 2 - th\\u1ee9 7: 9h - 18h)","Title3":"Tuy\\u1ec3n D\\u1ee5ng","Text3":"M\\u00f4i tr\\u01b0\\u1eddng l\\u00e0m vi\\u1ec7c t\\u1ea1i T-STORE lu\\u00f4n \\u0111\\u1ec1 cao s\\u1ef1 vui v\\u1ebb, hi\\u1ec7n \\u0111\\u1ea1i v\\u00e0 tr\\u1ebb trung. Khi v\\u1eeba b\\u01b0\\u1edbc v\\u00e0o v\\u0103n ph\\u00f2ng T-STORE, b\\u1ea1n s\\u1ebd c\\u1ea3m nh\\u1eadn ngay ngu\\u1ed3n n\\u0103ng l\\u01b0\\u1ee3ng m\\u1ea1nh m\\u1ebd t\\u1eeb c\\u00e1c nh\\u00e2n t\\u1ed1 tr\\u1ebb \\u0111\\u1ea7y t\\u00e0i n\\u0103ng v\\u00e0 s\\u00e1ng t\\u1ea1o. T\\u1ea5t c\\u1ea3 \\u0111\\u1ec1u \\u0111ang mang chung m\\u1ed9t nhi\\u1ec7t huy\\u1ebft mong mu\\u1ed1n thay \\u0111\\u1ed5i nh\\u1eadn th\\u1ee9c c\\u0169ng nh\\u01b0 c\\u00e1i nh\\u00ecn c\\u1ee7a kh\\u00e1ch h\\u00e0ng trong vi\\u1ec7c mua s\\u1eafm tr\\u1ef1c tuy\\u1ebfn. T\\u1ea1i T-STORE, nh\\u00e2n vi\\u00ean ch\\u00ednh l\\u00e0 nh\\u00e2n t\\u1ed1 ch\\u00ednh t\\u1ea1o n\\u00ean d\\u1ea5u \\u1ea5n c\\u1ee7a c\\u00f4ng ty. V\\u00ec v\\u1eady, ch\\u00fang t\\u00f4i kh\\u00f4ng ng\\u1eebng t\\u00ecm ki\\u1ebfm v\\u00e0 ch\\u00e0o \\u0111\\u00f3n nh\\u1eefng b\\u1ea1n tr\\u1ebb th\\u00f4ng minh, s\\u00e1ng t\\u1ea1o, bi\\u1ebft t\\u1ef1 th\\u00fac \\u0111\\u1ea9y b\\u1ea3n th\\u00e2n v\\u00e0 \\u0111am m\\u00ea h\\u1ecdc h\\u1ecfi v\\u00e0 t\\u00ecm ki\\u1ebfm nh\\u1eefng \\u0111i\\u1ec1u t\\u1ed1t h\\u01a1n. \\u1ede T-STORE, ch\\u00fang t\\u00f4i c\\u00f3 c\\u00e1c chuy\\u00ean gia v\\u1ec1 th\\u1eddi trang, v\\u1eadn chuy\\u1ec3n, ph\\u00e2n t\\u00edch d\\u1eef li\\u1ec7u, ti\\u1ebfp th\\u1ecb v\\u00e0 thi\\u1ebft k\\u1ebf, \\u0111\\u01b0\\u1ee3c h\\u01b0\\u1edbng d\\u1eabn b\\u1edfi c\\u00e1c chuy\\u00ean gia t\\u01b0 v\\u1ea5n v\\u1ec1 kinh doanh v\\u00e0 c\\u00f4ng ngh\\u1ec7. \\u0110\\u00e2y l\\u00e0 m\\u1ed9t m\\u00f4i tr\\u01b0\\u1eddng \\u0111a v\\u0103n h\\u00f3a, ch\\u00ednh v\\u00ec th\\u1ebf \\u0111\\u00e3 t\\u1ea1o n\\u00ean m\\u1ed9t m\\u00f4i tr\\u01b0\\u1eddng l\\u00e0m vi\\u1ec7c n\\u0103ng \\u0111\\u1ed9ng v\\u1edbi c\\u00e1c \\u00fd t\\u01b0\\u1edfng s\\u00e1ng t\\u1ea1o \\u0111a d\\u1ea1ng v\\u00e0 phong ph\\u00fa.","Title4":"H\\u1ee3p T\\u00e1c","Text4":"B\\u1ea1n c\\u00f3 mu\\u1ed1n tr\\u1ea3i nghi\\u1ec7m c\\u1ea3m gi\\u00e1c tuy\\u1ec7t v\\u1eddi khi tr\\u1edf th\\u00e0nh \\u0111\\u1ed1i t\\u00e1c c\\u1ee7a T-STORE - Website mua s\\u1eafm th\\u1eddi trang h\\u00e0ng \\u0111\\u1ea7u Vi\\u1ec7t Nam? V\\u1edbi h\\u00ecnh th\\u1ee9c c\\u00f9ng kinh doanh v\\u1edbi T-STORE, \\u0111\\u00e2y l\\u00e0 c\\u01a1 h\\u1ed9i t\\u1ed1t \\u0111\\u1ec3 s\\u1ea3n ph\\u1ea9m c\\u1ee7a b\\u1ea1n \\u0111\\u01b0\\u1ee3c ch\\u00fa \\u00fd v\\u00e0 mua s\\u1eafm b\\u1edfi h\\u00e0ng tr\\u0103m ng\\u00e0n kh\\u00e1ch h\\u00e0ng tr\\u00ean kh\\u1eafp c\\u1ea3 n\\u01b0\\u1edbc th\\u00f4ng qua trang web c\\u1ee7a ch\\u00fang t\\u00f4i.B\\u1ea5t k\\u1ec3 b\\u1ea1n \\u0111ang kinh doanh m\\u1eb7t h\\u00e0ng n\\u00e0o: t\\u1eeb h\\u00e0ng th\\u1ee7 c\\u00f4ng, ph\\u1ee5 ki\\u1ec7n \\u0111\\u1ed9c \\u0111\\u00e1o hay s\\u1ea3n ph\\u1ea9m th\\u1eddi trang t\\u1ef1 thi\\u1ebft k\\u1ebf,...\\u0111\\u1eebng ch\\u1ea7n ch\\u1edd, h\\u00e3y n\\u1eafm b\\u1eaft ngay th\\u1eddi \\u0111i\\u1ec3m v\\u00e0ng v\\u00e0 s\\u1edf h\\u1eefu c\\u1eeda h\\u00e0ng tr\\u1ef1c tuy\\u1ebfn cho ri\\u00eang m\\u00ecnh. B\\u1ea1n kh\\u00f4ng c\\u1ea7n ph\\u1ea3i l\\u00e3ng ph\\u00ed qu\\u00e1 nhi\\u1ec1u ti\\u1ec1n cho vi\\u1ec7c qu\\u1ea3ng c\\u00e1o v\\u00e0 x\\u00e2y d\\u1ef1ng th\\u01b0\\u01a1ng hi\\u1ec7u, v\\u1edbi s\\u1ed1 l\\u01b0\\u1ee3ng truy c\\u1eadp kh\\u1ed5ng l\\u1ed3 tr\\u00ean trang web, ch\\u00fang t\\u00f4i s\\u1ebd gi\\u00fap b\\u1ea1n t\\u00ecm ki\\u1ebfm th\\u1eadt nhi\\u1ec1u kh\\u00e1ch h\\u00e0ng khi b\\u1ea1n tham gia b\\u00e1n h\\u00e0ng c\\u00f9ng T-STORE.","Title5":"\\u0110i\\u1ec1u Kho\\u1ea3n","Text5":"Khi \\u0111\\u1eb7t h\\u00e0ng, Qu\\u00fd kh\\u00e1ch ph\\u1ea3i t\\u1ea1o t\\u00e0i kho\\u1ea3n c\\u00e1 nh\\u00e2n tr\\u00ean trang Web, v\\u00e0 Qu\\u00fd kh\\u00e1ch ph\\u1ea3i theo h\\u01b0\\u1edbng d\\u1eabn tr\\u00ean trang Web v\\u1ec1 c\\u00e1ch \\u0111\\u1eb7t h\\u00e0ng v\\u00e0 \\u0111\\u01b0a ra thay \\u0111\\u1ed5i cho nh\\u1eefng \\u0110\\u01a1n h\\u00e0ng k\\u1ebf ti\\u1ebfp tr\\u01b0\\u1edbc khi g\\u1eedi t\\u1edbi trang Web. M\\u1eb7c d\\u00f9 ch\\u00fang t\\u00f4i c\\u1ed1 g\\u1eafng t\\u1ed1t nh\\u1ea5t \\u0111\\u1ec3 b\\u1ea3o \\u0111\\u1ea3m r\\u1eb1ng t\\u1ea5t c\\u1ea3 c\\u00e1c chi ti\\u1ebft, mi\\u00eau t\\u1ea3 v\\u00e0 gi\\u00e1 hi\\u1ec3n th\\u1ecb tr\\u00ean trang Web l\\u00e0 ch\\u00ednh x\\u00e1c, \\u0111\\u00f4i khi s\\u1ebd c\\u00f3 m\\u1ed9t s\\u1ed1 tr\\u01b0\\u1eddng h\\u1ee3p b\\u1ecb l\\u1ed7i. N\\u1ebfu ch\\u00fang t\\u00f4i ph\\u00e1t hi\\u1ec7n l\\u1ed7i v\\u1ec1 gi\\u00e1 c\\u1ee7a b\\u1ea5t k\\u1ef3 S\\u1ea3n ph\\u1ea9m n\\u00e0o m\\u00e0 Qu\\u00fd kh\\u00e1ch \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng ch\\u00fang t\\u00f4i s\\u1ebd th\\u00f4ng b\\u00e1o cho Qu\\u00fd kh\\u00e1ch trong th\\u1eddi gian s\\u1edbm nh\\u1ea5t c\\u00f3 th\\u1ec3 v\\u00e0 g\\u1eedi \\u0111\\u1ebfn Quy kh\\u00e1ch l\\u1ef1a ch\\u1ecdn \\u0111\\u1ec3 x\\u00e1c nh\\u1eadn l\\u1ea1i \\u0110\\u01a1n h\\u00e0ng v\\u1edbi gi\\u00e1 ch\\u00ednh x\\u00e1c hay l\\u00e0 h\\u1ee7y \\u0110\\u01a1n h\\u00e0ng. N\\u1ebfu ch\\u00fang t\\u00f4i kh\\u00f4ng th\\u1ec3 li\\u00ean l\\u1ea1c v\\u1edbi Qu\\u00fd kh\\u00e1ch, ch\\u00fang t\\u00f4i s\\u1ebd t\\u1ef1 \\u0111\\u1ed9ng h\\u1ee7y \\u0110\\u01a1n h\\u00e0ng. N\\u1ebfu Qu\\u00fd kh\\u00e1ch h\\u1ee7y \\u0110\\u01a1n h\\u00e0ng tr\\u01b0\\u1edbc khi ch\\u00fang t\\u00f4i v\\u1eadn chuy\\u1ec3n \\u0111\\u1ebfn cho Qu\\u00fd kh\\u00e1ch, v\\u00e0 Qu\\u00fd kh\\u00e1ch \\u0111\\u00e3 thanh to\\u00e1n cho \\u0110\\u01a1n h\\u00e0ng tr\\u01b0\\u1edbc \\u0111\\u00f3, ch\\u00fang t\\u00f4i s\\u1ebd ho\\u00e0n l\\u1ea1i ti\\u1ec1n \\u0111\\u00e3 thanh to\\u00e1n cho Qu\\u00fd kh\\u00e1ch.","Title6":"Ch\\u00ednh S\\u00e1ch","Text6":"B\\u1ea3o v\\u1ec7 d\\u1eef li\\u1ec7u l\\u00e0 v\\u1ea5n \\u0111\\u1ec1 c\\u1ee7a s\\u1ef1 tin t\\u01b0\\u1edfng v\\u00e0 b\\u1ea3o m\\u1eadt danh t\\u00ednh c\\u1ee7a qu\\u00fd kh\\u00e1ch v\\u00f4 c\\u00f9ng quan tr\\u1ecdng v\\u1edbi ch\\u00fang t\\u00f4i. V\\u00ec th\\u1ebf, ch\\u00fang t\\u00f4i ch\\u1ec9 s\\u1ebd s\\u1eed d\\u1ee5ng t\\u00ean v\\u00e0 m\\u1ed9t s\\u1ed1 th\\u00f4ng tin kh\\u00e1c c\\u1ee7a qu\\u00fd kh\\u00e1ch theo c\\u00e1ch \\u0111\\u01b0\\u1ee3c \\u0111\\u1ec1 ra trong Ch\\u00ednh s\\u00e1ch B\\u1ea3o m\\u1eadt n\\u00e0y. Ch\\u00fang t\\u00f4i ch\\u1ec9 s\\u1ebd thu th\\u1eadp nh\\u1eefng th\\u00f4ng tin c\\u1ea7n thi\\u1ebft v\\u00e0 c\\u00f3 li\\u00ean quan \\u0111\\u1ebfn giao d\\u1ecbch gi\\u1eefa ch\\u00fang t\\u00f4i v\\u00e0 qu\\u00fd kh\\u00e1ch.\\r\\nCh\\u00fang t\\u00f4i ch\\u1ec9 gi\\u1eef th\\u00f4ng tin c\\u1ee7a qu\\u00fd kh\\u00e1ch trong th\\u1eddi gian lu\\u1eadt ph\\u00e1p y\\u00eau c\\u1ea7u ho\\u1eb7c cho m\\u1ee5c \\u0111\\u00edch m\\u00e0 th\\u00f4ng tin \\u0111\\u00f3 \\u0111\\u01b0\\u1ee3c thu th\\u1eadp.\\r\\nQu\\u00fd kh\\u00e1ch c\\u00f3 th\\u1ec3 gh\\u00e9 th\\u0103m trang web m\\u00e0 kh\\u00f4ng c\\u1ea7n ph\\u1ea3i cung c\\u1ea5p b\\u1ea5t k\\u1ef3 th\\u00f4ng tin c\\u00e1 nh\\u00e2n n\\u00e0o. Khi vi\\u1ebfng th\\u0103m trang web, qu\\u00fd kh\\u00e1ch s\\u1ebd lu\\u00f4n \\u1edf trong t\\u00ecnh tr\\u1ea1ng v\\u00f4 danh tr\\u1eeb khi qu\\u00fd kh\\u00e1ch c\\u00f3 t\\u00e0i kho\\u1ea3n tr\\u00ean trang web v\\u00e0 \\u0111\\u0103ng nh\\u1eadp v\\u00e0o b\\u1eb1ng t\\u00ean v\\u00e0 m\\u1eadt kh\\u1ea9u c\\u1ee7a m\\u00ecnh.","Title7":"Quy Ch\\u1ebf","Text7":"T-Store l\\u00e0 S\\u00e0n giao d\\u1ecbch TM\\u0110T v\\u00e0 l\\u00e0 Website khuy\\u1ebfn m\\u1ea1i tr\\u1ef1c tuy\\u1ebfn ph\\u1ee5c v\\u1ee5 th\\u01b0\\u01a1ng nh\\u00e2n, t\\u1ed5 ch\\u1ee9c, c\\u00e1c nh\\u00e2n c\\u00f3 nhu c\\u1ea7u gi\\u1edbi thi\\u1ec7u, mua b\\u00e1n tr\\u1ef1c tuy\\u1ebfn, bao g\\u1ed3m: \\u0111\\u0103ng tin rao v\\u1eb7t tr\\u1ef1c tuy\\u1ebfn, m\\u1edf c\\u00e1c gian h\\u00e0ng \\u0111\\u1ec3 tr\\u01b0ng b\\u00e0y, gi\\u1edbi thi\\u1ec7u h\\u00e0ng h\\u00f3a, d\\u1ecbch v\\u1ee5 v\\u00e0 th\\u1ef1c hi\\u1ec7n khuy\\u1ebfn m\\u1ea1i b\\u1eb1ng c\\u00e1c h\\u00ecnh th\\u1ee9c phi\\u1ebfu mua h\\u00e0ng gi\\u1ea3m gi\\u00e1 (voucher), b\\u00e1n h\\u00e0ng v\\u1edbi gi\\u00e1 th\\u1ea5p h\\u01a1n gi\\u00e1 b\\u00e1n h\\u00e0ng tr\\u01b0\\u1edbc \\u0111\\u00f3 \\u0111\\u01b0\\u1ee3c \\u00e1p d\\u1ee5ng trong m\\u1ed9t th\\u1eddi gian nh\\u1ea5t \\u0111\\u1ecbnh ho\\u1eb7c v\\u1edbi m\\u1ed9t s\\u1ed1 l\\u01b0\\u1ee3ng kh\\u00e1ch h\\u00e0ng nh\\u1ea5t \\u0111\\u1ecbnh.\\r\\nS\\u1ee9 m\\u1ec7nh m\\u00e0 T-Store h\\u01b0\\u1edbng t\\u1edbi l\\u00e0 s\\u1ebd tr\\u1edf th\\u00e0nh S\\u00e0n giao d\\u1ecbch TM\\u0110T v\\u00e0 Website khuy\\u1ebfn m\\u1ea1i tr\\u1ef1c tuy\\u1ebfn tin c\\u1eady trong th\\u1ecb tr\\u01b0\\u1eddng th\\u01b0\\u01a1ng m\\u1ea1i \\u0111i\\u1ec7n t\\u1eed v\\u00e0 l\\u00e0 c\\u1ea7u n\\u1ed1i th\\u01b0\\u01a1ng m\\u1ea1i gi\\u1eefa nh\\u00e0 cung c\\u1ea5p d\\u1ecbch v\\u1ee5 v\\u1ec1 s\\u00e0n giao d\\u1ecbch th\\u01b0\\u01a1ng m\\u1ea1i \\u0111i\\u1ec7n t\\u1eed v\\u00e0 khuy\\u1ebfn m\\u1ea1i \\u0111\\u1ebfn v\\u1edbi th\\u00e0nh vi\\u00ean.","Title8":"","Text8":"","Title9":"","Text9":"","Title10":"","Text10":"","Title11":"","Text11":"","Title12":"","Text12":"","Title13":"","Text13":"","Title14":"","Text14":"","Title15":"","Text15":"","Title16":"","Text16":"","Title17":"","Text17":"","Title18":"","Text18":"","Title19":"","Text19":"","Title20":"","Text20":"","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(102, 74, '8 xu hướng thời trang & phụ kiện Xuân Hạ 2017', '', '', 1, 'banner', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_je_parallax', 1, 1, '{"jQuery":"0","parallaxStyle":"1","imgHeight":"400","fontStyle":"Open+Sans","BgPosition":"100","Autoplay":"true","Interval":"4000","Image1":"images\\/xuhuong\\/01.jpg","Title1":"Kh\\u0103n cho\\u00e0ng c\\u1ed5","Text1":"V\\u00e0o m\\u00f9a n\\u00e0y, kh\\u0103n cho\\u00e0ng c\\u1ed5 (neckerchief) tr\\u1edf v\\u1ec1 m\\u1ea1nh m\\u1ebd v\\u1edbi s\\u1ef1 l\\u0103ng x\\u00ea nhi\\u1ec7t t\\u00ecnh c\\u1ee7a c\\u00e1c nh\\u00e0 m\\u1ed1t Gucci v\\u00e0 Dior Homme. \\u0110\\u00e2y ch\\u00ednh l\\u00e0 th\\u1ee9 ph\\u1ee5 ki\\u1ec7n nam ho\\u00e0n h\\u1ea3o \\u0111\\u1ec3 thay th\\u1ebf nh\\u1eefng ki\\u1ec3u d\\u00e2y chuy\\u1ec1n l\\u00e0m t\\u1eeb \\u0111\\u00e1 qu\\u00fd hay v\\u00e0ng b\\u1ea1c \\u0111\\u1eaft ti\\u1ec1n.","Link1":"","LinkT1":"","Image2":"images\\/xuhuong\\/02.jpg","Title2":"Keychain","Text2":"S\\u1ef1 tr\\u1edf l\\u1ea1i c\\u1ee7a m\\u1ed9t xu h\\u01b0\\u1edbng ph\\u1ee5 ki\\u1ec7n nam quen thu\\u1ed9c t\\u1eeb cu\\u1ed1i th\\u1eadp ni\\u00ean 90 \\u2013 \\u0111\\u1ea7u 2000, nh\\u1eefng s\\u1ee3i d\\u00e2y x\\u00edch kh\\u00f4ng c\\u00f2n l\\u00e0 s\\u1ef1 h\\u1ea7m h\\u1ed1 m\\u00e0 s\\u1ebd l\\u00e0 s\\u1ef1 thanh m\\u1ea3nh v\\u1edbi ch\\u00fat bi\\u1ebfn t\\u1ea5u tr\\u1ebb trung ph\\u1ed1i c\\u00f9ng da ho\\u1eb7c ki\\u1ec3u d\\u00e1ng d\\u00e2y b\\u1ec7n.","Link2":"","LinkT2":"","Image3":"images\\/xuhuong\\/03.jpg","Title3":"T\\u00fai x\\u00e1ch, ba-l\\u00f4","Text3":"T\\u00fai x\\u00e1ch hay ba-l\\u00f4 c\\u1ee7a nam gi\\u1edbi kh\\u00f4ng c\\u1ea7u k\\u00ec l\\u00f2e lo\\u1eb9t hay \\u0111a d\\u1ea1ng, ch\\u1ec9 quanh qu\\u1ea9n v\\u00e0i ki\\u1ec3u d\\u00e1ng nh\\u01b0ng l\\u1ea1i t\\u1ea1o n\\u00ean s\\u1ef1 kh\\u00e1c bi\\u1ec7t v\\u00e0 thu h\\u00fat trong t\\u1eebng chi ti\\u1ebft nh\\u1ecf, nh\\u1eefng th\\u1ee9 c\\u00f3 kh\\u00f4ng gian r\\u1ed9ng r\\u00e3i \\u0111\\u1ec3 ch\\u1ee9a \\u0111\\u1ed3, \\u0111\\u00e1p \\u1ee9ng s\\u1ef1 n\\u0103ng \\u0111\\u1ed9ng, linh ho\\u1ea1t.","Link3":"","LinkT3":"","Image4":"images\\/xuhuong\\/04.jpg","Title4":" Qu\\u1ea7n \\u1ed1ng r\\u1ed9ng","Text4":"Ki\\u1ec3u qu\\u1ea7n skinny hay slim-fit v\\u1eabn gi\\u1eef \\u0111\\u01b0\\u1ee3c v\\u1ecb tr\\u00ed v\\u1eefng v\\u00e0ng, qu\\u1ea7n \\u1ed1ng r\\u1ed9ng \\u0111\\u00e3 manh nha tr\\u1edf l\\u1ea1i trong nh\\u1eefng xu h\\u01b0\\u1edbng th\\u1eddi trang nam. Nh\\u1eefng ki\\u1ec3u qu\\u1ea7n khi\\u1ebfn b\\u1ea1n nh\\u1edb l\\u1ea1i nh\\u1eefng n\\u0103m th\\u1eadp ni\\u00ean 80-90, \\u0111em l\\u1ea1i c\\u1ea3m gi\\u00e1c d\\u1ec5 th\\u1edf v\\u00e0 tho\\u1ea3i m\\u00e1i.","Link4":"","LinkT4":"","Image5":"images\\/xuhuong\\/05.jpg","Title5":"Suit ca-r\\u00f4","Text5":"Trong nh\\u1eefng n\\u0103m g\\u1ea7n \\u0111\\u1ea7y, suit nam lu\\u00f4n l\\u00e0 th\\u1ee9 \\u0111\\u01b0\\u1ee3c y\\u00eau qu\\u00fd v\\u00e0 n\\u1eb1m trong danh s\\u00e1ch \\u0111\\u1ea7u t\\u01b0 nghi\\u00eam t\\u00fac c\\u1ee7a nhi\\u1ec1u ng\\u01b0\\u1eddi. Vi\\u1ec7c tr\\u1ea3i nghi\\u1ec7m b\\u1ed9 suit \\u0111\\u1ea7u ti\\u00ean l\\u00e0 c\\u1ea3m gi\\u00e1c tr\\u1edf th\\u00e0nh m\\u1ed9t ng\\u01b0\\u1eddi \\u0111\\u00e0n \\u00f4ng tr\\u01b0\\u1edfng th\\u00e0nh v\\u1ec1 m\\u1eb7t h\\u00ecnh th\\u1ee9c.","Link5":"","LinkT5":"","Image6":"images\\/xuhuong\\/06.jpg","Title6":"Qu\\u1ea7n t\\u00fai h\\u1ed9p","Text6":"Xu h\\u01b0\\u1edbng th\\u1eddi trang nam gi\\u1edbi g\\u1ea7n \\u0111\\u00e2y t\\u1eadp trung r\\u1ea5t nhi\\u1ec1u v\\u00e0o t\\u00ednh \\u1ee9ng d\\u1ee5ng k\\u1ebft h\\u1ee3p h\\u00e0i h\\u00f2a v\\u1edbi th\\u1ea9m m\\u1ef9. V\\u00e0 kh\\u00f4ng th\\u1ee9 g\\u00ec ph\\u00f9 h\\u1ee3p h\\u01a1n v\\u1edbi nh\\u1eefng item l\\u1ea5y c\\u1ea3m h\\u1ee9ng t\\u1eeb qu\\u00e2n \\u0111\\u1ed9i, m\\u1ed9t l\\u1ea7n n\\u1eefa ki\\u1ec3u qu\\u1ea7n t\\u00fai h\\u1ed9p kh\\u00e1 th\\u1ecbnh h\\u00e0nh s\\u1ebd quay tr\\u1edf v\\u1ec1.","Link6":"","LinkT6":"","Image7":"images\\/xuhuong\\/07.jpg","Title7":"\\u00c1o safari jacket","Text7":"N\\u1ebfu \\u0111\\u00e3 n\\u00f3i v\\u1ec1 ph\\u1ee5c trang \\u1ee9ng d\\u1ee5ng v\\u00e0 c\\u1ea3m h\\u1ee9ng qu\\u00e2n \\u0111\\u1ed9i th\\u00ec ch\\u1eb3ng th\\u1ec3 n\\u00e0o b\\u1ecf qua nh\\u1eefng chi\\u1ebfc \\u00e1o kho\\u00e1c. Safari jacket hay c\\u00f2n g\\u1ecdi l\\u00e0 field jacket \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c l\\u00f2ng gi\\u1edbi tr\\u1ebb qua nhi\\u1ec1u n\\u0103m qua v\\u00e0 s\\u1ebd ti\\u1ebfp t\\u1ee5c \\u0111\\u01b0\\u1ee3c vinh danh trong m\\u00f9a n\\u00e0y.","Link7":"","LinkT7":"","Image8":"images\\/xuhuong\\/08.jpg","Title8":"Chelsea boots","Text8":"M\\u1ed9t trong nh\\u1eefng xu h\\u01b0\\u1edbng th\\u1eddi trang nam d\\u1ec5 nh\\u1eadn bi\\u1ebft nh\\u1ea5t khi tr\\u1eddi v\\u00e0o \\u0110\\u00f4ng ch\\u00ednh l\\u00e0 nh\\u1eefng \\u0111\\u00f4i gi\\u00e0y. Ng\\u01b0\\u1eddi vi\\u1ebft \\u0111\\u00e3 t\\u1eebng \\u0111\\u1ec1 c\\u1eadp \\u0111\\u1ebfn nh\\u1eefng m\\u1eabu gi\\u00e0y d\\u00e0nh cho m\\u00f9a \\u0110\\u00f4ng 2016, v\\u00e0 n\\u1ed5i b\\u1eadt nh\\u1ea5t ch\\u00ednh l\\u00e0 Chelsea boots.","Link8":"","LinkT8":"","Image9":"","Title9":"","Text9":"","Link9":"","LinkT9":"","Image10":"","Title10":"","Text10":"","Link10":"","LinkT10":"","Image11":"","Title11":"","Text11":"","Link11":"","LinkT11":"","Image12":"","Title12":"","Text12":"","Link12":"","LinkT12":"","Image13":"","Title13":"","Text13":"","Link13":"","LinkT13":"","Image14":"","Title14":"","Text14":"","Link14":"","LinkT14":"","Image15":"","Title15":"","Text15":"","Link15":"","LinkT15":"","Image16":"","Title16":"","Text16":"","Link16":"","LinkT16":"","Image17":"","Title17":"","Text17":"","Link17":"","LinkT17":"","Image18":"","Title18":"","Text18":"","Link18":"","LinkT18":"","Image19":"","Title19":"","Text19":"","Link19":"","LinkT19":"","Image20":"","Title20":"","Text20":"","Link20":"","LinkT20":"","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(103, 75, 'Mod hỗ trợ trực tuyến', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '2017-02-03 14:54:09', '0000-00-00 00:00:00', -2, 'mod_support_online', 1, 1, '{"moduleclass_sfx":"","yahooID":"tstorey1, tstorey2","skypeID":"","nameYahoo":"Tien, Duc","telYahoo":"0948278451, 0889999999","ClogoLink":"","showYahoo":"1","showSkype":"1","showName":"1","showTel":"1","Address":"101 Mai Xuan Thuong, Vinh Hai, Nha Trang, Khanh Hoa","Phone":"0583696969","Fax":"","Email":"","Hotline":"18008081","cache":"0","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(104, 76, 'Chat với T-Store', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '2017-02-11 11:50:06', '0000-00-00 00:00:00', -2, 'mod_je_quickcontact', 1, 1, '{"jQuery":"0","popUp":"0","popUpButton":"H\\u1ed7 tr\\u1ee3 T-Store","name":"H\\u1ecd t\\u00ean","email":"Email","message":"Tin nh\\u1eafn","captcha_label":"1","captcha":"Captcha","submit":"G\\u1eedi","recipient":"dr.congtri@gmail.com","subject":"H\\u1ed7 tr\\u1ee3 kh\\u00e1ch h\\u00e0ng","buttonBg":"#E60000","buttonBgH":"#333333","buttonText":"#FFFFFF","input_bg":"#F5F5F5","input_brd":"#DDDDDD","input_text":"#333333","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');
INSERT INTO `ecom_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(105, 77, 'Tư vấn phong cách phái mạnh', '', '', 1, 'position-3', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_powrvideogallery', 1, 1, '{"module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(106, 78, 'Fanpage T-Store', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '2017-02-11 00:08:04', '0000-00-00 00:00:00', 1, 'mod_je_facebookfanbox', 1, 0, '{"Language":"vi_VN","Url":"https:\\/\\/www.facebook.com\\/thoitrangtstore","Width":"200","Height":"300","Color":"light","bgColor":"#FFFFFF","Border":"true","Stream":"false","Faces":"true","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(107, 79, 'Vị trí cửa hàng T-Store', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_gruemaps', 1, 0, '{"jQuery":"0","apikey":"AIzaSyDUNuy1l1U-wANAc5tYP5Cz22pQyBVbXP0","lat":"12.227163","long":"109.199989","address":"88 Tr\\u1ea7n Ph\\u00fa, Th\\u00e0nh ph\\u1ed1 Nha Trang, Kh\\u00e1nh H\\u00f2a, Vi\\u1ec7t Nam","showAddress":"1","mapH":"300px","zoom":"16","mapC":"#40b9ff","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(108, 80, 'Số lượt truy cập', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_zt_visitor_counter', 1, 1, '{"moduleclass_sfx":"","width":["100","%"],"digit_style":"default.css","module_style":"default.css","showDigit":"1","minDigits":"7","showIcons":"1","showTitles":"1","showTotals":"1","showIp":"IP c\\u1ee7a b\\u1ea1n:","showOnline":"1","showAgent":"0","duration":"15","showGuestOnline":"1","showMemberOnline":"1","showAllOnline":"1","initialValue":"0","today":"H\\u00f4m nay","yesterday":"H\\u00f4m qua","thisWeek":"Tu\\u1ea7n n\\u00e0y","lastWeek":"Tu\\u1ea7n tr\\u01b0\\u1edbc","thisMonth":"Th\\u00e1ng n\\u00e0y","lastMonth":"Th\\u00e1ng tr\\u01b0\\u1edbc","all":"T\\u1ed5ng l\\u01b0\\u1ee3t truy c\\u1eadp","foreCast":"S\\u1ed1 d\\u1ef1 ki\\u1ebfn h\\u00f4m nay","firstDay":"0","cache":"0","cache_time":"900","cachemode":"static","zt-copyright":"ICAgIDxkaXYgY2xhc3M9Inp0dmMtY29weXJpZ2h0Ij48YSBocmVmPSJodHRwOi8vd3d3Lnpvb3RlbXBsYXRlLmNvbS8iIHRpdGxlPSJWaXNpdG9yIENvdW50ZXIiIHRhcmdldD0iX2JsYW5rIj5WaXNpdG9yDQogICAgICAgICAgICBDb3VudGVyPC9hPjwvZGl2Pg0KPC9kaXY+","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(109, 81, 'Chat với T-Store', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_facebook_live_message', 1, 1, '{"facebook_name":"Facebook","facebook_url":"https:\\/\\/www.facebook.com\\/thoitrangtstore\\/","width":"500","height":"300","face":"false","show_header":"false","hide":"false","layout":"_:default","moduleclass_sfx":"","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(110, 83, 'MyPuzzle Jigsaw Puzzle', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '2017-02-20 04:23:27', '0000-00-00 00:00:00', -2, 'mod_mp_jigsaw', 1, 1, '{"size":"3000","pieces":"3","bgcolor":"#ffffff","myimage":"https:\\/\\/scontent.fdad3-2.fna.fbcdn.net\\/v\\/t1.0-9\\/16603076_1401678873238711_9005484006597290952_n.jpg?oh=47ff724c6405f842e232e4b51344d522&oe=5943F3F9","gallery":"modules\\/mod_mp_jigsaw\\/gallery","doresize":"1","resizefolder":"images","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(111, 86, 'Freestyle FAQs: FAQ/KB category/product listing', '', '', 1, '', 0, '0000-00-00 00:00:00', '2017-02-20 05:37:58', '0000-00-00 00:00:00', 0, 'mod_fsf_catprods', 1, 1, '{"listtype":"faqcat","show_images":"1","moduleclass_sfx":"","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(112, 87, 'Freestyle FAQs: FAQs', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '2017-02-20 05:38:00', '0000-00-00 00:00:00', 1, 'mod_fsf_faqs', 1, 1, '{"catid":"0","dispcount":"10","maxheight":"0","listtype":"newpage","moduleclass_sfx":"","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `ecom_modules_menu`
--

CREATE TABLE `ecom_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ecom_modules_menu`
--

INSERT INTO `ecom_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0),
(90, 0),
(91, 0),
(92, 0),
(93, 0),
(94, 101),
(95, 0),
(96, 0),
(97, 126),
(98, 0),
(99, 101),
(100, 101),
(100, 117),
(100, 118),
(100, 119),
(100, 120),
(100, 121),
(100, 122),
(100, 124),
(100, 126),
(101, 0),
(102, 126),
(103, 0),
(104, 101),
(104, 117),
(104, 118),
(104, 119),
(104, 120),
(104, 121),
(104, 122),
(104, 124),
(105, 127),
(106, 101),
(106, 117),
(106, 118),
(106, 119),
(106, 120),
(106, 121),
(106, 122),
(106, 124),
(106, 126),
(106, 127),
(107, 101),
(108, 101),
(108, 127),
(109, 0),
(110, 101),
(111, 145),
(112, 145);

-- --------------------------------------------------------

--
-- Table structure for table `ecom_newsfeeds`
--

CREATE TABLE `ecom_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `cache_time` int(10) UNSIGNED NOT NULL DEFAULT '3600',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ecom_overrider`
--

CREATE TABLE `ecom_overrider` (
  `id` int(10) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ecom_postinstall_messages`
--

CREATE TABLE `ecom_postinstall_messages` (
  `postinstall_message_id` bigint(20) UNSIGNED NOT NULL,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ecom_postinstall_messages`
--

INSERT INTO `ecom_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 0),
(2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 0),
(3, 700, 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', 0),
(4, 700, 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_BODY', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_ACTION', 'plg_system_updatenotification', 1, 'action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_condition', '3.6.3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ecom_powr`
--

CREATE TABLE `ecom_powr` (
  `data_type` varchar(50) NOT NULL,
  `value` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecom_powr`
--

INSERT INTO `ecom_powr` (`data_type`, `value`) VALUES
('powr_token', 'ejg057MS4c1486723621');

-- --------------------------------------------------------

--
-- Table structure for table `ecom_redirect_links`
--

CREATE TABLE `ecom_redirect_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ecom_schemas`
--

CREATE TABLE `ecom_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ecom_schemas`
--

INSERT INTO `ecom_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.6.3-2016-08-16');

-- --------------------------------------------------------

--
-- Table structure for table `ecom_session`
--

CREATE TABLE `ecom_session` (
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `guest` tinyint(4) UNSIGNED DEFAULT '1',
  `time` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ecom_session`
--

INSERT INTO `ecom_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('8hghk2coig2g2q5t5rq52rvcn5', 0, 1, '1487569206', 'joomla|s:716:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToyODtzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE0ODc1NjkwNTg7czo0OiJsYXN0IjtpOjE0ODc1NjkyMDY7czozOiJub3ciO2k6MTQ4NzU2OTIwNjt9czo1OiJ0b2tlbiI7czozMjoiNHByTUh2TkdMVFpOd0RHdmJJb3VhU1ppSFVqMk4zeXMiO31zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6MDp7fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjE7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7Tzo1OiJKVXNlciI6MTp7czoyOiJpZCI7aTowO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==";', 0, ''),
('o1u5tvnu6iqr8ad3gn8lgm3a27', 1, 0, '1487569205', 'joomla|s:1644:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo0OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTo0MztzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE0ODc1NjkwNjQ7czo0OiJsYXN0IjtpOjE0ODc1NjkxOTY7czozOiJub3ciO2k6MTQ4NzU2OTE5Nzt9czo1OiJ0b2tlbiI7czozMjoiWXNIM0NYOHg0b2dOT0tWUFlMNkp6U1hBZGNZemVxbDMiO31zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czoxMzoiY29tX2luc3RhbGxlciI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo3OiJtZXNzYWdlIjtzOjA6IiI7czoxNzoiZXh0ZW5zaW9uX21lc3NhZ2UiO3M6MDoiIjt9czoxMToiY29tX21vZHVsZXMiO086ODoic3RkQ2xhc3MiOjM6e3M6NDoiZWRpdCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo2OiJtb2R1bGUiO086ODoic3RkQ2xhc3MiOjI6e3M6MjoiaWQiO2E6MDp7fXM6NDoiZGF0YSI7Tjt9fXM6MzoiYWRkIjtPOjg6InN0ZENsYXNzIjoxOntzOjY6Im1vZHVsZSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czoxMjoiZXh0ZW5zaW9uX2lkIjtOO3M6NjoicGFyYW1zIjtOO319czo3OiJtb2R1bGVzIjtPOjg6InN0ZENsYXNzIjo0OntzOjY6ImZpbHRlciI7YTo3OntzOjY6InNlYXJjaCI7czowOiIiO3M6NToic3RhdGUiO3M6MDoiIjtzOjg6InBvc2l0aW9uIjtzOjA6IiI7czo2OiJtb2R1bGUiO3M6MDoiIjtzOjg6Im1lbnVpdGVtIjtzOjA6IiI7czo2OiJhY2Nlc3MiO3M6MDoiIjtzOjg6Imxhbmd1YWdlIjtzOjA6IiI7fXM6OToiY2xpZW50X2lkIjtpOjA7czo0OiJsaXN0IjthOjI6e3M6MTI6ImZ1bGxvcmRlcmluZyI7czoxNDoiYS5wb3NpdGlvbiBBU0MiO3M6NToibGltaXQiO3M6MjoiMjAiO31zOjEwOiJsaW1pdHN0YXJ0IjtpOjIwO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjE7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7Tzo1OiJKVXNlciI6MTp7czoyOiJpZCI7czozOiIxMTQiO31zOjExOiJhcHBsaWNhdGlvbiI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJxdWV1ZSI7Tjt9fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=";', 114, 'ductien');

-- --------------------------------------------------------

--
-- Table structure for table `ecom_tags`
--

CREATE TABLE `ecom_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ecom_tags`
--

INSERT INTO `ecom_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 114, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ecom_template_styles`
--

CREATE TABLE `ecom_template_styles` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ecom_template_styles`
--

INSERT INTO `ecom_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.png","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(7, 'protostar', 0, '1', 'protostar - Default', '{"templateColor":"#0088cc","templateBackgroundColor":"#f4f6f7","logoFile":"images\\/banner.jpg","sitetitle":"","sitedescription":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"","logoFile":""}'),
(9, 'vina_orenmode', 0, '0', 'Vina_OrenMode - Mặc định', '{"layout_width":"1170","layout_type":"responsive","logo_type":"image","logo_position":"logo","logo_type_text":"Helix","logo_type_slogan":"Joomla! Templates Framework","logo_width":"251","logo_height":"28","footer_position":"footer1","showcp":"1","copyright":"Copyright \\u00a9 2015 {VinaGecko.com}. All Rights Reserved.","show_helix_logo":"0","jcredit":"0","credit_link":"0","credit_text":"Designed by {VinaGecko.com}","validator":"0","showtop":"1","totop_position":"footer2","preset":"preset1","preset1_header":"#ffffff","preset1_bg":"#ffffff","preset1_text":"#252525","preset1_link":"#d12853","preset2_header":"#ffffff","preset2_bg":"#ffffff","preset2_text":"#252525","preset2_link":"#81c223","preset3_header":"#ffffff","preset3_bg":"#ffffff","preset3_text":"#252525","preset3_link":"#1680bc","menu":"mainmenu","menutype":"mega","menu_col_width":"200","show_menu_image":"1","menu_image_position":"1","submenu_position":"0","init_x":"0","init_y":"0","sub_x":"0","sub_y":"0","body_font":"","header_font":"","header_selectors":"","other_font":"","cache_time":"60","compress_css":"0","compress_js":"0","enable_ga":"0","ga_code":"","loadjquery":"0","loadfromcdn":"0","lessoption":"1","hide_component_area":"0","scroll_effect":"1","effect":"fadeInDown","chooselayout":"vina-home-1","linkhome":"0","linkhome1":""}'),
(10, 'shaper_helix3', 0, '0', 'shaper_helix3 - Mặc định', '{"preloader":"0","preloader_animation":"circle","preloader_bg":"#f5f5f5","preloader_tx":"#333333","goto_top":"0","sticky_header":"1","boxed_layout":"0","logo_type":"image","logo_position":"logo","logo_load_pos":"default","body_bg_repeat":"inherit","body_bg_size":"inherit","body_bg_attachment":"inherit","body_bg_position":"0 0","enabled_copyright":"1","copyright_position":"footer1","copyright_load_pos":"default","copyright":"\\u00a9 2015 Your Company. All Rights Reserved. Designed By JoomShaper","show_social_icons":"1","social_position":"top1","social_load_pos":"default","enable_contactinfo":"1","contact_position":"top2","comingsoon_mode":"0","comingsoon_title":"Coming Soon Title","comingsoon_date":"5-10-2018","comingsoon_content":"Coming soon content","preset":"preset1","preset1_bg":"#ffffff","preset1_text":"#000000","preset1_major":"#26aae1","preset1_megabg":"#ffffff","preset1_megatx":"#333333","preset2_bg":"#ffffff","preset2_text":"#000000","preset2_major":"#3d449a","preset2_megabg":"#ffffff","preset2_megatx":"#333333","preset3_bg":"#ffffff","preset3_text":"#000000","preset3_major":"#2bb673","preset3_megabg":"#ffffff","preset3_megatx":"#333333","preset4_bg":"#ffffff","preset4_text":"#000000","preset4_major":"#eb4947","preset4_megabg":"#ffffff","preset4_megatx":"#333333","menu":"mainmenu","menu_type":"mega_offcanvas","menu_animation":"menu-fade","offcanvas_animation":"default","enable_body_font":"1","body_font":"{\\"fontFamily\\":\\"Open Sans\\",\\"fontWeight\\":\\"300\\",\\"fontSubset\\":\\"latin\\",\\"fontSize\\":\\"\\"}","enable_h1_font":"1","h1_font":"{\\"fontFamily\\":\\"Open Sans\\",\\"fontWeight\\":\\"800\\",\\"fontSubset\\":\\"latin\\",\\"fontSize\\":\\"\\"}","enable_h2_font":"1","h2_font":"{\\"fontFamily\\":\\"Open Sans\\",\\"fontWeight\\":\\"600\\",\\"fontSubset\\":\\"latin\\",\\"fontSize\\":\\"\\"}","enable_h3_font":"1","h3_font":"{\\"fontFamily\\":\\"Open Sans\\",\\"fontWeight\\":\\"regular\\",\\"fontSubset\\":\\"latin\\",\\"fontSize\\":\\"\\"}","enable_h4_font":"1","h4_font":"{\\"fontFamily\\":\\"Open Sans\\",\\"fontWeight\\":\\"regular\\",\\"fontSubset\\":\\"latin\\",\\"fontSize\\":\\"\\"}","enable_h5_font":"1","h5_font":"{\\"fontFamily\\":\\"Open Sans\\",\\"fontWeight\\":\\"600\\",\\"fontSubset\\":\\"latin\\",\\"fontSize\\":\\"\\"}","enable_h6_font":"1","h6_font":"{\\"fontFamily\\":\\"Open Sans\\",\\"fontWeight\\":\\"600\\",\\"fontSubset\\":\\"latin\\",\\"fontSize\\":\\"\\"}","enable_navigation_font":"0","enable_custom_font":"0","compress_css":"0","compress_js":"0","lessoption":"0","show_post_format":"1","commenting_engine":"disabled","disqus_devmode":"0","intensedebate_acc":"","fb_width":"500","fb_cpp":"10","comments_count":"0","social_share":"1","image_small":"0","image_small_size":"100X100","image_thumbnail":"1","image_thumbnail_size":"200X200","image_medium":"0","image_medium_size":"300X300","image_large":"0","image_large_size":"600X600","blog_list_image":"default"}'),
(11, 'shaper_istore', 0, '0', 'shaper_istore - Mặc định', '{"logo_type":"image","logo_text":"iStore","logo_slogan":"Joomla! Templates Framework","logo_width":"160","logo_height":"100","layout_type":"1","main_width":"960px","left_width":"230","right_width":"230","inset1_width":"20","inset2_width":"20","width_unit":"pixel","fixed_column_height":"0","style":"style1","showcp":"1","copyright":"2012 Shaper Helix Demo. All Rights Reserved.","show_helix_logo":"1","helix_logo":"light-small","menutype":"mainmenu","spmenu":"mega","menu_col_width":"200","show_menu_image":"1","menu_animation":"slidefade","menu_duration":"300","menu_transition":"linear","init_x":"0","init_y":"0","sub_x":"-10","sub_y":"5","body_font":"standard\\\\|Verdana, Geneva, sans-serif\\\\|none","header_font":"google|Verdana, Geneva, sans-serif|Yanone+Kaffeesatz:extralight","header_selectors":"#sp-bottom h3.header, h2.sp-slide-title, .blog h3.catItemTitle, .category-view h4, .productdetails-view h1,nh2.itemTitle, h3.tagItemTitle, h3.userItemTitle","other_font":"standard\\\\|Verdana, Geneva, sans-serif\\\\|none","cache_time":"60","compress_css":"0","compress_js":"0","enable_ga":"0","ga_code":"","direction":"ltr","showtop":"1","jcredit":"1","ie6warn":"1","validator":"1","jquery":"0","hide_component":"0","hide_menu_items":"0"}'),
(12, 'pinmart', 0, '0', 'Pinmart - Mặc định', '{"bgcolor":"cyan"}'),
(13, 'sj_style', 0, '0', 'sj_style - Mặc định', '{"hideComponentHomePage":"0","favicon":"images\\/favicon.ico","logoType":"image","logoText":"SmartAddons.Com","sloganText":"The high quality products","logoWidth":"130","logoHeight":"50","footer_logo":"1","copyright":"1","ytcopyright":"","joomla_create":"1","layouttype":"res","layoutFixed":"980","layoutFloat":"90","layoutRes":"1170","typelayout":"wide","bgimage":"pattern8","templateLayout":"main-left-right","themecolor":"red","menutype":"mainmenu","menustyle":"mega","moofx":"easeInOutCirc","moofxtimeout":"150","keepMenu":"1","fancyMenu":"1","sidebarMenu":"0","bodySelectors":"body","menuSelectors":"#menu a","headingSelectors":"h1,h2,h3","otherSelectors":"","leading_width":"540","leading_height":"290","intro_width":"540","intro_height":"290","thumbnail_background":"#000000","thumbnail_mode":"stretch","developing":"1","compileLess":"server","optimizeMergeFile":"0","optimizeCSS":"0","optimizeCSSExclude":"","optimizeJS":"bootstrap.min.css","optimizeJSExclude":"respond.min.js","optimizeFolder":"yt-assets","showBacktotop":"1","showCpanel":"1","useSpecialPositions":"1","activeNotice":"1","animateScroll":"0","imgScroll":"1","setGeneratorTag":"SmartAddons.Com - the high quality products!","enableGoogleAnalytics":"1","googleAnalyticsTrackingID":"","headAfter":"","headBefore":"","bodyAfter":"","bodyBefore":""}');

-- --------------------------------------------------------

--
-- Table structure for table `ecom_ucm_base`
--

CREATE TABLE `ecom_ucm_base` (
  `ucm_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ecom_ucm_content`
--

CREATE TABLE `ecom_ucm_content` (
  `core_content_id` int(10) UNSIGNED NOT NULL,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_featured` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';

-- --------------------------------------------------------

--
-- Table structure for table `ecom_ucm_history`
--

CREATE TABLE `ecom_ucm_history` (
  `version_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) UNSIGNED NOT NULL,
  `ucm_type_id` int(10) UNSIGNED NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `character_count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ecom_updates`
--

CREATE TABLE `ecom_updates` (
  `update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';

--
-- Dumping data for table `ecom_updates`
--

INSERT INTO `ecom_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(1, 41, 0, 'shaper_helix3', 'Shaper Helix3', 'shaper_helix3', 'template', '', 0, '1.9', '', 'https://www.joomshaper.com/updates/shaper-helix3.xml', '', ''),
(2, 42, 0, 'YT Framework', '', 'yt', 'plugin', 'system', 0, '2.2.3', '', 'http://smartaddons.com/update_server/plugins/yt.xml', '', ''),
(3, 42, 0, 'YT Shortcodes', '', 'ytshortcodes', 'plugin', 'system', 0, '3.0.3', '', 'Download link: https://www.smartaddons.com/joomla-extensions/commercial-extensions/item/564-yt-shortcode-joomla-plugin', '', ''),
(4, 42, 0, 'SJ Company', '', 'sj_company', 'template', '', 0, '1.2.0', '', 'Please update manually', '', ''),
(5, 42, 0, 'SJ Expo', '', 'sj_expo', 'template', '', 0, '1.1.1', '', 'Please update manually', '', ''),
(6, 42, 0, 'SJ Jare', '', 'sj_jare', 'template', '', 0, '1.0.0', '', 'Please update manually', '', ''),
(7, 42, 0, 'SJ Plus', '', 'sj_plus', 'template', '', 0, '1.0.0', '', 'http://smartaddons.com/update_server/templates/sj_plus.xml', '', ''),
(8, 42, 0, 'Sj Directory', '', 'sj_directory', 'template', '', 0, '1.0.0', '', 'Download link: https://www.smartaddons.com/joomla-templates/sj-directory-responsive-directory-joomla-template', '', ''),
(9, 42, 0, 'SJ Financial III', '', 'sj_financial', 'template', '', 0, '1.0.0', '', 'Download link: https://www.smartaddons.com/joomla-templates/sj-financial-iii-responsive-business-financial-joomla-template', '', ''),
(10, 42, 0, 'Sj Revo', '', 'sj_revo', 'template', '', 0, '1.0.0', '', 'Download link: https://www.smartaddons.com/joomla-templates/sj-revo-responsive-ecommerce-joomla-template', '', ''),
(11, 42, 0, 'SJ Justice', '', 'sj_justice', 'template', '', 0, '1.0.0', '', 'Download link: https://www.smartaddons.com/joomla-templates/sj-justice-responsive-law-firm-joomla-template', '', ''),
(12, 42, 0, 'SJ Urline', '', 'sj_urline', 'template', '', 0, '1.0.0', '', 'Download link: https://www.smartaddons.com/joomla-templates/sj-urline-responsive-travel-joomla-template', '', ''),
(13, 42, 0, 'SJ Preschool', '', 'sj_preschool', 'template', '', 0, '1.0.0', '', 'Download link: https://www.smartaddons.com/joomla-templates/sj-preschool-responsive-education-joomla-template', '', ''),
(14, 42, 0, 'SJ Eduonline', '', 'sj_eduonline', 'template', '', 0, '1.0.0', '', 'Download link: https://www.smartaddons.com/joomla-templates/sj-eduonline-responsive-education-joomla-template', '', ''),
(15, 42, 0, 'SJ Uking', '', 'sj_uking', 'template', '', 0, '1.1.0', '', 'Download link: https://www.smartaddons.com/joomla-templates/sj-uking-responsive-joomla-kindergarten-school-template', '', ''),
(16, 42, 0, 'SJ Petta', '', 'sj_petta', 'template', '', 0, '2.0.1', '', 'Download link: https://www.smartaddons.com/joomla-templates/sj-petta-responsive-joomla-pet-care-service-template', '', ''),
(17, 42, 0, 'SJ Fitness', '', 'sj_fitness', 'template', '', 0, '2.0.0', '', 'Download link: https://www.smartaddons.com/joomla-templates/sj-fitness-a-responsive-joomla-yoga-center-template', '', ''),
(18, 42, 0, 'SJ Medicare', '', 'sj_medicare', 'template', '', 0, '2.0.0', '', 'Download link: https://www.smartaddons.com/joomla-templates/sj-medicare-responsive-medical-service-joomla-template', '', ''),
(19, 42, 0, 'SJ Agaza', '', 'sj_agaza', 'template', '', 0, '2.0.0', '', 'Download link: https://www.smartaddons.com/joomla-templates/sj-agaza-responsive-joomla-template', '', ''),
(20, 42, 0, 'SJ Flooring', '', 'sj_flooring', 'template', '', 0, '2.0.0', '', 'Download link: https://www.smartaddons.com/joomla-templates/sj-flooring-responsive-interior-joomla-template-for-online-stores', '', ''),
(21, 42, 0, 'SJ Blossom', '', 'sj_blossom', 'template', '', 0, '2.0.0', '', 'Download link: https://www.smartaddons.com/joomla-templates/sj-blossom-responsive-joomla-template-for-restaurant', '', ''),
(22, 42, 0, 'SJ VicMagz', '', 'sj_vicmagz', 'template', '', 0, '1.0.0', '', 'Download link: https://www.smartaddons.com/joomla-templates/sj-vicmagz-free-responsive-joomla-template', '', ''),
(23, 42, 0, 'SJ HealthMag', '', 'sj_healthmag', 'template', '', 0, '2.0.0', '', 'Download link: https://www.smartaddons.com/joomla-templates/healthmag-responsive-joomla-template', '', ''),
(24, 42, 0, 'SJ Stabwall', '', 'sj_stabwall', 'template', '', 0, '2.0.0', '', 'Download link: https://www.smartaddons.com/joomla-templates/sj-stabwall-responsive-business-joomla-template', '', ''),
(25, 42, 0, 'SJ VerityMag', '', 'sj_veritymag', 'template', '', 0, '2.0.0', '', 'Download link: https://www.smartaddons.com/joomla-templates/sj-veritymag-free-responsive-joomla-template', '', ''),
(26, 42, 0, 'SJ ShoppyStore', '', 'sj_shoppystore', 'template', '', 0, '2.1.1', '', 'Download link: https://www.smartaddons.com/joomla-templates/sj-shoppystore-responsive-joomla-template', '', ''),
(27, 42, 0, 'SJ Matrix', '', 'sj_matrix', 'template', '', 0, '2.1.1', '', 'Download link: https://www.smartaddons.com/joomla-templates/sj-matrix-responsive-joomla-template', '', ''),
(28, 42, 0, 'SJ Maxshop', '', 'sj_maxshop', 'template', '', 0, '2.1.1', '', 'Download link: https://www.smartaddons.com/joomla-templates/sj-maxshop-responsive-joomla-template', '', ''),
(29, 42, 0, 'SJ H2shop', '', 'sj_h2shop', 'template', '', 0, '1.1.1', '', 'Download link: https://www.smartaddons.com/joomla-templates/sj-h2shop-responsive-joomla-template', '', ''),
(30, 42, 0, 'SJ Job4u', '', 'sj_job4u', 'template', '', 0, '2.1.0', '', 'Download link: https://www.smartaddons.com/joomla-templates/sj-job4u-responsive-joomla-template', '', ''),
(31, 42, 0, 'SJ WaveNews', '', 'sj_wavenew', 'template', '', 0, '2.0.0', '', 'Download link: https://www.smartaddons.com/joomla-templates/sj-wavenews-responsive-joomla-template', '', ''),
(32, 42, 0, 'SJ iMag', '', 'sj_imag', 'template', '', 0, '3.0.0', '', 'Download link: https://www.smartaddons.com/joomla-templates/sj-imag-responsive-joomla-template', '', ''),
(33, 42, 0, 'SJ Market', '', 'sj_market', 'template', '', 0, '1.2.2', '', 'Download link: https://www.smartaddons.com/joomla-templates/sj-market-responsive-ecommerce-joomla-template', '', ''),
(34, 42, 0, 'SJ Extra Slider for VirtueMart', '', 'mod_sj_vm_extra_slider', 'module', '', 0, '3.2.1', '', 'Download link: https://www.smartaddons.com/joomla-extensions/commercial-extensions/sj-vm-extra-slider-joomla-module', '', ''),
(35, 42, 0, 'SJ Filter for VirtueMart ', '', 'mod_sj_vm_filter', 'module', '', 0, '2.4.1', '', 'Download link: https://www.smartaddons.com/joomla-extensions/commercial-extensions/sj-filter-for-virtuemart-joomla-module', '', ''),
(36, 42, 0, 'Sj Content Categories', '', 'mod_sj_content_categories', 'module', '', 0, '3.1.1', '', 'Download link: https://www.smartaddons.com/joomla-extensions/commercial-extensions/sj-content-categories-joomla-module', '', ''),
(37, 42, 0, 'Sj Content Slideshow', '', 'mod_sj_content_slideshow', 'module', '', 0, '3.2.1', '', 'Download link: https://www.smartaddons.com/joomla-extensions/commercial-extensions/sj-content-slideshow-joomla-module', '', ''),
(38, 42, 0, 'SJ Extra Slider for Content', '', 'mod_sj_news_extra_slider', 'module', '', 0, '3.2.1', '', 'Download link: https://www.smartaddons.com/joomla-extensions/commercial-extensions/sj-extra-slider-for-content-joomla-module', '', ''),
(39, 42, 0, 'Sj Responsive Content', '', 'mod_sj_responsive_content', 'module', '', 0, '1.1.1', '', 'Download link: https://www.smartaddons.com/joomla-extensions/commercial-extensions/sj-responsive-content-joomla-module', '', ''),
(40, 42, 0, 'Sj Content Responsive Listing', '', 'mod_sj_content_reslisting', 'module', '', 0, '1.2.1', '', 'Download link: https://www.smartaddons.com/joomla-extensions/commercial-extensions/sj-content-responsive-listing-joomla-module', '', ''),
(41, 42, 0, 'Sj Content Accordion', '', 'mod_sj_content_accordion', 'module', '', 0, '3.1.1', '', 'Download link: https://www.smartaddons.com/joomla-extensions/commercial-extensions/sj-content-accordion-joomla-module', '', ''),
(42, 42, 0, 'Sj Content Listing', '', 'mod_sj_content_listing', 'module', '', 0, '3.1.1', '', 'Download link: https://www.smartaddons.com/joomla-extensions/commercial-extensions/sj-content-listing', '', ''),
(43, 42, 0, 'Sj Content Simple Tabs', '', 'mod_sj_content_simpletabs', 'module', '', 0, '3.1.1', '', 'Download link: https://www.smartaddons.com/joomla-extensions/commercial-extensions/sj-content-simple-tabs-joomla-module', '', ''),
(44, 42, 0, 'Sj Content Slick Slider', '', 'mod_sj_content_slickslider', 'module', '', 0, '3.1.1', '', 'Download link: https://www.smartaddons.com/joomla-extensions/commercial-extensions/sj-content-slick-slider-joomla-module', '', ''),
(45, 42, 0, 'Sj Super Category for Content', '', 'mod_sj_content_super_category', 'module', '', 0, '1.1.1', '', 'Download link: https://www.smartaddons.com/joomla-extensions/commercial-extensions/sj-super-category-for-content-responsive-joomla-module', '', ''),
(46, 42, 0, 'SJ Listing Tabs for Content', '', 'mod_sj_listing_tabs', 'module', '', 0, '1.1.1', '', 'Download link: https://www.smartaddons.com/joomla-extensions/commercial-extensions/sj-listing-tabs-for-content-responsive-joomla-module', '', ''),
(47, 42, 0, 'plg_system_plg_sj_content_listing_ajax', '', 'plg_system_plg_sj_content_listing_ajax', 'plugin', '', 0, '1.1.1', '', 'Download link: https://www.smartaddons.com/joomla-extensions/commercial-extensions/sj-listing-ajax-for-content-joomla-plugin', '', ''),
(48, 43, 0, 'Freestyle Support: IMPORTANT: goto Components -> Freestyle Support -> Admin and enter your api key.', '', 'com_fss', 'component', '', 1, '2.6.1.2087', '', 'http://www.freestyle-joomla.com/update/com_fss.php', '', ''),
(49, 43, 0, 'Freestyle Testimonials', '', 'com_fst', 'component', '', 1, '1.13.2', '', 'http://www.freestyle-joomla.com/update/com_fst.php', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ecom_update_sites`
--

CREATE TABLE `ecom_update_sites` (
  `update_site_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';

--
-- Dumping data for table `ecom_update_sites`
--

INSERT INTO `ecom_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'https://update.joomla.org/core/list.xml', 0, 0, ''),
(2, 'Joomla! Extension Directory', 'collection', 'https://update.joomla.org/jed/list.xml', 0, 0, ''),
(3, 'Accredited Joomla! Translations', 'collection', 'https://update.joomla.org/language/translationlist_3.xml', 0, 0, ''),
(4, 'Joomla! Update Component Update Site', 'extension', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', 0, 0, ''),
(5, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist_3.xml', 0, 0, ''),
(6, 'TCPDF Update Site', 'extension', 'http://virtuemart.net/releases/TCPDF/tcpdf.xml', 0, 0, ''),
(7, 'VirtueMart3 Update Site', 'extension', 'http://virtuemart.net/releases/vm3/virtuemart_update.xml', 0, 0, ''),
(8, 'VirtueMart plg_vmpayment_standard Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmpayment_standard_update.xml', 0, 0, ''),
(11, 'VirtueMart plg_vmpayment_sofort Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmpayment_sofort_update.xml', 0, 0, ''),
(12, 'VirtueMart plg_vmpayment_paypal Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmpayment_paypal_update.xml', 0, 0, ''),
(15, 'VirtueMart3 plg_vmpayment_tco Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmpayment_tco_update.xml', 0, 0, ''),
(16, 'VirtueMart plg_vmpayment_amazon Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmpayment_amazon_update.xml', 0, 0, ''),
(17, 'VirtueMart plg_system_amazon Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_system_amazon_update.xml', 0, 0, ''),
(18, 'VirtueMart plg_vmpayment_realex_hpp_api Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmpayment_realex_hpp_api_update.xml', 0, 0, ''),
(19, 'VirtueMart plg_vmuserfield_realex_hpp_api Update Site', 'extension', '\n            http://virtuemart.net/releases/vm3/plg_vmuserfield_realex_hpp_api_update.xml', 0, 0, ''),
(20, 'VirtueMart3 plg_vmpayment_skrill Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmpayment_skrill_update.xml', 0, 0, ''),
(21, 'VirtueMart plg_vmpayment_authorizenet Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmpayment_authorisenet_update.xml', 0, 0, ''),
(22, 'VirtueMart plg_vmpayment_sofort_ideal Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmpayment_sofort_ideal_update.xml', 0, 0, ''),
(24, 'VirtueMart3 plg_vmshipment_weight_countries Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmshipment_weight_countries_update.xml', 0, 0, ''),
(25, 'VirtueMart3 plg_vmcustom_textinput Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmcustom_textinput_update.xml', 0, 0, ''),
(26, 'VirtueMart3 plg_vmcustom_specification Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmcustom_specification_update.xml', 0, 0, ''),
(27, 'VirtueMart3 plg_vmcalculation_avalara Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmcalculation_avalara_update.xml', 0, 0, ''),
(28, 'VirtueMart3 plg_search_virtuemart Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_search_virtuemart_update.xml', 0, 0, ''),
(29, 'VirtueMart3 MOD_VMENU Update Site', 'extension', 'http://virtuemart.net/releases/vm3/mod_vmmenu_update.xml', 0, 0, ''),
(30, 'VirtueMart3 mod_virtuemart_currencies Update Site', 'extension', 'http://virtuemart.net/releases/vm3/mod_virtuemart_currencies_update.xml', 0, 0, ''),
(31, 'VirtueMart3 mod_virtuemart_product Update Site', 'extension', 'http://virtuemart.net/releases/vm3/mod_virtuemart_product_update.xml', 0, 0, ''),
(32, 'VirtueMart3 mod_virtuemart_search Update Site', 'extension', 'http://virtuemart.net/releases/vm3/mod_virtuemart_search_update.xml', 0, 0, ''),
(33, 'VirtueMart3 mod_virtuemart_manufacturer Update Site', 'extension', 'http://virtuemart.net/releases/vm3/mod_virtuemart_manufacturer_update.xml', 0, 0, ''),
(34, 'VirtueMart3 mod_virtuemart_cart Update Site', 'extension', 'http://virtuemart.net/releases/vm3/mod_virtuemart_cart_update.xml', 0, 0, ''),
(35, 'VirtueMart3 mod_virtuemart_category Update Site', 'extension', 'http://virtuemart.net/releases/vm3/mod_virtuemart_category_update.xml', 0, 0, ''),
(36, 'VirtueMart3 AIO Update Site', 'extension', 'http://virtuemart.net/releases/vm3/virtuemart_aio_update.xml', 0, 0, ''),
(37, 'POWr Video Gallery Updates', 'extension', 'https://www.powr.io/joomla/update_powrvideogallery.xml', 0, 0, ''),
(38, 'WebInstaller Update Site', 'extension', 'http://appscdn.joomla.org/webapps/jedapps/webinstaller.xml', 0, 0, ''),
(39, 'Helix3 - Ajax', 'extension', 'http://www.joomshaper.com/updates/plg-ajax-helix3.xml', 1, 0, ''),
(40, 'System - Helix3 Framework', 'extension', 'http://www.joomshaper.com/updates/plg-system-helix3.xml', 1, 1487569200, ''),
(41, 'shaper_helix3', 'extension', 'https://www.joomshaper.com/updates/shaper-helix3.xml', 1, 1487569201, ''),
(42, '', 'collection', 'http://smartaddons.com/update_server/products.xml', 1, 1487569204, ''),
(43, 'Freestyle FAQs Updates', 'collection', 'http://www.freestyle-joomla.com/update/list.php?com=fsf', 1, 1487569205, '');

-- --------------------------------------------------------

--
-- Table structure for table `ecom_update_sites_extensions`
--

CREATE TABLE `ecom_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

--
-- Dumping data for table `ecom_update_sites_extensions`
--

INSERT INTO `ecom_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 802),
(4, 28),
(5, 10002),
(6, 10003),
(7, 10004),
(8, 10006),
(11, 10009),
(12, 10010),
(15, 10013),
(16, 10014),
(17, 10015),
(18, 10016),
(19, 10017),
(20, 10018),
(21, 10019),
(22, 10020),
(24, 10022),
(25, 10023),
(26, 10024),
(27, 10025),
(28, 10026),
(29, 10027),
(30, 10028),
(31, 10029),
(32, 10030),
(33, 10031),
(34, 10032),
(35, 10033),
(36, 10005),
(37, 10049),
(38, 10054),
(39, 10061),
(40, 10062),
(41, 10063),
(42, 10066),
(43, 10069);

-- --------------------------------------------------------

--
-- Table structure for table `ecom_usergroups`
--

CREATE TABLE `ecom_usergroups` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ecom_usergroups`
--

INSERT INTO `ecom_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Table structure for table `ecom_users`
--

CREATE TABLE `ecom_users` (
  `id` int(11) NOT NULL,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ecom_users`
--

INSERT INTO `ecom_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(114, 'Super User', 'ductien', 'dr.congtri@gmail.com', '$2y$10$FpVzomHYIPUGMJ8kv1KLruakiQ9DXAgKB30GUGor.M7CcFEnIl.OW', 0, 1, '2017-01-23 14:09:49', '2017-02-20 05:37:46', '0', '{}', '0000-00-00 00:00:00', 0, '', '', 0),
(118, 'Nguyễn Đức Tiến', 'ductien1a', 'ductien96.vn@gmail.com', '$2y$10$nKhFdkbm0iDbKhAWU83Lx.zXJ6xrjon2XfyKSuqIUVTB4qBpbuE.6', 0, 1, '2017-02-12 01:39:19', '0000-00-00 00:00:00', '', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0, '', '', 0),
(119, 'Nguyễn Hoàng Linh', 'hoanglinh', 'arsenal8x85@gmail.com', '$2y$10$CaaA9M184Pk1lVgPlfitpeCKfQNpYAXeTQCSQVrbfGkFkdxh3Ajpi', 0, 1, '2017-02-12 01:41:22', '0000-00-00 00:00:00', '', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ecom_user_keys`
--

CREATE TABLE `ecom_user_keys` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ecom_user_notes`
--

CREATE TABLE `ecom_user_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ecom_user_profiles`
--

CREATE TABLE `ecom_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Table structure for table `ecom_user_usergroup_map`
--

CREATE TABLE `ecom_user_usergroup_map` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ecom_user_usergroup_map`
--

INSERT INTO `ecom_user_usergroup_map` (`user_id`, `group_id`) VALUES
(114, 8),
(118, 2),
(119, 2);

-- --------------------------------------------------------

--
-- Table structure for table `ecom_utf8_conversion`
--

CREATE TABLE `ecom_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ecom_utf8_conversion`
--

INSERT INTO `ecom_utf8_conversion` (`converted`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `ecom_viewlevels`
--

CREATE TABLE `ecom_viewlevels` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ecom_viewlevels`
--

INSERT INTO `ecom_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 2, '[6,2,8]'),
(3, 'Special', 3, '[6,3,8]'),
(5, 'Guest', 1, '[9]'),
(6, 'Super Users', 4, '[8]');

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_adminmenuentries`
--

CREATE TABLE `ecom_virtuemart_adminmenuentries` (
  `id` tinyint(1) UNSIGNED NOT NULL,
  `module_id` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The ID of the VM Module, this Item is assigned to',
  `parent_id` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `name` char(64) NOT NULL DEFAULT '0',
  `link` char(64) NOT NULL DEFAULT '0',
  `depends` char(64) NOT NULL DEFAULT '' COMMENT 'Names of the Parameters, this Item depends on',
  `icon_class` char(96) DEFAULT NULL,
  `ordering` int(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `tooltip` char(128) DEFAULT NULL,
  `view` char(32) DEFAULT NULL,
  `task` char(32) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Administration Menu Items';

--
-- Dumping data for table `ecom_virtuemart_adminmenuentries`
--

INSERT INTO `ecom_virtuemart_adminmenuentries` (`id`, `module_id`, `parent_id`, `name`, `link`, `depends`, `icon_class`, `ordering`, `published`, `tooltip`, `view`, `task`) VALUES
(1, 1, 0, 'COM_VIRTUEMART_CATEGORY_S', '', '', 'vmicon vmicon-16-folder_camera', 1, 1, '', 'category', ''),
(2, 1, 0, 'COM_VIRTUEMART_PRODUCT_S', '', '', 'vmicon vmicon-16-camera', 2, 1, '', 'product', ''),
(3, 1, 0, 'COM_VIRTUEMART_PRODUCT_CUSTOM_FIELD_S', '', '', 'vmicon vmicon-16-document_move', 5, 1, '', 'custom', ''),
(4, 1, 0, 'COM_VIRTUEMART_PRODUCT_INVENTORY', '', '', 'vmicon vmicon-16-price_watch', 7, 1, '', 'inventory', ''),
(5, 1, 0, 'COM_VIRTUEMART_CALC_S', '', '', 'vmicon vmicon-16-calculator', 8, 1, '', 'calc', ''),
(6, 1, 0, 'COM_VIRTUEMART_REVIEW_RATE_S', '', '', 'vmicon vmicon-16-comments', 9, 1, '', 'ratings', ''),
(7, 2, 0, 'COM_VIRTUEMART_ORDER_S', '', '', 'vmicon vmicon-16-page_white_stack', 1, 1, '', 'orders', ''),
(8, 2, 0, 'COM_VIRTUEMART_COUPON_S', '', '', 'vmicon vmicon-16-shopping', 10, 1, '', 'coupon', ''),
(9, 2, 0, 'COM_VIRTUEMART_REPORT', '', '', 'vmicon vmicon-16-chart_bar', 3, 1, '', 'report', ''),
(10, 2, 0, 'COM_VIRTUEMART_USER_S', '', '', 'vmicon vmicon-16-user', 4, 1, '', 'user', ''),
(11, 2, 0, 'COM_VIRTUEMART_SHOPPERGROUP_S', '', '', 'vmicon vmicon-16-user-group', 5, 1, '', 'shoppergroup', ''),
(12, 3, 0, 'COM_VIRTUEMART_MANUFACTURER_S', '', '', 'vmicon vmicon-16-wrench_orange', 1, 1, '', 'manufacturer', ''),
(13, 3, 0, 'COM_VIRTUEMART_MANUFACTURER_CATEGORY_S', '', '', 'vmicon vmicon-16-folder_wrench', 2, 1, '', 'manufacturercategories', ''),
(14, 4, 0, 'COM_VIRTUEMART_STORE', '', '', 'vmicon vmicon-16-reseller_account_template', 1, 1, '', 'user', 'editshop'),
(15, 4, 0, 'COM_VIRTUEMART_MEDIA_S', '', '', 'vmicon vmicon-16-pictures', 2, 1, '', 'media', ''),
(16, 4, 0, 'COM_VIRTUEMART_SHIPMENTMETHOD_S', '', '', 'vmicon vmicon-16-lorry', 3, 1, '', 'shipmentmethod', ''),
(17, 4, 0, 'COM_VIRTUEMART_PAYMENTMETHOD_S', '', '', 'vmicon vmicon-16-creditcards', 4, 1, '', 'paymentmethod', ''),
(18, 5, 0, 'COM_VIRTUEMART_CONFIGURATION', '', '', 'vmicon vmicon-16-config', 1, 1, '', 'config', ''),
(19, 5, 0, 'COM_VIRTUEMART_USERFIELD_S', '', '', 'vmicon vmicon-16-participation_rate', 2, 1, '', 'userfields', ''),
(20, 5, 0, 'COM_VIRTUEMART_ORDERSTATUS_S', '', '', 'vmicon vmicon-16-document_editing', 3, 1, '', 'orderstatus', ''),
(21, 5, 0, 'COM_VIRTUEMART_CURRENCY_S', '', '', 'vmicon vmicon-16-coins', 5, 1, '', 'currency', ''),
(22, 5, 0, 'COM_VIRTUEMART_COUNTRY_S', '', '', 'vmicon vmicon-16-globe', 6, 1, '', 'country', ''),
(23, 11, 0, 'COM_VIRTUEMART_MIGRATION_UPDATE', '', '', 'vmicon vmicon-16-installer_box', 0, 1, '', 'updatesmigration', ''),
(24, 11, 0, 'COM_VIRTUEMART_ABOUT', '', '', 'vmicon vmicon-16-info', 10, 1, '', 'about', ''),
(25, 11, 0, 'COM_VIRTUEMART_HELP_TOPICS', 'http://docs.virtuemart.net/', '', 'vmicon vmicon-16-help', 5, 1, '', '', ''),
(26, 11, 0, 'COM_VIRTUEMART_COMMUNITY_FORUM', 'http://forum.virtuemart.net/', '', 'vmicon vmicon-16-reseller_programm', 7, 1, '', '', ''),
(27, 11, 0, 'COM_VIRTUEMART_STATISTIC_SUMMARY', '', '', 'vmicon vmicon-16-info', 1, 1, '', 'virtuemart', ''),
(28, 11, 0, 'COM_VIRTUEMART_LOG', '', '', 'vmicon vmicon-16-info', 2, 1, '', 'log', ''),
(29, 11, 0, 'COM_VIRTUEMART_SUPPORT', '', '', 'vmicon vmicon-16-help', 3, 1, '', 'support', '');

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_calcs`
--

CREATE TABLE `ecom_virtuemart_calcs` (
  `virtuemart_calc_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Belongs to vendor',
  `calc_jplugin_id` int(1) NOT NULL DEFAULT '0',
  `calc_name` varchar(64) NOT NULL DEFAULT '' COMMENT 'Name of the rule',
  `calc_descr` varchar(128) NOT NULL DEFAULT '' COMMENT 'Description',
  `calc_kind` varchar(16) NOT NULL DEFAULT '' COMMENT 'Discount/Tax/Margin/Commission',
  `calc_value_mathop` varchar(8) NOT NULL DEFAULT '' COMMENT 'the mathematical operation like (+,-,+%,-%)',
  `calc_value` decimal(10,4) NOT NULL DEFAULT '0.0000' COMMENT 'The Amount',
  `calc_currency` smallint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Currency of the Rule',
  `calc_shopper_published` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Visible for Shoppers',
  `calc_vendor_published` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Visible for Vendors',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Startdate if nothing is set = permanent',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Enddate if nothing is set = permanent',
  `for_override` tinyint(1) NOT NULL DEFAULT '0',
  `calc_params` varchar(18000) NOT NULL DEFAULT '',
  `ordering` int(1) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_calc_categories`
--

CREATE TABLE `ecom_virtuemart_calc_categories` (
  `id` int(1) UNSIGNED NOT NULL,
  `virtuemart_calc_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `virtuemart_category_id` int(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_calc_countries`
--

CREATE TABLE `ecom_virtuemart_calc_countries` (
  `id` int(1) UNSIGNED NOT NULL,
  `virtuemart_calc_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `virtuemart_country_id` int(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_calc_manufacturers`
--

CREATE TABLE `ecom_virtuemart_calc_manufacturers` (
  `id` int(1) UNSIGNED NOT NULL,
  `virtuemart_calc_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `virtuemart_manufacturer_id` int(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_calc_shoppergroups`
--

CREATE TABLE `ecom_virtuemart_calc_shoppergroups` (
  `id` int(1) UNSIGNED NOT NULL,
  `virtuemart_calc_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `virtuemart_shoppergroup_id` int(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_calc_states`
--

CREATE TABLE `ecom_virtuemart_calc_states` (
  `id` int(1) UNSIGNED NOT NULL,
  `virtuemart_calc_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `virtuemart_state_id` int(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_carts`
--

CREATE TABLE `ecom_virtuemart_carts` (
  `virtuemart_cart_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_user_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL,
  `cartData` varbinary(50000) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Used to store the cart';

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_categories`
--

CREATE TABLE `ecom_virtuemart_categories` (
  `virtuemart_category_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Belongs to vendor',
  `category_template` char(128) DEFAULT NULL,
  `category_layout` char(64) DEFAULT NULL,
  `category_product_layout` char(64) DEFAULT NULL,
  `products_per_row` tinyint(1) DEFAULT NULL,
  `limit_list_step` char(32) DEFAULT NULL,
  `limit_list_initial` smallint(1) UNSIGNED DEFAULT NULL,
  `hits` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `metarobot` char(40) NOT NULL DEFAULT '',
  `metaauthor` char(64) NOT NULL DEFAULT '',
  `ordering` int(1) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Product Categories are stored here';

--
-- Dumping data for table `ecom_virtuemart_categories`
--

INSERT INTO `ecom_virtuemart_categories` (`virtuemart_category_id`, `virtuemart_vendor_id`, `category_template`, `category_layout`, `category_product_layout`, `products_per_row`, `limit_list_step`, `limit_list_initial`, `hits`, `metarobot`, `metaauthor`, `ordering`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 1, '0', '0', '0', 3, '0', 0, 0, '', '', 0, 0, 1, '2017-01-23 15:52:18', 114, '2017-01-30 03:08:30', 114, '0000-00-00 00:00:00', 0),
(2, 1, '0', '0', '0', 3, '0', 0, 0, '', '', 0, 0, 1, '2017-01-23 15:53:50', 114, '2017-01-30 03:09:01', 114, '0000-00-00 00:00:00', 0),
(3, 1, '7', '0', '0', 3, '0', 0, 0, '', '', 0, 0, 1, '2017-01-23 15:54:23', 114, '2017-01-30 03:14:40', 114, '0000-00-00 00:00:00', 0),
(4, 1, 'default', '0', '0', 3, '0', 0, 0, '', '', 0, 0, 1, '2017-01-23 15:59:29', 114, '2017-02-01 05:58:54', 114, '0000-00-00 00:00:00', 0),
(5, 1, 'default', '0', '0', 3, '0', 0, 0, '', '', 0, 0, 1, '2017-01-23 15:59:50', 114, '2017-02-01 05:53:42', 114, '0000-00-00 00:00:00', 0),
(6, 1, 'default', '0', '0', 3, '0', 0, 0, '', '', 0, 0, 1, '2017-01-23 16:00:23', 114, '2017-02-01 05:57:55', 114, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_categories_vi_vn`
--

CREATE TABLE `ecom_virtuemart_categories_vi_vn` (
  `virtuemart_category_id` int(1) UNSIGNED NOT NULL,
  `category_name` varchar(180) NOT NULL DEFAULT '',
  `category_description` varchar(19000) NOT NULL DEFAULT '',
  `metadesc` varchar(400) NOT NULL DEFAULT '',
  `metakey` varchar(400) NOT NULL DEFAULT '',
  `customtitle` varchar(255) NOT NULL DEFAULT '',
  `slug` varchar(192) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecom_virtuemart_categories_vi_vn`
--

INSERT INTO `ecom_virtuemart_categories_vi_vn` (`virtuemart_category_id`, `category_name`, `category_description`, `metadesc`, `metakey`, `customtitle`, `slug`) VALUES
(1, 'Áo sơ mi', '', '', '', '', 'shirt'),
(2, 'Áo thun', '', '', '', '', 'tshirt'),
(3, 'Áo khoác', '', '', '', '', 'jacket'),
(4, 'Giày', '', '', '', '', 'shoe'),
(5, 'Quần', '', '', '', '', 'pant-1'),
(6, 'Phụ kiện', '', '', '', '', 'acce');

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_category_categories`
--

CREATE TABLE `ecom_virtuemart_category_categories` (
  `id` int(1) UNSIGNED NOT NULL,
  `category_parent_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `category_child_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Category child-parent relation list';

--
-- Dumping data for table `ecom_virtuemart_category_categories`
--

INSERT INTO `ecom_virtuemart_category_categories` (`id`, `category_parent_id`, `category_child_id`, `ordering`) VALUES
(1, 0, 1, 0),
(2, 0, 2, 0),
(3, 0, 3, 0),
(4, 0, 4, 0),
(5, 0, 5, 0),
(6, 0, 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_category_medias`
--

CREATE TABLE `ecom_virtuemart_category_medias` (
  `id` int(1) UNSIGNED NOT NULL,
  `virtuemart_category_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `virtuemart_media_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecom_virtuemart_category_medias`
--

INSERT INTO `ecom_virtuemart_category_medias` (`id`, `virtuemart_category_id`, `virtuemart_media_id`, `ordering`) VALUES
(1, 1, 1, 1),
(2, 2, 2, 1),
(3, 3, 3, 1),
(4, 4, 4, 1),
(5, 5, 5, 1),
(7, 6, 70, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_configs`
--

CREATE TABLE `ecom_virtuemart_configs` (
  `virtuemart_config_id` tinyint(1) UNSIGNED NOT NULL,
  `config` text,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Holds configuration settings';

--
-- Dumping data for table `ecom_virtuemart_configs`
--

INSERT INTO `ecom_virtuemart_configs` (`virtuemart_config_id`, `config`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 'useSSL="0"|dangeroustools="0"|debug_enable="none"|vmdev="none"|google_jquery="0"|multix="none"|usefancy="1"|jchosen="1"|enableEnglish="1"|shop_is_offline="0"|offline_message="K\\u00ednh g\\u1eedi Qu\\u00fd kh\\u00e1ch h\\u00e0ng,\\r\\n\\r\\nC\\u1ea3m \\u01a1n Qu\\u00fd kh\\u00e1ch h\\u00e0ng \\u0111\\u00e3 li\\u00ean t\\u1ee5c \\u1ee7ng h\\u1ed9 v\\u00e0 \\u0111\\u1ed3ng h\\u00e0nh v\\u1edbi ch\\u00fang t\\u00f4i trong th\\u1eddi gian qua.\\r\\n\\r\\nNh\\u1eb1m n\\u00e2ng cao ch\\u1ea5t l\\u01b0\\u1ee3ng ph\\u1ee5c v\\u1ee5 T-Store, h\\u1ec7 th\\u1ed1ng s\\u1ebd t\\u1ea1m d\\u1eebng ho\\u1ea1t \\u0111\\u1ed9ng \\u0111\\u1ec3 ti\\u1ebfn h\\u00e0nh n\\u00e2ng c\\u1ea5p. Sau 14h30 h\\u1ec7 th\\u1ed1ng tr\\u1edf l\\u1ea1i ho\\u1ea1t \\u0111\\u1ed9ng b\\u00ecnh th\\u01b0\\u1eddng.\\r\\n\\r\\nT-Store tr\\u00e2n tr\\u1ecdng th\\u00f4ng b\\u00e1o cho to\\u00e0n th\\u1ec3 Qu\\u00fd kh\\u00e1ch h\\u00e0ng, k\\u00ednh mong m\\u1ecdi ng\\u01b0\\u1eddi th\\u00f4ng c\\u1ea3m \\u0111\\u1ec3 vi\\u1ec7c ti\\u1ebfn h\\u00e0nh n\\u00e2ng c\\u1ea5p di\\u1ec5n ra thu\\u1eadn l\\u1ee3i.\\r\\n\\r\\nTr\\u00e2n tr\\u1ecdng c\\u1ea3m \\u01a1n!"|use_as_catalog="0"|currency_converter_module="convertECB.php"|order_mail_html="1"|useVendorEmail="0"|pdf_button_enable="1"|show_emailfriend="1"|show_printicon="1"|show_out_of_stock_products="1"|ask_captcha="1"|coupons_enable="1"|show_uncat_products="0"|show_uncat_child_products="0"|show_unpub_cat_products="1"|coupons_default_expire="1,M"|weight_unit_default="KG"|lwh_unit_default="M"|list_limit="30"|showReviewFor="all"|reviewMode="registered"|showRatingFor="all"|ratingMode="registered"|reviews_autopublish="1"|reviews_minimum_comment_length="0"|reviews_maximum_comment_length="2000"|product_navigation="1"|display_stock="1"|vmtemplate="7"|categorytemplate="7"|showCategory="1"|categorylayout="0"|categories_per_row="3"|productlayout="0"|products_per_row="3"|llimit_init_FE="24"|vmlayout="0"|show_store_desc="1"|show_categories="1"|homepage_categories_per_row="3"|homepage_products_per_row="3"|show_featured="1"|featured_products_rows="1"|show_topTen="1"|topTen_products_rows="1"|show_recent="1"|recent_products_rows="1"|show_latest="1"|latest_products_rows="1"|assets_general_path="components\\/com_virtuemart\\/assets\\/"|media_category_path="images\\/stories\\/virtuemart\\/category\\/"|media_product_path="images\\/stories\\/virtuemart\\/product\\/"|media_manufacturer_path="images\\/stories\\/virtuemart\\/manufacturer\\/"|media_vendor_path="images\\/stories\\/virtuemart\\/vendor\\/"|forSale_path_thumb="images\\/stories\\/virtuemart\\/forSale\\/resized\\/"|img_resize_enable="1"|img_width="0"|img_height="90"|no_image_set="noimage.gif"|no_image_found="warning.png"|browse_orderby_field="pc.ordering"|browse_cat_orderby_field="c.ordering,category_name"|browse_orderby_fields=["product_name","`p`.product_sku","category_name","mf_name","pc.ordering"]|browse_search_fields=["product_name","`p`.product_sku","product_s_desc","product_desc","category_name","category_description","mf_name"]|askprice="0"|roundindig="0"|show_prices="1"|price_show_packaging_pricelabel="0"|show_tax="0"|basePrice="0"|basePriceText="1"|basePriceRounding="-1"|variantModification="0"|variantModificationText="1"|variantModificationRounding="-1"|basePriceVariant="0"|basePriceVariantText="1"|basePriceVariantRounding="-1"|basePriceWithTax="0"|basePriceWithTaxText="1"|basePriceWithTaxRounding="-1"|discountedPriceWithoutTax="0"|discountedPriceWithoutTaxText="1"|discountedPriceWithoutTaxRounding="-1"|salesPriceWithDiscount="0"|salesPriceWithDiscountText="1"|salesPriceWithDiscountRounding="-1"|salesPrice="1"|salesPriceText="1"|salesPriceRounding="-1"|priceWithoutTax="0"|priceWithoutTaxText="1"|priceWithoutTaxRounding="-1"|discountAmount="0"|discountAmountText="1"|discountAmountRounding="-1"|taxAmount="0"|taxAmountText="1"|taxAmountRounding="-1"|unitPrice="0"|unitPriceText="1"|unitPriceRounding="-1"|addtocart_popup="1"|check_stock="0"|automatic_payment="0"|automatic_shipment="0"|oncheckout_opc="1"|oncheckout_ajax="0"|oncheckout_show_legal_info="1"|oncheckout_show_register="1"|oncheckout_show_steps="1"|oncheckout_show_register_text="COM_VIRTUEMART_ONCHECKOUT_DEFAULT_TEXT_REGISTER"|oncheckout_show_images="1"|inv_os=["C"]|email_os_s=["U","C","X","R","S"]|email_os_v=["U","C","X","R"]|seo_disabled="0"|seo_translate="0"|seo_use_id="0"|enable_content_plugin="0"|reg_captcha="0"|handle_404="1"|active_languages=["vi-VN"]|revproxvar=""|multixcart="0"|attach=""|attach_os=["U","C","X","R"]|pdf_icon="0"|recommend_unauth="0"|ask_question="1"|asks_minimum_comment_length="50"|asks_maximum_comment_length="2000"|cp_rm=["C"]|show_pcustoms="1"|show_uncat_parent_products="0"|latest_products_days="7"|latest_products_orderBy="created_on"|lstockmail="0"|stockhandle="none"|rised_availability=""|image=""|rr_os=["C"]|show_manufacturers="1"|cartlayout="0"|productsublayout="0"|manufacturer_per_row="3"|mediaLimit="20"|llimit_init_BE="30"|pagseq=""|pagseq_1=""|pagseq_2=""|pagseq_3=""|pagseq_4=""|pagseq_5=""|feed_cat_published="0"|feed_cat_show_images="0"|feed_cat_show_prices="0"|feed_cat_show_description="0"|feed_cat_description_type="product_desc"|feed_cat_max_text_length="500"|forSale_path="D:\\\\xampp\\\\htdocs\\\\vmfiles\\\\"|add_img_main="0"|feed_latest_published="0"|feed_latest_nb="5"|feed_topten_published="0"|feed_topten_nb="5"|feed_featured_published="0"|feed_featured_nb="5"|feed_home_show_images="1"|feed_home_show_prices="1"|feed_home_show_description="0"|feed_home_description_type="product_s_desc"|feed_home_max_text_length="500"|css="1"|jquery="1"|jprice="1"|jsite="1"|jdynupdate="1"|rappenrundung="0"|cVarswT="0"|popup_rel="1"|set_automatic_shipment="0"|set_automatic_payment="0"|agree_to_tos_onorder="1"|oncheckout_only_registered="0"|oncheckout_change_shopper="1"|del_date_type="m"|prd_brws_orderby_dir="ASC"|cat_brws_orderby_dir="ASC"|use_seo_suffix="1"|seo_sufix="-detail"|seo_full="1"|task="save"|option="com_virtuemart"|view="config"|ce88ee4434baf1987f2d90bdd51468c7="1"', '0000-00-00 00:00:00', 0, '2017-02-01 04:04:05', 114, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_countries`
--

CREATE TABLE `ecom_virtuemart_countries` (
  `virtuemart_country_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_worldzone_id` tinyint(1) NOT NULL DEFAULT '1',
  `country_name` varchar(64) DEFAULT NULL,
  `country_3_code` char(3) DEFAULT NULL,
  `country_2_code` char(2) DEFAULT NULL,
  `ordering` int(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Country records';

--
-- Dumping data for table `ecom_virtuemart_countries`
--

INSERT INTO `ecom_virtuemart_countries` (`virtuemart_country_id`, `virtuemart_worldzone_id`, `country_name`, `country_3_code`, `country_2_code`, `ordering`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 1, 'Afghanistan', 'AFG', 'AF', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(2, 1, 'Albania', 'ALB', 'AL', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(3, 1, 'Algeria', 'DZA', 'DZ', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(4, 1, 'American Samoa', 'ASM', 'AS', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(5, 1, 'Andorra', 'AND', 'AD', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(6, 1, 'Angola', 'AGO', 'AO', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(7, 1, 'Anguilla', 'AIA', 'AI', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(8, 1, 'Antarctica', 'ATA', 'AQ', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(9, 1, 'Antigua and Barbuda', 'ATG', 'AG', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(10, 1, 'Argentina', 'ARG', 'AR', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(11, 1, 'Armenia', 'ARM', 'AM', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(12, 1, 'Aruba', 'ABW', 'AW', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(13, 1, 'Australia', 'AUS', 'AU', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(14, 1, 'Austria', 'AUT', 'AT', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(15, 1, 'Azerbaijan', 'AZE', 'AZ', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(16, 1, 'Bahamas', 'BHS', 'BS', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(17, 1, 'Bahrain', 'BHR', 'BH', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(18, 1, 'Bangladesh', 'BGD', 'BD', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(19, 1, 'Barbados', 'BRB', 'BB', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(20, 1, 'Belarus', 'BLR', 'BY', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(21, 1, 'Belgium', 'BEL', 'BE', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(22, 1, 'Belize', 'BLZ', 'BZ', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(23, 1, 'Benin', 'BEN', 'BJ', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(24, 1, 'Bermuda', 'BMU', 'BM', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(25, 1, 'Bhutan', 'BTN', 'BT', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(26, 1, 'Bolivia', 'BOL', 'BO', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(27, 1, 'Bosnia and Herzegowina', 'BIH', 'BA', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(28, 1, 'Botswana', 'BWA', 'BW', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(29, 1, 'Bouvet Island', 'BVT', 'BV', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(30, 1, 'Brazil', 'BRA', 'BR', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(31, 1, 'British Indian Ocean Territory', 'IOT', 'IO', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(32, 1, 'Brunei Darussalam', 'BRN', 'BN', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(33, 1, 'Bulgaria', 'BGR', 'BG', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(34, 1, 'Burkina Faso', 'BFA', 'BF', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(35, 1, 'Burundi', 'BDI', 'BI', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(36, 1, 'Cambodia', 'KHM', 'KH', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(37, 1, 'Cameroon', 'CMR', 'CM', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(38, 1, 'Canada', 'CAN', 'CA', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(39, 1, 'Cape Verde', 'CPV', 'CV', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(40, 1, 'Cayman Islands', 'CYM', 'KY', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(41, 1, 'Central African Republic', 'CAF', 'CF', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(42, 1, 'Chad', 'TCD', 'TD', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(43, 1, 'Chile', 'CHL', 'CL', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(44, 1, 'China', 'CHN', 'CN', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(45, 1, 'Christmas Island', 'CXR', 'CX', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(46, 1, 'Cocos (Keeling) Islands', 'CCK', 'CC', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(47, 1, 'Colombia', 'COL', 'CO', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(48, 1, 'Comoros', 'COM', 'KM', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(49, 1, 'Congo', 'COG', 'CG', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(50, 1, 'Cook Islands', 'COK', 'CK', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(51, 1, 'Costa Rica', 'CRI', 'CR', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(52, 1, 'Cote D''Ivoire', 'CIV', 'CI', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(53, 1, 'Croatia', 'HRV', 'HR', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(54, 1, 'Cuba', 'CUB', 'CU', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(55, 1, 'Cyprus', 'CYP', 'CY', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(56, 1, 'Czech Republic', 'CZE', 'CZ', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(57, 1, 'Denmark', 'DNK', 'DK', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(58, 1, 'Djibouti', 'DJI', 'DJ', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(59, 1, 'Dominica', 'DMA', 'DM', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(60, 1, 'Dominican Republic', 'DOM', 'DO', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(61, 1, 'East Timor', 'TLS', 'TL', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(62, 1, 'Ecuador', 'ECU', 'EC', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(63, 1, 'Egypt', 'EGY', 'EG', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(64, 1, 'El Salvador', 'SLV', 'SV', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(65, 1, 'Equatorial Guinea', 'GNQ', 'GQ', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(66, 1, 'Eritrea', 'ERI', 'ER', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(67, 1, 'Estonia', 'EST', 'EE', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(68, 1, 'Ethiopia', 'ETH', 'ET', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(69, 1, 'Falkland Islands (Malvinas)', 'FLK', 'FK', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(70, 1, 'Faroe Islands', 'FRO', 'FO', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(71, 1, 'Fiji', 'FJI', 'FJ', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(72, 1, 'Finland', 'FIN', 'FI', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(73, 1, 'France', 'FRA', 'FR', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(75, 1, 'French Guiana', 'GUF', 'GF', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(76, 1, 'French Polynesia', 'PYF', 'PF', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(77, 1, 'French Southern Territories', 'ATF', 'TF', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(78, 1, 'Gabon', 'GAB', 'GA', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(79, 1, 'Gambia', 'GMB', 'GM', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(80, 1, 'Georgia', 'GEO', 'GE', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(81, 1, 'Germany', 'DEU', 'DE', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(82, 1, 'Ghana', 'GHA', 'GH', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(83, 1, 'Gibraltar', 'GIB', 'GI', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(84, 1, 'Greece', 'GRC', 'GR', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(85, 1, 'Greenland', 'GRL', 'GL', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(86, 1, 'Grenada', 'GRD', 'GD', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(87, 1, 'Guadeloupe', 'GLP', 'GP', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(88, 1, 'Guam', 'GUM', 'GU', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(89, 1, 'Guatemala', 'GTM', 'GT', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(90, 1, 'Guinea', 'GIN', 'GN', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(91, 1, 'Guinea-bissau', 'GNB', 'GW', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(92, 1, 'Guyana', 'GUY', 'GY', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(93, 1, 'Haiti', 'HTI', 'HT', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(94, 1, 'Heard and Mc Donald Islands', 'HMD', 'HM', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(95, 1, 'Honduras', 'HND', 'HN', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(96, 1, 'Hong Kong', 'HKG', 'HK', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(97, 1, 'Hungary', 'HUN', 'HU', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(98, 1, 'Iceland', 'ISL', 'IS', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(99, 1, 'India', 'IND', 'IN', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(100, 1, 'Indonesia', 'IDN', 'ID', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(101, 1, 'Iran (Islamic Republic of)', 'IRN', 'IR', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(102, 1, 'Iraq', 'IRQ', 'IQ', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(103, 1, 'Ireland', 'IRL', 'IE', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(104, 1, 'Israel', 'ISR', 'IL', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(105, 1, 'Italy', 'ITA', 'IT', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(106, 1, 'Jamaica', 'JAM', 'JM', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(107, 1, 'Japan', 'JPN', 'JP', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(108, 1, 'Jordan', 'JOR', 'JO', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(109, 1, 'Kazakhstan', 'KAZ', 'KZ', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(110, 1, 'Kenya', 'KEN', 'KE', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(111, 1, 'Kiribati', 'KIR', 'KI', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(112, 1, 'Korea, Democratic People''s Republic of', 'PRK', 'KP', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(113, 1, 'Korea, Republic of', 'KOR', 'KR', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(114, 1, 'Kuwait', 'KWT', 'KW', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(115, 1, 'Kyrgyzstan', 'KGZ', 'KG', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(116, 1, 'Lao People''s Democratic Republic', 'LAO', 'LA', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(117, 1, 'Latvia', 'LVA', 'LV', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(118, 1, 'Lebanon', 'LBN', 'LB', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(119, 1, 'Lesotho', 'LSO', 'LS', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(120, 1, 'Liberia', 'LBR', 'LR', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(121, 1, 'Libya', 'LBY', 'LY', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(122, 1, 'Liechtenstein', 'LIE', 'LI', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(123, 1, 'Lithuania', 'LTU', 'LT', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(124, 1, 'Luxembourg', 'LUX', 'LU', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(125, 1, 'Macau', 'MAC', 'MO', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(126, 1, 'Macedonia, The Former Yugoslav Republic of', 'MKD', 'MK', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(127, 1, 'Madagascar', 'MDG', 'MG', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(128, 1, 'Malawi', 'MWI', 'MW', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(129, 1, 'Malaysia', 'MYS', 'MY', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(130, 1, 'Maldives', 'MDV', 'MV', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(131, 1, 'Mali', 'MLI', 'ML', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(132, 1, 'Malta', 'MLT', 'MT', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(133, 1, 'Marshall Islands', 'MHL', 'MH', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(134, 1, 'Martinique', 'MTQ', 'MQ', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(135, 1, 'Mauritania', 'MRT', 'MR', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(136, 1, 'Mauritius', 'MUS', 'MU', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(137, 1, 'Mayotte', 'MYT', 'YT', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(138, 1, 'Mexico', 'MEX', 'MX', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(139, 1, 'Micronesia, Federated States of', 'FSM', 'FM', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(140, 1, 'Moldova, Republic of', 'MDA', 'MD', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(141, 1, 'Monaco', 'MCO', 'MC', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(142, 1, 'Mongolia', 'MNG', 'MN', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(143, 1, 'Montserrat', 'MSR', 'MS', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(144, 1, 'Morocco', 'MAR', 'MA', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(145, 1, 'Mozambique', 'MOZ', 'MZ', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(146, 1, 'Myanmar', 'MMR', 'MM', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(147, 1, 'Namibia', 'NAM', 'NA', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(148, 1, 'Nauru', 'NRU', 'NR', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(149, 1, 'Nepal', 'NPL', 'NP', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(150, 1, 'Netherlands', 'NLD', 'NL', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(151, 1, 'Netherlands Antilles', 'ANT', 'AN', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(152, 1, 'New Caledonia', 'NCL', 'NC', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(153, 1, 'New Zealand', 'NZL', 'NZ', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(154, 1, 'Nicaragua', 'NIC', 'NI', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(155, 1, 'Niger', 'NER', 'NE', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(156, 1, 'Nigeria', 'NGA', 'NG', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(157, 1, 'Niue', 'NIU', 'NU', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(158, 1, 'Norfolk Island', 'NFK', 'NF', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(159, 1, 'Northern Mariana Islands', 'MNP', 'MP', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(160, 1, 'Norway', 'NOR', 'NO', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(161, 1, 'Oman', 'OMN', 'OM', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(162, 1, 'Pakistan', 'PAK', 'PK', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(163, 1, 'Palau', 'PLW', 'PW', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(164, 1, 'Panama', 'PAN', 'PA', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(165, 1, 'Papua New Guinea', 'PNG', 'PG', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(166, 1, 'Paraguay', 'PRY', 'PY', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(167, 1, 'Peru', 'PER', 'PE', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(168, 1, 'Philippines', 'PHL', 'PH', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(169, 1, 'Pitcairn', 'PCN', 'PN', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(170, 1, 'Poland', 'POL', 'PL', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(171, 1, 'Portugal', 'PRT', 'PT', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(172, 1, 'Puerto Rico', 'PRI', 'PR', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(173, 1, 'Qatar', 'QAT', 'QA', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(174, 1, 'Reunion', 'REU', 'RE', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(175, 1, 'Romania', 'ROM', 'RO', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(176, 1, 'Russian Federation', 'RUS', 'RU', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(177, 1, 'Rwanda', 'RWA', 'RW', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(178, 1, 'Saint Kitts and Nevis', 'KNA', 'KN', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(179, 1, 'Saint Lucia', 'LCA', 'LC', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(180, 1, 'Saint Vincent and the Grenadines', 'VCT', 'VC', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(181, 1, 'Samoa', 'WSM', 'WS', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(182, 1, 'San Marino', 'SMR', 'SM', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(183, 1, 'Sao Tome and Principe', 'STP', 'ST', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(184, 1, 'Saudi Arabia', 'SAU', 'SA', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(185, 1, 'Senegal', 'SEN', 'SN', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(186, 1, 'Seychelles', 'SYC', 'SC', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(187, 1, 'Sierra Leone', 'SLE', 'SL', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(188, 1, 'Singapore', 'SGP', 'SG', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(189, 1, 'Slovakia', 'SVK', 'SK', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(190, 1, 'Slovenia', 'SVN', 'SI', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(191, 1, 'Solomon Islands', 'SLB', 'SB', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(192, 1, 'Somalia', 'SOM', 'SO', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(193, 1, 'South Africa', 'ZAF', 'ZA', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(194, 1, 'South Georgia and the South Sandwich Islands', 'SGS', 'GS', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(195, 1, 'Spain', 'ESP', 'ES', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(196, 1, 'Sri Lanka', 'LKA', 'LK', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(197, 1, 'St. Helena', 'SHN', 'SH', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(198, 1, 'St. Pierre and Miquelon', 'SPM', 'PM', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(199, 1, 'Sudan', 'SDN', 'SD', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(200, 1, 'Suriname', 'SUR', 'SR', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(201, 1, 'Svalbard and Jan Mayen Islands', 'SJM', 'SJ', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(202, 1, 'Swaziland', 'SWZ', 'SZ', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(203, 1, 'Sweden', 'SWE', 'SE', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(204, 1, 'Switzerland', 'CHE', 'CH', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(205, 1, 'Syrian Arab Republic', 'SYR', 'SY', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(206, 1, 'Taiwan', 'TWN', 'TW', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(207, 1, 'Tajikistan', 'TJK', 'TJ', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(208, 1, 'Tanzania, United Republic of', 'TZA', 'TZ', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(209, 1, 'Thailand', 'THA', 'TH', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(210, 1, 'Togo', 'TGO', 'TG', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(211, 1, 'Tokelau', 'TKL', 'TK', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(212, 1, 'Tonga', 'TON', 'TO', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(213, 1, 'Trinidad and Tobago', 'TTO', 'TT', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(214, 1, 'Tunisia', 'TUN', 'TN', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(215, 1, 'Turkey', 'TUR', 'TR', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(216, 1, 'Turkmenistan', 'TKM', 'TM', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(217, 1, 'Turks and Caicos Islands', 'TCA', 'TC', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(218, 1, 'Tuvalu', 'TUV', 'TV', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(219, 1, 'Uganda', 'UGA', 'UG', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(220, 1, 'Ukraine', 'UKR', 'UA', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(221, 1, 'United Arab Emirates', 'ARE', 'AE', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(222, 1, 'United Kingdom', 'GBR', 'GB', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(223, 1, 'United States', 'USA', 'US', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(224, 1, 'United States Minor Outlying Islands', 'UMI', 'UM', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(225, 1, 'Uruguay', 'URY', 'UY', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(226, 1, 'Uzbekistan', 'UZB', 'UZ', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(227, 1, 'Vanuatu', 'VUT', 'VU', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(228, 1, 'Vatican City State (Holy See)', 'VAT', 'VA', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(229, 1, 'Venezuela', 'VEN', 'VE', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(230, 1, 'Viet Nam', 'VNM', 'VN', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(231, 1, 'Virgin Islands (British)', 'VGB', 'VG', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(232, 1, 'Virgin Islands (U.S.)', 'VIR', 'VI', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(233, 1, 'Wallis and Futuna Islands', 'WLF', 'WF', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(234, 1, 'Western Sahara', 'ESH', 'EH', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(235, 1, 'Yemen', 'YEM', 'YE', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(237, 1, 'The Democratic Republic of Congo', 'RCB', 'CD', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(238, 1, 'Zambia', 'ZMB', 'ZM', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(239, 1, 'Zimbabwe', 'ZWE', 'ZW', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(241, 1, 'Jersey', 'JEY', 'JE', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(242, 1, 'St. Barthelemy', 'BLM', 'BL', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(243, 1, 'St. Eustatius', 'BES', 'BQ', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(244, 1, 'Canary Islands', 'XCA', 'IC', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(245, 1, 'Serbia', 'SRB', 'RS', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(246, 1, 'Sint Maarten (French Antilles)', 'MAF', 'MF', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(247, 1, 'Sint Maarten (Netherlands Antilles)', 'SXM', 'SX', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(248, 1, 'Palestinian Territory, occupied', 'PSE', 'PS', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_coupons`
--

CREATE TABLE `ecom_virtuemart_coupons` (
  `virtuemart_coupon_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL,
  `coupon_code` varchar(32) NOT NULL DEFAULT '',
  `percent_or_total` enum('percent','total') NOT NULL DEFAULT 'percent',
  `coupon_type` enum('gift','permanent') NOT NULL DEFAULT 'gift',
  `coupon_value` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `coupon_start_date` datetime DEFAULT NULL,
  `coupon_expiry_date` datetime DEFAULT NULL,
  `coupon_value_valid` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `coupon_used` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Used to store coupon codes';

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_currencies`
--

CREATE TABLE `ecom_virtuemart_currencies` (
  `virtuemart_currency_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL DEFAULT '1',
  `currency_name` varchar(64) DEFAULT NULL,
  `currency_code_2` char(2) DEFAULT NULL,
  `currency_code_3` char(3) DEFAULT NULL,
  `currency_numeric_code` int(4) DEFAULT NULL,
  `currency_exchange_rate` decimal(10,5) DEFAULT NULL,
  `currency_symbol` varchar(8) DEFAULT NULL,
  `currency_decimal_place` varchar(8) DEFAULT NULL,
  `currency_decimal_symbol` varchar(8) DEFAULT NULL,
  `currency_thousands` varchar(8) DEFAULT NULL,
  `currency_positive_style` varchar(64) DEFAULT NULL,
  `currency_negative_style` varchar(64) DEFAULT NULL,
  `ordering` int(1) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '1',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Used to store currencies';

--
-- Dumping data for table `ecom_virtuemart_currencies`
--

INSERT INTO `ecom_virtuemart_currencies` (`virtuemart_currency_id`, `virtuemart_vendor_id`, `currency_name`, `currency_code_2`, `currency_code_3`, `currency_numeric_code`, `currency_exchange_rate`, `currency_symbol`, `currency_decimal_place`, `currency_decimal_symbol`, `currency_thousands`, `currency_positive_style`, `currency_negative_style`, `ordering`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(2, 1, 'United Arab Emirates dirham', '', 'AED', 784, '0.00000', 'د.إ', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(4, 1, 'Albanian lek', '', 'ALL', 8, '0.00000', 'Lek', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(5, 1, 'Netherlands Antillean gulden', '', 'ANG', 532, '0.00000', 'ƒ', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(7, 1, 'Argentine peso', '', 'ARS', 32, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(9, 1, 'Australian dollar', '', 'AUD', 36, '0.00000', '$', '2', '.', '', '{symbol} {number}', '{sign}{symbol} {number}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(10, 1, 'Aruban florin', '', 'AWG', 533, '0.00000', 'ƒ', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(11, 1, 'Barbadian dollar', '', 'BBD', 52, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(12, 1, 'Bangladeshi taka', '', 'BDT', 50, '0.00000', '৳', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(15, 1, 'Bahraini dinar', '', 'BHD', 48, '0.00000', 'ب.د', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(16, 1, 'Burundian franc', '', 'BIF', 108, '0.00000', 'Fr', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(17, 1, 'Bermudian dollar', '', 'BMD', 60, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(18, 1, 'Brunei dollar', '', 'BND', 96, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(19, 1, 'Bolivian boliviano', '', 'BOB', 68, '0.00000', '$b', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(20, 1, 'Brazilian real', '', 'BRL', 986, '0.00000', 'R$', '2', ',', '.', '{symbol} {number}', '{symbol} {sign}{number}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(21, 1, 'Bahamian dollar', '', 'BSD', 44, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(22, 1, 'Bhutanese ngultrum', '', 'BTN', 64, '0.00000', 'BTN', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(24, 1, 'Botswana pula', '', 'BWP', 72, '0.00000', 'P', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(25, 1, 'Belize dollar', '', 'BZD', 84, '0.00000', 'BZ$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(26, 1, 'Canadian dollar', '', 'CAD', 124, '0.00000', '$', '2', '.', ',', '{symbol}{number}', '{symbol}{sign}{number}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(27, 1, 'Swiss franc', '', 'CHF', 756, '0.00000', 'CHF', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(28, 1, 'Unidad de Fomento', '', 'CLF', 990, '0.00000', 'CLF', '0', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(29, 1, 'Chilean peso', '', 'CLP', 152, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(30, 1, 'Chinese renminbi yuan', '', 'CNY', 156, '0.00000', '元', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(31, 1, 'Colombian peso', '', 'COP', 170, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(32, 1, 'Costa Rican colón', '', 'CRC', 188, '0.00000', '₡', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(33, 1, 'Czech koruna', '', 'CZK', 203, '0.00000', 'Kč', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(34, 1, 'Cuban peso', '', 'CUP', 192, '0.00000', '₱', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(35, 1, 'Cape Verdean escudo', '', 'CVE', 132, '0.00000', '$', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(40, 1, 'Danish krone', '', 'DKK', 208, '0.00000', 'kr', '2', '.', ',', '{symbol}{number}', '{symbol}{sign}{number}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(41, 1, 'Dominican peso', '', 'DOP', 214, '0.00000', 'RD$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(42, 1, 'Algerian dinar', '', 'DZD', 12, '0.00000', 'د.ج', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(44, 1, 'Egyptian pound', '', 'EGP', 818, '0.00000', '£', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(46, 1, 'Ethiopian birr', '', 'ETB', 230, '0.00000', 'ETB', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(47, 1, 'Euro', '', 'EUR', 978, '0.00000', '€', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(49, 1, 'Fijian dollar', '', 'FJD', 242, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(50, 1, 'Falkland pound', '', 'FKP', 238, '0.00000', '£', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(52, 1, 'British pound', '', 'GBP', 826, '0.00000', '£', '2', '.', ',', '{symbol}{number}', '{symbol}{sign}{number}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(54, 1, 'Gibraltar pound', '', 'GIP', 292, '0.00000', '£', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(55, 1, 'Gambian dalasi', '', 'GMD', 270, '0.00000', 'D', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(56, 1, 'Guinean franc', '', 'GNF', 324, '0.00000', 'Fr', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(58, 1, 'Guatemalan quetzal', '', 'GTQ', 320, '0.00000', 'Q', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(60, 1, 'Guyanese dollar', '', 'GYD', 328, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(61, 1, 'Hong Kong dollar', '', 'HKD', 344, '0.00000', '元', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(62, 1, 'Honduran lempira', '', 'HNL', 340, '0.00000', 'L', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(63, 1, 'Haitian gourde', '', 'HTG', 332, '0.00000', 'G', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(64, 1, 'Hungarian forint', '', 'HUF', 348, '0.00000', 'Ft', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(65, 1, 'Indonesian rupiah', '', 'IDR', 360, '0.00000', 'Rp', '0', '', '', '{symbol}{number}', '{symbol}{sign}{number}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(67, 1, 'Israeli new sheqel', '', 'ILS', 376, '0.00000', '₪', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(68, 1, 'Indian rupee', '', 'INR', 356, '0.00000', '₨', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(69, 1, 'Iraqi dinar', '', 'IQD', 368, '0.00000', 'ع.د', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(70, 1, 'Iranian rial', '', 'IRR', 364, '0.00000', '﷼', '2', ',', '', '{number} {symbol}', '{sign}{number}{symb0l}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(73, 1, 'Jamaican dollar', '', 'JMD', 388, '0.00000', 'J$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(74, 1, 'Jordanian dinar', '', 'JOD', 400, '0.00000', 'د.ا', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(75, 1, 'Japanese yen', '', 'JPY', 392, '0.00000', '¥', '0', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(76, 1, 'Kenyan shilling', '', 'KES', 404, '0.00000', 'Sh', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(77, 1, 'Cambodian riel', '', 'KHR', 116, '0.00000', '៛', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(78, 1, 'Comorian franc', '', 'KMF', 174, '0.00000', 'Fr', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(79, 1, 'North Korean won', '', 'KPW', 408, '0.00000', '₩', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(80, 1, 'South Korean won', '', 'KRW', 410, '0.00000', '₩', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(81, 1, 'Kuwaiti dinar', '', 'KWD', 414, '0.00000', 'د.ك', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(82, 1, 'Cayman Islands dollar', '', 'KYD', 136, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(83, 1, 'Lao kip', '', 'LAK', 418, '0.00000', '₭', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(84, 1, 'Lebanese pound', '', 'LBP', 422, '0.00000', '£', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(85, 1, 'Sri Lankan rupee', '', 'LKR', 144, '0.00000', '₨', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(86, 1, 'Liberian dollar', '', 'LRD', 430, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(87, 1, 'Lesotho loti', '', 'LSL', 426, '0.00000', 'L', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(89, 1, 'Libyan dinar', '', 'LYD', 434, '0.00000', 'ل.د', '3', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(90, 1, 'Moroccan dirham', '', 'MAD', 504, '0.00000', 'د.م.', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(92, 1, 'Mongolian tögrög', '', 'MNT', 496, '0.00000', '₮', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(93, 1, 'Macanese pataca', '', 'MOP', 446, '0.00000', 'P', '1', ',', '', '{symbol}{number}', '{symbol}{sign}{number}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(94, 1, 'Mauritanian ouguiya', '', 'MRO', 478, '0.00000', 'UM', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(96, 1, 'Mauritian rupee', '', 'MUR', 480, '0.00000', '₨', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(97, 1, 'Maldivian rufiyaa', '', 'MVR', 462, '0.00000', 'ރ.', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(98, 1, 'Malawian kwacha', '', 'MWK', 454, '0.00000', 'MK', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(100, 1, 'Malaysian ringgit', '', 'MYR', 458, '0.00000', 'RM', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(102, 1, 'Nigerian naira', '', 'NGN', 566, '0.00000', '₦', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(105, 1, 'Norwegian krone', '', 'NOK', 578, '0.00000', 'kr', '2', ',', '', '{symbol}{number}', '{symbol}{sign}{number}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(106, 1, 'Nepalese rupee', '', 'NPR', 524, '0.00000', '₨', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(107, 1, 'New Zealand dollar', '', 'NZD', 554, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{symbol}{sign}{number}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(108, 1, 'Omani rial', '', 'OMR', 512, '0.00000', '﷼', '3', '.', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(109, 1, 'Panamanian balboa', '', 'PAB', 590, '0.00000', 'B/.', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(110, 1, 'Peruvian nuevo sol', '', 'PEN', 604, '0.00000', 'S/.', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(111, 1, 'Papua New Guinean kina', '', 'PGK', 598, '0.00000', 'K', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(112, 1, 'Philippine peso', '', 'PHP', 608, '0.00000', '₱', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(113, 1, 'Pakistani rupee', '', 'PKR', 586, '0.00000', '₨', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(114, 1, 'Polish Złoty', '', 'PLN', 985, '0.00000', 'zł', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(116, 1, 'Paraguayan guaraní', '', 'PYG', 600, '0.00000', '₲', '0', '', '.', '{symbol} {number}', '{symbol} {sign}{number}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(117, 1, 'Qatari riyal', '', 'QAR', 634, '0.00000', '﷼', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(118, 1, 'Romanian leu', '', 'RON', 946, '0.00000', 'lei', '2', ',', '.', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(119, 1, 'Rwandan franc', '', 'RWF', 646, '0.00000', 'Fr', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(120, 1, 'Saudi riyal', '', 'SAR', 682, '0.00000', '﷼', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(121, 1, 'Solomon Islands dollar', '', 'SBD', 90, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(122, 1, 'Seychellois rupee', '', 'SCR', 690, '0.00000', '₨', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(124, 1, 'Swedish krona', '', 'SEK', 752, '0.00000', 'kr', '2', ',', '.', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(125, 1, 'Singapore dollar', '', 'SGD', 702, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(126, 1, 'Saint Helenian pound', '', 'SHP', 654, '0.00000', '£', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(127, 1, 'Sierra Leonean leone', '', 'SLL', 694, '0.00000', 'Le', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(128, 1, 'Somali shilling', '', 'SOS', 706, '0.00000', 'S', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(130, 1, 'São Tomé and Príncipe dobra', '', 'STD', 678, '0.00000', 'Db', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(131, 1, 'Russian ruble', '', 'RUB', 643, '0.00000', 'руб', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(132, 1, 'Salvadoran colón', '', 'SVC', 222, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(133, 1, 'Syrian pound', '', 'SYP', 760, '0.00000', '£', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(134, 1, 'Swazi lilangeni', '', 'SZL', 748, '0.00000', 'L', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(135, 1, 'Thai baht', '', 'THB', 764, '0.00000', '฿', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(136, 1, 'Tunisian dinar', '', 'TND', 788, '0.00000', 'د.ت', '3', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(137, 1, 'Tongan paʻanga', '', 'TOP', 776, '0.00000', 'T$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(139, 1, 'Türk Lirası', '', 'TRY', 949, '0.00000', 'TL', '2', ',', '.', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(140, 1, 'Trinidad and Tobago dollar', '', 'TTD', 780, '0.00000', 'TT$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(141, 1, 'New Taiwan dollar', '', 'TWD', 901, '0.00000', 'NT$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(142, 1, 'Tanzanian shilling', '', 'TZS', 834, '0.00000', 'Sh', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(144, 1, 'United States dollar', '', 'USD', 840, '0.00000', '$', '2', '.', ',', '{symbol}{number}', '{symbol}{sign}{number}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(147, 1, 'Vietnamese Dong', '', 'VND', 704, '0.00000', '₫', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(148, 1, 'Vanuatu vatu', '', 'VUV', 548, '0.00000', 'Vt', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(149, 1, 'Samoan tala', '', 'WST', 882, '0.00000', 'T', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(151, 1, 'Yemeni rial', '', 'YER', 886, '0.00000', '﷼', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(152, 1, 'Serbian dinar', '', 'RSD', 941, '0.00000', 'Дин.', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(153, 1, 'South African rand', '', 'ZAR', 710, '0.00000', 'R', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(154, 1, 'Zambian kwacha', '', 'ZMK', 894, '0.00000', 'ZK', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(156, 1, 'Zimbabwean dollar', '', 'ZWD', 932, '0.00000', 'Z$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(158, 1, 'Armenian dram', '', 'AMD', 51, '0.00000', 'դր.', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(159, 1, 'Myanmar kyat', '', 'MMK', 104, '0.00000', 'K', '2', ',', '', '{number} {symbol}', '{symbol} {sign}{number}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(160, 1, 'Croatian kuna', '', 'HRK', 191, '0.00000', 'kn', '2', ',', '.', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(161, 1, 'Eritrean nakfa', '', 'ERN', 232, '0.00000', 'Nfk', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(162, 1, 'Djiboutian franc', '', 'DJF', 262, '0.00000', 'Fr', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(163, 1, 'Icelandic króna', '', 'ISK', 352, '0.00000', 'kr', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(164, 1, 'Kazakhstani tenge', '', 'KZT', 398, '0.00000', 'лв', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(165, 1, 'Kyrgyzstani som', '', 'KGS', 417, '0.00000', 'лв', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(166, 1, 'Latvian lats', '', 'LVL', 428, '0.00000', 'Ls', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(167, 1, 'Lithuanian litas', '', 'LTL', 440, '0.00000', 'Lt', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(168, 1, 'Mexican peso', '', 'MXN', 484, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(169, 1, 'Moldovan leu', '', 'MDL', 498, '0.00000', 'L', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(170, 1, 'Namibian dollar', '', 'NAD', 516, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(171, 1, 'Nicaraguan córdoba', '', 'NIO', 558, '0.00000', 'C$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(172, 1, 'Ugandan shilling', '', 'UGX', 800, '0.00000', 'Sh', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(173, 1, 'Macedonian denar', '', 'MKD', 807, '0.00000', 'ден', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(174, 1, 'Uruguayan peso', '', 'UYU', 858, '0.00000', '$', '0', '', '', '{symbol}number}', '{symbol}{sign}{number}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(175, 1, 'Uzbekistani som', '', 'UZS', 860, '0.00000', 'лв', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(176, 1, 'Azerbaijani manat', '', 'AZN', 934, '0.00000', 'ман', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(177, 1, 'Ghanaian cedi', '', 'GHS', 936, '0.00000', '₵', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(178, 1, 'Venezuelan bolívar', '', 'VEF', 937, '0.00000', 'Bs', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(179, 1, 'Sudanese pound', '', 'SDG', 938, '0.00000', '£', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(180, 1, 'Uruguay Peso', '', 'UYI', 940, '0.00000', 'UYI', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(181, 1, 'Mozambican metical', '', 'MZN', 943, '0.00000', 'MT', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(182, 1, 'WIR Euro', '', 'CHE', 947, '0.00000', '€', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(183, 1, 'WIR Franc', '', 'CHW', 948, '0.00000', 'CHW', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(184, 1, 'Central African CFA franc', '', 'XAF', 950, '0.00000', 'Fr', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(185, 1, 'East Caribbean dollar', '', 'XCD', 951, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(186, 1, 'West African CFA franc', '', 'XOF', 952, '0.00000', 'Fr', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(187, 1, 'CFP franc', '', 'XPF', 953, '0.00000', 'Fr', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(188, 1, 'Surinamese dollar', '', 'SRD', 968, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(189, 1, 'Malagasy ariary', '', 'MGA', 969, '0.00000', 'MGA', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(190, 1, 'Unidad de Valor Real', '', 'COU', 970, '0.00000', 'COU', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(191, 1, 'Afghan afghani', '', 'AFN', 971, '0.00000', '؋', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(192, 1, 'Tajikistani somoni', '', 'TJS', 972, '0.00000', 'ЅМ', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(193, 1, 'Angolan kwanza', '', 'AOA', 973, '0.00000', 'Kz', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(194, 1, 'Belarusian ruble', '', 'BYR', 974, '0.00000', 'p.', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(195, 1, 'Bulgarian lev', '', 'BGN', 975, '0.00000', 'лв', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(196, 1, 'Congolese franc', '', 'CDF', 976, '0.00000', 'Fr', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(197, 1, 'Bosnia and Herzegovina convert', '', 'BAM', 977, '0.00000', 'KM', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(198, 1, 'Mexican Unid', '', 'MXV', 979, '0.00000', 'MXV', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(199, 1, 'Ukrainian hryvnia', '', 'UAH', 980, '0.00000', '₴', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(200, 1, 'Georgian lari', '', 'GEL', 981, '0.00000', 'ლ', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(201, 1, 'Mvdol', '', 'BOV', 984, '0.00000', 'BOV', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_customs`
--

CREATE TABLE `ecom_virtuemart_customs` (
  `virtuemart_custom_id` int(1) UNSIGNED NOT NULL,
  `custom_parent_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL DEFAULT '1',
  `custom_jplugin_id` int(1) NOT NULL DEFAULT '0',
  `custom_element` varchar(50) NOT NULL DEFAULT '',
  `admin_only` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1:Display in admin only',
  `custom_title` varchar(255) NOT NULL DEFAULT '' COMMENT 'field title',
  `show_title` tinyint(1) NOT NULL DEFAULT '1',
  `custom_tip` varchar(255) NOT NULL DEFAULT '' COMMENT 'tip',
  `custom_value` varchar(2200) DEFAULT NULL COMMENT 'default value',
  `custom_desc` varchar(255) DEFAULT NULL COMMENT 'description or unit',
  `field_type` varchar(2) NOT NULL DEFAULT '0' COMMENT 'S:string,I:int,P:parent, B:bool,D:date,T:time,H:hidden',
  `is_list` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'list of values',
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1:hidden',
  `is_cart_attribute` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Add attributes to cart',
  `is_input` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Add input to cart',
  `searchable` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Available as search filter',
  `layout_pos` varchar(24) DEFAULT NULL COMMENT 'Layout Position',
  `custom_params` varchar(17000) NOT NULL DEFAULT '',
  `shared` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'valid for all vendors?',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='custom fields definition';

--
-- Dumping data for table `ecom_virtuemart_customs`
--

INSERT INTO `ecom_virtuemart_customs` (`virtuemart_custom_id`, `custom_parent_id`, `virtuemart_vendor_id`, `custom_jplugin_id`, `custom_element`, `admin_only`, `custom_title`, `show_title`, `custom_tip`, `custom_value`, `custom_desc`, `field_type`, `is_list`, `is_hidden`, `is_cart_attribute`, `is_input`, `searchable`, `layout_pos`, `custom_params`, `shared`, `published`, `created_on`, `created_by`, `ordering`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 0, 0, 0, '0', 0, 'COM_VIRTUEMART_RELATED_PRODUCTS', 1, 'COM_VIRTUEMART_RELATED_PRODUCTS_TIP', 'related_products', 'COM_VIRTUEMART_RELATED_PRODUCTS_DESC', 'R', 0, 0, 0, 0, 0, 'related_products', 'wPrice="1"|wImage="1"|wDescr="1"|', 0, 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(2, 0, 0, 0, '0', 0, 'COM_VIRTUEMART_RELATED_CATEGORIES', 1, 'COM_VIRTUEMART_RELATED_CATEGORIES_TIP', 'related_categories', 'COM_VIRTUEMART_RELATED_CATEGORIES_DESC', 'Z', 0, 0, 0, 0, 0, 'related_categories', 'wImage="1"|wDescr="1"|', 0, 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_invoices`
--

CREATE TABLE `ecom_virtuemart_invoices` (
  `virtuemart_invoice_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL DEFAULT '1',
  `virtuemart_order_id` int(1) UNSIGNED DEFAULT NULL,
  `invoice_number` varchar(64) DEFAULT NULL,
  `order_status` char(2) DEFAULT NULL,
  `xhtml` text,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='custom fields definition';

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_manufacturercategories`
--

CREATE TABLE `ecom_virtuemart_manufacturercategories` (
  `virtuemart_manufacturercategories_id` int(1) UNSIGNED NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Manufacturers are assigned to these categories';

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_manufacturercategories_vi_vn`
--

CREATE TABLE `ecom_virtuemart_manufacturercategories_vi_vn` (
  `virtuemart_manufacturercategories_id` int(1) UNSIGNED NOT NULL,
  `mf_category_name` varchar(180) NOT NULL DEFAULT '',
  `mf_category_desc` varchar(19000) NOT NULL DEFAULT '',
  `slug` varchar(192) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_manufacturers`
--

CREATE TABLE `ecom_virtuemart_manufacturers` (
  `virtuemart_manufacturer_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_manufacturercategories_id` int(1) DEFAULT NULL,
  `metarobot` varchar(400) DEFAULT NULL,
  `metaauthor` varchar(400) DEFAULT NULL,
  `hits` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Manufacturers are those who deliver products';

--
-- Dumping data for table `ecom_virtuemart_manufacturers`
--

INSERT INTO `ecom_virtuemart_manufacturers` (`virtuemart_manufacturer_id`, `virtuemart_manufacturercategories_id`, `metarobot`, `metaauthor`, `hits`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 0, '', '', 0, 1, '2017-01-23 16:13:37', 114, '2017-01-23 16:13:37', 114, '0000-00-00 00:00:00', 0),
(2, 0, '', '', 0, 1, '2017-01-23 16:14:28', 114, '2017-01-23 16:14:28', 114, '0000-00-00 00:00:00', 0),
(3, 0, '', '', 0, 1, '2017-01-23 16:15:11', 114, '2017-01-23 16:15:11', 114, '0000-00-00 00:00:00', 0),
(4, 0, '', '', 0, 1, '2017-01-23 16:15:46', 114, '2017-01-23 16:15:46', 114, '0000-00-00 00:00:00', 0),
(5, 0, '', '', 0, 1, '2017-01-23 16:16:18', 114, '2017-01-23 16:16:18', 114, '0000-00-00 00:00:00', 0),
(6, 0, '', '', 0, 1, '2017-01-23 16:16:51', 114, '2017-01-23 16:16:51', 114, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_manufacturers_vi_vn`
--

CREATE TABLE `ecom_virtuemart_manufacturers_vi_vn` (
  `virtuemart_manufacturer_id` int(1) UNSIGNED NOT NULL,
  `mf_name` varchar(180) NOT NULL DEFAULT '',
  `mf_email` varchar(255) NOT NULL DEFAULT '',
  `mf_desc` varchar(19000) NOT NULL DEFAULT '',
  `mf_url` varchar(255) NOT NULL DEFAULT '',
  `metadesc` varchar(400) NOT NULL DEFAULT '',
  `metakey` varchar(400) NOT NULL DEFAULT '',
  `customtitle` varchar(255) NOT NULL DEFAULT '',
  `slug` varchar(192) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecom_virtuemart_manufacturers_vi_vn`
--

INSERT INTO `ecom_virtuemart_manufacturers_vi_vn` (`virtuemart_manufacturer_id`, `mf_name`, `mf_email`, `mf_desc`, `mf_url`, `metadesc`, `metakey`, `customtitle`, `slug`) VALUES
(1, 'Zara', '', '', 'http://www.zara.com/', '', '', '', 'zara'),
(2, 'Dunhill', '', '', 'https://www.dunhill.com', '', '', '', 'dunhill'),
(3, 'H&M', '', '', 'www.hm.com/us', '', '', '', 'hm'),
(4, 'Mango', '', '', 'www.mango.com', '', '', '', 'mango'),
(5, 'TopMan', '', '', 'www.topman.com', '', '', '', 'topman'),
(6, 'Hermes', '', '', 'www.hermes.com/', '', '', '', 'hermes');

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_manufacturer_medias`
--

CREATE TABLE `ecom_virtuemart_manufacturer_medias` (
  `id` int(1) UNSIGNED NOT NULL,
  `virtuemart_manufacturer_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `virtuemart_media_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecom_virtuemart_manufacturer_medias`
--

INSERT INTO `ecom_virtuemart_manufacturer_medias` (`id`, `virtuemart_manufacturer_id`, `virtuemart_media_id`, `ordering`) VALUES
(1, 1, 7, 1),
(2, 2, 8, 1),
(3, 3, 9, 1),
(4, 4, 10, 1),
(5, 5, 11, 1),
(6, 6, 12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_medias`
--

CREATE TABLE `ecom_virtuemart_medias` (
  `virtuemart_media_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL DEFAULT '1',
  `file_title` varchar(126) NOT NULL DEFAULT '',
  `file_description` varchar(254) NOT NULL DEFAULT '',
  `file_meta` varchar(254) NOT NULL DEFAULT '',
  `file_class` varchar(64) NOT NULL DEFAULT '',
  `file_mimetype` varchar(64) NOT NULL DEFAULT '',
  `file_type` varchar(32) NOT NULL DEFAULT '',
  `file_url` varchar(900) NOT NULL DEFAULT '',
  `file_url_thumb` varchar(900) NOT NULL DEFAULT '',
  `file_is_product_image` tinyint(1) NOT NULL DEFAULT '0',
  `file_is_downloadable` tinyint(1) NOT NULL DEFAULT '0',
  `file_is_forSale` tinyint(1) NOT NULL DEFAULT '0',
  `file_params` varchar(17000) NOT NULL DEFAULT '',
  `file_lang` varchar(500) NOT NULL DEFAULT '',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Additional Images and Files which are assigned to products';

--
-- Dumping data for table `ecom_virtuemart_medias`
--

INSERT INTO `ecom_virtuemart_medias` (`virtuemart_media_id`, `virtuemart_vendor_id`, `file_title`, `file_description`, `file_meta`, `file_class`, `file_mimetype`, `file_type`, `file_url`, `file_url_thumb`, `file_is_product_image`, `file_is_downloadable`, `file_is_forSale`, `file_params`, `file_lang`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 1, 'shirt-01.jpg', '', '', '', 'image/jpeg', 'category', 'images/stories/virtuemart/category/shirt-01.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-01-23 15:52:18', 114, '2017-01-30 03:08:30', 114, '0000-00-00 00:00:00', 0),
(2, 1, 'tshirt4.jpg', '', '', '', 'image/jpeg', 'category', 'images/stories/virtuemart/category/tshirt4.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-01-23 15:53:50', 114, '2017-01-30 03:09:01', 114, '0000-00-00 00:00:00', 0),
(3, 1, 'url.jpg', '', '', '', 'image/jpeg', 'category', 'images/stories/virtuemart/category/url.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-01-23 15:54:23', 114, '2017-01-30 03:14:40', 114, '0000-00-00 00:00:00', 0),
(4, 1, '74371_750_01.jpg', '', '', '', 'image/jpeg', 'category', 'images/stories/virtuemart/category/38-50-Crocodile-Shoes-Men-Genuine-Leather-Moccasins-Men-Shoes-Casual-Men-Loafers-Cross-Logo-Men.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-01-23 15:59:29', 114, '2017-02-01 05:58:54', 114, '0000-00-00 00:00:00', 0),
(5, 1, 'a1I20000000cYb9EAEphoto.jpg', '', '', '', 'image/jpeg', 'category', 'images/stories/virtuemart/category/a1I20000000cYb9EAEphoto.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-01-23 15:59:50', 114, '2017-02-01 05:53:42', 114, '0000-00-00 00:00:00', 0),
(6, 1, 'chuyen-ban-si-ban-buon-bo-si-quan-short-nam-quan-short-kaki-quan-short-jean-quan-short-thun-tai-tp-hcmib5.jpg', '', '', '', 'image/jpeg', 'category', 'images/stories/virtuemart/category/chuyen-ban-si-ban-buon-bo-si-quan-short-nam-quan-short-kaki-quan-short-jean-quan-short-thun-tai-tp-hcmib5.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-01-23 16:00:23', 114, '2017-01-30 03:08:49', 114, '0000-00-00 00:00:00', 0),
(7, 1, 'Zara.png', '', '', '', 'image/png', 'manufacturer', 'images/stories/virtuemart/manufacturer/Zara.png', '', 0, 0, 0, '', '', 0, 1, '2017-01-23 16:13:37', 114, '2017-01-23 16:13:37', 114, '0000-00-00 00:00:00', 0),
(8, 1, 'dunhill-logo.jpg', '', '', '', 'image/jpeg', 'manufacturer', 'images/stories/virtuemart/manufacturer/dunhill-logo.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-01-23 16:14:28', 114, '2017-01-23 16:14:28', 114, '0000-00-00 00:00:00', 0),
(9, 1, 'hm.jpg', '', '', '', 'image/jpeg', 'manufacturer', 'images/stories/virtuemart/manufacturer/hm.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-01-23 16:15:11', 114, '2017-01-23 16:15:11', 114, '0000-00-00 00:00:00', 0),
(10, 1, 'mango.jpg', '', '', '', 'image/jpeg', 'manufacturer', 'images/stories/virtuemart/manufacturer/mango.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-01-23 16:15:46', 114, '2017-01-23 16:15:46', 114, '0000-00-00 00:00:00', 0),
(11, 1, 'topman.jpg', '', '', '', 'image/jpeg', 'manufacturer', 'images/stories/virtuemart/manufacturer/topman.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-01-23 16:16:18', 114, '2017-01-23 16:16:18', 114, '0000-00-00 00:00:00', 0),
(12, 1, 'hermes.jpg', '', '', '', 'image/jpeg', 'manufacturer', 'images/stories/virtuemart/manufacturer/hermes.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-01-23 16:16:51', 114, '2017-01-23 16:16:51', 114, '0000-00-00 00:00:00', 0),
(24, 1, 'mint-basic-4818-980566-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/mint-basic-4818-980566-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-01-30 03:25:00', 114, '2017-01-30 03:25:00', 114, '0000-00-00 00:00:00', 0),
(25, 1, 'keepdri-3175-898186-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/keepdri-3175-898186-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-01-30 03:51:26', 114, '2017-01-30 03:51:26', 114, '0000-00-00 00:00:00', 0),
(26, 1, 'mocnam-store-8044-622086-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/mocnam-store-8044-622086-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-01-30 03:53:00', 114, '2017-01-30 03:53:00', 114, '0000-00-00 00:00:00', 0),
(16, 1, 'thoi-trang-duy-phat-5980-063186-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/thoi-trang-duy-phat-5980-063186-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-01-30 02:47:04', 114, '2017-01-30 02:47:04', 114, '0000-00-00 00:00:00', 0),
(17, 1, 'lamer-8454-542476-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/lamer-8454-542476-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-01-30 02:48:27', 114, '2017-01-30 02:48:27', 114, '0000-00-00 00:00:00', 0),
(18, 1, 'macaron-8711-662656-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/macaron-8711-662656-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-01-30 02:49:46', 114, '2017-01-30 04:07:46', 114, '0000-00-00 00:00:00', 0),
(19, 1, 'macaron-1606-921136-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/macaron-1606-921136-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-01-30 02:51:31', 114, '2017-01-30 02:51:31', 114, '0000-00-00 00:00:00', 0),
(20, 1, 'zalora-9338-906425-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/zalora-9338-906425-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-01-30 03:04:18', 114, '2017-01-30 03:04:18', 114, '0000-00-00 00:00:00', 0),
(21, 1, 'zalora-6867-422265-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/zalora-6867-422265-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-01-30 03:05:25', 114, '2017-01-30 03:05:25', 114, '0000-00-00 00:00:00', 0),
(22, 1, 'tb-x132-6644-297345-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/tb-x132-6644-297345-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-01-30 03:10:51', 114, '2017-01-30 03:10:51', 114, '0000-00-00 00:00:00', 0),
(23, 1, 'macaron-7356-723756-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/macaron-7356-723756-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-01-30 03:12:53', 114, '2017-01-30 03:12:53', 114, '0000-00-00 00:00:00', 0),
(27, 1, 'the-blues-6109-713676-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/the-blues-6109-713676-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-01-30 03:55:03', 114, '2017-01-30 03:56:24', 114, '0000-00-00 00:00:00', 0),
(28, 1, 'adam-1377-246876-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/adam-1377-246876-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-01-30 03:56:10', 114, '2017-01-30 03:56:29', 114, '0000-00-00 00:00:00', 0),
(29, 1, '24-01-5818-759034-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/24-01-5818-759034-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-01-30 03:57:42', 114, '2017-01-30 03:57:42', 114, '0000-00-00 00:00:00', 0),
(30, 1, 'the-blues-6119-513676-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/the-blues-6119-513676-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-01-30 03:58:48', 114, '2017-01-30 04:00:36', 114, '0000-00-00 00:00:00', 0),
(31, 1, 'the-blues-6098-913676-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/the-blues-6098-913676-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-01-30 03:59:45', 114, '2017-01-30 03:59:45', 114, '0000-00-00 00:00:00', 0),
(32, 1, 'envymen-5233-196186-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/envymen-5233-196186-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-01 03:19:34', 114, '2017-02-01 03:19:34', 114, '0000-00-00 00:00:00', 0),
(33, 1, '24-01-3013-069034-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/24-01-3013-069034-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-01 03:20:46', 114, '2017-02-01 03:20:46', 114, '0000-00-00 00:00:00', 0),
(34, 1, 'the-blues-6114-613676-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/the-blues-6114-613676-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-01 03:22:01', 114, '2017-02-01 03:22:01', 114, '0000-00-00 00:00:00', 0),
(35, 1, '24-01-8193-159425-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/24-01-8193-159425-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-01 03:22:59', 114, '2017-02-01 03:22:59', 114, '0000-00-00 00:00:00', 0),
(36, 1, 'adam-1038-295476-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/adam-1038-295476-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-01 03:24:23', 114, '2017-02-01 03:24:23', 114, '0000-00-00 00:00:00', 0),
(37, 1, 'asia-outdoor-1977-221566-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/asia-outdoor-1977-221566-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-01 03:26:06', 114, '2017-02-01 03:26:06', 114, '0000-00-00 00:00:00', 0),
(38, 1, 'adam-2055-210176-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/adam-2055-210176-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-01 03:27:53', 114, '2017-02-01 03:27:53', 114, '0000-00-00 00:00:00', 0),
(39, 1, 'thoi-trang-f2-8613-831276-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/thoi-trang-f2-8613-831276-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-01 03:29:13', 114, '2017-02-01 03:29:13', 114, '0000-00-00 00:00:00', 0),
(40, 1, 'the-cosmo-5284-105944-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/the-cosmo-5284-105944-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-01 03:30:01', 114, '2017-02-01 03:30:01', 114, '0000-00-00 00:00:00', 0),
(41, 1, 'oasis-4669-618055-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/oasis-4669-618055-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-01 03:31:24', 114, '2017-02-01 03:31:24', 114, '0000-00-00 00:00:00', 0),
(42, 1, 'the-blues-6131-313676-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/the-blues-6131-313676-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-01 03:56:32', 114, '2017-02-01 03:56:32', 114, '0000-00-00 00:00:00', 0),
(43, 1, 'the-blues-6137-213676-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/the-blues-6137-213676-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-01 03:58:10', 114, '2017-02-01 03:58:10', 114, '0000-00-00 00:00:00', 0),
(44, 1, 'the-blues-5072-013676-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/the-blues-5072-013676-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-01 03:59:14', 114, '2017-02-01 03:59:14', 114, '0000-00-00 00:00:00', 0),
(45, 1, 'genviet-jeans-6474-030186-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/genviet-jeans-6474-030186-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-01 04:00:18', 114, '2017-02-01 04:00:18', 114, '0000-00-00 00:00:00', 0),
(46, 1, 'j-co-8044-469136-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/j-co-8044-469136-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-01 04:01:20', 114, '2017-02-01 04:01:20', 114, '0000-00-00 00:00:00', 0),
(47, 1, 'zalora-6834-196365-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/zalora-6834-196365-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-01 04:05:37', 114, '2017-02-01 04:05:37', 114, '0000-00-00 00:00:00', 0),
(48, 1, 'j-co-1537-479136-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/j-co-1537-479136-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-01 04:31:31', 114, '2017-02-01 04:31:31', 114, '0000-00-00 00:00:00', 0),
(49, 1, 'j-co-1544-379136-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/j-co-1544-379136-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-01 04:32:29', 114, '2017-02-01 04:32:29', 114, '0000-00-00 00:00:00', 0),
(50, 1, 'thoi-trang-duy-phat-5204-753186-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/thoi-trang-duy-phat-5204-753186-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-01 04:33:30', 114, '2017-02-01 04:33:30', 114, '0000-00-00 00:00:00', 0),
(51, 1, 'j-co-7993-179136-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/j-co-7993-179136-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-01 04:34:45', 114, '2017-02-01 04:34:45', 114, '0000-00-00 00:00:00', 0),
(52, 1, 'j-co-7363-594426-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/j-co-7363-594426-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-01 04:35:52', 114, '2017-02-01 04:35:52', 114, '0000-00-00 00:00:00', 0),
(53, 1, 'the-blues-6126-413676-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/the-blues-6126-413676-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-01 04:37:12', 114, '2017-02-01 04:37:12', 114, '0000-00-00 00:00:00', 0),
(54, 1, 'macaron-9154-329376-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/macaron-9154-329376-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-01 04:37:55', 114, '2017-02-01 04:37:55', 114, '0000-00-00 00:00:00', 0),
(55, 1, '24-01-8492-344224-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/24-01-8492-344224-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-01 04:38:50', 114, '2017-02-01 04:38:50', 114, '0000-00-00 00:00:00', 0),
(56, 1, 'macaron-6987-635426-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/macaron-6987-635426-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-01 04:40:19', 114, '2017-02-01 04:40:26', 114, '0000-00-00 00:00:00', 0),
(57, 1, '24-01-5094-926034-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/24-01-5094-926034-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-01 04:43:29', 114, '2017-02-01 04:43:29', 114, '0000-00-00 00:00:00', 0),
(58, 1, '24-01-8010-724224-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/24-01-8010-724224-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-01 04:44:44', 114, '2017-02-01 04:44:44', 114, '0000-00-00 00:00:00', 0),
(59, 1, '24-01-0273-268774-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/24-01-0273-268774-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-01 04:46:23', 114, '2017-02-01 04:46:23', 114, '0000-00-00 00:00:00', 0),
(60, 1, 'thoi-trang-f2-7413-901276-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/thoi-trang-f2-7413-901276-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-01 05:36:32', 114, '2017-02-01 05:36:32', 114, '0000-00-00 00:00:00', 0),
(61, 1, 'mint-basic-4817-290566-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/mint-basic-4817-290566-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-01 05:37:42', 114, '2017-02-01 05:37:42', 114, '0000-00-00 00:00:00', 0),
(62, 1, 'tb-x132-6723-147345-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/tb-x132-6723-147345-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-01 05:38:51', 114, '2017-02-01 05:38:51', 114, '0000-00-00 00:00:00', 0),
(63, 1, 'macaron-6447-195246-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/macaron-6447-195246-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-01 05:39:55', 114, '2017-02-01 05:39:55', 114, '0000-00-00 00:00:00', 0),
(64, 1, 'tb-x132-6711-057345-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/tb-x132-6711-057345-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-01 05:40:44', 114, '2017-02-01 05:40:44', 114, '0000-00-00 00:00:00', 0),
(65, 1, 'zalora-6779-086365-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/zalora-6779-086365-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-01 05:41:30', 114, '2017-02-01 05:41:30', 114, '0000-00-00 00:00:00', 0),
(66, 1, 'tb-x132-6721-447345-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/tb-x132-6721-447345-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-01 05:44:00', 114, '2017-02-01 05:49:48', 114, '0000-00-00 00:00:00', 0),
(67, 1, 'tb-x132-6775-507345-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/tb-x132-6775-507345-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-01 05:46:20', 114, '2017-02-01 05:46:20', 114, '0000-00-00 00:00:00', 0),
(68, 1, 'thoi-trang-f2-4093-178376-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/thoi-trang-f2-4093-178376-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-01 05:48:57', 114, '2017-02-01 05:48:57', 114, '0000-00-00 00:00:00', 0),
(69, 1, 'tokuni-japan-3850-905455-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/tokuni-japan-3850-905455-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-01 05:49:36', 114, '2017-02-01 05:49:36', 114, '0000-00-00 00:00:00', 0),
(70, 1, '4256261.jpg', '', '', '', 'image/jpeg', 'category', 'images/stories/virtuemart/category/4256261.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-01 05:57:53', 114, '2017-02-01 05:57:55', 114, '0000-00-00 00:00:00', 0),
(71, 1, 'genviet-jeans-6006-989086-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/genviet-jeans-6006-989086-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 05:01:50', 114, '2017-02-02 05:01:50', 114, '0000-00-00 00:00:00', 0),
(72, 1, 'j-co-7480-489136-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/j-co-7480-489136-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 05:02:59', 114, '2017-02-02 05:02:59', 114, '0000-00-00 00:00:00', 0),
(73, 1, 'j-co-6596-254756-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/j-co-6596-254756-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 05:03:48', 114, '2017-02-02 05:03:48', 114, '0000-00-00 00:00:00', 0),
(74, 1, 'asia-outdoor-2541-689186-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/asia-outdoor-2541-689186-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 05:05:09', 114, '2017-02-02 05:05:09', 114, '0000-00-00 00:00:00', 0),
(75, 1, 'the-blues-5039-392676-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/the-blues-5039-392676-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 05:06:03', 114, '2017-02-02 05:06:03', 114, '0000-00-00 00:00:00', 0),
(76, 1, 'the-blues-5022-592676-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/the-blues-5022-592676-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 05:08:34', 114, '2017-02-02 05:08:34', 114, '0000-00-00 00:00:00', 0),
(77, 1, 'genviet-jeans-0632-248976-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/genviet-jeans-0632-248976-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 05:09:35', 114, '2017-02-02 05:09:35', 114, '0000-00-00 00:00:00', 0),
(78, 1, 'lamer-1916-538776-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/lamer-1916-538776-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 05:10:33', 114, '2017-02-02 05:10:33', 114, '0000-00-00 00:00:00', 0),
(79, 1, 'j-co-7496-289136-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/j-co-7496-289136-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 05:11:27', 114, '2017-02-02 05:11:27', 114, '0000-00-00 00:00:00', 0),
(80, 1, 'thoi-trang-duy-phat-5225-353186-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/thoi-trang-duy-phat-5225-353186-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 05:12:36', 114, '2017-02-02 05:12:36', 114, '0000-00-00 00:00:00', 0),
(81, 1, 'thoi-trang-duy-phat-5326-453186-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/thoi-trang-duy-phat-5326-453186-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 05:28:16', 114, '2017-02-02 05:28:16', 114, '0000-00-00 00:00:00', 0),
(82, 1, 'j-co-1529-579136-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/j-co-1529-579136-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 05:29:26', 114, '2017-02-02 05:29:26', 114, '0000-00-00 00:00:00', 0),
(83, 1, 'bernice-8400-822086-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/bernice-8400-822086-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 05:30:51', 114, '2017-02-02 05:30:51', 114, '0000-00-00 00:00:00', 0),
(84, 1, 'j-co-7436-879136-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/j-co-7436-879136-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 05:31:41', 114, '2017-02-02 05:31:41', 114, '0000-00-00 00:00:00', 0),
(85, 1, 'j-co-7504-189136-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/j-co-7504-189136-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 05:34:45', 114, '2017-02-02 05:34:45', 114, '0000-00-00 00:00:00', 0),
(86, 1, 'thoi-trang-duy-phat-5195-643186-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/thoi-trang-duy-phat-5195-643186-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 05:35:38', 114, '2017-02-02 05:35:38', 114, '0000-00-00 00:00:00', 0),
(87, 1, 'macaron-5122-901536-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/macaron-5122-901536-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 05:36:28', 114, '2017-02-02 05:36:28', 114, '0000-00-00 00:00:00', 0),
(88, 1, 'lamer-8197-238776-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/lamer-8197-238776-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 05:37:09', 114, '2017-02-02 05:37:09', 114, '0000-00-00 00:00:00', 0),
(89, 1, 'zalora-6787-030365-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/zalora-6787-030365-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 05:39:24', 114, '2017-02-02 05:39:24', 114, '0000-00-00 00:00:00', 0),
(90, 1, 'macaron-6176-847606-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/macaron-6176-847606-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 05:41:12', 114, '2017-02-02 05:41:12', 114, '0000-00-00 00:00:00', 0),
(91, 1, 'macaron-4797-337606-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/macaron-4797-337606-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 05:41:49', 114, '2017-02-02 05:41:49', 114, '0000-00-00 00:00:00', 0),
(92, 1, 'macaron-6135-493306-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/macaron-6135-493306-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 05:42:22', 114, '2017-02-02 05:42:22', 114, '0000-00-00 00:00:00', 0),
(93, 1, 'macaron-9020-180206-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/macaron-9020-180206-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 05:43:02', 114, '2017-02-02 05:43:02', 114, '0000-00-00 00:00:00', 0),
(94, 1, 'the-blues-8341-572536-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/the-blues-8341-572536-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 05:43:47', 114, '2017-02-02 05:43:47', 114, '0000-00-00 00:00:00', 0),
(95, 1, 'mint-basic-0214-625556-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/mint-basic-0214-625556-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 05:44:37', 114, '2017-02-02 05:44:37', 114, '0000-00-00 00:00:00', 0),
(96, 1, 'winwinshop88-5315-785186-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/winwinshop88-5315-785186-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 05:51:04', 114, '2017-02-02 05:51:04', 114, '0000-00-00 00:00:00', 0),
(97, 1, 'exfash-2473-202186-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/exfash-2473-202186-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 05:52:07', 114, '2017-02-02 05:52:07', 114, '0000-00-00 00:00:00', 0),
(98, 1, 'zalora-9949-116034-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/zalora-9949-116034-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 05:52:54', 114, '2017-02-02 05:52:54', 114, '0000-00-00 00:00:00', 0),
(99, 1, '24-01-1836-718834-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/24-01-1836-718834-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 05:56:05', 114, '2017-02-02 05:56:05', 114, '0000-00-00 00:00:00', 0),
(100, 1, '24-01-9065-414654-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/24-01-9065-414654-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 06:01:37', 114, '2017-02-02 06:01:37', 114, '0000-00-00 00:00:00', 0),
(101, 1, '24-01-6902-465415-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/24-01-6902-465415-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 06:07:14', 114, '2017-02-02 06:07:14', 114, '0000-00-00 00:00:00', 0),
(102, 1, '24-01-6153-814654-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/24-01-6153-814654-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 06:08:07', 114, '2017-02-02 06:08:07', 114, '0000-00-00 00:00:00', 0),
(103, 1, 'zalora-sport-2962-906034-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/zalora-sport-2962-906034-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 06:08:54', 114, '2017-02-02 06:08:54', 114, '0000-00-00 00:00:00', 0),
(104, 1, 'do-da-thanh-long-tlg-2635-601576-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/do-da-thanh-long-tlg-2635-601576-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 06:09:36', 114, '2017-02-02 06:09:36', 114, '0000-00-00 00:00:00', 0),
(105, 1, 'asia-outdoor-0115-951676-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/asia-outdoor-0115-951676-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 06:11:05', 114, '2017-02-02 06:11:05', 114, '0000-00-00 00:00:00', 0),
(106, 1, 'polarsolar-0186-747566-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/polarsolar-0186-747566-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 06:11:52', 114, '2017-02-02 06:11:52', 114, '0000-00-00 00:00:00', 0),
(107, 1, 'madam-dzi-0342-992685-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/madam-dzi-0342-992685-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 06:31:34', 114, '2017-02-02 06:31:34', 114, '0000-00-00 00:00:00', 0),
(108, 1, 'madam-dzi-2280-375666-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/madam-dzi-2280-375666-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 06:32:23', 114, '2017-02-02 06:32:23', 114, '0000-00-00 00:00:00', 0),
(109, 1, 'hstore-1614-958576-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/hstore-1614-958576-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 06:33:13', 114, '2017-02-02 06:33:13', 114, '0000-00-00 00:00:00', 0),
(110, 1, 'lyly-craft-2375-411776-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/lyly-craft-2375-411776-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 06:33:51', 114, '2017-02-02 06:33:51', 114, '0000-00-00 00:00:00', 0),
(111, 1, 'madam-dzi-5095-328376-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/madam-dzi-5095-328376-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 06:34:34', 114, '2017-02-02 06:34:34', 114, '0000-00-00 00:00:00', 0),
(112, 1, 'madam-dzi-4276-348376-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/madam-dzi-4276-348376-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 06:35:27', 114, '2017-02-02 06:35:27', 114, '0000-00-00 00:00:00', 0),
(113, 1, 'evest-2232-101176-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/evest-2232-101176-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 06:36:13', 114, '2017-02-02 06:36:13', 114, '0000-00-00 00:00:00', 0),
(114, 1, 'da-giay-viet-nam-7343-576656-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/da-giay-viet-nam-7343-576656-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 06:37:52', 114, '2017-02-02 06:37:52', 114, '0000-00-00 00:00:00', 0),
(115, 1, 'julie-caps-2009-494565-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/julie-caps-2009-494565-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 06:38:41', 114, '2017-02-02 06:38:41', 114, '0000-00-00 00:00:00', 0),
(116, 1, 'winwinshop88-5810-187066-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/winwinshop88-5810-187066-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 06:39:28', 114, '2017-02-02 06:39:28', 114, '0000-00-00 00:00:00', 0),
(117, 1, 'ronal-4351-129375-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/ronal-4351-129375-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 06:40:21', 114, '2017-02-02 06:40:21', 114, '0000-00-00 00:00:00', 0),
(118, 1, 'coco-design-6497-404664-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/coco-design-6497-404664-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 06:41:00', 114, '2017-02-02 06:41:00', 114, '0000-00-00 00:00:00', 0),
(119, 1, '24-01-4636-452525-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/24-01-4636-452525-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 06:49:40', 114, '2017-02-02 06:49:40', 114, '0000-00-00 00:00:00', 0),
(120, 1, 'vizi-shoes-5449-092976-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/vizi-shoes-5449-092976-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 06:50:30', 114, '2017-02-02 06:50:30', 114, '0000-00-00 00:00:00', 0),
(121, 1, '24-01-3855-175605-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/24-01-3855-175605-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 06:52:12', 114, '2017-02-02 06:52:12', 114, '0000-00-00 00:00:00', 0),
(122, 1, 'zalora-8395-032764-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/zalora-8395-032764-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 06:53:07', 114, '2017-02-02 06:53:07', 114, '0000-00-00 00:00:00', 0),
(123, 1, 'zalora-6617-468765-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/zalora-6617-468765-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 06:56:24', 114, '2017-02-02 06:56:24', 114, '0000-00-00 00:00:00', 0),
(124, 1, '24-01-1836-006715-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/24-01-1836-006715-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 06:57:30', 114, '2017-02-02 06:57:30', 114, '0000-00-00 00:00:00', 0),
(125, 1, 'bagatti-8283-087976-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/bagatti-8283-087976-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 06:58:12', 114, '2017-02-02 06:58:12', 114, '0000-00-00 00:00:00', 0),
(126, 1, 'sunpolo-3125-447776-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/sunpolo-3125-447776-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 06:58:59', 114, '2017-02-02 06:58:59', 114, '0000-00-00 00:00:00', 0),
(127, 1, 'zilandi-1202-743904-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/zilandi-1202-743904-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 06:59:58', 114, '2017-02-02 06:59:58', 114, '0000-00-00 00:00:00', 0),
(128, 1, 'zalora-2357-678765-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/zalora-2357-678765-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 07:00:47', 114, '2017-02-02 07:00:47', 114, '0000-00-00 00:00:00', 0),
(129, 1, '24-01-1986-355605-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/24-01-1986-355605-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 07:01:38', 114, '2017-02-02 07:01:38', 114, '0000-00-00 00:00:00', 0),
(130, 1, 'bagatti-8281-987976-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/bagatti-8281-987976-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 07:02:27', 114, '2017-02-02 07:02:27', 114, '0000-00-00 00:00:00', 0),
(131, 1, '24-01-4689-462525-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/24-01-4689-462525-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 07:03:05', 114, '2017-02-02 07:03:05', 114, '0000-00-00 00:00:00', 0),
(132, 1, '24-01-4647-552525-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/24-01-4647-552525-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 07:04:41', 114, '2017-02-02 07:04:41', 114, '0000-00-00 00:00:00', 0),
(133, 1, 'bitis-1894-694566-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/bitis-1894-694566-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 07:05:32', 114, '2017-02-02 07:05:32', 114, '0000-00-00 00:00:00', 0),
(134, 1, '24-01-7459-936874-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/24-01-7459-936874-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 07:06:13', 114, '2017-02-02 07:06:13', 114, '0000-00-00 00:00:00', 0),
(135, 1, 'zalora-8178-829864-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/zalora-8178-829864-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 07:06:55', 114, '2017-02-02 07:06:55', 114, '0000-00-00 00:00:00', 0),
(136, 1, 'bitis-1854-264566-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/bitis-1854-264566-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 07:08:13', 114, '2017-02-02 07:08:13', 114, '0000-00-00 00:00:00', 0),
(137, 1, 'zalora-8719-506914-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/zalora-8719-506914-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 07:08:55', 114, '2017-02-02 07:08:55', 114, '0000-00-00 00:00:00', 0),
(138, 1, '24-01-3929-129194-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/24-01-3929-129194-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 07:12:10', 114, '2017-02-02 07:12:10', 114, '0000-00-00 00:00:00', 0),
(139, 1, 'bagatti-8288-197976-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/bagatti-8288-197976-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-02-02 07:12:48', 114, '2017-02-02 07:12:48', 114, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_migration_oldtonew_ids`
--

CREATE TABLE `ecom_virtuemart_migration_oldtonew_ids` (
  `id` smallint(1) UNSIGNED NOT NULL,
  `cats` longblob,
  `catsxref` blob,
  `manus` longblob,
  `mfcats` blob,
  `shoppergroups` longblob,
  `products` longblob,
  `products_start` int(1) DEFAULT NULL,
  `orderstates` blob,
  `orders` longblob,
  `attributes` longblob,
  `relatedproducts` longblob,
  `orders_start` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='xref table for vm1 ids to vm2 ids';

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_modules`
--

CREATE TABLE `ecom_virtuemart_modules` (
  `module_id` int(1) UNSIGNED NOT NULL,
  `module_name` char(255) DEFAULT NULL,
  `module_description` varchar(21000) DEFAULT NULL,
  `module_perms` char(255) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `is_admin` enum('0','1') NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='VirtueMart Core Modules, not: Joomla modules';

--
-- Dumping data for table `ecom_virtuemart_modules`
--

INSERT INTO `ecom_virtuemart_modules` (`module_id`, `module_name`, `module_description`, `module_perms`, `published`, `is_admin`, `ordering`) VALUES
(1, 'product', 'Here you can administer your online catalog of products.  Categories , Products (view=product), Attributes, Product Types, Product Files (view=media), Inventory, Calculation Rules, Customer Reviews  ', 'storeadmin,admin', 1, '', 1),
(2, 'order', 'View Order and Update Order Status:    Orders , Coupons , Revenue Report ,Shopper , Shopper Groups ', 'admin,storeadmin', 1, '', 2),
(3, 'manufacturer', 'Manage the manufacturers of products in your store.', 'storeadmin,admin', 1, '', 3),
(4, 'store', 'Store Configuration: Store Information, Payment Methods , Shipment, Shipment Rates', 'storeadmin,admin', 1, '', 4),
(5, 'configuration', 'Configuration: shop configuration , currencies (view=currency), Credit Card List, Countries, userfields, order status  ', 'admin,storeadmin', 1, '0', 5),
(6, 'msgs', 'This module is unprotected an used for displaying system messages to users.  We need to have an area that does not require authorization when things go wrong.', 'none', 0, '', 99),
(7, 'shop', 'This is the Washupito store module.  This is the demo store included with the VirtueMart distribution.', 'none', 1, '', 99),
(8, 'store', 'Store Configuration: Store Information, Payment Methods , Shipment, Shipment Rates', 'storeadmin,admin', 1, '', 4),
(9, 'account', 'This module allows shoppers to update their account information and view previously placed orders.', 'shopper,storeadmin,admin,demo', 1, '', 99),
(10, 'checkout', '', 'none', 0, '', 99),
(11, 'tools', 'Tools', 'admin', 1, '0', 8),
(13, 'zone', 'This is the zone-shipment module. Here you can manage your shipment costs according to Zones.', 'admin,storeadmin', 0, '', 11);

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_orders`
--

CREATE TABLE `ecom_virtuemart_orders` (
  `virtuemart_order_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_user_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `order_number` varchar(64) DEFAULT NULL,
  `customer_number` varchar(32) DEFAULT NULL,
  `order_pass` varchar(34) DEFAULT NULL,
  `order_create_invoice_pass` varchar(32) DEFAULT NULL,
  `order_total` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `order_salesPrice` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `order_billTaxAmount` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `order_billTax` varchar(400) DEFAULT NULL,
  `order_billDiscountAmount` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `order_discountAmount` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `order_subtotal` decimal(15,5) DEFAULT NULL,
  `order_tax` decimal(10,5) DEFAULT NULL,
  `order_shipment` decimal(10,5) DEFAULT NULL,
  `order_shipment_tax` decimal(10,5) DEFAULT NULL,
  `order_payment` decimal(10,2) DEFAULT NULL,
  `order_payment_tax` decimal(10,5) DEFAULT NULL,
  `coupon_discount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `coupon_code` varchar(32) DEFAULT NULL,
  `order_discount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `order_currency` smallint(1) DEFAULT NULL,
  `order_status` char(1) DEFAULT NULL,
  `user_currency_id` smallint(1) DEFAULT NULL,
  `user_currency_rate` decimal(10,5) NOT NULL DEFAULT '1.00000',
  `payment_currency_id` smallint(1) DEFAULT NULL,
  `payment_currency_rate` decimal(10,5) NOT NULL DEFAULT '1.00000',
  `virtuemart_paymentmethod_id` int(1) UNSIGNED DEFAULT NULL,
  `virtuemart_shipmentmethod_id` int(1) UNSIGNED DEFAULT NULL,
  `delivery_date` varchar(200) DEFAULT NULL,
  `order_language` varchar(7) DEFAULT NULL,
  `ip_address` char(15) NOT NULL DEFAULT '',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Used to store all orders';

--
-- Dumping data for table `ecom_virtuemart_orders`
--

INSERT INTO `ecom_virtuemart_orders` (`virtuemart_order_id`, `virtuemart_user_id`, `virtuemart_vendor_id`, `order_number`, `customer_number`, `order_pass`, `order_create_invoice_pass`, `order_total`, `order_salesPrice`, `order_billTaxAmount`, `order_billTax`, `order_billDiscountAmount`, `order_discountAmount`, `order_subtotal`, `order_tax`, `order_shipment`, `order_shipment_tax`, `order_payment`, `order_payment_tax`, `coupon_discount`, `coupon_code`, `order_discount`, `order_currency`, `order_status`, `user_currency_id`, `user_currency_rate`, `payment_currency_id`, `payment_currency_rate`, `virtuemart_paymentmethod_id`, `virtuemart_shipmentmethod_id`, `delivery_date`, `order_language`, `ip_address`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 115, 1, 'MLX203', 'AZee7e4c5', 'p_mrZCR7fb', 'fJgY9qB7', '1540000.00000', '1540000.00000', '0.00000', '0', '0.00000', '0.00000', '1540000.00000', '0.00000', '0.00000', '0.00000', '0.00', '0.00000', '0.00', NULL, '0.00', 147, 'U', 147, '1.00000', 147, '1.00000', 2, 1, 'Cùng ngày biên nhận', 'vi-VN', 'xx', '2017-02-11 06:06:20', 115, '2017-02-11 06:06:20', 115, '0000-00-00 00:00:00', 0),
(2, 115, 1, '7WP104', 'AZee7e4c5', 'p_XKLLpkNH', '1WHLiJSY', '4430000.00000', '4430000.00000', '0.00000', '0', '0.00000', '0.00000', '4430000.00000', '0.00000', '0.00000', '0.00000', '0.00', '0.00000', '0.00', NULL, '0.00', 147, 'U', 147, '1.00000', 147, '1.00000', 2, 1, 'Cùng ngày biên nhận', 'vi-VN', 'xx', '2017-02-12 01:36:05', 115, '2017-02-12 01:36:05', 115, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_orderstates`
--

CREATE TABLE `ecom_virtuemart_orderstates` (
  `virtuemart_orderstate_id` tinyint(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL DEFAULT '1',
  `order_status_code` char(1) NOT NULL DEFAULT '',
  `order_status_name` varchar(64) DEFAULT NULL,
  `order_status_description` varchar(20000) DEFAULT NULL,
  `order_stock_handle` char(1) NOT NULL DEFAULT 'A',
  `ordering` int(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='All available order statuses';

--
-- Dumping data for table `ecom_virtuemart_orderstates`
--

INSERT INTO `ecom_virtuemart_orderstates` (`virtuemart_orderstate_id`, `virtuemart_vendor_id`, `order_status_code`, `order_status_name`, `order_status_description`, `order_stock_handle`, `ordering`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 1, 'P', 'COM_VIRTUEMART_ORDER_STATUS_PENDING', '', 'R', 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(2, 1, 'U', 'COM_VIRTUEMART_ORDER_STATUS_CONFIRMED_BY_SHOPPER', '', 'R', 2, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(3, 1, 'C', 'COM_VIRTUEMART_ORDER_STATUS_CONFIRMED', '', 'R', 3, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(4, 1, 'X', 'COM_VIRTUEMART_ORDER_STATUS_CANCELLED', '', 'A', 4, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(5, 1, 'R', 'COM_VIRTUEMART_ORDER_STATUS_REFUNDED', '', 'A', 5, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(6, 1, 'S', 'COM_VIRTUEMART_ORDER_STATUS_SHIPPED', '', 'O', 6, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(7, 1, 'F', 'COM_VIRTUEMART_ORDER_STATUS_COMPLETED', '', 'R', 7, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(8, 1, 'D', 'COM_VIRTUEMART_ORDER_STATUS_DENIED', '', 'A', 8, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_order_calc_rules`
--

CREATE TABLE `ecom_virtuemart_order_calc_rules` (
  `virtuemart_order_calc_rule_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_calc_id` int(1) UNSIGNED DEFAULT NULL,
  `virtuemart_order_id` int(1) UNSIGNED DEFAULT NULL,
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL DEFAULT '1',
  `virtuemart_order_item_id` int(1) DEFAULT NULL,
  `calc_rule_name` varchar(64) NOT NULL DEFAULT '' COMMENT 'Name of the rule',
  `calc_kind` varchar(16) NOT NULL DEFAULT '' COMMENT 'Discount/Tax/Margin/Commission',
  `calc_mathop` varchar(16) NOT NULL DEFAULT '' COMMENT 'Discount/Tax/Margin/Commission',
  `calc_amount` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `calc_result` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `calc_value` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `calc_currency` int(1) DEFAULT NULL,
  `calc_params` varchar(18000) NOT NULL DEFAULT '',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores all calculation rules which are part of an order';

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_order_histories`
--

CREATE TABLE `ecom_virtuemart_order_histories` (
  `virtuemart_order_history_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_order_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `order_status_code` char(1) NOT NULL DEFAULT '0',
  `customer_notified` tinyint(1) NOT NULL DEFAULT '0',
  `comments` varchar(21000) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores all actions and changes that occur to an order';

--
-- Dumping data for table `ecom_virtuemart_order_histories`
--

INSERT INTO `ecom_virtuemart_order_histories` (`virtuemart_order_history_id`, `virtuemart_order_id`, `order_status_code`, `customer_notified`, `comments`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 1, 'P', 0, '', 1, '2017-02-11 06:06:20', 115, '2017-02-11 06:06:20', 115, '0000-00-00 00:00:00', 0),
(2, 1, 'U', 1, '', 1, '2017-02-11 06:06:20', 115, '2017-02-11 06:06:20', 115, '0000-00-00 00:00:00', 0),
(3, 2, 'P', 0, '', 1, '2017-02-12 01:36:05', 115, '2017-02-12 01:36:05', 115, '0000-00-00 00:00:00', 0),
(4, 2, 'U', 1, '', 1, '2017-02-12 01:36:05', 115, '2017-02-12 01:36:05', 115, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_order_items`
--

CREATE TABLE `ecom_virtuemart_order_items` (
  `virtuemart_order_item_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_order_id` int(1) UNSIGNED DEFAULT NULL,
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL DEFAULT '1',
  `virtuemart_product_id` int(1) DEFAULT NULL,
  `order_item_sku` varchar(255) NOT NULL DEFAULT '',
  `order_item_name` varchar(4096) NOT NULL DEFAULT '',
  `product_quantity` int(1) DEFAULT NULL,
  `product_item_price` decimal(15,5) DEFAULT NULL,
  `product_priceWithoutTax` decimal(15,5) DEFAULT NULL,
  `product_tax` decimal(15,5) DEFAULT NULL,
  `product_basePriceWithTax` decimal(15,5) DEFAULT NULL,
  `product_discountedPriceWithoutTax` decimal(15,5) DEFAULT NULL,
  `product_final_price` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `product_subtotal_discount` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `product_subtotal_with_tax` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `order_item_currency` int(1) DEFAULT NULL,
  `order_status` char(1) DEFAULT NULL,
  `product_attribute` mediumtext,
  `delivery_date` varchar(200) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores all items (products) which are part of an order';

--
-- Dumping data for table `ecom_virtuemart_order_items`
--

INSERT INTO `ecom_virtuemart_order_items` (`virtuemart_order_item_id`, `virtuemart_order_id`, `virtuemart_vendor_id`, `virtuemart_product_id`, `order_item_sku`, `order_item_name`, `product_quantity`, `product_item_price`, `product_priceWithoutTax`, `product_tax`, `product_basePriceWithTax`, `product_discountedPriceWithoutTax`, `product_final_price`, `product_subtotal_discount`, `product_subtotal_with_tax`, `order_item_currency`, `order_status`, `product_attribute`, `delivery_date`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 1, 1, 84, 'EX066AC97TSCVN', 'Mắt Kính Exfash', 1, '1540000.00000', '1540000.00000', '0.00000', '0.00000', '1540000.00000', '1540000.00000', '0.00000', '1540000.00000', NULL, 'U', '[]', NULL, '2017-02-11 06:06:20', 115, '2017-02-11 06:06:20', 115, '0000-00-00 00:00:00', 0),
(2, 2, 1, 17, '24985AA42NNHVN', 'Áo Jumper Phốc Sọc Dọc', 1, '530000.00000', '530000.00000', '0.00000', '0.00000', '530000.00000', '530000.00000', '0.00000', '530000.00000', NULL, 'U', '[]', NULL, '2017-02-12 01:36:05', 115, '2017-02-12 01:36:05', 115, '0000-00-00 00:00:00', 0),
(3, 2, 1, 42, 'MA146AA76IYDVN', 'Áo Sơmi Nam Jean Xanh Đậm', 1, '585000.00000', '585000.00000', '0.00000', '0.00000', '585000.00000', '585000.00000', '0.00000', '585000.00000', NULL, 'U', '[]', NULL, '2017-02-12 01:36:05', 115, '2017-02-12 01:36:05', 115, '0000-00-00 00:00:00', 0),
(4, 2, 1, 40, 'JC882AA04NVBVN', 'Áo Sơ Mi Nam', 1, '575000.00000', '575000.00000', '0.00000', '0.00000', '575000.00000', '575000.00000', '0.00000', '575000.00000', NULL, 'U', '[]', NULL, '2017-02-12 01:36:05', 115, '2017-02-12 01:36:05', 115, '0000-00-00 00:00:00', 0),
(5, 2, 1, 12, 'MI869AA10VWJVN', 'Áo Blazer Mintz', 1, '840000.00000', '840000.00000', '0.00000', '0.00000', '840000.00000', '840000.00000', '0.00000', '840000.00000', NULL, 'U', '[]', NULL, '2017-02-12 01:36:05', 115, '2017-02-12 01:36:05', 115, '0000-00-00 00:00:00', 0),
(6, 2, 1, 107, 'VI961SH09QWOVN', 'Giày Oxford Da Bò Italia Cao Cấp', 1, '1900000.00000', '1900000.00000', '0.00000', '0.00000', '1900000.00000', '1900000.00000', '0.00000', '1900000.00000', NULL, 'U', '[]', NULL, '2017-02-12 01:36:05', 115, '2017-02-12 01:36:05', 115, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_order_userinfos`
--

CREATE TABLE `ecom_virtuemart_order_userinfos` (
  `virtuemart_order_userinfo_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_order_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `virtuemart_user_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `address_type` char(2) DEFAULT NULL,
  `address_type_name` varchar(32) DEFAULT NULL,
  `company` varchar(64) DEFAULT NULL,
  `title` varchar(32) DEFAULT NULL,
  `last_name` varchar(96) DEFAULT NULL,
  `first_name` varchar(96) DEFAULT NULL,
  `middle_name` varchar(96) DEFAULT NULL,
  `phone_1` varchar(32) DEFAULT NULL,
  `phone_2` varchar(32) DEFAULT NULL,
  `fax` varchar(32) DEFAULT NULL,
  `address_1` varchar(96) NOT NULL DEFAULT '',
  `address_2` varchar(64) DEFAULT NULL,
  `city` varchar(96) NOT NULL DEFAULT '',
  `virtuemart_state_id` smallint(1) UNSIGNED NOT NULL DEFAULT '0',
  `virtuemart_country_id` smallint(1) UNSIGNED NOT NULL DEFAULT '0',
  `zip` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(128) DEFAULT NULL,
  `agreed` tinyint(1) NOT NULL DEFAULT '0',
  `tos` tinyint(1) NOT NULL DEFAULT '0',
  `customer_note` varchar(5000) NOT NULL DEFAULT '',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores the BillTo and ShipTo Information at order time';

--
-- Dumping data for table `ecom_virtuemart_order_userinfos`
--

INSERT INTO `ecom_virtuemart_order_userinfos` (`virtuemart_order_userinfo_id`, `virtuemart_order_id`, `virtuemart_user_id`, `address_type`, `address_type_name`, `company`, `title`, `last_name`, `first_name`, `middle_name`, `phone_1`, `phone_2`, `fax`, `address_1`, `address_2`, `city`, `virtuemart_state_id`, `virtuemart_country_id`, `zip`, `email`, `agreed`, `tos`, `customer_note`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 1, 115, 'BT', NULL, NULL, NULL, 'Nguyễn Văn', 'A', NULL, NULL, NULL, NULL, '101 Mai Xuân Thưởng, Vĩnh Hải', NULL, 'Nha Trang', 0, 230, '65000', 'azir@gmail.com', 0, 1, '', '2017-02-11 06:06:20', 115, '2017-02-11 06:06:20', 115, '0000-00-00 00:00:00', 0),
(2, 2, 115, 'BT', NULL, NULL, NULL, 'Nguyễn Văn', 'A', NULL, NULL, NULL, NULL, '101 Mai Xuân Thưởng, Vĩnh Hải', NULL, 'Nha Trang', 0, 230, '65000', 'azir@gmail.com', 0, 1, 'Gói quà', '2017-02-12 01:36:05', 115, '2017-02-12 01:36:05', 115, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_paymentmethods`
--

CREATE TABLE `ecom_virtuemart_paymentmethods` (
  `virtuemart_paymentmethod_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL DEFAULT '1',
  `payment_jplugin_id` int(1) NOT NULL DEFAULT '0',
  `payment_element` varchar(50) NOT NULL DEFAULT '',
  `payment_params` varchar(19000) NOT NULL DEFAULT '',
  `currency_id` int(1) UNSIGNED DEFAULT NULL,
  `shared` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'valide for all vendors?',
  `ordering` int(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='The payment methods of your store';

--
-- Dumping data for table `ecom_virtuemart_paymentmethods`
--

INSERT INTO `ecom_virtuemart_paymentmethods` (`virtuemart_paymentmethod_id`, `virtuemart_vendor_id`, `payment_jplugin_id`, `payment_element`, `payment_params`, `currency_id`, `shared`, `ordering`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 1, 10013, 'tco', 'tco_seller_id=""|tco_secret_word=""|payment_currency="0"|payment_logos=""|sandbox="0"|direct_checkout="0"|debug="0"|status_pending="P"|status_success="C"|status_canceled="X"|countries=0|min_amount="0"|max_amount="0"|cost_per_transaction="0"|cost_percent_total="0"|tax_id="0"|', 147, 0, 0, 1, '2017-02-02 07:17:50', 114, '2017-02-02 07:20:46', 114, '0000-00-00 00:00:00', 0),
(2, 1, 10006, 'standard', 'payment_currency="0"|status_pending="U"|send_invoice_on_order_null="1"|payment_logos=[\n    ""\n]|payment_info=""|countries=[\n    "230"\n]|min_amount=""|max_amount=""|cost_per_transaction=""|cost_min_transaction=""|cost_percent_total=""|tax_id="0"|', 147, 0, 0, 1, '2017-02-02 07:19:20', 114, '2017-02-03 15:03:03', 114, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_paymentmethods_vi_vn`
--

CREATE TABLE `ecom_virtuemart_paymentmethods_vi_vn` (
  `virtuemart_paymentmethod_id` int(1) UNSIGNED NOT NULL,
  `payment_name` varchar(180) NOT NULL DEFAULT '',
  `payment_desc` varchar(19000) NOT NULL DEFAULT '',
  `slug` varchar(192) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecom_virtuemart_paymentmethods_vi_vn`
--

INSERT INTO `ecom_virtuemart_paymentmethods_vi_vn` (`virtuemart_paymentmethod_id`, `payment_name`, `payment_desc`, `slug`) VALUES
(1, 'Tiền mặt', 'Nhận hàng và trả tiền cho nhân viên thu hộ', 'cod'),
(2, 'Chuyển khoản', 'Chuyển khoản:\r\nSTK: 7790205071711\r\nChủ tài khoản: Nguyễn Đức Tiến\r\nNgân hàng Agribank chi nhánh Khánh Hòa', 'bank');

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_paymentmethod_shoppergroups`
--

CREATE TABLE `ecom_virtuemart_paymentmethod_shoppergroups` (
  `id` int(1) UNSIGNED NOT NULL,
  `virtuemart_paymentmethod_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `virtuemart_shoppergroup_id` int(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='xref table for paymentmethods to shoppergroup';

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_payment_plg_paypal`
--

CREATE TABLE `ecom_virtuemart_payment_plg_paypal` (
  `id` int(11) UNSIGNED NOT NULL,
  `virtuemart_order_id` int(1) UNSIGNED DEFAULT NULL,
  `order_number` char(64) DEFAULT NULL,
  `virtuemart_paymentmethod_id` mediumint(1) UNSIGNED DEFAULT NULL,
  `payment_name` varchar(5000) DEFAULT NULL,
  `payment_order_total` decimal(15,5) NOT NULL,
  `payment_currency` smallint(1) DEFAULT NULL,
  `email_currency` smallint(1) DEFAULT NULL,
  `cost_per_transaction` decimal(10,2) DEFAULT NULL,
  `cost_percent_total` decimal(10,2) DEFAULT NULL,
  `tax_id` smallint(1) DEFAULT NULL,
  `paypal_custom` varchar(255) DEFAULT NULL,
  `paypal_method` varchar(200) DEFAULT NULL,
  `paypal_response_mc_gross` decimal(10,2) DEFAULT NULL,
  `paypal_response_mc_currency` char(10) DEFAULT NULL,
  `paypal_response_invoice` char(32) DEFAULT NULL,
  `paypal_response_protection_eligibility` char(128) DEFAULT NULL,
  `paypal_response_payer_id` char(13) DEFAULT NULL,
  `paypal_response_tax` decimal(10,2) DEFAULT NULL,
  `paypal_response_payment_date` char(28) DEFAULT NULL,
  `paypal_response_payment_status` char(50) DEFAULT NULL,
  `paypal_response_pending_reason` char(50) DEFAULT NULL,
  `paypal_response_mc_fee` decimal(10,2) DEFAULT NULL,
  `paypal_response_payer_email` char(128) DEFAULT NULL,
  `paypal_response_last_name` char(64) DEFAULT NULL,
  `paypal_response_first_name` char(64) DEFAULT NULL,
  `paypal_response_business` char(128) DEFAULT NULL,
  `paypal_response_receiver_email` char(128) DEFAULT NULL,
  `paypal_response_transaction_subject` char(128) DEFAULT NULL,
  `paypal_response_residence_country` char(2) DEFAULT NULL,
  `paypal_response_txn_id` char(32) DEFAULT NULL,
  `paypal_response_txn_type` char(32) DEFAULT NULL,
  `paypal_response_parent_txn_id` char(32) DEFAULT NULL,
  `paypal_response_case_creation_date` char(32) DEFAULT NULL,
  `paypal_response_case_id` char(32) DEFAULT NULL,
  `paypal_response_case_type` char(32) DEFAULT NULL,
  `paypal_response_reason_code` char(32) DEFAULT NULL,
  `paypalresponse_raw` varchar(512) DEFAULT NULL,
  `paypal_fullresponse` text,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_payment_plg_standard`
--

CREATE TABLE `ecom_virtuemart_payment_plg_standard` (
  `id` int(1) UNSIGNED NOT NULL,
  `virtuemart_order_id` int(1) UNSIGNED DEFAULT NULL,
  `order_number` char(64) DEFAULT NULL,
  `virtuemart_paymentmethod_id` mediumint(1) UNSIGNED DEFAULT NULL,
  `payment_name` varchar(5000) DEFAULT NULL,
  `payment_order_total` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `payment_currency` char(3) DEFAULT NULL,
  `email_currency` char(3) DEFAULT NULL,
  `cost_per_transaction` decimal(10,2) DEFAULT NULL,
  `cost_min_transaction` decimal(10,2) DEFAULT NULL,
  `cost_percent_total` decimal(10,2) DEFAULT NULL,
  `tax_id` smallint(1) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecom_virtuemart_payment_plg_standard`
--

INSERT INTO `ecom_virtuemart_payment_plg_standard` (`id`, `virtuemart_order_id`, `order_number`, `virtuemart_paymentmethod_id`, `payment_name`, `payment_order_total`, `payment_currency`, `email_currency`, `cost_per_transaction`, `cost_min_transaction`, `cost_percent_total`, `tax_id`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 1, 'MLX203', 2, ' <span class="vmpayment_name">Chuyển khoản</span><span class="vmpayment_description">Chuyển khoản:\r\nSTK: 7790205071711\r\nChủ tài khoản: Nguyễn Đức Tiến\r\nNgân hàng Agribank chi nhánh Khánh Hòa</span><br />', '1540000.00000', 'VND', '147', '0.00', '0.00', '0.00', 0, '2017-02-11 06:06:20', 115, '2017-02-11 06:06:20', 115, '0000-00-00 00:00:00', 0),
(2, 2, '7WP104', 2, ' <span class="vmpayment_name">Chuyển khoản</span><span class="vmpayment_description">Chuyển khoản:\r\nSTK: 7790205071711\r\nChủ tài khoản: Nguyễn Đức Tiến\r\nNgân hàng Agribank chi nhánh Khánh Hòa</span><br />', '4430000.00000', 'VND', '147', '0.00', '0.00', '0.00', 0, '2017-02-12 01:36:05', 115, '2017-02-12 01:36:05', 115, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_payment_plg_tco`
--

CREATE TABLE `ecom_virtuemart_payment_plg_tco` (
  `id` int(11) UNSIGNED NOT NULL,
  `virtuemart_order_id` int(11) UNSIGNED DEFAULT NULL,
  `order_number` char(32) DEFAULT NULL,
  `virtuemart_paymentmethod_id` mediumint(1) UNSIGNED DEFAULT NULL,
  `payment_name` char(255) NOT NULL DEFAULT '',
  `payment_order_total` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `payment_currency` char(3) DEFAULT NULL,
  `cost_per_transaction` decimal(10,2) DEFAULT NULL,
  `cost_percent_total` decimal(10,2) DEFAULT NULL,
  `tax_id` smallint(1) DEFAULT NULL,
  `tco_response` varchar(255) DEFAULT NULL,
  `tco_response_order_number` char(20) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_products`
--

CREATE TABLE `ecom_virtuemart_products` (
  `virtuemart_product_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL DEFAULT '1',
  `product_parent_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `product_sku` varchar(255) DEFAULT NULL,
  `product_gtin` varchar(64) DEFAULT NULL,
  `product_mpn` varchar(64) DEFAULT NULL,
  `product_weight` decimal(10,4) DEFAULT NULL,
  `product_weight_uom` varchar(7) DEFAULT NULL,
  `product_length` decimal(10,4) DEFAULT NULL,
  `product_width` decimal(10,4) DEFAULT NULL,
  `product_height` decimal(10,4) DEFAULT NULL,
  `product_lwh_uom` varchar(7) DEFAULT NULL,
  `product_url` varchar(255) DEFAULT NULL,
  `product_in_stock` int(1) NOT NULL DEFAULT '0',
  `product_ordered` int(1) NOT NULL DEFAULT '0',
  `low_stock_notification` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `product_available_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_availability` varchar(32) DEFAULT NULL,
  `product_special` tinyint(1) DEFAULT NULL,
  `product_sales` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `product_unit` varchar(8) DEFAULT NULL,
  `product_packaging` decimal(8,4) UNSIGNED DEFAULT NULL,
  `product_params` text NOT NULL,
  `hits` int(1) UNSIGNED DEFAULT NULL,
  `intnotes` text,
  `metarobot` varchar(400) DEFAULT NULL,
  `metaauthor` varchar(400) DEFAULT NULL,
  `layout` varchar(16) DEFAULT NULL,
  `published` tinyint(1) DEFAULT NULL,
  `pordering` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='All products are stored here.';

--
-- Dumping data for table `ecom_virtuemart_products`
--

INSERT INTO `ecom_virtuemart_products` (`virtuemart_product_id`, `virtuemart_vendor_id`, `product_parent_id`, `product_sku`, `product_gtin`, `product_mpn`, `product_weight`, `product_weight_uom`, `product_length`, `product_width`, `product_height`, `product_lwh_uom`, `product_url`, `product_in_stock`, `product_ordered`, `low_stock_notification`, `product_available_date`, `product_availability`, `product_special`, `product_sales`, `product_unit`, `product_packaging`, `product_params`, `hits`, `intnotes`, `metarobot`, `metaauthor`, `layout`, `published`, `pordering`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(5, 1, 0, 'LA663AA54JKNVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-01-30 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-01-30 02:48:27', 114, '2017-01-30 02:48:27', 114, '0000-00-00 00:00:00', 0),
(4, 1, 0, 'TH849AA39TYEVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 2, '2017-01-30 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-01-30 02:47:04', 114, '2017-01-30 02:47:04', 114, '0000-00-00 00:00:00', 0),
(6, 1, 0, 'MA146AA33IVAVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-01-30 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-01-30 02:49:46', 114, '2017-01-30 04:07:46', 114, '0000-00-00 00:00:00', 0),
(7, 1, 0, 'MA146AA70XQFVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-01-30 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-01-30 02:51:31', 114, '2017-01-30 02:51:31', 114, '0000-00-00 00:00:00', 0),
(8, 1, 0, 'ZA011AA90WBHVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-01-30 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-01-30 03:04:18', 114, '2017-01-30 03:04:18', 114, '0000-00-00 00:00:00', 0),
(9, 1, 0, 'ZA011AA75ZSAVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-01-30 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-01-30 03:05:25', 114, '2017-01-30 03:05:25', 114, '0000-00-00 00:00:00', 0),
(10, 1, 0, 'TB545AA07YLCVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-01-30 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-01-30 03:10:51', 114, '2017-01-30 03:10:51', 114, '0000-00-00 00:00:00', 0),
(11, 1, 0, 'SH840AA02NTDVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-01-30 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-01-30 03:12:53', 114, '2017-01-30 03:12:53', 114, '0000-00-00 00:00:00', 0),
(12, 1, 0, 'MI869AA10VWJVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 1, 3, '2017-01-30 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-01-30 03:25:00', 114, '2017-01-30 03:25:00', 114, '0000-00-00 00:00:00', 0),
(13, 1, 0, 'KE628AA01USWVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-01-30 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-01-30 03:51:26', 114, '2017-01-30 03:51:26', 114, '0000-00-00 00:00:00', 0),
(14, 1, 0, 'MO449AA73SGOVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-01-30 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-01-30 03:53:00', 114, '2017-01-30 03:53:00', 114, '0000-00-00 00:00:00', 0),
(15, 1, 0, 'TH296AA82MMFVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 5, '2017-01-30 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-01-30 03:55:03', 114, '2017-01-30 03:56:24', 114, '0000-00-00 00:00:00', 0),
(16, 1, 0, 'AD002AA57PXQVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 5, '2017-01-30 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-01-30 03:56:10', 114, '2017-01-30 03:56:29', 114, '0000-00-00 00:00:00', 0),
(17, 1, 0, '24985AA42NNHVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 1, 5, '2017-01-30 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-01-30 03:57:42', 114, '2017-01-30 03:57:42', 114, '0000-00-00 00:00:00', 0),
(18, 1, 0, 'TH296AA84MMDVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 5, '2017-01-30 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-01-30 03:58:48', 114, '2017-01-30 04:00:36', 114, '0000-00-00 00:00:00', 0),
(19, 1, 0, 'TH296AA80MMHVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 5, '2017-01-30 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-01-30 03:59:45', 114, '2017-01-30 03:59:45', 114, '0000-00-00 00:00:00', 0),
(20, 1, 0, 'EN831AA08UKXVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-01 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-01 03:19:34', 114, '2017-02-01 03:19:34', 114, '0000-00-00 00:00:00', 0),
(21, 1, 0, '24985AA39NNKVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-01 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-01 03:20:46', 114, '2017-02-01 03:20:46', 114, '0000-00-00 00:00:00', 0),
(22, 1, 0, 'TH296AA83MMEVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-01 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-01 03:22:01', 114, '2017-02-01 03:22:01', 114, '0000-00-00 00:00:00', 0),
(23, 1, 0, '24985AA48WOLVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-01 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-01 03:22:59', 114, '2017-02-01 03:22:59', 114, '0000-00-00 00:00:00', 0),
(24, 1, 0, 'AD002AA07JXWVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 2, '2017-02-01 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-01 03:24:23', 114, '2017-02-01 03:24:23', 114, '0000-00-00 00:00:00', 0),
(25, 1, 0, 'AS753AA77VXQVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-01 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-01 03:26:06', 114, '2017-02-01 03:26:06', 114, '0000-00-00 00:00:00', 0),
(26, 1, 0, 'AD002AA87EQEVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-01 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-01 03:27:53', 114, '2017-02-01 03:27:53', 114, '0000-00-00 00:00:00', 0),
(27, 1, 0, 'TH239AA61GHMVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-01 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-01 03:29:13', 114, '2017-02-01 03:29:13', 114, '0000-00-00 00:00:00', 0),
(28, 1, 0, 'TH846AA98OYNVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-01 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-01 03:30:01', 114, '2017-02-01 03:30:01', 114, '0000-00-00 00:00:00', 0),
(29, 1, 0, 'OA894AA83IVGVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-01 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-01 03:31:24', 114, '2017-02-01 03:31:24', 114, '0000-00-00 00:00:00', 0),
(30, 1, 0, 'TH296AA86MMBVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-01 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-01 03:56:32', 114, '2017-02-01 03:56:32', 114, '0000-00-00 00:00:00', 0),
(31, 1, 0, 'TH296AA87MMAVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-01 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-01 03:58:10', 114, '2017-02-01 03:58:10', 114, '0000-00-00 00:00:00', 0),
(32, 1, 0, 'TH296AA89MLYVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-01 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-01 03:59:14', 114, '2017-02-01 03:59:14', 114, '0000-00-00 00:00:00', 0),
(33, 1, 0, 'GE189AA69TLMVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-01 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-01 04:00:18', 114, '2017-02-01 04:00:18', 114, '0000-00-00 00:00:00', 0),
(34, 1, 0, 'JC882AA35YWIVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-01 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-01 04:01:20', 114, '2017-02-01 04:01:20', 114, '0000-00-00 00:00:00', 0),
(35, 1, 0, 'ZA011AA08BWLVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-01 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-01 04:05:37', 114, '2017-02-01 04:05:37', 114, '0000-00-00 00:00:00', 0),
(36, 1, 0, 'JC882AA25YWSVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-01 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-01 04:31:31', 114, '2017-02-01 04:31:31', 114, '0000-00-00 00:00:00', 0),
(37, 1, 0, 'JC882AA26YWRVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-01 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-01 04:32:29', 114, '2017-02-01 04:32:29', 114, '0000-00-00 00:00:00', 0),
(38, 1, 0, 'TH849AA42TYBVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-01 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-01 04:33:30', 114, '2017-02-01 04:33:30', 114, '0000-00-00 00:00:00', 0),
(39, 1, 0, 'JC882AA28YWPVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2017-02-01 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-01 04:34:45', 114, '2017-02-01 04:34:45', 114, '0000-00-00 00:00:00', 0),
(40, 1, 0, 'JC882AA04NVBVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 1, 3, '2017-02-01 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-01 04:35:52', 114, '2017-02-01 04:35:52', 114, '0000-00-00 00:00:00', 0),
(41, 1, 0, 'TH296AA85MMCVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-01 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-01 04:37:12', 114, '2017-02-01 04:37:12', 114, '0000-00-00 00:00:00', 0),
(42, 1, 0, 'MA146AA76IYDVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 1, 3, '2017-02-01 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-01 04:37:55', 114, '2017-02-01 04:37:55', 114, '0000-00-00 00:00:00', 0),
(43, 1, 0, '24985AA56AXVVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-01 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-01 04:38:50', 114, '2017-02-01 04:38:50', 114, '0000-00-00 00:00:00', 0),
(44, 1, 0, 'MA146AA63NWQVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-01 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-01 04:40:19', 114, '2017-02-01 04:40:26', 114, '0000-00-00 00:00:00', 0),
(45, 1, 0, '24985AA70NARVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-01 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-01 04:43:29', 114, '2017-02-01 04:43:29', 114, '0000-00-00 00:00:00', 0),
(46, 1, 0, '24985AA72AXFVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-01 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-01 04:44:44', 114, '2017-02-01 04:44:44', 114, '0000-00-00 00:00:00', 0),
(47, 1, 0, '24985AA37EXIVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-01 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-01 04:46:23', 114, '2017-02-01 04:46:23', 114, '0000-00-00 00:00:00', 0),
(48, 1, 0, 'TH239AA90GGJVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-01 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-01 05:36:32', 114, '2017-02-01 05:36:32', 114, '0000-00-00 00:00:00', 0),
(49, 1, 0, 'MI869AA07VWMVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-01 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-01 05:37:42', 114, '2017-02-01 05:37:42', 114, '0000-00-00 00:00:00', 0),
(50, 1, 0, 'TB545AA58YJDVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-01 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-01 05:38:51', 114, '2017-02-01 05:38:51', 114, '0000-00-00 00:00:00', 0),
(51, 1, 0, 'MA146AA08OPBVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-01 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-01 05:39:55', 114, '2017-02-01 05:39:55', 114, '0000-00-00 00:00:00', 0),
(52, 1, 0, 'TB545AA49YJMVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-01 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-01 05:40:44', 114, '2017-02-01 05:40:44', 114, '0000-00-00 00:00:00', 0),
(53, 1, 0, 'ZA011AA19BWAVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 2, '2017-02-01 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-01 05:41:30', 114, '2017-02-01 05:41:30', 114, '0000-00-00 00:00:00', 0),
(54, 1, 0, 'TB545AA55YJGVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-01 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-01 05:44:00', 114, '2017-02-01 05:49:48', 114, '0000-00-00 00:00:00', 0),
(55, 1, 0, 'TB545AA94YHTVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 5, '2017-02-01 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-01 05:46:20', 114, '2017-02-01 05:46:20', 114, '0000-00-00 00:00:00', 0),
(56, 1, 0, 'TH239AA28IWDVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-01 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-01 05:48:57', 114, '2017-02-01 05:48:57', 114, '0000-00-00 00:00:00', 0),
(57, 1, 0, 'TO047AA90OHHVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-01 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-01 05:49:36', 114, '2017-02-01 05:49:36', 114, '0000-00-00 00:00:00', 0),
(58, 1, 0, 'GE189AA10TJXVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 15, 0, 5, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 05:01:50', 114, '2017-02-02 05:01:50', 114, '0000-00-00 00:00:00', 0),
(59, 1, 0, 'JC882AA15YXCVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 05:02:59', 114, '2017-02-02 05:02:59', 114, '0000-00-00 00:00:00', 0),
(60, 1, 0, 'JC882AA47KOQVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 05:03:48', 114, '2017-02-02 05:03:48', 114, '0000-00-00 00:00:00', 0),
(61, 1, 0, 'AS753AA13UWGVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 05:05:09', 114, '2017-02-02 05:05:09', 114, '0000-00-00 00:00:00', 0),
(62, 1, 0, 'TH296AA06MLHVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 05:06:03', 114, '2017-02-02 05:06:03', 114, '0000-00-00 00:00:00', 0),
(63, 1, 0, 'TH296AA04MLJVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 05:08:34', 114, '2017-02-02 05:08:34', 114, '0000-00-00 00:00:00', 0),
(64, 1, 0, 'GE189AA57RRUVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 05:09:35', 114, '2017-02-02 05:09:35', 114, '0000-00-00 00:00:00', 0),
(65, 1, 0, 'LA663AA64OSPVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 05:10:33', 114, '2017-02-02 05:10:33', 114, '0000-00-00 00:00:00', 0),
(66, 1, 0, 'JC882AA17YXAVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 05:11:27', 114, '2017-02-02 05:11:27', 114, '0000-00-00 00:00:00', 0),
(67, 1, 0, 'TH849AA46TXXVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 05:12:36', 114, '2017-02-02 05:12:36', 114, '0000-00-00 00:00:00', 0),
(68, 1, 0, 'TH849AA45TXYVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 05:28:16', 114, '2017-02-02 05:28:16', 114, '0000-00-00 00:00:00', 0),
(69, 1, 0, 'JC882AA24YWTVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 05:29:26', 114, '2017-02-02 05:29:26', 114, '0000-00-00 00:00:00', 0),
(70, 1, 0, 'BE042AA71SGQVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 05:30:51', 114, '2017-02-02 05:30:51', 114, '0000-00-00 00:00:00', 0),
(71, 1, 0, 'JC882AA21YWWVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 05:31:41', 114, '2017-02-02 05:31:41', 114, '0000-00-00 00:00:00', 0),
(72, 1, 0, 'JC882AA18YWZVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 05:34:45', 114, '2017-02-02 05:34:45', 114, '0000-00-00 00:00:00', 0),
(73, 1, 0, 'TH849AA53TXQVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 05:35:38', 114, '2017-02-02 05:35:38', 114, '0000-00-00 00:00:00', 0),
(74, 1, 0, 'MA146AA90DNHVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 05:36:28', 114, '2017-02-02 05:36:28', 114, '0000-00-00 00:00:00', 0),
(75, 1, 0, 'LA663AA67OSMVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 05:37:09', 114, '2017-02-02 05:37:09', 114, '0000-00-00 00:00:00', 0),
(76, 1, 0, 'ZA011AA69AXAVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 05:39:24', 114, '2017-02-02 05:39:24', 114, '0000-00-00 00:00:00', 0),
(77, 1, 0, 'MA146AA51NOMVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 05:41:12', 114, '2017-02-02 05:41:12', 114, '0000-00-00 00:00:00', 0),
(78, 1, 0, 'MA146AA66NNXVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 05:41:49', 114, '2017-02-02 05:41:49', 114, '0000-00-00 00:00:00', 0),
(79, 1, 0, 'MA146AA05IPMVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 05:42:22', 114, '2017-02-02 05:42:22', 114, '0000-00-00 00:00:00', 0),
(80, 1, 0, 'MA146AA18GQZVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 05:43:02', 114, '2017-02-02 05:43:02', 114, '0000-00-00 00:00:00', 0),
(81, 1, 0, 'TH296AA24DTRVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 05:43:47', 114, '2017-02-02 05:43:47', 114, '0000-00-00 00:00:00', 0),
(82, 1, 0, 'MI869AA73HSOVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 05:44:37', 114, '2017-02-02 05:44:37', 114, '0000-00-00 00:00:00', 0),
(83, 1, 0, 'WI440AC12UGXVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 5, 0, 2, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 05:51:04', 114, '2017-02-02 05:51:04', 114, '0000-00-00 00:00:00', 0),
(84, 1, 0, 'EX066AC97TSCVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 5, 1, 2, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 05:52:07', 114, '2017-02-02 05:52:07', 114, '0000-00-00 00:00:00', 0),
(85, 1, 0, 'ZA011AC88MZZVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 5, 0, 3, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 05:52:54', 114, '2017-02-02 05:52:54', 114, '0000-00-00 00:00:00', 0),
(86, 1, 0, '24985AC82ZDPVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 5, 0, 2, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 05:56:05', 114, '2017-02-02 05:56:05', 114, '0000-00-00 00:00:00', 0),
(87, 1, 0, '24985AC85ZEKVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 5, 0, 2, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 06:01:37', 114, '2017-02-02 06:01:37', 114, '0000-00-00 00:00:00', 0),
(88, 1, 0, '24985AC35HEYVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 5, 0, 3, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 06:07:14', 114, '2017-02-02 06:07:14', 114, '0000-00-00 00:00:00', 0),
(89, 1, 0, '24985AC81ZEOVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 5, 0, 3, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 06:08:07', 114, '2017-02-02 06:08:07', 114, '0000-00-00 00:00:00', 0),
(90, 1, 0, 'ZA011AC90MZXVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 06:08:54', 114, '2017-02-02 06:08:54', 114, '0000-00-00 00:00:00', 0),
(91, 1, 0, 'DO191AC93KRQVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 5, 0, 2, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 06:09:36', 114, '2017-02-02 06:09:36', 114, '0000-00-00 00:00:00', 0),
(92, 1, 0, 'AS753AC40MGDVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 06:11:05', 114, '2017-02-02 06:11:05', 114, '0000-00-00 00:00:00', 0),
(93, 1, 0, 'PO898AC52WVRVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 5, 0, 3, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 06:11:52', 114, '2017-02-02 06:11:52', 114, '0000-00-00 00:00:00', 0),
(94, 1, 0, 'MA546AC00JHZVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 5, 0, 3, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 06:31:34', 114, '2017-02-02 06:31:34', 114, '0000-00-00 00:00:00', 0),
(95, 1, 0, 'MA546GL26YBLVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 5, 0, 2, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 06:32:23', 114, '2017-02-02 06:32:23', 114, '0000-00-00 00:00:00', 0),
(96, 1, 0, 'HS423AC40LUPVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 2, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 06:33:13', 114, '2017-02-02 06:33:13', 114, '0000-00-00 00:00:00', 0),
(97, 1, 0, 'LY034AC85NQWVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 5, 0, 2, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 06:33:51', 114, '2017-02-02 06:33:51', 114, '0000-00-00 00:00:00', 0),
(98, 1, 0, 'MA546GL76IUHVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 5, 0, 2, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 06:34:34', 114, '2017-02-02 06:34:34', 114, '0000-00-00 00:00:00', 0),
(99, 1, 0, 'MA546GL56IVBVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 5, 0, 2, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 06:35:27', 114, '2017-02-02 06:35:27', 114, '0000-00-00 00:00:00', 0),
(100, 1, 0, 'EV011AC98ETPVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 5, 0, 3, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 06:36:13', 114, '2017-02-02 06:36:13', 114, '0000-00-00 00:00:00', 0),
(101, 1, 0, 'DA001AC24JKTVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 5, 0, 3, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 06:37:52', 114, '2017-02-02 06:37:52', 114, '0000-00-00 00:00:00', 0),
(102, 1, 0, 'JU179AC05ENUVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 06:38:41', 114, '2017-02-02 06:38:41', 114, '0000-00-00 00:00:00', 0),
(103, 1, 0, 'WI440AC18PMRVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 4, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 06:39:28', 114, '2017-02-02 06:39:28', 114, '0000-00-00 00:00:00', 0),
(104, 1, 0, 'RO006AC78QZXVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 06:40:21', 114, '2017-02-02 06:40:21', 114, '0000-00-00 00:00:00', 0),
(105, 1, 0, 'CO323AC95NYQVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 5, 0, 2, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 06:41:00', 114, '2017-02-02 06:41:00', 114, '0000-00-00 00:00:00', 0),
(106, 1, 0, '24985SH45XACVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 06:49:40', 114, '2017-02-02 06:49:40', 114, '0000-00-00 00:00:00', 0),
(107, 1, 0, 'VI961SH09QWOVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 1, 3, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 06:50:30', 114, '2017-02-02 06:50:30', 114, '0000-00-00 00:00:00', 0),
(108, 1, 0, '24985SH28VJNVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 06:52:12', 114, '2017-02-02 06:52:12', 114, '0000-00-00 00:00:00', 0),
(109, 1, 0, 'ZA011SH69PEKVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 06:53:07', 114, '2017-02-02 06:53:07', 114, '0000-00-00 00:00:00', 0),
(110, 1, 0, 'AAGKIAA0000075GS', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 06:56:24', 114, '2017-02-02 06:56:24', 114, '0000-00-00 00:00:00', 0),
(111, 1, 0, '24985SH99LRSVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 06:57:30', 114, '2017-02-02 06:57:30', 114, '0000-00-00 00:00:00', 0),
(112, 1, 0, 'BA059SH19RPKVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 06:58:12', 114, '2017-02-02 06:58:12', 114, '0000-00-00 00:00:00', 0),
(113, 1, 0, 'SU756SH55OPCVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 06:58:59', 114, '2017-02-02 06:58:59', 114, '0000-00-00 00:00:00', 0),
(114, 1, 0, 'ZI808SH52HODVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 06:59:58', 114, '2017-02-02 06:59:58', 114, '0000-00-00 00:00:00', 0),
(115, 1, 0, 'AAFNZSH0000056GS', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 07:00:47', 114, '2017-02-02 07:00:47', 114, '0000-00-00 00:00:00', 0),
(116, 1, 0, '24985SH46VIVVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 07:01:38', 114, '2017-02-02 07:01:38', 114, '0000-00-00 00:00:00', 0),
(117, 1, 0, 'BA059SH10RPTVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 07:02:27', 114, '2017-02-02 07:02:27', 114, '0000-00-00 00:00:00', 0),
(118, 1, 0, '24985SH35XAMVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 07:03:05', 114, '2017-02-02 07:03:05', 114, '0000-00-00 00:00:00', 0),
(119, 1, 0, '24985SH44XADVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 07:04:41', 114, '2017-02-02 07:04:41', 114, '0000-00-00 00:00:00', 0),
(120, 1, 0, 'BI988SH03WMAVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 07:05:32', 114, '2017-02-02 07:05:32', 114, '0000-00-00 00:00:00', 0),
(121, 1, 0, '24985SH60GBFVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 07:06:13', 114, '2017-02-02 07:06:13', 114, '0000-00-00 00:00:00', 0),
(122, 1, 0, 'ZA011SH71RRSVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 07:06:55', 114, '2017-02-02 07:06:55', 114, '0000-00-00 00:00:00', 0),
(123, 1, 0, 'BI988SH37WKSVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 07:08:13', 114, '2017-02-02 07:08:13', 114, '0000-00-00 00:00:00', 0),
(124, 1, 0, 'ZA011SH94WSRVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 07:08:55', 114, '2017-02-02 07:08:55', 114, '0000-00-00 00:00:00', 0),
(125, 1, 0, '24985SH78ZSBVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 07:12:10', 114, '2017-02-02 07:12:10', 114, '0000-00-00 00:00:00', 0),
(126, 1, 0, 'BA059SH08RPVVN', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 10, 0, 3, '2017-02-02 00:00:00', '', 1, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2017-02-02 07:12:48', 114, '2017-02-02 07:12:48', 114, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_products_vi_vn`
--

CREATE TABLE `ecom_virtuemart_products_vi_vn` (
  `virtuemart_product_id` int(1) UNSIGNED NOT NULL,
  `product_s_desc` varchar(2000) NOT NULL DEFAULT '',
  `product_desc` varchar(18400) NOT NULL DEFAULT '',
  `product_name` varchar(180) NOT NULL DEFAULT '',
  `metadesc` varchar(400) NOT NULL DEFAULT '',
  `metakey` varchar(400) NOT NULL DEFAULT '',
  `customtitle` varchar(255) NOT NULL DEFAULT '',
  `slug` varchar(192) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecom_virtuemart_products_vi_vn`
--

INSERT INTO `ecom_virtuemart_products_vi_vn` (`virtuemart_product_id`, `product_s_desc`, `product_desc`, `product_name`, `metadesc`, `metakey`, `customtitle`, `slug`) VALUES
(4, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Áo khoác jean chất vải cao cấp , mịn, không nhăn , thoải mái và rất thoáng mát. Form áo ôm body. Mẫu áo khoác trẻ trơn trẻ trung, đơn giản dễ phối đồ. Phù hợp cho các bạn nam mặc đi chơi hay đi làm đều đẹp và lịch sự.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Áo khoác jean có thể nói là trang phục thời trang đang được nhiều chàng trai ưa thích hiện nay. Nó mang đến làn gió mới cho thời trang của nam giới. Nếu phong cách của bạn là mạnh mẽ, cá tính, mang chút phủi bụi và phong trần thì đừng chần chừ khi chọn chất liệu jean hoặc denim. Áo khoác jean hiện nay có rất nhiều mẫu, từ đơn giản đến kiểu cách, phù hợp với mọi lứa tuổi và tính cách khác nhau của từng người.</span></p>', 'Áo Khoác Jean Thời Trang', '', '', '', 'áo-khoác-jean-thời-trang'),
(5, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Áo Phao Nam Chống Nước S4 Cung Cấp Bởi Mango Fashion:</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Size châu Âu nên chọn giảm một size so với size thường mặc.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">-Áo trần bông 3 lớp với lớp bông cao cấp, có thể giúp người mặc chống chịu được cái lạnh của những ngày đại hàn. Sợi spandex cao cấp siêu bền được sử dụng làm lớp ngoài của áo.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">-Đặc biệt hơn áo còn được phủ thêm 1 lớp PU bên ngoài giúp bề mặt áo hoàn toàn không thấm nước.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">-Màu xám rêu</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">-Cổ cao 8 cm, mũ tháo rời</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Thiết kế khóa kéo trước ngực, túi khóa 2 bên hông</span></p>', 'Áo Phao Nam Chống Nước S4', '', '', '', 'áo-phao-nam-chống-nước-s4'),
(6, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Áo khoác nam Boomber . Chất liệu Kaki mềm tạo cảm giác thoải mái cho người mặt.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Lớp lót bên trong vải dù mát mẻ. Không gây hầm nóng</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Kiểu dáng hợp thời trang.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Sản phẩm bán chạy nhất mùa thu đông.</span></p>', 'Áo Boomber Xanh Lính', '', '', '', 'áo-khoác-boomber-xanh-lính'),
(7, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Áo khoác Cardigan nam giúp bạn nam dễ dàng mix cùng các kiểu trang phục khác, đồng thời giữ ấm cơ thể khi thời tiết trở lạnh. </span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chiếc áo vừa giữ ấm cho bạn mỗi khi trời lạnh, vừa làm trang phục chắn gió, bụi, nắng hiệu quả khi đi đường.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Màu sắc trang nhã, bạn thoải mái mix với nhiều trang phục khác nhau như jeans, kaki, short...cho bạn phong cách năng động, cá tính.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Vải len gân</span></p>', 'Áo Cardigan Đen Cao Cấp', '', '', '', 'áo-cardigan-đen-cao-cấp'),
(8, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Một sự đầu tư xứng đáng cho phong cách thời trang lịch lãm của quý ông - áo blazer từ thương hiệu ZALORA. Chất liệu vải mềm mại, phối kiểu dáng suông rộng thoải mái và màu sắc trang nhã.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu polyester pha</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Cổ vest, phối nút cài</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Tay dài</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- 2 túi giả bên hông</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Dáng suông</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Có lót trong</span></p>', 'Áo Blazer Len Pha', '', '', '', 'áo-blazer-len-pha'),
(9, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Quả là một ý tưởng không tồi khi sắm cho mình chiếc áo cardigan từ thương hiệu ZALORA. Thiết kế colourblock nổi bật, phối chất liệu mềm mại và kiểu dáng thoải mái, đây chính là lựa chọn tuyệt vời khi nhiệt độ xuống thấp.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu cotton pha</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Cổ chữ V</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Tay dài</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Thân trước phối nút cài</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Dáng suông</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Không lót trong</span></p>', 'Áo Cardigan Colourblock', '', '', '', 'áo-cardigan-colourblock'),
(10, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Tự tin khoe cá tính cực chất và năng động cùng áo khoác bomber in họa tiết của thương hiệu TB X132. Thiết kế may phối khóa kéo màu vàng tạo điểm nhấn đặc biệt cho áo.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu cotton pha</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Cổ chữ V</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Tay dài, bo gấu tay</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- May khóa kéo trước</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Thiết kế 2 túi bên hông</span></p>', 'Áo Bomber In Họa Tiết', '', '', '', 'áo-bomber-in-họa-tiết'),
(11, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu vải kaki cao cấp, nhẹ, thoáng mát, mềm mịn, thấm hút mồ hôi tốt</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Lớp lót bên trong vải dù mát mẻ. Không gây hầm nóng</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Không co rút nhăn nhàu sau khi giặt và trong thời gian sử dụng sản phẩm</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Được thiết kế với kiểu dáng thời trang đẹp mắt, phù hợp với mọi dáng người, dễ phối đồ.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Kiểu dáng hợp thời trang.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Sản phẩm bán chạy nhất mùa thu đông</span></p>', 'Áo Bomber X2 Trắng', '', '', '', 'áo-bomber-x2-trắng'),
(12, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Thêm vào tủ quần áo mùa Thu Đông của bạn áo blazer thiết kế bởi MINT Basic. Áo có màu sắc trơn dễ phối cùng áo mặc trong, thiết kế áo dày vừa đủ để giữ ấm cho cơ thể bạn trong khi vẫn trông thật phong cách và thời thượng.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu polyester</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Áo cổ vest</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Tay dài</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- May nút gài mặt trước áo</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Bên hông may túi</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Có may lót</span></p>', 'Áo Blazer Mintz', '', '', '', 'áo-blazer-mintz'),
(13, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Áo khoác thể thao với chất liệu poly siêu nhẹ, có nón và dây rút nón tiện lợi, có hể đi mưa nhẹ, dễ dàng vận động  trong mọi thời tiết, áo màu xanh lá phối họa tiết trẻ trung nhưng không kém phần năng động cho bạn trẻ.</span></p>', 'Áo Khoác Thể Thao Nam', '', '', '', 'áo-khoác-thể-thao-nam'),
(14, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Sản phẩm được cung cấp bởi TopMan và giao hàng bởi T-Store</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Tự tin sải bước với phong cách của một quý ông lịch lãm và sang trọng chỉ với Áo  Vest từ thương hiệu Bernice. Thiết kế Classic cùng gam màu trẻ trung và nổi bật.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu Dormeuil co giãn</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Áo: Ve K sang trọng, 1 khuy, 1 xẻ, tay dài. Thiết kế 2 túi bên hông, 1 túi trước ngực</span></p>', 'Áo Vest Kingsman', '', '', '', 'áo-vest-kingsman'),
(15, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Đơn giản và trẻ trung khi lựa chọn áo thun in họa tiết thiết kế bởi thương hiệu The Blues. Áo được làm từ chất liệu mềm mại, kiểu dáng đơn giản cùng họa tiết đẹp mắt thể hiện cá tính cả bạn.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu cotton pha</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Áo cổ tròn</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Tay ngắn</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Mặt trước in hình họa tiết</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Không may lót</span></p>', 'Áo Thun Tay Ngắn Cổ Tròn', '', '', '', 'thun-nam-tay-ngắn-cổ-tròn'),
(16, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Áo thun nam polo Thương hiệu Mango mang đến nét thanh lịch và hiện đại cho các chàng trai. Thiết kế Họa tiết galaxy phần cổ và trụ áo mang lại phong cách độc đáo cho người mặc.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Made in Việt Nam.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu: 95% cotton, 5% spandex</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu thoáng mát, không bám vào da.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Thấm hút tốt, Chất lượng bền, Phom suông.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Tay ngắn.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Không may lót.</span></p>', 'Áo Thun Polo Cổ Rin ', '', '', '', 'áo-thun-nam-polo-cổ-rin'),
(17, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Thương hiệu Zara thay đổi thiết kế cổ điển, trở thành chiếc áo jumper phối sọc độc đáo. Chất liệu cotton mềm, mang đến cảm giác thoải mái suốt cả ngày.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu cotton</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Cổ tròn</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Tay dài</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Dáng suông</span></p>', 'Áo Jumper Phốc Sọc Dọc', '', '', '', 'áo-jumper-phốc-sọc-dọc'),
(18, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Cuối tuần đầy thoải mái với áo polo thiết kế bởi thương hiệu Mango. Áo có kiểu dáng đơn giản, chất liệu thấm hút tốt khiến quý ông thấy dễ chịu cả ngày dài.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu cotton pha</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Áo cổ lật</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Tay ngắn</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Dưới cổ may hàng nút gài</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Kẻ sọc ngang họa tiết</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Không may lót</span></p>', 'Áo Polo Sọc Tay Ngắn', '', '', '', 'áo-polo-sọc-tay-ngắn'),
(19, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Giữ ấm cho cơ thể trong khi vẫn trông thật thời thượng với áo thun dài tay thiết kế bởi thương hiệu Hermes. Áo được làm từ chất liệu vải dày vừa phải, giữ ấm và hút ẩm tốt, màu sắc bắt mắt khiến bạn trông thu hút hơn.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu cotton pha</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Áo cổ tròn</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Tay dài</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Không may lót</span></p>', 'Áo Len Nam Cổ Tròn', '', '', '', 'áo-len-nam-cổ-tròn'),
(20, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;"> Màu sắc: Màu xám </span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">☀ Đặc điểm: </span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">  - Nút đen</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;"> </span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">☀ Size: S, M, L, XL</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">☀ Thành phần chất liệu: Thun lạnh.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">    - Có khả năng thấm hút ẩm.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">    - Thấm mồ hôi.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">    - Độ bền cao, giặt nhanh khô.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">☀ Xuất xứ: Việt Nam</span></p>', 'Áo Thun Trơn SlimFit Zara', '', '', '', 'áo-thun-trơn-slimfit-zara'),
(21, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Thương hiệu Zara thay đổi thiết kế cổ điển, trở thành chiếc áo jumper phối sọc độc đáo. Chất liệu cotton mềm, mang đến cảm giác thoải mái suốt cả ngày.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu cotton</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Cổ tròn</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Tay dài</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Dáng suông</span></p>', 'Áo Jumper Phối Sọc Ngang', '', '', '', 'áo-jumper-phối-sọc-ngang'),
(22, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Đơn giản ngày cuối tuần cùng áo thun thiết kế bởi The Blues. Áo có màu sắc trơn, chất liệu mềm mại thấm hút tốt khiến bạn luôn thấy thoải mái và dễ chịu cả ngày dài.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu cotton pha</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Áo cổ tròn</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Tay ngắn</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Không may lót</span></p>', 'Áo Thun Mango Tay Ngắn Cổ Tròn', '', '', '', 'áo-thun-mango-tay-ngắn-cổ-tròn'),
(23, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Nổi bật với họa tiết houndstooth, áo pullover từ thương hiệu Dunhill mang đến vẻ ngoài sành điệu, đồng thời vẫn giữ ấm cho bạn trong suốt mùa đông lạnh.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu cotton</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Cổ tròn</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Tay dài</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Dáng suông</span></p>', 'Áo Pullover Họa Tiết Houndstooth', '', '', '', 'áo-pullover-họa-tiết-houndstooth'),
(24, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Luôn cảm thấy thoải mái và vẫn trẻ trung, năng động với áo thun in hình của thương hiệu Mango</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">''- Made in Việt Nam.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu thoáng mát, không bám vào da. </span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu: 95% cotton, 5% spandex</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Thấm hút tốt, Chất lượng bền, Phom ôm body.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Áo cổ tròn trẻ trung năng động</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Tay ngắn.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Không may lót</span></p>', 'Áo Cổ Tròn Yasuo', '', '', '', 'áo-cổ-tròn-yasuo'),
(25, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Áo thun body cotton lụa:</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Chất liệu: Cotton lụa, mềm mại, co dãn tốt.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Thiết kế: không phai màu, độ đàn hồi tốt,  thấm hút mồ hôi tốt.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Dễ dàng thoải mái vận động phù hợp cho các hoạt động ngoài trời, du lịch dã ngoại, đi chơi cùng bạn bè.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Chất liệu là thun cotton co dãn đem đến sự thoải mái cho người mặc. Chạm vào chất liệu sẽ cho bạn cảm giác mát dịu và mềm mại. Đồng thời, chất liệu cotton còn có khả năng thấm hút mồ hôi cực tốt mang đến cho bạn nam cảm giác thoải mái, tự tin suốt cả ngày dài năng động. </span></p>', 'Áo Body Màu Xanh Lính', '', '', '', 'áo-body-màu-xanh-lính'),
(26, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Áo thun nam polo trơn Mango mang đến nét thanh lịch và hiện đại cho các chàng trai. Thiết kế phù hợp với mọi hoàn cảnh </span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Made in Việt Nam.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu: 95% cotton, 5% spandex</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu thoáng mát, không bám vào da. </span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Thấm hút tốt, Chất lượng bền, Phom suông.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Tay ngắn.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Không may lót.</span></p>', 'Áo Polo Anivia', '', '', '', 'áo-polo-anivia'),
(27, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Áo thun của thương hiệu Thời Trang Dunhill mang đến nét trẻ trung và năng động cho bạn nam yêu thích phong cách hiện đại. Thiết kế kiểu dáng đơn giản tôn lên cá tính mạnh mẽ cho bạn.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu: 100% cotton</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Cổ tròn</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Ngắn tay</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Áo sọc ngang trẻ trung và đơn giản.</span></p>', 'Áo Thun Sọc Cổ Tròn Aber', '', '', '', 'áo-thun-sọc-cổ-tròn-aber'),
(28, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu 100% cotton</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Cổ tròn, may hàng nút cài dưới cổ</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Tay dài</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Vạt ngang</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Co giãn tốt</span></p>', 'Áo Thun Nam Dài Tay Có Nút ', '', '', '', 'áo-thun-nam-dài-tay-có-nút'),
(29, '', '<div id="productDesc" class="box mtl fss clearfix" style="box-sizing: border-box; margin-top: 20px; font-size: 11px; position: relative; zoom: 1; height: 106px; overflow: hidden; z-index: 1; color: #000000; font-family: Arial, sans-serif; letter-spacing: 0.6px;">Chất liệu thoáng mát<br />Với chất liệu 100% Cotton, thấm hút mồ hôi tốt, tạo cho người mặc cảm giác vô cùng thoải mái và thoáng mát khi sử dụng.<br />Thiết kế trẻ trung năng động</div>\r\n<p> </p>', 'Áo Phông OASIS', '', '', '', 'áo-phông-oasis'),
(30, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Thể hiện nét trẻ trung của bạn với áo sơ mi kẻ sọc caro đến từ TopMan. Áo có màu sắc đẹp mắt, kiểu dáng ngắn tay đầy năng động thích hợp cho các buổi dạo phố của bạn.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu cotton pha</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Áo cổ tàu&gt;</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Tay ngắn</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Mặt trước may hàng nút gài</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Kẻ sọc caro trang trí</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Không may lót</span></p>', 'Sơ Mi Nam Tay Ngắn', '', '', '', 'sơ-mi-nam-tay-ngắn'),
(31, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Thể hiện nét trẻ trung của bạn với áo sơ mi kẻ sọc caro đến từ TopMan. Áo có màu sắc đẹp mắt, kiểu dáng ngắn tay đầy năng động thích hợp cho các buổi dạo phố của bạn.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu cotton pha</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Áo cổ tàu&gt;</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Tay ngắn</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Mặt trước may hàng nút gài</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Kẻ sọc caro trang trí</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Không may lót</span></p>', 'Sơ Mi Nam Tay Ngắn', '', '', '', 'sơ-mi-nam-tay-ngắn-1'),
(32, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Đơn giản đầy nam tính với áo sơ mi trơn thiết kế bởi TopMan. Áo có màu sắc trơn, thiết kế cổ điển dễ dàng phối cùng các kiểu dáng quần khác nhau.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu cotton pha</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Áo cổ lật</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Tay dài</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Mặt trước may hàng nút gài</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Không may lót</span></p>', 'Sơ Mi Nam Tay Dài', '', '', '', 'sơ-mi-nam-tay-dài'),
(33, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu Denim 100% Cotton</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Cổ lật, dài tay</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Hàng khuy cài chạy dọc thân trước</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Hai túi ngực</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Phối chỉ nổi toàn thân áo</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Dáng ôm nhẹ</span></p>', 'Áo Sơmi Denim Phối Chỉ Nổi', '', '', '', 'áo-sơmi-denim-phối-chỉ-nổi'),
(34, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Thêm vào bộ sưu tập công sở của bạn áo sơ mi cổ lật dài tay đến từ thương hiệu Zara. với thiết kế đẹp mắt. Áo có chất liệu mềm, kiểu dáng đơn giản, sang trọng, phần cổ phối màu nổi bật phá cách.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu cotton</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Áo cổ lật</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Tay dài</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Dưới cổ may hàng nút gài</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Họa tiết kẻ sọc đẹp mắt</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Không may lót</span></p>', 'Áo Sơ Mi Nam', '', '', '', 'áo-sơ-mi-nam'),
(35, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Áo sơ mi từ thương hiệu Zara, với vẻ cổ điển và năng động, giúp bạn nam tự tin thể hiện phong cách. Chất liệu cotton mềm mại, làm tăng thêm phần thoải mái.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu cotton</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Cổ lật</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Tay dài</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Thân trước phối nút cài</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Dáng suông</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Vạt bầu</span></p>', 'Áo Sơ Mi Tay Dài', '', '', '', 'áo-sơ-mi-tay-dài');
INSERT INTO `ecom_virtuemart_products_vi_vn` (`virtuemart_product_id`, `product_s_desc`, `product_desc`, `product_name`, `metadesc`, `metakey`, `customtitle`, `slug`) VALUES
(36, '', '<p>TopMan <span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">gợi ý đến các quý ông áo sơ mi basic sang trọng và thanh lịch. Áo có thiết kế đơn giản, màu sắc trơn sáng là lựa chọn hoàn hảo để khởi đầu tuần làm việc đầy hứng khởi.</span></p>\r\n<p><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu cotton</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Áo cổ lật</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Tay dài</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Dưới cổ may hàng nút gài</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Không may lót</span></p>', 'Áo Sơ Mi Nam Tay Dài Trơn', '', '', '', 'áo-sơ-mi-nam-tay-dài-trơn'),
(37, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">TopMan gợi ý đến các quý ông áo sơ mi basic sang trọng và thanh lịch. Áo có thiết kế đơn giản, màu sắc trơn sáng là lựa chọn hoàn hảo để khởi đầu tuần làm việc đầy hứng khởi.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu cotton</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Áo cổ lật</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Tay dài</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Dưới cổ may hàng nút gài</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Không may lót</span></p>', 'Áo Sơ Mi Nam Xám Trơn', '', '', '', 'áo-sơ-mi-nam-xám-trơn'),
(38, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Áo Sơ Mi Nam chất vải jean cao cấp , mịn, không nhăn , thoải mái và rất thoáng mát. Form áo ôm body. Mẫu sơ mi trẻ trơn trẻ trung, đơn giản dễ phối đồ. Phù hợp cho các bạn nam mặc đi chơi hay đi làm đều đẹp và lịch sự.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Áo sơ mi jean có thể nói là trang phục thời trang đang được nhiều chàng trai ưa thích hiện nay. Nó mang đến làn gió mới cho thời trang của nam giới. Nếu phong cách của bạn là mạnh mẽ, cá tính, mang chút phủi bụi và phong trần thì đừng chần chừ khi chọn chất liệu jean hoặc denim. Áo sơ mi jean hiện nay có rất nhiều mẫu, từ đơn giản đến kiểu cách, phù hợp với mọi lứa tuổi và tính cách khác nhau của từng người.</span></p>', 'Áo Sơ Mi Jean Thời Trang', '', '', '', 'áo-sơ-mi-jean-thời-trang'),
(39, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Khẳng định phong cách bản thân với áo sơ mi in họa tiết đến từ TopMan. với kiểu dáng đẹp mắt. Áo có họa tiết nổi bật lạ mắt, tay áo ngắn là gợi ý thú vị cho bạn dạo phố hay các chuyến dã ngoại.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu cotton pha</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Áo cổ lật</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Tay ngắn</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- In họa tiết nổi bật</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- May hàng nút gài</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Xẻ vạt ngắn 2 bên hông</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Không may lót</span></p>', 'Áo Sơ Mi Nam', '', '', '', 'áo-sơ-mi-nam-1'),
(40, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Trông thời thượng và đầy lôi cuốn với áo sơ mi dài tay đến từ thương hiệu Dunhill. Áo có màu sắc trơn tối nổi bật, thiết kế cổ lật dài tay với dáng áo ôm là gợi ý không thể hoàn hảo hơn để thể hiện nét gợi cảm của quý ông</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu cotton</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Áo cổ lật</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Tay dài</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- May hàng nút gài mặt trước áo</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- 2 bên ngực áo phối túi</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Không may lót</span></p>', 'Áo Sơ Mi Nam', '', '', '', 'áo-sơ-mi-nam-2'),
(41, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Thể hiện nét trẻ trung của bạn với áo sơ mi kẻ sọc caro đến từ Mango. Áo có màu sắc đẹp mắt, kiểu dáng ngắn tay đầy năng động thích hợp cho các buổi dạo phố của bạn.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu cotton pha</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Áo cổ tàu&gt;</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Tay ngắn</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Mặt trước may hàng nút gài</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Kẻ sọc caro trang trí</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Không may lót</span></p>', 'Sơ Mi Nam Tay Ngắn', '', '', '', 'sơ-mi-nam-tay-ngắn-2'),
(42, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Áo Sơ Mi Nam chất vải Jean mềm cao cấp , mịn, không nhăn , thoải mái và rất thoáng mát. Form áo ôm body. Mẫu sơ mi trẻ trơn trẻ trung, đơn giản dễ phối đồ. Phù hợp cho các bạn nam mặc đi chơi hay đi làm đều đẹp và lịch sự.</span></p>', 'Áo Sơmi Nam Jean Xanh Đậm', '', '', '', 'áo-sơmi-nam-jean-xanh-đậm'),
(43, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Áo phối lưới túi chìm của thương hiệu H&amp;M có thiết kế tối giản, thanh lịch với điểm nhấn phần thân áo phối lưới độc đáo, cho các chàng trai vẻ ngoài lịch lãm và nổi bật ở bất kì sự kiện nào</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu: polyester pha</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Cổ lật</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Tay ngắn</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Thân áo phối lưới, có hai túi may chìm trước ngực</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Hàng nút cài dọc thân áo</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Không có lót trong</span></p>', 'Áo Phối Lưới Túi Chìm', '', '', '', 'áo-phối-lưới-túi-chìm'),
(44, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Áo sơ mi nam cổ trụ chất liệu oxford cao cấp, ít nhăn mang đến phong thái lịch lãm và sang trọng cho người mặc.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Áo sơ mi kiểu dáng tay dài được may theo form dáng chuẩn cho nam giới thêm tự tin.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Thiết kế cổ trụ hợp thời trang.</span></p>', 'Áo Sơ Mi Cổ Trụ Nam Trắng', '', '', '', 'áo-sơ-micổ-trụ-nam-trắng'),
(45, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Áo sơ mi của thương hiệu Dunhill với điểm nhấn là cầu vai may vải khác màu và hình vẽ ngộ nghĩnh ở ngực áo. Phù hợp cho phái mạnh trong những ngày cuối tuần thoải mái. </span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu cotton pha </span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Cổ lật </span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Tay dài </span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Hàng nút cài phía trước </span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Thiết kế 1 túi trước ngực</span></p>', 'Áo Sơ Mi Denim Tay Dài May Đắp Cầu Vai', '', '', '', 'áo-sơ-mi-denim-tay-dài-may-đắp-cầu-vai'),
(46, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Áo tay khoá trượt của thương hiệu Mango có thiết kế tối giản, thanh lịch với điểm nhấn là khoá trượt trang trí ở tay, cho các chàng trai vẻ ngoài lịch lãm và nổi bật ở bất kì sự kiện nào</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu: polyester pha</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Cổ lật</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Tay dài, có khoá trượt trang trí dọc theo tay áo</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Một túi trước ngực, kẻ sọc ngang trang trí</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Hàng nút cài dọc thân áo</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Không có lót trong</span></p>', 'Áo Tay Khoá Trượt', '', '', '', 'áo-tay-khoá-trượt'),
(47, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Tạo cảm giác vui vẻ và thích thú khi khoác lên mình chiếc áo sơ mi tay ngắn đến từ thương hiệu Hermes. Thiết kế in họa tiết chú khỉ ngộ nghĩnh, kiểu dáng áo đơn giản mang đến phong cách riêng cho phái mạnh.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu cotton pha</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Cổ lật</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Tay ngắn</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Dáng suông</span></p>', 'Áo Sơ Mi C-Origami Monkey', '', '', '', 'áo-sơ-mi-c-origami-monkey'),
(48, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Với thiết kế kiểu dáng đơn giản và đường may tinh tế, áo sơ mi của thương hiệu Thời Trang Zara là gợi ý tuyệt vời giúp khẳng định phong cách nam tính và lịch lãm của bạn. Thiết kế áo phù hợp cho phong cách dạo phố nhẹ nhàng lẫn công sở trang trọng.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu: 100% cotton, chống nhăn, thấm mồ hôi</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Cổ bẻ</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Tay dài, có nút cài ở gấu tay</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Hàng nút cài dọc thân trước</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Vạt bầu</span></p>', 'Áo Sơ Mi Tay Dài', '', '', '', 'áo-sơ-mi-tay-dài-1'),
(49, '', '<div id="productDesc" class="box mtl fss clearfix" style="box-sizing: border-box; margin-top: 20px; font-size: 11px; position: relative; zoom: 1; height: 194px; overflow: hidden; z-index: 1; color: #000000; font-family: Arial, sans-serif; letter-spacing: 0.6px;">Áo sơ mi dài tay thiết kế bởi H&amp;M Basic là gợi ý hoàn hảo để khởi đầu ngày làm việc của bạn. Áo có thiết kế cổ lật dài tay cổ điển, màu sắc trơn sáng dễ dàng phối cùng các kiểu quần khác nhau.<br /><br />- Chất liệu cotton<br />- Áo cổ lật, may hàng nút gài<br />- Tay dài<br />- Phối túi may nút gài trước ngực<br />- Không may lót</div>\r\n<p> </p>', 'Áo Sơ Mi Dài Tay', '', '', '', 'áo-sơ-mi-dài-tay'),
(50, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Mọi chàng trai đều yêu thích phong cách thanh lịch và hiện đại của những chiếc áo sơ mi. TB X132 của H&amp;M đem đến bạn gợi ý mới, áo thêu chi tiết hoa văn độc đáo tạo điểm thu hút ấn tượng.</span></p>', 'Áo Sơ Mi Tay Dài Thêu Họa Tiết', '', '', '', 'áo-sơ-mi-tay-dài-thêu-họa-tiết'),
(51, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Áo sơ mi nam chất liệu oxford , ít nhăn mang đến phong thái lịch lãm và sang trọng cho người mặc.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Áo sơ mi kiểu dáng tay dài được may từ chất liệu cao cấp. Thiết kế kiểu áo sơ mi đơn giản nhưng với form dáng chuẩn cho nam giới thêm tự tin.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Thể hiện được phong cách lịch lãm, phong độ của phái mạnh.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu cao cấp với ưu điểm mềm mại, thông thoáng. </span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Sản phẩm thích hợp công sở, dạo chơi ,..</span></p>', 'Áo Sơmi Nam Oxford', '', '', '', 'áo-sơmi-nam-oxford'),
(52, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Khoe nét lịch lãm và thời thượng cùng áo sơ mi in họa tiết nhiều màu đặc sắc của thương hiệu TopMan. Thiết kế bật lên vẻ ngoài trẻ trung và hiện đại cho bạn.</span></p>', 'Áo Sơ Mi Tay Ngắn In Họa Tiết', '', '', '', 'áo-sơ-mi-tay-ngắn-in-họa-tiết'),
(53, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Thiết kế colorblock phổ biển và được ưa chuộng đến cùng vời chiếc áo sơ mi lịch lãm từ thương hiệu Zara, một trang phục tuyệt vời trong tủ quần áo của bạn. Kiểu dáng suông rộng, giúp bạn chào đón một ngày mới thật thoải mái.</span></p>', 'Áo Sơ Mi Contrast Colour', '', '', '', 'áo-sơ-mi-contrast-colour'),
(54, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Khoe nét lịch lãm và thời thượng cùng áo sơ mi in hoa văn đặc sắc của thương hiệu Dunhill. Thiết kế bật lên vẻ ngoài trẻ trung và hiện đại cho bạn.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu cotton pha</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Cổ lật</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Tay ngắn</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- May hàng nút cài phía trước</span></p>', 'Áo Sơ Mi Tay Ngắn Phối In Hoa Văn', '', '', '', 'áo-sơ-mi-tay-ngắn-phối-in-hoa-văn'),
(55, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Luôn cảm thấy ấm áp nhưng vẫn tự tin khoe nét cá tính trẻ trung và hiện đại cho bạn với áo khoác của thương hiệu Zara.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu dạ nỉ</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Cổ lật</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Thiết kế 2 túi bên hông</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Tay dài</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- May hàng nút phía trước</span></p>', 'Áo Khoác Mùa Đông', '', '', '', 'áo-khoác-mùa-đông'),
(56, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Áo thun polo của thương hiệu Thời Trang Mango mang đến nét trẻ trung và năng động cho bạn nam yêu thích phong cách hiện đại. Thiết kế kiểu dáng đơn giản tôn lên cá tính mạnh mẽ cho bạn.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu: Cotton, co giãn bốn chiều</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Cổ bẻ , có 2 nút cài nửa thân trước</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Tay ngắn bo chun</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Phối màu sọc ngang đơn giản trẻ trung</span></p>', 'Áo Polo Sọc Ngang', '', '', '', 'áo-polo-sọc-ngang'),
(57, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu 100% thun cotton thoáng mát </span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Form áo thun basic đơn giản dễ mặc </span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Màu sắc đa dạng và phong phú lựa chọn</span></p>', 'Áo Thun DàI Tay Thu Đông Tokuni', '', '', '', 'áo-thun-dài-tay-thu-đông-tokuni'),
(58, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu 100% Cotton</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Cạp rời, eo có đỉa</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Khuy cài, khoá kéo</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Thiết kế 4 túi cổ điển</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Dáng đứng lịch sự</span></p>', 'Quần Kaki Đơn Giản Lịch Sự', '', '', '', 'quần-kaki-đơn-giản-lịch-sự'),
(59, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Trẻ trung hơn với quần jeans skinny thiết kế bởi thương hiệu Mango. cho cuối tuần thêm thư giãn. Quần có chất liệu mềm, kiểu dáng ôm chân để bạn luôn thấy thoải mái trong khi vẫn thật thời thượng, cá tính.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu cotton pha</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Quần lưng vừa</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Mặt trước may khóa kéo, phối nút gài</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- May túi 2 bên</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Mặt sau may 2 túi</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Không may lót</span></p>', 'Quần Jean Nam', '', '', '', 'quần-jean-nam'),
(60, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Khởi đầu ngày làm việc đầy cảm hứng với quần tây nam thiết kế bởi thương hiệu J&amp;Co. Quần có màu sắc trơn dễ phối, thiết kế cổ điển tạo cảm giác nam tính đầy quyến rũ cho phái mạnh.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu cotton</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Mặt trước quần may khóa kéo, phối nút gài</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- May túi 2 bên hông</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Mặt sau may 1 túi mổ</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Không may lót</span></p>', 'Quần Kiểu Nam', '', '', '', 'quần-kiểu-nam'),
(61, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Khởi đầu ngày làm việc đầy cảm hứng với quần tây nam thiết kế bởi thương hiệu J&amp;Co. Quần có màu sắc trơn dễ phối, thiết kế cổ điển tạo cảm giác nam tính đầy quyến rũ cho phái mạnh.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu cotton</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Mặt trước quần may khóa kéo, phối nút gài</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- May túi 2 bên hông</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Mặt sau may 1 túi mổ</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Không may lót</span></p>', 'Quần Nhanh Khô Alayna', '', '', '', 'quần-nhanh-khô-alayna'),
(62, '', '<p>Khởi đầu ngày làm việc đầy cảm hứng với quần tây nam thiết kế bởi thương hiệu J&amp;Co. Quần có màu sắc trơn dễ phối, thiết kế cổ điển tạo cảm giác nam tính đầy quyến rũ cho phái mạnh.</p>\r\n<p> </p>\r\n<p>- Chất liệu cotton</p>\r\n<p>- Mặt trước quần may khóa kéo, phối nút gài</p>\r\n<p>- May túi 2 bên hông</p>\r\n<p>- Mặt sau may 1 túi mổ</p>\r\n<p>- Không may lót</p>', 'Quần Dài Jeans Nam', '', '', '', 'quần-dài-jeans-nam'),
(63, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Quần lửng thiết kế bởi thương hiệu Zara sẽ là gợi ý hoàn hảo để khởi động ngày cuối tuần của bạn. Quần có kiểu dáng đơn giản, thiết kế trẻ trung đầy năng động.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu cotton pha</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Mặt trước may khóa kéo, phối nút gài</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Thiết kế 5 túi cổ điển</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Không may lót</span></p>', 'Quần Short Jeans Nam', '', '', '', 'quần-short-jeans-nam'),
(64, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu Kaki thô</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Cạp rời, eo có đỉa</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Khuy cài, khoá kéo</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Thiết kế 4 túi cổ điển</span></p>', 'Quần Kaki Côn Đứng Trẻ Trung', '', '', '', 'quần-kaki-côn-đứng-trẻ-trung'),
(65, '', '<p>Khởi đầu ngày làm việc đầy cảm hứng với quần kaki nam thiết kế bởi thương hiệu J&amp;Co. Quần có màu sắc trơn dễ phối, thiết kế cổ điển tạo cảm giác nam tính đầy quyến rũ cho phái mạnh.</p>\r\n<p> </p>\r\n<p>- Chất liệu cotton</p>\r\n<p>- Mặt trước quần may khóa kéo, phối nút gài</p>\r\n<p>- May túi 2 bên hông</p>\r\n<p>- Mặt sau may 1 túi mổ</p>\r\n<p>- Không may lót</p>', 'Quần Kaki Nam', '', '', '', 'quần-kaki-nam'),
(66, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Trẻ trung hơn với quần jeans skinny thiết kế bởi thương hiệu Hermes. cho cuối tuần thêm thư giãn. Quần có chất liệu mềm, kiểu dáng ôm chân để bạn luôn thấy thoải mái trong khi vẫn thật thời thượng, cá tính.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu cotton pha</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Quần lưng vừa</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Mặt trước may khóa kéo, phối nút gài</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- May túi 2 bên</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Mặt sau may 2 túi</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Không may lót</span></p>', 'Quần Jean Nam', '', '', '', 'quần-jean-nam-1'),
(67, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Trẻ trung hơn với quần jeans thiết kế bởi thương hiệu Thời trang Dunhill cho cuối tuần thêm thư giãn. Quần có chất liệu mềm, kiểu dáng ôm chân để bạn luôn thấy thoải mái trong khi vẫn thật thời thượng, cá tính.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu cotton pha</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Quần lưng vừa</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Mặt trước may khóa kéo, phối nút gài</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- May túi 2 bên</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Mặt sau may 2 túi</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Không may lót</span></p>', 'Quần Jean Thời Trang', '', '', '', 'quần-jean-thời-trang'),
(68, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Trẻ trung hơn với quần jeans thiết kế bởi thương hiệu Thời trang Dunhill cho cuối tuần thêm thư giãn. Quần có chất liệu mềm, kiểu dáng ôm chân để bạn luôn thấy thoải mái trong khi vẫn thật thời thượng, cá tính.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu cotton pha</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Quần lưng vừa</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Mặt trước may khóa kéo, phối nút gài</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- May túi 2 bên</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Mặt sau may 2 túi</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Không may lót</span></p>', 'Quần Jean Thời Trang', '', '', '', 'quần-jean-thời-trang-1'),
(69, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Thêm chút cổ điển với quần nam dài thiết kế bởi TopMan.. Quần có màu sắc trơn tối dễ phối, kiểu dáng suông đơn giản là gợi ý thú vị cho các chàng trai yêu thích sự đơn giản, tiện lợi.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu cotton pha</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Lưng vừa</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Mặt trước may khóa kéo, phối nút gài</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Xẻ túi 2 bên</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Mặt sau may túi, có nút gài</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Không may lót</span></p>', 'Quần Tây Nam', '', '', '', 'quần-tây-nam'),
(70, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Quần Vải ( Âu ) Cung Cấp Bởi Zara</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Thiết kế tinh tế trên từng sản phẩm, từ chất liệu đến form dáng, Quần Bernice khỏe khoắn và thời trang là style trong hè 2016. </span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu vải tuytxi len.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Dáng Slimfit ôm gọn.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- 02 túi trước, 02 túi sau</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Cạp rời cài 01 khuy.</span></p>', 'Quần Âu Bernice', '', '', '', 'quần-âu-bernice'),
(71, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Thay đổi phong cách công sở thường ngày của bạn với quần tây thiết kế bởi H&amp;M. thời thượng. Quần có chất liệu mềm, màu sắc trơn nhã nhặn, dễ phối, kiểu dáng quần thiết kế hiện đại, đẹp mắt.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu polyester pha</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Quần lưng vừa</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Mặt trước may khóa kéo, phối nút gài</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- May 2 túi 2 bên</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Mặt sau may 1 túi</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Không may lót</span></p>', 'Quần Nam', '', '', '', 'quần-nam');
INSERT INTO `ecom_virtuemart_products_vi_vn` (`virtuemart_product_id`, `product_s_desc`, `product_desc`, `product_name`, `metadesc`, `metakey`, `customtitle`, `slug`) VALUES
(72, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Trẻ trung hơn với quần jeans skinny thiết kế bởi thương hiệu Mango. cho cuối tuần thêm thư giãn. Quần có chất liệu mềm, kiểu dáng ôm chân để bạn luôn thấy thoải mái trong khi vẫn thật thời thượng, cá tính.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu cotton pha</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Quần lưng vừa</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Mặt trước may khóa kéo, phối nút gài</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- May túi 2 bên</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Mặt sau may 2 túi</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Không may lót</span></p>', 'Quần Jean Nam', '', '', '', 'quần-jean-nam-2'),
(73, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Trẻ trung hơn với quần jeans thiết kế bởi thương hiệu Thời trang Hermes cho cuối tuần thêm thư giãn. Quần có chất liệu mềm, kiểu dáng ôm chân để bạn luôn thấy thoải mái trong khi vẫn thật thời thượng, cá tính.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu cotton pha</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Quần lưng vừa</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Mặt trước may khóa kéo, phối nút gài</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- May túi 2 bên</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Mặt sau may 2 túi</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Không may lót</span></p>', 'Quần Jean Thời Trang', '', '', '', 'quần-jean-thời-trang-2'),
(74, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Quần Kaki Nam Chất liệu Kaki , Form Slim fit , không giãn. Chất vải đẹp, dài dặn.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Form Chuẩn , tông lên dáng người mặc.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Nhiều kích cỡ để lựa chon từ 50 đến 75kg</span></p>', 'Quần Kaki Slim Fit Nam Xanh Đen', '', '', '', 'quần-kaki-slim-fit-nam-xanh-đen'),
(75, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Quần Kaki là một trong những item thời trang nam có tuổi thọ lâu nhất trong tủ đồ thời trang từ xưa tới nay. Dù đã có rất nhiều mẫu quần với chất liệu đa dạng như bò, thô, da .. nhưng quần kaki vẫn là sự lựa chọn không thể thiếu đối với các chàng trai nơi công sở. Bởi vẻ đẹp trang nhã, lịch sự mà rất dễ mặc của chúng. Chất liệu mềm mại, phom quần xuất khẩu chuẩn dáng tôn lên nét trẻ trung cá tính.</span></p>', 'Quần Kaki Nam', '', '', '', 'quần-kaki-nam-1'),
(76, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Không có gì thoải mái và tiện dụng hơn một chiếc quần shorts với thiết kế nhiều túi từ thương hiệu H&amp;M. Chất liệu cotton pha mềm mại, phối viền màu độc đáo.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu cotton pha</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Phần eo phối móc gài và khóa kéo</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Thiết kế 4 túi</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Dáng ôm</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Không lót trong</span></p>', 'Quần Shorts Phối Viền', '', '', '', 'quần-shorts-phối-viền'),
(77, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Mùa hè oi bức, Quần Short Nam chất liệu Kaki giúp người mặc mát mẻ, thoải mái. Tuy đơn giản nhưng mang tới sự thoải máy năng động.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Quần short nam Kaki là một item không thể thiếu trong tủ đồ bạn trai bởi tính đa năng và thoải mái mà nó đem lại cho người mặc.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;"> - Quần Short kết hơp đơn giản với áo thun là bạn đã có thể thoải mái đi chơi hay du lịch.</span></p>', 'Quần Short Nam', '', '', '', 'quần-short-nam'),
(78, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Mùa hè oi bức, Quần Short Nam chất liệu Kaki giúp người mặc mát mẻ, thoải mái. Tuy đơn giản nhưng mang tới sự thoải máy năng động.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Quần short nam Kaki là một item không thể thiếu trong tủ đồ bạn trai bởi tính đa năng và thoải mái mà nó đem lại cho người mặc.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;"> - Quần Short kết hơp đơn giản với áo thun là bạn đã có thể thoải mái đi chơi hay du lịch.</span></p>', 'Quần Short Nam', '', '', '', 'quần-short-nam-1'),
(79, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Mùa hè oi bức, Quần Short Nam chất liệu Kaki giúp người mặc mát mẻ, thoải mái. Tuy đơn giản nhưng mang tới sự thoải máy năng động.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Quần short nam Kaki là một item không thể thiếu trong tủ đồ bạn trai bởi tính đa năng và thoải mái mà nó đem lại cho người mặc.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;"> - Quần Short kết hơp đơn giản với áo thun là bạn đã có thể thoải mái đi chơi hay du lịch.</span></p>', 'Quần Short Nam', '', '', '', 'quần-short-nam-2'),
(80, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Mùa hè oi bức, Quần Short Nam chất liệu Kaki giúp người mặc mát mẻ, thoải mái. Tuy đơn giản nhưng mang tới sự thoải máy năng động.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Quần short nam Kaki là một item không thể thiếu trong tủ đồ bạn trai bởi tính đa năng và thoải mái mà nó đem lại cho người mặc.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;"> - Quần Short kết hơp đơn giản với áo thun là bạn đã có thể thoải mái đi chơi hay du lịch.</span></p>', 'Quần Short Nam', '', '', '', 'quần-short-nam-3'),
(81, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Trông thật trẻ trung, khỏe khoắn cùng quần short nam của thương hiệu The Blues. Quần được làm bằng chất liệu jeans cứng cáp, kiểu dáng đơn giản mang lại sự năng động cho các chàng trai.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu jeans</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Quần short</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Lưng vừa</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Thiết kế nút cài và khóa kéo phía trước</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Hai túi hai bên</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Hai túi phía sau, một bên túi có túi nhỏ phía trong</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- May chỉ nổi quanh quần</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Không có lót</span></p>', 'Quần Short Nam', '', '', '', 'quần-short-nam-4'),
(82, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Thời thượng, phong cách với quần Chinos xắn gấu đến từ thương hiệu MINT Basic. Quần có màu sắc trơn, kiểu dáng đơn giản dễ dàng cho các chàng trai phối với các kiểu dáng áo khác nhau.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu cotton pha</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Quần lưng cao</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Mặt trước may khóa kéo, phối khóa gài</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Hai bên may 2 túi</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">-Mặt sau may 2 túi</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Không may lót trong</span></p>', 'Quần Chinos', '', '', '', 'quần-chinos'),
(83, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Lắc tay cặp Real Love LTC02 của T-Store là sản phẩm được làm bằng chất liệu inox không rỉ, không phai màu được thiết kế rất tinh xảo và độc đáo.  </span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;"> Lắc tay của nữ và nam có khắc chìm chữ Real Love, khi ghép 2 lắc tay vào gần nhau sẽ tạo ra 1 trái tim hoàn chỉnh.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">  + CHIỀU DÀI LẮC TAY:</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- LẮC TAY NỮ: DÀI 21.5 CM</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- LẮC TAY NAM: DÀI 24 CM</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;"> </span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu chính: INOX</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Màu: BẠC PHỐI ĐEN (của nam), BẠC PHỐI ĐỒNG (của nữ)</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Thiết kế mang phong cách Hàn Quốc</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Mẫu mã thịnh hành theo trào lưu</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu trang sức cao cấp, tôn vinh lên vẻ đẹp của bạn</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Kiểu dáng tinh tế, dễ dàng phối hợp với nhiều trang phục</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Quà tặng ý nghĩa và độc đáo dành cho các đôi tình nhân.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Real Love: "Tình yêu thật lòng".</span></p>', 'Lắc Tay Cặp Real Love LTC02', '', '', '', 'lắc-tay-cặp-real-love-ltc02'),
(84, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Mắt kính: Exfash</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Thương hiệu: korea</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Phong cách thiết kế thời trang thời thượng</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu: kim loại cao cấp</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Tròng làm chất liệu Polycarbonat cao cấp, chống UV 100%</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Sản phẩm bảo hành 12 tháng trên địa chỉ giấy bảo hành</span></p>', 'Mắt Kính Exfash', '', '', '', 'mắt-kính-exfash'),
(85, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Mũ lưỡi trai của thương hiệu Mango với thiết kế viền sọc nổi bật mang đến phong cách trẻ trung và năng động cho bạn nam. Thiết kế phù hợp với phong cách thường ngày của bạn.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu PU</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Thiết kế phối lưới thông thoáng</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Phía sau có thể điều chỉnh độ rộng nón</span></p>', 'Mũ Lưỡi Trai Nylon', '', '', '', 'mũ-lưỡi-trai-nylon'),
(86, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Trang bị cho mình chiếc nón lưỡi trai thời trang đến từ thương hiệu H&amp;M mỗi khi ra ngoài. Nón ngoài chức năng chống nắng hiệu quả và phối các lưới 2 bên thông thoáng, tạo cảm giác mát mẻ khi mang, ngoài ra kiểu dáng nón phong cách làm toát lên nét trẻ trung và năng động cho chàng trai hiện đại.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu da tổng hợp</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Đỉnh phẳng</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- In 3 đường sọc màu dọc nón</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Khóa gài mặt sau giúp điều chỉnh độ rộng</span></p>', 'Nón Lưỡi Trai Metallic PU 6', '', '', '', 'nón-lưỡi-trai-metallic-pu-6'),
(87, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Các chàng trai hoàn toàn có thể tạo ấn tượng với những món phụ kiện nhỏ nhất. Vòng tay kim loại quấn vải của thương hiệu 24:01 sẽ mang đến phong cách cá tính và trẻ trung cho bạn.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu kim loại, vải</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Khóa gài</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Có thể điều chỉnh độ dài</span></p>', 'Vòng Tay Quấn Vải', '', '', '', 'vòng-tay-quấn-vải'),
(88, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Combo 05 vòng tay từ thương hiệu 24:01 mang đến sự lựa chọn phong phú cho ngày mới. Thiết kế phối đính hạt và kiểu dáng đan bện, khẳng định gu thẩm mũ tinh tế.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu PU, hạt</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Vòng phối thun co giãn hoặc khóa móc gài</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Có thể điều chỉnh độ rộng</span></p>', 'Combo 05 Vòng Tay Bện Và Đính Hạt', '', '', '', 'combo-05-vòng-tay-bện-và-đính-hạt'),
(89, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Các chàng trai hoàn toàn có thể tạo ấn tượng với những món phụ kiện nhỏ nhất. Vòng tay đinh tán của thương hiệu 24:01 sẽ mang đến phong cách cá tính và trẻ trung cho bạn.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu kim loại, vải</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Khóa dây rút</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Có thể điều chỉnh độ dài</span></p>', 'Vòng Tay Đinh Tán', '', '', '', 'vòng-tay-đinh-tán'),
(90, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Một phụ kiện không thể thiếu cho mùa hè sôi động sắp đến, nón lưỡi trai nam của thương hiệu H&amp;M có viền tương phản tạo điểm nhấn và lưới thoáng mát phía sau, bật lên phong cách nam tính, trẻ trung, đậm chất thể thao</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu polyurethane</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Kiểu dáng lưỡi trai</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Khóa gài, có thể điều chỉnh độ rộng nón</span></p>', 'Nón Lưỡi Trai Viền Tương Phản', '', '', '', 'nón-lưỡi-trai-viền-tương-phản'),
(91, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;"> THÔNG TIN CHI TIẾT:</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Cung cấp bởi:Đồ Da Thành Long</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Chất liệu: Da.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Bảo hành: 1 đổi 1 trong vòng 1 tháng theo hóa đơn mua hàng..</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Thắt lưng nam da nam cao cấp có độ bóng mịn và bền của sản phẩm kết hợp mặt thắt lưng được thiết kế khác biệt  tạo phong cách nam tính mạnh mẽ độc đáo.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Thắt lưng da nam cao cấp với màu sang trọng, cho bạn một sản phẩm đẹp về hình thức, bền về chất lượng.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Với mẫu mã phong phú và đa dạng đem đến sự hài lòng của bạn- Điều này rất quan trọng nó đem lại nhiều MAY MẮN</span></p>', 'Thắt Lưng Da Nam Cao Cấp', '', '', '', 'thắt-lưng-da-nam-cao-cấp'),
(92, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Chất liệu cao cấp Poly Spandex</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Thấm hút tốt, thoáng mát, nhanh khô, không bị hôi.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Co giản tốt, màu sắc đa dạng và đầy cá tính.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Siêu nhẹ, không bám bẩn, dể dàng sử dụng</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Sử dụng làm khẩu trang, khăn quàng cổ, khăn cột tóc, khăn trùm đầu đội nón moto.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">An toàn cho người sử dụng</span></p>', 'Siêu Khăn Ống Đa Năng', '', '', '', 'siêu-khăn-ống-đa-năng'),
(93, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Thêm phần cuốn hút với mắt kính nữ đến từ thương hiệu Polarsolar. Bảo vệ tối đa cho đôi mắt khỏi khói bụi và tia UVA, UVB</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">-Thiết kế thời trang hợp xu hướng không bao giờ lo lỗi thời</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">-Tròng kính: polycarbonat</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">-Chất liệu gọng: plastic+titanium</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Bảo Hành</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">-Thời gian bảo hành:12 tháng</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">-Loại hình bảo hành Bằng Phiếu bảo hành và Hóa đơn</span></p>', 'Kính Mát Nam Polarsolar', '', '', '', 'kính-mát-nam-polarsolar'),
(94, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Mũ Phối Màu thương hiệu Madam Dzi thiết kế hiện đại sẽ mang đến điểm nhấn hoàn toàn khác biệt cho vẻ ngoài của bạn thêm ấn tượng</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu vải cotton </span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Có khóa trượt để điều chỉnh độ rộng nón </span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Đục lỗ tròn trang trí quanh nón</span></p>', 'Mũ Phối Màu NY', '', '', '', 'mũ-phối-màu-ny'),
(95, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Trở nên sành điệu hơn với kính mát đến từ thương hiệu Madam Dzi. Kiểu dáng kính phi công kinh điển cùng tròng kính tráng gương sẽ mang đến cho các chàng vẻ ngoài thời thượng.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Gọng kính bằng kim loại</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Tròng kính màu xanh dương</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Kiểu dáng kính phi công</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Đệm mũi rời bằng silicon</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Khung kính nối đôi</span></p>', 'Kính Phi Công Phản Quang', '', '', '', 'kính-phi-công-phản-quang'),
(96, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Chất liệu : Da thật </span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Màu : Đen</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Kích thước :  </span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Thắt lưng bản rộng 4cm </span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Dây dài 105-130cm </span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Size 42-52 </span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Xuất xứ : Việt Nam </span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Bảo hành : 6 tháng </span></p>', 'Combo Thắt Lưng Mặt Đồng Và Ví Da Nam Cao Cấp', '', '', '', 'combo-thắt-lưng-mặt-đồng-và-ví-da-nam-cao-cấp'),
(97, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Khăn len đan thủ công 100%</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Chất liệu: Len Lông cừu (Nhập khẩu)</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Qui cách: Khăn dài - Có tua rua</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Đặc tính: Mền, mịn, không gây kích ứng da</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Kích thước: Ngang 28cm, dài khăn: 200cm</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Trọng lượng: 500g</span></p>', 'Khăn Đan Tay Xuất Khẩu', '', '', '', 'khăn-đan-tay-xuất-khẩu'),
(98, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Trông thu hút hơn với kính mát thời trang đến từ thương hiệu H&amp;M. Kính có màu sắc trơn, kiểu dáng thời thượng sẽ là gợi ý hoàn hảo để dạo phố cho bạn.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu kim loại, nhựa</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Khung kính nối đôi</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Đệm mũi silicon</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Tròng kính không đổi màu</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Gọng kính cách điệu</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Họa tiết báo đầu gọng kính</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Đi kèm hộp đựng kính</span></p>', 'Kính Phi Công Gọng Chú Báo', '', '', '', 'kính-phi-công-gọng-chú-báo'),
(99, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Trông sành điệu hơn với kính mát đến từ thương hiệu TopMan. Kính với màu sắc đẹp mắt, mạ vàng sang trọng thể hiện đẳng cấp phái mạnh.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu nhựa, kim loại</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Khung kính cong</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Gọng kính tròn</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Đệm mũi silicon</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Tròng kính không đổi màu</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Đi kèm hộp đựng kính</span></p>', 'Kính Tròn Phản Quang Phân Cực', '', '', '', 'kính-tròn-phản-quang-phân-cực'),
(100, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Sở hữu một chiếc thắt lưng phù hợp cũng góp phần giúp cho các quý ông xây dựng hình ảnh lịch lãm trong mắt người đối diện. Mẫu thắt lưng da của nhãn hiệu Hermes là một gợi ý lý tưởng dành cho cánh mày râu. Bên cạnh chất liệu da cao cấp, chiếc thắt lưng này còn được thiết kế với kiểu dáng sang trọng và màu sắc tinh tế. Chính vì vậy, bạn có thể dễ dàng sử dụng để tạo điểm nhấn cho trang phục hàng ngày khi đi làm, đi chơi hoặc tham dự các cuộc hội họp và gặp gỡ bạn bè.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">-Chất liệu da thật tự nhiên 100%</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">-Thiết kế tinh tế sang trọng lịch lãm .</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">-Dễ dàng sử dụng và bảo quan , độ bền cao.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">-Dễ dàng phối hợp với các loại trang phục khác nhau.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">-Sản xuất tại Việt Nam và bảo hành 12 tháng .</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Đổi trả dễ dàng nếu quý khách không cảm thấy ưng ý và hài lòng.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Được phân phối và bảo hành 12 tháng bằng hóa đơn bởi Công ty TNHH Everest , doanh nghiệp đã tạo được lòng tin của quý khách gần xa trong thời gian qua ! Xin cám ơn.</span></p>', 'Thắt Lưng Nam Da Cao Cấp Lịch Lãm Ev34', '', '', '', 'thắt-lưng-nam-da-cao-cấp-lịch-lãm-ev34'),
(101, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu: Da thật 100%.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Sản xuất: Hermes</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Bảo hành: 2 năm ( kèm thẻ Bảo chính hãng).</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Bề mặt dây nịt, bề mặt da không bị rạn nứt hoặc bị gãy theo thời gian.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Thoải mái điều chỉnh kích cỡ thắt lưng theo số đo vòng 2.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Kiểu dáng sang trọng, màu sắc tinh tế, lịch lãm để bạn thoải mái lựa chọn.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Sản phẩm được làm bằng chất liệu da bò cao cấp tạo kiểu dáng lạ mắt, sang trọng.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Sản phẩm dễ dàng phối với quần jean, quần kaiki... Mang lại vẻ thanh lịch, hiện đại và trẻ trung cho bạn.</span></p>', 'Thắt Lưng Nam Da Bò Vân Cá Sấu Màu Nâu Bò', '', '', '', 'thắt-lưng-nam-da-bò-vân-cá-sấu-màu-nâu-bò'),
(102, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Nón Cao Bồi Phong Cách Màu Nâu Cung Cấp Bởi TopMan.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Chất liệu Nỉ được đúc tinh tế sẽ Bạn trông thật phong cách.</span></p>', 'Nón Cao Bồi Phong Cách Cung Cấp Bởi Julie Caps', '', '', '', 'nón-cao-bồi-phong-cách-cung-cấp-bởi-julie-caps');
INSERT INTO `ecom_virtuemart_products_vi_vn` (`virtuemart_product_id`, `product_s_desc`, `product_desc`, `product_name`, `metadesc`, `metakey`, `customtitle`, `slug`) VALUES
(103, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Thiết kế độc đáo của cặp nhẫn này sẽ khiến 2 bạn nổi bật hơn trong đám đông với phong cách cá tính của mình đó, cũng như không phải lo lắng về chất lượng của sản phẩm vì nhẫn cặp N231 của winwinshop88 được làm bằng những chất liệu phù hợp và tốt nhất, đảm bảo các tiêu chuẩn thiết yếu của một dòng sản phẩm nhẫn cặp cao cấp.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Điểm độc đáo của cặp nhẫn này là dòng chữ "i need him like i need the air to breathe" được thiết kế chữ chìm 1 cách khéo léo và tỉ mỉ, đặc biệt chính giữa của nhẫn được đính 1 viên đá lấp lánh nữa đấy, viên đá sẽ làm cho bàn tay của bạn trở nên lung linh hơn. Cặp nhẫn này hết sức lãng mạn và ngọt ngào phải không? Và biết đâu cặp nhẫn này sẽ giúp hai trở nên vui tươi và hạnh phúc hơn thì sao. </span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu chính: INOX</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Màu: ĐEN, ĐỒNG</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Size nhẫn: 4, 5, 6, 7, 8</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Thiết kế mang phong cách Hàn Quốc</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Mẫu mã thịnh hành theo trào lưu</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu trang sức cao cấp, tôn vinh lên vẻ đẹp của bạn</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Kiểu dáng tinh tế, dễ dàng phối hợp với nhiều trang phục</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Quà tặng ý nghĩa và độc đáo dành cho các đôi tình nhân</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- I need him like i need the air to breathe: "tôi cần anh ấy như tôi cần không khí để thở".</span></p>', 'Nhẫn Cặp Tình Nhân', '', '', '', 'nhẫn-cặp-tình-nhân'),
(104, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Thật tiện lợi khi bạn sở hữu 1 bộ đầy đủ những sản phẩm bảo vệ tốt nhất cho chiếc laptop, iPad, phụ kiện laptop - điện thoại của mình với 1 phong cách hiện đại từ thương hiệu Ronal. Bộ sản phẩm Ronal Combo 01 bao gồm một một túi chống sốc iPad, một túi phụ kiện cho laptop và điện thoại. Các sản phẩm trong bộ Ronal Combo 01 đều được làm từ chất liệu vải bền, dày nhập từ Hàn Quốc nên có độ bền cao, dày và cứng cáp. Ngăn bên trong được lót lớp mút chống sốc, bảo vệ laptop, iPad an toàn trước những va chạm ngoài ý muốn cùng nhiều ngăn phụ rộng rãi để bạn đựng vật dụng cá nhân khác. Với thiết kế trẻ trung, năng động, bộ sản phẩm Ronal Combo 01 là bạn đồng hành khiến bạn thêm tự tin mỗi khi đến trường, đi làm hay đi du lịch, dã ngoại.</span></p>', 'Combo Túi Chống Sốc Ipad Và Túi Phụ Kiện', '', '', '', 'combo-túi-chống-sốc-ipad-và-túi-phụ-kiện'),
(105, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Dây chuyền làm từ gỗ Cẩm Lai kết hợp đá topaz, bạc, với thiết kế độc đáo bởi sự tạo hình ngẫu nhiên loan lỗ trên gỗ, một phong cách hoàn toàn mới lạ.</span></p>', 'Dây Chuyền Phong Cách Làm Từ Gỗ Cẩm Lai Kết Hợp Đá Topaz', '', '', '', 'dây-chuyền-phong-cách-làm-từ-gỗ-cẩm-lai-kết-hợp-đá-topaz'),
(106, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Thể hiện phong cách trẻ trung và sành điệu cùng giày sneakers của thương hiệu Dunhill. Thiết kế phối màu nổi bật trên giày tạo điểm nhấn ấn tượng và mới lạ, bạn nên có cho tủ đổ của mình.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu vải, da tổng hợp</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Mũi tròn</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Thiết kế thắt dây</span></p>', 'Giày Sneakers Phối Màu', '', '', '', 'giày-sneakers-phối-màu'),
(107, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Thông tin sản phẩm giầy da bò Ý handmade mã G104:</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Được sản xuất tại Việt Nam theo dây chuyền công nghệ chuẩn Châu Âu, có cấu trúc Goodyear được làm bằng thủ công, phải trải qua 180 công đoạn khác nhau để làm nên một đôi giầy.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Điểm đặc biệt nhất để nhận biết một đôi giầy có cấu trúc Goodyear với các cấu trúc khác là ở phần đế giầy.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Đế giầy cao 4cm được làm hoàn toàn bằng da, chất tạo sự kết dính không phải bằng keo, mà tạo sự kết dính bằng chỉ.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chỉ khâu được làm bằng sợi cây gai dầu, hoặc sợi tơ lanh được bện và tẩm sáp có tính chất diệt khuẩn và dai. </span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Đế Goodyear đáp ứng hoàn hảo cả 3 tiêu chí: độ bền, khả năng chống thấm nước và sự êm ái khi sử dụng. Đây là loại đế giúp đôi giày của bạn có tuổi thọ tính bằng đơn vị thập kỷ. Outsole thay thế dễ dàng</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Giầy Brogue mã G104 là 1 phụ kiện không thể thiếu của 1 quý ông thượng lưu, thành đạt trong những bữa party hoặc những bữa tiệc cần sự lịch lãm và sang trọng</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu: Da Bò Italia cao cấp nhập khẩu đánh patina</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Có 2 màu đen và nâu patina, cỡ 39-43</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Sản xuất tại Việt Nam, phân phối độc quyền bới Vizi Shoes</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Bảo hành 12 tháng, bảo dưỡng trọn đời tại hệ thống các cửa hàng của Vizi Shoes</span></p>', 'Giày Oxford Da Bò Italia Cao Cấp', '', '', '', 'giày-oxford-da-bò-italia-cao-cấp'),
(108, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Giày lười của thương hiệu Mango mang đến nét trẻ trung và năng động cho các chàng trai hiện đại.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu da tổng hợp</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Mũi tròn</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- In tên thương hiệu trên lót đế giày</span></p>', 'Giày Lười Da Tổng Hợp', '', '', '', 'giày-lười-da-tổng-hợp'),
(109, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Giày sandals từ thương hiệu Zara được thiết kế cổ điển, phối quai chéo và khóa gài chắc chắn, đem đến sự thoải mái cho đôi chân bạn.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu da tổng hợp</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Quai hậu phối khóa gài kim loại</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Mặt lót in tên thương hiệu</span></p>', 'Giày Sandals Faux Leather', '', '', '', 'giày-sandals-faux-leather'),
(110, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Một phong cách đơn giản, thích hợp cho ngày cuối tuần với nhiều hoạt động - giày lười từ thương hiệu Dunhill. Đây chính là một phần không thể thiếu trong bộ sưu tập thời trang của bạn.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu da tổng hợp</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Mũi giày tròn</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Mặt lót in tên thương hiệu</span></p>', 'Giày Lười Giả Da', '', '', '', 'giày-lười-giả-da'),
(111, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Trải nghiệm ngày cuối tuần với nhiều hoạt động thú vị và thoải mái cùng goày sneakers từ thương hiệu Mango. Kiểu dáng đơn giản, phối hai tone màu thu hút, giúp bạn tự tin hơn.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu da tổng hợp và da lộn tổng hợp</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Mũi giày tròn</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Thiết kế thắt dây</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Mặt lót in tên thương hiệu</span></p>', 'Giày Sneakers Duo Tone', '', '', '', 'giày-sneakers-duo-tone'),
(112, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">-Kiểu dáng: giày lười công sở lịch lãm, đơn giản và tiện lợi. Với bề mặt nhẵn bóng có vân gợn sóng phá cách vẫn tạo ra vẻ lịch lãm, thư sinh của dân công sở mà lại có chút cá tính của người am hiểu thời trang. Dễ dàng phối đồ với quần âu và quần bò.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu da bò cao cấp mềm mịn</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Đế cao su êm ái, mềm dẻo, chống mòn và trơn trượt hiệu quả.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Bảo hành 6 tháng.</span></p>', 'Giày Lười Công Sở Da Bò Cao Cấp', '', '', '', 'giày-lười-công-sở-da-bò-cao-cấp'),
(113, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu da bò</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Họa tiết vân đà điểu độc đáo, trẻ trung</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Kiểu dáng xỏ tiện lợi</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Đế cao su chống trơn trượt</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Thích hợp nơi công sở, đi chơi, dự tiệc</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Sản phẩm được bảo hành 12 tháng tại địa chỉ ghi trên phiếu bảo hành</span></p>', 'Giày Tây Nam Da Bò Vân Đà Điểu', '', '', '', 'giày-tây-nam-da-bò-vân-đà-điểu'),
(114, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Mang lại vẻ đẹp trẻ trung, nam tính và thanh lịch, giày tây nam của thương hiệu Zilandi sẽ là sự lựa chọn tuyệt vời cho phái mạnh tham gia mọi sự kiện.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Kích thước giày đúng tiêu chuẩn</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu da tổng hợp</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Gắn quai ngang mặt trước giày</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Mũi giày nhọn</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Mặt lót in tên thương hiệu</span></p>', 'Giày Tây Nam', '', '', '', 'giày-tây-nam'),
(115, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Một sự kết hợp tuyệt vời giữa sự nam tính và phong cách đường phố sôi động, đôi giày sneakers từ thương hiệu Zara thích hợp cho những anh chàng muốn khuấy động phong cách.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu da tổng hợp</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Mũi giày tròn</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Thiết kế thắt dây</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Mặt lót in tên thương hiệu</span></p>', 'Giày Sneakers Giả Da Brushed', '', '', '', 'giày-sneakers-giả-da-brushed'),
(116, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Hãy đón nhận những điều tuyệt vời nhất từ xu hướng thời trang của thương hiệu 24:01 cùng đôi giày lười phối họa tiết. Chất liệu PU và kiểu dáng đơn giản, mang đến vẻ ngoài trẻ trung, năng động nhưng không kém phần lịch lãm.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu PU</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Mũi giày tròn</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Cổ giày phối đệm đỡ</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Phần gót giày đắp da</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Mặt lót in tên thương hiệu</span></p>', 'Giày Lười Họa Tiết', '', '', '', 'giày-lười-họa-tiết'),
(117, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">-Kiểu dáng: giày lười công sở lịch lãm, đơn giản và tiện lợi. Với bề mặt nhẵn bóng có vân gợn sóng phá cách vẫn tạo ra vẻ lịch lãm, thư sinh của dân công sở mà lại có chút cá tính của người am hiểu thời trang. Dễ dàng phối đồ với quần âu và quần bò.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu da bò cao cấp mềm mịn</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Đế cao su êm ái, mềm dẻo, chống mòn và trơn trượt hiệu quả.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Bảo hành 6 tháng.</span></p>', 'Giày Tây Công Sở Da Bò Cao Cấp Bagatii', '', '', '', 'giày-tây-công-sở-da-bò-cao-cấp-bagatii'),
(118, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Làm mới phong cách thường ngày của bạn với giày sneakers slip on đậm chất cổ điển của thương hiệu H&amp;M. Thiết kế kiểu dáng đơn giản phối đan lát bề mặt da mới lạ.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu da tổng hợp</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Mũi tròn</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- May thun co giãn</span></p>', 'Giày Sneskers Slip On Đan Lát', '', '', '', 'giày-sneskers-slip-on-đan-lát'),
(119, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Giày sneakers phối màu của thương hiệu Dunhill mang thiết kế trẻ trung và nổi bật, đem đến vẻ ngoài cực chất cho các chàng trai trên phố. </span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu da tổng hợp</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Mũi tròn</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Thiết kế thắt dây</span></p>', 'Giày Sneakers Phối Màu 90S', '', '', '', 'giày-sneakers-phối-màu-90s'),
(120, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Sản phẩm có độ bền cao</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Chất liệu cao cấp.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Kiểu dáng đơn giản nhưng không kém phầm sang trọng.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Đường may tỉ mỉ</span></p>', 'Giày Thể Thao HM', '', '', '', 'giày-thể-thao-hm'),
(121, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Hãy tự tin bước xuống phố cùng giày sneakers từ thương hiệu Zara. Kiểu dáng đơn giản và tiện dụng, khẳng định phong cách cá tính.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu da tổng hợp</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Mũi giày tròn</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Thiết kế thắt dây</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Mặt lót in tên thương hiệu</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Đế giày bằng cao su tổng hợp</span></p>', 'Giày Plimsolls Basic', '', '', '', 'giày-plimsolls-basic'),
(122, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Tận hưởng phong cách sành điệu với giày sneakers kiểu dáng cao cổ từ thương hiệu Zara, tự tin khoe cá tính trong ngày dài năng động.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu da tổng hợp</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Mũi tròn</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Kiểu dáng thắt dây</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- May khóa kéo sau gót</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Mặt lót in tên thương hiệu</span></p>', 'Giày Sneakers High Top Zippered', '', '', '', 'giày-sneakers-high-top-zippered'),
(123, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Quai da với thiết kế giày thiết kế kiểu dáng đơn giản nhưng không kém phầm sang trọng với từng đường may tỉ mỉ sẽ góp phần hoàn chỉnh bộ trang phục của các bạn</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Đế phylon cao cấp siêu nhẹ, đàn hồi tốt đem lại cảm giác êm ái khi di chuyển. </span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Đế tiếp đất từ chất liệu cao su cao cấp cùng thiết kế rãnh ngang tăng độ bám khi di chuyển trên mọi địa hình.</span></p>', 'Giày Thể Thao Cao Cấp Nam', '', '', '', 'giày-thể-thao-cao-cấp-nam'),
(124, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Cập nhật phong cách thời trang mới cho tủ giày của bạn với giày sneakers nam từ thương hiệu Mango. Mang kiểu dáng cổ điển, độc đáo với thiết kế phối chất liệu vải nỉ trên bề mặt và dây thắt bằng da thật tinh tế, tạo cảm giác thoải mái khi mang đi và tôn lên nét lịch lãm cho quý ông.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu nỉ</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Mũi tròn</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Kiểu dáng thắt dây</span></p>', 'Giày Sneakers Nỉ Phối Dây Đeo Da', '', '', '', 'giày-sneakers-nỉ-phối-dây-đeo-da'),
(125, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">Giày lười của thương hiệu 24:01 mang đến nét trẻ trung và năng động cho các chàng trai hiện đại.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu PU, canvas</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Mũi tròn</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- In tên thương hiệu trên lót đế giày</span></p>', 'Giày Lười Phối Nhiều Chất Liệu', '', '', '', 'giày-lười-phối-nhiều-chất-liệu'),
(126, '', '<p><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">-Kiểu dáng: giày lười công sở lịch lãm, đơn giản và tiện lợi. Với bề mặt nhẵn bóng có vân gợn sóng phá cách vẫn tạo ra vẻ lịch lãm, thư sinh của dân công sở mà lại có chút cá tính của người am hiểu thời trang. Dễ dàng phối đồ với quần âu và quần bò.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Chất liệu da bò cao cấp mềm mịn</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Đế cao su êm ái, mềm dẻo, chống mòn và trơn trượt hiệu quả.</span><br style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;" /><span style="color: #000000; font-family: Arial, sans-serif; font-size: 11px; letter-spacing: 0.6px;">- Bảo hành 6 tháng.</span></p>', 'Giày Tây Công Sở Da Bò Cao Cấp', '', '', '', 'giày-tây-công-sở-da-bò-cao-cấp');

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_product_categories`
--

CREATE TABLE `ecom_virtuemart_product_categories` (
  `id` int(1) UNSIGNED NOT NULL,
  `virtuemart_product_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `virtuemart_category_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Maps Products to Categories';

--
-- Dumping data for table `ecom_virtuemart_product_categories`
--

INSERT INTO `ecom_virtuemart_product_categories` (`id`, `virtuemart_product_id`, `virtuemart_category_id`, `ordering`) VALUES
(5, 5, 3, 0),
(4, 4, 3, 0),
(6, 6, 3, 0),
(7, 7, 3, 0),
(8, 8, 3, 0),
(9, 9, 3, 0),
(10, 10, 3, 0),
(11, 11, 3, 0),
(12, 12, 3, 0),
(13, 13, 3, 0),
(14, 14, 3, 0),
(15, 15, 2, 0),
(16, 16, 2, 0),
(17, 17, 2, 0),
(18, 18, 2, 0),
(19, 19, 2, 0),
(20, 20, 2, 0),
(21, 21, 2, 0),
(22, 22, 2, 0),
(23, 23, 2, 0),
(24, 24, 2, 0),
(25, 25, 2, 0),
(26, 26, 2, 0),
(27, 27, 2, 0),
(28, 28, 2, 0),
(29, 29, 2, 0),
(30, 30, 1, 0),
(31, 31, 1, 0),
(32, 32, 1, 0),
(33, 33, 2, 0),
(34, 34, 1, 0),
(35, 35, 1, 0),
(36, 36, 1, 0),
(37, 37, 1, 0),
(38, 38, 1, 0),
(39, 39, 1, 0),
(40, 40, 1, 0),
(41, 41, 1, 0),
(42, 42, 1, 0),
(43, 43, 1, 0),
(44, 44, 1, 0),
(45, 45, 1, 0),
(46, 46, 1, 0),
(47, 47, 1, 0),
(48, 48, 1, 0),
(49, 49, 1, 0),
(50, 50, 1, 0),
(51, 51, 1, 0),
(52, 52, 1, 0),
(53, 53, 1, 0),
(54, 54, 1, 0),
(55, 55, 3, 0),
(56, 56, 2, 0),
(57, 57, 2, 0),
(58, 58, 5, 0),
(59, 59, 5, 0),
(60, 60, 5, 0),
(61, 61, 5, 0),
(62, 62, 5, 0),
(63, 63, 5, 0),
(64, 64, 5, 0),
(65, 65, 5, 0),
(66, 66, 5, 0),
(67, 67, 5, 0),
(68, 68, 5, 0),
(69, 69, 5, 0),
(70, 70, 5, 0),
(71, 71, 5, 0),
(72, 72, 5, 0),
(73, 73, 5, 0),
(74, 74, 5, 0),
(75, 75, 5, 0),
(76, 76, 5, 0),
(77, 77, 5, 0),
(78, 78, 5, 0),
(79, 79, 5, 0),
(80, 80, 5, 0),
(81, 81, 5, 0),
(82, 82, 5, 0),
(83, 83, 6, 0),
(84, 84, 6, 0),
(85, 85, 6, 0),
(86, 86, 6, 0),
(87, 87, 6, 0),
(88, 88, 6, 0),
(89, 89, 6, 0),
(90, 90, 6, 0),
(91, 91, 6, 0),
(92, 92, 6, 0),
(93, 93, 6, 0),
(94, 94, 6, 0),
(95, 95, 6, 0),
(96, 96, 6, 0),
(97, 97, 6, 0),
(98, 98, 6, 0),
(99, 99, 6, 0),
(100, 100, 6, 0),
(101, 101, 6, 0),
(102, 102, 6, 0),
(103, 103, 6, 0),
(104, 104, 6, 0),
(105, 105, 6, 0),
(106, 106, 4, 0),
(107, 107, 4, 0),
(108, 108, 4, 0),
(109, 109, 4, 0),
(110, 110, 4, 0),
(111, 111, 4, 0),
(112, 112, 4, 0),
(113, 113, 4, 0),
(114, 114, 4, 0),
(115, 115, 4, 0),
(116, 116, 4, 0),
(117, 117, 4, 0),
(118, 118, 4, 0),
(119, 119, 4, 0),
(120, 120, 4, 0),
(121, 121, 4, 0),
(122, 122, 4, 0),
(123, 123, 4, 0),
(124, 124, 4, 0),
(125, 125, 4, 0),
(126, 126, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_product_customfields`
--

CREATE TABLE `ecom_virtuemart_product_customfields` (
  `virtuemart_customfield_id` int(1) UNSIGNED NOT NULL COMMENT 'field id',
  `virtuemart_product_id` int(1) NOT NULL DEFAULT '0',
  `virtuemart_custom_id` int(1) NOT NULL DEFAULT '1' COMMENT 'custom group id',
  `customfield_value` varchar(2500) DEFAULT NULL COMMENT 'field value',
  `customfield_price` decimal(15,6) DEFAULT NULL COMMENT 'price',
  `disabler` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `override` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `customfield_params` varchar(17000) NOT NULL DEFAULT '' COMMENT 'Param for Plugins',
  `product_sku` varchar(64) DEFAULT NULL,
  `product_gtin` varchar(64) DEFAULT NULL,
  `product_mpn` varchar(64) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='custom fields';

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_product_manufacturers`
--

CREATE TABLE `ecom_virtuemart_product_manufacturers` (
  `id` int(1) UNSIGNED NOT NULL,
  `virtuemart_product_id` int(1) DEFAULT NULL,
  `virtuemart_manufacturer_id` int(1) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Maps a product to a manufacturer';

--
-- Dumping data for table `ecom_virtuemart_product_manufacturers`
--

INSERT INTO `ecom_virtuemart_product_manufacturers` (`id`, `virtuemart_product_id`, `virtuemart_manufacturer_id`) VALUES
(5, 5, 4),
(4, 4, 2),
(6, 6, 5),
(7, 7, 4),
(8, 8, 5),
(9, 9, 5),
(10, 10, 2),
(11, 11, 4),
(12, 12, 5),
(13, 13, 4),
(14, 14, 5),
(15, 15, 1),
(16, 16, 4),
(17, 17, 1),
(18, 18, 4),
(19, 19, 6),
(20, 20, 1),
(21, 21, 1),
(22, 22, 4),
(23, 23, 2),
(24, 24, 4),
(25, 25, 2),
(26, 26, 4),
(27, 27, 2),
(28, 28, 1),
(29, 29, 5),
(30, 30, 5),
(31, 31, 5),
(32, 32, 5),
(33, 33, 6),
(34, 34, 1),
(35, 35, 1),
(36, 36, 5),
(37, 37, 5),
(38, 38, 6),
(39, 39, 5),
(40, 40, 2),
(41, 41, 4),
(42, 42, 3),
(43, 43, 3),
(44, 44, 3),
(45, 45, 2),
(46, 46, 4),
(47, 47, 6),
(48, 48, 1),
(49, 49, 3),
(50, 50, 3),
(51, 51, 6),
(52, 52, 5),
(53, 53, 1),
(54, 54, 2),
(55, 55, 1),
(56, 56, 4),
(57, 57, 3),
(58, 58, 2),
(59, 59, 4),
(60, 60, 6),
(61, 61, 3),
(62, 62, 5),
(63, 63, 1),
(64, 64, 5),
(65, 65, 3),
(66, 66, 6),
(67, 67, 2),
(68, 68, 2),
(69, 69, 5),
(70, 70, 1),
(71, 71, 3),
(72, 72, 4),
(73, 73, 6),
(74, 74, 1),
(75, 75, 3),
(76, 76, 3),
(77, 77, 2),
(78, 78, 2),
(79, 79, 2),
(80, 80, 2),
(81, 81, 6),
(82, 82, 3),
(83, 83, 2),
(84, 84, 3),
(85, 85, 4),
(86, 86, 3),
(87, 87, 4),
(88, 88, 4),
(89, 89, 6),
(90, 90, 3),
(91, 91, 1),
(92, 92, 2),
(93, 93, 6),
(94, 94, 3),
(95, 95, 2),
(96, 96, 6),
(97, 97, 4),
(98, 98, 3),
(99, 99, 5),
(100, 100, 6),
(101, 101, 6),
(102, 102, 5),
(103, 103, 2),
(104, 104, 3),
(105, 105, 6),
(106, 106, 2),
(107, 107, 6),
(108, 108, 4),
(109, 109, 1),
(110, 110, 2),
(111, 111, 4),
(112, 112, 6),
(113, 113, 5),
(114, 114, 3),
(115, 115, 1),
(116, 116, 5),
(117, 117, 5),
(118, 118, 3),
(119, 119, 2),
(120, 120, 3),
(121, 121, 1),
(122, 122, 1),
(123, 123, 4),
(124, 124, 4),
(125, 125, 2),
(126, 126, 6);

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_product_medias`
--

CREATE TABLE `ecom_virtuemart_product_medias` (
  `id` int(1) UNSIGNED NOT NULL,
  `virtuemart_product_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `virtuemart_media_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecom_virtuemart_product_medias`
--

INSERT INTO `ecom_virtuemart_product_medias` (`id`, `virtuemart_product_id`, `virtuemart_media_id`, `ordering`) VALUES
(5, 5, 17, 1),
(4, 4, 16, 1),
(6, 6, 18, 1),
(7, 7, 19, 1),
(8, 8, 20, 1),
(9, 9, 21, 1),
(10, 10, 22, 1),
(11, 11, 23, 1),
(12, 12, 24, 1),
(13, 13, 25, 1),
(14, 14, 26, 1),
(15, 15, 27, 1),
(16, 16, 28, 1),
(17, 17, 29, 1),
(18, 18, 30, 1),
(19, 19, 31, 1),
(20, 20, 32, 1),
(21, 21, 33, 1),
(22, 22, 34, 1),
(23, 23, 35, 1),
(24, 24, 36, 1),
(25, 25, 37, 1),
(26, 26, 38, 1),
(27, 27, 39, 1),
(28, 28, 40, 1),
(29, 29, 41, 1),
(30, 30, 42, 1),
(31, 31, 43, 1),
(32, 32, 44, 1),
(33, 33, 45, 1),
(34, 34, 46, 1),
(35, 35, 47, 1),
(36, 36, 48, 1),
(37, 37, 49, 1),
(38, 38, 50, 1),
(39, 39, 51, 1),
(40, 40, 52, 1),
(41, 41, 53, 1),
(42, 42, 54, 1),
(43, 43, 55, 1),
(44, 44, 56, 1),
(45, 45, 57, 1),
(46, 46, 58, 1),
(47, 47, 59, 1),
(48, 48, 60, 1),
(49, 49, 61, 1),
(50, 50, 62, 1),
(51, 51, 63, 1),
(52, 52, 64, 1),
(53, 53, 65, 1),
(54, 54, 66, 1),
(55, 55, 67, 1),
(56, 56, 68, 1),
(57, 57, 69, 1),
(58, 58, 71, 1),
(59, 59, 72, 1),
(60, 60, 73, 1),
(61, 61, 74, 1),
(62, 62, 75, 1),
(63, 63, 76, 1),
(64, 64, 77, 1),
(65, 65, 78, 1),
(66, 66, 79, 1),
(67, 67, 80, 1),
(68, 68, 81, 1),
(69, 69, 82, 1),
(70, 70, 83, 1),
(71, 71, 84, 1),
(72, 72, 85, 1),
(73, 73, 86, 1),
(74, 74, 87, 1),
(75, 75, 88, 1),
(76, 76, 89, 1),
(77, 77, 90, 1),
(78, 78, 91, 1),
(79, 79, 92, 1),
(80, 80, 93, 1),
(81, 81, 94, 1),
(82, 82, 95, 1),
(83, 83, 96, 1),
(84, 84, 97, 1),
(85, 85, 98, 1),
(86, 86, 99, 1),
(87, 87, 100, 1),
(88, 88, 101, 1),
(89, 89, 102, 1),
(90, 90, 103, 1),
(91, 91, 104, 1),
(92, 92, 105, 1),
(93, 93, 106, 1),
(94, 94, 107, 1),
(95, 95, 108, 1),
(96, 96, 109, 1),
(97, 97, 110, 1),
(98, 98, 111, 1),
(99, 99, 112, 1),
(100, 100, 113, 1),
(101, 101, 114, 1),
(102, 102, 115, 1),
(103, 103, 116, 1),
(104, 104, 117, 1),
(105, 105, 118, 1),
(106, 106, 119, 1),
(107, 107, 120, 1),
(108, 108, 121, 1),
(109, 109, 122, 1),
(110, 110, 123, 1),
(111, 111, 124, 1),
(112, 112, 125, 1),
(113, 113, 126, 1),
(114, 114, 127, 1),
(115, 115, 128, 1),
(116, 116, 129, 1),
(117, 117, 130, 1),
(118, 118, 131, 1),
(119, 119, 132, 1),
(120, 120, 133, 1),
(121, 121, 134, 1),
(122, 122, 135, 1),
(123, 123, 136, 1),
(124, 124, 137, 1),
(125, 125, 138, 1),
(126, 126, 139, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_product_prices`
--

CREATE TABLE `ecom_virtuemart_product_prices` (
  `virtuemart_product_price_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_product_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `virtuemart_shoppergroup_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `product_price` decimal(15,6) DEFAULT NULL,
  `override` tinyint(1) DEFAULT NULL,
  `product_override_price` decimal(15,5) DEFAULT NULL,
  `product_tax_id` int(1) DEFAULT NULL,
  `product_discount_id` int(1) DEFAULT NULL,
  `product_currency` smallint(1) DEFAULT NULL,
  `product_price_publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_price_publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `price_quantity_start` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `price_quantity_end` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Holds price records for a product';

--
-- Dumping data for table `ecom_virtuemart_product_prices`
--

INSERT INTO `ecom_virtuemart_product_prices` (`virtuemart_product_price_id`, `virtuemart_product_id`, `virtuemart_shoppergroup_id`, `product_price`, `override`, `product_override_price`, `product_tax_id`, `product_discount_id`, `product_currency`, `product_price_publish_up`, `product_price_publish_down`, `price_quantity_start`, `price_quantity_end`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(5, 5, 0, '2500000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-01-30 02:48:27', 114, '2017-01-30 02:48:27', 114, '0000-00-00 00:00:00', 0),
(4, 4, 0, '720000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-01-30 02:47:04', 114, '2017-01-30 02:47:04', 114, '0000-00-00 00:00:00', 0),
(6, 6, 0, '590000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-01-30 02:49:46', 114, '2017-01-30 04:07:46', 114, '0000-00-00 00:00:00', 0),
(7, 7, 0, '400000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-01-30 02:51:31', 114, '2017-01-30 02:51:31', 114, '0000-00-00 00:00:00', 0),
(8, 8, 0, '1200000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-01-30 03:04:18', 114, '2017-01-30 03:04:18', 114, '0000-00-00 00:00:00', 0),
(9, 9, 0, '720000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-01-30 03:05:25', 114, '2017-01-30 03:05:25', 114, '0000-00-00 00:00:00', 0),
(10, 10, 0, '3850000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-01-30 03:10:51', 114, '2017-01-30 03:10:51', 114, '0000-00-00 00:00:00', 0),
(11, 11, 0, '480000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-01-30 03:12:53', 114, '2017-01-30 03:12:53', 114, '0000-00-00 00:00:00', 0),
(12, 12, 0, '840000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-01-30 03:25:00', 114, '2017-01-30 03:25:00', 114, '0000-00-00 00:00:00', 0),
(13, 13, 0, '420000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-01-30 03:51:26', 114, '2017-01-30 03:51:26', 114, '0000-00-00 00:00:00', 0),
(14, 14, 0, '1820000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-01-30 03:53:00', 114, '2017-01-30 03:53:00', 114, '0000-00-00 00:00:00', 0),
(15, 15, 0, '350000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-01-30 03:55:03', 114, '2017-01-30 03:56:24', 114, '0000-00-00 00:00:00', 0),
(16, 16, 0, '350000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-01-30 03:56:10', 114, '2017-01-30 03:56:29', 114, '0000-00-00 00:00:00', 0),
(17, 17, 0, '530000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-01-30 03:57:42', 114, '2017-01-30 03:57:42', 114, '0000-00-00 00:00:00', 0),
(18, 18, 0, '420000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-01-30 03:58:48', 114, '2017-01-30 04:00:36', 114, '0000-00-00 00:00:00', 0),
(19, 19, 0, '515000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-01-30 03:59:45', 114, '2017-01-30 03:59:45', 114, '0000-00-00 00:00:00', 0),
(20, 20, 0, '280000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-01 03:19:34', 114, '2017-02-01 03:19:34', 114, '0000-00-00 00:00:00', 0),
(21, 21, 0, '450000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-01 03:20:46', 114, '2017-02-01 03:20:46', 114, '0000-00-00 00:00:00', 0),
(22, 22, 0, '370000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-01 03:22:01', 114, '2017-02-01 03:22:01', 114, '0000-00-00 00:00:00', 0),
(23, 23, 0, '350000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-01 03:22:59', 114, '2017-02-01 03:22:59', 114, '0000-00-00 00:00:00', 0),
(24, 24, 0, '250000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-01 03:24:23', 114, '2017-02-01 03:24:23', 114, '0000-00-00 00:00:00', 0),
(25, 25, 0, '280000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-01 03:26:06', 114, '2017-02-01 03:26:06', 114, '0000-00-00 00:00:00', 0),
(26, 26, 0, '310000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-01 03:27:53', 114, '2017-02-01 03:27:53', 114, '0000-00-00 00:00:00', 0),
(27, 27, 0, '320000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-01 03:29:13', 114, '2017-02-01 03:29:13', 114, '0000-00-00 00:00:00', 0),
(28, 28, 0, '350000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-01 03:30:01', 114, '2017-02-01 03:30:01', 114, '0000-00-00 00:00:00', 0),
(29, 29, 0, '350000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-01 03:31:24', 114, '2017-02-01 03:31:24', 114, '0000-00-00 00:00:00', 0),
(30, 30, 0, '3850000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-01 03:56:32', 114, '2017-02-01 03:56:32', 114, '0000-00-00 00:00:00', 0),
(31, 31, 0, '350000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-01 03:58:10', 114, '2017-02-01 03:58:10', 114, '0000-00-00 00:00:00', 0),
(32, 32, 0, '350000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-01 03:59:14', 114, '2017-02-01 03:59:14', 114, '0000-00-00 00:00:00', 0),
(33, 33, 0, '400000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-01 04:00:18', 114, '2017-02-01 04:00:18', 114, '0000-00-00 00:00:00', 0),
(34, 34, 0, '549000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-01 04:01:20', 114, '2017-02-01 04:01:20', 114, '0000-00-00 00:00:00', 0),
(35, 35, 0, '480000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-01 04:05:37', 114, '2017-02-01 04:05:37', 114, '0000-00-00 00:00:00', 0),
(36, 36, 0, '380000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-01 04:31:31', 114, '2017-02-01 04:31:31', 114, '0000-00-00 00:00:00', 0),
(37, 37, 0, '520000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-01 04:32:29', 114, '2017-02-01 04:32:29', 114, '0000-00-00 00:00:00', 0),
(38, 38, 0, '520000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-01 04:33:30', 114, '2017-02-01 04:33:30', 114, '0000-00-00 00:00:00', 0),
(39, 39, 0, '450000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-01 04:34:45', 114, '2017-02-01 04:34:45', 114, '0000-00-00 00:00:00', 0),
(40, 40, 0, '575000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-01 04:35:52', 114, '2017-02-01 04:35:52', 114, '0000-00-00 00:00:00', 0),
(41, 41, 0, '300000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-01 04:37:12', 114, '2017-02-01 04:37:12', 114, '0000-00-00 00:00:00', 0),
(42, 42, 0, '585000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-01 04:37:55', 114, '2017-02-01 04:37:55', 114, '0000-00-00 00:00:00', 0),
(43, 43, 0, '400000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-01 04:38:50', 114, '2017-02-01 04:38:50', 114, '0000-00-00 00:00:00', 0),
(44, 44, 0, '390000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-01 04:40:19', 114, '2017-02-01 04:40:26', 114, '0000-00-00 00:00:00', 0),
(45, 45, 0, '375000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-01 04:43:29', 114, '2017-02-01 04:43:29', 114, '0000-00-00 00:00:00', 0),
(46, 46, 0, '375000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-01 04:44:44', 114, '2017-02-01 04:44:44', 114, '0000-00-00 00:00:00', 0),
(47, 47, 0, '450000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-01 04:46:23', 114, '2017-02-01 04:46:23', 114, '0000-00-00 00:00:00', 0),
(48, 48, 0, '570000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-01 05:36:32', 114, '2017-02-01 05:36:32', 114, '0000-00-00 00:00:00', 0),
(49, 49, 0, '495000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-01 05:37:42', 114, '2017-02-01 05:37:42', 114, '0000-00-00 00:00:00', 0),
(50, 50, 0, '475000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-01 05:38:51', 114, '2017-02-01 05:38:51', 114, '0000-00-00 00:00:00', 0),
(51, 51, 0, '570000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-01 05:39:55', 114, '2017-02-01 05:39:55', 114, '0000-00-00 00:00:00', 0),
(52, 52, 0, '450000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-01 05:40:44', 114, '2017-02-01 05:40:44', 114, '0000-00-00 00:00:00', 0),
(53, 53, 0, '570000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-01 05:41:30', 114, '2017-02-01 05:41:30', 114, '0000-00-00 00:00:00', 0),
(54, 55, 0, '1250000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-01 05:46:20', 114, '2017-02-01 05:46:20', 114, '0000-00-00 00:00:00', 0),
(55, 56, 0, '370000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-01 05:48:57', 114, '2017-02-01 05:48:57', 114, '0000-00-00 00:00:00', 0),
(56, 57, 0, '520000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-01 05:49:36', 114, '2017-02-01 05:49:36', 114, '0000-00-00 00:00:00', 0),
(57, 54, 0, '520000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-01 05:49:48', 114, '2017-02-01 05:49:48', 114, '0000-00-00 00:00:00', 0),
(58, 58, 0, '450000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 05:01:50', 114, '2017-02-02 05:01:50', 114, '0000-00-00 00:00:00', 0),
(59, 59, 0, '500000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 05:02:59', 114, '2017-02-02 05:02:59', 114, '0000-00-00 00:00:00', 0),
(60, 60, 0, '380000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 05:03:48', 114, '2017-02-02 05:03:48', 114, '0000-00-00 00:00:00', 0),
(61, 61, 0, '490000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 05:05:09', 114, '2017-02-02 05:05:09', 114, '0000-00-00 00:00:00', 0),
(62, 62, 0, '500000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 05:06:03', 114, '2017-02-02 05:06:03', 114, '0000-00-00 00:00:00', 0),
(63, 63, 0, '380000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 05:08:34', 114, '2017-02-02 05:08:34', 114, '0000-00-00 00:00:00', 0),
(64, 64, 0, '380000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 05:09:35', 114, '2017-02-02 05:09:35', 114, '0000-00-00 00:00:00', 0),
(65, 65, 0, '350000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 05:10:33', 114, '2017-02-02 05:10:33', 114, '0000-00-00 00:00:00', 0),
(66, 66, 0, '520000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 05:11:27', 114, '2017-02-02 05:11:27', 114, '0000-00-00 00:00:00', 0),
(67, 67, 0, '520000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 05:12:36', 114, '2017-02-02 05:12:36', 114, '0000-00-00 00:00:00', 0),
(68, 68, 0, '520000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 05:28:16', 114, '2017-02-02 05:28:16', 114, '0000-00-00 00:00:00', 0),
(69, 69, 0, '420000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 05:29:26', 114, '2017-02-02 05:29:26', 114, '0000-00-00 00:00:00', 0),
(70, 70, 0, '490000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 05:30:51', 114, '2017-02-02 05:30:51', 114, '0000-00-00 00:00:00', 0),
(71, 71, 0, '450000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 05:31:41', 114, '2017-02-02 05:31:41', 114, '0000-00-00 00:00:00', 0),
(72, 72, 0, '435000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 05:34:45', 114, '2017-02-02 05:34:45', 114, '0000-00-00 00:00:00', 0),
(73, 73, 0, '500000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 05:35:38', 114, '2017-02-02 05:35:38', 114, '0000-00-00 00:00:00', 0),
(74, 74, 0, '450000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 05:36:28', 114, '2017-02-02 05:36:28', 114, '0000-00-00 00:00:00', 0),
(75, 75, 0, '385000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 05:37:09', 114, '2017-02-02 05:37:09', 114, '0000-00-00 00:00:00', 0),
(76, 76, 0, '450000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 05:39:24', 114, '2017-02-02 05:39:24', 114, '0000-00-00 00:00:00', 0),
(77, 77, 0, '370000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 05:41:12', 114, '2017-02-02 05:41:12', 114, '0000-00-00 00:00:00', 0),
(78, 78, 0, '370000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 05:41:49', 114, '2017-02-02 05:41:49', 114, '0000-00-00 00:00:00', 0),
(79, 79, 0, '370000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 05:42:22', 114, '2017-02-02 05:42:22', 114, '0000-00-00 00:00:00', 0),
(80, 80, 0, '370000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 05:43:02', 114, '2017-02-02 05:43:02', 114, '0000-00-00 00:00:00', 0),
(81, 81, 0, '450000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 05:43:47', 114, '2017-02-02 05:43:47', 114, '0000-00-00 00:00:00', 0),
(82, 82, 0, '400000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 05:44:37', 114, '2017-02-02 05:44:37', 114, '0000-00-00 00:00:00', 0),
(83, 83, 0, '540000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 05:51:04', 114, '2017-02-02 05:51:04', 114, '0000-00-00 00:00:00', 0),
(84, 84, 0, '1540000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 05:52:07', 114, '2017-02-02 05:52:07', 114, '0000-00-00 00:00:00', 0),
(85, 85, 0, '200000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 05:52:54', 114, '2017-02-02 05:52:54', 114, '0000-00-00 00:00:00', 0),
(86, 86, 0, '200000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 05:56:05', 114, '2017-02-02 05:56:05', 114, '0000-00-00 00:00:00', 0),
(87, 87, 0, '130000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 06:01:37', 114, '2017-02-02 06:01:37', 114, '0000-00-00 00:00:00', 0),
(88, 88, 0, '170000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 06:07:14', 114, '2017-02-02 06:07:14', 114, '0000-00-00 00:00:00', 0),
(89, 89, 0, '150000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 06:08:07', 114, '2017-02-02 06:08:07', 114, '0000-00-00 00:00:00', 0),
(90, 90, 0, '190000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 06:08:54', 114, '2017-02-02 06:08:54', 114, '0000-00-00 00:00:00', 0),
(91, 91, 0, '350000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 06:09:36', 114, '2017-02-02 06:09:36', 114, '0000-00-00 00:00:00', 0),
(92, 92, 0, '70000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 06:11:05', 114, '2017-02-02 06:11:05', 114, '0000-00-00 00:00:00', 0),
(93, 93, 0, '950000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 06:11:52', 114, '2017-02-02 06:11:52', 114, '0000-00-00 00:00:00', 0),
(94, 94, 0, '260000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 06:31:34', 114, '2017-02-02 06:31:34', 114, '0000-00-00 00:00:00', 0),
(95, 95, 0, '350000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 06:32:23', 114, '2017-02-02 06:32:23', 114, '0000-00-00 00:00:00', 0),
(96, 96, 0, '980000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 06:33:13', 114, '2017-02-02 06:33:13', 114, '0000-00-00 00:00:00', 0),
(97, 97, 0, '740000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 06:33:51', 114, '2017-02-02 06:33:51', 114, '0000-00-00 00:00:00', 0),
(98, 98, 0, '350000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 06:34:34', 114, '2017-02-02 06:34:34', 114, '0000-00-00 00:00:00', 0),
(99, 99, 0, '450000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 06:35:27', 114, '2017-02-02 06:35:27', 114, '0000-00-00 00:00:00', 0),
(100, 100, 0, '500000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 06:36:13', 114, '2017-02-02 06:36:13', 114, '0000-00-00 00:00:00', 0),
(101, 101, 0, '950000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 06:37:52', 114, '2017-02-02 06:37:52', 114, '0000-00-00 00:00:00', 0),
(102, 102, 0, '480000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 06:38:41', 114, '2017-02-02 06:38:41', 114, '0000-00-00 00:00:00', 0),
(103, 103, 0, '850000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 06:39:28', 114, '2017-02-02 06:39:28', 114, '0000-00-00 00:00:00', 0),
(104, 104, 0, '420000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 06:40:21', 114, '2017-02-02 06:40:21', 114, '0000-00-00 00:00:00', 0),
(105, 105, 0, '400000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 06:41:00', 114, '2017-02-02 06:41:00', 114, '0000-00-00 00:00:00', 0),
(106, 106, 0, '490000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 06:49:40', 114, '2017-02-02 06:49:40', 114, '0000-00-00 00:00:00', 0),
(107, 107, 0, '1900000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 06:50:30', 114, '2017-02-02 06:50:30', 114, '0000-00-00 00:00:00', 0),
(108, 108, 0, '475000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 06:52:12', 114, '2017-02-02 06:52:12', 114, '0000-00-00 00:00:00', 0),
(109, 109, 0, '400000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 06:53:07', 114, '2017-02-02 06:53:07', 114, '0000-00-00 00:00:00', 0),
(110, 110, 0, '680000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 06:56:24', 114, '2017-02-02 06:56:24', 114, '0000-00-00 00:00:00', 0),
(111, 111, 0, '670000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 06:57:30', 114, '2017-02-02 06:57:30', 114, '0000-00-00 00:00:00', 0),
(112, 112, 0, '1200000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 06:58:12', 114, '2017-02-02 06:58:12', 114, '0000-00-00 00:00:00', 0),
(113, 113, 0, '880000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 06:58:59', 114, '2017-02-02 06:58:59', 114, '0000-00-00 00:00:00', 0),
(114, 114, 0, '670000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 06:59:58', 114, '2017-02-02 06:59:58', 114, '0000-00-00 00:00:00', 0),
(115, 115, 0, '740000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 07:00:47', 114, '2017-02-02 07:00:47', 114, '0000-00-00 00:00:00', 0),
(116, 116, 0, '760000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 07:01:38', 114, '2017-02-02 07:01:38', 114, '0000-00-00 00:00:00', 0),
(117, 117, 0, '1790000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 07:02:27', 114, '2017-02-02 07:02:27', 114, '0000-00-00 00:00:00', 0),
(118, 118, 0, '750000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 07:03:05', 114, '2017-02-02 07:03:05', 114, '0000-00-00 00:00:00', 0),
(119, 119, 0, '610000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 07:04:41', 114, '2017-02-02 07:04:41', 114, '0000-00-00 00:00:00', 0),
(120, 120, 0, '850000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 07:05:32', 114, '2017-02-02 07:05:32', 114, '0000-00-00 00:00:00', 0),
(121, 121, 0, '810000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 07:06:13', 114, '2017-02-02 07:06:13', 114, '0000-00-00 00:00:00', 0),
(122, 122, 0, '1450000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 07:06:55', 114, '2017-02-02 07:06:55', 114, '0000-00-00 00:00:00', 0),
(123, 123, 0, '720000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 07:08:13', 114, '2017-02-02 07:08:13', 114, '0000-00-00 00:00:00', 0),
(124, 124, 0, '530000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 07:08:55', 114, '2017-02-02 07:08:55', 114, '0000-00-00 00:00:00', 0),
(125, 125, 0, '570000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 07:12:10', 114, '2017-02-02 07:12:10', 114, '0000-00-00 00:00:00', 0),
(126, 126, 0, '1670000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-02-02 07:12:48', 114, '2017-02-02 07:12:48', 114, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_product_shoppergroups`
--

CREATE TABLE `ecom_virtuemart_product_shoppergroups` (
  `id` int(1) UNSIGNED NOT NULL,
  `virtuemart_product_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `virtuemart_shoppergroup_id` int(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Maps Products to Categories';

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_ratings`
--

CREATE TABLE `ecom_virtuemart_ratings` (
  `virtuemart_rating_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_product_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `rates` int(1) NOT NULL DEFAULT '0',
  `ratingcount` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `rating` decimal(10,1) NOT NULL DEFAULT '0.0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores all ratings for a product';

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_rating_reviews`
--

CREATE TABLE `ecom_virtuemart_rating_reviews` (
  `virtuemart_rating_review_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_rating_vote_id` int(1) UNSIGNED DEFAULT NULL,
  `virtuemart_product_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `comment` varchar(18000) DEFAULT NULL,
  `review_ok` tinyint(1) NOT NULL DEFAULT '0',
  `review_rates` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `review_ratingcount` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `review_rating` decimal(10,2) NOT NULL DEFAULT '0.00',
  `review_editable` tinyint(1) NOT NULL DEFAULT '1',
  `lastip` char(50) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `customer` varchar(128) NOT NULL DEFAULT '',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_rating_votes`
--

CREATE TABLE `ecom_virtuemart_rating_votes` (
  `virtuemart_rating_vote_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_product_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `vote` int(1) NOT NULL DEFAULT '0',
  `lastip` char(50) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores all ratings for a product';

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_shipmentmethods`
--

CREATE TABLE `ecom_virtuemart_shipmentmethods` (
  `virtuemart_shipmentmethod_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL DEFAULT '1',
  `shipment_jplugin_id` int(1) NOT NULL DEFAULT '0',
  `shipment_element` varchar(50) NOT NULL DEFAULT '',
  `shipment_params` varchar(19000) NOT NULL DEFAULT '',
  `currency_id` int(1) UNSIGNED DEFAULT NULL,
  `ordering` int(1) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Shipment created from the shipment plugins';

--
-- Dumping data for table `ecom_virtuemart_shipmentmethods`
--

INSERT INTO `ecom_virtuemart_shipmentmethods` (`virtuemart_shipmentmethod_id`, `virtuemart_vendor_id`, `shipment_jplugin_id`, `shipment_element`, `shipment_params`, `currency_id`, `ordering`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 1, 10022, 'weight_countries', 'shipment_logos=""|show_on_pdetails=0|categories=""|blocking_categories=""|countries=""|zip_start=""|zip_stop=""|weight_start=""|weight_stop=""|weight_unit=""|nbproducts_start=0|nbproducts_stop=0|orderamount_start=""|orderamount_stop=""|shipment_cost=""|package_fee=""|tax_id=""|free_shipment=""|', 147, 0, 0, 1, '2017-01-30 03:16:38', 114, '2017-01-30 03:16:38', 114, '0000-00-00 00:00:00', 0),
(2, 1, 10022, 'weight_countries', 'shipment_logos=""|show_on_pdetails=0|categories=""|blocking_categories=""|countries=""|zip_start=""|zip_stop=""|weight_start=""|weight_stop=""|weight_unit=""|nbproducts_start=0|nbproducts_stop=0|orderamount_start=""|orderamount_stop=""|shipment_cost=""|package_fee=""|tax_id=""|free_shipment=""|', 147, 0, 0, 1, '2017-01-30 03:17:25', 114, '2017-01-30 03:17:25', 114, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_shipmentmethods_vi_vn`
--

CREATE TABLE `ecom_virtuemart_shipmentmethods_vi_vn` (
  `virtuemart_shipmentmethod_id` int(1) UNSIGNED NOT NULL,
  `shipment_name` varchar(180) NOT NULL DEFAULT '',
  `shipment_desc` varchar(19000) NOT NULL DEFAULT '',
  `slug` varchar(192) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecom_virtuemart_shipmentmethods_vi_vn`
--

INSERT INTO `ecom_virtuemart_shipmentmethods_vi_vn` (`virtuemart_shipmentmethod_id`, `shipment_name`, `shipment_desc`, `slug`) VALUES
(1, 'Chuyển phát nhanh', 'Chuyển phát nhanh bằng dịch vụ VNPost thời gian (2-3 ngày)', 'ems'),
(2, 'Chuyển chậm', 'Chuyển phát thông thường (6-7 ngày)', 'mms');

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_shipmentmethod_shoppergroups`
--

CREATE TABLE `ecom_virtuemart_shipmentmethod_shoppergroups` (
  `id` int(1) UNSIGNED NOT NULL,
  `virtuemart_shipmentmethod_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `virtuemart_shoppergroup_id` int(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='xref table for shipment to shoppergroup';

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_shipment_plg_weight_countries`
--

CREATE TABLE `ecom_virtuemart_shipment_plg_weight_countries` (
  `id` int(1) UNSIGNED NOT NULL,
  `virtuemart_order_id` int(11) UNSIGNED DEFAULT NULL,
  `order_number` char(32) DEFAULT NULL,
  `virtuemart_shipmentmethod_id` mediumint(1) UNSIGNED DEFAULT NULL,
  `shipment_name` varchar(5000) DEFAULT NULL,
  `order_weight` decimal(10,4) DEFAULT NULL,
  `shipment_weight_unit` char(3) DEFAULT 'KG',
  `shipment_cost` decimal(10,2) DEFAULT NULL,
  `shipment_package_fee` decimal(10,2) DEFAULT NULL,
  `tax_id` smallint(1) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecom_virtuemart_shipment_plg_weight_countries`
--

INSERT INTO `ecom_virtuemart_shipment_plg_weight_countries` (`id`, `virtuemart_order_id`, `order_number`, `virtuemart_shipmentmethod_id`, `shipment_name`, `order_weight`, `shipment_weight_unit`, `shipment_cost`, `shipment_package_fee`, `tax_id`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 1, 'MLX203', 1, '<span class="vmshipment_name">Chuyển phát nhanh</span><span class="vmshipment_description">Chuyển phát nhanh bằng dịch vụ VNPost thời gian (2-3 ngày)</span>', '0.0000', '', '0.00', '0.00', 0, '2017-02-11 06:06:20', 115, '2017-02-11 06:06:20', 115, '0000-00-00 00:00:00', 0),
(2, 2, '7WP104', 1, '<span class="vmshipment_name">Chuyển phát nhanh</span><span class="vmshipment_description">Chuyển phát nhanh bằng dịch vụ VNPost thời gian (2-3 ngày)</span>', '0.0000', '', '0.00', '0.00', 0, '2017-02-12 01:36:05', 115, '2017-02-12 01:36:05', 115, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_shoppergroups`
--

CREATE TABLE `ecom_virtuemart_shoppergroups` (
  `virtuemart_shoppergroup_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL DEFAULT '1',
  `shopper_group_name` varchar(128) DEFAULT NULL,
  `shopper_group_desc` varchar(255) DEFAULT NULL,
  `custom_price_display` tinyint(1) NOT NULL DEFAULT '0',
  `price_display` blob NOT NULL,
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `sgrp_additional` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Shopper Groups that users can be assigned to';

--
-- Dumping data for table `ecom_virtuemart_shoppergroups`
--

INSERT INTO `ecom_virtuemart_shoppergroups` (`virtuemart_shoppergroup_id`, `virtuemart_vendor_id`, `shopper_group_name`, `shopper_group_desc`, `custom_price_display`, `price_display`, `default`, `sgrp_additional`, `ordering`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(2, 1, 'COM_VIRTUEMART_SHOPPERGROUP_DEFAULT', 'COM_VIRTUEMART_SHOPPERGROUP_DEFAULT_TIP', 0, '', 1, 0, 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(1, 1, 'COM_VIRTUEMART_SHOPPERGROUP_GUEST', 'COM_VIRTUEMART_SHOPPERGROUP_GUEST_TIP', 0, '', 2, 0, 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_states`
--

CREATE TABLE `ecom_virtuemart_states` (
  `virtuemart_state_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL DEFAULT '1',
  `virtuemart_country_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `virtuemart_worldzone_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `state_name` varchar(64) DEFAULT NULL,
  `state_3_code` char(3) DEFAULT NULL,
  `state_2_code` char(2) DEFAULT NULL,
  `ordering` int(1) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '1',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='States that are assigned to a country';

--
-- Dumping data for table `ecom_virtuemart_states`
--

INSERT INTO `ecom_virtuemart_states` (`virtuemart_state_id`, `virtuemart_vendor_id`, `virtuemart_country_id`, `virtuemart_worldzone_id`, `state_name`, `state_3_code`, `state_2_code`, `ordering`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 1, 223, 0, 'Alabama', 'ALA', 'AL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(2, 1, 223, 0, 'Alaska', 'ALK', 'AK', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(3, 1, 223, 0, 'Arizona', 'ARZ', 'AZ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(4, 1, 223, 0, 'Arkansas', 'ARK', 'AR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(5, 1, 223, 0, 'California', 'CAL', 'CA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(6, 1, 223, 0, 'Colorado', 'COL', 'CO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(7, 1, 223, 0, 'Connecticut', 'CCT', 'CT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(8, 1, 223, 0, 'Delaware', 'DEL', 'DE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(9, 1, 223, 0, 'District Of Columbia', 'DOC', 'DC', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(10, 1, 223, 0, 'Florida', 'FLO', 'FL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(11, 1, 223, 0, 'Georgia', 'GEA', 'GA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(12, 1, 223, 0, 'Hawaii', 'HWI', 'HI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(13, 1, 223, 0, 'Idaho', 'IDA', 'ID', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(14, 1, 223, 0, 'Illinois', 'ILL', 'IL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(15, 1, 223, 0, 'Indiana', 'IND', 'IN', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(16, 1, 223, 0, 'Iowa', 'IOA', 'IA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(17, 1, 223, 0, 'Kansas', 'KAS', 'KS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(18, 1, 223, 0, 'Kentucky', 'KTY', 'KY', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(19, 1, 223, 0, 'Louisiana', 'LOA', 'LA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(20, 1, 223, 0, 'Maine', 'MAI', 'ME', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(21, 1, 223, 0, 'Maryland', 'MLD', 'MD', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(22, 1, 223, 0, 'Massachusetts', 'MSA', 'MA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(23, 1, 223, 0, 'Michigan', 'MIC', 'MI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(24, 1, 223, 0, 'Minnesota', 'MIN', 'MN', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(25, 1, 223, 0, 'Mississippi', 'MIS', 'MS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(26, 1, 223, 0, 'Missouri', 'MIO', 'MO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(27, 1, 223, 0, 'Montana', 'MOT', 'MT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(28, 1, 223, 0, 'Nebraska', 'NEB', 'NE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(29, 1, 223, 0, 'Nevada', 'NEV', 'NV', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(30, 1, 223, 0, 'New Hampshire', 'NEH', 'NH', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(31, 1, 223, 0, 'New Jersey', 'NEJ', 'NJ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(32, 1, 223, 0, 'New Mexico', 'NEM', 'NM', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(33, 1, 223, 0, 'New York', 'NEY', 'NY', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(34, 1, 223, 0, 'North Carolina', 'NOC', 'NC', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(35, 1, 223, 0, 'North Dakota', 'NOD', 'ND', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(36, 1, 223, 0, 'Ohio', 'OHI', 'OH', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(37, 1, 223, 0, 'Oklahoma', 'OKL', 'OK', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(38, 1, 223, 0, 'Oregon', 'ORN', 'OR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(39, 1, 223, 0, 'Pennsylvania', 'PEA', 'PA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(40, 1, 223, 0, 'Rhode Island', 'RHI', 'RI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(41, 1, 223, 0, 'South Carolina', 'SOC', 'SC', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(42, 1, 223, 0, 'South Dakota', 'SOD', 'SD', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(43, 1, 223, 0, 'Tennessee', 'TEN', 'TN', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(44, 1, 223, 0, 'Texas', 'TXS', 'TX', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(45, 1, 223, 0, 'Utah', 'UTA', 'UT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(46, 1, 223, 0, 'Vermont', 'VMT', 'VT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(47, 1, 223, 0, 'Virginia', 'VIA', 'VA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(48, 1, 223, 0, 'Washington', 'WAS', 'WA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(49, 1, 223, 0, 'West Virginia', 'WEV', 'WV', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(50, 1, 223, 0, 'Wisconsin', 'WIS', 'WI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(51, 1, 223, 0, 'Wyoming', 'WYO', 'WY', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(52, 1, 38, 0, 'Alberta', 'ALB', 'AB', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(53, 1, 38, 0, 'British Columbia', 'BRC', 'BC', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(54, 1, 38, 0, 'Manitoba', 'MAB', 'MB', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(55, 1, 38, 0, 'New Brunswick', 'NEB', 'NB', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(56, 1, 38, 0, 'Newfoundland and Labrador', 'NFL', 'NL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(57, 1, 38, 0, 'Northwest Territories', 'NWT', 'NT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(58, 1, 38, 0, 'Nova Scotia', 'NOS', 'NS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(59, 1, 38, 0, 'Nunavut', 'NUT', 'NU', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(60, 1, 38, 0, 'Ontario', 'ONT', 'ON', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(61, 1, 38, 0, 'Prince Edward Island', 'PEI', 'PE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(62, 1, 38, 0, 'Quebec', 'QEC', 'QC', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(63, 1, 38, 0, 'Saskatchewan', 'SAK', 'SK', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(64, 1, 38, 0, 'Yukon', 'YUT', 'YT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(65, 1, 222, 0, 'England', 'ENG', 'EN', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(66, 1, 222, 0, 'Northern Ireland', 'NOI', 'NI', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(67, 1, 222, 0, 'Scotland', 'SCO', 'SD', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(68, 1, 222, 0, 'Wales', 'WLS', 'WS', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(69, 1, 13, 0, 'Australian Capital Territory', 'ACT', 'AC', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(70, 1, 13, 0, 'New South Wales', 'NSW', 'NS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(71, 1, 13, 0, 'Northern Territory', 'NOT', 'NT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(72, 1, 13, 0, 'Queensland', 'QLD', 'QL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(73, 1, 13, 0, 'South Australia', 'SOA', 'SA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(74, 1, 13, 0, 'Tasmania', 'TAS', 'TS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(75, 1, 13, 0, 'Victoria', 'VIC', 'VI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(76, 1, 13, 0, 'Western Australia', 'WEA', 'WA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(77, 1, 138, 0, 'Aguascalientes', 'AGS', 'AG', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(78, 1, 138, 0, 'Baja California Norte', 'BCN', 'BN', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(79, 1, 138, 0, 'Baja California Sur', 'BCS', 'BS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(80, 1, 138, 0, 'Campeche', 'CAM', 'CA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(81, 1, 138, 0, 'Chiapas', 'CHI', 'CS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(82, 1, 138, 0, 'Chihuahua', 'CHA', 'CH', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(83, 1, 138, 0, 'Coahuila', 'COA', 'CO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(84, 1, 138, 0, 'Colima', 'COL', 'CM', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(85, 1, 138, 0, 'Distrito Federal', 'DFM', 'DF', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(86, 1, 138, 0, 'Durango', 'DGO', 'DO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(87, 1, 138, 0, 'Guanajuato', 'GTO', 'GO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(88, 1, 138, 0, 'Guerrero', 'GRO', 'GU', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(89, 1, 138, 0, 'Hidalgo', 'HGO', 'HI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(90, 1, 138, 0, 'Jalisco', 'JAL', 'JA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(91, 1, 138, 0, 'M', 'EDM', 'EM', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(92, 1, 138, 0, 'Michoac', 'MCN', 'MI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(93, 1, 138, 0, 'Morelos', 'MOR', 'MO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(94, 1, 138, 0, 'Nayarit', 'NAY', 'NY', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(95, 1, 138, 0, 'Nuevo Le', 'NUL', 'NL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(96, 1, 138, 0, 'Oaxaca', 'OAX', 'OA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(97, 1, 138, 0, 'Puebla', 'PUE', 'PU', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(98, 1, 138, 0, 'Quer', 'QRO', 'QU', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(99, 1, 138, 0, 'Quintana Roo', 'QUR', 'QR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(100, 1, 138, 0, 'San Luis Potos', 'SLP', 'SP', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(101, 1, 138, 0, 'Sinaloa', 'SIN', 'SI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(102, 1, 138, 0, 'Sonora', 'SON', 'SO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(103, 1, 138, 0, 'Tabasco', 'TAB', 'TA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(104, 1, 138, 0, 'Tamaulipas', 'TAM', 'TM', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(105, 1, 138, 0, 'Tlaxcala', 'TLX', 'TX', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(106, 1, 138, 0, 'Veracruz', 'VER', 'VZ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(107, 1, 138, 0, 'Yucat', 'YUC', 'YU', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(108, 1, 138, 0, 'Zacatecas', 'ZAC', 'ZA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(109, 1, 30, 0, 'Acre', 'ACR', 'AC', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(110, 1, 30, 0, 'Alagoas', 'ALG', 'AL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(111, 1, 30, 0, 'Amapá', 'AMP', 'AP', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(112, 1, 30, 0, 'Amazonas', 'AMZ', 'AM', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(113, 1, 30, 0, 'Bahía', 'BAH', 'BA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(114, 1, 30, 0, 'Ceará', 'CEA', 'CE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(115, 1, 30, 0, 'Distrito Federal', 'DFB', 'DF', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(116, 1, 30, 0, 'Espírito Santo', 'ESS', 'ES', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(117, 1, 30, 0, 'Goiás', 'GOI', 'GO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(118, 1, 30, 0, 'Maranhão', 'MAR', 'MA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(119, 1, 30, 0, 'Mato Grosso', 'MAT', 'MT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(120, 1, 30, 0, 'Mato Grosso do Sul', 'MGS', 'MS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(121, 1, 30, 0, 'Minas Gerais', 'MIG', 'MG', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(122, 1, 30, 0, 'Paraná', 'PAR', 'PR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(123, 1, 30, 0, 'Paraíba', 'PRB', 'PB', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(124, 1, 30, 0, 'Pará', 'PAB', 'PA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(125, 1, 30, 0, 'Pernambuco', 'PER', 'PE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(126, 1, 30, 0, 'Piauí', 'PIA', 'PI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(127, 1, 30, 0, 'Rio Grande do Norte', 'RGN', 'RN', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(128, 1, 30, 0, 'Rio Grande do Sul', 'RGS', 'RS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(129, 1, 30, 0, 'Rio de Janeiro', 'RDJ', 'RJ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(130, 1, 30, 0, 'Rondônia', 'RON', 'RO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(131, 1, 30, 0, 'Roraima', 'ROR', 'RR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(132, 1, 30, 0, 'Santa Catarina', 'SAC', 'SC', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(133, 1, 30, 0, 'Sergipe', 'SER', 'SE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(134, 1, 30, 0, 'São Paulo', 'SAP', 'SP', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(135, 1, 30, 0, 'Tocantins', 'TOC', 'TO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(136, 1, 44, 0, 'Anhui', 'ANH', '34', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(137, 1, 44, 0, 'Beijing', 'BEI', '11', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(138, 1, 44, 0, 'Chongqing', 'CHO', '50', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(139, 1, 44, 0, 'Fujian', 'FUJ', '35', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(140, 1, 44, 0, 'Gansu', 'GAN', '62', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(141, 1, 44, 0, 'Guangdong', 'GUA', '44', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(142, 1, 44, 0, 'Guangxi Zhuang', 'GUZ', '45', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(143, 1, 44, 0, 'Guizhou', 'GUI', '52', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(144, 1, 44, 0, 'Hainan', 'HAI', '46', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(145, 1, 44, 0, 'Hebei', 'HEB', '13', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(146, 1, 44, 0, 'Heilongjiang', 'HEI', '23', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(147, 1, 44, 0, 'Henan', 'HEN', '41', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(148, 1, 44, 0, 'Hubei', 'HUB', '42', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(149, 1, 44, 0, 'Hunan', 'HUN', '43', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(150, 1, 44, 0, 'Jiangsu', 'JIA', '32', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(151, 1, 44, 0, 'Jiangxi', 'JIX', '36', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(152, 1, 44, 0, 'Jilin', 'JIL', '22', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(153, 1, 44, 0, 'Liaoning', 'LIA', '21', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(154, 1, 44, 0, 'Nei Mongol', 'NML', '15', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(155, 1, 44, 0, 'Ningxia Hui', 'NIH', '64', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(156, 1, 44, 0, 'Qinghai', 'QIN', '63', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(157, 1, 44, 0, 'Shandong', 'SNG', '37', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(158, 1, 44, 0, 'Shanghai', 'SHH', '31', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(159, 1, 44, 0, 'Shaanxi', 'SHX', '61', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(160, 1, 44, 0, 'Sichuan', 'SIC', '51', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(161, 1, 44, 0, 'Tianjin', 'TIA', '12', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(162, 1, 44, 0, 'Xinjiang Uygur', 'XIU', '65', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(163, 1, 44, 0, 'Xizang', 'XIZ', '54', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(164, 1, 44, 0, 'Yunnan', 'YUN', '53', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(165, 1, 44, 0, 'Zhejiang', 'ZHE', '33', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(166, 1, 104, 0, 'Israel', 'ISL', 'IL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(167, 1, 104, 0, 'Gaza Strip', 'GZS', 'GZ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(168, 1, 104, 0, 'West Bank', 'WBK', 'WB', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(169, 1, 151, 0, 'St. Maarten', 'STM', 'SM', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(170, 1, 151, 0, 'Bonaire', 'BNR', 'BN', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(171, 1, 151, 0, 'Curacao', 'CUR', 'CR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(172, 1, 175, 0, 'Alba', 'ABA', 'AB', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(173, 1, 175, 0, 'Arad', 'ARD', 'AR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(174, 1, 175, 0, 'Arges', 'ARG', 'AG', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(175, 1, 175, 0, 'Bacau', 'BAC', 'BC', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(176, 1, 175, 0, 'Bihor', 'BIH', 'BH', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(177, 1, 175, 0, 'Bistrita-Nasaud', 'BIS', 'BN', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(178, 1, 175, 0, 'Botosani', 'BOT', 'BT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(179, 1, 175, 0, 'Braila', 'BRL', 'BR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(180, 1, 175, 0, 'Brasov', 'BRA', 'BV', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(181, 1, 175, 0, 'Bucuresti', 'BUC', 'B', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(182, 1, 175, 0, 'Buzau', 'BUZ', 'BZ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(183, 1, 175, 0, 'Calarasi', 'CAL', 'CL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(184, 1, 175, 0, 'Caras Severin', 'CRS', 'CS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(185, 1, 175, 0, 'Cluj', 'CLJ', 'CJ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(186, 1, 175, 0, 'Constanta', 'CST', 'CT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(187, 1, 175, 0, 'Covasna', 'COV', 'CV', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(188, 1, 175, 0, 'Dambovita', 'DAM', 'DB', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(189, 1, 175, 0, 'Dolj', 'DLJ', 'DJ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(190, 1, 175, 0, 'Galati', 'GAL', 'GL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(191, 1, 175, 0, 'Giurgiu', 'GIU', 'GR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(192, 1, 175, 0, 'Gorj', 'GOR', 'GJ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(193, 1, 175, 0, 'Hargita', 'HRG', 'HR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(194, 1, 175, 0, 'Hunedoara', 'HUN', 'HD', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(195, 1, 175, 0, 'Ialomita', 'IAL', 'IL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(196, 1, 175, 0, 'Iasi', 'IAS', 'IS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(197, 1, 175, 0, 'Ilfov', 'ILF', 'IF', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(198, 1, 175, 0, 'Maramures', 'MAR', 'MM', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(199, 1, 175, 0, 'Mehedinti', 'MEH', 'MH', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(200, 1, 175, 0, 'Mures', 'MUR', 'MS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(201, 1, 175, 0, 'Neamt', 'NEM', 'NT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(202, 1, 175, 0, 'Olt', 'OLT', 'OT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(203, 1, 175, 0, 'Prahova', 'PRA', 'PH', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(204, 1, 175, 0, 'Salaj', 'SAL', 'SJ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(205, 1, 175, 0, 'Satu Mare', 'SAT', 'SM', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(206, 1, 175, 0, 'Sibiu', 'SIB', 'SB', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(207, 1, 175, 0, 'Suceava', 'SUC', 'SV', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(208, 1, 175, 0, 'Teleorman', 'TEL', 'TR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(209, 1, 175, 0, 'Timis', 'TIM', 'TM', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(210, 1, 175, 0, 'Tulcea', 'TUL', 'TL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(211, 1, 175, 0, 'Valcea', 'VAL', 'VL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(212, 1, 175, 0, 'Vaslui', 'VAS', 'VS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(213, 1, 175, 0, 'Vrancea', 'VRA', 'VN', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(214, 1, 105, 0, 'Agrigento', 'AGR', 'AG', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(215, 1, 105, 0, 'Alessandria', 'ALE', 'AL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(216, 1, 105, 0, 'Ancona', 'ANC', 'AN', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(217, 1, 105, 0, 'Aosta', 'AOS', 'AO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(218, 1, 105, 0, 'Arezzo', 'ARE', 'AR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(219, 1, 105, 0, 'Ascoli Piceno', 'API', 'AP', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(220, 1, 105, 0, 'Asti', 'AST', 'AT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(221, 1, 105, 0, 'Avellino', 'AVE', 'AV', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(222, 1, 105, 0, 'Bari', 'BAR', 'BA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(223, 1, 105, 0, 'Belluno', 'BEL', 'BL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(224, 1, 105, 0, 'Benevento', 'BEN', 'BN', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(225, 1, 105, 0, 'Bergamo', 'BEG', 'BG', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(226, 1, 105, 0, 'Biella', 'BIE', 'BI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(227, 1, 105, 0, 'Bologna', 'BOL', 'BO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(228, 1, 105, 0, 'Bolzano', 'BOZ', 'BZ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(229, 1, 105, 0, 'Brescia', 'BRE', 'BS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(230, 1, 105, 0, 'Brindisi', 'BRI', 'BR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(231, 1, 105, 0, 'Cagliari', 'CAG', 'CA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(232, 1, 105, 0, 'Caltanissetta', 'CAL', 'CL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(233, 1, 105, 0, 'Campobasso', 'CBO', 'CB', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(234, 1, 105, 0, 'Carbonia-Iglesias', 'CAR', 'CI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(235, 1, 105, 0, 'Caserta', 'CAS', 'CE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(236, 1, 105, 0, 'Catania', 'CAT', 'CT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(237, 1, 105, 0, 'Catanzaro', 'CTZ', 'CZ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(238, 1, 105, 0, 'Chieti', 'CHI', 'CH', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(239, 1, 105, 0, 'Como', 'COM', 'CO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(240, 1, 105, 0, 'Cosenza', 'COS', 'CS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(241, 1, 105, 0, 'Cremona', 'CRE', 'CR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(242, 1, 105, 0, 'Crotone', 'CRO', 'KR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(243, 1, 105, 0, 'Cuneo', 'CUN', 'CN', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(244, 1, 105, 0, 'Enna', 'ENN', 'EN', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(245, 1, 105, 0, 'Ferrara', 'FER', 'FE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(246, 1, 105, 0, 'Firenze', 'FIR', 'FI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(247, 1, 105, 0, 'Foggia', 'FOG', 'FG', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(248, 1, 105, 0, 'Forli-Cesena', 'FOC', 'FC', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(249, 1, 105, 0, 'Frosinone', 'FRO', 'FR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(250, 1, 105, 0, 'Genova', 'GEN', 'GE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(251, 1, 105, 0, 'Gorizia', 'GOR', 'GO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(252, 1, 105, 0, 'Grosseto', 'GRO', 'GR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(253, 1, 105, 0, 'Imperia', 'IMP', 'IM', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(254, 1, 105, 0, 'Isernia', 'ISE', 'IS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(255, 1, 105, 0, 'L''Aquila', 'AQU', 'AQ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(256, 1, 105, 0, 'La Spezia', 'LAS', 'SP', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(257, 1, 105, 0, 'Latina', 'LAT', 'LT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(258, 1, 105, 0, 'Lecce', 'LEC', 'LE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(259, 1, 105, 0, 'Lecco', 'LCC', 'LC', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(260, 1, 105, 0, 'Livorno', 'LIV', 'LI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(261, 1, 105, 0, 'Lodi', 'LOD', 'LO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(262, 1, 105, 0, 'Lucca', 'LUC', 'LU', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(263, 1, 105, 0, 'Macerata', 'MAC', 'MC', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(264, 1, 105, 0, 'Mantova', 'MAN', 'MN', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(265, 1, 105, 0, 'Massa-Carrara', 'MAS', 'MS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(266, 1, 105, 0, 'Matera', 'MAA', 'MT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(267, 1, 105, 0, 'Medio Campidano', 'MED', 'VS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(268, 1, 105, 0, 'Messina', 'MES', 'ME', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(269, 1, 105, 0, 'Milano', 'MIL', 'MI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(270, 1, 105, 0, 'Modena', 'MOD', 'MO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(271, 1, 105, 0, 'Napoli', 'NAP', 'NA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(272, 1, 105, 0, 'Novara', 'NOV', 'NO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(273, 1, 105, 0, 'Nuoro', 'NUR', 'NU', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(274, 1, 105, 0, 'Ogliastra', 'OGL', 'OG', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(275, 1, 105, 0, 'Olbia-Tempio', 'OLB', 'OT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(276, 1, 105, 0, 'Oristano', 'ORI', 'OR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(277, 1, 105, 0, 'Padova', 'PDA', 'PD', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(278, 1, 105, 0, 'Palermo', 'PAL', 'PA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(279, 1, 105, 0, 'Parma', 'PAA', 'PR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(280, 1, 105, 0, 'Pavia', 'PAV', 'PV', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(281, 1, 105, 0, 'Perugia', 'PER', 'PG', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(282, 1, 105, 0, 'Pesaro e Urbino', 'PES', 'PU', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(283, 1, 105, 0, 'Pescara', 'PSC', 'PE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(284, 1, 105, 0, 'Piacenza', 'PIA', 'PC', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(285, 1, 105, 0, 'Pisa', 'PIS', 'PI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(286, 1, 105, 0, 'Pistoia', 'PIT', 'PT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(287, 1, 105, 0, 'Pordenone', 'POR', 'PN', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(288, 1, 105, 0, 'Potenza', 'PTZ', 'PZ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(289, 1, 105, 0, 'Prato', 'PRA', 'PO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(290, 1, 105, 0, 'Ragusa', 'RAG', 'RG', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(291, 1, 105, 0, 'Ravenna', 'RAV', 'RA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(292, 1, 105, 0, 'Reggio Calabria', 'REG', 'RC', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(293, 1, 105, 0, 'Reggio Emilia', 'REE', 'RE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(294, 1, 105, 0, 'Rieti', 'RIE', 'RI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(295, 1, 105, 0, 'Rimini', 'RIM', 'RN', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(296, 1, 105, 0, 'Roma', 'ROM', 'RM', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(297, 1, 105, 0, 'Rovigo', 'ROV', 'RO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(298, 1, 105, 0, 'Salerno', 'SAL', 'SA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(299, 1, 105, 0, 'Sassari', 'SAS', 'SS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(300, 1, 105, 0, 'Savona', 'SAV', 'SV', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(301, 1, 105, 0, 'Siena', 'SIE', 'SI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(302, 1, 105, 0, 'Siracusa', 'SIR', 'SR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(303, 1, 105, 0, 'Sondrio', 'SOO', 'SO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(304, 1, 105, 0, 'Taranto', 'TAR', 'TA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(305, 1, 105, 0, 'Teramo', 'TER', 'TE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(306, 1, 105, 0, 'Terni', 'TRN', 'TR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(307, 1, 105, 0, 'Torino', 'TOR', 'TO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(308, 1, 105, 0, 'Trapani', 'TRA', 'TP', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(309, 1, 105, 0, 'Trento', 'TRE', 'TN', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(310, 1, 105, 0, 'Treviso', 'TRV', 'TV', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(311, 1, 105, 0, 'Trieste', 'TRI', 'TS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(312, 1, 105, 0, 'Udine', 'UDI', 'UD', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(313, 1, 105, 0, 'Varese', 'VAR', 'VA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(314, 1, 105, 0, 'Venezia', 'VEN', 'VE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(315, 1, 105, 0, 'Verbano Cusio Ossola', 'VCO', 'VB', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(316, 1, 105, 0, 'Vercelli', 'VER', 'VC', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(317, 1, 105, 0, 'Verona', 'VRN', 'VR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(318, 1, 105, 0, 'Vibo Valenzia', 'VIV', 'VV', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(319, 1, 105, 0, 'Vicenza', 'VII', 'VI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(320, 1, 105, 0, 'Viterbo', 'VIT', 'VT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(321, 1, 195, 0, 'A Coru', 'ACO', '15', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(322, 1, 195, 0, 'Alava', 'ALA', '01', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(323, 1, 195, 0, 'Albacete', 'ALB', '02', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(324, 1, 195, 0, 'Alicante', 'ALI', '03', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(325, 1, 195, 0, 'Almeria', 'ALM', '04', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(326, 1, 195, 0, 'Asturias', 'AST', '33', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(327, 1, 195, 0, 'Avila', 'AVI', '05', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(328, 1, 195, 0, 'Badajoz', 'BAD', '06', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(329, 1, 195, 0, 'Baleares', 'BAL', '07', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(330, 1, 195, 0, 'Barcelona', 'BAR', '08', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(331, 1, 195, 0, 'Burgos', 'BUR', '09', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(332, 1, 195, 0, 'Caceres', 'CAC', '10', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(333, 1, 195, 0, 'Cadiz', 'CAD', '11', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(334, 1, 195, 0, 'Cantabria', 'CAN', '39', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(335, 1, 195, 0, 'Castellon', 'CAS', '12', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(336, 1, 195, 0, 'Ceuta', 'CEU', '51', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(337, 1, 195, 0, 'Ciudad Real', 'CIU', '13', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(338, 1, 195, 0, 'Cordoba', 'COR', '14', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(339, 1, 195, 0, 'Cuenca', 'CUE', '16', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(340, 1, 195, 0, 'Girona', 'GIR', '17', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(341, 1, 195, 0, 'Granada', 'GRA', '18', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(342, 1, 195, 0, 'Guadalajara', 'GUA', '19', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(343, 1, 195, 0, 'Guipuzcoa', 'GUI', '20', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(344, 1, 195, 0, 'Huelva', 'HUL', '21', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(345, 1, 195, 0, 'Huesca', 'HUS', '22', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(346, 1, 195, 0, 'Jaen', 'JAE', '23', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(347, 1, 195, 0, 'La Rioja', 'LRI', '26', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(348, 1, 195, 0, 'Las Palmas', 'LPA', '35', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(349, 1, 195, 0, 'Leon', 'LEO', '24', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(350, 1, 195, 0, 'Lleida', 'LLE', '25', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(351, 1, 195, 0, 'Lugo', 'LUG', '27', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(352, 1, 195, 0, 'Madrid', 'MAD', '28', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(353, 1, 195, 0, 'Malaga', 'MAL', '29', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(354, 1, 195, 0, 'Melilla', 'MEL', '52', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(355, 1, 195, 0, 'Murcia', 'MUR', '30', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(356, 1, 195, 0, 'Navarra', 'NAV', '31', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(357, 1, 195, 0, 'Ourense', 'OUR', '32', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(358, 1, 195, 0, 'Palencia', 'PAL', '34', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(359, 1, 195, 0, 'Pontevedra', 'PON', '36', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(360, 1, 195, 0, 'Salamanca', 'SAL', '37', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(361, 1, 195, 0, 'Santa Cruz de Tenerife', 'SCT', '38', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(362, 1, 195, 0, 'Segovia', 'SEG', '40', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(363, 1, 195, 0, 'Sevilla', 'SEV', '41', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(364, 1, 195, 0, 'Soria', 'SOR', '42', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(365, 1, 195, 0, 'Tarragona', 'TAR', '43', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(366, 1, 195, 0, 'Teruel', 'TER', '44', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(367, 1, 195, 0, 'Toledo', 'TOL', '45', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(368, 1, 195, 0, 'Valencia', 'VAL', '46', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(369, 1, 195, 0, 'Valladolid', 'VLL', '47', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(370, 1, 195, 0, 'Vizcaya', 'VIZ', '48', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(371, 1, 195, 0, 'Zamora', 'ZAM', '49', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(372, 1, 195, 0, 'Zaragoza', 'ZAR', '50', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(373, 1, 10, 0, 'Buenos Aires', 'BAS', 'BA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(374, 1, 10, 0, 'Ciudad Autonoma De Buenos Aires', 'CBA', 'CB', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(375, 1, 10, 0, 'Catamarca', 'CAT', 'CA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(376, 1, 10, 0, 'Chaco', 'CHO', 'CH', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(377, 1, 10, 0, 'Chubut', 'CTT', 'CT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(378, 1, 10, 0, 'Cordoba', 'COD', 'CO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(379, 1, 10, 0, 'Corrientes', 'CRI', 'CR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(380, 1, 10, 0, 'Entre Rios', 'ERS', 'ER', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(381, 1, 10, 0, 'Formosa', 'FRM', 'FR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(382, 1, 10, 0, 'Jujuy', 'JUJ', 'JU', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(383, 1, 10, 0, 'La Pampa', 'LPM', 'LP', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(384, 1, 10, 0, 'La Rioja', 'LRI', 'LR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(385, 1, 10, 0, 'Mendoza', 'MED', 'ME', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(386, 1, 10, 0, 'Misiones', 'MIS', 'MI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(387, 1, 10, 0, 'Neuquen', 'NQU', 'NQ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(388, 1, 10, 0, 'Rio Negro', 'RNG', 'RN', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(389, 1, 10, 0, 'Salta', 'SAL', 'SA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `ecom_virtuemart_states` (`virtuemart_state_id`, `virtuemart_vendor_id`, `virtuemart_country_id`, `virtuemart_worldzone_id`, `state_name`, `state_3_code`, `state_2_code`, `ordering`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(390, 1, 10, 0, 'San Juan', 'SJN', 'SJ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(391, 1, 10, 0, 'San Luis', 'SLU', 'SL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(392, 1, 10, 0, 'Santa Cruz', 'SCZ', 'SC', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(393, 1, 10, 0, 'Santa Fe', 'SFE', 'SF', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(394, 1, 10, 0, 'Santiago Del Estero', 'SEN', 'SE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(395, 1, 10, 0, 'Tierra Del Fuego', 'TFE', 'TF', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(396, 1, 10, 0, 'Tucuman', 'TUC', 'TU', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(397, 1, 11, 0, 'Aragatsotn', 'ARG', 'AG', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(398, 1, 11, 0, 'Ararat', 'ARR', 'AR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(399, 1, 11, 0, 'Armavir', 'ARM', 'AV', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(400, 1, 11, 0, 'Gegharkunik', 'GEG', 'GR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(401, 1, 11, 0, 'Kotayk', 'KOT', 'KT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(402, 1, 11, 0, 'Lori', 'LOR', 'LO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(403, 1, 11, 0, 'Shirak', 'SHI', 'SH', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(404, 1, 11, 0, 'Syunik', 'SYU', 'SU', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(405, 1, 11, 0, 'Tavush', 'TAV', 'TV', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(406, 1, 11, 0, 'Vayots-Dzor', 'VAD', 'VD', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(407, 1, 11, 0, 'Yerevan', 'YER', 'ER', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(408, 1, 99, 0, 'Andaman & Nicobar Islands', 'ANI', 'AI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(409, 1, 99, 0, 'Andhra Pradesh', 'AND', 'AN', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(410, 1, 99, 0, 'Arunachal Pradesh', 'ARU', 'AR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(411, 1, 99, 0, 'Assam', 'ASS', 'AS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(412, 1, 99, 0, 'Bihar', 'BIH', 'BI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(413, 1, 99, 0, 'Chandigarh', 'CHA', 'CA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(414, 1, 99, 0, 'Chhatisgarh', 'CHH', 'CH', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(415, 1, 99, 0, 'Dadra & Nagar Haveli', 'DAD', 'DD', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(416, 1, 99, 0, 'Daman & Diu', 'DAM', 'DA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(417, 1, 99, 0, 'Delhi', 'DEL', 'DE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(418, 1, 99, 0, 'Goa', 'GOA', 'GO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(419, 1, 99, 0, 'Gujarat', 'GUJ', 'GU', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(420, 1, 99, 0, 'Haryana', 'HAR', 'HA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(421, 1, 99, 0, 'Himachal Pradesh', 'HIM', 'HI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(422, 1, 99, 0, 'Jammu & Kashmir', 'JAM', 'JA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(423, 1, 99, 0, 'Jharkhand', 'JHA', 'JH', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(424, 1, 99, 0, 'Karnataka', 'KAR', 'KA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(425, 1, 99, 0, 'Kerala', 'KER', 'KE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(426, 1, 99, 0, 'Lakshadweep', 'LAK', 'LA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(427, 1, 99, 0, 'Madhya Pradesh', 'MAD', 'MD', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(428, 1, 99, 0, 'Maharashtra', 'MAH', 'MH', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(429, 1, 99, 0, 'Manipur', 'MAN', 'MN', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(430, 1, 99, 0, 'Meghalaya', 'MEG', 'ME', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(431, 1, 99, 0, 'Mizoram', 'MIZ', 'MI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(432, 1, 99, 0, 'Nagaland', 'NAG', 'NA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(433, 1, 99, 0, 'Orissa', 'ORI', 'OR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(434, 1, 99, 0, 'Pondicherry', 'PON', 'PO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(435, 1, 99, 0, 'Punjab', 'PUN', 'PU', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(436, 1, 99, 0, 'Rajasthan', 'RAJ', 'RA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(437, 1, 99, 0, 'Sikkim', 'SIK', 'SI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(438, 1, 99, 0, 'Tamil Nadu', 'TAM', 'TA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(439, 1, 99, 0, 'Tripura', 'TRI', 'TR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(440, 1, 99, 0, 'Uttaranchal', 'UAR', 'UA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(441, 1, 99, 0, 'Uttar Pradesh', 'UTT', 'UT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(442, 1, 99, 0, 'West Bengal', 'WES', 'WE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(443, 1, 101, 0, 'Ahmadi va Kohkiluyeh', 'BOK', 'BO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(444, 1, 101, 0, 'Ardabil', 'ARD', 'AR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(445, 1, 101, 0, 'Azarbayjan-e Gharbi', 'AZG', 'AG', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(446, 1, 101, 0, 'Azarbayjan-e Sharqi', 'AZS', 'AS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(447, 1, 101, 0, 'Bushehr', 'BUS', 'BU', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(448, 1, 101, 0, 'Chaharmahal va Bakhtiari', 'CMB', 'CM', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(449, 1, 101, 0, 'Esfahan', 'ESF', 'ES', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(450, 1, 101, 0, 'Fars', 'FAR', 'FA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(451, 1, 101, 0, 'Gilan', 'GIL', 'GI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(452, 1, 101, 0, 'Gorgan', 'GOR', 'GO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(453, 1, 101, 0, 'Hamadan', 'HAM', 'HA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(454, 1, 101, 0, 'Hormozgan', 'HOR', 'HO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(455, 1, 101, 0, 'Ilam', 'ILA', 'IL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(456, 1, 101, 0, 'Kerman', 'KER', 'KE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(457, 1, 101, 0, 'Kermanshah', 'BAK', 'BA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(458, 1, 101, 0, 'Khorasan-e Junoubi', 'KHJ', 'KJ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(459, 1, 101, 0, 'Khorasan-e Razavi', 'KHR', 'KR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(460, 1, 101, 0, 'Khorasan-e Shomali', 'KHS', 'KS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(461, 1, 101, 0, 'Khuzestan', 'KHU', 'KH', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(462, 1, 101, 0, 'Kordestan', 'KOR', 'KO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(463, 1, 101, 0, 'Lorestan', 'LOR', 'LO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(464, 1, 101, 0, 'Markazi', 'MAR', 'MR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(465, 1, 101, 0, 'Mazandaran', 'MAZ', 'MZ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(466, 1, 101, 0, 'Qazvin', 'QAS', 'QA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(467, 1, 101, 0, 'Qom', 'QOM', 'QO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(468, 1, 101, 0, 'Semnan', 'SEM', 'SE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(469, 1, 101, 0, 'Sistan va Baluchestan', 'SBA', 'SB', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(470, 1, 101, 0, 'Tehran', 'TEH', 'TE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(471, 1, 101, 0, 'Yazd', 'YAZ', 'YA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(472, 1, 101, 0, 'Zanjan', 'ZAN', 'ZA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(535, 1, 84, 0, 'ΛΕΥΚΑΔΑΣ', 'ΛΕΥ', 'ΛΕ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(532, 1, 84, 0, 'ΛΑΡΙΣΑΣ', 'ΛΑΡ', 'ΛΡ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(504, 1, 84, 0, 'ΑΡΚΑΔΙΑΣ', 'ΑΡΚ', 'ΑΚ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(503, 1, 84, 0, 'ΑΡΓΟΛΙΔΑΣ', 'ΑΡΓ', 'ΑΡ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(533, 1, 84, 0, 'ΛΑΣΙΘΙΟΥ', 'ΛΑΣ', 'ΛΑ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(534, 1, 84, 0, 'ΛΕΣΒΟΥ', 'ΛΕΣ', 'ΛΣ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(530, 1, 84, 0, 'ΚΥΚΛΑΔΩΝ', 'ΚΥΚ', 'ΚΥ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(553, 1, 84, 0, 'ΑΙΤΩΛΟΑΚΑΡΝΑΝΙΑΣ', 'ΑΙΤ', 'ΑΙ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(529, 1, 84, 0, 'ΚΟΡΙΝΘΙΑΣ', 'ΚΟΡ', 'ΚΟ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(531, 1, 84, 0, 'ΛΑΚΩΝΙΑΣ', 'ΛΑΚ', 'ΛK', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(517, 1, 84, 0, 'ΗΜΑΘΙΑΣ', 'ΗΜΑ', 'ΗΜ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(518, 1, 84, 0, 'ΗΡΑΚΛΕΙΟΥ', 'ΗΡΑ', 'ΗΡ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(519, 1, 84, 0, 'ΘΕΣΠΡΩΤΙΑΣ', 'ΘΕΠ', 'ΘΠ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(520, 1, 84, 0, 'ΘΕΣΣΑΛΟΝΙΚΗΣ', 'ΘΕΣ', 'ΘΕ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(521, 1, 84, 0, 'ΙΩΑΝΝΙΝΩΝ', 'ΙΩΑ', 'ΙΩ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(522, 1, 84, 0, 'ΚΑΒΑΛΑΣ', 'ΚΑΒ', 'ΚΒ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(523, 1, 84, 0, 'ΚΑΡΔΙΤΣΑΣ', 'ΚΑΡ', 'ΚΡ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(524, 1, 84, 0, 'ΚΑΣΤΟΡΙΑΣ', 'ΚΑΣ', 'ΚΣ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(525, 1, 84, 0, 'ΚΕΡΚΥΡΑΣ', 'ΚΕΡ', 'ΚΕ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(526, 1, 84, 0, 'ΚΕΦΑΛΛΗΝΙΑΣ', 'ΚΕΦ', 'ΚΦ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(527, 1, 84, 0, 'ΚΙΛΚΙΣ', 'ΚΙΛ', 'ΚΙ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(528, 1, 84, 0, 'ΚΟΖΑΝΗΣ', 'ΚΟΖ', 'ΚZ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(507, 1, 84, 0, 'ΑΧΑΪΑΣ', 'ΑΧΑ', 'ΑΧ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(508, 1, 84, 0, 'ΒΟΙΩΤΙΑΣ', 'ΒΟΙ', 'ΒΟ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(509, 1, 84, 0, 'ΓΡΕΒΕΝΩΝ', 'ΓΡΕ', 'ΓΡ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(510, 1, 84, 0, 'ΔΡΑΜΑΣ', 'ΔΡΑ', 'ΔΡ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(511, 1, 84, 0, 'ΔΩΔΕΚΑΝΗΣΟΥ', 'ΔΩΔ', 'ΔΩ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(512, 1, 84, 0, 'ΕΒΡΟΥ', 'ΕΒΡ', 'ΕΒ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(513, 1, 84, 0, 'ΕΥΒΟΙΑΣ', 'ΕΥΒ', 'ΕΥ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(514, 1, 84, 0, 'ΕΥΡΥΤΑΝΙΑΣ', 'ΕΥΡ', 'ΕΡ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(515, 1, 84, 0, 'ΖΑΚΥΝΘΟΥ', 'ΖΑΚ', 'ΖΑ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(516, 1, 84, 0, 'ΗΛΕΙΑΣ', 'ΗΛΕ', 'ΗΛ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(505, 1, 84, 0, 'ΑΡΤΑΣ', 'ΑΡΤ', 'ΑΑ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(506, 1, 84, 0, 'ΑΤΤΙΚΗΣ', 'ΑΤΤ', 'ΑΤ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(536, 1, 84, 0, 'ΜΑΓΝΗΣΙΑΣ', 'ΜΑΓ', 'ΜΑ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(537, 1, 84, 0, 'ΜΕΣΣΗΝΙΑΣ', 'ΜΕΣ', 'ΜΕ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(538, 1, 84, 0, 'ΞΑΝΘΗΣ', 'ΞΑΝ', 'ΞΑ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(539, 1, 84, 0, 'ΠΕΛΛΗΣ', 'ΠΕΛ', 'ΠΕ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(540, 1, 84, 0, 'ΠΙΕΡΙΑΣ', 'ΠΙΕ', 'ΠΙ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(541, 1, 84, 0, 'ΠΡΕΒΕΖΑΣ', 'ΠΡΕ', 'ΠΡ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(542, 1, 84, 0, 'ΡΕΘΥΜΝΗΣ', 'ΡΕΘ', 'ΡΕ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(543, 1, 84, 0, 'ΡΟΔΟΠΗΣ', 'ΡΟΔ', 'ΡΟ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(544, 1, 84, 0, 'ΣΑΜΟΥ', 'ΣΑΜ', 'ΣΑ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(545, 1, 84, 0, 'ΣΕΡΡΩΝ', 'ΣΕΡ', 'ΣΕ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(546, 1, 84, 0, 'ΤΡΙΚΑΛΩΝ', 'ΤΡΙ', 'ΤΡ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(547, 1, 84, 0, 'ΦΘΙΩΤΙΔΑΣ', 'ΦΘΙ', 'ΦΘ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(548, 1, 84, 0, 'ΦΛΩΡΙΝΑΣ', 'ΦΛΩ', 'ΦΛ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(549, 1, 84, 0, 'ΦΩΚΙΔΑΣ', 'ΦΩΚ', 'ΦΩ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(550, 1, 84, 0, 'ΧΑΛΚΙΔΙΚΗΣ', 'ΧΑΛ', 'ΧΑ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(551, 1, 84, 0, 'ΧΑΝΙΩΝ', 'ΧΑΝ', 'ΧΝ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(552, 1, 84, 0, 'ΧΙΟΥ', 'ΧΙΟ', 'ΧΙ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(569, 1, 81, 0, 'Schleswig-Holstein', 'SHO', 'SH', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(554, 1, 81, 0, 'Freie und Hansestadt Hamburg', 'HAM', 'HH', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(555, 1, 81, 0, 'Niedersachsen', 'NIS', 'NI', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(556, 1, 81, 0, 'Freie Hansestadt Bremen', 'HBR', 'HB', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(557, 1, 81, 0, 'Nordrhein-Westfalen', 'NRW', 'NW', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(558, 1, 81, 0, 'Hessen', 'HES', 'HE', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(559, 1, 81, 0, 'Rheinland-Pfalz', 'RLP', 'RP', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(560, 1, 81, 0, 'Baden-Württemberg', 'BWÜ', 'BW', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(561, 1, 81, 0, 'Freistaat Bayern', 'BAV', 'BY', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(562, 1, 81, 0, 'Saarland', 'SLA', 'SL', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(563, 1, 81, 0, 'Berlin', 'BER', 'BE', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(564, 1, 81, 0, 'Brandenburg', 'BRB', 'BB', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(565, 1, 81, 0, 'Mecklenburg-Vorpommern', 'MVO', 'MV', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(566, 1, 81, 0, 'Freistaat Sachsen', 'SAC', 'SN', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(567, 1, 81, 0, 'Sachsen-Anhalt', 'SAA', 'ST', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(568, 1, 81, 0, 'Freistaat Thüringen', 'THÜ', 'TH', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(570, 1, 176, 0, 'Адыгея Республика', 'AD', '01', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(571, 1, 176, 0, 'Алтай Республика', 'AL', '04', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(572, 1, 176, 0, 'Алтайский край', 'ALT', '22', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(573, 1, 176, 0, 'Амурская область', 'AMU', '28', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(574, 1, 176, 0, 'Архангельская область', 'ARK', '29', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(575, 1, 176, 0, 'Астраханская область', 'AST', '30', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(576, 1, 176, 0, 'Башкортостан Республика', 'BA', '02', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(577, 1, 176, 0, 'Белгородская область', 'BEL', '31', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(578, 1, 176, 0, 'Брянская область', 'BRY', '32', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(579, 1, 176, 0, 'Бурятия Республика', 'BU', '03', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(580, 1, 176, 0, 'Владимирская область', 'VLA', '33', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(581, 1, 176, 0, 'Волгоградская область', 'VGG', '34', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(582, 1, 176, 0, 'Вологодская область', 'VLG', '35', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(583, 1, 176, 0, 'Воронежская область', 'VOR', '36', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(584, 1, 176, 0, 'Дагестан Республика', 'DA', '05', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(585, 1, 176, 0, 'Еврейская автономная область', 'YEV', '79', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(586, 1, 176, 0, 'Забайкальский край', 'ZAB', '75', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(587, 1, 176, 0, 'Ивановская область', 'IVA', '37', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(588, 1, 176, 0, 'Ингушетия Республика', 'IN', '06', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(589, 1, 176, 0, 'Иркутская область', 'IRK', '38', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(590, 1, 176, 0, 'Кабардино-Балкарская Республика', 'KB', '07', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(591, 1, 176, 0, 'Калининградская область', 'KGD', '39', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(592, 1, 176, 0, 'Калмыкия Республика', 'KL', '08', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(593, 1, 176, 0, 'Калужская область', 'KLU', '40', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(594, 1, 176, 0, 'Камчатский край', 'KAM', '41', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(595, 1, 176, 0, 'Карачаево-Черкесская Республика', 'KC', '09', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(596, 1, 176, 0, 'Карелия Республика', 'KR', '10', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(597, 1, 176, 0, 'Кемеровская область', 'KEM', '42', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(598, 1, 176, 0, 'Кировская область', 'KIR', '43', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(599, 1, 176, 0, 'Коми Республика', 'KO', '11', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(600, 1, 176, 0, 'Костромская область', 'KOS', '44', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(601, 1, 176, 0, 'Краснодарский край', 'KDA', '23', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(602, 1, 176, 0, 'Красноярский край', 'KIA', '24', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(603, 1, 176, 0, 'Курганская область', 'KGN', '45', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(604, 1, 176, 0, 'Курская область', 'KRS', '46', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(605, 1, 176, 0, 'Ленинградская область', 'LEN', '47', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(606, 1, 176, 0, 'Липецкая область', 'LIP', '48', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(607, 1, 176, 0, 'Магаданская область', 'MAG', '49', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(608, 1, 176, 0, 'Марий Эл Республика', 'ME', '12', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(609, 1, 176, 0, 'Мордовия Республика', 'MO', '13', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(610, 1, 176, 0, 'Москва', 'MOW', '77', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(611, 1, 176, 0, 'Московская область', 'MOS', '50', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(612, 1, 176, 0, 'Мурманская область', 'MUR', '51', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(613, 1, 176, 0, 'Ненецкий автономный округ', 'NEN', '83', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(614, 1, 176, 0, 'Нижегородская область', 'NIZ', '52', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(615, 1, 176, 0, 'Новгородская область', 'NGR', '53', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(616, 1, 176, 0, 'Новосибирская область', 'NVS', '54', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(617, 1, 176, 0, 'Омская область', 'OMS', '55', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(618, 1, 176, 0, 'Оренбургская область', 'ORE', '56', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(619, 1, 176, 0, 'Орловская область', 'ORL', '57', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(620, 1, 176, 0, 'Пензенская область', 'PNZ', '58', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(621, 1, 176, 0, 'Пермский край', 'PER', '59', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(622, 1, 176, 0, 'Приморский край', 'PRI', '25', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(623, 1, 176, 0, 'Псковская область', 'PSK', '60', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(624, 1, 176, 0, 'Ростовская область', 'ROS', '61', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(625, 1, 176, 0, 'Рязанская область', 'RYA', '62', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(626, 1, 176, 0, 'Самарская область', 'SAM', '63', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(627, 1, 176, 0, 'Санкт-Петербург', 'SPE', '78', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(628, 1, 176, 0, 'Саратовская область', 'SAR', '64', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(629, 1, 176, 0, 'Саха (Якутия) Республика', 'SA', '14', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(630, 1, 176, 0, 'Сахалинская область', 'SAK', '65', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(631, 1, 176, 0, 'Свердловская область', 'SVE', '66', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(632, 1, 176, 0, 'Северная Осетия-Алания Республика', 'SE', '15', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(633, 1, 176, 0, 'Смоленская область', 'SMO', '67', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(634, 1, 176, 0, 'Ставропольский край', 'STA', '26', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(635, 1, 176, 0, 'Тамбовская область', 'TAM', '68', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(636, 1, 176, 0, 'Татарстан Республика', 'TA', '16', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(637, 1, 176, 0, 'Тверская область', 'TVE', '69', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(638, 1, 176, 0, 'Томская область', 'TOM', '70', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(639, 1, 176, 0, 'Тульская область', 'TUL', '71', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(640, 1, 176, 0, 'Тыва Республика', 'TY', '17', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(641, 1, 176, 0, 'Тюменская область', 'TYU', '72', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(642, 1, 176, 0, 'Удмуртская Республика', 'UD', '18', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(643, 1, 176, 0, 'Ульяновская область', 'ULY', '73', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(644, 1, 176, 0, 'Хакасия Республика', 'KK', '19', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(645, 1, 176, 0, 'Челябинская область', 'CHE', '74', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(646, 1, 176, 0, 'Чеченская Республика', 'CE', '20', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(647, 1, 176, 0, 'Чувашская Республика', 'CU', '21', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(648, 1, 176, 0, 'Чукотский автономный округ', 'CHU', '87', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(649, 1, 176, 0, 'Хабаровский край', 'KHA', '27', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(650, 1, 176, 0, 'Ханты-Мансийский автономный округ', 'KHM', '86', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(651, 1, 176, 0, 'Ямало-Ненецкий автономный округ', 'YAN', '89', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(652, 1, 176, 0, 'Ярославская область', 'YAR', '76', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(653, 1, 209, 0, 'กระบี่', 'กบ', 'กบ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(654, 1, 209, 0, 'กรุงเทพมหานคร', 'กทม', 'กท', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(655, 1, 209, 0, 'กาญจนบุรี', 'กจ', 'กจ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(656, 1, 209, 0, 'กาฬสินธุ์', 'กส', 'กส', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(657, 1, 209, 0, 'กำแพงเพชร', 'กพ', 'กพ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(658, 1, 209, 0, 'ขอนแก่น', 'ขก', 'ขก', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(659, 1, 209, 0, 'จันทบุรี', 'จบ', 'จบ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(660, 1, 209, 0, 'ฉะเชิงเทรา', 'ฉช', 'ฉช', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(661, 1, 209, 0, 'ชลบุรี', 'ชบ', 'ชบ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(662, 1, 209, 0, 'ชัยนาท', 'ชน', 'ชน', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(663, 1, 209, 0, 'ชัยภูมิ', 'ชย', 'ชย', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(664, 1, 209, 0, 'ชุมพร', 'ชพ', 'ชพ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(665, 1, 209, 0, 'เชียงราย', 'ชร', 'ชร', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(666, 1, 209, 0, 'เชียงใหม่', 'ชม', 'ชม', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(667, 1, 209, 0, 'ตรัง', 'ตง', 'ตง', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(668, 1, 209, 0, 'ตราด', 'ตร', 'ตร', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(669, 1, 209, 0, 'ตาก', 'ตก', 'ตก', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(670, 1, 209, 0, 'นครนายก', 'นย', 'นย', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(671, 1, 209, 0, 'นครปฐม', 'นฐ', 'นฐ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(672, 1, 209, 0, 'นครพนม', 'นพ', 'นพ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(673, 1, 209, 0, 'นครราชสีมา', 'นม', 'นม', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(674, 1, 209, 0, 'นครศรีธรรมราช', 'นศ', 'นศ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(675, 1, 209, 0, 'นครสวรรค์', 'นว', 'นว', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(676, 1, 209, 0, 'นนทบุรี', 'นบ', 'นบ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(677, 1, 209, 0, 'นราธิวาส', 'นธ', 'นธ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(678, 1, 209, 0, 'น่าน', 'นน', 'นน', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(679, 1, 209, 0, 'บุรีรัมย์', 'บร', 'บร', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(680, 1, 209, 0, 'บึงกาฬ', 'บก', 'บก', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(681, 1, 209, 0, 'ปทุมธานี', 'ปท', 'ปท', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(682, 1, 209, 0, 'ประจวบคีรีขันธ์', 'ปข', 'ปข', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(683, 1, 209, 0, 'ปราจีนบุรี', 'ปจ', 'ปจ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(684, 1, 209, 0, 'ปัตตานี', 'ปน', 'ปน', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(685, 1, 209, 0, 'พระนครศรีอยุธยา', 'อย', 'อย', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(686, 1, 209, 0, 'พังงา', 'พง', 'พง', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(687, 1, 209, 0, 'พัทลุง', 'พท', 'พท', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(688, 1, 209, 0, 'พิจิตร', 'พจ', 'พจ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(689, 1, 209, 0, 'พิษณุโลก', 'พล', 'พล', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(690, 1, 209, 0, 'เพชรบุรี', 'พบ', 'พบ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(691, 1, 209, 0, 'เพชรบูรณ์', 'พช', 'พช', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(692, 1, 209, 0, 'แพร่', 'พร', 'พร', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(693, 1, 209, 0, 'พะเยา', 'พย', 'พย', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(694, 1, 209, 0, 'ภูเก็ต', 'ภก', 'ภก', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(695, 1, 209, 0, 'มหาสารคาม', 'มค', 'มค', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(696, 1, 209, 0, 'แม่ฮ่องสอน', 'มส', 'มส', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(697, 1, 209, 0, 'มุกดาหาร', 'มห', 'มห', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(698, 1, 209, 0, 'ยะลา', 'ยล', 'ยล', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(699, 1, 209, 0, 'ยโสธร', 'ยส', 'ยส', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(700, 1, 209, 0, 'ร้อยเอ็ด', 'รอ', 'รอ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(701, 1, 209, 0, 'ระนอง', 'รน', 'รน', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(702, 1, 209, 0, 'ระยอง', 'รย', 'รย', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(703, 1, 209, 0, 'ราชบุรี', 'รบ', 'รบ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(704, 1, 209, 0, 'ลพบุรี', 'ลบ', 'ลบ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(705, 1, 209, 0, 'ลำปาง', 'ลป', 'ลป', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(706, 1, 209, 0, 'ลำพูน', 'ลพ', 'ลพ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(707, 1, 209, 0, 'เลย', 'ลย', 'ลย', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(708, 1, 209, 0, 'ศรีสะเกษ', 'ศก', 'ศก', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(709, 1, 209, 0, 'สกลนคร', 'สน', 'สน', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(710, 1, 209, 0, 'สงขลา', 'สข', 'สข', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(711, 1, 209, 0, 'สตูล', 'สต', 'สต', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(712, 1, 209, 0, 'สมุทรปราการ', 'สป', 'สป', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(713, 1, 209, 0, 'สมุทรสงคราม', 'สส', 'สส', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(714, 1, 209, 0, 'สมุทรสาคร', 'สค', 'สค', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(715, 1, 209, 0, 'สระบุรี', 'สบ', 'สบ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(716, 1, 209, 0, 'สระแก้ว', 'สก', 'สก', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(717, 1, 209, 0, 'สิงห์บุรี', 'สห', 'สห', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(718, 1, 209, 0, 'สุโขทัย', 'สท', 'สท', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(719, 1, 209, 0, 'สุพรรณบุรี', 'สพ', 'สพ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(720, 1, 209, 0, 'สุราษฎร์ธานี', 'สฎ', 'สฎ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(721, 1, 209, 0, 'สุรินทร์', 'สร', 'สร', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(722, 1, 209, 0, 'หนองคาย', 'นค', 'นค', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(723, 1, 209, 0, 'หนองบัวลำภู', 'นภ', 'นภ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(724, 1, 209, 0, 'อ่างทอง', 'อท', 'อท', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(725, 1, 209, 0, 'อุดรธานี', 'อด', 'อด', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(726, 1, 209, 0, 'อุตรดิตถ์', 'อต', 'อต', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(727, 1, 209, 0, 'อุทัยธานี', 'อน', 'อน', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(728, 1, 209, 0, 'อุบลราชธานี', 'อบ', 'อบ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(729, 1, 209, 0, 'อำนาจเจริญ', 'อจ', 'อจ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(730, 1, 150, 0, 'Drenthe', 'DR', 'DR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(731, 1, 150, 0, 'Flevoland', 'FLV', 'FL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(732, 1, 150, 0, 'Friesland', 'FR', 'FR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(733, 1, 150, 0, 'Gelderland', 'GLD', 'GL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(734, 1, 150, 0, 'Groningen', 'GR', 'GR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(735, 1, 150, 0, 'Limburg', 'LB', 'LB', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(736, 1, 150, 0, 'Noord-Brabant', 'NB', 'NB', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(737, 1, 150, 0, 'Noord-Holland', 'NH', 'NH', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(738, 1, 150, 0, 'Overijssel', 'OVR', 'OV', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(739, 1, 150, 0, 'Utrecht', 'UT', 'UT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(740, 1, 150, 0, 'Zuid-Holland', 'ZH', 'ZH', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(741, 1, 150, 0, 'Zeeland', 'ZL', 'ZL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(742, 1, 21, 0, 'Antwerpen', 'ant', 'AW', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(743, 1, 21, 0, 'Limburg', 'lim', 'LI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(744, 1, 21, 0, 'Oost-Vlaanderen', 'ov', 'OV', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(745, 1, 21, 0, 'Vlaams-Brabant', 'vb', 'VB', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(746, 1, 21, 0, 'West-Vlaanderen', 'wv', 'WV', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(747, 1, 21, 0, 'Waals-Brabant (Brabant wallon)', 'wb', 'WB', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(748, 1, 21, 0, 'Henegouwen (Hainaut),', 'he', 'HE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(749, 1, 21, 0, 'Luik (Liège/Lüttich)', 'lui', 'LU', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(750, 1, 21, 0, 'Luxemburg (Luxembourg)', 'lux', 'LX', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(751, 1, 215, 0, 'Adana', 'ADN', '01', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(752, 1, 215, 0, 'Adıyaman', 'ADY', '02', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(753, 1, 215, 0, 'Afyon', 'AFN', '03', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(754, 1, 215, 0, 'Ağrı', 'AGR', '04', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(755, 1, 215, 0, 'Amasya', 'AMS', '05', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(756, 1, 215, 0, 'Ankara', 'ANK', '06', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(757, 1, 215, 0, 'Antalya', 'ANT', '07', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(758, 1, 215, 0, 'Artvin', 'ART', '08', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(759, 1, 215, 0, 'Aydın', 'AYD', '09', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(760, 1, 215, 0, 'Balıkesir', 'BLK', '10', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(761, 1, 215, 0, 'Bilecik', 'BLC', '11', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(762, 1, 215, 0, 'Bingöl', 'BIN', '12', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(763, 1, 215, 0, 'Bitlis', 'BIT', '13', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(764, 1, 215, 0, 'Bolu', 'BOL', '14', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(765, 1, 215, 0, 'Burdur', 'DRD', '15', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(766, 1, 215, 0, 'Bursa', 'BUR', '16', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(767, 1, 215, 0, 'Çanakkale', 'CNK', '17', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(768, 1, 215, 0, 'Çankırı', 'CAK', '18', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(769, 1, 215, 0, 'Çorum', 'COR', '19', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(770, 1, 215, 0, 'Denizli', 'DEN', '20', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(771, 1, 215, 0, 'Diyarbakır', 'DYB', '21', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(772, 1, 215, 0, 'Edirne', 'EDR', '22', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(773, 1, 215, 0, 'Elazığ', 'ELZ', '23', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(774, 1, 215, 0, 'Erzincan', 'ERN', '24', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(775, 1, 215, 0, 'Erzurum', 'ERZ', '25', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(776, 1, 215, 0, 'Eskişehir', 'ESK', '26', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(777, 1, 215, 0, 'Gaziantep', 'GZA', '27', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(778, 1, 215, 0, 'Giresun', 'GRS', '28', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(779, 1, 215, 0, 'Gümüşhane', 'GMH', '29', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(780, 1, 215, 0, 'Hakkari', 'HKK', '30', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(781, 1, 215, 0, 'Hatay', 'HTY', '31', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(782, 1, 215, 0, 'Isparta', 'ISP', '32', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(783, 1, 215, 0, 'İçel (Mersin)', 'ICE', '33', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(784, 1, 215, 0, 'İstanbul', 'IST', '34', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(785, 1, 215, 0, 'İzmir', 'IZM', '35', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(786, 1, 215, 0, 'Kars', 'KRS', '36', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(787, 1, 215, 0, 'Kastamonu', 'KST', '37', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(788, 1, 215, 0, 'Kayseri', 'KYS', '38', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(789, 1, 215, 0, 'Kırklareli', 'KIR', '39', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(790, 1, 215, 0, 'Kırşehir', 'KIS', '40', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(791, 1, 215, 0, 'Kocaeli', 'KCL', '41', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(792, 1, 215, 0, 'Konya', 'KNY', '42', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(793, 1, 215, 0, 'Kütahya', 'KTH', '43', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(794, 1, 215, 0, 'Malatya', 'MLT', '44', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(795, 1, 215, 0, 'Manisa', 'MNS', '45', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(796, 1, 215, 0, 'K.maraş', 'KAH', '46', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(797, 1, 215, 0, 'Mardin', 'MRD', '47', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(798, 1, 215, 0, 'Muğla', 'MGL', '48', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(799, 1, 215, 0, 'Muş', 'MUS', '49', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `ecom_virtuemart_states` (`virtuemart_state_id`, `virtuemart_vendor_id`, `virtuemart_country_id`, `virtuemart_worldzone_id`, `state_name`, `state_3_code`, `state_2_code`, `ordering`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(800, 1, 215, 0, 'Nevşehir', 'NEV', '50', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(801, 1, 215, 0, 'Niğde', 'NIG', '51', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(802, 1, 215, 0, 'Ordu', 'ORD', '52', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(803, 1, 215, 0, 'Rize', 'RIZ', '53', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(804, 1, 215, 0, 'Sakarya', 'SKR', '54', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(805, 1, 215, 0, 'Samsun', 'SMS', '55', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(806, 1, 215, 0, 'Siirt', 'SRT', '56', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(807, 1, 215, 0, 'Sinop', 'SNP', '57', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(808, 1, 215, 0, 'Sivas', 'SVS', '58', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(809, 1, 215, 0, 'Tekirdağ', 'TKR', '59', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(810, 1, 215, 0, 'Tokat', 'TKT', '60', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(811, 1, 215, 0, 'Trabzon', 'TRZ', '61', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(812, 1, 215, 0, 'Tunceli', 'TUN', '62', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(813, 1, 215, 0, 'Şanlıurfa', 'SNF', '63', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(814, 1, 215, 0, 'Uşak', 'USK', '64', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(815, 1, 215, 0, 'Van', 'VAN', '65', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(816, 1, 215, 0, 'Yozgat', 'YZT', '66', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(817, 1, 215, 0, 'Zonguldak', 'ZNG', '67', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(818, 1, 215, 0, 'Aksaray', 'AKS', '68', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(819, 1, 215, 0, 'Bayburt', 'BYB', '69', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(820, 1, 215, 0, 'Karaman', 'KRM', '70', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(821, 1, 215, 0, 'Kırıkkale', 'KRK', '71', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(822, 1, 215, 0, 'Batman', 'BTM', '72', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(823, 1, 215, 0, 'Şırnak', 'SRK', '73', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(824, 1, 215, 0, 'Bartın', 'BRT', '74', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(825, 1, 215, 0, 'Ardahan', 'ARH', '75', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(826, 1, 215, 0, 'Iğdır', 'IGD', '76', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(827, 1, 215, 0, 'Yalova', 'TLV', '77', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(828, 1, 215, 0, 'Karabük', 'KRB', '78', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(829, 1, 215, 0, 'Kilis', 'KLS', '79', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(830, 1, 215, 0, 'Osmaniye', 'OSM', '80', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(831, 1, 215, 0, 'Düzce', 'DZC', '81', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_userfields`
--

CREATE TABLE `ecom_virtuemart_userfields` (
  `virtuemart_userfield_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL DEFAULT '1',
  `userfield_jplugin_id` int(1) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(2048) DEFAULT NULL,
  `type` varchar(70) NOT NULL DEFAULT '',
  `maxlength` int(1) DEFAULT NULL,
  `size` int(1) DEFAULT NULL,
  `required` tinyint(4) NOT NULL DEFAULT '0',
  `cols` int(1) DEFAULT NULL,
  `rows` int(1) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `default` varchar(255) DEFAULT NULL,
  `registration` tinyint(1) NOT NULL DEFAULT '0',
  `shipment` tinyint(1) NOT NULL DEFAULT '0',
  `account` tinyint(1) NOT NULL DEFAULT '1',
  `cart` tinyint(1) NOT NULL DEFAULT '0',
  `readonly` tinyint(1) NOT NULL DEFAULT '0',
  `calculated` tinyint(1) NOT NULL DEFAULT '0',
  `sys` tinyint(4) NOT NULL DEFAULT '0',
  `userfield_params` varchar(17000) NOT NULL DEFAULT '',
  `ordering` int(1) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Holds the fields for the user information';

--
-- Dumping data for table `ecom_virtuemart_userfields`
--

INSERT INTO `ecom_virtuemart_userfields` (`virtuemart_userfield_id`, `virtuemart_vendor_id`, `userfield_jplugin_id`, `name`, `title`, `description`, `type`, `maxlength`, `size`, `required`, `cols`, `rows`, `value`, `default`, `registration`, `shipment`, `account`, `cart`, `readonly`, `calculated`, `sys`, `userfield_params`, `ordering`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(5, 0, 0, 'email', 'COM_VIRTUEMART_REGISTER_EMAIL', '', 'emailaddress', 100, 30, 1, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 0, 1, '', 4, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(6, 0, 0, 'name', 'COM_VIRTUEMART_USER_DISPLAYED_NAME', '', 'text', 25, 30, 1, 0, 0, '', NULL, 1, 0, 1, 0, 0, 0, 1, '', 8, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(7, 0, 0, 'username', 'COM_VIRTUEMART_USERNAME', '', 'text', 25, 30, 1, 0, 0, '', NULL, 1, 0, 1, 0, 0, 0, 1, '', 6, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(8, 0, 0, 'password', 'COM_VIRTUEMART_SHOPPER_FORM_PASSWORD_1', '', 'password', 25, 30, 1, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 0, 1, '', 10, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(9, 0, 0, 'password2', 'COM_VIRTUEMART_SHOPPER_FORM_PASSWORD_2', '', 'password', 25, 30, 1, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 0, 1, '', 12, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(15, 0, 0, 'agreed', 'COM_VIRTUEMART_I_AGREE_TO_TOS', '', 'checkbox', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, '', 13, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(16, 0, 0, 'tos', 'COM_VIRTUEMART_STORE_FORM_TOS', '', 'custom', NULL, NULL, 1, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, 0, 1, '', 14, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(17, 0, 0, 'customer_note', 'COM_VIRTUEMART_CNOTES_CART', '', 'textarea', 2500, NULL, 0, 60, 1, NULL, NULL, 0, 0, 0, 1, 0, 0, 1, '', 13, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(20, 0, 0, 'address_type_name', 'COM_VIRTUEMART_USER_FORM_ADDRESS_LABEL', '', 'text', 32, 30, 1, NULL, NULL, NULL, 'COM_VIRTUEMART_USER_FORM_ST_LABEL', 0, 1, 0, 0, 0, 0, 1, '', 16, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(21, 0, 0, 'delimiter_billto', 'COM_VIRTUEMART_USER_FORM_BILLTO_LBL', '', 'delimiter', 25, 30, 0, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 0, 0, '', 18, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(22, 0, 0, 'company', 'COM_VIRTUEMART_SHOPPER_FORM_COMPANY_NAME', '', 'text', 64, 30, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 20, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(23, 0, 0, 'title', 'COM_VIRTUEMART_SHOPPER_FORM_TITLE', '', 'select', 0, 210, 0, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 0, 1, '', 22, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(24, 0, 0, 'first_name', 'COM_VIRTUEMART_SHOPPER_FORM_FIRST_NAME', '', 'text', 32, 30, 1, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 24, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(25, 0, 0, 'middle_name', 'COM_VIRTUEMART_SHOPPER_FORM_MIDDLE_NAME', '', 'text', 32, 30, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 26, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(26, 0, 0, 'last_name', 'COM_VIRTUEMART_SHOPPER_FORM_LAST_NAME', '', 'text', 32, 30, 1, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 28, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(27, 0, 0, 'address_1', 'COM_VIRTUEMART_SHOPPER_FORM_ADDRESS_1', '', 'text', 64, 30, 1, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 30, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(28, 0, 0, 'address_2', 'COM_VIRTUEMART_SHOPPER_FORM_ADDRESS_2', '', 'text', 64, 30, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 32, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(29, 0, 0, 'zip', 'COM_VIRTUEMART_SHOPPER_FORM_ZIP', '', 'text', 32, 30, 1, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 34, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(35, 0, 0, 'city', 'COM_VIRTUEMART_SHOPPER_FORM_CITY', '', 'text', 32, 30, 1, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 36, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(36, 0, 0, 'virtuemart_country_id', 'COM_VIRTUEMART_SHOPPER_FORM_COUNTRY', '', 'select', 0, 210, 1, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 38, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(37, 0, 0, 'virtuemart_state_id', 'COM_VIRTUEMART_SHOPPER_FORM_STATE', '', 'select', 0, 210, 1, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 40, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(38, 0, 0, 'phone_1', 'COM_VIRTUEMART_SHOPPER_FORM_PHONE', '', 'text', 32, 30, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 42, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(39, 0, 0, 'phone_2', 'COM_VIRTUEMART_SHOPPER_FORM_PHONE2', '', 'text', 32, 30, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 44, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(40, 0, 0, 'fax', 'COM_VIRTUEMART_SHOPPER_FORM_FAX', '', 'text', 32, 30, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 46, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(41, 0, 0, 'delimiter_sendregistration', 'COM_VIRTUEMART_BUTTON_SEND_REG', '', 'delimiter', 25, 30, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, '', 2, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(42, 0, 0, 'delimiter_userinfo', 'COM_VIRTUEMART_ORDER_PRINT_CUST_INFO_LBL', '', 'delimiter', NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 0, 0, '', 14, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(50, 0, 0, 'tax_exemption_number', 'COM_VIRTUEMART_SHOPPER_FORM_TAXEXEMPTION_NBR', 'Vendors can set here a tax exemption number for a shopper. This field is only changeable by administrators.', 'text', 10, 0, 0, 0, 0, NULL, NULL, 0, 0, 1, 1, 0, 0, 0, '', 48, 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(51, 0, 0, 'tax_usage_type', 'COM_VIRTUEMART_SHOPPER_FORM_TAX_USAGE', 'Federal, national, educational, public, or similar often get a special tax. This field is only writable by administrators.', 'select', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 1, 1, 0, 0, 0, '', 50, 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_userfield_values`
--

CREATE TABLE `ecom_virtuemart_userfield_values` (
  `virtuemart_userfield_value_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_userfield_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `fieldtitle` varchar(255) NOT NULL DEFAULT '',
  `fieldvalue` varchar(255) NOT NULL DEFAULT '',
  `sys` tinyint(4) NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Holds the different values for dropdown and radio lists';

--
-- Dumping data for table `ecom_virtuemart_userfield_values`
--

INSERT INTO `ecom_virtuemart_userfield_values` (`virtuemart_userfield_value_id`, `virtuemart_userfield_id`, `fieldtitle`, `fieldvalue`, `sys`, `ordering`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 23, 'COM_VIRTUEMART_SHOPPER_TITLE_MR', 'Mr', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(2, 23, 'COM_VIRTUEMART_SHOPPER_TITLE_MRS', 'Mrs', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(3, 51, 'None', '', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(4, 51, 'Non-resident (Canada)', 'R', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(5, 51, 'Federal government (United States)', 'A', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(6, 51, 'State government (United States)', 'B', 0, 2, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(7, 51, 'Tribe / Status Indian / Indian Band (both)', 'C', 0, 3, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(8, 51, 'Foreign diplomat (both)', 'D', 0, 4, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(9, 51, 'Charitable or benevolent org (both)', 'E', 0, 5, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(10, 51, 'Religious or educational org (both)', 'F', 0, 6, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(11, 51, 'Resale (both)', 'G', 0, 7, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(12, 51, 'Commercial agricultural production (both)', 'H', 0, 8, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(13, 51, 'Industrial production / manufacturer (both)', 'I', 0, 9, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(14, 51, 'Direct pay permit (United States)', 'J', 0, 10, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(15, 51, 'Direct mail (United States)', 'K', 0, 11, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(16, 51, 'Other (both)', 'L', 0, 12, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(17, 51, 'Local government (United States)', 'N', 0, 13, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(18, 51, 'Commercial aquaculture (Canada)', 'P', 0, 14, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(19, 51, 'Commercial Fishery (Canada)', 'Q', 0, 15, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_userinfos`
--

CREATE TABLE `ecom_virtuemart_userinfos` (
  `virtuemart_userinfo_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_user_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `address_type` char(2) NOT NULL DEFAULT '',
  `address_type_name` varchar(32) NOT NULL DEFAULT '',
  `company` varchar(64) DEFAULT NULL,
  `title` varchar(32) DEFAULT NULL,
  `last_name` varchar(96) DEFAULT NULL,
  `first_name` varchar(96) DEFAULT NULL,
  `middle_name` varchar(96) DEFAULT NULL,
  `phone_1` varchar(32) DEFAULT NULL,
  `phone_2` varchar(32) DEFAULT NULL,
  `fax` varchar(32) DEFAULT NULL,
  `address_1` varchar(96) NOT NULL DEFAULT '',
  `address_2` varchar(64) DEFAULT NULL,
  `city` varchar(96) NOT NULL DEFAULT '',
  `virtuemart_state_id` smallint(1) UNSIGNED NOT NULL DEFAULT '0',
  `virtuemart_country_id` smallint(1) UNSIGNED NOT NULL DEFAULT '0',
  `zip` varchar(32) NOT NULL DEFAULT '',
  `agreed` tinyint(1) NOT NULL DEFAULT '0',
  `tos` tinyint(1) NOT NULL DEFAULT '0',
  `customer_note` varchar(5000) NOT NULL DEFAULT '',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Information, BT = BillTo and ST = ShipTo';

--
-- Dumping data for table `ecom_virtuemart_userinfos`
--

INSERT INTO `ecom_virtuemart_userinfos` (`virtuemart_userinfo_id`, `virtuemart_user_id`, `address_type`, `address_type_name`, `company`, `title`, `last_name`, `first_name`, `middle_name`, `phone_1`, `phone_2`, `fax`, `address_1`, `address_2`, `city`, `virtuemart_state_id`, `virtuemart_country_id`, `zip`, `agreed`, `tos`, `customer_note`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 114, 'BT', '', 'DucTien Corp', 'Mr', 'Nguyễn', 'Tiến', 'Đức', '', '', '', '101 Mai Xuân Thưởng, Vĩnh Hải, Nha Trang, Khánh Hòa', '', 'Nha Trang', 0, 230, '65000', 0, 0, '', '2017-01-23 15:57:23', 114, '2017-02-02 07:23:52', 114, '0000-00-00 00:00:00', 0),
(2, 115, 'BT', '', '', '', 'Nguyễn Văn', 'A', '', '', '', '', '101 Mai Xuân Thưởng, Vĩnh Hải', '', 'Nha Trang', 0, 230, '65000', 0, 0, '', '2017-02-11 06:05:54', 115, '2017-02-11 06:05:54', 115, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_vendors`
--

CREATE TABLE `ecom_virtuemart_vendors` (
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL,
  `vendor_name` varchar(64) DEFAULT NULL,
  `vendor_currency` int(1) DEFAULT NULL,
  `vendor_accepted_currencies` varchar(1536) NOT NULL DEFAULT '',
  `vendor_params` varchar(17000) NOT NULL DEFAULT '',
  `metarobot` varchar(20) DEFAULT NULL,
  `metaauthor` varchar(64) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Vendors manage their products in your store';

--
-- Dumping data for table `ecom_virtuemart_vendors`
--

INSERT INTO `ecom_virtuemart_vendors` (`virtuemart_vendor_id`, `vendor_name`, `vendor_currency`, `vendor_accepted_currencies`, `vendor_params`, `metarobot`, `metaauthor`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 'Nguyễn', 147, '', 'max_cats_per_product=-1|vendor_min_pov="0"|vendor_min_poq=1|vendor_freeshipment=0|vendor_address_format=""|vendor_date_format=""|vendor_letter_format="A4"|vendor_letter_orientation="P"|vendor_letter_margin_top="55"|vendor_letter_margin_left="25"|vendor_letter_margin_right="25"|vendor_letter_margin_bottom="25"|vendor_letter_margin_header="20"|vendor_letter_margin_footer="20"|vendor_letter_font="helvetica"|vendor_letter_font_size="8"|vendor_letter_header_font_size="7"|vendor_letter_footer_font_size="6"|vendor_letter_header="1"|vendor_letter_header_line="1"|vendor_letter_header_line_color="#000000"|vendor_letter_header_image="1"|vendor_letter_header_imagesize="60"|vendor_letter_header_cell_height_ratio="1"|vendor_letter_footer="1"|vendor_letter_footer_line="1"|vendor_letter_footer_line_color="#000000"|vendor_letter_footer_cell_height_ratio="1"|vendor_letter_add_tos="0"|vendor_letter_add_tos_newpage="1"|vendor_letter_for_product_pdf="0"|vendor_mail_width=640|vendor_mail_header=1|vendor_mail_tos=1|vendor_mail_logo=1|vendor_mail_logo_width=200|vendor_mail_font="helvetica"|vendor_mail_header_font_size=11|vendor_mail_font_size=12|vendor_mail_footer_font_size=10|', '', '', '0000-00-00 00:00:00', 0, '2017-02-02 07:23:52', 114, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_vendors_vi_vn`
--

CREATE TABLE `ecom_virtuemart_vendors_vi_vn` (
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL,
  `vendor_store_desc` text NOT NULL,
  `vendor_terms_of_service` text NOT NULL,
  `vendor_legal_info` text NOT NULL,
  `vendor_letter_css` text NOT NULL,
  `vendor_letter_header_html` varchar(8000) NOT NULL DEFAULT '<h1>{vm:vendorname}</h1><p>{vm:vendoraddress}</p>',
  `vendor_letter_footer_html` varchar(8000) NOT NULL DEFAULT '<p>{vm:vendorlegalinfo}<br />Page {vm:pagenum}/{vm:pagecount}</p>',
  `vendor_store_name` varchar(180) NOT NULL DEFAULT '',
  `vendor_phone` varchar(26) NOT NULL DEFAULT '',
  `vendor_url` varchar(255) NOT NULL DEFAULT '',
  `metadesc` varchar(400) NOT NULL DEFAULT '',
  `metakey` varchar(400) NOT NULL DEFAULT '',
  `customtitle` varchar(255) NOT NULL DEFAULT '',
  `vendor_invoice_free1` varchar(255) NOT NULL DEFAULT '',
  `vendor_invoice_free2` varchar(255) NOT NULL DEFAULT '',
  `vendor_mail_free1` varchar(255) NOT NULL DEFAULT '',
  `vendor_mail_free2` varchar(255) NOT NULL DEFAULT '',
  `vendor_mail_css` varchar(255) NOT NULL DEFAULT '',
  `slug` varchar(192) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecom_virtuemart_vendors_vi_vn`
--

INSERT INTO `ecom_virtuemart_vendors_vi_vn` (`virtuemart_vendor_id`, `vendor_store_desc`, `vendor_terms_of_service`, `vendor_legal_info`, `vendor_letter_css`, `vendor_letter_header_html`, `vendor_letter_footer_html`, `vendor_store_name`, `vendor_phone`, `vendor_url`, `metadesc`, `metakey`, `customtitle`, `vendor_invoice_free1`, `vendor_invoice_free2`, `vendor_mail_free1`, `vendor_mail_free2`, `vendor_mail_css`, `slug`) VALUES
(1, '', '', '', '', '', '', 'Nguyễn', '', '', '', '', '', '', '', '', '', '', 'nguyễn');

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_vendor_medias`
--

CREATE TABLE `ecom_virtuemart_vendor_medias` (
  `id` int(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `virtuemart_media_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_vendor_users`
--

CREATE TABLE `ecom_virtuemart_vendor_users` (
  `id` int(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `virtuemart_user_id` int(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_vmusers`
--

CREATE TABLE `ecom_virtuemart_vmusers` (
  `virtuemart_user_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `user_is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `customer_number` varchar(32) DEFAULT NULL,
  `virtuemart_paymentmethod_id` int(1) UNSIGNED DEFAULT NULL,
  `virtuemart_shipmentmethod_id` int(1) UNSIGNED DEFAULT NULL,
  `agreed` tinyint(1) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Holds the unique user data';

--
-- Dumping data for table `ecom_virtuemart_vmusers`
--

INSERT INTO `ecom_virtuemart_vmusers` (`virtuemart_user_id`, `virtuemart_vendor_id`, `user_is_vendor`, `customer_number`, `virtuemart_paymentmethod_id`, `virtuemart_shipmentmethod_id`, `agreed`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(114, 1, 1, 'CKG000001', 0, 0, 0, '2017-01-23 15:57:23', 114, '2017-02-02 07:23:52', 114, '0000-00-00 00:00:00', 0),
(115, 0, 0, 'AZee7e4c5', 0, 0, 0, '0000-00-00 00:00:00', 0, '2017-02-11 06:05:54', 115, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_vmuser_shoppergroups`
--

CREATE TABLE `ecom_virtuemart_vmuser_shoppergroups` (
  `id` int(1) UNSIGNED NOT NULL,
  `virtuemart_user_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `virtuemart_shoppergroup_id` int(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='xref table for users to shopper group';

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_waitingusers`
--

CREATE TABLE `ecom_virtuemart_waitingusers` (
  `virtuemart_waitinguser_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_product_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `virtuemart_user_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `notify_email` varchar(150) NOT NULL DEFAULT '',
  `notified` tinyint(1) NOT NULL DEFAULT '0',
  `notify_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ordering` int(1) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores notifications, users waiting f. products out of stock';

-- --------------------------------------------------------

--
-- Table structure for table `ecom_virtuemart_worldzones`
--

CREATE TABLE `ecom_virtuemart_worldzones` (
  `virtuemart_worldzone_id` smallint(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` int(1) UNSIGNED DEFAULT NULL,
  `zone_name` varchar(255) DEFAULT NULL,
  `zone_cost` decimal(10,2) DEFAULT NULL,
  `zone_limit` decimal(10,2) DEFAULT NULL,
  `zone_description` varchar(18000) DEFAULT NULL,
  `zone_tax_rate` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='The Zones managed by the Zone Shipment Module';

-- --------------------------------------------------------

--
-- Table structure for table `ecom_zt_visitor_counter`
--

CREATE TABLE `ecom_zt_visitor_counter` (
  `id` int(20) UNSIGNED NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL,
  `visits` int(8) UNSIGNED NOT NULL DEFAULT '0',
  `guests` int(8) UNSIGNED NOT NULL DEFAULT '0',
  `bots` int(8) UNSIGNED NOT NULL DEFAULT '0',
  `members` int(8) UNSIGNED NOT NULL DEFAULT '0',
  `ipaddress` varchar(150) DEFAULT NULL,
  `useragent` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecom_zt_visitor_counter`
--

INSERT INTO `ecom_zt_visitor_counter` (`id`, `timestamp`, `visits`, `guests`, `bots`, `members`, `ipaddress`, `useragent`) VALUES
(1, 1486795051, 2, 2, 0, 0, '::1', 'chrome'),
(2, 1486797280, 1, 1, 0, 0, '::1', 'chrome'),
(3, 1486798860, 1, 1, 0, 0, '::1', 'chrome'),
(4, 1486801759, 1, 1, 0, 0, '::1', 'chrome'),
(5, 1486806356, 1, 1, 0, 0, '::1', 'chrome'),
(6, 1486809992, 1, 1, 0, 0, '::1', 'chrome'),
(7, 1486813869, 1, 1, 0, 0, '::1', 'chrome'),
(8, 1486814774, 1, 1, 0, 0, '::1', 'chrome'),
(9, 1486815723, 1, 1, 0, 0, '::1', 'chrome'),
(10, 1486817421, 1, 1, 0, 0, '::1', 'chrome'),
(11, 1486818384, 1, 1, 0, 0, '::1', 'chrome'),
(12, 1486821316, 2, 2, 0, 0, '::1', 'chrome'),
(13, 1486822871, 2, 2, 0, 0, '::1', 'chrome'),
(14, 1486823819, 2, 2, 0, 0, '::1', 'chrome'),
(15, 1486824838, 1, 1, 0, 0, '::1', 'chrome'),
(16, 1486856267, 1, 1, 0, 0, '::1', 'chrome'),
(17, 1486857315, 1, 1, 0, 0, '::1', 'chrome'),
(18, 1486860905, 1, 1, 0, 0, '::1', 'chrome'),
(19, 1486863241, 1, 1, 0, 0, '::1', 'chrome'),
(20, 1486864217, 2, 1, 0, 1, '::1', 'chrome'),
(21, 1486866050, 1, 1, 0, 0, '::1', 'chrome'),
(22, 1486867701, 1, 1, 0, 0, '::1', 'chrome'),
(23, 1486887685, 1, 1, 0, 0, '::1', 'chrome'),
(24, 1486888735, 1, 1, 0, 0, '::1', 'chrome'),
(25, 1486889746, 1, 1, 0, 0, '::1', 'chrome'),
(26, 1486892415, 1, 1, 0, 0, '::1', 'chrome'),
(27, 1486909978, 1, 1, 0, 0, '::1', 'chrome'),
(28, 1486911144, 1, 1, 0, 0, '::1', 'chrome'),
(29, 1487380980, 1, 1, 0, 0, '::1', 'chrome'),
(30, 1487559761, 1, 1, 0, 0, '::1', 'chrome'),
(31, 1487562017, 1, 1, 0, 0, '::1', 'chrome'),
(32, 1487563521, 1, 1, 0, 0, '::1', 'chrome'),
(33, 1487564585, 1, 1, 0, 0, '::1', 'chrome'),
(34, 1487565503, 1, 1, 0, 0, '::1', 'chrome'),
(35, 1487566407, 1, 1, 0, 0, '::1', 'chrome'),
(36, 1487567926, 1, 1, 0, 0, '::1', 'chrome'),
(37, 1487569958, 1, 1, 0, 0, '::1', 'chrome');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ecom_assets`
--
ALTER TABLE `ecom_assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_asset_name` (`name`),
  ADD KEY `idx_lft_rgt` (`lft`,`rgt`),
  ADD KEY `idx_parent_id` (`parent_id`);

--
-- Indexes for table `ecom_associations`
--
ALTER TABLE `ecom_associations`
  ADD PRIMARY KEY (`context`,`id`),
  ADD KEY `idx_key` (`key`);

--
-- Indexes for table `ecom_banners`
--
ALTER TABLE `ecom_banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  ADD KEY `idx_banner_catid` (`catid`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `ecom_banner_clients`
--
ALTER TABLE `ecom_banner_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100));

--
-- Indexes for table `ecom_banner_tracks`
--
ALTER TABLE `ecom_banner_tracks`
  ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  ADD KEY `idx_track_date` (`track_date`),
  ADD KEY `idx_track_type` (`track_type`),
  ADD KEY `idx_banner_id` (`banner_id`);

--
-- Indexes for table `ecom_categories`
--
ALTER TABLE `ecom_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`extension`,`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `ecom_contact_details`
--
ALTER TABLE `ecom_contact_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `ecom_content`
--
ALTER TABLE `ecom_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `ecom_contentitem_tag_map`
--
ALTER TABLE `ecom_contentitem_tag_map`
  ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  ADD KEY `idx_tag_type` (`tag_id`,`type_id`),
  ADD KEY `idx_date_id` (`tag_date`,`tag_id`),
  ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Indexes for table `ecom_content_frontpage`
--
ALTER TABLE `ecom_content_frontpage`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `ecom_content_rating`
--
ALTER TABLE `ecom_content_rating`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `ecom_content_types`
--
ALTER TABLE `ecom_content_types`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `idx_alias` (`type_alias`(100));

--
-- Indexes for table `ecom_extensions`
--
ALTER TABLE `ecom_extensions`
  ADD PRIMARY KEY (`extension_id`),
  ADD KEY `element_clientid` (`element`,`client_id`),
  ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Indexes for table `ecom_finder_filters`
--
ALTER TABLE `ecom_finder_filters`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `ecom_finder_links`
--
ALTER TABLE `ecom_finder_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `idx_type` (`type_id`),
  ADD KEY `idx_title` (`title`(100)),
  ADD KEY `idx_md5` (`md5sum`),
  ADD KEY `idx_url` (`url`(75)),
  ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

--
-- Indexes for table `ecom_finder_links_terms0`
--
ALTER TABLE `ecom_finder_links_terms0`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `ecom_finder_links_terms1`
--
ALTER TABLE `ecom_finder_links_terms1`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `ecom_finder_links_terms2`
--
ALTER TABLE `ecom_finder_links_terms2`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `ecom_finder_links_terms3`
--
ALTER TABLE `ecom_finder_links_terms3`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `ecom_finder_links_terms4`
--
ALTER TABLE `ecom_finder_links_terms4`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `ecom_finder_links_terms5`
--
ALTER TABLE `ecom_finder_links_terms5`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `ecom_finder_links_terms6`
--
ALTER TABLE `ecom_finder_links_terms6`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `ecom_finder_links_terms7`
--
ALTER TABLE `ecom_finder_links_terms7`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `ecom_finder_links_terms8`
--
ALTER TABLE `ecom_finder_links_terms8`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `ecom_finder_links_terms9`
--
ALTER TABLE `ecom_finder_links_terms9`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `ecom_finder_links_termsa`
--
ALTER TABLE `ecom_finder_links_termsa`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `ecom_finder_links_termsb`
--
ALTER TABLE `ecom_finder_links_termsb`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `ecom_finder_links_termsc`
--
ALTER TABLE `ecom_finder_links_termsc`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `ecom_finder_links_termsd`
--
ALTER TABLE `ecom_finder_links_termsd`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `ecom_finder_links_termse`
--
ALTER TABLE `ecom_finder_links_termse`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `ecom_finder_links_termsf`
--
ALTER TABLE `ecom_finder_links_termsf`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `ecom_finder_taxonomy`
--
ALTER TABLE `ecom_finder_taxonomy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `state` (`state`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `access` (`access`),
  ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Indexes for table `ecom_finder_taxonomy_map`
--
ALTER TABLE `ecom_finder_taxonomy_map`
  ADD PRIMARY KEY (`link_id`,`node_id`),
  ADD KEY `link_id` (`link_id`),
  ADD KEY `node_id` (`node_id`);

--
-- Indexes for table `ecom_finder_terms`
--
ALTER TABLE `ecom_finder_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD UNIQUE KEY `idx_term` (`term`),
  ADD KEY `idx_term_phrase` (`term`,`phrase`),
  ADD KEY `idx_stem_phrase` (`stem`,`phrase`),
  ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`);

--
-- Indexes for table `ecom_finder_terms_common`
--
ALTER TABLE `ecom_finder_terms_common`
  ADD KEY `idx_word_lang` (`term`,`language`),
  ADD KEY `idx_lang` (`language`);

--
-- Indexes for table `ecom_finder_tokens`
--
ALTER TABLE `ecom_finder_tokens`
  ADD KEY `idx_word` (`term`),
  ADD KEY `idx_context` (`context`);

--
-- Indexes for table `ecom_finder_tokens_aggregate`
--
ALTER TABLE `ecom_finder_tokens_aggregate`
  ADD KEY `token` (`term`),
  ADD KEY `keyword_id` (`term_id`);

--
-- Indexes for table `ecom_finder_types`
--
ALTER TABLE `ecom_finder_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `ecom_languages`
--
ALTER TABLE `ecom_languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD UNIQUE KEY `idx_sef` (`sef`),
  ADD UNIQUE KEY `idx_image` (`image`),
  ADD UNIQUE KEY `idx_langcode` (`lang_code`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_ordering` (`ordering`);

--
-- Indexes for table `ecom_menu`
--
ALTER TABLE `ecom_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  ADD KEY `idx_menutype` (`menutype`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `ecom_menu_types`
--
ALTER TABLE `ecom_menu_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Indexes for table `ecom_messages`
--
ALTER TABLE `ecom_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Indexes for table `ecom_messages_cfg`
--
ALTER TABLE `ecom_messages_cfg`
  ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Indexes for table `ecom_modules`
--
ALTER TABLE `ecom_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`,`access`),
  ADD KEY `newsfeeds` (`module`,`published`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `ecom_modules_menu`
--
ALTER TABLE `ecom_modules_menu`
  ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Indexes for table `ecom_newsfeeds`
--
ALTER TABLE `ecom_newsfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `ecom_overrider`
--
ALTER TABLE `ecom_overrider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecom_postinstall_messages`
--
ALTER TABLE `ecom_postinstall_messages`
  ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Indexes for table `ecom_powr`
--
ALTER TABLE `ecom_powr`
  ADD PRIMARY KEY (`data_type`);

--
-- Indexes for table `ecom_redirect_links`
--
ALTER TABLE `ecom_redirect_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_old_url` (`old_url`(100)),
  ADD KEY `idx_link_modifed` (`modified_date`);

--
-- Indexes for table `ecom_schemas`
--
ALTER TABLE `ecom_schemas`
  ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Indexes for table `ecom_session`
--
ALTER TABLE `ecom_session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `time` (`time`);

--
-- Indexes for table `ecom_tags`
--
ALTER TABLE `ecom_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_idx` (`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `ecom_template_styles`
--
ALTER TABLE `ecom_template_styles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_home` (`home`);

--
-- Indexes for table `ecom_ucm_base`
--
ALTER TABLE `ecom_ucm_base`
  ADD PRIMARY KEY (`ucm_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_item_id`),
  ADD KEY `idx_ucm_type_id` (`ucm_type_id`),
  ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Indexes for table `ecom_ucm_content`
--
ALTER TABLE `ecom_ucm_content`
  ADD PRIMARY KEY (`core_content_id`),
  ADD KEY `tag_idx` (`core_state`,`core_access`),
  ADD KEY `idx_access` (`core_access`),
  ADD KEY `idx_alias` (`core_alias`(100)),
  ADD KEY `idx_language` (`core_language`),
  ADD KEY `idx_title` (`core_title`(100)),
  ADD KEY `idx_modified_time` (`core_modified_time`),
  ADD KEY `idx_created_time` (`core_created_time`),
  ADD KEY `idx_content_type` (`core_type_alias`(100)),
  ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  ADD KEY `idx_core_created_user_id` (`core_created_user_id`),
  ADD KEY `idx_core_type_id` (`core_type_id`);

--
-- Indexes for table `ecom_ucm_history`
--
ALTER TABLE `ecom_ucm_history`
  ADD PRIMARY KEY (`version_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  ADD KEY `idx_save_date` (`save_date`);

--
-- Indexes for table `ecom_updates`
--
ALTER TABLE `ecom_updates`
  ADD PRIMARY KEY (`update_id`);

--
-- Indexes for table `ecom_update_sites`
--
ALTER TABLE `ecom_update_sites`
  ADD PRIMARY KEY (`update_site_id`);

--
-- Indexes for table `ecom_update_sites_extensions`
--
ALTER TABLE `ecom_update_sites_extensions`
  ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Indexes for table `ecom_usergroups`
--
ALTER TABLE `ecom_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  ADD KEY `idx_usergroup_title_lookup` (`title`),
  ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Indexes for table `ecom_users`
--
ALTER TABLE `ecom_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_name` (`name`(100)),
  ADD KEY `idx_block` (`block`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `ecom_user_keys`
--
ALTER TABLE `ecom_user_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `series` (`series`),
  ADD UNIQUE KEY `series_2` (`series`),
  ADD UNIQUE KEY `series_3` (`series`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `ecom_user_notes`
--
ALTER TABLE `ecom_user_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_category_id` (`catid`);

--
-- Indexes for table `ecom_user_profiles`
--
ALTER TABLE `ecom_user_profiles`
  ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Indexes for table `ecom_user_usergroup_map`
--
ALTER TABLE `ecom_user_usergroup_map`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Indexes for table `ecom_viewlevels`
--
ALTER TABLE `ecom_viewlevels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- Indexes for table `ecom_virtuemart_adminmenuentries`
--
ALTER TABLE `ecom_virtuemart_adminmenuentries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module_id` (`module_id`),
  ADD KEY `published` (`published`),
  ADD KEY `ordering` (`ordering`);

--
-- Indexes for table `ecom_virtuemart_calcs`
--
ALTER TABLE `ecom_virtuemart_calcs`
  ADD PRIMARY KEY (`virtuemart_calc_id`),
  ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  ADD KEY `published` (`published`),
  ADD KEY `calc_kind` (`calc_kind`),
  ADD KEY `shared` (`shared`),
  ADD KEY `publish_up` (`publish_up`),
  ADD KEY `publish_down` (`publish_down`);

--
-- Indexes for table `ecom_virtuemart_calc_categories`
--
ALTER TABLE `ecom_virtuemart_calc_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `virtuemart_calc_id` (`virtuemart_calc_id`,`virtuemart_category_id`);

--
-- Indexes for table `ecom_virtuemart_calc_countries`
--
ALTER TABLE `ecom_virtuemart_calc_countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `virtuemart_calc_id` (`virtuemart_calc_id`,`virtuemart_country_id`);

--
-- Indexes for table `ecom_virtuemart_calc_manufacturers`
--
ALTER TABLE `ecom_virtuemart_calc_manufacturers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `virtuemart_calc_id` (`virtuemart_calc_id`,`virtuemart_manufacturer_id`);

--
-- Indexes for table `ecom_virtuemart_calc_shoppergroups`
--
ALTER TABLE `ecom_virtuemart_calc_shoppergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `virtuemart_calc_id` (`virtuemart_calc_id`,`virtuemart_shoppergroup_id`);

--
-- Indexes for table `ecom_virtuemart_calc_states`
--
ALTER TABLE `ecom_virtuemart_calc_states`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `virtuemart_calc_id` (`virtuemart_calc_id`,`virtuemart_state_id`);

--
-- Indexes for table `ecom_virtuemart_carts`
--
ALTER TABLE `ecom_virtuemart_carts`
  ADD PRIMARY KEY (`virtuemart_cart_id`),
  ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  ADD KEY `virtuemart_user_id` (`virtuemart_user_id`);

--
-- Indexes for table `ecom_virtuemart_categories`
--
ALTER TABLE `ecom_virtuemart_categories`
  ADD PRIMARY KEY (`virtuemart_category_id`),
  ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  ADD KEY `published` (`published`),
  ADD KEY `shared` (`shared`),
  ADD KEY `ordering` (`ordering`);

--
-- Indexes for table `ecom_virtuemart_categories_vi_vn`
--
ALTER TABLE `ecom_virtuemart_categories_vi_vn`
  ADD PRIMARY KEY (`virtuemart_category_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `ecom_virtuemart_category_categories`
--
ALTER TABLE `ecom_virtuemart_category_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_parent_id` (`category_parent_id`,`category_child_id`),
  ADD KEY `category_child_id` (`category_child_id`),
  ADD KEY `ordering` (`ordering`);

--
-- Indexes for table `ecom_virtuemart_category_medias`
--
ALTER TABLE `ecom_virtuemart_category_medias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `virtuemart_category_id` (`virtuemart_category_id`,`virtuemart_media_id`),
  ADD KEY `ordering` (`ordering`);

--
-- Indexes for table `ecom_virtuemart_configs`
--
ALTER TABLE `ecom_virtuemart_configs`
  ADD PRIMARY KEY (`virtuemart_config_id`);

--
-- Indexes for table `ecom_virtuemart_countries`
--
ALTER TABLE `ecom_virtuemart_countries`
  ADD PRIMARY KEY (`virtuemart_country_id`),
  ADD KEY `country_3_code` (`country_3_code`),
  ADD KEY `country_2_code` (`country_2_code`),
  ADD KEY `country_name` (`country_name`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `published` (`published`);

--
-- Indexes for table `ecom_virtuemart_coupons`
--
ALTER TABLE `ecom_virtuemart_coupons`
  ADD PRIMARY KEY (`virtuemart_coupon_id`),
  ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  ADD KEY `coupon_code` (`coupon_code`),
  ADD KEY `coupon_type` (`coupon_type`),
  ADD KEY `published` (`published`);

--
-- Indexes for table `ecom_virtuemart_currencies`
--
ALTER TABLE `ecom_virtuemart_currencies`
  ADD PRIMARY KEY (`virtuemart_currency_id`),
  ADD UNIQUE KEY `currency_code_3` (`currency_code_3`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `currency_name` (`currency_name`),
  ADD KEY `published` (`published`),
  ADD KEY `shared` (`shared`),
  ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  ADD KEY `currency_numeric_code` (`currency_numeric_code`);

--
-- Indexes for table `ecom_virtuemart_customs`
--
ALTER TABLE `ecom_virtuemart_customs`
  ADD PRIMARY KEY (`virtuemart_custom_id`),
  ADD KEY `custom_parent_id` (`custom_parent_id`),
  ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  ADD KEY `custom_element` (`custom_element`),
  ADD KEY `field_type` (`field_type`),
  ADD KEY `is_cart_attribute` (`is_cart_attribute`),
  ADD KEY `is_input` (`is_input`),
  ADD KEY `searchable` (`searchable`),
  ADD KEY `shared` (`shared`),
  ADD KEY `published` (`published`),
  ADD KEY `ordering` (`ordering`);

--
-- Indexes for table `ecom_virtuemart_invoices`
--
ALTER TABLE `ecom_virtuemart_invoices`
  ADD PRIMARY KEY (`virtuemart_invoice_id`),
  ADD UNIQUE KEY `invoice_number` (`invoice_number`,`virtuemart_vendor_id`),
  ADD KEY `virtuemart_order_id` (`virtuemart_order_id`),
  ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`);

--
-- Indexes for table `ecom_virtuemart_manufacturercategories`
--
ALTER TABLE `ecom_virtuemart_manufacturercategories`
  ADD PRIMARY KEY (`virtuemart_manufacturercategories_id`),
  ADD KEY `published` (`published`);

--
-- Indexes for table `ecom_virtuemart_manufacturercategories_vi_vn`
--
ALTER TABLE `ecom_virtuemart_manufacturercategories_vi_vn`
  ADD PRIMARY KEY (`virtuemart_manufacturercategories_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `ecom_virtuemart_manufacturers`
--
ALTER TABLE `ecom_virtuemart_manufacturers`
  ADD PRIMARY KEY (`virtuemart_manufacturer_id`),
  ADD UNIQUE KEY `virtuemart_manufacturercategories_id` (`virtuemart_manufacturer_id`,`virtuemart_manufacturercategories_id`),
  ADD KEY `published` (`published`);

--
-- Indexes for table `ecom_virtuemart_manufacturers_vi_vn`
--
ALTER TABLE `ecom_virtuemart_manufacturers_vi_vn`
  ADD PRIMARY KEY (`virtuemart_manufacturer_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `ecom_virtuemart_manufacturer_medias`
--
ALTER TABLE `ecom_virtuemart_manufacturer_medias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `virtuemart_manufacturer_id` (`virtuemart_manufacturer_id`,`virtuemart_media_id`),
  ADD KEY `ordering` (`ordering`);

--
-- Indexes for table `ecom_virtuemart_medias`
--
ALTER TABLE `ecom_virtuemart_medias`
  ADD PRIMARY KEY (`virtuemart_media_id`),
  ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  ADD KEY `published` (`published`),
  ADD KEY `file_type` (`file_type`),
  ADD KEY `shared` (`shared`);

--
-- Indexes for table `ecom_virtuemart_migration_oldtonew_ids`
--
ALTER TABLE `ecom_virtuemart_migration_oldtonew_ids`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecom_virtuemart_modules`
--
ALTER TABLE `ecom_virtuemart_modules`
  ADD PRIMARY KEY (`module_id`),
  ADD KEY `module_name` (`module_name`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `published` (`published`);

--
-- Indexes for table `ecom_virtuemart_orders`
--
ALTER TABLE `ecom_virtuemart_orders`
  ADD PRIMARY KEY (`virtuemart_order_id`),
  ADD KEY `virtuemart_user_id` (`virtuemart_user_id`),
  ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  ADD KEY `order_number` (`order_number`),
  ADD KEY `virtuemart_paymentmethod_id` (`virtuemart_paymentmethod_id`),
  ADD KEY `virtuemart_shipmentmethod_id` (`virtuemart_shipmentmethod_id`);

--
-- Indexes for table `ecom_virtuemart_orderstates`
--
ALTER TABLE `ecom_virtuemart_orderstates`
  ADD PRIMARY KEY (`virtuemart_orderstate_id`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  ADD KEY `published` (`published`);

--
-- Indexes for table `ecom_virtuemart_order_calc_rules`
--
ALTER TABLE `ecom_virtuemart_order_calc_rules`
  ADD PRIMARY KEY (`virtuemart_order_calc_rule_id`),
  ADD KEY `virtuemart_calc_id` (`virtuemart_calc_id`),
  ADD KEY `virtuemart_order_id` (`virtuemart_order_id`),
  ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`);

--
-- Indexes for table `ecom_virtuemart_order_histories`
--
ALTER TABLE `ecom_virtuemart_order_histories`
  ADD PRIMARY KEY (`virtuemart_order_history_id`),
  ADD KEY `virtuemart_order_id` (`virtuemart_order_id`);

--
-- Indexes for table `ecom_virtuemart_order_items`
--
ALTER TABLE `ecom_virtuemart_order_items`
  ADD PRIMARY KEY (`virtuemart_order_item_id`),
  ADD KEY `virtuemart_product_id` (`virtuemart_product_id`),
  ADD KEY `virtuemart_order_id` (`virtuemart_order_id`),
  ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  ADD KEY `order_status` (`order_status`);

--
-- Indexes for table `ecom_virtuemart_order_userinfos`
--
ALTER TABLE `ecom_virtuemart_order_userinfos`
  ADD PRIMARY KEY (`virtuemart_order_userinfo_id`),
  ADD KEY `virtuemart_order_id` (`virtuemart_order_id`),
  ADD KEY `virtuemart_user_id` (`virtuemart_user_id`,`address_type`),
  ADD KEY `address_type` (`address_type`);

--
-- Indexes for table `ecom_virtuemart_paymentmethods`
--
ALTER TABLE `ecom_virtuemart_paymentmethods`
  ADD PRIMARY KEY (`virtuemart_paymentmethod_id`),
  ADD KEY `payment_jplugin_id` (`payment_jplugin_id`),
  ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  ADD KEY `payment_element` (`payment_element`,`virtuemart_vendor_id`),
  ADD KEY `ordering` (`ordering`);

--
-- Indexes for table `ecom_virtuemart_paymentmethods_vi_vn`
--
ALTER TABLE `ecom_virtuemart_paymentmethods_vi_vn`
  ADD PRIMARY KEY (`virtuemart_paymentmethod_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `ecom_virtuemart_paymentmethod_shoppergroups`
--
ALTER TABLE `ecom_virtuemart_paymentmethod_shoppergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `virtuemart_paymentmethod_id` (`virtuemart_paymentmethod_id`,`virtuemart_shoppergroup_id`);

--
-- Indexes for table `ecom_virtuemart_payment_plg_paypal`
--
ALTER TABLE `ecom_virtuemart_payment_plg_paypal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecom_virtuemart_payment_plg_standard`
--
ALTER TABLE `ecom_virtuemart_payment_plg_standard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecom_virtuemart_payment_plg_tco`
--
ALTER TABLE `ecom_virtuemart_payment_plg_tco`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecom_virtuemart_products`
--
ALTER TABLE `ecom_virtuemart_products`
  ADD PRIMARY KEY (`virtuemart_product_id`),
  ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  ADD KEY `product_parent_id` (`product_parent_id`),
  ADD KEY `product_special` (`product_special`),
  ADD KEY `product_in_stock` (`product_in_stock`),
  ADD KEY `product_ordered` (`product_ordered`),
  ADD KEY `published` (`published`),
  ADD KEY `pordering` (`pordering`),
  ADD KEY `created_on` (`created_on`),
  ADD KEY `modified_on` (`modified_on`);

--
-- Indexes for table `ecom_virtuemart_products_vi_vn`
--
ALTER TABLE `ecom_virtuemart_products_vi_vn`
  ADD PRIMARY KEY (`virtuemart_product_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `ecom_virtuemart_product_categories`
--
ALTER TABLE `ecom_virtuemart_product_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `virtuemart_product_id` (`virtuemart_product_id`,`virtuemart_category_id`),
  ADD KEY `ordering` (`ordering`);

--
-- Indexes for table `ecom_virtuemart_product_customfields`
--
ALTER TABLE `ecom_virtuemart_product_customfields`
  ADD PRIMARY KEY (`virtuemart_customfield_id`),
  ADD KEY `virtuemart_product_id` (`virtuemart_product_id`),
  ADD KEY `virtuemart_custom_id` (`virtuemart_custom_id`),
  ADD KEY `published` (`published`),
  ADD KEY `ordering` (`virtuemart_product_id`,`ordering`);

--
-- Indexes for table `ecom_virtuemart_product_manufacturers`
--
ALTER TABLE `ecom_virtuemart_product_manufacturers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `virtuemart_product_id` (`virtuemart_product_id`,`virtuemart_manufacturer_id`);

--
-- Indexes for table `ecom_virtuemart_product_medias`
--
ALTER TABLE `ecom_virtuemart_product_medias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `virtuemart_product_id` (`virtuemart_product_id`,`virtuemart_media_id`),
  ADD KEY `ordering` (`ordering`);

--
-- Indexes for table `ecom_virtuemart_product_prices`
--
ALTER TABLE `ecom_virtuemart_product_prices`
  ADD PRIMARY KEY (`virtuemart_product_price_id`),
  ADD KEY `virtuemart_product_id` (`virtuemart_product_id`),
  ADD KEY `product_price` (`virtuemart_product_id`),
  ADD KEY `virtuemart_shoppergroup_id` (`virtuemart_shoppergroup_id`),
  ADD KEY `product_price_publish_up` (`product_price_publish_up`),
  ADD KEY `product_price_publish_down` (`product_price_publish_down`),
  ADD KEY `price_quantity_start` (`price_quantity_start`),
  ADD KEY `price_quantity_end` (`price_quantity_end`);

--
-- Indexes for table `ecom_virtuemart_product_shoppergroups`
--
ALTER TABLE `ecom_virtuemart_product_shoppergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `virtuemart_product_id` (`virtuemart_product_id`,`virtuemart_shoppergroup_id`);

--
-- Indexes for table `ecom_virtuemart_ratings`
--
ALTER TABLE `ecom_virtuemart_ratings`
  ADD PRIMARY KEY (`virtuemart_rating_id`),
  ADD UNIQUE KEY `virtuemart_product_id` (`virtuemart_product_id`,`virtuemart_rating_id`),
  ADD KEY `published` (`published`);

--
-- Indexes for table `ecom_virtuemart_rating_reviews`
--
ALTER TABLE `ecom_virtuemart_rating_reviews`
  ADD PRIMARY KEY (`virtuemart_rating_review_id`),
  ADD KEY `virtuemart_rating_vote_id` (`virtuemart_rating_vote_id`),
  ADD KEY `virtuemart_product_id` (`virtuemart_product_id`,`created_by`),
  ADD KEY `created_on` (`created_on`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `published` (`published`);

--
-- Indexes for table `ecom_virtuemart_rating_votes`
--
ALTER TABLE `ecom_virtuemart_rating_votes`
  ADD PRIMARY KEY (`virtuemart_rating_vote_id`),
  ADD KEY `virtuemart_product_id` (`virtuemart_product_id`,`created_by`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `created_on` (`created_on`);

--
-- Indexes for table `ecom_virtuemart_shipmentmethods`
--
ALTER TABLE `ecom_virtuemart_shipmentmethods`
  ADD PRIMARY KEY (`virtuemart_shipmentmethod_id`),
  ADD KEY `shipment_jplugin_id` (`shipment_jplugin_id`),
  ADD KEY `shipment_element` (`shipment_element`,`virtuemart_vendor_id`),
  ADD KEY `ordering` (`ordering`);

--
-- Indexes for table `ecom_virtuemart_shipmentmethods_vi_vn`
--
ALTER TABLE `ecom_virtuemart_shipmentmethods_vi_vn`
  ADD PRIMARY KEY (`virtuemart_shipmentmethod_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `ecom_virtuemart_shipmentmethod_shoppergroups`
--
ALTER TABLE `ecom_virtuemart_shipmentmethod_shoppergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `virtuemart_shipmentmethod_id` (`virtuemart_shipmentmethod_id`,`virtuemart_shoppergroup_id`);

--
-- Indexes for table `ecom_virtuemart_shipment_plg_weight_countries`
--
ALTER TABLE `ecom_virtuemart_shipment_plg_weight_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecom_virtuemart_shoppergroups`
--
ALTER TABLE `ecom_virtuemart_shoppergroups`
  ADD PRIMARY KEY (`virtuemart_shoppergroup_id`),
  ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  ADD KEY `shopper_group_name` (`shopper_group_name`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `shared` (`shared`),
  ADD KEY `published` (`published`);

--
-- Indexes for table `ecom_virtuemart_states`
--
ALTER TABLE `ecom_virtuemart_states`
  ADD PRIMARY KEY (`virtuemart_state_id`),
  ADD UNIQUE KEY `state_3_code` (`virtuemart_vendor_id`,`virtuemart_country_id`,`state_3_code`),
  ADD UNIQUE KEY `state_2_code` (`virtuemart_vendor_id`,`virtuemart_country_id`,`state_2_code`),
  ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  ADD KEY `virtuemart_country_id` (`virtuemart_country_id`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `shared` (`shared`),
  ADD KEY `published` (`published`);

--
-- Indexes for table `ecom_virtuemart_userfields`
--
ALTER TABLE `ecom_virtuemart_userfields`
  ADD PRIMARY KEY (`virtuemart_userfield_id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `shared` (`shared`),
  ADD KEY `published` (`published`),
  ADD KEY `account` (`account`),
  ADD KEY `shipment` (`shipment`),
  ADD KEY `cart` (`cart`);

--
-- Indexes for table `ecom_virtuemart_userfield_values`
--
ALTER TABLE `ecom_virtuemart_userfield_values`
  ADD PRIMARY KEY (`virtuemart_userfield_value_id`),
  ADD KEY `virtuemart_userfield_id` (`virtuemart_userfield_id`);

--
-- Indexes for table `ecom_virtuemart_userinfos`
--
ALTER TABLE `ecom_virtuemart_userinfos`
  ADD PRIMARY KEY (`virtuemart_userinfo_id`),
  ADD KEY `i_virtuemart_user_id` (`virtuemart_userinfo_id`,`virtuemart_user_id`),
  ADD KEY `virtuemart_user_id` (`virtuemart_user_id`,`address_type`),
  ADD KEY `address_type` (`address_type`),
  ADD KEY `address_type_name` (`address_type_name`);

--
-- Indexes for table `ecom_virtuemart_vendors`
--
ALTER TABLE `ecom_virtuemart_vendors`
  ADD PRIMARY KEY (`virtuemart_vendor_id`),
  ADD KEY `vendor_name` (`vendor_name`),
  ADD KEY `vendor_currency` (`vendor_currency`);

--
-- Indexes for table `ecom_virtuemart_vendors_vi_vn`
--
ALTER TABLE `ecom_virtuemart_vendors_vi_vn`
  ADD PRIMARY KEY (`virtuemart_vendor_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `ecom_virtuemart_vendor_medias`
--
ALTER TABLE `ecom_virtuemart_vendor_medias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`,`virtuemart_media_id`);

--
-- Indexes for table `ecom_virtuemart_vendor_users`
--
ALTER TABLE `ecom_virtuemart_vendor_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`,`virtuemart_user_id`);

--
-- Indexes for table `ecom_virtuemart_vmusers`
--
ALTER TABLE `ecom_virtuemart_vmusers`
  ADD PRIMARY KEY (`virtuemart_user_id`),
  ADD UNIQUE KEY `u_virtuemart_user_id` (`virtuemart_user_id`,`virtuemart_vendor_id`),
  ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  ADD KEY `user_is_vendor` (`user_is_vendor`);

--
-- Indexes for table `ecom_virtuemart_vmuser_shoppergroups`
--
ALTER TABLE `ecom_virtuemart_vmuser_shoppergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `virtuemart_user_id` (`virtuemart_user_id`,`virtuemart_shoppergroup_id`);

--
-- Indexes for table `ecom_virtuemart_waitingusers`
--
ALTER TABLE `ecom_virtuemart_waitingusers`
  ADD PRIMARY KEY (`virtuemart_waitinguser_id`),
  ADD KEY `virtuemart_product_id` (`virtuemart_product_id`),
  ADD KEY `notify_email` (`notify_email`);

--
-- Indexes for table `ecom_virtuemart_worldzones`
--
ALTER TABLE `ecom_virtuemart_worldzones`
  ADD PRIMARY KEY (`virtuemart_worldzone_id`),
  ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`);

--
-- Indexes for table `ecom_zt_visitor_counter`
--
ALTER TABLE `ecom_zt_visitor_counter`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `timestamp` (`timestamp`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ecom_assets`
--
ALTER TABLE `ecom_assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT for table `ecom_banners`
--
ALTER TABLE `ecom_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecom_banner_clients`
--
ALTER TABLE `ecom_banner_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecom_categories`
--
ALTER TABLE `ecom_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `ecom_contact_details`
--
ALTER TABLE `ecom_contact_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecom_content`
--
ALTER TABLE `ecom_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecom_content_types`
--
ALTER TABLE `ecom_content_types`
  MODIFY `type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `ecom_extensions`
--
ALTER TABLE `ecom_extensions`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10077;
--
-- AUTO_INCREMENT for table `ecom_finder_filters`
--
ALTER TABLE `ecom_finder_filters`
  MODIFY `filter_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecom_finder_links`
--
ALTER TABLE `ecom_finder_links`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecom_finder_taxonomy`
--
ALTER TABLE `ecom_finder_taxonomy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ecom_finder_terms`
--
ALTER TABLE `ecom_finder_terms`
  MODIFY `term_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecom_finder_types`
--
ALTER TABLE `ecom_finder_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecom_languages`
--
ALTER TABLE `ecom_languages`
  MODIFY `lang_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ecom_menu`
--
ALTER TABLE `ecom_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;
--
-- AUTO_INCREMENT for table `ecom_menu_types`
--
ALTER TABLE `ecom_menu_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ecom_messages`
--
ALTER TABLE `ecom_messages`
  MODIFY `message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecom_modules`
--
ALTER TABLE `ecom_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;
--
-- AUTO_INCREMENT for table `ecom_newsfeeds`
--
ALTER TABLE `ecom_newsfeeds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecom_overrider`
--
ALTER TABLE `ecom_overrider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';
--
-- AUTO_INCREMENT for table `ecom_postinstall_messages`
--
ALTER TABLE `ecom_postinstall_messages`
  MODIFY `postinstall_message_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `ecom_redirect_links`
--
ALTER TABLE `ecom_redirect_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecom_tags`
--
ALTER TABLE `ecom_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ecom_template_styles`
--
ALTER TABLE `ecom_template_styles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `ecom_ucm_content`
--
ALTER TABLE `ecom_ucm_content`
  MODIFY `core_content_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecom_ucm_history`
--
ALTER TABLE `ecom_ucm_history`
  MODIFY `version_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecom_updates`
--
ALTER TABLE `ecom_updates`
  MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `ecom_update_sites`
--
ALTER TABLE `ecom_update_sites`
  MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `ecom_usergroups`
--
ALTER TABLE `ecom_usergroups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `ecom_users`
--
ALTER TABLE `ecom_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;
--
-- AUTO_INCREMENT for table `ecom_user_keys`
--
ALTER TABLE `ecom_user_keys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecom_user_notes`
--
ALTER TABLE `ecom_user_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecom_viewlevels`
--
ALTER TABLE `ecom_viewlevels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `ecom_virtuemart_adminmenuentries`
--
ALTER TABLE `ecom_virtuemart_adminmenuentries`
  MODIFY `id` tinyint(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `ecom_virtuemart_calcs`
--
ALTER TABLE `ecom_virtuemart_calcs`
  MODIFY `virtuemart_calc_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecom_virtuemart_calc_categories`
--
ALTER TABLE `ecom_virtuemart_calc_categories`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecom_virtuemart_calc_countries`
--
ALTER TABLE `ecom_virtuemart_calc_countries`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecom_virtuemart_calc_manufacturers`
--
ALTER TABLE `ecom_virtuemart_calc_manufacturers`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecom_virtuemart_calc_shoppergroups`
--
ALTER TABLE `ecom_virtuemart_calc_shoppergroups`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecom_virtuemart_calc_states`
--
ALTER TABLE `ecom_virtuemart_calc_states`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecom_virtuemart_carts`
--
ALTER TABLE `ecom_virtuemart_carts`
  MODIFY `virtuemart_cart_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecom_virtuemart_categories`
--
ALTER TABLE `ecom_virtuemart_categories`
  MODIFY `virtuemart_category_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `ecom_virtuemart_category_categories`
--
ALTER TABLE `ecom_virtuemart_category_categories`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `ecom_virtuemart_category_medias`
--
ALTER TABLE `ecom_virtuemart_category_medias`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `ecom_virtuemart_configs`
--
ALTER TABLE `ecom_virtuemart_configs`
  MODIFY `virtuemart_config_id` tinyint(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ecom_virtuemart_countries`
--
ALTER TABLE `ecom_virtuemart_countries`
  MODIFY `virtuemart_country_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;
--
-- AUTO_INCREMENT for table `ecom_virtuemart_coupons`
--
ALTER TABLE `ecom_virtuemart_coupons`
  MODIFY `virtuemart_coupon_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecom_virtuemart_currencies`
--
ALTER TABLE `ecom_virtuemart_currencies`
  MODIFY `virtuemart_currency_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;
--
-- AUTO_INCREMENT for table `ecom_virtuemart_customs`
--
ALTER TABLE `ecom_virtuemart_customs`
  MODIFY `virtuemart_custom_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ecom_virtuemart_invoices`
--
ALTER TABLE `ecom_virtuemart_invoices`
  MODIFY `virtuemart_invoice_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecom_virtuemart_manufacturercategories`
--
ALTER TABLE `ecom_virtuemart_manufacturercategories`
  MODIFY `virtuemart_manufacturercategories_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecom_virtuemart_manufacturers`
--
ALTER TABLE `ecom_virtuemart_manufacturers`
  MODIFY `virtuemart_manufacturer_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `ecom_virtuemart_manufacturer_medias`
--
ALTER TABLE `ecom_virtuemart_manufacturer_medias`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `ecom_virtuemart_medias`
--
ALTER TABLE `ecom_virtuemart_medias`
  MODIFY `virtuemart_media_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;
--
-- AUTO_INCREMENT for table `ecom_virtuemart_migration_oldtonew_ids`
--
ALTER TABLE `ecom_virtuemart_migration_oldtonew_ids`
  MODIFY `id` smallint(1) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecom_virtuemart_modules`
--
ALTER TABLE `ecom_virtuemart_modules`
  MODIFY `module_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `ecom_virtuemart_orders`
--
ALTER TABLE `ecom_virtuemart_orders`
  MODIFY `virtuemart_order_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ecom_virtuemart_orderstates`
--
ALTER TABLE `ecom_virtuemart_orderstates`
  MODIFY `virtuemart_orderstate_id` tinyint(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `ecom_virtuemart_order_calc_rules`
--
ALTER TABLE `ecom_virtuemart_order_calc_rules`
  MODIFY `virtuemart_order_calc_rule_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecom_virtuemart_order_histories`
--
ALTER TABLE `ecom_virtuemart_order_histories`
  MODIFY `virtuemart_order_history_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `ecom_virtuemart_order_items`
--
ALTER TABLE `ecom_virtuemart_order_items`
  MODIFY `virtuemart_order_item_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `ecom_virtuemart_order_userinfos`
--
ALTER TABLE `ecom_virtuemart_order_userinfos`
  MODIFY `virtuemart_order_userinfo_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ecom_virtuemart_paymentmethods`
--
ALTER TABLE `ecom_virtuemart_paymentmethods`
  MODIFY `virtuemart_paymentmethod_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ecom_virtuemart_paymentmethod_shoppergroups`
--
ALTER TABLE `ecom_virtuemart_paymentmethod_shoppergroups`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecom_virtuemart_payment_plg_paypal`
--
ALTER TABLE `ecom_virtuemart_payment_plg_paypal`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecom_virtuemart_payment_plg_standard`
--
ALTER TABLE `ecom_virtuemart_payment_plg_standard`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ecom_virtuemart_payment_plg_tco`
--
ALTER TABLE `ecom_virtuemart_payment_plg_tco`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecom_virtuemart_products`
--
ALTER TABLE `ecom_virtuemart_products`
  MODIFY `virtuemart_product_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;
--
-- AUTO_INCREMENT for table `ecom_virtuemart_product_categories`
--
ALTER TABLE `ecom_virtuemart_product_categories`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;
--
-- AUTO_INCREMENT for table `ecom_virtuemart_product_customfields`
--
ALTER TABLE `ecom_virtuemart_product_customfields`
  MODIFY `virtuemart_customfield_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'field id';
--
-- AUTO_INCREMENT for table `ecom_virtuemart_product_manufacturers`
--
ALTER TABLE `ecom_virtuemart_product_manufacturers`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;
--
-- AUTO_INCREMENT for table `ecom_virtuemart_product_medias`
--
ALTER TABLE `ecom_virtuemart_product_medias`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;
--
-- AUTO_INCREMENT for table `ecom_virtuemart_product_prices`
--
ALTER TABLE `ecom_virtuemart_product_prices`
  MODIFY `virtuemart_product_price_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;
--
-- AUTO_INCREMENT for table `ecom_virtuemart_product_shoppergroups`
--
ALTER TABLE `ecom_virtuemart_product_shoppergroups`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecom_virtuemart_ratings`
--
ALTER TABLE `ecom_virtuemart_ratings`
  MODIFY `virtuemart_rating_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecom_virtuemart_rating_reviews`
--
ALTER TABLE `ecom_virtuemart_rating_reviews`
  MODIFY `virtuemart_rating_review_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecom_virtuemart_rating_votes`
--
ALTER TABLE `ecom_virtuemart_rating_votes`
  MODIFY `virtuemart_rating_vote_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecom_virtuemart_shipmentmethods`
--
ALTER TABLE `ecom_virtuemart_shipmentmethods`
  MODIFY `virtuemart_shipmentmethod_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ecom_virtuemart_shipmentmethod_shoppergroups`
--
ALTER TABLE `ecom_virtuemart_shipmentmethod_shoppergroups`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecom_virtuemart_shipment_plg_weight_countries`
--
ALTER TABLE `ecom_virtuemart_shipment_plg_weight_countries`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ecom_virtuemart_shoppergroups`
--
ALTER TABLE `ecom_virtuemart_shoppergroups`
  MODIFY `virtuemart_shoppergroup_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ecom_virtuemart_states`
--
ALTER TABLE `ecom_virtuemart_states`
  MODIFY `virtuemart_state_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=832;
--
-- AUTO_INCREMENT for table `ecom_virtuemart_userfields`
--
ALTER TABLE `ecom_virtuemart_userfields`
  MODIFY `virtuemart_userfield_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `ecom_virtuemart_userfield_values`
--
ALTER TABLE `ecom_virtuemart_userfield_values`
  MODIFY `virtuemart_userfield_value_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `ecom_virtuemart_userinfos`
--
ALTER TABLE `ecom_virtuemart_userinfos`
  MODIFY `virtuemart_userinfo_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ecom_virtuemart_vendors`
--
ALTER TABLE `ecom_virtuemart_vendors`
  MODIFY `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ecom_virtuemart_vendor_medias`
--
ALTER TABLE `ecom_virtuemart_vendor_medias`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecom_virtuemart_vendor_users`
--
ALTER TABLE `ecom_virtuemart_vendor_users`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecom_virtuemart_vmusers`
--
ALTER TABLE `ecom_virtuemart_vmusers`
  MODIFY `virtuemart_user_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;
--
-- AUTO_INCREMENT for table `ecom_virtuemart_vmuser_shoppergroups`
--
ALTER TABLE `ecom_virtuemart_vmuser_shoppergroups`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecom_virtuemart_waitingusers`
--
ALTER TABLE `ecom_virtuemart_waitingusers`
  MODIFY `virtuemart_waitinguser_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecom_virtuemart_worldzones`
--
ALTER TABLE `ecom_virtuemart_worldzones`
  MODIFY `virtuemart_worldzone_id` smallint(1) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecom_zt_visitor_counter`
--
ALTER TABLE `ecom_zt_visitor_counter`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
