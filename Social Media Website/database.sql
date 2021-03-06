/*Social Media Website*/


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;

INSERT INTO `categories` (`id`, `name`, `order`, `created_at`, `updated_at`)
VALUES
	(1,'Uncategorized',33,'2013-10-24 16:41:57','2014-01-28 15:25:19'),
	(2,'Animals',1,'2013-10-18 15:57:00','2014-01-28 15:45:25'),
	(25,'News',24,'2013-10-24 16:40:46','2013-10-24 16:40:46'),
	(29,'Sports',31,'2013-10-24 16:41:30','2014-01-26 17:22:09'),
	(31,'Comics',18,'2014-01-28 14:59:34','2014-01-28 16:00:58'),
	(32,'Cartoon',3,'2014-01-28 15:25:09','2014-01-28 15:25:09'),
	(33,'Music',22,'2014-01-28 15:44:11','2014-01-28 15:44:11'),
	(34,'Architecture',2,'2014-01-28 15:45:15','2014-01-28 15:45:31'),
	(35,'Film',20,'2014-01-28 16:00:22','2014-01-28 16:00:22'),
	(36,'Family',19,'2014-01-28 16:01:08','2014-01-28 16:01:08'),
	(37,'Comedy',13,'2014-01-31 04:11:41','2014-01-31 04:11:41'),
	(38,'Vehicles',38,'2014-01-31 04:20:05','2014-01-31 04:20:05'),
	(39,'Food',21,'2014-01-31 04:46:00','2014-01-31 04:46:00'),
	(40,'Retro',25,'2014-02-04 04:38:23','2014-02-04 04:38:23');

/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table comment_flags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `comment_flags`;

CREATE TABLE `comment_flags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table comment_votes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `comment_votes`;

CREATE TABLE `comment_votes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `up` tinyint(1) NOT NULL DEFAULT '0',
  `down` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table comments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `comments`;

CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `media_id` int(11) NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pic_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vid_url` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table media
# ------------------------------------------------------------

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT '1',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `vid` tinyint(1) NOT NULL DEFAULT '0',
  `pic` tinyint(1) NOT NULL DEFAULT '1',
  `pic_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vid_url` text COLLATE utf8_unicode_ci,
  `link_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `nsfw` tinyint(1) NOT NULL DEFAULT '0',
  `views` int(11) NOT NULL DEFAULT '0',
  `pic_url_multi` text COLLATE utf8_unicode_ci,
  `delete_img` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;

INSERT INTO `media` (`id`, `user_id`, `category_id`, `title`, `slug`, `description`, `active`, `vid`, `pic`, `pic_url`, `vid_url`, `link_url`, `tags`, `created_at`, `updated_at`, `nsfw`, `views`, `pic_url_multi`, `delete_img`)
VALUES
	(94,1,1,'What would you do?','what-would-you-do','',1,0,1,'December2013/what_would_you_do.jpg',NULL,'','','2013-12-27 17:27:31','2014-01-30 22:15:53',0,0,NULL,NULL),
	(95,1,1,'Google Fridge','google-fridge','',1,0,1,'December2013/google-egg-fridge.jpg',NULL,'','','2013-12-27 17:29:21','2014-01-30 22:15:53',0,0,NULL,NULL),
	(96,1,39,'Hamburger Helper','hamburger-helper','',1,0,1,'December2013/hamburger-helper.jpg',NULL,'','','2013-12-27 17:30:03','2014-02-08 17:34:01',0,0,NULL,NULL),
	(97,1,39,'Lies','lies','',1,0,1,'December2013/lies.jpg',NULL,'','','2013-12-27 17:30:40','2014-02-08 17:34:17',0,0,NULL,NULL),
	(98,1,1,'Tips-n-Tricks','tips-n-tricks','',1,0,1,'December2013/tips-n-tricks.jpg',NULL,'','','2013-12-27 17:31:04','2014-01-30 22:15:53',0,0,NULL,NULL),
	(99,1,39,'This Just in...','this-just-in','',1,0,1,'December2013/cheeseburger-stabbing.jpg',NULL,'','','2013-12-27 17:31:42','2014-02-08 17:34:25',0,0,NULL,NULL),
	(100,1,1,'Hold My Calls','hold-my-calls','',1,0,1,'December2013/hold-my-calls.jpg',NULL,'','','2013-12-27 17:34:29','2014-01-30 22:15:53',0,0,NULL,NULL),
	(101,1,1,'Welcome To The Jungle','welcome-to-the-jungle','',1,0,1,'December2013/welcome_to_the_jungle.jpg',NULL,'','','2013-12-27 17:34:57','2014-01-30 22:15:53',0,0,NULL,NULL),
	(102,1,1,'Will this be on the test?','will-this-be-on-the-test','',1,0,1,'December2013/test-blackboard.jpg',NULL,'','','2013-12-27 17:35:19','2014-01-30 22:15:53',0,0,NULL,NULL),
	(103,1,2,'Just keep on smilin fatty','just-keep-on-smilin-fatty','',1,0,1,'December2013/just_keep_smilin_fatty.jpg',NULL,'','','2013-12-27 17:40:47','2014-02-08 17:35:45',0,0,NULL,NULL),
	(104,1,1,'Choose your own adventure','choose-your-own-adventure','',1,0,1,'December2013/choose_your_own_adventure.jpg',NULL,'','','2013-12-27 17:41:34','2014-01-30 22:15:53',0,0,NULL,NULL),
	(105,1,1,'Keep up the adequate work!','keep-up-the-adequate-work','',1,0,1,'December2013/adequate_work.jpg',NULL,'','','2013-12-27 17:41:52','2014-01-30 22:15:53',0,0,NULL,NULL),
	(106,1,1,'Hey Ladies...','hey-ladies','',1,0,1,'December2013/hey_ladies.jpg',NULL,'','','2013-12-27 17:42:10','2014-01-30 22:15:53',0,0,NULL,NULL),
	(107,1,1,'A Case of the Mondays','a-case-of-the-mondays','',1,0,1,'December2013/filled_with_excitement.jpg',NULL,'','','2013-12-27 17:42:33','2014-01-30 22:15:53',0,0,NULL,NULL),
	(108,1,1,'Be Honest Now','be-honest-now','',1,0,1,'December2013/be_honest_now.jpg',NULL,'','','2013-12-27 17:43:00','2014-01-30 22:15:53',0,0,NULL,NULL),
	(109,1,1,'Meet Your New Cubemate','meet-your-new-cubemate','',1,0,1,'December2013/cubemate_small.jpg',NULL,'','','2013-12-27 17:47:17','2014-01-30 22:15:53',0,0,NULL,NULL),
	(110,1,1,'Those Bastards','those-bastards','',1,0,1,'December2013/piano_robot.jpg',NULL,'','','2013-12-27 17:47:39','2014-01-30 22:15:53',0,0,NULL,NULL),
	(112,1,1,'Is this a problem these days?','is-this-a-problem-these-days','',1,0,1,'December2013/is-this-a-problem-these-days.jpg',NULL,'','','2013-12-28 02:51:52','2014-01-30 22:15:53',0,0,NULL,NULL),
	(113,1,1,'Defense','defense','',1,0,1,'December2013/defense.jpg',NULL,'','','2013-12-28 02:52:07','2014-01-30 22:15:53',0,0,NULL,NULL),
	(114,1,1,'Ooops Sorry','ooops-sorry','',1,0,1,'December2013/ooops-sorry.jpg',NULL,'','','2013-12-28 02:52:23','2014-01-30 22:15:53',0,0,NULL,NULL),
	(115,1,1,'The day I lost control...','the-day-i-lost-control','',1,0,1,'December2013/the-day-i-lost-control.jpg',NULL,'','','2013-12-28 02:52:48','2014-01-30 22:15:53',0,0,NULL,NULL),
	(116,1,1,'What I remember most about LEGOs','what-i-remember-most-about-legos','',1,0,1,'December2013/what-i-remember-most-about-legos.jpg',NULL,'','','2013-12-28 02:53:01','2014-01-30 22:15:53',0,0,NULL,NULL),
	(117,1,1,'Tea Submarine','tea-submarine','',1,0,1,'December2013/tea-submarine.jpg',NULL,'','','2013-12-28 02:53:28','2014-01-30 22:15:53',0,0,NULL,NULL),
	(118,1,1,'Do we have a problem?','do-we-have-a-problem','',1,0,1,'December2013/do-we-have-a-problem.jpg',NULL,'','','2013-12-28 02:53:44','2014-01-30 22:15:53',0,0,NULL,NULL),
	(119,1,1,'Simplest rubiks cube solution','simplest-rubiks-cube-solution','',1,0,1,'December2013/simplest-rubiks-cube-solution.jpg',NULL,'','','2013-12-28 03:03:45','2014-01-30 22:15:53',0,0,NULL,NULL),
	(120,1,1,'IMPOSTER!','imposter','',1,0,1,'December2013/imposter.jpg',NULL,'','','2013-12-28 03:04:03','2014-01-30 22:15:53',0,0,NULL,NULL),
	(121,1,1,'Life is just a game.','life-is-just-a-game','',1,0,1,'December2013/life-is-just-a-game.jpg',NULL,'','','2013-12-28 03:04:22','2014-01-30 22:15:53',0,0,NULL,NULL),
	(122,1,1,'Pepsi Vs. Coke','pepsi-vs-coke','',1,0,1,'December2013/pepsi-vs-coke.jpg',NULL,'','','2013-12-28 03:04:52','2014-01-30 22:15:54',0,0,NULL,NULL),
	(123,1,1,'Shadow Faces','shadow-faces','',1,0,1,'December2013/shadow-faces.jpg',NULL,'','','2013-12-28 03:05:08','2014-01-30 22:15:54',0,0,NULL,NULL),
	(124,1,1,'Oh Google...','oh-google','',1,0,1,'December2013/oh-google.jpg',NULL,'','','2013-12-28 03:05:23','2014-01-30 22:15:54',0,0,NULL,NULL),
	(125,1,1,'Poker is not for everyone','poker-is-not-for-everyone','',1,0,1,'December2013/poker-is-not-for-everyone.jpg',NULL,'','','2013-12-28 03:05:49','2014-01-30 22:15:54',0,0,NULL,NULL),
	(126,1,1,'In case of nothing to do...','in-case-of-nothing-to-do','',1,0,1,'December2013/in-case-of-nothing-to-do.jpg',NULL,'','','2013-12-28 03:06:03','2014-01-30 22:15:54',0,0,NULL,NULL),
	(127,1,1,'Life was much easier...','life-was-much-easier','',1,0,1,'December2013/life-was-much-easier.jpg',NULL,'','','2013-12-28 03:06:19','2014-01-30 22:15:54',0,0,NULL,NULL),
	(128,1,1,'well played son, well played','well-played-son-well-played','',1,0,1,'December2013/well-played-son-well-played.jpg',NULL,'','','2013-12-28 03:06:35','2014-01-30 22:15:54',0,0,NULL,NULL),
	(129,1,1,'Seat Savers','seat-savers','',1,0,1,'December2013/seat-savers.jpg',NULL,'','','2013-12-28 03:06:52','2014-01-30 22:15:54',0,0,NULL,NULL),
	(130,1,1,'Harry Potter on Facebook','harry-potter-on-facebook','',1,0,1,'December2013/harry-potter-on-facebook.jpg',NULL,'','','2013-12-28 03:07:01','2014-01-30 22:15:54',0,0,NULL,NULL),
	(131,1,1,'Donuts\\\' escalator','donuts-escalator','',1,0,1,'December2013/donuts-escalator.jpg',NULL,'','','2013-12-28 03:07:16','2014-01-30 22:15:54',0,0,NULL,NULL),
	(132,1,1,'Ctrl-V, Ctrl-X, Ctrl-Z','ctrl-v-ctrl-x-ctrl-z','',1,0,1,'December2013/ctrl-v-ctrl-x-ctrl-z.jpg',NULL,'','','2013-12-28 03:07:29','2014-01-30 22:15:54',0,0,NULL,NULL),
	(133,1,1,'Cleverness','cleverness','',1,0,1,'December2013/cleverness.jpg',NULL,'','','2013-12-28 03:08:13','2014-01-30 22:15:54',0,0,NULL,NULL),
	(134,1,1,'If condoms had sponsors','if-condoms-had-sponsors','',1,0,1,'December2013/if-condoms-had-sponsors.jpg',NULL,'','','2013-12-28 03:08:42','2014-01-30 22:15:54',0,0,NULL,NULL),
	(135,1,1,'Eggregation','eggregation','',1,0,1,'December2013/eggregation.jpg',NULL,'','','2013-12-28 03:08:53','2014-01-30 22:15:54',0,0,NULL,NULL),
	(136,1,1,'Banana Bedtime','banana-bedtime','',1,0,1,'December2013/banana-bedtime.jpg',NULL,'','','2013-12-28 03:09:11','2014-01-30 22:15:54',0,0,NULL,NULL),
	(137,1,1,'Just Dream :)','just-dream','',1,0,1,'December2013/just-dream.jpg',NULL,'','','2013-12-28 03:09:25','2014-01-30 22:15:54',0,0,NULL,NULL),
	(138,1,1,'Formula of iPad','formula-of-ipad','',1,0,1,'December2013/formula-of-ipad.jpg',NULL,'','','2013-12-28 15:32:42','2014-01-30 22:15:54',0,0,NULL,NULL),
	(139,1,1,'How to draw an owl','how-to-draw-an-owl','',1,0,1,'December2013/how-to-draw-an-owl.jpg',NULL,'','','2013-12-28 15:33:10','2014-01-30 22:15:54',0,0,NULL,NULL),
	(140,1,1,'FALLING (in love) ROCKS','falling-in-love-rocks','',1,0,1,'December2013/falling-in-love-rocks.jpg',NULL,'','','2013-12-28 15:33:30','2014-01-30 22:15:54',0,0,NULL,NULL),
	(141,1,1,'That\\\'s my plan','that-s-my-plan','',1,0,1,'December2013/thats-my-plan.jpg',NULL,'','','2013-12-28 15:33:48','2014-01-30 22:15:54',0,0,NULL,NULL),
	(142,1,1,'What the flip...','what-the-flip','',1,0,1,'December2013/what-the-flip.jpg',NULL,'','','2013-12-28 15:34:17','2014-01-30 22:15:54',0,0,NULL,NULL),
	(143,1,1,'Blood Puddle Pillows','blood-puddle-pillows','',1,0,1,'December2013/blood-puddle-pillows.jpg',NULL,'','','2013-12-28 15:36:03','2014-01-30 22:15:54',0,0,NULL,NULL),
	(144,1,31,'Play Outside','play-outside','',1,0,1,'December2013/play-outside.jpg',NULL,'','','2013-12-28 15:36:23','2014-02-08 17:35:56',0,0,NULL,NULL),
	(145,1,1,'Uses of Google','uses-of-google','',1,0,1,'December2013/uses-of-google.jpg',NULL,'','','2013-12-28 15:36:38','2014-01-30 22:15:54',0,0,NULL,NULL),
	(146,1,1,'Heavy Metal','heavy-metal','',1,0,1,'December2013/heavy-metal.jpg',NULL,'','','2013-12-28 15:37:02','2014-01-30 22:15:54',0,0,NULL,NULL),
	(147,1,1,'Check out what I can do...','check-out-what-i-can-do','',1,0,1,'December2013/check-out-what-i-can-do.jpg',NULL,'','','2013-12-28 15:37:22','2014-01-30 22:15:54',0,0,NULL,NULL),
	(148,1,1,'Bitchin','bitchin','',1,0,1,'December2013/bitchin.jpg',NULL,'','','2013-12-28 15:37:40','2014-01-30 22:15:54',0,0,NULL,NULL),
	(149,1,1,'Passport!','passport','',1,0,1,'December2013/passport.jpg',NULL,'','','2013-12-28 15:37:54','2014-01-30 22:15:54',0,0,NULL,NULL),
	(150,1,1,'Say goodbye to your friends and get in the car...','say-goodbye-to-your-friends-and-get-in-the-car','',1,0,1,'December2013/say-goodbye-to-your-friends-and-get-in-the-car.jpg',NULL,'','','2013-12-28 15:38:09','2014-01-30 22:15:54',0,0,NULL,NULL),
	(151,1,1,'Kitty Ping Pong','kitty-ping-pong','',1,0,1,'January2014/kitty-gif.gif','','','funny,kitty,ping pong,cute','2014-01-04 04:01:29','2014-01-30 22:15:54',0,0,NULL,NULL),
	(152,1,1,'Cool Ball Flip','cool-ball-flip','',1,0,1,'January2014/cool-ball-flip.gif','','','gif,cool ball flip,exercise ball','2014-01-04 05:10:10','2014-01-30 22:15:54',0,0,NULL,NULL),
	(153,1,1,'Alone In The Dark','alone-in-the-dark','',1,0,1,'January2014/alone-in-the-dark.jpg','','','funny,black guys','2014-01-04 05:12:40','2014-01-30 22:15:54',0,0,NULL,NULL),
	(154,1,1,'Freedom of Speech','freedom-of-speech','',1,0,1,'January2014/freedom-of-speech.jpg','','','freedom of speech,kids drawing,homework','2014-01-04 05:14:13','2014-01-30 22:15:54',0,0,NULL,NULL),
	(156,1,1,'Rainbow in your hand','rainbow-in-your-hand','',1,0,1,'January2014/rainbow-in-your-hand.jpg','','','rainbow,cards,flipcards','2014-01-04 05:16:19','2014-01-30 22:15:54',0,0,NULL,NULL),
	(157,1,1,'I need some space','i-need-some-space','',1,0,1,'January2014/i-need-some-space.jpg','','','cartoon,keyboard,characters','2014-01-04 05:17:04','2014-01-30 22:15:54',0,0,NULL,NULL),
	(158,1,1,'It\\\'s too late...','it-s-too-late','',1,0,1,'January2014/its-too-late.jpg','','','funny,food,egg,chicken','2014-01-04 05:18:06','2014-01-30 22:15:54',0,0,NULL,NULL),
	(159,1,1,'Pizza Cat','pizza-cat','',1,0,1,'January2014/pizza-cat.jpg','','','pizza,food,cat','2014-01-04 05:18:51','2014-01-30 22:15:54',0,0,NULL,NULL),
	(160,1,1,'Space Saving Sofa Bed','space-saving-sofa-bed','',1,0,1,'January2014/52ceb86074c03-space-saving-sofa-bed.jpg.jpg','','','couch,cool,space saving,transform','2014-01-09 14:55:28','2014-01-30 22:15:54',0,0,NULL,NULL),
	(162,1,1,'Guillotine Bowling Alley','guillotine-bowling-alley','',1,0,1,'January2014/52ceb8f06dc47-guillotine-bowling-alley.jpg.jpg','','','guillotine,bowling','2014-01-09 14:57:52','2014-01-30 22:15:54',0,0,NULL,NULL),
	(163,1,1,'It\\\'s A Boy!','it-s-a-boy','',1,0,1,'January2014/its-a-boy.jpg','','','card,funny,babies','2014-01-09 14:58:21','2014-01-30 22:15:54',0,0,NULL,NULL),
	(164,1,1,'Secrets of the Warp Whistle','secrets-of-the-warp-whistle','',1,0,1,'January2014/secrets-of-the-warp-whistle.jpg','','','mario,warp whistle,games','2014-01-09 14:59:15','2014-01-30 22:15:54',0,0,NULL,NULL),
	(165,1,1,'A common work occurrence','a-common-work-occurrence','',1,0,1,'January2014/a-common-work-occurrence.jpg','','','funny,computer,music','2014-01-09 15:00:16','2014-01-30 22:15:54',0,0,NULL,NULL),
	(166,1,1,'Real Life Cartoon Boy','real-life-cartoon-boy','',1,0,1,'January2014/real-life-cartoon-boy.jpg','','','up,movie','2014-01-09 15:00:50','2014-01-30 22:15:54',0,0,NULL,NULL),
	(167,1,1,'Timone and Pumba','timone-and-pumba','',1,0,1,'January2014/timone-and-pumba.jpg','','','lion king,timone,pumba','2014-01-09 15:01:18','2014-01-30 22:15:54',0,0,NULL,NULL),
	(168,1,1,'This is how phobias begin','this-is-how-phobias-begin','',1,0,1,'January2014/this-is-how-phobias-begin.jpg','','','easter,creepy,phobias','2014-01-09 15:02:11','2014-01-30 22:15:54',0,0,NULL,NULL),
	(169,1,1,'Back in my day...','back-in-my-day','',1,0,1,'January2014/back-in-my-day.jpg','','','ipod,music','2014-01-09 15:03:00','2016-01-04 13:36:17',0,2,NULL,NULL),
	(170,1,1,'Flower Skirt','flower-skirt','',1,0,1,'January2014/flower-skirt.jpg','','','flower,skirt,flower skirt','2014-01-09 15:03:52','2014-01-30 22:15:54',0,0,NULL,NULL),
	(171,1,32,'This music smells funny','this-music-smells-funny','',1,0,1,'January2014/this-music-smells-funny.jpg','','','simpsons,cartoon,funny','2014-01-28 15:26:02','2014-01-30 22:15:54',0,0,NULL,NULL),
	(172,1,2,'Light me up!','light-me-up','',1,0,1,'January2014/light-me-up.jpg','','','cigarette,lighter,bird,smoke','2014-01-28 15:30:52','2014-01-30 22:15:54',0,0,NULL,NULL),
	(173,1,1,'Bubble Pop','bubble-pop','',1,0,1,'January2014/bubble-pop.jpg','','','bubble,pop,slow motion','2014-01-28 15:34:22','2014-01-30 22:15:54',0,0,NULL,NULL),
	(174,1,32,'The Pug Factory','the-pug-factory','',1,0,1,'January2014/the-pug-factory.jpg','','','pugs,dogs,funny,cartoon','2014-01-28 15:37:12','2014-01-30 22:15:54',0,0,NULL,NULL),
	(175,1,32,'Conspiracy','conspiracy','',1,0,1,'January2014/conspiracy.jpg','','','funny,fridge,conspiracy,toe','2014-01-28 15:38:32','2014-01-30 22:15:54',0,0,NULL,NULL),
	(176,1,1,'R2D2 Snowman','r2d2-snowman','',1,0,1,'January2014/r2d2-snowman.jpg','','','snow,snowman','2014-01-28 15:40:03','2014-01-30 22:15:54',0,0,NULL,NULL),
	(177,1,29,'Skate or Die','skate-or-die','',1,0,1,'January2014/skate-or-die.jpg','','','skate,fall,hurt,injury','2014-01-28 15:41:32','2014-01-30 22:15:54',0,0,NULL,NULL),
	(178,1,36,'The power of Christ compels you!','the-power-of-christ-compels-you','',1,0,1,'January2014/the-power-of-christ-compels-you.jpg','','','funny,family photo,funny kid','2014-01-28 16:01:54','2014-01-30 22:15:54',0,0,NULL,NULL),
	(179,1,35,'Dumb and Dumber - Inception Style','dumb-and-dumber-inception-style','',1,1,1,'January2014/dumb-and-dumber---inception-style.jpg','http://www.youtube.com/watch?v=zLDx-BPgxxA','','dumb & dumber,remake,inception','2014-01-28 16:02:46','2014-01-30 22:15:54',0,0,NULL,NULL),
	(180,1,35,'Pick a vowel?','pick-a-vowel','',1,0,1,'January2014/pick-a-vowel.jpg','','','scrubs,tv show','2014-01-28 16:03:59','2014-01-30 22:15:54',0,0,NULL,NULL),
	(181,1,1,'Go Go Gadget Mailbox','go-go-gadget-mailbox','',1,0,1,'January2014/go-go-gadget-mailbox.jpg','','','mailbox,ghetto rig','2014-01-28 16:04:51','2014-01-30 22:15:54',0,0,NULL,NULL),
	(182,1,2,'Yodawg!','yodawg','',1,0,1,'January2014/yodawg.jpg','','','yoda,dog,costume','2014-01-28 16:05:58','2014-01-30 22:15:54',0,0,NULL,NULL),
	(184,1,2,'Can I hold him?','can-i-hold-him','',1,0,1,'January2014/can-i-hold-him.jpg','','','pig,bacon,funny','2014-01-31 03:56:28','2014-01-31 03:56:28',0,0,NULL,NULL),
	(185,1,2,'A dog towing a cat, towing a rat no, really','a-dog-towing-a-cat-towing-a-rat-no-really','',1,0,1,'January2014/a-dog-towing-a-cat-towing-a-rat-no-really.jpg','','','dog,cat,rat,towing','2014-01-31 03:57:47','2014-01-31 03:57:47',0,0,NULL,NULL),
	(186,1,1,'BATMAAN!','batmaan','',1,0,1,'January2014/batmaan.jpg','','','batman','2014-01-31 04:01:51','2014-01-31 04:01:51',0,0,NULL,NULL),
	(187,1,32,'Everybody Loves WiFi','everybody-loves-wifi','',1,0,1,'January2014/everybody-loves-wifi.jpg','','','wifi,frog,alligator','2014-01-31 04:04:23','2014-01-31 04:04:23',0,0,NULL,NULL),
	(188,1,2,'Awwww.....now I can go to sleep....','awwww-now-i-can-go-to-sleep','',1,0,1,'January2014/awwwwnow-i-can-go-to-sleep.jpg','','','cat,sleep,kitten','2014-01-31 04:05:49','2014-01-31 04:05:49',0,0,NULL,NULL),
	(189,1,35,'Pool Jumpers Trailer','pool-jumpers-trailer','',1,1,1,'January2014/pool-jumpers-trailer.jpg','http://www.youtube.com/watch?v=5GIZ3cN4JwA','','trailer,pool jumpers,pools','2014-01-31 04:09:40','2014-01-31 04:09:40',0,0,NULL,NULL),
	(190,1,2,'Slowest Reader Ever','slowest-reader-ever','',1,0,1,'January2014/slowest-reader-ever.jpg','','','cat,reading,book','2014-01-31 04:10:45','2014-01-31 04:10:45',0,0,NULL,NULL),
	(191,1,1,'Fire Dragon... literally','fire-dragon-literally','',1,0,1,'January2014/fire-dragon-literally.jpg','','','fire,dragon','2014-01-31 04:13:52','2014-01-31 04:13:52',0,0,NULL,NULL),
	(192,1,37,'Harvard Sailing Team - Boys Will Be Girls ','harvard-sailing-team-boys-will-be-girls','',1,1,1,'January2014/harvard-sailing-team---boys-will-be-girls.jpg','http://www.youtube.com/watch?v=gspaoaecNAg','','harvard,sailing,sailing team,funny','2014-01-31 04:15:55','2014-01-31 04:15:55',0,0,NULL,NULL),
	(193,1,2,'Rest up, little buddy.','rest-up-little-buddy','',1,0,1,'January2014/rest-up-little-buddy.jpg','','','kitten,cast,cute,cat,hurt','2014-01-31 04:17:03','2014-01-31 04:17:03',0,0,NULL,NULL),
	(194,1,2,'Stealth Mode','stealth-mode','',1,0,1,'January2014/stealth-mode.jpg','','','food,steal,stealth,cat','2014-01-31 04:18:35','2014-01-31 04:18:35',0,0,NULL,NULL),
	(195,1,38,'It\'s ok, truck. Things will get better.','it-s-ok-truck-things-will-get-better','',1,0,1,'January2014/its-ok-truck-things-will-get-better.jpg','','','vehicle,truck,sad','2014-01-31 04:20:51','2014-01-31 04:20:51',0,0,NULL,NULL),
	(196,1,34,'Book Cave','book-cave','',1,0,1,'January2014/book-cave.jpg','','','books,cave,bookshelf','2014-01-31 04:23:03','2014-01-31 04:23:03',0,0,NULL,NULL),
	(197,1,34,'Invisible Bookshelf','invisible-bookshelf','',1,0,1,'January2014/invisible-bookshelf.jpg','','','books,bookshelf','2014-01-31 04:23:36','2014-01-31 04:23:36',0,0,NULL,NULL),
	(198,1,1,'Awesome...','awesome','',1,0,1,'January2014/awesome.jpg','','','outside,drive-in,theater','2014-01-31 04:25:05','2014-01-31 04:25:05',0,0,NULL,NULL),
	(199,1,2,'I have the same look when I get to sleep in','i-have-the-same-look-when-i-get-to-sleep-in','',1,0,1,'January2014/i-have-the-same-look-when-i-get-to-sleep-in.jpg','','','pig,blanket,sleep,cute','2014-01-31 04:26:17','2014-01-31 04:26:17',0,0,NULL,NULL),
	(200,1,1,'Bare Necessities','bare-necessities','',1,0,1,'January2014/bare-necessities.jpg','','','old school,nintendo,pizza','2014-01-31 04:26:57','2014-01-31 04:26:57',0,0,NULL,NULL),
	(201,1,1,'Brain Transplant','brain-transplant','',1,0,1,'January2014/brain-transplant.jpg','','','brain transplant,brain,gummy bear,candy','2014-01-31 04:28:35','2014-01-31 04:28:35',0,0,NULL,NULL),
	(204,1,39,'Diet Coke Ninjas','diet-coke-ninjas','',1,0,1,'January2014/diet-coke-ninjas.jpg','','','coke,ninjas','2014-01-31 04:46:31','2014-01-31 04:46:31',0,0,NULL,NULL),
	(205,1,1,'The additional sign was necessary','the-additional-sign-was-necessary','',1,0,1,'January2014/the-additional-sign-was-necessary.jpg','','','batman,atm,sign','2014-01-31 04:51:12','2014-01-31 04:51:12',0,0,NULL,NULL),
	(206,1,2,'Raphael is Real','raphael-is-real','',1,0,1,'January2014/raphael-is-real.jpg','','','ninja turtles,turtle,raphael,teenage mutant ninja turtles','2014-01-31 04:52:34','2014-01-31 04:52:34',0,0,NULL,NULL),
	(210,1,2,'Today Has Been Ruff','today-has-been-ruff','',1,0,1,'February2014/today-has-been-ruff.jpg','','','funny,couch,dog','2014-02-03 01:36:30','2014-02-03 01:36:30',0,0,NULL,NULL),
	(211,1,2,'The Pug Life','the-pug-life','',1,1,1,'February2014/the-pug-life.jpg','https://vine.co/v/hWvK0WqFWKp/embed','','funny,dog,pug,thug life','2014-02-03 02:03:41','2014-02-03 02:03:41',0,0,NULL,NULL),
	(212,1,40,'Nintendo Bed','nintendo-bed','',1,0,1,'February2014/nintendo-bed.jpg','','','nintendo,bed','2014-02-04 04:39:09','2014-02-04 04:39:09',0,0,NULL,NULL),
	(213,1,32,'Hate it when this happens!','hate-it-when-this-happens','',1,0,1,'February2014/hate-it-when-this-happens.jpg','','','potato head,pee,urinal','2014-02-04 04:39:59','2014-02-04 04:39:59',0,0,NULL,NULL),
	(214,1,2,'Must be Monday','must-be-monday','',1,0,1,'February2014/must-be-monday.gif','','','funny,dog,puppies,fall','2014-02-08 16:58:11','2014-02-08 16:58:11',0,0,NULL,NULL),
	(215,1,39,'Breakfast for One','breakfast-for-one','',1,0,1,'February2014/breakfast-for-one.jpg','','','pan,solo,hans solo,pan solo','2014-02-08 17:15:06','2014-02-08 17:15:06',0,0,NULL,NULL),
	(216,1,31,'Highlight Anything Stupid','highlight-anything-stupid','',1,0,1,'February2014/highlight-anything-stupid.jpg','','','xkcd,hightlighter,final project,comic','2014-02-08 17:31:12','2016-02-14 16:04:26',0,2,NULL,NULL);

/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table media_flags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `media_flags`;

CREATE TABLE `media_flags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `media_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table media_likes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `media_likes`;

CREATE TABLE `media_likes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `media_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table notifications
# ------------------------------------------------------------

DROP TABLE IF EXISTS `notifications`;

CREATE TABLE `notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `is_read` int(11) NOT NULL,
  `url_comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table oauth_facebook
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_facebook`;

CREATE TABLE `oauth_facebook` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `oauth_userid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table oauth_google
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_google`;

CREATE TABLE `oauth_google` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `oauth_userid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table pages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pages`;

CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `show_in_menu` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table password_reminders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_reminders`;

CREATE TABLE `password_reminders` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_reminders_email_index` (`email`),
  KEY `password_reminders_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table plugin_data
# ------------------------------------------------------------

DROP TABLE IF EXISTS `plugin_data`;

CREATE TABLE `plugin_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `plugin_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table plugins
# ------------------------------------------------------------

DROP TABLE IF EXISTS `plugins`;

CREATE TABLE `plugins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table points
# ------------------------------------------------------------

DROP TABLE IF EXISTS `points`;

CREATE TABLE `points` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `points` WRITE;
/*!40000 ALTER TABLE `points` DISABLE KEYS */;

INSERT INTO `points` (`id`, `user_id`, `points`, `description`, `created_at`, `updated_at`)
VALUES
	(1,1,200,'Registration','2015-06-10 18:35:42','2015-06-10 18:35:42'),
	(2,1,5,'Daily Login','2015-06-10 19:05:35','2015-06-10 19:05:35'),
	(3,1,5,'Daily Login','2015-07-24 14:33:37','2015-07-24 14:33:37'),
	(4,1,1,'Daily Upload','2015-07-24 14:50:38','2015-07-24 14:50:38'),
	(5,1,1,'Daily Upload','2015-08-01 18:27:41','2015-08-01 18:27:41'),
	(6,1,5,'Daily Login','2015-08-01 23:31:04','2015-08-01 23:31:04'),
	(7,1,5,'Daily Login','2015-08-02 00:53:03','2015-08-02 00:53:03'),
	(8,2,200,'Registration','2015-09-07 17:09:11','2015-09-07 17:09:11'),
	(9,2,1,'Daily Upload','2015-09-07 17:10:22','2015-09-07 17:10:22'),
	(10,1,5,'Daily Login','2015-09-23 02:00:37','2015-09-23 02:00:37'),
	(11,1,5,'Daily Login','2015-10-10 15:26:30','2015-10-10 15:26:30'),
	(12,3,200,'Registration','2015-10-10 16:16:36','2015-10-10 16:16:36'),
	(13,3,5,'Daily Login','2015-10-10 16:24:14','2015-10-10 16:24:14'),
	(14,1,5,'Daily Login','2015-10-13 14:34:42','2015-10-13 14:34:42'),
	(15,1,5,'Daily Login','2015-10-15 14:21:00','2015-10-15 14:21:00'),
	(16,1,5,'Daily Login','2015-10-17 13:15:32','2015-10-17 13:15:32'),
	(17,1,5,'Daily Login','2016-01-12 13:59:40','2016-01-12 13:59:40'),
	(18,1,1,'Daily Upload','2016-01-12 14:00:56','2016-01-12 14:00:56'),
	(19,1,5,'Daily Login','2016-04-08 14:16:23','2016-04-08 14:16:23');

/*!40000 ALTER TABLE `points` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `settings`;

CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `website_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `website_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `favicon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `theme` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fb_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fb_secret_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facebook_page_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `google_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `google_secret_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `google_page_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `twitter_page_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `post_title_length` int(11) NOT NULL,
  `auto_approve_posts` tinyint(1) NOT NULL,
  `custom_css` text COLLATE utf8_unicode_ci NOT NULL,
  `like_icon` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `secondary_color` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `primary_color` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `square_ad` text COLLATE utf8_unicode_ci NOT NULL,
  `color_scheme` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'light',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `analytics` text COLLATE utf8_unicode_ci NOT NULL,
  `user_registration` tinyint(1) NOT NULL DEFAULT '1',
  `infinite_scroll` tinyint(1) NOT NULL DEFAULT '1',
  `random_bar_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `media_description` tinyint(1) NOT NULL DEFAULT '0',
  `inbetween_ads` text COLLATE utf8_unicode_ci,
  `inbetween_ads_repeat` int(11) NOT NULL DEFAULT '5',
  `enable_watermark` tinyint(1) NOT NULL DEFAULT '0',
  `watermark_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'watermark.png',
  `watermark_position` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'bottom-right',
  `watermark_offset_x` int(11) NOT NULL DEFAULT '0',
  `watermark_offset_y` int(11) NOT NULL DEFAULT '0',
  `pages_in_menu` tinyint(1) NOT NULL DEFAULT '1',
  `pages_in_menu_text` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'More',
  `infinite_load_btn` tinyint(1) NOT NULL DEFAULT '0',
  `captcha` tinyint(1) NOT NULL DEFAULT '0',
  `captcha_public_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `captcha_private_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `custom_js` text COLLATE utf8_unicode_ci NOT NULL,
  `system_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'email@email.com',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;

INSERT INTO `settings` (`id`, `website_name`, `website_description`, `logo`, `favicon`, `theme`, `fb_key`, `fb_secret_key`, `facebook_page_id`, `google_key`, `google_secret_key`, `google_page_id`, `twitter_page_id`, `post_title_length`, `auto_approve_posts`, `custom_css`, `like_icon`, `secondary_color`, `primary_color`, `square_ad`, `color_scheme`, `created_at`, `updated_at`, `analytics`, `user_registration`, `infinite_scroll`, `random_bar_enabled`, `media_description`, `inbetween_ads`, `inbetween_ads_repeat`, `enable_watermark`, `watermark_image`, `watermark_position`, `watermark_offset_x`, `watermark_offset_y`, `pages_in_menu`, `pages_in_menu_text`, `infinite_load_btn`, `captcha`, `captcha_public_key`, `captcha_private_key`, `custom_js`, `system_email`)
VALUES
	(1,'Social Media Website','By Valentin Stanescu','logo.png','favicon.png','default','','','social','','','+socialmediawebsite2017','social',0,1,'','fa-thumbs-o-up','#12c3ee','#ee222e','','light','0000-00-00 00:00:00','2016-01-12 14:01:51','',1,1,0,1,NULL,5,0,'watermark234.png','bottom-right',0,0,1,'More',0,0,'','','','email@email.com');

/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user_flags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_flags`;

CREATE TABLE `user_flags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `user_flagged_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `admin` int(11) NOT NULL DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT '1',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `username`, `admin`, `active`, `email`, `password`, `avatar`, `created_at`, `updated_at`, `activation_code`, `remember_token`)
VALUES
	(1,'admin',1,1,'admin@admin.com','$2y$08$Z.mARJ1l2BJxsQwqlVOk3eeY49Zey0OUgyWE2zjT/AWBT4kCCvqbW','default.jpg','2015-06-10 18:35:42','2015-10-17 15:07:17',NULL,'ldQsgvhVhNWMzFXAqQ8JUKpgrNuhEe6RfI3nyQXD0p4kTFN1FXVzADXXS8JO'),
	(2,'demo',1,1,'demo@demo.com','$2y$10$6.U1bOYrREvmeU1tT4yC8eUnY9vHYuaSZfZDvZCAP0pm9MkHu3I8K','default.jpg','2015-09-04 07:25:20','2015-10-19 01:42:59',NULL,'');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
