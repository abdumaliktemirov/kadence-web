-- MySQL dump 10.13  Distrib 8.0.16, for Linux (x86_64)
--
-- Host: localhost    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2023-07-03 10:26:01','2023-07-03 10:26:01','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=250 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://localhost:10003','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://localhost:10003','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','kadence','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','dev-email@wpengine.local','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:93:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','53496','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','posts','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','0','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','0','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1703931960','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'wp_force_deactivated_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (99,'initial_db_version','53496','yes');
INSERT INTO `wp_options` VALUES (100,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (101,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (102,'user_count','1','no');
INSERT INTO `wp_options` VALUES (103,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (104,'sidebars_widgets','a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (105,'cron','a:8:{i:1688581564;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1688595964;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1688596058;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1688639163;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1688639258;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1688639259;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1689071163;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (115,'nonce_key',':}Bj7BS@WZzmBC>[fR_)=Gxb.[-3Y$A_X*hmfs^^%&F3jM8Q%H=2)5sPwSVVHwh,','no');
INSERT INTO `wp_options` VALUES (116,'nonce_salt',')mL4Cb;` CiN=&}K+o{u9 I^4&~]?N.Zg|o3#*`Y4;^q{4*hzv&jRf:Q{Ze)g+EX','no');
INSERT INTO `wp_options` VALUES (117,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (119,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (120,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (121,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (123,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.2.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.2.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.2.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.2.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.2.2\";s:7:\"version\";s:5:\"6.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1688553429;s:15:\"version_checked\";s:5:\"6.2.2\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (124,'auth_key','UuV(>Bcl|#?HoJQJ9~k81O kUm?g4{+}G=(M**`0=z%Z0{0)D?@koqQShbS0Gu2O','no');
INSERT INTO `wp_options` VALUES (125,'auth_salt','j)xJ,94^tG_+GxpNtH+;ngoiD[} n>2)La#N=J|]sr`m&XWz{OVA$NWZGd;o}z7.','no');
INSERT INTO `wp_options` VALUES (126,'logged_in_key','vtEO)M2B;`g_~_U-P({6J{tkX^~Nkp-JticFWD<R@I}gf/H-[2!sU<UF B[NxV($','no');
INSERT INTO `wp_options` VALUES (127,'logged_in_salt','Mw@JrV4/:tM/Z<9{S%}9Y^X9&$UVAoH~vNjCer+}M_5WD24+l~9L/(KB2 lg)Res','no');
INSERT INTO `wp_options` VALUES (128,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (129,'theme_mods_twentytwentythree','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1688380474;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','yes');
INSERT INTO `wp_options` VALUES (130,'https_detection_errors','a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:21:\"HTTPS request failed.\";}}','yes');
INSERT INTO `wp_options` VALUES (136,'_site_transient_timeout_browser_14d58a1ba286f087d9736249ec785314','1688984859','no');
INSERT INTO `wp_options` VALUES (137,'_site_transient_browser_14d58a1ba286f087d9736249ec785314','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"114.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (138,'_site_transient_timeout_php_check_9522db31646a2e4672d744b6f556967b','1688984859','no');
INSERT INTO `wp_options` VALUES (139,'_site_transient_php_check_9522db31646a2e4672d744b6f556967b','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (153,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (156,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (161,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (162,'acf_version','6.1.7','yes');
INSERT INTO `wp_options` VALUES (163,'current_theme','Kadence','yes');
INSERT INTO `wp_options` VALUES (164,'theme_mods_kadence','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (165,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (170,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (173,'_transient_timeout_acf_plugin_updates','1688557125','no');
INSERT INTO `wp_options` VALUES (174,'_transient_acf_plugin_updates','a:4:{s:7:\"plugins\";a:0:{}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"6.1.7\";}}','no');
INSERT INTO `wp_options` VALUES (178,'wpcf7','a:2:{s:7:\"version\";s:5:\"5.7.7\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1688384330;s:7:\"version\";s:5:\"5.7.7\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}','yes');
INSERT INTO `wp_options` VALUES (183,'secret_key','{|E`sD8LqHF{_n#aSIhcTeI>!z?x<&%B:~kG@*gc9n4k#},6SJhIh8)ddtS4<y|/','no');
INSERT INTO `wp_options` VALUES (189,'ai1wm_updater','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (198,'_transient_health-check-site-status-result','{\"good\":14,\"recommended\":3,\"critical\":1}','yes');
INSERT INTO `wp_options` VALUES (202,'_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e','1688587367','no');
INSERT INTO `wp_options` VALUES (203,'_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e','a:4:{s:9:\"sandboxed\";b:0;s:5:\"error\";N;s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (227,'active_plugins','a:3:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";}','yes');
INSERT INTO `wp_options` VALUES (228,'ai1wm_secret_key','l5FiE2CsnMXK','yes');
INSERT INTO `wp_options` VALUES (229,'template','kadence','yes');
INSERT INTO `wp_options` VALUES (230,'stylesheet','kadence','yes');
INSERT INTO `wp_options` VALUES (231,'jetpack_active_modules','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (232,'ai1wm_status','a:3:{s:4:\"type\";s:4:\"done\";s:5:\"title\";s:41:\"Your data has been imported successfully!\";s:7:\"message\";s:520:\"You need to perform two more steps:<br /><strong>1. You must save your permalinks structure twice. <a class=\"ai1wm-no-underline\" href=\"http://localhost:10003/wp-admin/options-permalink.php#submit\" target=\"_blank\">Permalinks Settings</a></strong> <small>(opens a new window)</small><br /><strong>2. <a class=\"ai1wm-no-underline\" href=\"https://wordpress.org/support/view/plugin-reviews/all-in-one-wp-migration?rate=5#postform\" target=\"_blank\">Optionally, review the plugin</a>.</strong> <small>(opens a new window)</small>\";}','yes');
INSERT INTO `wp_options` VALUES (239,'_site_transient_timeout_theme_roots','1688555230','no');
INSERT INTO `wp_options` VALUES (240,'_site_transient_theme_roots','a:4:{s:7:\"kadence\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (241,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1688553431;s:7:\"checked\";a:4:{s:7:\"kadence\";s:5:\"1.0.0\";s:15:\"twentytwentyone\";s:3:\"1.8\";s:17:\"twentytwentythree\";s:3:\"1.1\";s:15:\"twentytwentytwo\";s:3:\"1.4\";}s:8:\"response\";a:1:{s:7:\"kadence\";a:6:{s:5:\"theme\";s:7:\"kadence\";s:11:\"new_version\";s:6:\"1.1.40\";s:3:\"url\";s:37:\"https://wordpress.org/themes/kadence/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/theme/kadence.1.1.40.zip\";s:8:\"requires\";s:3:\"5.4\";s:12:\"requires_php\";s:3:\"7.2\";}}s:9:\"no_update\";a:3:{s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.8.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.1.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.4.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (242,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1688553432;s:8:\"response\";a:1:{s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:37:\"w.org/plugins/all-in-one-wp-migration\";s:4:\"slug\";s:23:\"all-in-one-wp-migration\";s:6:\"plugin\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:11:\"new_version\";s:4:\"7.76\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/all-in-one-wp-migration/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/all-in-one-wp-migration.7.76.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-256x256.png?rev=2458334\";s:2:\"1x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-128x128.png?rev=2458334\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-1544x500.png?rev=2902233\";s:2:\"1x\";s:78:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-772x250.png?rev=2902233\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.3\";s:6:\"tested\";s:5:\"6.2.2\";s:12:\"requires_php\";s:3:\"5.3\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.7.7\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.7.7.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.0\";}}s:7:\"checked\";a:3:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"6.1.7\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:4:\"6.77\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.7.7\";}}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=536 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (5,6,'_edit_lock','1688545077:1');
INSERT INTO `wp_postmeta` VALUES (6,6,'_wp_page_template','page-templates/contact-us.php');
INSERT INTO `wp_postmeta` VALUES (7,8,'_edit_lock','1688506684:1');
INSERT INTO `wp_postmeta` VALUES (8,8,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (9,6,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (10,6,'hero_label','get in touch');
INSERT INTO `wp_postmeta` VALUES (11,6,'_hero_label','field_649d615d9f17b');
INSERT INTO `wp_postmeta` VALUES (12,6,'hero_title','How can we help?');
INSERT INTO `wp_postmeta` VALUES (13,6,'_hero_title','field_649d61a89f17c');
INSERT INTO `wp_postmeta` VALUES (14,6,'hero_text','Let us know how we can help to get you started.');
INSERT INTO `wp_postmeta` VALUES (15,6,'_hero_text','field_649d61b09f17d');
INSERT INTO `wp_postmeta` VALUES (16,6,'hero_contact_form','[contact-form-7 id=\"40\" title=\"Contact form 1\"]');
INSERT INTO `wp_postmeta` VALUES (17,6,'_hero_contact_form','field_649d61c19f17f');
INSERT INTO `wp_postmeta` VALUES (18,6,'hero','');
INSERT INTO `wp_postmeta` VALUES (19,6,'_hero','field_649d6104a15ae');
INSERT INTO `wp_postmeta` VALUES (20,6,'lets_talk_title','');
INSERT INTO `wp_postmeta` VALUES (21,6,'_lets_talk_title','field_64a088ba580cb');
INSERT INTO `wp_postmeta` VALUES (22,6,'lets_talk_blocks','');
INSERT INTO `wp_postmeta` VALUES (23,6,'_lets_talk_blocks','field_64a08934580cc');
INSERT INTO `wp_postmeta` VALUES (24,6,'lets_talk','');
INSERT INTO `wp_postmeta` VALUES (25,6,'_lets_talk','field_64a0889e580ca');
INSERT INTO `wp_postmeta` VALUES (26,6,'where_we_are_badge','');
INSERT INTO `wp_postmeta` VALUES (27,6,'_where_we_are_badge','field_64a09660a9cf4');
INSERT INTO `wp_postmeta` VALUES (28,6,'where_we_are_title','');
INSERT INTO `wp_postmeta` VALUES (29,6,'_where_we_are_title','field_64a09668a9cf5');
INSERT INTO `wp_postmeta` VALUES (30,6,'where_we_are_pins','4');
INSERT INTO `wp_postmeta` VALUES (31,6,'_where_we_are_pins','field_64a09678a9cf6');
INSERT INTO `wp_postmeta` VALUES (32,6,'where_we_are_addresses','');
INSERT INTO `wp_postmeta` VALUES (33,6,'_where_we_are_addresses','field_64a0985bd8347');
INSERT INTO `wp_postmeta` VALUES (34,6,'where_we_are','');
INSERT INTO `wp_postmeta` VALUES (35,6,'_where_we_are','field_64a09649a9cf3');
INSERT INTO `wp_postmeta` VALUES (36,6,'book_demo_badge','');
INSERT INTO `wp_postmeta` VALUES (37,6,'_book_demo_badge','field_64a098d31f4a1');
INSERT INTO `wp_postmeta` VALUES (38,6,'book_demo_title','');
INSERT INTO `wp_postmeta` VALUES (39,6,'_book_demo_title','field_64a098d81f4a2');
INSERT INTO `wp_postmeta` VALUES (40,6,'book_demo_text','');
INSERT INTO `wp_postmeta` VALUES (41,6,'_book_demo_text','field_64a098e41f4a3');
INSERT INTO `wp_postmeta` VALUES (42,6,'book_demo_demo','');
INSERT INTO `wp_postmeta` VALUES (43,6,'_book_demo_demo','field_64a098fe1f4a4');
INSERT INTO `wp_postmeta` VALUES (44,6,'book_demo_trial','');
INSERT INTO `wp_postmeta` VALUES (45,6,'_book_demo_trial','field_64a0992c1f4a5');
INSERT INTO `wp_postmeta` VALUES (46,6,'book_demo','');
INSERT INTO `wp_postmeta` VALUES (47,6,'_book_demo','field_64a098ba1f4a0');
INSERT INTO `wp_postmeta` VALUES (48,7,'hero_label','');
INSERT INTO `wp_postmeta` VALUES (49,7,'_hero_label','field_649d615d9f17b');
INSERT INTO `wp_postmeta` VALUES (50,7,'hero_title','');
INSERT INTO `wp_postmeta` VALUES (51,7,'_hero_title','field_649d61a89f17c');
INSERT INTO `wp_postmeta` VALUES (52,7,'hero_text','');
INSERT INTO `wp_postmeta` VALUES (53,7,'_hero_text','field_649d61b09f17d');
INSERT INTO `wp_postmeta` VALUES (54,7,'hero_contact_form','');
INSERT INTO `wp_postmeta` VALUES (55,7,'_hero_contact_form','field_649d61c19f17f');
INSERT INTO `wp_postmeta` VALUES (56,7,'hero','');
INSERT INTO `wp_postmeta` VALUES (57,7,'_hero','field_649d6104a15ae');
INSERT INTO `wp_postmeta` VALUES (58,7,'lets_talk_title','');
INSERT INTO `wp_postmeta` VALUES (59,7,'_lets_talk_title','field_64a088ba580cb');
INSERT INTO `wp_postmeta` VALUES (60,7,'lets_talk_blocks','');
INSERT INTO `wp_postmeta` VALUES (61,7,'_lets_talk_blocks','field_64a08934580cc');
INSERT INTO `wp_postmeta` VALUES (62,7,'lets_talk','');
INSERT INTO `wp_postmeta` VALUES (63,7,'_lets_talk','field_64a0889e580ca');
INSERT INTO `wp_postmeta` VALUES (64,7,'where_we_are_badge','');
INSERT INTO `wp_postmeta` VALUES (65,7,'_where_we_are_badge','field_64a09660a9cf4');
INSERT INTO `wp_postmeta` VALUES (66,7,'where_we_are_title','');
INSERT INTO `wp_postmeta` VALUES (67,7,'_where_we_are_title','field_64a09668a9cf5');
INSERT INTO `wp_postmeta` VALUES (68,7,'where_we_are_pins','');
INSERT INTO `wp_postmeta` VALUES (69,7,'_where_we_are_pins','field_64a09678a9cf6');
INSERT INTO `wp_postmeta` VALUES (70,7,'where_we_are_addresses','');
INSERT INTO `wp_postmeta` VALUES (71,7,'_where_we_are_addresses','field_64a0985bd8347');
INSERT INTO `wp_postmeta` VALUES (72,7,'where_we_are','');
INSERT INTO `wp_postmeta` VALUES (73,7,'_where_we_are','field_64a09649a9cf3');
INSERT INTO `wp_postmeta` VALUES (74,7,'book_demo_badge','');
INSERT INTO `wp_postmeta` VALUES (75,7,'_book_demo_badge','field_64a098d31f4a1');
INSERT INTO `wp_postmeta` VALUES (76,7,'book_demo_title','');
INSERT INTO `wp_postmeta` VALUES (77,7,'_book_demo_title','field_64a098d81f4a2');
INSERT INTO `wp_postmeta` VALUES (78,7,'book_demo_text','');
INSERT INTO `wp_postmeta` VALUES (79,7,'_book_demo_text','field_64a098e41f4a3');
INSERT INTO `wp_postmeta` VALUES (80,7,'book_demo_demo','');
INSERT INTO `wp_postmeta` VALUES (81,7,'_book_demo_demo','field_64a098fe1f4a4');
INSERT INTO `wp_postmeta` VALUES (82,7,'book_demo_trial','');
INSERT INTO `wp_postmeta` VALUES (83,7,'_book_demo_trial','field_64a0992c1f4a5');
INSERT INTO `wp_postmeta` VALUES (84,7,'book_demo','');
INSERT INTO `wp_postmeta` VALUES (85,7,'_book_demo','field_64a098ba1f4a0');
INSERT INTO `wp_postmeta` VALUES (86,40,'_form','<div class=\"horizontal\">\n<div>\n<label>Name</label>\n[text* name autocomplete:name placeholder \"Your name\"]\n</div>\n<div>\n<label>Business email</label>\n[email* email autocomplete:email placeholder \"email@work.com\"]\n</div>\n</div>\n<div class=\"vertical\">\n<div>\n<label>Phone</label>\n[text* phone placeholder \"Phone number\"]\n</div>\n<div>\n<label>Message</label>\n[textarea message x5 placeholder \"Your message\"]\n</div>\n</div>\n\n[submit class:btn class:btn-primary class:btn-arrowed \"Submit\"]');
INSERT INTO `wp_postmeta` VALUES (87,40,'_mail','a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:35:\"[_site_title] <wordpress@localhost>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:161:\"From: [your-name] [your-email]\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}');
INSERT INTO `wp_postmeta` VALUES (88,40,'_mail_2','a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:35:\"[_site_title] <wordpress@localhost>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}');
INSERT INTO `wp_postmeta` VALUES (89,40,'_messages','a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:27:\"Please fill out this field.\";s:16:\"invalid_too_long\";s:32:\"This field has a too long input.\";s:17:\"invalid_too_short\";s:33:\"This field has a too short input.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:31:\"The uploaded file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:12:\"invalid_date\";s:41:\"Please enter a date in YYYY-MM-DD format.\";s:14:\"date_too_early\";s:32:\"This field has a too early date.\";s:13:\"date_too_late\";s:31:\"This field has a too late date.\";s:14:\"invalid_number\";s:22:\"Please enter a number.\";s:16:\"number_too_small\";s:34:\"This field has a too small number.\";s:16:\"number_too_large\";s:34:\"This field has a too large number.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:30:\"Please enter an email address.\";s:11:\"invalid_url\";s:19:\"Please enter a URL.\";s:11:\"invalid_tel\";s:32:\"Please enter a telephone number.\";}');
INSERT INTO `wp_postmeta` VALUES (90,40,'_additional_settings','');
INSERT INTO `wp_postmeta` VALUES (91,40,'_locale','en_US');
INSERT INTO `wp_postmeta` VALUES (93,41,'hero_label','');
INSERT INTO `wp_postmeta` VALUES (94,41,'_hero_label','field_649d615d9f17b');
INSERT INTO `wp_postmeta` VALUES (95,41,'hero_title','');
INSERT INTO `wp_postmeta` VALUES (96,41,'_hero_title','field_649d61a89f17c');
INSERT INTO `wp_postmeta` VALUES (97,41,'hero_text','');
INSERT INTO `wp_postmeta` VALUES (98,41,'_hero_text','field_649d61b09f17d');
INSERT INTO `wp_postmeta` VALUES (99,41,'hero_contact_form','[contact-form-7 id=\"40\" title=\"Contact form 1\"]');
INSERT INTO `wp_postmeta` VALUES (100,41,'_hero_contact_form','field_649d61c19f17f');
INSERT INTO `wp_postmeta` VALUES (101,41,'hero','');
INSERT INTO `wp_postmeta` VALUES (102,41,'_hero','field_649d6104a15ae');
INSERT INTO `wp_postmeta` VALUES (103,41,'lets_talk_title','');
INSERT INTO `wp_postmeta` VALUES (104,41,'_lets_talk_title','field_64a088ba580cb');
INSERT INTO `wp_postmeta` VALUES (105,41,'lets_talk_blocks','');
INSERT INTO `wp_postmeta` VALUES (106,41,'_lets_talk_blocks','field_64a08934580cc');
INSERT INTO `wp_postmeta` VALUES (107,41,'lets_talk','');
INSERT INTO `wp_postmeta` VALUES (108,41,'_lets_talk','field_64a0889e580ca');
INSERT INTO `wp_postmeta` VALUES (109,41,'where_we_are_badge','');
INSERT INTO `wp_postmeta` VALUES (110,41,'_where_we_are_badge','field_64a09660a9cf4');
INSERT INTO `wp_postmeta` VALUES (111,41,'where_we_are_title','');
INSERT INTO `wp_postmeta` VALUES (112,41,'_where_we_are_title','field_64a09668a9cf5');
INSERT INTO `wp_postmeta` VALUES (113,41,'where_we_are_pins','');
INSERT INTO `wp_postmeta` VALUES (114,41,'_where_we_are_pins','field_64a09678a9cf6');
INSERT INTO `wp_postmeta` VALUES (115,41,'where_we_are_addresses','');
INSERT INTO `wp_postmeta` VALUES (116,41,'_where_we_are_addresses','field_64a0985bd8347');
INSERT INTO `wp_postmeta` VALUES (117,41,'where_we_are','');
INSERT INTO `wp_postmeta` VALUES (118,41,'_where_we_are','field_64a09649a9cf3');
INSERT INTO `wp_postmeta` VALUES (119,41,'book_demo_badge','');
INSERT INTO `wp_postmeta` VALUES (120,41,'_book_demo_badge','field_64a098d31f4a1');
INSERT INTO `wp_postmeta` VALUES (121,41,'book_demo_title','');
INSERT INTO `wp_postmeta` VALUES (122,41,'_book_demo_title','field_64a098d81f4a2');
INSERT INTO `wp_postmeta` VALUES (123,41,'book_demo_text','');
INSERT INTO `wp_postmeta` VALUES (124,41,'_book_demo_text','field_64a098e41f4a3');
INSERT INTO `wp_postmeta` VALUES (125,41,'book_demo_demo','');
INSERT INTO `wp_postmeta` VALUES (126,41,'_book_demo_demo','field_64a098fe1f4a4');
INSERT INTO `wp_postmeta` VALUES (127,41,'book_demo_trial','');
INSERT INTO `wp_postmeta` VALUES (128,41,'_book_demo_trial','field_64a0992c1f4a5');
INSERT INTO `wp_postmeta` VALUES (129,41,'book_demo','');
INSERT INTO `wp_postmeta` VALUES (130,41,'_book_demo','field_64a098ba1f4a0');
INSERT INTO `wp_postmeta` VALUES (133,6,'where_we_are_pins_0_country','Los Angeles');
INSERT INTO `wp_postmeta` VALUES (134,6,'_where_we_are_pins_0_country','field_64a09756a9cf7');
INSERT INTO `wp_postmeta` VALUES (135,6,'where_we_are_pins_0_address','There are many variations of passages of Lorem Ipsum available');
INSERT INTO `wp_postmeta` VALUES (136,6,'_where_we_are_pins_0_address','field_64a0975da9cf8');
INSERT INTO `wp_postmeta` VALUES (137,6,'where_we_are_pins_0_map_spot','los_angeles');
INSERT INTO `wp_postmeta` VALUES (138,6,'_where_we_are_pins_0_map_spot','field_64a0976aa9cf9');
INSERT INTO `wp_postmeta` VALUES (139,6,'where_we_are_pins_1_country','New York');
INSERT INTO `wp_postmeta` VALUES (140,6,'_where_we_are_pins_1_country','field_64a09756a9cf7');
INSERT INTO `wp_postmeta` VALUES (141,6,'where_we_are_pins_1_address','There are many variations of passages of Lorem Ipsum available');
INSERT INTO `wp_postmeta` VALUES (142,6,'_where_we_are_pins_1_address','field_64a0975da9cf8');
INSERT INTO `wp_postmeta` VALUES (143,6,'where_we_are_pins_1_map_spot','new_york');
INSERT INTO `wp_postmeta` VALUES (144,6,'_where_we_are_pins_1_map_spot','field_64a0976aa9cf9');
INSERT INTO `wp_postmeta` VALUES (145,6,'where_we_are_pins_2_country','London');
INSERT INTO `wp_postmeta` VALUES (146,6,'_where_we_are_pins_2_country','field_64a09756a9cf7');
INSERT INTO `wp_postmeta` VALUES (147,6,'where_we_are_pins_2_address','There are many variations of passages of Lorem Ipsum available');
INSERT INTO `wp_postmeta` VALUES (148,6,'_where_we_are_pins_2_address','field_64a0975da9cf8');
INSERT INTO `wp_postmeta` VALUES (149,6,'where_we_are_pins_2_map_spot','london');
INSERT INTO `wp_postmeta` VALUES (150,6,'_where_we_are_pins_2_map_spot','field_64a0976aa9cf9');
INSERT INTO `wp_postmeta` VALUES (151,6,'where_we_are_pins_3_country','Melbourne');
INSERT INTO `wp_postmeta` VALUES (152,6,'_where_we_are_pins_3_country','field_64a09756a9cf7');
INSERT INTO `wp_postmeta` VALUES (153,6,'where_we_are_pins_3_address','There are many variations of passages of Lorem Ipsum available');
INSERT INTO `wp_postmeta` VALUES (154,6,'_where_we_are_pins_3_address','field_64a0975da9cf8');
INSERT INTO `wp_postmeta` VALUES (155,6,'where_we_are_pins_3_map_spot','melbourne');
INSERT INTO `wp_postmeta` VALUES (156,6,'_where_we_are_pins_3_map_spot','field_64a0976aa9cf9');
INSERT INTO `wp_postmeta` VALUES (157,43,'hero_label','');
INSERT INTO `wp_postmeta` VALUES (158,43,'_hero_label','field_649d615d9f17b');
INSERT INTO `wp_postmeta` VALUES (159,43,'hero_title','');
INSERT INTO `wp_postmeta` VALUES (160,43,'_hero_title','field_649d61a89f17c');
INSERT INTO `wp_postmeta` VALUES (161,43,'hero_text','');
INSERT INTO `wp_postmeta` VALUES (162,43,'_hero_text','field_649d61b09f17d');
INSERT INTO `wp_postmeta` VALUES (163,43,'hero_contact_form','[contact-form-7 id=\"40\" title=\"Contact form 1\"]');
INSERT INTO `wp_postmeta` VALUES (164,43,'_hero_contact_form','field_649d61c19f17f');
INSERT INTO `wp_postmeta` VALUES (165,43,'hero','');
INSERT INTO `wp_postmeta` VALUES (166,43,'_hero','field_649d6104a15ae');
INSERT INTO `wp_postmeta` VALUES (167,43,'lets_talk_title','');
INSERT INTO `wp_postmeta` VALUES (168,43,'_lets_talk_title','field_64a088ba580cb');
INSERT INTO `wp_postmeta` VALUES (169,43,'lets_talk_blocks','');
INSERT INTO `wp_postmeta` VALUES (170,43,'_lets_talk_blocks','field_64a08934580cc');
INSERT INTO `wp_postmeta` VALUES (171,43,'lets_talk','');
INSERT INTO `wp_postmeta` VALUES (172,43,'_lets_talk','field_64a0889e580ca');
INSERT INTO `wp_postmeta` VALUES (173,43,'where_we_are_badge','');
INSERT INTO `wp_postmeta` VALUES (174,43,'_where_we_are_badge','field_64a09660a9cf4');
INSERT INTO `wp_postmeta` VALUES (175,43,'where_we_are_title','');
INSERT INTO `wp_postmeta` VALUES (176,43,'_where_we_are_title','field_64a09668a9cf5');
INSERT INTO `wp_postmeta` VALUES (177,43,'where_we_are_pins','4');
INSERT INTO `wp_postmeta` VALUES (178,43,'_where_we_are_pins','field_64a09678a9cf6');
INSERT INTO `wp_postmeta` VALUES (179,43,'where_we_are_addresses','');
INSERT INTO `wp_postmeta` VALUES (180,43,'_where_we_are_addresses','field_64a0985bd8347');
INSERT INTO `wp_postmeta` VALUES (181,43,'where_we_are','');
INSERT INTO `wp_postmeta` VALUES (182,43,'_where_we_are','field_64a09649a9cf3');
INSERT INTO `wp_postmeta` VALUES (183,43,'book_demo_badge','');
INSERT INTO `wp_postmeta` VALUES (184,43,'_book_demo_badge','field_64a098d31f4a1');
INSERT INTO `wp_postmeta` VALUES (185,43,'book_demo_title','');
INSERT INTO `wp_postmeta` VALUES (186,43,'_book_demo_title','field_64a098d81f4a2');
INSERT INTO `wp_postmeta` VALUES (187,43,'book_demo_text','');
INSERT INTO `wp_postmeta` VALUES (188,43,'_book_demo_text','field_64a098e41f4a3');
INSERT INTO `wp_postmeta` VALUES (189,43,'book_demo_demo','');
INSERT INTO `wp_postmeta` VALUES (190,43,'_book_demo_demo','field_64a098fe1f4a4');
INSERT INTO `wp_postmeta` VALUES (191,43,'book_demo_trial','');
INSERT INTO `wp_postmeta` VALUES (192,43,'_book_demo_trial','field_64a0992c1f4a5');
INSERT INTO `wp_postmeta` VALUES (193,43,'book_demo','');
INSERT INTO `wp_postmeta` VALUES (194,43,'_book_demo','field_64a098ba1f4a0');
INSERT INTO `wp_postmeta` VALUES (195,43,'where_we_are_pins_0_country','Los Angeles');
INSERT INTO `wp_postmeta` VALUES (196,43,'_where_we_are_pins_0_country','field_64a09756a9cf7');
INSERT INTO `wp_postmeta` VALUES (197,43,'where_we_are_pins_0_address','There are many variations of passages of Lorem Ipsum available');
INSERT INTO `wp_postmeta` VALUES (198,43,'_where_we_are_pins_0_address','field_64a0975da9cf8');
INSERT INTO `wp_postmeta` VALUES (199,43,'where_we_are_pins_0_map_spot','los_angeles');
INSERT INTO `wp_postmeta` VALUES (200,43,'_where_we_are_pins_0_map_spot','field_64a0976aa9cf9');
INSERT INTO `wp_postmeta` VALUES (201,43,'where_we_are_pins_1_country','New York');
INSERT INTO `wp_postmeta` VALUES (202,43,'_where_we_are_pins_1_country','field_64a09756a9cf7');
INSERT INTO `wp_postmeta` VALUES (203,43,'where_we_are_pins_1_address','There are many variations of passages of Lorem Ipsum available');
INSERT INTO `wp_postmeta` VALUES (204,43,'_where_we_are_pins_1_address','field_64a0975da9cf8');
INSERT INTO `wp_postmeta` VALUES (205,43,'where_we_are_pins_1_map_spot','new_york');
INSERT INTO `wp_postmeta` VALUES (206,43,'_where_we_are_pins_1_map_spot','field_64a0976aa9cf9');
INSERT INTO `wp_postmeta` VALUES (207,43,'where_we_are_pins_2_country','London');
INSERT INTO `wp_postmeta` VALUES (208,43,'_where_we_are_pins_2_country','field_64a09756a9cf7');
INSERT INTO `wp_postmeta` VALUES (209,43,'where_we_are_pins_2_address','There are many variations of passages of Lorem Ipsum available');
INSERT INTO `wp_postmeta` VALUES (210,43,'_where_we_are_pins_2_address','field_64a0975da9cf8');
INSERT INTO `wp_postmeta` VALUES (211,43,'where_we_are_pins_2_map_spot','london');
INSERT INTO `wp_postmeta` VALUES (212,43,'_where_we_are_pins_2_map_spot','field_64a0976aa9cf9');
INSERT INTO `wp_postmeta` VALUES (213,43,'where_we_are_pins_3_country','Melbourne');
INSERT INTO `wp_postmeta` VALUES (214,43,'_where_we_are_pins_3_country','field_64a09756a9cf7');
INSERT INTO `wp_postmeta` VALUES (215,43,'where_we_are_pins_3_address','There are many variations of passages of Lorem Ipsum available');
INSERT INTO `wp_postmeta` VALUES (216,43,'_where_we_are_pins_3_address','field_64a0975da9cf8');
INSERT INTO `wp_postmeta` VALUES (217,43,'where_we_are_pins_3_map_spot','melbourne');
INSERT INTO `wp_postmeta` VALUES (218,43,'_where_we_are_pins_3_map_spot','field_64a0976aa9cf9');
INSERT INTO `wp_postmeta` VALUES (219,44,'hero_label','');
INSERT INTO `wp_postmeta` VALUES (220,44,'_hero_label','field_649d615d9f17b');
INSERT INTO `wp_postmeta` VALUES (221,44,'hero_title','');
INSERT INTO `wp_postmeta` VALUES (222,44,'_hero_title','field_649d61a89f17c');
INSERT INTO `wp_postmeta` VALUES (223,44,'hero_text','');
INSERT INTO `wp_postmeta` VALUES (224,44,'_hero_text','field_649d61b09f17d');
INSERT INTO `wp_postmeta` VALUES (225,44,'hero_contact_form','[contact-form-7 id=\"40\" title=\"Contact form 1\"]');
INSERT INTO `wp_postmeta` VALUES (226,44,'_hero_contact_form','field_649d61c19f17f');
INSERT INTO `wp_postmeta` VALUES (227,44,'hero','');
INSERT INTO `wp_postmeta` VALUES (228,44,'_hero','field_649d6104a15ae');
INSERT INTO `wp_postmeta` VALUES (229,44,'lets_talk_title','');
INSERT INTO `wp_postmeta` VALUES (230,44,'_lets_talk_title','field_64a088ba580cb');
INSERT INTO `wp_postmeta` VALUES (231,44,'lets_talk_blocks','');
INSERT INTO `wp_postmeta` VALUES (232,44,'_lets_talk_blocks','field_64a08934580cc');
INSERT INTO `wp_postmeta` VALUES (233,44,'lets_talk','');
INSERT INTO `wp_postmeta` VALUES (234,44,'_lets_talk','field_64a0889e580ca');
INSERT INTO `wp_postmeta` VALUES (235,44,'where_we_are_badge','');
INSERT INTO `wp_postmeta` VALUES (236,44,'_where_we_are_badge','field_64a09660a9cf4');
INSERT INTO `wp_postmeta` VALUES (237,44,'where_we_are_title','');
INSERT INTO `wp_postmeta` VALUES (238,44,'_where_we_are_title','field_64a09668a9cf5');
INSERT INTO `wp_postmeta` VALUES (239,44,'where_we_are_pins','4');
INSERT INTO `wp_postmeta` VALUES (240,44,'_where_we_are_pins','field_64a09678a9cf6');
INSERT INTO `wp_postmeta` VALUES (241,44,'where_we_are_addresses','');
INSERT INTO `wp_postmeta` VALUES (242,44,'_where_we_are_addresses','field_64a0985bd8347');
INSERT INTO `wp_postmeta` VALUES (243,44,'where_we_are','');
INSERT INTO `wp_postmeta` VALUES (244,44,'_where_we_are','field_64a09649a9cf3');
INSERT INTO `wp_postmeta` VALUES (245,44,'book_demo_badge','');
INSERT INTO `wp_postmeta` VALUES (246,44,'_book_demo_badge','field_64a098d31f4a1');
INSERT INTO `wp_postmeta` VALUES (247,44,'book_demo_title','');
INSERT INTO `wp_postmeta` VALUES (248,44,'_book_demo_title','field_64a098d81f4a2');
INSERT INTO `wp_postmeta` VALUES (249,44,'book_demo_text','');
INSERT INTO `wp_postmeta` VALUES (250,44,'_book_demo_text','field_64a098e41f4a3');
INSERT INTO `wp_postmeta` VALUES (251,44,'book_demo_demo','');
INSERT INTO `wp_postmeta` VALUES (252,44,'_book_demo_demo','field_64a098fe1f4a4');
INSERT INTO `wp_postmeta` VALUES (253,44,'book_demo_trial','');
INSERT INTO `wp_postmeta` VALUES (254,44,'_book_demo_trial','field_64a0992c1f4a5');
INSERT INTO `wp_postmeta` VALUES (255,44,'book_demo','');
INSERT INTO `wp_postmeta` VALUES (256,44,'_book_demo','field_64a098ba1f4a0');
INSERT INTO `wp_postmeta` VALUES (257,44,'where_we_are_pins_0_country','Los Angeles');
INSERT INTO `wp_postmeta` VALUES (258,44,'_where_we_are_pins_0_country','field_64a09756a9cf7');
INSERT INTO `wp_postmeta` VALUES (259,44,'where_we_are_pins_0_address','There are many variations of passages of Lorem Ipsum available');
INSERT INTO `wp_postmeta` VALUES (260,44,'_where_we_are_pins_0_address','field_64a0975da9cf8');
INSERT INTO `wp_postmeta` VALUES (261,44,'where_we_are_pins_0_map_spot','los_angeles');
INSERT INTO `wp_postmeta` VALUES (262,44,'_where_we_are_pins_0_map_spot','field_64a0976aa9cf9');
INSERT INTO `wp_postmeta` VALUES (263,44,'where_we_are_pins_1_country','New York');
INSERT INTO `wp_postmeta` VALUES (264,44,'_where_we_are_pins_1_country','field_64a09756a9cf7');
INSERT INTO `wp_postmeta` VALUES (265,44,'where_we_are_pins_1_address','There are many variations of passages of Lorem Ipsum available');
INSERT INTO `wp_postmeta` VALUES (266,44,'_where_we_are_pins_1_address','field_64a0975da9cf8');
INSERT INTO `wp_postmeta` VALUES (267,44,'where_we_are_pins_1_map_spot','new_york');
INSERT INTO `wp_postmeta` VALUES (268,44,'_where_we_are_pins_1_map_spot','field_64a0976aa9cf9');
INSERT INTO `wp_postmeta` VALUES (269,44,'where_we_are_pins_2_country','London');
INSERT INTO `wp_postmeta` VALUES (270,44,'_where_we_are_pins_2_country','field_64a09756a9cf7');
INSERT INTO `wp_postmeta` VALUES (271,44,'where_we_are_pins_2_address','There are many variations of passages of Lorem Ipsum available');
INSERT INTO `wp_postmeta` VALUES (272,44,'_where_we_are_pins_2_address','field_64a0975da9cf8');
INSERT INTO `wp_postmeta` VALUES (273,44,'where_we_are_pins_2_map_spot','london');
INSERT INTO `wp_postmeta` VALUES (274,44,'_where_we_are_pins_2_map_spot','field_64a0976aa9cf9');
INSERT INTO `wp_postmeta` VALUES (275,44,'where_we_are_pins_3_country','Melbourne');
INSERT INTO `wp_postmeta` VALUES (276,44,'_where_we_are_pins_3_country','field_64a09756a9cf7');
INSERT INTO `wp_postmeta` VALUES (277,44,'where_we_are_pins_3_address','There are many variations of passages of Lorem Ipsum available');
INSERT INTO `wp_postmeta` VALUES (278,44,'_where_we_are_pins_3_address','field_64a0975da9cf8');
INSERT INTO `wp_postmeta` VALUES (279,44,'where_we_are_pins_3_map_spot','melbourne');
INSERT INTO `wp_postmeta` VALUES (280,44,'_where_we_are_pins_3_map_spot','field_64a0976aa9cf9');
INSERT INTO `wp_postmeta` VALUES (281,45,'hero_label','');
INSERT INTO `wp_postmeta` VALUES (282,45,'_hero_label','field_649d615d9f17b');
INSERT INTO `wp_postmeta` VALUES (283,45,'hero_title','');
INSERT INTO `wp_postmeta` VALUES (284,45,'_hero_title','field_649d61a89f17c');
INSERT INTO `wp_postmeta` VALUES (285,45,'hero_text','');
INSERT INTO `wp_postmeta` VALUES (286,45,'_hero_text','field_649d61b09f17d');
INSERT INTO `wp_postmeta` VALUES (287,45,'hero_contact_form','[contact-form-7 id=\"40\" title=\"Contact form 1\"]');
INSERT INTO `wp_postmeta` VALUES (288,45,'_hero_contact_form','field_649d61c19f17f');
INSERT INTO `wp_postmeta` VALUES (289,45,'hero','');
INSERT INTO `wp_postmeta` VALUES (290,45,'_hero','field_649d6104a15ae');
INSERT INTO `wp_postmeta` VALUES (291,45,'lets_talk_title','');
INSERT INTO `wp_postmeta` VALUES (292,45,'_lets_talk_title','field_64a088ba580cb');
INSERT INTO `wp_postmeta` VALUES (293,45,'lets_talk_blocks','');
INSERT INTO `wp_postmeta` VALUES (294,45,'_lets_talk_blocks','field_64a08934580cc');
INSERT INTO `wp_postmeta` VALUES (295,45,'lets_talk','');
INSERT INTO `wp_postmeta` VALUES (296,45,'_lets_talk','field_64a0889e580ca');
INSERT INTO `wp_postmeta` VALUES (297,45,'where_we_are_badge','');
INSERT INTO `wp_postmeta` VALUES (298,45,'_where_we_are_badge','field_64a09660a9cf4');
INSERT INTO `wp_postmeta` VALUES (299,45,'where_we_are_title','');
INSERT INTO `wp_postmeta` VALUES (300,45,'_where_we_are_title','field_64a09668a9cf5');
INSERT INTO `wp_postmeta` VALUES (301,45,'where_we_are_pins','4');
INSERT INTO `wp_postmeta` VALUES (302,45,'_where_we_are_pins','field_64a09678a9cf6');
INSERT INTO `wp_postmeta` VALUES (303,45,'where_we_are_addresses','');
INSERT INTO `wp_postmeta` VALUES (304,45,'_where_we_are_addresses','field_64a0985bd8347');
INSERT INTO `wp_postmeta` VALUES (305,45,'where_we_are','');
INSERT INTO `wp_postmeta` VALUES (306,45,'_where_we_are','field_64a09649a9cf3');
INSERT INTO `wp_postmeta` VALUES (307,45,'book_demo_badge','');
INSERT INTO `wp_postmeta` VALUES (308,45,'_book_demo_badge','field_64a098d31f4a1');
INSERT INTO `wp_postmeta` VALUES (309,45,'book_demo_title','');
INSERT INTO `wp_postmeta` VALUES (310,45,'_book_demo_title','field_64a098d81f4a2');
INSERT INTO `wp_postmeta` VALUES (311,45,'book_demo_text','');
INSERT INTO `wp_postmeta` VALUES (312,45,'_book_demo_text','field_64a098e41f4a3');
INSERT INTO `wp_postmeta` VALUES (313,45,'book_demo_demo','');
INSERT INTO `wp_postmeta` VALUES (314,45,'_book_demo_demo','field_64a098fe1f4a4');
INSERT INTO `wp_postmeta` VALUES (315,45,'book_demo_trial','');
INSERT INTO `wp_postmeta` VALUES (316,45,'_book_demo_trial','field_64a0992c1f4a5');
INSERT INTO `wp_postmeta` VALUES (317,45,'book_demo','');
INSERT INTO `wp_postmeta` VALUES (318,45,'_book_demo','field_64a098ba1f4a0');
INSERT INTO `wp_postmeta` VALUES (319,45,'where_we_are_pins_0_country','Los Angeles');
INSERT INTO `wp_postmeta` VALUES (320,45,'_where_we_are_pins_0_country','field_64a09756a9cf7');
INSERT INTO `wp_postmeta` VALUES (321,45,'where_we_are_pins_0_address','There are many variations of passages of Lorem Ipsum available');
INSERT INTO `wp_postmeta` VALUES (322,45,'_where_we_are_pins_0_address','field_64a0975da9cf8');
INSERT INTO `wp_postmeta` VALUES (323,45,'where_we_are_pins_0_map_spot','los_angeles');
INSERT INTO `wp_postmeta` VALUES (324,45,'_where_we_are_pins_0_map_spot','field_64a0976aa9cf9');
INSERT INTO `wp_postmeta` VALUES (325,45,'where_we_are_pins_1_country','New York');
INSERT INTO `wp_postmeta` VALUES (326,45,'_where_we_are_pins_1_country','field_64a09756a9cf7');
INSERT INTO `wp_postmeta` VALUES (327,45,'where_we_are_pins_1_address','There are many variations of passages of Lorem Ipsum available');
INSERT INTO `wp_postmeta` VALUES (328,45,'_where_we_are_pins_1_address','field_64a0975da9cf8');
INSERT INTO `wp_postmeta` VALUES (329,45,'where_we_are_pins_1_map_spot','new_york');
INSERT INTO `wp_postmeta` VALUES (330,45,'_where_we_are_pins_1_map_spot','field_64a0976aa9cf9');
INSERT INTO `wp_postmeta` VALUES (331,45,'where_we_are_pins_2_country','London');
INSERT INTO `wp_postmeta` VALUES (332,45,'_where_we_are_pins_2_country','field_64a09756a9cf7');
INSERT INTO `wp_postmeta` VALUES (333,45,'where_we_are_pins_2_address','There are many variations of passages of Lorem Ipsum available');
INSERT INTO `wp_postmeta` VALUES (334,45,'_where_we_are_pins_2_address','field_64a0975da9cf8');
INSERT INTO `wp_postmeta` VALUES (335,45,'where_we_are_pins_2_map_spot','london');
INSERT INTO `wp_postmeta` VALUES (336,45,'_where_we_are_pins_2_map_spot','field_64a0976aa9cf9');
INSERT INTO `wp_postmeta` VALUES (337,45,'where_we_are_pins_3_country','Melbourne');
INSERT INTO `wp_postmeta` VALUES (338,45,'_where_we_are_pins_3_country','field_64a09756a9cf7');
INSERT INTO `wp_postmeta` VALUES (339,45,'where_we_are_pins_3_address','There are many variations of passages of Lorem Ipsum available');
INSERT INTO `wp_postmeta` VALUES (340,45,'_where_we_are_pins_3_address','field_64a0975da9cf8');
INSERT INTO `wp_postmeta` VALUES (341,45,'where_we_are_pins_3_map_spot','melbourne');
INSERT INTO `wp_postmeta` VALUES (342,45,'_where_we_are_pins_3_map_spot','field_64a0976aa9cf9');
INSERT INTO `wp_postmeta` VALUES (343,46,'hero_label','');
INSERT INTO `wp_postmeta` VALUES (344,46,'_hero_label','field_649d615d9f17b');
INSERT INTO `wp_postmeta` VALUES (345,46,'hero_title','');
INSERT INTO `wp_postmeta` VALUES (346,46,'_hero_title','field_649d61a89f17c');
INSERT INTO `wp_postmeta` VALUES (347,46,'hero_text','');
INSERT INTO `wp_postmeta` VALUES (348,46,'_hero_text','field_649d61b09f17d');
INSERT INTO `wp_postmeta` VALUES (349,46,'hero_contact_form','[contact-form-7 id=\"40\" title=\"Contact form 1\"]');
INSERT INTO `wp_postmeta` VALUES (350,46,'_hero_contact_form','field_649d61c19f17f');
INSERT INTO `wp_postmeta` VALUES (351,46,'hero','');
INSERT INTO `wp_postmeta` VALUES (352,46,'_hero','field_649d6104a15ae');
INSERT INTO `wp_postmeta` VALUES (353,46,'lets_talk_title','');
INSERT INTO `wp_postmeta` VALUES (354,46,'_lets_talk_title','field_64a088ba580cb');
INSERT INTO `wp_postmeta` VALUES (355,46,'lets_talk_blocks','');
INSERT INTO `wp_postmeta` VALUES (356,46,'_lets_talk_blocks','field_64a08934580cc');
INSERT INTO `wp_postmeta` VALUES (357,46,'lets_talk','');
INSERT INTO `wp_postmeta` VALUES (358,46,'_lets_talk','field_64a0889e580ca');
INSERT INTO `wp_postmeta` VALUES (359,46,'where_we_are_badge','');
INSERT INTO `wp_postmeta` VALUES (360,46,'_where_we_are_badge','field_64a09660a9cf4');
INSERT INTO `wp_postmeta` VALUES (361,46,'where_we_are_title','');
INSERT INTO `wp_postmeta` VALUES (362,46,'_where_we_are_title','field_64a09668a9cf5');
INSERT INTO `wp_postmeta` VALUES (363,46,'where_we_are_pins','4');
INSERT INTO `wp_postmeta` VALUES (364,46,'_where_we_are_pins','field_64a09678a9cf6');
INSERT INTO `wp_postmeta` VALUES (365,46,'where_we_are_addresses','');
INSERT INTO `wp_postmeta` VALUES (366,46,'_where_we_are_addresses','field_64a0985bd8347');
INSERT INTO `wp_postmeta` VALUES (367,46,'where_we_are','');
INSERT INTO `wp_postmeta` VALUES (368,46,'_where_we_are','field_64a09649a9cf3');
INSERT INTO `wp_postmeta` VALUES (369,46,'book_demo_badge','');
INSERT INTO `wp_postmeta` VALUES (370,46,'_book_demo_badge','field_64a098d31f4a1');
INSERT INTO `wp_postmeta` VALUES (371,46,'book_demo_title','');
INSERT INTO `wp_postmeta` VALUES (372,46,'_book_demo_title','field_64a098d81f4a2');
INSERT INTO `wp_postmeta` VALUES (373,46,'book_demo_text','');
INSERT INTO `wp_postmeta` VALUES (374,46,'_book_demo_text','field_64a098e41f4a3');
INSERT INTO `wp_postmeta` VALUES (375,46,'book_demo_demo','');
INSERT INTO `wp_postmeta` VALUES (376,46,'_book_demo_demo','field_64a098fe1f4a4');
INSERT INTO `wp_postmeta` VALUES (377,46,'book_demo_trial','');
INSERT INTO `wp_postmeta` VALUES (378,46,'_book_demo_trial','field_64a0992c1f4a5');
INSERT INTO `wp_postmeta` VALUES (379,46,'book_demo','');
INSERT INTO `wp_postmeta` VALUES (380,46,'_book_demo','field_64a098ba1f4a0');
INSERT INTO `wp_postmeta` VALUES (381,46,'where_we_are_pins_0_country','Los Angeles');
INSERT INTO `wp_postmeta` VALUES (382,46,'_where_we_are_pins_0_country','field_64a09756a9cf7');
INSERT INTO `wp_postmeta` VALUES (383,46,'where_we_are_pins_0_address','There are many variations of passages of Lorem Ipsum available');
INSERT INTO `wp_postmeta` VALUES (384,46,'_where_we_are_pins_0_address','field_64a0975da9cf8');
INSERT INTO `wp_postmeta` VALUES (385,46,'where_we_are_pins_0_map_spot','los_angeles');
INSERT INTO `wp_postmeta` VALUES (386,46,'_where_we_are_pins_0_map_spot','field_64a0976aa9cf9');
INSERT INTO `wp_postmeta` VALUES (387,46,'where_we_are_pins_1_country','New York');
INSERT INTO `wp_postmeta` VALUES (388,46,'_where_we_are_pins_1_country','field_64a09756a9cf7');
INSERT INTO `wp_postmeta` VALUES (389,46,'where_we_are_pins_1_address','There are many variations of passages of Lorem Ipsum available');
INSERT INTO `wp_postmeta` VALUES (390,46,'_where_we_are_pins_1_address','field_64a0975da9cf8');
INSERT INTO `wp_postmeta` VALUES (391,46,'where_we_are_pins_1_map_spot','new_york');
INSERT INTO `wp_postmeta` VALUES (392,46,'_where_we_are_pins_1_map_spot','field_64a0976aa9cf9');
INSERT INTO `wp_postmeta` VALUES (393,46,'where_we_are_pins_2_country','London');
INSERT INTO `wp_postmeta` VALUES (394,46,'_where_we_are_pins_2_country','field_64a09756a9cf7');
INSERT INTO `wp_postmeta` VALUES (395,46,'where_we_are_pins_2_address','There are many variations of passages of Lorem Ipsum available');
INSERT INTO `wp_postmeta` VALUES (396,46,'_where_we_are_pins_2_address','field_64a0975da9cf8');
INSERT INTO `wp_postmeta` VALUES (397,46,'where_we_are_pins_2_map_spot','london');
INSERT INTO `wp_postmeta` VALUES (398,46,'_where_we_are_pins_2_map_spot','field_64a0976aa9cf9');
INSERT INTO `wp_postmeta` VALUES (399,46,'where_we_are_pins_3_country','Melbourne');
INSERT INTO `wp_postmeta` VALUES (400,46,'_where_we_are_pins_3_country','field_64a09756a9cf7');
INSERT INTO `wp_postmeta` VALUES (401,46,'where_we_are_pins_3_address','There are many variations of passages of Lorem Ipsum available');
INSERT INTO `wp_postmeta` VALUES (402,46,'_where_we_are_pins_3_address','field_64a0975da9cf8');
INSERT INTO `wp_postmeta` VALUES (403,46,'where_we_are_pins_3_map_spot','melbourne');
INSERT INTO `wp_postmeta` VALUES (404,46,'_where_we_are_pins_3_map_spot','field_64a0976aa9cf9');
INSERT INTO `wp_postmeta` VALUES (405,47,'hero_label','get in touch');
INSERT INTO `wp_postmeta` VALUES (406,47,'_hero_label','field_649d615d9f17b');
INSERT INTO `wp_postmeta` VALUES (407,47,'hero_title','How can we help?');
INSERT INTO `wp_postmeta` VALUES (408,47,'_hero_title','field_649d61a89f17c');
INSERT INTO `wp_postmeta` VALUES (409,47,'hero_text','Let us know how we can help to get you started.');
INSERT INTO `wp_postmeta` VALUES (410,47,'_hero_text','field_649d61b09f17d');
INSERT INTO `wp_postmeta` VALUES (411,47,'hero_contact_form','[contact-form-7 id=\"40\" title=\"Contact form 1\"]');
INSERT INTO `wp_postmeta` VALUES (412,47,'_hero_contact_form','field_649d61c19f17f');
INSERT INTO `wp_postmeta` VALUES (413,47,'hero','');
INSERT INTO `wp_postmeta` VALUES (414,47,'_hero','field_649d6104a15ae');
INSERT INTO `wp_postmeta` VALUES (415,47,'lets_talk_title','');
INSERT INTO `wp_postmeta` VALUES (416,47,'_lets_talk_title','field_64a088ba580cb');
INSERT INTO `wp_postmeta` VALUES (417,47,'lets_talk_blocks','');
INSERT INTO `wp_postmeta` VALUES (418,47,'_lets_talk_blocks','field_64a08934580cc');
INSERT INTO `wp_postmeta` VALUES (419,47,'lets_talk','');
INSERT INTO `wp_postmeta` VALUES (420,47,'_lets_talk','field_64a0889e580ca');
INSERT INTO `wp_postmeta` VALUES (421,47,'where_we_are_badge','');
INSERT INTO `wp_postmeta` VALUES (422,47,'_where_we_are_badge','field_64a09660a9cf4');
INSERT INTO `wp_postmeta` VALUES (423,47,'where_we_are_title','');
INSERT INTO `wp_postmeta` VALUES (424,47,'_where_we_are_title','field_64a09668a9cf5');
INSERT INTO `wp_postmeta` VALUES (425,47,'where_we_are_pins','4');
INSERT INTO `wp_postmeta` VALUES (426,47,'_where_we_are_pins','field_64a09678a9cf6');
INSERT INTO `wp_postmeta` VALUES (427,47,'where_we_are_addresses','');
INSERT INTO `wp_postmeta` VALUES (428,47,'_where_we_are_addresses','field_64a0985bd8347');
INSERT INTO `wp_postmeta` VALUES (429,47,'where_we_are','');
INSERT INTO `wp_postmeta` VALUES (430,47,'_where_we_are','field_64a09649a9cf3');
INSERT INTO `wp_postmeta` VALUES (431,47,'book_demo_badge','');
INSERT INTO `wp_postmeta` VALUES (432,47,'_book_demo_badge','field_64a098d31f4a1');
INSERT INTO `wp_postmeta` VALUES (433,47,'book_demo_title','');
INSERT INTO `wp_postmeta` VALUES (434,47,'_book_demo_title','field_64a098d81f4a2');
INSERT INTO `wp_postmeta` VALUES (435,47,'book_demo_text','');
INSERT INTO `wp_postmeta` VALUES (436,47,'_book_demo_text','field_64a098e41f4a3');
INSERT INTO `wp_postmeta` VALUES (437,47,'book_demo_demo','');
INSERT INTO `wp_postmeta` VALUES (438,47,'_book_demo_demo','field_64a098fe1f4a4');
INSERT INTO `wp_postmeta` VALUES (439,47,'book_demo_trial','');
INSERT INTO `wp_postmeta` VALUES (440,47,'_book_demo_trial','field_64a0992c1f4a5');
INSERT INTO `wp_postmeta` VALUES (441,47,'book_demo','');
INSERT INTO `wp_postmeta` VALUES (442,47,'_book_demo','field_64a098ba1f4a0');
INSERT INTO `wp_postmeta` VALUES (443,47,'where_we_are_pins_0_country','Los Angeles');
INSERT INTO `wp_postmeta` VALUES (444,47,'_where_we_are_pins_0_country','field_64a09756a9cf7');
INSERT INTO `wp_postmeta` VALUES (445,47,'where_we_are_pins_0_address','There are many variations of passages of Lorem Ipsum available');
INSERT INTO `wp_postmeta` VALUES (446,47,'_where_we_are_pins_0_address','field_64a0975da9cf8');
INSERT INTO `wp_postmeta` VALUES (447,47,'where_we_are_pins_0_map_spot','los_angeles');
INSERT INTO `wp_postmeta` VALUES (448,47,'_where_we_are_pins_0_map_spot','field_64a0976aa9cf9');
INSERT INTO `wp_postmeta` VALUES (449,47,'where_we_are_pins_1_country','New York');
INSERT INTO `wp_postmeta` VALUES (450,47,'_where_we_are_pins_1_country','field_64a09756a9cf7');
INSERT INTO `wp_postmeta` VALUES (451,47,'where_we_are_pins_1_address','There are many variations of passages of Lorem Ipsum available');
INSERT INTO `wp_postmeta` VALUES (452,47,'_where_we_are_pins_1_address','field_64a0975da9cf8');
INSERT INTO `wp_postmeta` VALUES (453,47,'where_we_are_pins_1_map_spot','new_york');
INSERT INTO `wp_postmeta` VALUES (454,47,'_where_we_are_pins_1_map_spot','field_64a0976aa9cf9');
INSERT INTO `wp_postmeta` VALUES (455,47,'where_we_are_pins_2_country','London');
INSERT INTO `wp_postmeta` VALUES (456,47,'_where_we_are_pins_2_country','field_64a09756a9cf7');
INSERT INTO `wp_postmeta` VALUES (457,47,'where_we_are_pins_2_address','There are many variations of passages of Lorem Ipsum available');
INSERT INTO `wp_postmeta` VALUES (458,47,'_where_we_are_pins_2_address','field_64a0975da9cf8');
INSERT INTO `wp_postmeta` VALUES (459,47,'where_we_are_pins_2_map_spot','london');
INSERT INTO `wp_postmeta` VALUES (460,47,'_where_we_are_pins_2_map_spot','field_64a0976aa9cf9');
INSERT INTO `wp_postmeta` VALUES (461,47,'where_we_are_pins_3_country','Melbourne');
INSERT INTO `wp_postmeta` VALUES (462,47,'_where_we_are_pins_3_country','field_64a09756a9cf7');
INSERT INTO `wp_postmeta` VALUES (463,47,'where_we_are_pins_3_address','There are many variations of passages of Lorem Ipsum available');
INSERT INTO `wp_postmeta` VALUES (464,47,'_where_we_are_pins_3_address','field_64a0975da9cf8');
INSERT INTO `wp_postmeta` VALUES (465,47,'where_we_are_pins_3_map_spot','melbourne');
INSERT INTO `wp_postmeta` VALUES (466,47,'_where_we_are_pins_3_map_spot','field_64a0976aa9cf9');
INSERT INTO `wp_postmeta` VALUES (467,48,'hero_label','get in touch');
INSERT INTO `wp_postmeta` VALUES (468,48,'_hero_label','field_649d615d9f17b');
INSERT INTO `wp_postmeta` VALUES (469,48,'hero_title','How can we help?');
INSERT INTO `wp_postmeta` VALUES (470,48,'_hero_title','field_649d61a89f17c');
INSERT INTO `wp_postmeta` VALUES (471,48,'hero_text','Let us know how we can help to get you started.');
INSERT INTO `wp_postmeta` VALUES (472,48,'_hero_text','field_649d61b09f17d');
INSERT INTO `wp_postmeta` VALUES (473,48,'hero_contact_form','[contact-form-7 id=\"40\" title=\"Contact form 1\"]');
INSERT INTO `wp_postmeta` VALUES (474,48,'_hero_contact_form','field_649d61c19f17f');
INSERT INTO `wp_postmeta` VALUES (475,48,'hero','');
INSERT INTO `wp_postmeta` VALUES (476,48,'_hero','field_649d6104a15ae');
INSERT INTO `wp_postmeta` VALUES (477,48,'lets_talk_title','');
INSERT INTO `wp_postmeta` VALUES (478,48,'_lets_talk_title','field_64a088ba580cb');
INSERT INTO `wp_postmeta` VALUES (479,48,'lets_talk_blocks','');
INSERT INTO `wp_postmeta` VALUES (480,48,'_lets_talk_blocks','field_64a08934580cc');
INSERT INTO `wp_postmeta` VALUES (481,48,'lets_talk','');
INSERT INTO `wp_postmeta` VALUES (482,48,'_lets_talk','field_64a0889e580ca');
INSERT INTO `wp_postmeta` VALUES (483,48,'where_we_are_badge','');
INSERT INTO `wp_postmeta` VALUES (484,48,'_where_we_are_badge','field_64a09660a9cf4');
INSERT INTO `wp_postmeta` VALUES (485,48,'where_we_are_title','');
INSERT INTO `wp_postmeta` VALUES (486,48,'_where_we_are_title','field_64a09668a9cf5');
INSERT INTO `wp_postmeta` VALUES (487,48,'where_we_are_pins','4');
INSERT INTO `wp_postmeta` VALUES (488,48,'_where_we_are_pins','field_64a09678a9cf6');
INSERT INTO `wp_postmeta` VALUES (489,48,'where_we_are_addresses','');
INSERT INTO `wp_postmeta` VALUES (490,48,'_where_we_are_addresses','field_64a0985bd8347');
INSERT INTO `wp_postmeta` VALUES (491,48,'where_we_are','');
INSERT INTO `wp_postmeta` VALUES (492,48,'_where_we_are','field_64a09649a9cf3');
INSERT INTO `wp_postmeta` VALUES (493,48,'book_demo_badge','');
INSERT INTO `wp_postmeta` VALUES (494,48,'_book_demo_badge','field_64a098d31f4a1');
INSERT INTO `wp_postmeta` VALUES (495,48,'book_demo_title','');
INSERT INTO `wp_postmeta` VALUES (496,48,'_book_demo_title','field_64a098d81f4a2');
INSERT INTO `wp_postmeta` VALUES (497,48,'book_demo_text','');
INSERT INTO `wp_postmeta` VALUES (498,48,'_book_demo_text','field_64a098e41f4a3');
INSERT INTO `wp_postmeta` VALUES (499,48,'book_demo_demo','');
INSERT INTO `wp_postmeta` VALUES (500,48,'_book_demo_demo','field_64a098fe1f4a4');
INSERT INTO `wp_postmeta` VALUES (501,48,'book_demo_trial','');
INSERT INTO `wp_postmeta` VALUES (502,48,'_book_demo_trial','field_64a0992c1f4a5');
INSERT INTO `wp_postmeta` VALUES (503,48,'book_demo','');
INSERT INTO `wp_postmeta` VALUES (504,48,'_book_demo','field_64a098ba1f4a0');
INSERT INTO `wp_postmeta` VALUES (505,48,'where_we_are_pins_0_country','Los Angeles');
INSERT INTO `wp_postmeta` VALUES (506,48,'_where_we_are_pins_0_country','field_64a09756a9cf7');
INSERT INTO `wp_postmeta` VALUES (507,48,'where_we_are_pins_0_address','There are many variations of passages of Lorem Ipsum available');
INSERT INTO `wp_postmeta` VALUES (508,48,'_where_we_are_pins_0_address','field_64a0975da9cf8');
INSERT INTO `wp_postmeta` VALUES (509,48,'where_we_are_pins_0_map_spot','los_angeles');
INSERT INTO `wp_postmeta` VALUES (510,48,'_where_we_are_pins_0_map_spot','field_64a0976aa9cf9');
INSERT INTO `wp_postmeta` VALUES (511,48,'where_we_are_pins_1_country','New York');
INSERT INTO `wp_postmeta` VALUES (512,48,'_where_we_are_pins_1_country','field_64a09756a9cf7');
INSERT INTO `wp_postmeta` VALUES (513,48,'where_we_are_pins_1_address','There are many variations of passages of Lorem Ipsum available');
INSERT INTO `wp_postmeta` VALUES (514,48,'_where_we_are_pins_1_address','field_64a0975da9cf8');
INSERT INTO `wp_postmeta` VALUES (515,48,'where_we_are_pins_1_map_spot','new_york');
INSERT INTO `wp_postmeta` VALUES (516,48,'_where_we_are_pins_1_map_spot','field_64a0976aa9cf9');
INSERT INTO `wp_postmeta` VALUES (517,48,'where_we_are_pins_2_country','London');
INSERT INTO `wp_postmeta` VALUES (518,48,'_where_we_are_pins_2_country','field_64a09756a9cf7');
INSERT INTO `wp_postmeta` VALUES (519,48,'where_we_are_pins_2_address','There are many variations of passages of Lorem Ipsum available');
INSERT INTO `wp_postmeta` VALUES (520,48,'_where_we_are_pins_2_address','field_64a0975da9cf8');
INSERT INTO `wp_postmeta` VALUES (521,48,'where_we_are_pins_2_map_spot','london');
INSERT INTO `wp_postmeta` VALUES (522,48,'_where_we_are_pins_2_map_spot','field_64a0976aa9cf9');
INSERT INTO `wp_postmeta` VALUES (523,48,'where_we_are_pins_3_country','Melbourne');
INSERT INTO `wp_postmeta` VALUES (524,48,'_where_we_are_pins_3_country','field_64a09756a9cf7');
INSERT INTO `wp_postmeta` VALUES (525,48,'where_we_are_pins_3_address','There are many variations of passages of Lorem Ipsum available');
INSERT INTO `wp_postmeta` VALUES (526,48,'_where_we_are_pins_3_address','field_64a0975da9cf8');
INSERT INTO `wp_postmeta` VALUES (527,48,'where_we_are_pins_3_map_spot','melbourne');
INSERT INTO `wp_postmeta` VALUES (528,48,'_where_we_are_pins_3_map_spot','field_64a0976aa9cf9');
INSERT INTO `wp_postmeta` VALUES (535,40,'_config_errors','a:3:{s:9:\"form.body\";a:1:{i:0;a:2:{s:4:\"code\";i:107;s:4:\"args\";a:3:{s:7:\"message\";s:55:\"Unavailable names (%names%) are used for form controls.\";s:6:\"params\";a:1:{s:5:\"names\";s:6:\"\"name\"\";}s:4:\"link\";s:63:\"https://contactform7.com/configuration-errors/unavailable-names\";}}}s:11:\"mail.sender\";a:1:{i:0;a:2:{s:4:\"code\";i:102;s:4:\"args\";a:3:{s:7:\"message\";s:0:\"\";s:6:\"params\";a:0:{}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}s:23:\"mail.additional_headers\";a:1:{i:0;a:2:{s:4:\"code\";i:102;s:4:\"args\";a:3:{s:7:\"message\";s:51:\"Invalid mailbox syntax is used in the %name% field.\";s:6:\"params\";a:1:{s:4:\"name\";s:8:\"Reply-To\";}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}}');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2023-07-03 10:26:01','2023-07-03 10:26:01','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2023-07-03 10:26:01','2023-07-03 10:26:01','',0,'http://localhost:10003/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2023-07-03 10:26:01','2023-07-03 10:26:01','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:10003/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2023-07-03 10:26:01','2023-07-03 10:26:01','',0,'http://localhost:10003/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2023-07-03 10:26:01','2023-07-03 10:26:01','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost:10003.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','draft','closed','open','','privacy-policy','','','2023-07-03 10:26:01','2023-07-03 10:26:01','',0,'http://localhost:10003/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (4,1,'2023-07-03 10:27:39','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2023-07-03 10:27:39','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=4',0,'post','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2023-07-03 10:35:01','2023-07-03 10:35:01','','Contact us','','publish','closed','closed','','contact-us','','','2023-07-05 08:17:56','2023-07-05 08:17:56','',0,'http://localhost:10003/?page_id=6',0,'page','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2023-07-03 10:35:01','2023-07-03 10:35:01','','Contact us','','inherit','closed','closed','','6-revision-v1','','','2023-07-03 10:35:01','2023-07-03 10:35:01','',6,'http://localhost:10003/?p=7',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2023-07-03 10:42:35','2023-07-03 10:42:35','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:29:\"page-templates/contact-us.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Contact us page','contact-us-page','publish','closed','closed','','group_649d60ff2f89d','','','2023-07-03 10:42:59','2023-07-03 10:42:59','',0,'http://localhost:10003/?p=8',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2023-07-03 10:42:35','2023-07-03 10:42:35','a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}','Hero','hero','publish','closed','closed','','field_649d6104a15ae','','','2023-07-03 10:42:35','2023-07-03 10:42:35','',8,'http://localhost:10003/?post_type=acf-field&p=9',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2023-07-03 10:42:35','2023-07-03 10:42:35','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Label','label','publish','closed','closed','','field_649d615d9f17b','','','2023-07-03 10:42:35','2023-07-03 10:42:35','',9,'http://localhost:10003/?post_type=acf-field&p=10',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2023-07-03 10:42:35','2023-07-03 10:42:35','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Title','title','publish','closed','closed','','field_649d61a89f17c','','','2023-07-03 10:42:35','2023-07-03 10:42:35','',9,'http://localhost:10003/?post_type=acf-field&p=11',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2023-07-03 10:42:35','2023-07-03 10:42:35','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}','Text','text','publish','closed','closed','','field_649d61b09f17d','','','2023-07-03 10:42:35','2023-07-03 10:42:35','',9,'http://localhost:10003/?post_type=acf-field&p=12',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2023-07-03 10:42:35','2023-07-03 10:42:35','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:37:\"Input Contact Form 7 plugin shortcode\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Contact form','contact_form','publish','closed','closed','','field_649d61c19f17f','','','2023-07-03 10:42:35','2023-07-03 10:42:35','',9,'http://localhost:10003/?post_type=acf-field&p=13',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2023-07-03 10:42:35','2023-07-03 10:42:35','a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}','Let\'s talk','lets_talk','publish','closed','closed','','field_64a0889e580ca','','','2023-07-03 10:42:35','2023-07-03 10:42:35','',8,'http://localhost:10003/?post_type=acf-field&p=14',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2023-07-03 10:42:35','2023-07-03 10:42:35','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Title','title','publish','closed','closed','','field_64a088ba580cb','','','2023-07-03 10:42:35','2023-07-03 10:42:35','',14,'http://localhost:10003/?post_type=acf-field&p=15',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2023-07-03 10:42:35','2023-07-03 10:42:35','a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"pagination\";i:0;s:3:\"min\";i:0;s:3:\"max\";i:0;s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:7:\"Add Row\";s:13:\"rows_per_page\";i:20;}','Blocks','blocks','publish','closed','closed','','field_64a08934580cc','','','2023-07-03 10:42:35','2023-07-03 10:42:35','',14,'http://localhost:10003/?post_type=acf-field&p=16',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2023-07-03 10:42:35','2023-07-03 10:42:35','a:15:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:27:{s:12:\"align-bottom\";s:12:\"align-bottom\";s:5:\"arrow\";s:5:\"arrow\";s:8:\"building\";s:8:\"building\";s:14:\"calendar-check\";s:14:\"calendar-check\";s:13:\"calendar-plus\";s:13:\"calendar-plus\";s:4:\"chat\";s:4:\"chat\";s:5:\"check\";s:5:\"check\";s:5:\"close\";s:5:\"close\";s:4:\"down\";s:4:\"down\";s:8:\"facebook\";s:8:\"facebook\";s:4:\"info\";s:4:\"info\";s:12:\"layers-three\";s:12:\"layers-three\";s:4:\"left\";s:4:\"left\";s:8:\"linkedin\";s:8:\"linkedin\";s:4:\"menu\";s:4:\"menu\";s:5:\"minus\";s:5:\"minus\";s:7:\"monitor\";s:7:\"monitor\";s:5:\"phone\";s:5:\"phone\";s:3:\"pin\";s:3:\"pin\";s:4:\"plus\";s:4:\"plus\";s:5:\"right\";s:5:\"right\";s:4:\"send\";s:4:\"send\";s:7:\"twitter\";s:7:\"twitter\";s:2:\"up\";s:2:\"up\";s:9:\"user-plus\";s:9:\"user-plus\";s:11:\"user-square\";s:11:\"user-square\";s:7:\"youtube\";s:7:\"youtube\";}s:13:\"default_value\";b:0;s:13:\"return_format\";s:5:\"value\";s:8:\"multiple\";i:0;s:10:\"allow_null\";i:0;s:2:\"ui\";i:0;s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";s:15:\"parent_repeater\";s:19:\"field_64a08934580cc\";}','Icon','icon','publish','closed','closed','','field_64a08b54abcf1','','','2023-07-03 10:42:35','2023-07-03 10:42:35','',16,'http://localhost:10003/?post_type=acf-field&p=17',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2023-07-03 10:42:35','2023-07-03 10:42:35','a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"radio\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:2:{s:11:\"title_first\";s:16:\"Title above text\";s:10:\"text_first\";s:16:\"Text above title\";}s:13:\"default_value\";s:11:\"title_first\";s:13:\"return_format\";s:5:\"value\";s:10:\"allow_null\";i:0;s:12:\"other_choice\";i:0;s:6:\"layout\";s:8:\"vertical\";s:17:\"save_other_choice\";i:0;s:15:\"parent_repeater\";s:19:\"field_64a08934580cc\";}','Title and Text order','title_and_text_order','publish','closed','closed','','field_64a08c97abcf4','','','2023-07-03 10:42:35','2023-07-03 10:42:35','',16,'http://localhost:10003/?post_type=acf-field&p=18',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2023-07-03 10:42:35','2023-07-03 10:42:35','a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:15:\"parent_repeater\";s:19:\"field_64a08934580cc\";}','Title','title','publish','closed','closed','','field_64a08c3fabcf2','','','2023-07-03 10:42:35','2023-07-03 10:42:35','',16,'http://localhost:10003/?post_type=acf-field&p=19',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2023-07-03 10:42:35','2023-07-03 10:42:35','a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:15:\"parent_repeater\";s:19:\"field_64a08934580cc\";}','Text','text','publish','closed','closed','','field_64a08c46abcf3','','','2023-07-03 10:42:35','2023-07-03 10:42:35','',16,'http://localhost:10003/?post_type=acf-field&p=20',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2023-07-03 10:42:35','2023-07-03 10:42:35','a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"radio\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:2:{s:4:\"text\";s:10:\"Plain text\";s:4:\"link\";s:4:\"Link\";}s:13:\"default_value\";s:4:\"text\";s:13:\"return_format\";s:5:\"value\";s:10:\"allow_null\";i:0;s:12:\"other_choice\";i:0;s:6:\"layout\";s:8:\"vertical\";s:17:\"save_other_choice\";i:0;s:15:\"parent_repeater\";s:19:\"field_64a08934580cc\";}','Footer type','footer_type','publish','closed','closed','','field_64a08cfbabcf5','','','2023-07-03 10:42:35','2023-07-03 10:42:35','',16,'http://localhost:10003/?post_type=acf-field&p=21',4,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2023-07-03 10:42:35','2023-07-03 10:42:35','a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_64a08cfbabcf5\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"text\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:15:\"parent_repeater\";s:19:\"field_64a08934580cc\";}','Text','footer_text','publish','closed','closed','','field_64a08d40abcf6','','','2023-07-03 10:42:35','2023-07-03 10:42:35','',16,'http://localhost:10003/?post_type=acf-field&p=22',5,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2023-07-03 10:42:35','2023-07-03 10:42:35','a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_64a08cfbabcf5\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"link\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:15:\"parent_repeater\";s:19:\"field_64a08934580cc\";}','Link','footer_link','publish','closed','closed','','field_64a08d7babcf7','','','2023-07-03 10:42:35','2023-07-03 10:42:35','',16,'http://localhost:10003/?post_type=acf-field&p=23',6,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2023-07-03 10:42:35','2023-07-03 10:42:35','a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}','Where we are','where_we_are','publish','closed','closed','','field_64a09649a9cf3','','','2023-07-03 10:42:35','2023-07-03 10:42:35','',8,'http://localhost:10003/?post_type=acf-field&p=24',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2023-07-03 10:42:35','2023-07-03 10:42:35','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Badge','badge','publish','closed','closed','','field_64a09660a9cf4','','','2023-07-03 10:42:35','2023-07-03 10:42:35','',24,'http://localhost:10003/?post_type=acf-field&p=25',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2023-07-03 10:42:35','2023-07-03 10:42:35','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Title','title','publish','closed','closed','','field_64a09668a9cf5','','','2023-07-03 10:42:35','2023-07-03 10:42:35','',24,'http://localhost:10003/?post_type=acf-field&p=26',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2023-07-03 10:42:35','2023-07-03 10:42:35','a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"pagination\";i:0;s:3:\"min\";i:0;s:3:\"max\";i:0;s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:7:\"Add Row\";s:13:\"rows_per_page\";i:20;}','Pins','pins','publish','closed','closed','','field_64a09678a9cf6','','','2023-07-03 10:42:35','2023-07-03 10:42:35','',24,'http://localhost:10003/?post_type=acf-field&p=27',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2023-07-03 10:42:35','2023-07-03 10:42:35','a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:15:\"parent_repeater\";s:19:\"field_64a09678a9cf6\";}','Country','country','publish','closed','closed','','field_64a09756a9cf7','','','2023-07-03 10:42:35','2023-07-03 10:42:35','',27,'http://localhost:10003/?post_type=acf-field&p=28',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2023-07-03 10:42:35','2023-07-03 10:42:35','a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:15:\"parent_repeater\";s:19:\"field_64a09678a9cf6\";}','Address','address','publish','closed','closed','','field_64a0975da9cf8','','','2023-07-03 10:42:35','2023-07-03 10:42:35','',27,'http://localhost:10003/?post_type=acf-field&p=29',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2023-07-03 10:42:35','2023-07-03 10:42:35','a:15:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:52:\"Code customization is required to add a new map spot\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:4:{s:11:\"los_angeles\";s:11:\"Los Angeles\";s:8:\"new_york\";s:8:\"New York\";s:6:\"london\";s:6:\"London\";s:9:\"melbourne\";s:9:\"Melbourne\";}s:13:\"default_value\";b:0;s:13:\"return_format\";s:5:\"value\";s:8:\"multiple\";i:0;s:10:\"allow_null\";i:0;s:2:\"ui\";i:0;s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";s:15:\"parent_repeater\";s:19:\"field_64a09678a9cf6\";}','Map spot','map_spot','publish','closed','closed','','field_64a0976aa9cf9','','','2023-07-03 10:42:35','2023-07-03 10:42:35','',27,'http://localhost:10003/?post_type=acf-field&p=30',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2023-07-03 10:42:35','2023-07-03 10:42:35','a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";i:0;s:3:\"max\";i:0;s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:7:\"Add Row\";s:13:\"rows_per_page\";i:20;}','Addresses','addresses','publish','closed','closed','','field_64a0985bd8347','','','2023-07-03 10:42:35','2023-07-03 10:42:35','',24,'http://localhost:10003/?post_type=acf-field&p=31',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2023-07-03 10:42:35','2023-07-03 10:42:35','a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:15:\"parent_repeater\";s:19:\"field_64a0985bd8347\";}','Title','title','publish','closed','closed','','field_64a0986cd8348','','','2023-07-03 10:42:35','2023-07-03 10:42:35','',31,'http://localhost:10003/?post_type=acf-field&p=32',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2023-07-03 10:42:35','2023-07-03 10:42:35','a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:15:\"parent_repeater\";s:19:\"field_64a0985bd8347\";}','Address','address','publish','closed','closed','','field_64a09872d8349','','','2023-07-03 10:42:35','2023-07-03 10:42:35','',31,'http://localhost:10003/?post_type=acf-field&p=33',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2023-07-03 10:42:35','2023-07-03 10:42:35','a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}','Book demo','book_demo','publish','closed','closed','','field_64a098ba1f4a0','','','2023-07-03 10:42:35','2023-07-03 10:42:35','',8,'http://localhost:10003/?post_type=acf-field&p=34',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2023-07-03 10:42:35','2023-07-03 10:42:35','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Badge','badge','publish','closed','closed','','field_64a098d31f4a1','','','2023-07-03 10:42:35','2023-07-03 10:42:35','',34,'http://localhost:10003/?post_type=acf-field&p=35',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2023-07-03 10:42:35','2023-07-03 10:42:35','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Title','title','publish','closed','closed','','field_64a098d81f4a2','','','2023-07-03 10:42:35','2023-07-03 10:42:35','',34,'http://localhost:10003/?post_type=acf-field&p=36',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2023-07-03 10:42:35','2023-07-03 10:42:35','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}','Text','text','publish','closed','closed','','field_64a098e41f4a3','','','2023-07-03 10:42:35','2023-07-03 10:42:35','',34,'http://localhost:10003/?post_type=acf-field&p=37',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2023-07-03 10:42:35','2023-07-03 10:42:35','a:7:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}','Demo button','demo','publish','closed','closed','','field_64a098fe1f4a4','','','2023-07-03 10:42:35','2023-07-03 10:42:35','',34,'http://localhost:10003/?post_type=acf-field&p=38',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2023-07-03 10:42:35','2023-07-03 10:42:35','a:7:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}','Trial button','trial','publish','closed','closed','','field_64a0992c1f4a5','','','2023-07-03 10:42:35','2023-07-03 10:42:35','',34,'http://localhost:10003/?post_type=acf-field&p=39',4,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2023-07-03 11:38:50','2023-07-03 11:38:50','<div class=\"horizontal\">\r\n<div>\r\n<label>Name</label>\r\n[text* name autocomplete:name placeholder \"Your name\"]\r\n</div>\r\n<div>\r\n<label>Business email</label>\r\n[email* email autocomplete:email placeholder \"email@work.com\"]\r\n</div>\r\n</div>\r\n<div class=\"vertical\">\r\n<div>\r\n<label>Phone</label>\r\n[text* phone placeholder \"Phone number\"]\r\n</div>\r\n<div>\r\n<label>Message</label>\r\n[textarea message x5 placeholder \"Your message\"]\r\n</div>\r\n</div>\r\n\r\n[submit class:btn class:btn-primary class:btn-arrowed \"Submit\"]\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@localhost>\n[_site_admin_email]\nFrom: [your-name] [your-email]\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [your-email]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@localhost>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe uploaded file is too large.\nThere was an error uploading the file.\nPlease enter a date in YYYY-MM-DD format.\nThis field has a too early date.\nThis field has a too late date.\nPlease enter a number.\nThis field has a too small number.\nThis field has a too large number.\nThe answer to the quiz is incorrect.\nPlease enter an email address.\nPlease enter a URL.\nPlease enter a telephone number.','Contact form 1','','publish','closed','closed','','contact-form-1','','','2023-07-05 16:43:49','2023-07-05 16:43:49','',0,'http://localhost:10003/?post_type=wpcf7_contact_form&#038;p=40',0,'wpcf7_contact_form','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2023-07-03 11:39:45','2023-07-03 11:39:45','','Contact us','','inherit','closed','closed','','6-revision-v1','','','2023-07-03 11:39:45','2023-07-03 11:39:45','',6,'http://localhost:10003/?p=41',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2023-07-04 21:04:40','2023-07-04 21:04:40','','Contact us','','inherit','closed','closed','','6-revision-v1','','','2023-07-04 21:04:40','2023-07-04 21:04:40','',6,'http://localhost:10003/?p=43',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2023-07-04 21:06:09','2023-07-04 21:06:09','','Contact us','','inherit','closed','closed','','6-revision-v1','','','2023-07-04 21:06:09','2023-07-04 21:06:09','',6,'http://localhost:10003/?p=44',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2023-07-04 21:17:35','2023-07-04 21:17:35','','Contact us','','inherit','closed','closed','','6-revision-v1','','','2023-07-04 21:17:35','2023-07-04 21:17:35','',6,'http://localhost:10003/?p=45',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2023-07-04 21:27:52','2023-07-04 21:27:52','','Contact us','','inherit','closed','closed','','6-revision-v1','','','2023-07-04 21:27:52','2023-07-04 21:27:52','',6,'http://localhost:10003/?p=46',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2023-07-05 08:04:05','2023-07-05 08:04:05','','Contact us','','inherit','closed','closed','','6-revision-v1','','','2023-07-05 08:04:05','2023-07-05 08:04:05','',6,'http://localhost:10003/?p=47',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2023-07-05 08:17:56','2023-07-05 08:17:56','','Contact us','','inherit','closed','closed','','6-revision-v1','','','2023-07-05 08:17:56','2023-07-05 08:17:56','',6,'http://localhost:10003/?p=48',0,'revision','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (8,1,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','admin');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:4:{s:64:\"ef9ca4a694c839c1a18084af789072461d2c875a7c2e5a59562b3d029ac55f3f\";a:4:{s:10:\"expiration\";i:1688677323;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36\";s:5:\"login\";i:1688504523;}s:64:\"dd153f231a94538368f81f5f1919e230d6f38705cbf8f57f8ccbd75cc4d58327\";a:4:{s:10:\"expiration\";i:1688716960;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36\";s:5:\"login\";i:1688544160;}s:64:\"86606e00e8f5860af634b350e2fa011d437bb685bdced541b3fcd25828ee7671\";a:4:{s:10:\"expiration\";i:1688719249;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36\";s:5:\"login\";i:1688546449;}s:64:\"3d8c27d0e3e0d0f1eb13009d08119c3b3173b10eb50ff20c87b3095d2e5573c6\";a:4:{s:10:\"expiration\";i:1688747418;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36\";s:5:\"login\";i:1688574618;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','4');
INSERT INTO `wp_usermeta` VALUES (18,1,'wp_persisted_preferences','a:2:{s:14:\"core/edit-post\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2023-07-03T10:34:46.307Z\";}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'admin','$P$BBm5RIKVRV.MEO7nKgx3yst5xryd7f.','admin','dev-email@wpengine.local','http://localhost:10003','2023-07-03 10:26:01','',0,'admin');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-06  9:35:30
