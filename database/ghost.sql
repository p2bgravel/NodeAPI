-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 01, 2019 at 09:57 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `ghost`
--

-- --------------------------------------------------------

--
-- Table structure for table `Category`
--

CREATE TABLE `Category` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Desc` longtext,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Category`
--

INSERT INTO `Category` (`id`, `Name`, `Desc`, `created_at`, `updated_at`) VALUES
(1, 'Danh mục 1', 'demo', '2019-04-28 10:13:20', '2019-04-28 10:13:20'),
(2, 'Danh mục 2', 'he he', '2019-04-28 10:13:28', '2019-04-28 10:13:28');

-- --------------------------------------------------------

--
-- Table structure for table `core_store`
--

CREATE TABLE `core_store` (
  `id` int(11) NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `core_store`
--

INSERT INTO `core_store` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(1, 'db_model_Category', '{\"Name\":{\"required\":true,\"type\":\"string\"},\"Desc\":{\"type\":\"text\"},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}', 'object', NULL, NULL),
(2, 'db_model_users-permissions_permission', '{\"type\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"controller\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"enabled\":{\"type\":\"boolean\",\"required\":true,\"configurable\":false},\"policy\":{\"type\":\"string\",\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"permissions\",\"plugin\":\"users-permissions\",\"configurable\":false}}', 'object', NULL, NULL),
(3, 'db_model_Notice', '{\"Title\":{\"required\":true,\"type\":\"string\"},\"Desc\":{\"required\":true,\"type\":\"text\"},\"slug\":{\"required\":true,\"default\":\"slug\",\"type\":\"string\"},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}', 'object', NULL, NULL),
(4, 'db_model_upload_file', '{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"sha256\":{\"type\":\"string\",\"configurable\":false},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"public_id\":{\"type\":\"string\",\"configurable\":false},\"related\":{\"collection\":\"*\",\"filter\":\"field\",\"configurable\":false},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}', 'object', NULL, NULL),
(5, 'db_model_users-permissions_user', '{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"users\",\"plugin\":\"users-permissions\",\"configurable\":false}}', 'object', NULL, NULL),
(6, 'db_model_core_store', '{\"key\":{\"type\":\"string\"},\"value\":{\"type\":\"text\"},\"type\":{\"type\":\"string\"},\"environment\":{\"type\":\"string\"},\"tag\":{\"type\":\"string\"}}', 'object', NULL, NULL),
(7, 'db_model_users-permissions_role', '{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"collection\":\"permission\",\"via\":\"role\",\"plugin\":\"users-permissions\",\"configurable\":false,\"isVirtual\":true},\"users\":{\"collection\":\"user\",\"via\":\"role\",\"configurable\":false,\"plugin\":\"users-permissions\",\"isVirtual\":true}}', 'object', NULL, NULL),
(8, 'db_model_upload_file_morph', '{\"upload_file_id\":{\"type\":\"integer\"},\"related_id\":{\"type\":\"integer\"},\"related_type\":{\"type\":\"text\"},\"field\":{\"type\":\"text\"}}', 'object', NULL, NULL),
(9, 'plugin_content-manager_schema', '{\"generalSettings\":{\"search\":true,\"filters\":true,\"bulkActions\":true,\"pageEntries\":10},\"models\":{\"plugins\":{\"upload\":{\"file\":{\"label\":\"File\",\"labelPlural\":\"Files\",\"orm\":\"bookshelf\",\"search\":true,\"filters\":true,\"bulkActions\":true,\"pageEntries\":10,\"defaultSort\":\"id\",\"sort\":\"ASC\",\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"editDisplay\":{\"availableFields\":{\"name\":{\"label\":\"Name\",\"type\":\"string\",\"description\":\"\",\"name\":\"name\",\"editable\":true,\"placeholder\":\"\"},\"hash\":{\"label\":\"Hash\",\"type\":\"string\",\"description\":\"\",\"name\":\"hash\",\"editable\":true,\"placeholder\":\"\"},\"sha256\":{\"label\":\"Sha256\",\"type\":\"string\",\"description\":\"\",\"name\":\"sha256\",\"editable\":true,\"placeholder\":\"\"},\"ext\":{\"label\":\"Ext\",\"type\":\"string\",\"description\":\"\",\"name\":\"ext\",\"editable\":true,\"placeholder\":\"\"},\"mime\":{\"label\":\"Mime\",\"type\":\"string\",\"description\":\"\",\"name\":\"mime\",\"editable\":true,\"placeholder\":\"\"},\"size\":{\"label\":\"Size\",\"type\":\"string\",\"description\":\"\",\"name\":\"size\",\"editable\":true,\"placeholder\":\"\"},\"url\":{\"label\":\"Url\",\"type\":\"string\",\"description\":\"\",\"name\":\"url\",\"editable\":true,\"placeholder\":\"\"},\"provider\":{\"label\":\"Provider\",\"type\":\"string\",\"description\":\"\",\"name\":\"provider\",\"editable\":true,\"placeholder\":\"\"},\"public_id\":{\"label\":\"Public_id\",\"type\":\"string\",\"description\":\"\",\"name\":\"public_id\",\"editable\":true,\"placeholder\":\"\"}},\"displayedField\":\"id\",\"fields\":[\"name\",\"hash\",\"sha256\",\"ext\",\"mime\",\"size\",\"url\",\"provider\",\"public_id\"],\"relations\":[]},\"info\":{\"name\":\"file\",\"description\":\"\"},\"connection\":\"default\",\"collectionName\":\"upload_file\",\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"sha256\":{\"type\":\"string\",\"configurable\":false},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"public_id\":{\"type\":\"string\",\"configurable\":false},\"related\":{\"collection\":\"*\",\"filter\":\"field\",\"configurable\":false}},\"globalId\":\"UploadFile\",\"globalName\":\"UploadFile\",\"primaryKey\":\"id\",\"associations\":[{\"alias\":\"related\",\"type\":\"collection\",\"related\":[\"Pages\"],\"nature\":\"manyMorphToMany\",\"autoPopulate\":true,\"filter\":\"field\"}],\"fields\":{\"name\":{\"label\":\"Name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"name\",\"sortable\":true,\"searchable\":true},\"hash\":{\"label\":\"Hash\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"hash\",\"sortable\":true,\"searchable\":true},\"sha256\":{\"label\":\"Sha256\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"sha256\",\"sortable\":true,\"searchable\":true},\"ext\":{\"label\":\"Ext\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"ext\",\"sortable\":true,\"searchable\":true},\"mime\":{\"label\":\"Mime\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"mime\",\"sortable\":true,\"searchable\":true},\"size\":{\"label\":\"Size\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"size\",\"sortable\":true,\"searchable\":true},\"url\":{\"label\":\"Url\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"url\",\"sortable\":true,\"searchable\":true},\"provider\":{\"label\":\"Provider\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"provider\",\"sortable\":true,\"searchable\":true},\"public_id\":{\"label\":\"Public_id\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"public_id\",\"sortable\":true,\"searchable\":true}},\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"name\",\"sortable\":true,\"searchable\":true},{\"label\":\"Hash\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"hash\",\"sortable\":true,\"searchable\":true},{\"label\":\"Sha256\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"sha256\",\"sortable\":true,\"searchable\":true},{\"label\":\"Ext\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"ext\",\"sortable\":true,\"searchable\":true}],\"relations\":{\"related\":{\"alias\":\"related\",\"type\":\"collection\",\"related\":[\"Pages\"],\"nature\":\"manyMorphToMany\",\"autoPopulate\":true,\"filter\":\"field\",\"description\":\"\",\"label\":\"Related\",\"displayedAttribute\":\"id\"}}}},\"users-permissions\":{\"permission\":{\"label\":\"Permission\",\"labelPlural\":\"Permissions\",\"orm\":\"bookshelf\",\"search\":true,\"filters\":true,\"bulkActions\":true,\"pageEntries\":10,\"defaultSort\":\"id\",\"sort\":\"ASC\",\"options\":{\"timestamps\":false},\"editDisplay\":{\"availableFields\":{\"type\":{\"label\":\"Type\",\"type\":\"string\",\"description\":\"\",\"name\":\"type\",\"editable\":true,\"placeholder\":\"\"},\"controller\":{\"label\":\"Controller\",\"type\":\"string\",\"description\":\"\",\"name\":\"controller\",\"editable\":true,\"placeholder\":\"\"},\"action\":{\"label\":\"Action\",\"type\":\"string\",\"description\":\"\",\"name\":\"action\",\"editable\":true,\"placeholder\":\"\"},\"enabled\":{\"label\":\"Enabled\",\"type\":\"boolean\",\"description\":\"\",\"name\":\"enabled\",\"editable\":true,\"placeholder\":\"\"},\"policy\":{\"label\":\"Policy\",\"type\":\"string\",\"description\":\"\",\"name\":\"policy\",\"editable\":true,\"placeholder\":\"\"}},\"displayedField\":\"id\",\"fields\":[\"type\",\"controller\",\"action\",\"enabled\",\"policy\"],\"relations\":[\"role\"]},\"info\":{\"name\":\"permission\",\"description\":\"\"},\"connection\":\"default\",\"collectionName\":\"users-permissions_permission\",\"attributes\":{\"type\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"controller\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"enabled\":{\"type\":\"boolean\",\"required\":true,\"configurable\":false},\"policy\":{\"type\":\"string\",\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"permissions\",\"plugin\":\"users-permissions\",\"configurable\":false}},\"globalId\":\"UsersPermissionsPermission\",\"globalName\":\"UsersPermissionsPermission\",\"primaryKey\":\"id\",\"associations\":[{\"alias\":\"role\",\"type\":\"model\",\"model\":\"role\",\"via\":\"permissions\",\"nature\":\"manyToOne\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"users-permissions\"}],\"fields\":{\"type\":{\"label\":\"Type\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"type\",\"sortable\":true,\"searchable\":true},\"controller\":{\"label\":\"Controller\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"controller\",\"sortable\":true,\"searchable\":true},\"action\":{\"label\":\"Action\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"action\",\"sortable\":true,\"searchable\":true},\"enabled\":{\"label\":\"Enabled\",\"description\":\"\",\"type\":\"boolean\",\"disabled\":false,\"name\":\"enabled\",\"sortable\":true,\"searchable\":true},\"policy\":{\"label\":\"Policy\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"policy\",\"sortable\":true,\"searchable\":true}},\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Type\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"type\",\"sortable\":true,\"searchable\":true},{\"label\":\"Controller\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"controller\",\"sortable\":true,\"searchable\":true},{\"label\":\"Action\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"action\",\"sortable\":true,\"searchable\":true},{\"label\":\"Enabled\",\"description\":\"\",\"type\":\"boolean\",\"disabled\":false,\"name\":\"enabled\",\"sortable\":true,\"searchable\":true}],\"relations\":{\"role\":{\"alias\":\"role\",\"type\":\"model\",\"model\":\"role\",\"via\":\"permissions\",\"nature\":\"manyToOne\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"users-permissions\",\"description\":\"\",\"label\":\"Role\",\"displayedAttribute\":\"name\"}}},\"role\":{\"label\":\"Role\",\"labelPlural\":\"Roles\",\"orm\":\"bookshelf\",\"search\":true,\"filters\":true,\"bulkActions\":true,\"pageEntries\":10,\"defaultSort\":\"id\",\"sort\":\"ASC\",\"options\":{\"timestamps\":false},\"editDisplay\":{\"availableFields\":{\"name\":{\"label\":\"Name\",\"type\":\"string\",\"description\":\"\",\"name\":\"name\",\"editable\":true,\"placeholder\":\"\"},\"description\":{\"label\":\"Description\",\"type\":\"string\",\"description\":\"\",\"name\":\"description\",\"editable\":true,\"placeholder\":\"\"},\"type\":{\"label\":\"Type\",\"type\":\"string\",\"description\":\"\",\"name\":\"type\",\"editable\":true,\"placeholder\":\"\"}},\"displayedField\":\"id\",\"fields\":[\"name\",\"description\",\"type\"],\"relations\":[\"permissions\",\"users\"]},\"info\":{\"name\":\"role\",\"description\":\"\"},\"connection\":\"default\",\"collectionName\":\"users-permissions_role\",\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"collection\":\"permission\",\"via\":\"role\",\"plugin\":\"users-permissions\",\"configurable\":false,\"isVirtual\":true},\"users\":{\"collection\":\"user\",\"via\":\"role\",\"configurable\":false,\"plugin\":\"users-permissions\",\"isVirtual\":true}},\"globalId\":\"UsersPermissionsRole\",\"globalName\":\"UsersPermissionsRole\",\"primaryKey\":\"id\",\"associations\":[{\"alias\":\"permissions\",\"type\":\"collection\",\"collection\":\"permission\",\"via\":\"role\",\"nature\":\"oneToMany\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"users-permissions\"},{\"alias\":\"users\",\"type\":\"collection\",\"collection\":\"user\",\"via\":\"role\",\"nature\":\"oneToMany\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"users-permissions\"}],\"fields\":{\"name\":{\"label\":\"Name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"name\",\"sortable\":true,\"searchable\":true},\"description\":{\"label\":\"Description\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"description\",\"sortable\":true,\"searchable\":true},\"type\":{\"label\":\"Type\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"type\",\"sortable\":true,\"searchable\":true}},\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"name\",\"sortable\":true,\"searchable\":true},{\"label\":\"Description\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"description\",\"sortable\":true,\"searchable\":true},{\"label\":\"Type\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"type\",\"sortable\":true,\"searchable\":true}],\"relations\":{\"permissions\":{\"alias\":\"permissions\",\"type\":\"collection\",\"collection\":\"permission\",\"via\":\"role\",\"nature\":\"oneToMany\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"users-permissions\",\"description\":\"\",\"label\":\"Permissions\",\"displayedAttribute\":\"type\"},\"users\":{\"alias\":\"users\",\"type\":\"collection\",\"collection\":\"user\",\"via\":\"role\",\"nature\":\"oneToMany\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"users-permissions\",\"description\":\"\",\"label\":\"Users\",\"displayedAttribute\":\"username\"}}},\"user\":{\"label\":\"User\",\"labelPlural\":\"Users\",\"orm\":\"bookshelf\",\"search\":true,\"filters\":true,\"bulkActions\":true,\"pageEntries\":10,\"defaultSort\":\"id\",\"sort\":\"ASC\",\"options\":{\"timestamps\":false},\"editDisplay\":{\"availableFields\":{\"username\":{\"label\":\"Username\",\"type\":\"string\",\"description\":\"\",\"name\":\"username\",\"editable\":true,\"placeholder\":\"\"},\"email\":{\"label\":\"Email\",\"type\":\"email\",\"description\":\"\",\"name\":\"email\",\"editable\":true,\"placeholder\":\"\"},\"provider\":{\"label\":\"Provider\",\"type\":\"string\",\"description\":\"\",\"name\":\"provider\",\"editable\":true,\"placeholder\":\"\"},\"password\":{\"label\":\"Password\",\"type\":\"password\",\"description\":\"\",\"name\":\"password\",\"editable\":true,\"placeholder\":\"\"},\"confirmed\":{\"label\":\"Confirmed\",\"type\":\"boolean\",\"description\":\"\",\"name\":\"confirmed\",\"editable\":true,\"placeholder\":\"\"},\"blocked\":{\"label\":\"Blocked\",\"type\":\"boolean\",\"description\":\"\",\"name\":\"blocked\",\"editable\":true,\"placeholder\":\"\"}},\"displayedField\":\"id\",\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"confirmed\",\"blocked\"],\"relations\":[\"role\"]},\"info\":{\"name\":\"user\",\"description\":\"\"},\"connection\":\"default\",\"collectionName\":\"users-permissions_user\",\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"users\",\"plugin\":\"users-permissions\",\"configurable\":false}},\"globalId\":\"UsersPermissionsUser\",\"globalName\":\"UsersPermissionsUser\",\"primaryKey\":\"id\",\"associations\":[{\"alias\":\"role\",\"type\":\"model\",\"model\":\"role\",\"via\":\"users\",\"nature\":\"manyToOne\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"users-permissions\"}],\"fields\":{\"username\":{\"label\":\"Username\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"username\",\"sortable\":true,\"searchable\":true},\"email\":{\"label\":\"Email\",\"description\":\"\",\"type\":\"email\",\"disabled\":false,\"name\":\"email\",\"sortable\":true,\"searchable\":true},\"provider\":{\"label\":\"Provider\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"provider\",\"sortable\":true,\"searchable\":true},\"password\":{\"label\":\"Password\",\"description\":\"\",\"type\":\"password\",\"disabled\":false,\"name\":\"password\",\"sortable\":true,\"searchable\":true},\"confirmed\":{\"label\":\"Confirmed\",\"description\":\"\",\"type\":\"boolean\",\"disabled\":false,\"name\":\"confirmed\",\"sortable\":true,\"searchable\":true},\"blocked\":{\"label\":\"Blocked\",\"description\":\"\",\"type\":\"boolean\",\"disabled\":false,\"name\":\"blocked\",\"sortable\":true,\"searchable\":true}},\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Username\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"username\",\"sortable\":true,\"searchable\":true},{\"label\":\"Email\",\"description\":\"\",\"type\":\"email\",\"disabled\":false,\"name\":\"email\",\"sortable\":true,\"searchable\":true},{\"label\":\"Provider\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"provider\",\"sortable\":true,\"searchable\":true},{\"label\":\"Password\",\"description\":\"\",\"type\":\"password\",\"disabled\":false,\"name\":\"password\",\"sortable\":true,\"searchable\":true}],\"relations\":{\"role\":{\"alias\":\"role\",\"type\":\"model\",\"model\":\"role\",\"via\":\"users\",\"nature\":\"manyToOne\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"users-permissions\",\"description\":\"\",\"label\":\"Role\",\"displayedAttribute\":\"name\"}}}}},\"category\":{\"label\":\"Category\",\"labelPlural\":\"Categories\",\"orm\":\"bookshelf\",\"search\":true,\"filters\":true,\"bulkActions\":true,\"pageEntries\":10,\"defaultSort\":\"id\",\"sort\":\"ASC\",\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"comment\":\"\"},\"editDisplay\":{\"availableFields\":{\"Name\":{\"label\":\"Name\",\"type\":\"string\",\"description\":\"\",\"name\":\"Name\",\"editable\":true,\"placeholder\":\"\"},\"Desc\":{\"label\":\"Desc\",\"type\":\"text\",\"description\":\"\",\"name\":\"Desc\",\"editable\":true,\"placeholder\":\"\"}},\"displayedField\":\"id\",\"fields\":[\"Name\",\"Desc\"],\"relations\":[]},\"info\":{\"name\":\"category\",\"description\":\"\"},\"connection\":\"default\",\"collectionName\":\"Category\",\"attributes\":{\"Name\":{\"required\":true,\"type\":\"string\"},\"Desc\":{\"type\":\"text\"}},\"globalId\":\"Category\",\"globalName\":\"Category\",\"primaryKey\":\"id\",\"associations\":[],\"fields\":{\"Name\":{\"label\":\"Name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"Name\",\"sortable\":true,\"searchable\":true},\"Desc\":{\"label\":\"Desc\",\"description\":\"\",\"type\":\"text\",\"disabled\":false,\"name\":\"Desc\",\"sortable\":true,\"searchable\":true}},\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"Name\",\"sortable\":true,\"searchable\":true},{\"label\":\"Desc\",\"description\":\"\",\"type\":\"text\",\"disabled\":false,\"name\":\"Desc\",\"sortable\":true,\"searchable\":true}],\"relations\":{}},\"notice\":{\"label\":\"Notice\",\"labelPlural\":\"Notices\",\"orm\":\"bookshelf\",\"search\":true,\"filters\":true,\"bulkActions\":true,\"pageEntries\":10,\"defaultSort\":\"id\",\"sort\":\"ASC\",\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"comment\":\"\"},\"editDisplay\":{\"availableFields\":{\"Title\":{\"label\":\"Title\",\"type\":\"string\",\"description\":\"\",\"name\":\"Title\",\"editable\":true,\"placeholder\":\"\"},\"Desc\":{\"label\":\"Desc\",\"type\":\"text\",\"description\":\"\",\"name\":\"Desc\",\"editable\":true,\"placeholder\":\"\"},\"slug\":{\"label\":\"Slug\",\"type\":\"string\",\"description\":\"\",\"name\":\"slug\",\"editable\":true,\"placeholder\":\"\"}},\"displayedField\":\"id\",\"fields\":[\"Title\",\"Desc\",\"slug\"],\"relations\":[]},\"info\":{\"name\":\"notice\",\"description\":\"\"},\"connection\":\"default\",\"collectionName\":\"Notice\",\"attributes\":{\"Title\":{\"required\":true,\"type\":\"string\"},\"Desc\":{\"required\":true,\"type\":\"text\"},\"slug\":{\"required\":true,\"default\":\"slug\",\"type\":\"string\"}},\"globalId\":\"Notice\",\"globalName\":\"Notice\",\"primaryKey\":\"id\",\"associations\":[],\"fields\":{\"Title\":{\"label\":\"Title\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"Title\",\"sortable\":true,\"searchable\":true},\"Desc\":{\"label\":\"Desc\",\"description\":\"\",\"type\":\"text\",\"disabled\":false,\"name\":\"Desc\",\"sortable\":true,\"searchable\":true},\"slug\":{\"label\":\"Slug\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"slug\",\"sortable\":true,\"searchable\":true}},\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Title\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"Title\",\"sortable\":true,\"searchable\":true},{\"label\":\"Desc\",\"description\":\"\",\"type\":\"text\",\"disabled\":false,\"name\":\"Desc\",\"sortable\":true,\"searchable\":true},{\"label\":\"Slug\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"slug\",\"sortable\":true,\"searchable\":true}],\"relations\":{}},\"pages\":{\"label\":\"Pages\",\"labelPlural\":\"Pages\",\"orm\":\"bookshelf\",\"search\":true,\"filters\":true,\"bulkActions\":true,\"pageEntries\":10,\"defaultSort\":\"id\",\"sort\":\"ASC\",\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"comment\":\"\"},\"editDisplay\":{\"availableFields\":{\"Title\":{\"label\":\"Title\",\"type\":\"string\",\"description\":\"\",\"name\":\"Title\",\"editable\":true,\"placeholder\":\"\"},\"Desc\":{\"label\":\"Desc\",\"type\":\"text\",\"description\":\"\",\"name\":\"Desc\",\"editable\":true,\"placeholder\":\"\"},\"Slug\":{\"label\":\"Slug\",\"type\":\"string\",\"description\":\"\",\"name\":\"Slug\",\"editable\":true,\"placeholder\":\"\"},\"Image\":{\"description\":\"\",\"editable\":true,\"label\":\"Image\",\"multiple\":true,\"name\":\"Image\",\"placeholder\":\"\",\"type\":\"file\",\"disabled\":false}},\"displayedField\":\"id\",\"fields\":[\"Title\",\"Desc\",\"Slug\",\"Image\"],\"relations\":[]},\"info\":{\"name\":\"pages\",\"description\":\"\"},\"connection\":\"default\",\"collectionName\":\"Pages\",\"attributes\":{\"Title\":{\"required\":true,\"type\":\"string\"},\"Image\":{\"collection\":\"file\",\"via\":\"related\",\"plugin\":\"upload\"},\"Desc\":{\"required\":true,\"type\":\"text\"},\"Slug\":{\"type\":\"string\"}},\"globalId\":\"Pages\",\"globalName\":\"Pages\",\"primaryKey\":\"id\",\"associations\":[{\"alias\":\"Image\",\"type\":\"collection\",\"collection\":\"file\",\"via\":\"related\",\"nature\":\"manyToManyMorph\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"upload\",\"filter\":\"field\"}],\"fields\":{\"Title\":{\"label\":\"Title\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"Title\",\"sortable\":true,\"searchable\":true},\"Desc\":{\"label\":\"Desc\",\"description\":\"\",\"type\":\"text\",\"disabled\":false,\"name\":\"Desc\",\"sortable\":true,\"searchable\":true},\"Slug\":{\"label\":\"Slug\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"Slug\",\"sortable\":true,\"searchable\":true}},\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Title\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"Title\",\"sortable\":true,\"searchable\":true},{\"label\":\"Desc\",\"description\":\"\",\"type\":\"text\",\"disabled\":false,\"name\":\"Desc\",\"sortable\":true,\"searchable\":true},{\"label\":\"Slug\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"Slug\",\"sortable\":true,\"searchable\":true}],\"relations\":{\"Image\":{\"alias\":\"Image\",\"type\":\"collection\",\"collection\":\"file\",\"via\":\"related\",\"nature\":\"manyToManyMorph\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"upload\",\"filter\":\"field\",\"description\":\"\",\"label\":\"Image\",\"displayedAttribute\":\"name\"}}}},\"layout\":{\"user\":{\"actions\":{\"create\":\"User.create\",\"update\":\"User.update\",\"destroy\":\"User.destroy\",\"deleteall\":\"User.destroyAll\"},\"attributes\":{\"username\":{\"className\":\"col-md-6\"},\"email\":{\"className\":\"col-md-6\"},\"resetPasswordToken\":{\"className\":\"d-none\"},\"role\":{\"className\":\"d-none\"}}},\"category\":{\"attributes\":{\"Desc\":{\"appearance\":\"WYSIWYG\"}}},\"notice\":{\"attributes\":{\"Desc\":{\"appearance\":\"WYSIWYG\"}}},\"pages\":{\"attributes\":{\"Desc\":{\"appearance\":\"WYSIWYG\"}}}}}', 'object', '', ''),
(10, 'plugin_documentation_config', '{\"restrictedAccess\":false}', 'object', '', ''),
(11, 'core_application', '{\"name\":\"CMS\",\"description\":\"by P2B Gravel\"}', 'object', '', ''),
(12, 'plugin_users-permissions_grant', '{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"comments\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-official\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"redirect_uri\":\"/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitter/callback\"}}', 'object', '', ''),
(13, 'plugin_email_provider', '{\"provider\":\"sendmail\",\"name\":\"Sendmail\",\"auth\":{\"sendmail_default_from\":{\"label\":\"Sendmail Default From\",\"type\":\"text\"},\"sendmail_default_replyto\":{\"label\":\"Sendmail Default Reply-To\",\"type\":\"text\"}}}', 'object', 'development', ''),
(14, 'plugin_upload_provider', '{\"provider\":\"local\",\"name\":\"Local server\",\"enabled\":true,\"sizeLimit\":1000000}', 'object', 'development', ''),
(15, 'plugin_users-permissions_email', '{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"refresh\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"­Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square-o\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}', 'object', '', ''),
(16, 'plugin_users-permissions_advanced', '{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_confirmation_redirection\":\"http://localhost:1337/admin\",\"default_role\":\"public\"}', 'object', '', ''),
(17, 'plugin_email_provider', '{\"provider\":\"sendmail\",\"name\":\"Sendmail\",\"auth\":{\"sendmail_default_from\":{\"label\":\"Sendmail Default From\",\"type\":\"text\"},\"sendmail_default_replyto\":{\"label\":\"Sendmail Default Reply-To\",\"type\":\"text\"}}}', 'object', 'production', ''),
(18, 'plugin_email_provider', '{\"provider\":\"sendmail\",\"name\":\"Sendmail\",\"auth\":{\"sendmail_default_from\":{\"label\":\"Sendmail Default From\",\"type\":\"text\"},\"sendmail_default_replyto\":{\"label\":\"Sendmail Default Reply-To\",\"type\":\"text\"}}}', 'object', 'staging', ''),
(19, 'db_model_Pages', '{\"Title\":{\"required\":true,\"type\":\"string\"},\"Image\":{\"collection\":\"file\",\"via\":\"related\",\"plugin\":\"upload\"},\"Desc\":{\"required\":true,\"type\":\"text\"},\"Slug\":{\"type\":\"string\"},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}', 'object', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Notice`
--

CREATE TABLE `Notice` (
  `id` int(11) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Desc` longtext NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Notice`
--

INSERT INTO `Notice` (`id`, `Title`, `Desc`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Xin chào', 'password', 'https://p2b-gravel.com/', '2019-04-28 08:20:15', '2019-04-28 08:47:07');

-- --------------------------------------------------------

--
-- Table structure for table `Pages`
--

CREATE TABLE `Pages` (
  `id` int(11) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Desc` longtext NOT NULL,
  `Slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `upload_file`
--

CREATE TABLE `upload_file` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `hash` varchar(255) NOT NULL,
  `sha256` varchar(255) DEFAULT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `provider` varchar(255) NOT NULL,
  `public_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `upload_file`
--

INSERT INTO `upload_file` (`id`, `name`, `hash`, `sha256`, `ext`, `mime`, `size`, `url`, `provider`, `public_id`, `created_at`, `updated_at`) VALUES
(3, 'logo1.png', '7928d11b5ae4432ebb2188f98f4c31be', 'jzCWntry6C-IcwVCcHh1smfuOLUEJe8ymmWrV3Y0Cqc', '.png', 'image/png', '5.98', '/uploads/7928d11b5ae4432ebb2188f98f4c31be.png', 'local', NULL, '2019-04-28 10:05:47', '2019-04-28 10:05:47');

-- --------------------------------------------------------

--
-- Table structure for table `upload_file_morph`
--

CREATE TABLE `upload_file_morph` (
  `id` int(11) NOT NULL,
  `upload_file_id` int(11) DEFAULT NULL,
  `related_id` int(11) DEFAULT NULL,
  `related_type` longtext,
  `field` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users-permissions_permission`
--

CREATE TABLE `users-permissions_permission` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `controller` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `policy` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users-permissions_permission`
--

INSERT INTO `users-permissions_permission` (`id`, `type`, `controller`, `action`, `enabled`, `policy`, `role`) VALUES
(1, 'application', 'category', 'find', 1, '', 1),
(2, 'application', 'category', 'findone', 1, '', 1),
(3, 'application', 'category', 'count', 1, '', 1),
(4, 'application', 'category', 'create', 1, '', 1),
(5, 'application', 'category', 'update', 1, '', 1),
(6, 'application', 'category', 'destroy', 1, '', 1),
(7, 'application', 'notice', 'find', 1, '', 1),
(8, 'application', 'notice', 'findone', 1, '', 1),
(9, 'application', 'notice', 'count', 1, '', 1),
(10, 'application', 'notice', 'create', 1, '', 1),
(11, 'application', 'notice', 'update', 1, '', 1),
(12, 'application', 'notice', 'destroy', 1, '', 1),
(13, 'content-manager', 'contentmanager', 'models', 1, '', 1),
(14, 'content-manager', 'contentmanager', 'find', 1, '', 1),
(15, 'content-manager', 'contentmanager', 'count', 1, '', 1),
(16, 'content-manager', 'contentmanager', 'findone', 1, '', 1),
(17, 'content-manager', 'contentmanager', 'create', 1, '', 1),
(18, 'content-manager', 'contentmanager', 'update', 1, '', 1),
(19, 'content-manager', 'contentmanager', 'updatesettings', 1, '', 1),
(20, 'content-manager', 'contentmanager', 'delete', 1, '', 1),
(21, 'content-manager', 'contentmanager', 'deleteall', 1, '', 1),
(22, 'content-type-builder', 'contenttypebuilder', 'getmodels', 1, '', 1),
(23, 'content-type-builder', 'contenttypebuilder', 'getmodel', 1, '', 1),
(24, 'content-type-builder', 'contenttypebuilder', 'getconnections', 1, '', 1),
(25, 'content-type-builder', 'contenttypebuilder', 'createmodel', 1, '', 1),
(26, 'content-type-builder', 'contenttypebuilder', 'updatemodel', 1, '', 1),
(27, 'content-type-builder', 'contenttypebuilder', 'deletemodel', 1, '', 1),
(28, 'content-type-builder', 'contenttypebuilder', 'autoreload', 1, '', 1),
(29, 'content-type-builder', 'contenttypebuilder', 'checktableexists', 1, '', 1),
(30, 'documentation', 'documentation', 'getinfos', 1, '', 1),
(31, 'documentation', 'documentation', 'index', 1, '', 1),
(32, 'documentation', 'documentation', 'loginview', 1, '', 1),
(33, 'documentation', 'documentation', 'login', 1, '', 1),
(34, 'documentation', 'documentation', 'regeneratedoc', 1, '', 1),
(35, 'documentation', 'documentation', 'deletedoc', 1, '', 1),
(36, 'documentation', 'documentation', 'updatesettings', 1, '', 1),
(37, 'email', 'email', 'send', 1, '', 1),
(38, 'email', 'email', 'getenvironments', 1, '', 1),
(39, 'email', 'email', 'getsettings', 1, '', 1),
(40, 'email', 'email', 'updatesettings', 1, '', 1),
(41, 'settings-manager', 'settingsmanager', 'menu', 1, '', 1),
(42, 'settings-manager', 'settingsmanager', 'environments', 1, '', 1),
(43, 'settings-manager', 'settingsmanager', 'languages', 1, '', 1),
(44, 'settings-manager', 'settingsmanager', 'databases', 1, '', 1),
(45, 'settings-manager', 'settingsmanager', 'database', 1, '', 1),
(46, 'settings-manager', 'settingsmanager', 'databasemodel', 1, '', 1),
(47, 'settings-manager', 'settingsmanager', 'get', 1, '', 1),
(48, 'settings-manager', 'settingsmanager', 'update', 1, '', 1),
(49, 'settings-manager', 'settingsmanager', 'createlanguage', 1, '', 1),
(50, 'settings-manager', 'settingsmanager', 'deletelanguage', 1, '', 1),
(51, 'settings-manager', 'settingsmanager', 'createdatabase', 1, '', 1),
(52, 'settings-manager', 'settingsmanager', 'updatedatabase', 1, '', 1),
(53, 'settings-manager', 'settingsmanager', 'deletedatabase', 1, '', 1),
(54, 'settings-manager', 'settingsmanager', 'autoreload', 1, '', 1),
(55, 'upload', 'upload', 'upload', 1, '', 1),
(56, 'upload', 'upload', 'getenvironments', 1, '', 1),
(57, 'upload', 'upload', 'getsettings', 1, '', 1),
(58, 'upload', 'upload', 'updatesettings', 1, '', 1),
(59, 'upload', 'upload', 'find', 1, '', 1),
(60, 'upload', 'upload', 'findone', 1, '', 1),
(61, 'upload', 'upload', 'count', 1, '', 1),
(62, 'upload', 'upload', 'destroy', 1, '', 1),
(63, 'upload', 'upload', 'search', 1, '', 1),
(64, 'users-permissions', 'auth', 'callback', 1, '', 1),
(65, 'users-permissions', 'auth', 'changepassword', 1, '', 1),
(66, 'users-permissions', 'auth', 'connect', 1, '', 1),
(67, 'users-permissions', 'auth', 'forgotpassword', 1, '', 1),
(68, 'users-permissions', 'auth', 'register', 1, '', 1),
(69, 'users-permissions', 'auth', 'emailconfirmation', 1, '', 1),
(70, 'users-permissions', 'user', 'find', 1, '', 1),
(71, 'users-permissions', 'user', 'me', 1, '', 1),
(72, 'users-permissions', 'user', 'findone', 1, '', 1),
(73, 'users-permissions', 'user', 'create', 1, '', 1),
(74, 'users-permissions', 'user', 'update', 1, '', 1),
(75, 'users-permissions', 'user', 'destroy', 1, '', 1),
(76, 'users-permissions', 'user', 'destroyall', 1, '', 1),
(77, 'users-permissions', 'userspermissions', 'createrole', 1, '', 1),
(78, 'users-permissions', 'userspermissions', 'deleteprovider', 1, '', 1),
(79, 'users-permissions', 'userspermissions', 'deleterole', 1, '', 1),
(80, 'users-permissions', 'userspermissions', 'getpermissions', 1, '', 1),
(81, 'users-permissions', 'userspermissions', 'getpolicies', 1, '', 1),
(82, 'users-permissions', 'userspermissions', 'getrole', 1, '', 1),
(83, 'users-permissions', 'userspermissions', 'getroles', 1, '', 1),
(84, 'users-permissions', 'userspermissions', 'getroutes', 1, '', 1),
(85, 'users-permissions', 'userspermissions', 'index', 1, '', 1),
(86, 'users-permissions', 'userspermissions', 'init', 1, '', 1),
(87, 'users-permissions', 'userspermissions', 'searchusers', 1, '', 1),
(88, 'users-permissions', 'userspermissions', 'updaterole', 1, '', 1),
(89, 'users-permissions', 'userspermissions', 'getemailtemplate', 1, '', 1),
(90, 'users-permissions', 'userspermissions', 'updateemailtemplate', 1, '', 1),
(91, 'users-permissions', 'userspermissions', 'getadvancedsettings', 1, '', 1),
(92, 'users-permissions', 'userspermissions', 'updateadvancedsettings', 1, '', 1),
(93, 'users-permissions', 'userspermissions', 'getproviders', 1, '', 1),
(94, 'users-permissions', 'userspermissions', 'updateproviders', 1, '', 1),
(95, 'application', 'category', 'find', 0, '', 2),
(96, 'application', 'category', 'findone', 0, '', 2),
(97, 'application', 'category', 'count', 0, '', 2),
(98, 'application', 'category', 'create', 0, '', 2),
(99, 'application', 'category', 'update', 0, '', 2),
(100, 'application', 'category', 'destroy', 0, '', 2),
(101, 'application', 'notice', 'find', 0, '', 2),
(102, 'application', 'notice', 'findone', 0, '', 2),
(103, 'application', 'notice', 'count', 0, '', 2),
(104, 'application', 'notice', 'create', 0, '', 2),
(105, 'application', 'notice', 'update', 0, '', 2),
(106, 'application', 'notice', 'destroy', 0, '', 2),
(107, 'content-manager', 'contentmanager', 'models', 0, '', 2),
(108, 'content-manager', 'contentmanager', 'find', 0, '', 2),
(109, 'content-manager', 'contentmanager', 'count', 0, '', 2),
(110, 'content-manager', 'contentmanager', 'findone', 0, '', 2),
(111, 'content-manager', 'contentmanager', 'create', 0, '', 2),
(112, 'content-manager', 'contentmanager', 'update', 0, '', 2),
(113, 'content-manager', 'contentmanager', 'updatesettings', 0, '', 2),
(114, 'content-manager', 'contentmanager', 'delete', 0, '', 2),
(115, 'content-manager', 'contentmanager', 'deleteall', 0, '', 2),
(116, 'content-type-builder', 'contenttypebuilder', 'getmodels', 0, '', 2),
(117, 'content-type-builder', 'contenttypebuilder', 'getmodel', 0, '', 2),
(118, 'content-type-builder', 'contenttypebuilder', 'getconnections', 0, '', 2),
(119, 'content-type-builder', 'contenttypebuilder', 'createmodel', 0, '', 2),
(120, 'content-type-builder', 'contenttypebuilder', 'updatemodel', 0, '', 2),
(121, 'content-type-builder', 'contenttypebuilder', 'deletemodel', 0, '', 2),
(122, 'content-type-builder', 'contenttypebuilder', 'autoreload', 1, '', 2),
(123, 'content-type-builder', 'contenttypebuilder', 'checktableexists', 0, '', 2),
(124, 'documentation', 'documentation', 'getinfos', 0, '', 2),
(125, 'documentation', 'documentation', 'index', 0, '', 2),
(126, 'documentation', 'documentation', 'loginview', 0, '', 2),
(127, 'documentation', 'documentation', 'login', 0, '', 2),
(128, 'documentation', 'documentation', 'regeneratedoc', 0, '', 2),
(129, 'documentation', 'documentation', 'deletedoc', 0, '', 2),
(130, 'documentation', 'documentation', 'updatesettings', 0, '', 2),
(131, 'email', 'email', 'send', 1, '', 2),
(132, 'email', 'email', 'getenvironments', 1, '', 2),
(133, 'email', 'email', 'getsettings', 1, '', 2),
(134, 'email', 'email', 'updatesettings', 1, '', 2),
(135, 'settings-manager', 'settingsmanager', 'menu', 1, '', 2),
(136, 'settings-manager', 'settingsmanager', 'environments', 1, '', 2),
(137, 'settings-manager', 'settingsmanager', 'languages', 1, '', 2),
(138, 'settings-manager', 'settingsmanager', 'databases', 1, '', 2),
(139, 'settings-manager', 'settingsmanager', 'database', 1, '', 2),
(140, 'settings-manager', 'settingsmanager', 'databasemodel', 1, '', 2),
(141, 'settings-manager', 'settingsmanager', 'get', 1, '', 2),
(142, 'settings-manager', 'settingsmanager', 'update', 1, '', 2),
(143, 'settings-manager', 'settingsmanager', 'createlanguage', 1, '', 2),
(144, 'settings-manager', 'settingsmanager', 'deletelanguage', 1, '', 2),
(145, 'settings-manager', 'settingsmanager', 'createdatabase', 1, '', 2),
(146, 'settings-manager', 'settingsmanager', 'updatedatabase', 1, '', 2),
(147, 'settings-manager', 'settingsmanager', 'deletedatabase', 1, '', 2),
(148, 'settings-manager', 'settingsmanager', 'autoreload', 1, '', 2),
(149, 'upload', 'upload', 'upload', 1, '', 2),
(150, 'upload', 'upload', 'getenvironments', 1, '', 2),
(151, 'upload', 'upload', 'getsettings', 1, '', 2),
(152, 'upload', 'upload', 'updatesettings', 1, '', 2),
(153, 'upload', 'upload', 'find', 1, '', 2),
(154, 'upload', 'upload', 'findone', 1, '', 2),
(155, 'upload', 'upload', 'count', 1, '', 2),
(156, 'upload', 'upload', 'destroy', 1, '', 2),
(157, 'upload', 'upload', 'search', 1, '', 2),
(158, 'users-permissions', 'auth', 'callback', 1, '', 2),
(159, 'users-permissions', 'auth', 'changepassword', 1, '', 2),
(160, 'users-permissions', 'auth', 'connect', 1, '', 2),
(161, 'users-permissions', 'auth', 'forgotpassword', 1, '', 2),
(162, 'users-permissions', 'auth', 'register', 1, '', 2),
(163, 'users-permissions', 'auth', 'emailconfirmation', 1, '', 2),
(164, 'users-permissions', 'user', 'find', 1, '', 2),
(165, 'users-permissions', 'user', 'me', 1, '', 2),
(166, 'users-permissions', 'user', 'findone', 1, '', 2),
(167, 'users-permissions', 'user', 'create', 1, '', 2),
(168, 'users-permissions', 'user', 'update', 1, '', 2),
(169, 'users-permissions', 'user', 'destroy', 1, '', 2),
(170, 'users-permissions', 'user', 'destroyall', 1, '', 2),
(171, 'users-permissions', 'userspermissions', 'createrole', 1, '', 2),
(172, 'users-permissions', 'userspermissions', 'deleteprovider', 1, '', 2),
(173, 'users-permissions', 'userspermissions', 'deleterole', 1, '', 2),
(174, 'users-permissions', 'userspermissions', 'getpermissions', 1, '', 2),
(175, 'users-permissions', 'userspermissions', 'getpolicies', 1, '', 2),
(176, 'users-permissions', 'userspermissions', 'getrole', 1, '', 2),
(177, 'users-permissions', 'userspermissions', 'getroles', 1, '', 2),
(178, 'users-permissions', 'userspermissions', 'getroutes', 1, '', 2),
(179, 'users-permissions', 'userspermissions', 'index', 1, '', 2),
(180, 'users-permissions', 'userspermissions', 'init', 1, '', 2),
(181, 'users-permissions', 'userspermissions', 'searchusers', 1, '', 2),
(182, 'users-permissions', 'userspermissions', 'updaterole', 1, '', 2),
(183, 'users-permissions', 'userspermissions', 'getemailtemplate', 1, '', 2),
(184, 'users-permissions', 'userspermissions', 'updateemailtemplate', 1, '', 2),
(185, 'users-permissions', 'userspermissions', 'getadvancedsettings', 1, '', 2),
(186, 'users-permissions', 'userspermissions', 'updateadvancedsettings', 1, '', 2),
(187, 'users-permissions', 'userspermissions', 'getproviders', 1, '', 2),
(188, 'users-permissions', 'userspermissions', 'updateproviders', 1, '', 2),
(189, 'application', 'category', 'find', 1, '', 3),
(190, 'application', 'category', 'findone', 0, '', 3),
(191, 'application', 'category', 'count', 1, '', 3),
(192, 'application', 'category', 'create', 0, '', 3),
(193, 'application', 'category', 'update', 0, '', 3),
(194, 'application', 'category', 'destroy', 0, '', 3),
(195, 'application', 'notice', 'find', 1, '', 3),
(196, 'application', 'notice', 'findone', 0, '', 3),
(197, 'application', 'notice', 'count', 1, '', 3),
(198, 'application', 'notice', 'create', 0, '', 3),
(199, 'application', 'notice', 'update', 0, '', 3),
(200, 'application', 'notice', 'destroy', 0, '', 3),
(201, 'content-manager', 'contentmanager', 'models', 0, '', 3),
(202, 'content-manager', 'contentmanager', 'find', 0, '', 3),
(203, 'content-manager', 'contentmanager', 'count', 0, '', 3),
(204, 'content-manager', 'contentmanager', 'findone', 0, '', 3),
(205, 'content-manager', 'contentmanager', 'create', 0, '', 3),
(206, 'content-manager', 'contentmanager', 'update', 0, '', 3),
(207, 'content-manager', 'contentmanager', 'updatesettings', 0, '', 3),
(208, 'content-manager', 'contentmanager', 'delete', 0, '', 3),
(209, 'content-manager', 'contentmanager', 'deleteall', 0, '', 3),
(210, 'content-type-builder', 'contenttypebuilder', 'getmodels', 0, '', 3),
(211, 'content-type-builder', 'contenttypebuilder', 'getmodel', 0, '', 3),
(212, 'content-type-builder', 'contenttypebuilder', 'getconnections', 0, '', 3),
(213, 'content-type-builder', 'contenttypebuilder', 'createmodel', 0, '', 3),
(214, 'content-type-builder', 'contenttypebuilder', 'updatemodel', 0, '', 3),
(215, 'content-type-builder', 'contenttypebuilder', 'deletemodel', 0, '', 3),
(216, 'content-type-builder', 'contenttypebuilder', 'autoreload', 1, '', 3),
(217, 'content-type-builder', 'contenttypebuilder', 'checktableexists', 0, '', 3),
(218, 'documentation', 'documentation', 'getinfos', 0, '', 3),
(219, 'documentation', 'documentation', 'index', 0, '', 3),
(220, 'documentation', 'documentation', 'loginview', 0, '', 3),
(221, 'documentation', 'documentation', 'login', 0, '', 3),
(222, 'documentation', 'documentation', 'regeneratedoc', 0, '', 3),
(223, 'documentation', 'documentation', 'deletedoc', 0, '', 3),
(224, 'documentation', 'documentation', 'updatesettings', 0, '', 3),
(225, 'email', 'email', 'send', 0, '', 3),
(226, 'email', 'email', 'getenvironments', 0, '', 3),
(227, 'email', 'email', 'getsettings', 0, '', 3),
(228, 'email', 'email', 'updatesettings', 0, '', 3),
(229, 'settings-manager', 'settingsmanager', 'menu', 0, '', 3),
(230, 'settings-manager', 'settingsmanager', 'environments', 0, '', 3),
(231, 'settings-manager', 'settingsmanager', 'languages', 0, '', 3),
(232, 'settings-manager', 'settingsmanager', 'databases', 0, '', 3),
(233, 'settings-manager', 'settingsmanager', 'database', 0, '', 3),
(234, 'settings-manager', 'settingsmanager', 'databasemodel', 0, '', 3),
(235, 'settings-manager', 'settingsmanager', 'get', 0, '', 3),
(236, 'settings-manager', 'settingsmanager', 'update', 0, '', 3),
(237, 'settings-manager', 'settingsmanager', 'createlanguage', 0, '', 3),
(238, 'settings-manager', 'settingsmanager', 'deletelanguage', 0, '', 3),
(239, 'settings-manager', 'settingsmanager', 'createdatabase', 0, '', 3),
(240, 'settings-manager', 'settingsmanager', 'updatedatabase', 0, '', 3),
(241, 'settings-manager', 'settingsmanager', 'deletedatabase', 0, '', 3),
(242, 'settings-manager', 'settingsmanager', 'autoreload', 1, '', 3),
(243, 'upload', 'upload', 'upload', 0, '', 3),
(244, 'upload', 'upload', 'getenvironments', 0, '', 3),
(245, 'upload', 'upload', 'getsettings', 0, '', 3),
(246, 'upload', 'upload', 'updatesettings', 0, '', 3),
(247, 'upload', 'upload', 'find', 0, '', 3),
(248, 'upload', 'upload', 'findone', 0, '', 3),
(249, 'upload', 'upload', 'count', 0, '', 3),
(250, 'upload', 'upload', 'destroy', 0, '', 3),
(251, 'upload', 'upload', 'search', 0, '', 3),
(252, 'users-permissions', 'auth', 'callback', 1, '', 3),
(253, 'users-permissions', 'auth', 'changepassword', 1, '', 3),
(254, 'users-permissions', 'auth', 'connect', 1, '', 3),
(255, 'users-permissions', 'auth', 'forgotpassword', 1, '', 3),
(256, 'users-permissions', 'auth', 'register', 1, '', 3),
(257, 'users-permissions', 'auth', 'emailconfirmation', 1, '', 3),
(258, 'users-permissions', 'user', 'find', 0, '', 3),
(259, 'users-permissions', 'user', 'me', 1, '', 3),
(260, 'users-permissions', 'user', 'findone', 0, '', 3),
(261, 'users-permissions', 'user', 'create', 0, '', 3),
(262, 'users-permissions', 'user', 'update', 0, '', 3),
(263, 'users-permissions', 'user', 'destroy', 0, '', 3),
(264, 'users-permissions', 'user', 'destroyall', 0, '', 3),
(265, 'users-permissions', 'userspermissions', 'createrole', 0, '', 3),
(266, 'users-permissions', 'userspermissions', 'deleteprovider', 0, '', 3),
(267, 'users-permissions', 'userspermissions', 'deleterole', 0, '', 3),
(268, 'users-permissions', 'userspermissions', 'getpermissions', 0, '', 3),
(269, 'users-permissions', 'userspermissions', 'getpolicies', 0, '', 3),
(270, 'users-permissions', 'userspermissions', 'getrole', 0, '', 3),
(271, 'users-permissions', 'userspermissions', 'getroles', 0, '', 3),
(272, 'users-permissions', 'userspermissions', 'getroutes', 0, '', 3),
(273, 'users-permissions', 'userspermissions', 'index', 0, '', 3),
(274, 'users-permissions', 'userspermissions', 'init', 1, '', 3),
(275, 'users-permissions', 'userspermissions', 'searchusers', 0, '', 3),
(276, 'users-permissions', 'userspermissions', 'updaterole', 0, '', 3),
(277, 'users-permissions', 'userspermissions', 'getemailtemplate', 0, '', 3),
(278, 'users-permissions', 'userspermissions', 'updateemailtemplate', 0, '', 3),
(279, 'users-permissions', 'userspermissions', 'getadvancedsettings', 0, '', 3),
(280, 'users-permissions', 'userspermissions', 'updateadvancedsettings', 0, '', 3),
(281, 'users-permissions', 'userspermissions', 'getproviders', 0, '', 3),
(282, 'users-permissions', 'userspermissions', 'updateproviders', 0, '', 3),
(283, 'application', 'pages', 'find', 1, '', 1),
(284, 'application', 'pages', 'findone', 1, '', 1),
(285, 'application', 'pages', 'count', 1, '', 1),
(286, 'application', 'pages', 'create', 1, '', 1),
(287, 'application', 'pages', 'update', 1, '', 1),
(288, 'application', 'pages', 'destroy', 1, '', 1),
(289, 'application', 'pages', 'find', 0, '', 2),
(290, 'application', 'pages', 'findone', 0, '', 2),
(291, 'application', 'pages', 'count', 0, '', 2),
(292, 'application', 'pages', 'create', 0, '', 2),
(293, 'application', 'pages', 'update', 0, '', 2),
(294, 'application', 'pages', 'destroy', 0, '', 2),
(295, 'application', 'pages', 'find', 1, '', 3),
(296, 'application', 'pages', 'findone', 0, '', 3),
(297, 'application', 'pages', 'count', 1, '', 3),
(298, 'application', 'pages', 'create', 0, '', 3),
(299, 'application', 'pages', 'update', 0, '', 3),
(300, 'application', 'pages', 'destroy', 0, '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users-permissions_role`
--

CREATE TABLE `users-permissions_role` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users-permissions_role`
--

INSERT INTO `users-permissions_role` (`id`, `name`, `description`, `type`) VALUES
(1, 'Administrator', 'These users have all access in the project.', 'root'),
(2, 'Authenticated', 'Default role given to authenticated user.', 'authenticated'),
(3, 'Public', 'Default role given to unauthenticated user.', 'public');

-- --------------------------------------------------------

--
-- Table structure for table `users-permissions_user`
--

CREATE TABLE `users-permissions_user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users-permissions_user`
--

INSERT INTO `users-permissions_user` (`id`, `username`, `email`, `provider`, `password`, `resetPasswordToken`, `confirmed`, `blocked`, `role`) VALUES
(1, 'admin', 'admin@gmail.com', 'local', '$2a$10$Ofu/zqqKzpfjjaiFWxAqUuD9nhdGpd3RHZ43otVhRqujRd/bcW3jm', NULL, 1, NULL, 1),
(2, 'demo', 'demoabc@gmail.com', 'local', '$2a$10$oZL8Ll6j1o32SKjICQFw5ucDO69o.1vhfovoS54Kd6CXNrFAdEJj6', NULL, 0, 0, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Category`
--
ALTER TABLE `Category`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `Category` ADD FULLTEXT KEY `SEARCH_CATEGORY` (`Name`,`Desc`);

--
-- Indexes for table `core_store`
--
ALTER TABLE `core_store`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `core_store` ADD FULLTEXT KEY `SEARCH_CORE_STORE` (`key`,`value`,`type`,`environment`,`tag`);

--
-- Indexes for table `Notice`
--
ALTER TABLE `Notice`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `Notice` ADD FULLTEXT KEY `SEARCH_NOTICE` (`Title`,`Desc`,`slug`);

--
-- Indexes for table `Pages`
--
ALTER TABLE `Pages`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `Pages` ADD FULLTEXT KEY `SEARCH_PAGES` (`Title`,`Desc`,`Slug`);

--
-- Indexes for table `upload_file`
--
ALTER TABLE `upload_file`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `upload_file` ADD FULLTEXT KEY `SEARCH_UPLOAD_FILE` (`name`,`hash`,`sha256`,`ext`,`mime`,`size`,`url`,`provider`,`public_id`);

--
-- Indexes for table `upload_file_morph`
--
ALTER TABLE `upload_file_morph`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `upload_file_morph` ADD FULLTEXT KEY `SEARCH_UPLOAD_FILE_MORPH` (`related_type`,`field`);

--
-- Indexes for table `users-permissions_permission`
--
ALTER TABLE `users-permissions_permission`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `users-permissions_permission` ADD FULLTEXT KEY `SEARCH_USERS_PERMISSIONS_PERMISSION` (`type`,`controller`,`action`,`policy`);

--
-- Indexes for table `users-permissions_role`
--
ALTER TABLE `users-permissions_role`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `users-permissions_role` ADD FULLTEXT KEY `SEARCH_USERS_PERMISSIONS_ROLE` (`name`,`description`,`type`);

--
-- Indexes for table `users-permissions_user`
--
ALTER TABLE `users-permissions_user`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `users-permissions_user` ADD FULLTEXT KEY `SEARCH_USERS_PERMISSIONS_USER` (`username`,`provider`,`resetPasswordToken`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Category`
--
ALTER TABLE `Category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `core_store`
--
ALTER TABLE `core_store`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `Notice`
--
ALTER TABLE `Notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `Pages`
--
ALTER TABLE `Pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `upload_file`
--
ALTER TABLE `upload_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `upload_file_morph`
--
ALTER TABLE `upload_file_morph`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users-permissions_permission`
--
ALTER TABLE `users-permissions_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT for table `users-permissions_role`
--
ALTER TABLE `users-permissions_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users-permissions_user`
--
ALTER TABLE `users-permissions_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
