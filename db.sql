-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2021 at 06:40 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `0-0-8-5`
--

-- --------------------------------------------------------

--
-- Table structure for table `crm_activities`
--

CREATE TABLE `crm_activities` (
  `activity_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `activity_type` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `for_id` bigint(20) NOT NULL,
  `seen` tinyint(1) NOT NULL,
  `created` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crm_activities_meta`
--

CREATE TABLE `crm_activities_meta` (
  `meta_id` bigint(20) NOT NULL,
  `activity_id` bigint(20) NOT NULL,
  `meta_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_extra` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crm_analytics_filters`
--

CREATE TABLE `crm_analytics_filters` (
  `filter_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `filter_type` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `for_id` bigint(20) NOT NULL,
  `created` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crm_analytics_filters_meta`
--

CREATE TABLE `crm_analytics_filters_meta` (
  `meta_id` bigint(20) NOT NULL,
  `filter_id` bigint(20) NOT NULL,
  `meta_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_extra` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crm_apps_favorites`
--

CREATE TABLE `crm_apps_favorites` (
  `favorites_id` bigint(20) NOT NULL,
  `app` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `member_id` bigint(20) NOT NULL,
  `created` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crm_apps_installed`
--

CREATE TABLE `crm_apps_installed` (
  `installed_id` bigint(20) NOT NULL,
  `app` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `member_id` bigint(20) NOT NULL,
  `created` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crm_automations`
--

CREATE TABLE `crm_automations` (
  `automation_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `member_id` bigint(20) NOT NULL,
  `automation_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crm_automations_actions`
--

CREATE TABLE `crm_automations_actions` (
  `action_id` bigint(20) NOT NULL,
  `automation_id` bigint(20) NOT NULL,
  `position` tinyint(1) NOT NULL,
  `created` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crm_automations_actions_meta`
--

CREATE TABLE `crm_automations_actions_meta` (
  `meta_id` bigint(20) NOT NULL,
  `action_id` bigint(20) NOT NULL,
  `meta_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_extra` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crm_automations_categories`
--

CREATE TABLE `crm_automations_categories` (
  `category_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `created` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crm_automations_chronology`
--

CREATE TABLE `crm_automations_chronology` (
  `chronology_id` bigint(20) NOT NULL,
  `automation_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `failed` tinyint(1) NOT NULL,
  `seen` tinyint(1) NOT NULL,
  `created` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crm_automations_chronology_meta`
--

CREATE TABLE `crm_automations_chronology_meta` (
  `meta_id` bigint(20) NOT NULL,
  `chronology_id` bigint(20) NOT NULL,
  `meta_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_extra` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crm_automations_meta`
--

CREATE TABLE `crm_automations_meta` (
  `meta_id` bigint(20) NOT NULL,
  `automation_id` bigint(20) NOT NULL,
  `meta_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_extra` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crm_automations_tasks`
--

CREATE TABLE `crm_automations_tasks` (
  `task_id` bigint(20) NOT NULL,
  `automation_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `complete` tinyint(1) NOT NULL,
  `scheduled_time` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `created` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crm_automations_tasks_chronology`
--

CREATE TABLE `crm_automations_tasks_chronology` (
  `chronology_id` bigint(20) NOT NULL,
  `automation_id` bigint(20) NOT NULL,
  `task_id` bigint(20) NOT NULL,
  `action_id` bigint(20) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `scheduled_time` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `created` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crm_automations_tasks_chronology_meta`
--

CREATE TABLE `crm_automations_tasks_chronology_meta` (
  `meta_id` bigint(20) NOT NULL,
  `chronology_id` bigint(20) NOT NULL,
  `meta_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_extra` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crm_automations_tasks_meta`
--

CREATE TABLE `crm_automations_tasks_meta` (
  `meta_id` bigint(20) NOT NULL,
  `task_id` bigint(20) NOT NULL,
  `meta_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_extra` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crm_automations_triggers_meta`
--

CREATE TABLE `crm_automations_triggers_meta` (
  `meta_id` bigint(20) NOT NULL,
  `automation_id` bigint(20) NOT NULL,
  `meta_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_extra` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crm_chronology`
--

CREATE TABLE `crm_chronology` (
  `chronology_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `chronology_type` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `for_id` bigint(20) NOT NULL,
  `created` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crm_chronology_meta`
--

CREATE TABLE `crm_chronology_meta` (
  `meta_id` bigint(20) NOT NULL,
  `chronology_id` bigint(20) NOT NULL,
  `meta_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_extra` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crm_clients`
--

CREATE TABLE `crm_clients` (
  `client_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crm_clients_meta`
--

CREATE TABLE `crm_clients_meta` (
  `meta_id` bigint(20) NOT NULL,
  `client_id` bigint(20) NOT NULL,
  `meta_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_extra` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crm_clients_roles`
--

CREATE TABLE `crm_clients_roles` (
  `role_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crm_clients_roles_fields`
--

CREATE TABLE `crm_clients_roles_fields` (
  `field_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  `created` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crm_clients_roles_fields_meta`
--

CREATE TABLE `crm_clients_roles_fields_meta` (
  `meta_id` bigint(20) NOT NULL,
  `field_id` bigint(20) NOT NULL,
  `meta_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_extra` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crm_clients_roles_folders`
--

CREATE TABLE `crm_clients_roles_folders` (
  `folder_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `folder_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `created` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crm_clients_roles_folders_meta`
--

CREATE TABLE `crm_clients_roles_folders_meta` (
  `meta_id` bigint(20) NOT NULL,
  `folder_id` bigint(20) NOT NULL,
  `meta_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_extra` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crm_clients_roles_meta`
--

CREATE TABLE `crm_clients_roles_meta` (
  `meta_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  `meta_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_extra` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crm_dashboard_widgets`
--

CREATE TABLE `crm_dashboard_widgets` (
  `widget_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `widget` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `widget_position` int(4) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_events`
--

CREATE TABLE `dashboard_events` (
  `event_id` bigint(20) NOT NULL,
  `event_type` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `created` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dashboard_events`
--

INSERT INTO `dashboard_events` (`event_id`, `event_type`, `created`) VALUES
(3, 'new_member', '1637740778'),
(4, 'new_member', '1638274928');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_events_meta`
--

CREATE TABLE `dashboard_events_meta` (
  `meta_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `meta_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_extra` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widgets`
--

CREATE TABLE `dashboard_widgets` (
  `widget_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `widget` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `widget_position` int(4) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `crm_activities`
--
ALTER TABLE `crm_activities`
  ADD PRIMARY KEY (`activity_id`);

--
-- Indexes for table `crm_activities_meta`
--
ALTER TABLE `crm_activities_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `crm_analytics_filters`
--
ALTER TABLE `crm_analytics_filters`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `crm_analytics_filters_meta`
--
ALTER TABLE `crm_analytics_filters_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `crm_apps_favorites`
--
ALTER TABLE `crm_apps_favorites`
  ADD PRIMARY KEY (`favorites_id`);

--
-- Indexes for table `crm_apps_installed`
--
ALTER TABLE `crm_apps_installed`
  ADD PRIMARY KEY (`installed_id`);

--
-- Indexes for table `crm_automations`
--
ALTER TABLE `crm_automations`
  ADD PRIMARY KEY (`automation_id`);

--
-- Indexes for table `crm_automations_actions`
--
ALTER TABLE `crm_automations_actions`
  ADD PRIMARY KEY (`action_id`);

--
-- Indexes for table `crm_automations_actions_meta`
--
ALTER TABLE `crm_automations_actions_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `crm_automations_categories`
--
ALTER TABLE `crm_automations_categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `crm_automations_chronology`
--
ALTER TABLE `crm_automations_chronology`
  ADD PRIMARY KEY (`chronology_id`);

--
-- Indexes for table `crm_automations_chronology_meta`
--
ALTER TABLE `crm_automations_chronology_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `crm_automations_meta`
--
ALTER TABLE `crm_automations_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `crm_automations_tasks`
--
ALTER TABLE `crm_automations_tasks`
  ADD PRIMARY KEY (`task_id`);

--
-- Indexes for table `crm_automations_tasks_chronology`
--
ALTER TABLE `crm_automations_tasks_chronology`
  ADD PRIMARY KEY (`chronology_id`);

--
-- Indexes for table `crm_automations_tasks_chronology_meta`
--
ALTER TABLE `crm_automations_tasks_chronology_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `crm_automations_tasks_meta`
--
ALTER TABLE `crm_automations_tasks_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `crm_automations_triggers_meta`
--
ALTER TABLE `crm_automations_triggers_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `crm_chronology`
--
ALTER TABLE `crm_chronology`
  ADD PRIMARY KEY (`chronology_id`);

--
-- Indexes for table `crm_chronology_meta`
--
ALTER TABLE `crm_chronology_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `crm_clients`
--
ALTER TABLE `crm_clients`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `crm_clients_meta`
--
ALTER TABLE `crm_clients_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `crm_clients_roles`
--
ALTER TABLE `crm_clients_roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `crm_clients_roles_fields`
--
ALTER TABLE `crm_clients_roles_fields`
  ADD PRIMARY KEY (`field_id`);

--
-- Indexes for table `crm_clients_roles_fields_meta`
--
ALTER TABLE `crm_clients_roles_fields_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `crm_clients_roles_folders`
--
ALTER TABLE `crm_clients_roles_folders`
  ADD PRIMARY KEY (`folder_id`);

--
-- Indexes for table `crm_clients_roles_folders_meta`
--
ALTER TABLE `crm_clients_roles_folders_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `crm_clients_roles_meta`
--
ALTER TABLE `crm_clients_roles_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `crm_dashboard_widgets`
--
ALTER TABLE `crm_dashboard_widgets`
  ADD PRIMARY KEY (`widget_id`);

--
-- Indexes for table `dashboard_events`
--
ALTER TABLE `dashboard_events`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `dashboard_events_meta`
--
ALTER TABLE `dashboard_events_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  ADD PRIMARY KEY (`widget_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `crm_activities`
--
ALTER TABLE `crm_activities`
  MODIFY `activity_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=538;

--
-- AUTO_INCREMENT for table `crm_activities_meta`
--
ALTER TABLE `crm_activities_meta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1634;

--
-- AUTO_INCREMENT for table `crm_analytics_filters`
--
ALTER TABLE `crm_analytics_filters`
  MODIFY `filter_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_analytics_filters_meta`
--
ALTER TABLE `crm_analytics_filters_meta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_apps_favorites`
--
ALTER TABLE `crm_apps_favorites`
  MODIFY `favorites_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_apps_installed`
--
ALTER TABLE `crm_apps_installed`
  MODIFY `installed_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `crm_automations`
--
ALTER TABLE `crm_automations`
  MODIFY `automation_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_automations_actions`
--
ALTER TABLE `crm_automations_actions`
  MODIFY `action_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_automations_actions_meta`
--
ALTER TABLE `crm_automations_actions_meta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_automations_categories`
--
ALTER TABLE `crm_automations_categories`
  MODIFY `category_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_automations_chronology`
--
ALTER TABLE `crm_automations_chronology`
  MODIFY `chronology_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_automations_chronology_meta`
--
ALTER TABLE `crm_automations_chronology_meta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_automations_meta`
--
ALTER TABLE `crm_automations_meta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_automations_tasks`
--
ALTER TABLE `crm_automations_tasks`
  MODIFY `task_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_automations_tasks_chronology`
--
ALTER TABLE `crm_automations_tasks_chronology`
  MODIFY `chronology_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_automations_tasks_chronology_meta`
--
ALTER TABLE `crm_automations_tasks_chronology_meta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_automations_tasks_meta`
--
ALTER TABLE `crm_automations_tasks_meta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_automations_triggers_meta`
--
ALTER TABLE `crm_automations_triggers_meta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `crm_chronology`
--
ALTER TABLE `crm_chronology`
  MODIFY `chronology_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_chronology_meta`
--
ALTER TABLE `crm_chronology_meta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_clients`
--
ALTER TABLE `crm_clients`
  MODIFY `client_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_clients_meta`
--
ALTER TABLE `crm_clients_meta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_clients_roles`
--
ALTER TABLE `crm_clients_roles`
  MODIFY `role_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `crm_clients_roles_fields`
--
ALTER TABLE `crm_clients_roles_fields`
  MODIFY `field_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_clients_roles_fields_meta`
--
ALTER TABLE `crm_clients_roles_fields_meta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_clients_roles_folders`
--
ALTER TABLE `crm_clients_roles_folders`
  MODIFY `folder_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_clients_roles_folders_meta`
--
ALTER TABLE `crm_clients_roles_folders_meta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_clients_roles_meta`
--
ALTER TABLE `crm_clients_roles_meta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `crm_dashboard_widgets`
--
ALTER TABLE `crm_dashboard_widgets`
  MODIFY `widget_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dashboard_events`
--
ALTER TABLE `dashboard_events`
  MODIFY `event_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dashboard_events_meta`
--
ALTER TABLE `dashboard_events_meta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  MODIFY `widget_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;